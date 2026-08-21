Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/unproject?download=true
inline.NumInlined: 4357
inline.NumDeleted: 2343
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [3 x float] }
%"class.Eigen::Matrix.194" = type { %"class.Eigen::PlainObjectBase.195" }
%"class.Eigen::PlainObjectBase.195" = type { %"class.Eigen::DenseStorage.202" }
%"class.Eigen::DenseStorage.202" = type { %"struct.Eigen::internal::plain_array.203" }
%"struct.Eigen::internal::plain_array.203" = type { [3 x float] }
%"class.Eigen::Matrix.23" = type { %"class.Eigen::PlainObjectBase.24" }
%"class.Eigen::PlainObjectBase.24" = type { %"class.Eigen::DenseStorage.31" }
%"class.Eigen::DenseStorage.31" = type { %"struct.Eigen::internal::plain_array.32" }
%"struct.Eigen::internal::plain_array.32" = type { [3 x double] }
%"class.Eigen::Matrix.59" = type { %"class.Eigen::PlainObjectBase.60" }
%"class.Eigen::PlainObjectBase.60" = type { %"class.Eigen::DenseStorage.67" }
%"class.Eigen::DenseStorage.67" = type { %"struct.Eigen::internal::plain_array.68" }
%"struct.Eigen::internal::plain_array.68" = type { [3 x double] }
%"class.Eigen::Product.702" = type { %"class.Eigen::CwiseUnaryOp", %"class.Eigen::CwiseUnaryOp" }
%"class.Eigen::CwiseUnaryOp" = type <{ ptr, [8 x i8] }>
%"struct.Eigen::internal::assign_op" = type { i8 }
%"class.Eigen::Matrix.33" = type { %"class.Eigen::PlainObjectBase.34" }
%"class.Eigen::PlainObjectBase.34" = type { %"class.Eigen::DenseStorage.41" }
%"class.Eigen::DenseStorage.41" = type { %"struct.Eigen::internal::plain_array.42" }
%"struct.Eigen::internal::plain_array.42" = type { [16 x double] }
%"class.Eigen::Matrix.69" = type { %"class.Eigen::PlainObjectBase.70" }
%"class.Eigen::PlainObjectBase.70" = type { %"class.Eigen::DenseStorage.77" }
%"class.Eigen::DenseStorage.77" = type { ptr, i64, i64 }
%"class.Eigen::VectorBlock" = type { %"class.Eigen::Block" }
%"class.Eigen::Block" = type { %"class.Eigen::BlockImpl" }
%"class.Eigen::BlockImpl" = type { %"class.Eigen::internal::BlockImpl_dense" }
%"class.Eigen::internal::BlockImpl_dense" = type { %"class.Eigen::MapBase", ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase" = type { %"class.Eigen::MapBase.83" }
%"class.Eigen::MapBase.83" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::internal::variable_if_dynamic" = type { i64 }
%"class.Eigen::Matrix.92" = type { %"class.Eigen::PlainObjectBase.90" }
%"class.Eigen::PlainObjectBase.90" = type { %"class.Eigen::DenseStorage.91" }
%"class.Eigen::DenseStorage.91" = type { ptr, i64, i64 }
%"class.Eigen::Matrix.43" = type { %"class.Eigen::PlainObjectBase.44" }
%"class.Eigen::PlainObjectBase.44" = type { %"class.Eigen::DenseStorage.51" }
%"class.Eigen::DenseStorage.51" = type { %"struct.Eigen::internal::plain_array.52" }
%"struct.Eigen::internal::plain_array.52" = type { [4 x double] }
%"class.Eigen::Matrix.13" = type { %"class.Eigen::PlainObjectBase.14" }
%"class.Eigen::PlainObjectBase.14" = type { %"class.Eigen::DenseStorage.21" }
%"class.Eigen::DenseStorage.21" = type { %"struct.Eigen::internal::plain_array.22" }
%"struct.Eigen::internal::plain_array.22" = type { [4 x float] }
%"struct.Eigen::internal::evaluator.623" = type { %"struct.Eigen::internal::product_evaluator" }
%"struct.Eigen::internal::product_evaluator" = type { ptr, ptr, %"struct.Eigen::internal::evaluator.626", %"struct.Eigen::internal::evaluator.626", i64 }
%"struct.Eigen::internal::evaluator.626" = type { %"struct.Eigen::internal::evaluator.627" }
%"struct.Eigen::internal::evaluator.627" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data.630" }
%"class.Eigen::internal::plainobjectbase_evaluator_data.630" = type { ptr }
%"class.Eigen::internal::generic_dense_assignment_kernel.631" = type { ptr, ptr, ptr, ptr }
%"struct.Eigen::internal::evaluator.709" = type { %"struct.Eigen::internal::product_evaluator.base", [8 x i8] }
%"struct.Eigen::internal::product_evaluator.base" = type { %"class.Eigen::Matrix.33", %"class.Eigen::Matrix.33", %"struct.Eigen::internal::evaluator.626", %"struct.Eigen::internal::evaluator.626", i64 }
%"class.Eigen::internal::generic_dense_assignment_kernel.714" = type { ptr, ptr, ptr, ptr }

$_ZN3igl9unprojectIfEEN5Eigen6MatrixIT_Li3ELi1ELi0ELi3ELi1EEERKS4_RKNS2_IS3_Li4ELi4ELi0ELi4ELi4EEES9_RKNS2_IS3_Li4ELi1ELi0ELi4ELi1EEE = comdat any

$_ZN3igl9unprojectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE = comdat any

$_ZN3igl9unprojectIdEEN5Eigen6MatrixIT_Li3ELi1ELi0ELi3ELi1EEERKS4_RKNS2_IS3_Li4ELi4ELi0ELi4ELi4EEES9_RKNS2_IS3_Li4ELi1ELi0ELi4ELi1EEE = comdat any

$_ZN3igl9unprojectIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE = comdat any

$_ZN3igl9unprojectIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERNS1_15PlainObjectBaseIT3_EE = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEERS2_RKNS_9EigenBaseIT_EE = comdat any

$_ZN3igl9unprojectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE = comdat any

$_ZN3igl9unprojectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE = comdat any

$_ZN3igl9unprojectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE = comdat any

$_ZN3igl9unprojectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IdLi4ELi4ELi0ELi4ELi4EEES4_NS2_IdLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEEENS3_INS_7ProductIS5_S5_Li1EEEEENS0_9assign_opIddEELi0EEELi2ELi1EE3runERSC_ = comdat any

$_ZN3igl9unprojectIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERNS1_15PlainObjectBaseIT3_EE = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEENS_7ProductINS_12CwiseUnaryOpINS0_14scalar_cast_opIfdEEKNS2_IfLi4ELi4ELi0ELi4ELi4EEEEESA_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEEENS3_INS_7ProductINS_12CwiseUnaryOpINS0_14scalar_cast_opIfdEEKNS4_IfLi4ELi4ELi0ELi4ELi4EEEEESD_Li1EEEEENS0_9assign_opIddEELi0EEELi2ELi1EE3runERSI_ = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl9unprojectIfEEN5Eigen6MatrixIT_Li3ELi1ELi0ELi3ELi1EEERKS4_RKNS2_IS3_Li4ELi4ELi0ELi4ELi4EEES9_RKNS2_IS3_Li4ELi1ELi0ELi4ELi1EEE(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix") align 4 %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(16) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::Matrix.194", align 8 ; 5 uses
  %6 = alloca %"class.Eigen::Matrix.194", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  %i.a = load <2 x float>, ptr %1, align 4, !tbaa !12, !noalias !9
  store <2 x float> %i.a, ptr %6, align 8, !tbaa !12, !alias.scope !9
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !12, !noalias !9
  store float %i.d, ptr %i.b, align 8, !tbaa !12, !alias.scope !9
  call void @_ZN3igl9unprojectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 4 dereferenceable(12) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.e = load <2 x float>, ptr %5, align 8, !tbaa !12
  store <2 x float> %i.e, ptr %0, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load float, ptr %i.g, align 8, !tbaa !12
  store float %i.h, ptr %i.f, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl9unprojectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(12) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::Matrix.194", align 8 ; 5 uses
  %6 = alloca %"class.Eigen::Matrix.194", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %i.a = load <2 x float>, ptr %0, align 4, !tbaa !12, !noalias !14
  store <2 x float> %i.a, ptr %6, align 8, !tbaa !12, !alias.scope !14
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !12, !noalias !14
  store float %i.d, ptr %i.b, align 8, !tbaa !12, !alias.scope !14
  call void @_ZN3igl9unprojectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(12) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.e = load <2 x float>, ptr %5, align 8, !tbaa !12
  store <2 x float> %i.e, ptr %4, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load float, ptr %i.g, align 8, !tbaa !12
  store float %i.h, ptr %i.f, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl9unprojectIdEEN5Eigen6MatrixIT_Li3ELi1ELi0ELi3ELi1EEERKS4_RKNS2_IS3_Li4ELi4ELi0ELi4ELi4EEES9_RKNS2_IS3_Li4ELi1ELi0ELi4ELi1EEE(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 16 dereferenceable(128) %2, ptr noundef nonnull align 16 dereferenceable(128) %3, ptr noundef nonnull align 16 dereferenceable(32) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::Matrix.59", align 16 ; 5 uses
  %6 = alloca %"class.Eigen::Matrix.59", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !20, !noalias !17
  store <2 x double> %i.a, ptr %6, align 16, !tbaa !20, !alias.scope !17
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !21, !noalias !17
  store double %i.d, ptr %i.b, align 16, !tbaa !21, !alias.scope !17
  call void @_ZN3igl9unprojectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IdLi4ELi4ELi0ELi4ELi4EEES4_NS2_IdLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.e = load <2 x double>, ptr %5, align 16, !tbaa !20
  store <2 x double> %i.e, ptr %0, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = load double, ptr %i.g, align 16, !tbaa !21
  store double %i.h, ptr %i.f, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl9unprojectIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::Product.702", align 8 ; 5 uses
  %6 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %7 = alloca %"class.Eigen::Matrix.33", align 16 ; 11 uses
  %8 = alloca %"class.Eigen::Matrix.59", align 8  ; 6 uses
  %9 = alloca %"class.Eigen::Matrix.69", align 8  ; 10 uses
  %10 = alloca %"class.Eigen::VectorBlock", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23   ; 7 uses
  %.not = icmp eq i64 %i.b, 3
  br i1 %.not, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !alias.scope !28
  %i.c = load ptr, ptr %0, align 8, !tbaa !31, !noalias !28 ; 8 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !32, !noalias !28 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.b, 0     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.f, 0    ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i, %.not8.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sdiv i64 9223372036854775807, %i.f
  %i.j = icmp sgt i64 %i.b, %i.i
  br i1 %i.j, label %.noexc.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.d
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #12, !noalias !28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !33, !noalias !28
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13, !noalias !28
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.l = mul nsw i64 %i.f, %i.b                   ; 12 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %.thread, label %bb.e

.thread:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  store i64 %i.b, ptr %i.g, align 8, !tbaa !35
  store i64 %i.f, ptr %i.h, align 8, !tbaa !37
  br label %._crit_edge.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %.thread132

.thread132:                                       ; preds = %bb.e
  store i64 %i.b, ptr %i.g, align 8, !tbaa !35
  store i64 %i.f, ptr %i.h, align 8, !tbaa !37
  %.nonneg = sub i64 0, %i.l
  %i.n = and i64 %.nonneg, -2
  %i.o = sub i64 0, %i.n
  br label %._crit_edge.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.p = icmp samesign ugt i64 %i.l, 2305843009213693951
  br i1 %i.p, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

.noexc:                                           ; preds = %bb.f
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !33
end_hunk_0
begin_hunk_1_@_ZN3igl9unprojectIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE:bb.a
  %.sroa.0108.sroa.0.0.vec.insert = insertelement <2 x double> poison, double %i.cd, i64 0
  %gep.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !tbaa !21, !noalias !69
  %.sroa.0108.sroa.0.8.vec.insert = insertelement <2 x double> %.sroa.0108.sroa.0.0.vec.insert, double %i.ce, i64 1
  %gep.i.i.i.i.i.i.i.i.i.i.i.i.2.idx = shl i64 %i.cc, 4
  %gep.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr i8, ptr %i.cb, i64 %gep.i.i.i.i.i.i.i.i.i.i.i.i.2.idx
  %i.cf = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !tbaa !21, !noalias !69
  %i.cg = shufflevector <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ch = fmul <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, %i.cg ; 2 uses
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cj = fsub <2 x double> %i.ch, %i.ci          ; 2 uses
  %i.ck = shufflevector <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cl = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.ck ; 2 uses
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cn = fsub <2 x double> %i.cl, %i.cm          ; 2 uses
  %i.co = shufflevector <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cp = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.co ; 2 uses
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cr = fsub <2 x double> %i.cp, %i.cq          ; 2 uses
  %i.cs = shufflevector <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ct = fmul <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, %i.cs ; 2 uses
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cv = fsub <2 x double> %i.ct, %i.cu          ; 2 uses
  %i.cw = shufflevector <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cx = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.cw
  %i.cy = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x double> %i.cy, %.sroa.6.0.copyload.i.i.i.i.i.i
  %i.da = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.db = fmul <2 x double> %i.da, %.sroa.6.0.copyload.i.i.i.i.i.i
  %i.dc = fsub <2 x double> %i.cx, %i.db          ; 5 uses
  %i.dd = shufflevector <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.dd
  %i.df = fsub <2 x double> %i.cz, %i.de          ; 5 uses
  %i.dg = shufflevector <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dh = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.dg
  %i.di = shufflevector <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, %i.di
  %i.dk = shufflevector <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dl = fmul <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, %i.dk
  %i.dm = fsub <2 x double> %i.dh, %i.dl          ; 6 uses
  %i.dn = shufflevector <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.dn
  %i.dp = fsub <2 x double> %i.dj, %i.do          ; 6 uses
  %i.dq = shufflevector <2 x double> %i.dm, <2 x double> %i.dp, <2 x i32> <i32 0, i32 2>
  %i.dr = fmul <2 x double> %i.dc, %i.dq
  %i.ds = shufflevector <2 x double> %i.dm, <2 x double> %i.dp, <2 x i32> <i32 1, i32 3>
  %i.dt = fmul <2 x double> %i.df, %i.ds
  %i.du = fadd <2 x double> %i.dr, %i.dt          ; 2 uses
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dw = fadd <2 x double> %i.du, %i.dv
  %i.dx = fmul <2 x double> %i.cj, %i.cv
  %i.dy = fmul <2 x double> %i.cn, %i.cr
  %i.dz = fadd <2 x double> %i.dy, %i.dx
  %i.ea = fsub <2 x double> %i.dz, %i.dw
  %i.eb = fdiv <2 x double> <double 1.000000e+00, double poison>, %i.ea
  %i.ec = bitcast <2 x double> %i.eb to <2 x i64>
  %i.ed = shufflevector <2 x i64> %i.ec, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ee = shufflevector <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = fmul <2 x double> %i.dc, %i.ee
  %i.eg = shufflevector <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x double> %i.dc, %i.eg
  %i.ei = shufflevector <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ej = fmul <2 x double> %i.df, %i.ei
  %i.ek = fadd <2 x double> %i.ef, %i.ej
  %i.el = shufflevector <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.em = fmul <2 x double> %i.df, %i.el
  %i.en = fadd <2 x double> %i.eh, %i.em
  %i.eo = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ep = fmul <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, %i.eo
  %i.eq = fsub <2 x double> %i.ep, %i.ek          ; 2 uses
  %i.er = fmul <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, %i.eo
  %i.es = fsub <2 x double> %i.er, %i.en          ; 2 uses
  %i.et = shufflevector <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eu = fmul <2 x double> %i.et, %i.dm
  %i.ev = shufflevector <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ew = fmul <2 x double> %i.ev, %i.dm
  %i.ex = shufflevector <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ey = fmul <2 x double> %i.ex, %i.dp
  %i.ez = fadd <2 x double> %i.eu, %i.ey
  %i.fa = shufflevector <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fb = fmul <2 x double> %i.fa, %i.dp
  %i.fc = fadd <2 x double> %i.ew, %i.fb
  %i.fd = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fe = fmul <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, %i.fd
  %i.ff = fsub <2 x double> %i.fe, %i.ez          ; 2 uses
  %i.fg = fmul <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, %i.fd
  %i.fh = fsub <2 x double> %i.fg, %i.fc          ; 2 uses
  %i.fi = shufflevector <2 x double> %i.df, <2 x double> %i.dc, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fj = fmul <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, %i.fi
  %i.fk = fmul <2 x double> %i.fi, %.sroa.10.0.copyload.i.i.i.i.i.i
  %i.fl = shufflevector <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fm = shufflevector <2 x double> %i.df, <2 x double> %i.dc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fn = fmul <2 x double> %i.fl, %i.fm
  %i.fo = fsub <2 x double> %i.fj, %i.fn
  %i.fp = fmul <2 x double> %i.fm, %i.cs
  %i.fq = fsub <2 x double> %i.fk, %i.fp
  %i.fr = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fs = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.fr
  %i.ft = fsub <2 x double> %i.fs, %i.fo          ; 2 uses
  %i.fu = fmul <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, %i.fr
  %i.fv = fsub <2 x double> %i.fu, %i.fq          ; 2 uses
  %i.fw = shufflevector <2 x double> %i.dp, <2 x double> %i.dm, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fx = fmul <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, %i.fw
  %i.fy = fmul <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, %i.fw
  %i.fz = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ga = shufflevector <2 x double> %i.dp, <2 x double> %i.dm, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gb = fmul <2 x double> %i.fz, %i.ga
  %i.gc = fsub <2 x double> %i.fx, %i.gb
  %i.gd = fmul <2 x double> %i.cg, %i.ga
  %i.ge = fsub <2 x double> %i.fy, %i.gd
  %i.gf = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gg = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.gf
  %i.gh = fsub <2 x double> %i.gg, %i.gc          ; 2 uses
  %i.gi = fmul <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, %i.gf
  %i.gj = fsub <2 x double> %i.gi, %i.ge          ; 2 uses
  %i.gk = xor <2 x i64> %i.ed, <i64 0, i64 -9223372036854775808>
  %i.gl = bitcast <2 x i64> %i.gk to <2 x double> ; 4 uses
  %i.gm = xor <2 x i64> %i.ed, <i64 -9223372036854775808, i64 0>
  %i.gn = bitcast <2 x i64> %i.gm to <2 x double> ; 4 uses
  %i.go = shufflevector <2 x double> %i.fh, <2 x double> %i.ff, <2 x i32> <i32 1, i32 3>
  %i.gp = fmul <2 x double> %i.go, %i.gl
  %i.gq = shufflevector <2 x double> %i.fh, <2 x double> %i.ff, <2 x i32> <i32 0, i32 2>
  %i.gr = fmul <2 x double> %i.gq, %i.gn
  %i.gs = shufflevector <2 x double> %i.fv, <2 x double> %i.ft, <2 x i32> <i32 1, i32 3>
  %i.gt = fmul <2 x double> %i.gs, %i.gl
  %i.gu = shufflevector <2 x double> %i.fv, <2 x double> %i.ft, <2 x i32> <i32 0, i32 2>
  %i.gv = fmul <2 x double> %i.gu, %i.gn
  %i.gw = shufflevector <2 x double> %i.gj, <2 x double> %i.gh, <2 x i32> <i32 1, i32 3>
  %i.gx = fmul <2 x double> %i.gw, %i.gl
  %i.gy = shufflevector <2 x double> %i.gj, <2 x double> %i.gh, <2 x i32> <i32 0, i32 2>
  %i.gz = fmul <2 x double> %i.gy, %i.gn
  %i.ha = shufflevector <2 x double> %i.es, <2 x double> %i.eq, <2 x i32> <i32 1, i32 3>
  %i.hb = fmul <2 x double> %i.ha, %i.gl
  %i.hc = shufflevector <2 x double> %i.es, <2 x double> %i.eq, <2 x i32> <i32 0, i32 2>
  %i.hd = fmul <2 x double> %i.hc, %i.gn
  %.sroa.0108.sroa.7.24.vec.insert = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.cf, i64 0
  %i.he = load <2 x float>, ptr %3, align 4, !tbaa !12
  %i.hf = fpext <2 x float> %i.he to <2 x double>
  %i.hg = fsub <2 x double> %.sroa.0108.sroa.0.8.vec.insert, %i.hf
  %i.hh = load <2 x float>, ptr %i.by, align 4, !tbaa !12
  %i.hi = fpext <2 x float> %i.hh to <2 x double>
  %i.hj = fdiv <2 x double> %i.hg, %i.hi
  %i.hk = fmul <2 x double> %i.hj, splat (double 2.000000e+00)
  %i.hl = fadd <2 x double> %i.hk, splat (double -1.000000e+00) ; 2 uses
  %i.hm = fmul <2 x double> %.sroa.0108.sroa.7.24.vec.insert, splat (double 2.000000e+00)
  %i.hn = fadd <2 x double> %i.hm, splat (double -1.000000e+00) ; 2 uses
  %i.ho = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hp = fmul <2 x double> %i.gp, %i.ho
  %.sroa.0108.sroa.0.8.vec.extract = extractelement <2 x double> %i.hl, i64 1
  %i.hq = bitcast double %.sroa.0108.sroa.0.8.vec.extract to <1 x double>
  %i.hr = shufflevector <1 x double> %i.hq, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hs = fmul <2 x double> %i.gr, %i.hr
  %i.ht = fadd <2 x double> %i.hp, %i.hs
  %i.hu = shufflevector <2 x double> %i.hn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hv = fmul <2 x double> %i.gx, %i.hu
  %i.hw = fadd <2 x double> %i.hv, %i.ht
  %i.hx = shufflevector <2 x double> %i.hn, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hy = fmul <2 x double> %i.gz, %i.hx
  %i.hz = fadd <2 x double> %i.hy, %i.hw
  %i.ia = fmul <2 x double> %i.gt, %i.ho
  %i.ib = fmul <2 x double> %i.gv, %i.hr
  %i.ic = fadd <2 x double> %i.ia, %i.ib
  %i.id = fmul <2 x double> %i.hb, %i.hu
  %i.ie = fadd <2 x double> %i.id, %i.ic
  %i.if = fmul <2 x double> %i.hd, %i.hx
  %i.ig = fadd <2 x double> %i.if, %i.ie          ; 2 uses
  %i.ih = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ii = fdiv <2 x double> %i.hz, %i.ih          ; 2 uses
  %i.ij = fdiv <2 x double> %i.ig, %i.ih
  %i.ik = load ptr, ptr %4, align 8, !tbaa !31, !noalias !72
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv ; 3 uses
  %i.im = load i64, ptr %i.bz, align 8, !tbaa !32 ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x double> %i.ii, i64 0
  store double %.sroa.0.0.vec.extract, ptr %i.il, align 8, !tbaa !21
  %i.in = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.im
  %.sroa.0.8.vec.extract = extractelement <2 x double> %i.ii, i64 1
  store double %.sroa.0.8.vec.extract, ptr %i.in, align 8, !tbaa !21
  %.idx = shl nsw i64 %i.im, 4
  %i.io = getelementptr inbounds i8, ptr %i.il, i64 %.idx
  %.sroa.6.16.vec.extract = extractelement <2 x double> %i.ij, i64 0
  store double %.sroa.6.16.vec.extract, ptr %i.io, align 8, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i, !llvm.loop !75

.loopexit:                                        ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl9unprojectIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::Product.702", align 8 ; 5 uses
  %6 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %7 = alloca %"class.Eigen::Matrix.33", align 16 ; 11 uses
  %8 = alloca %"class.Eigen::Matrix.59", align 16 ; 6 uses
  %9 = alloca %"class.Eigen::Matrix.92", align 8  ; 10 uses
  %10 = alloca %"class.Eigen::Matrix.43", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37   ; 7 uses
  %.not = icmp eq i64 %i.b, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !alias.scope !76
  %i.c = load ptr, ptr %0, align 8, !tbaa !38, !noalias !76 ; 8 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35, !noalias !76 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.b, 0     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.f, 0    ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEEE4evalEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i, %.not8.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sdiv i64 9223372036854775807, %i.f
  %i.j = icmp sgt i64 %i.b, %i.i
  br i1 %i.j, label %.noexc.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.d
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #12, !noalias !76 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !33, !noalias !76
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13, !noalias !76
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.l = mul nsw i64 %i.f, %i.b                   ; 12 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %.thread, label %bb.e

.thread:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  store i64 %i.b, ptr %i.g, align 8, !tbaa !32
  store i64 %i.f, ptr %i.h, align 8, !tbaa !23
  br label %._crit_edge.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %.thread142

.thread142:                                       ; preds = %bb.e
  store i64 %i.b, ptr %i.g, align 8, !tbaa !32
  store i64 %i.f, ptr %i.h, align 8, !tbaa !23
  %.nonneg = sub i64 0, %i.l
  %i.n = and i64 %.nonneg, -2
  %i.o = sub i64 0, %i.n
  br label %._crit_edge.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.p = icmp samesign ugt i64 %i.l, 2305843009213693951
  br i1 %i.p, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

.noexc:                                           ; preds = %bb.f
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !33
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.f
  %i.r = shl nuw i64 %i.l, 3
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #14 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.noexc26, label %bb.g

.noexc26:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !33
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.s, ptr %9, align 8, !tbaa !31
  store i64 %i.b, ptr %i.g, align 8, !tbaa !32
  store i64 %i.f, ptr %i.h, align 8, !tbaa !23
  %i.v = and i64 %i.l, 2305843009213693950        ; 3 uses
  %.not144 = icmp eq i64 %i.l, 1
  br i1 %.not144, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.thread142, %.thread, %bb.g
  %i.w = phi i64 [ 0, %.thread ], [ %i.o, %.thread142 ], [ %i.v, %bb.g ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %.pre.i.i141 = phi ptr [ null, %.thread ], [ null, %.thread142 ], [ %i.s, %bb.g ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i ] ; 7 uses
  %i.x = icmp slt i64 %i.w, %i.l
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEEE4evalEv.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %.pre.i.i141145 = ptrtoaddr ptr %.pre.i.i141 to i64
  %i.y = sub i64 %i.l, %i.w                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.y, 8
  %i.z = sub i64 %i.d, %.pre.i.i141145
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader147, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.y, -4                       ; 3 uses
  %i.aa = add i64 %i.w, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = add i64 %i.w, %index                    ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %.pre.i.i141, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ab ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load = load <2 x double>, ptr %i.ad, align 8, !tbaa !21
  %wide.load146 = load <2 x double>, ptr %i.ae, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x double> %wide.load, ptr %i.ac, align 8, !tbaa !21
  store <2 x double> %wide.load146, ptr %i.af, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEEE4evalEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader147

.lr.ph.i.i.i.i.i.i.i.i.i.preheader147:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ] ; 4 uses
  %i.ah = sub i64 %i.l, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ah, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader147, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader147 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader147 ]
  %i.ai = getelementptr inbounds [8 x i8], ptr %.pre.i.i141, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !21
  store double %i.ak, ptr %i.ai, align 8, !tbaa !21
  %i.al = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !80

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader147
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader147 ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.am = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.l
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEEE4evalEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %.pre.i.i141, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !21
  store double %i.aq, ptr %i.ao, align 8, !tbaa !21
  %i.ar = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.pre.i.i141, i64 %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ar
  %i.au = load double, ptr %i.at, align 8, !tbaa !21
  store double %i.au, ptr %i.as, align 8, !tbaa !21
  %i.av = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %.pre.i.i141, i64 %i.av
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.av
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !21
  store double %i.ay, ptr %i.aw, align 8, !tbaa !21
  %i.az = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %.pre.i.i141, i64 %i.az
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.az
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !21
  store double %i.bc, ptr %i.ba, align 8, !tbaa !21
  %i.bd = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bd, %i.l
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEEE4evalEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !81

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.g ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.011.i.i.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.011.i.i.i.i.i.i.i.i
  %i.bg = load <2 x double>, ptr %i.bf, align 16, !tbaa !20
  store <2 x double> %i.bg, ptr %i.be, align 16, !tbaa !20
  %i.bh = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bi = icmp samesign ult i64 %i.bh, %i.v
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !82

_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEEE4evalEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %bb.b, %._crit_edge.i.i.i.i.i.i.i.i
  invoke void @_ZN3igl9unprojectIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.h unwind label %common.resume

bb.h:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEEE4evalEv.exit
  %i.bj = load ptr, ptr %9, align 8, !tbaa !31
  call void @free(ptr noundef %i.bj) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.bk = load <2 x double>, ptr %8, align 16, !tbaa !20
  store <2 x double> %i.bk, ptr %4, align 8, !tbaa !20
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bn = load double, ptr %i.bm, align 16, !tbaa !21
  store double %i.bn, ptr %i.bl, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %.loopexit

common.resume:                                    ; preds = %_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEEE4evalEv.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %9, align 8, !tbaa !31
  call void @free(ptr noundef %i.bp) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  resume { ptr, i32 } %i.bo

bb.i:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !35 ; 2 uses
  %i.bs = trunc i64 %i.br to i32
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.lr.ph, label %.loopexit

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.lr.ph:         ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 64
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 96
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.bv = getelementptr i8, ptr %3, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %wide.trip.count = and i64 %i.br, 2147483647
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.lr.ph, %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.lr.ph ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %2, ptr %5, align 8, !tbaa !61, !alias.scope !83
  store ptr %1, ptr %i.bu, align 8, !tbaa !61, !alias.scope !83
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEENS_7ProductINS_12CwiseUnaryOpINS0_14scalar_cast_opIfdEEKNS2_IfLi4ELi4ELi0ELi4ELi4EEEEESA_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(128) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.sroa.0263.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %7, align 16 ; 6 uses
  %.sroa.4.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 16 ; 5 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.7.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.8.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.9.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 16, !tbaa !20 ; 5 uses
  %i.by = shufflevector <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bz = fmul <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, %i.by ; 2 uses
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = fsub <2 x double> %i.bz, %i.ca          ; 2 uses
  %i.cc = shufflevector <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cd = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.cc ; 2 uses
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cf = fsub <2 x double> %i.cd, %i.ce          ; 2 uses
  %i.cg = shufflevector <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ch = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.cg ; 2 uses
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cj = fsub <2 x double> %i.ch, %i.ci          ; 2 uses
  %i.ck = shufflevector <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cl = fmul <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, %i.ck ; 2 uses
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cn = fsub <2 x double> %i.cl, %i.cm          ; 2 uses
  %i.co = shufflevector <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cp = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.co
  %i.cq = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x double> %i.cq, %.sroa.6.0.copyload.i.i.i.i.i.i
  %i.cs = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ct = fmul <2 x double> %i.cs, %.sroa.6.0.copyload.i.i.i.i.i.i
  %i.cu = fsub <2 x double> %i.cp, %i.ct          ; 5 uses
  %i.cv = shufflevector <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.cv
  %i.cx = fsub <2 x double> %i.cr, %i.cw          ; 5 uses
  %i.cy = shufflevector <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cz = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.cy
  %i.da = shufflevector <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = fmul <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, %i.da
  %i.dc = shufflevector <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dd = fmul <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, %i.dc
  %i.de = fsub <2 x double> %i.cz, %i.dd          ; 6 uses
  %i.df = shufflevector <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.df
  %i.dh = fsub <2 x double> %i.db, %i.dg          ; 6 uses
  %i.di = shufflevector <2 x double> %i.de, <2 x double> %i.dh, <2 x i32> <i32 0, i32 2>
  %i.dj = fmul <2 x double> %i.cu, %i.di
  %i.dk = shufflevector <2 x double> %i.de, <2 x double> %i.dh, <2 x i32> <i32 1, i32 3>
  %i.dl = fmul <2 x double> %i.cx, %i.dk
  %i.dm = fadd <2 x double> %i.dj, %i.dl          ; 2 uses
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.do = fadd <2 x double> %i.dm, %i.dn
  %i.dp = fmul <2 x double> %i.cb, %i.cn
  %i.dq = fmul <2 x double> %i.cf, %i.cj
  %i.dr = fadd <2 x double> %i.dq, %i.dp
  %i.ds = fsub <2 x double> %i.dr, %i.do
  %i.dt = fdiv <2 x double> <double 1.000000e+00, double poison>, %i.ds
  %i.du = bitcast <2 x double> %i.dt to <2 x i64>
  %i.dv = shufflevector <2 x i64> %i.du, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dw = shufflevector <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x double> %i.cu, %i.dw
  %i.dy = shufflevector <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x double> %i.cu, %i.dy
  %i.ea = shufflevector <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eb = fmul <2 x double> %i.cx, %i.ea
  %i.ec = fadd <2 x double> %i.dx, %i.eb
  %i.ed = shufflevector <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ee = fmul <2 x double> %i.cx, %i.ed
  %i.ef = fadd <2 x double> %i.dz, %i.ee
  %i.eg = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eh = fmul <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, %i.eg
  %i.ei = fsub <2 x double> %i.eh, %i.ec          ; 2 uses
  %i.ej = fmul <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, %i.eg
  %i.ek = fsub <2 x double> %i.ej, %i.ef          ; 2 uses
  %i.el = shufflevector <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = fmul <2 x double> %i.el, %i.de
  %i.en = shufflevector <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = fmul <2 x double> %i.en, %i.de
  %i.ep = shufflevector <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eq = fmul <2 x double> %i.ep, %i.dh
  %i.er = fadd <2 x double> %i.em, %i.eq
  %i.es = shufflevector <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.et = fmul <2 x double> %i.es, %i.dh
  %i.eu = fadd <2 x double> %i.eo, %i.et
  %i.ev = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ew = fmul <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, %i.ev
  %i.ex = fsub <2 x double> %i.ew, %i.er          ; 2 uses
  %i.ey = fmul <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, %i.ev
  %i.ez = fsub <2 x double> %i.ey, %i.eu          ; 2 uses
  %i.fa = shufflevector <2 x double> %i.cx, <2 x double> %i.cu, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fb = fmul <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, %i.fa
  %i.fc = fmul <2 x double> %i.fa, %.sroa.10.0.copyload.i.i.i.i.i.i
  %i.fd = shufflevector <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fe = shufflevector <2 x double> %i.cx, <2 x double> %i.cu, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ff = fmul <2 x double> %i.fd, %i.fe
  %i.fg = fsub <2 x double> %i.fb, %i.ff
  %i.fh = fmul <2 x double> %i.fe, %i.ck
  %i.fi = fsub <2 x double> %i.fc, %i.fh
  %i.fj = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fk = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.fj
  %i.fl = fsub <2 x double> %i.fk, %i.fg          ; 2 uses
  %i.fm = fmul <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, %i.fj
  %i.fn = fsub <2 x double> %i.fm, %i.fi          ; 2 uses
  %i.fo = shufflevector <2 x double> %i.dh, <2 x double> %i.de, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fp = fmul <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, %i.fo
  %i.fq = fmul <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, %i.fo
  %i.fr = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fs = shufflevector <2 x double> %i.dh, <2 x double> %i.de, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ft = fmul <2 x double> %i.fr, %i.fs
  %i.fu = fsub <2 x double> %i.fp, %i.ft
  %i.fv = fmul <2 x double> %i.by, %i.fs
  %i.fw = fsub <2 x double> %i.fq, %i.fv
  %i.fx = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fy = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.fx
  %i.fz = fsub <2 x double> %i.fy, %i.fu          ; 2 uses
  %i.ga = fmul <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, %i.fx
  %i.gb = fsub <2 x double> %i.ga, %i.fw          ; 2 uses
  %i.gc = xor <2 x i64> %i.dv, <i64 0, i64 -9223372036854775808>
  %i.gd = bitcast <2 x i64> %i.gc to <2 x double> ; 4 uses
  %i.ge = xor <2 x i64> %i.dv, <i64 -9223372036854775808, i64 0>
  %i.gf = bitcast <2 x i64> %i.ge to <2 x double> ; 4 uses
  %i.gg = shufflevector <2 x double> %i.ez, <2 x double> %i.ex, <2 x i32> <i32 1, i32 3>
  %i.gh = fmul <2 x double> %i.gg, %i.gd
  %i.gi = shufflevector <2 x double> %i.ez, <2 x double> %i.ex, <2 x i32> <i32 0, i32 2>
  %i.gj = fmul <2 x double> %i.gi, %i.gf
  %i.gk = shufflevector <2 x double> %i.fn, <2 x double> %i.fl, <2 x i32> <i32 1, i32 3>
  %i.gl = fmul <2 x double> %i.gk, %i.gd
  %i.gm = shufflevector <2 x double> %i.fn, <2 x double> %i.fl, <2 x i32> <i32 0, i32 2>
  %i.gn = fmul <2 x double> %i.gm, %i.gf
  %i.go = shufflevector <2 x double> %i.gb, <2 x double> %i.fz, <2 x i32> <i32 1, i32 3>
  %i.gp = fmul <2 x double> %i.go, %i.gd
  %i.gq = shufflevector <2 x double> %i.gb, <2 x double> %i.fz, <2 x i32> <i32 0, i32 2>
  %i.gr = fmul <2 x double> %i.gq, %i.gf
  %i.gs = shufflevector <2 x double> %i.ek, <2 x double> %i.ei, <2 x i32> <i32 1, i32 3>
  %i.gt = fmul <2 x double> %i.gs, %i.gd
  %i.gu = shufflevector <2 x double> %i.ek, <2 x double> %i.ei, <2 x i32> <i32 0, i32 2>
  %i.gv = fmul <2 x double> %i.gu, %i.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.gw = load ptr, ptr %0, align 8, !tbaa !38, !noalias !86
  %i.gx = load i64, ptr %i.a, align 8, !tbaa !37, !noalias !86
  %i.gy = mul nsw i64 %i.gx, %indvars.iv
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.gy ; 2 uses
  %i.ha = load <2 x double>, ptr %i.gz, align 1, !tbaa !20, !noalias !89
  %gep53.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.gz, i64 16
  %i.hb = load double, ptr %gep53.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !21, !noalias !89
  %i.hc = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.hb, i64 0
  %i.hd = load <2 x float>, ptr %3, align 4, !tbaa !12
  %i.he = fpext <2 x float> %i.hd to <2 x double>
  %i.hf = fsub <2 x double> %i.ha, %i.he
  %i.hg = load <2 x float>, ptr %i.bv, align 4, !tbaa !12
  %i.hh = fpext <2 x float> %i.hg to <2 x double>
  %i.hi = fdiv <2 x double> %i.hf, %i.hh
  %i.hj = fmul <2 x double> %i.hi, splat (double 2.000000e+00)
  %i.hk = fadd <2 x double> %i.hj, splat (double -1.000000e+00) ; 2 uses
  %i.hl = fmul <2 x double> %i.hc, splat (double 2.000000e+00)
  %i.hm = fadd <2 x double> %i.hl, splat (double -1.000000e+00) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.hn = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ho = fmul <2 x double> %i.gh, %i.hn
  %.sroa.0.sroa.0.8.vec.extract = extractelement <2 x double> %i.hk, i64 1
  %i.hp = bitcast double %.sroa.0.sroa.0.8.vec.extract to <1 x double>
  %i.hq = shufflevector <1 x double> %i.hp, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hr = fmul <2 x double> %i.gj, %i.hq
  %i.hs = fadd <2 x double> %i.ho, %i.hr
  %i.ht = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hu = fmul <2 x double> %i.gp, %i.ht
  %i.hv = fadd <2 x double> %i.hu, %i.hs
  %i.hw = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hx = fmul <2 x double> %i.gr, %i.hw
  %i.hy = fadd <2 x double> %i.hx, %i.hv
  %i.hz = fmul <2 x double> %i.gl, %i.hn
  %i.ia = fmul <2 x double> %i.gn, %i.hq
  %i.ib = fadd <2 x double> %i.hz, %i.ia
  %i.ic = fmul <2 x double> %i.gt, %i.ht
  %i.id = fadd <2 x double> %i.ic, %i.ib
  %i.ie = fmul <2 x double> %i.gv, %i.hw
  %i.if = fadd <2 x double> %i.ie, %i.id          ; 2 uses
  %i.ig = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ih = fdiv <2 x double> %i.hy, %i.ig          ; 2 uses
  store <2 x double> %i.ih, ptr %10, align 16, !tbaa !20
  %i.ii = fdiv <2 x double> %i.if, %i.ig
  store <2 x double> %i.ii, ptr %i.bw, align 16, !tbaa !20
  %.idx.i.i.i.i = mul nuw nsw i64 %indvars.iv, 24
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 %.idx.i.i.i.i ; 5 uses
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = lshr exact i64 %i.ik, 3
  %i.im = and i64 %i.il, 1                        ; 5 uses
  %.not111 = icmp eq i64 %i.im, 0
  br i1 %.not111, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.in = extractelement <2 x double> %i.ih, i64 0
  store double %i.in, ptr %i.ij, align 8, !tbaa !21
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.im
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.im
  %i.ip = load <2 x double>, ptr %11, align 8, !tbaa !20
  store <2 x double> %i.ip, ptr %i.io, align 16, !tbaa !20
  br label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.im
  %12 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.im
  %i.ir = load <2 x double>, ptr %12, align 8, !tbaa !20
  store <2 x double> %i.ir, ptr %i.iq, align 16, !tbaa !20
  %i.is = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.it = load double, ptr %i.bx, align 16, !tbaa !21
  store double %i.it, ptr %i.is, align 8, !tbaa !21
  br label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !92

.loopexit:                                        ; preds = %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit, %bb.i, %bb.h
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sdiv i64 9223372036854775807, %i.b
  %i.e = icmp slt i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !33
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef 1, i64 noundef %i.b)
  %i.g = load ptr, ptr %1, align 8, !tbaa !47     ; 3 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !54   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !32
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.j, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %.not8.i.i.i.i.i.i.i = icmp eq i64 %i.l, %i.h
  %or.cond.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sdiv i64 9223372036854775807, %i.h
  %i.o = icmp slt i64 %i.n, 1
  br i1 %i.o, label %.noexc.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !33
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h, i64 noundef 1, i64 noundef %i.h)
  %.pr.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !23
  %.pre.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.q = phi i64 [ %.pre.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i ], [ 1, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit ] ; 12 uses
  %i.r = phi i64 [ %.pr.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i ], [ %i.h, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit ] ; 4 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !31     ; 3 uses
  %i.t = icmp sgt i64 %i.r, 0
  %i.u = icmp sgt i64 %i.q, 0
  %or.cond.i.i.i.i.i.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEERS2_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.f
  %i.v = add nsw i64 %i.q, -1
  %i.w = mul i64 %i.r, %i.q
  %i.x = shl i64 %i.w, 3
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.x
  %i.y = mul i64 %i.q, 24
  %i.z = shl i64 %i.r, 3
  %i.aa = getelementptr i8, ptr %i.g, i64 %i.y
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %scevgep7 = getelementptr i8, ptr %i.ab, i64 -24
  %min.iters.check = icmp ult i64 %i.q, 26
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.v, i64 24) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %bound0 = icmp ult ptr %i.s, %scevgep7
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.q, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %i.ac = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.q, 8070450532247928828      ; 3 uses
  %cmp.n = icmp eq i64 %i.q, %n.vec
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i = phi i64 [ %i.bj, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ad = mul nuw nsw i64 %.0810.i.i.i.i.i.i.i, %i.q
  %invariant.gep.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.s, i64 %i.ad ; 6 uses
  %i.ae = getelementptr [8 x i8], ptr %i.g, i64 %.0810.i.i.i.i.i.i.i ; 11 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %mul.result
  %i.ag = icmp ult ptr %i.af, %i.ae
  %i.ah = or i1 %i.ag, %mul.overflow
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.ah
  %brmerge = select i1 %or.cond, i1 true, i1 %i.ac
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i.i.i.i.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 6 uses
  %i.ai = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %index ; 2 uses
  %i.aj = mul i64 %index, 24
  %i.ak = mul i64 %index, 24
  %i.al = mul i64 %index, 24
  %i.am = mul i64 %index, 24
  %i.an = getelementptr i8, ptr %i.ae, i64 %i.aj
  %i.ao = getelementptr i8, ptr %i.ae, i64 %i.ak
  %i.ap = getelementptr i8, ptr %i.ao, i64 24
  %i.aq = getelementptr i8, ptr %i.ae, i64 %i.al
  %i.ar = getelementptr i8, ptr %i.aq, i64 48
  %i.as = getelementptr i8, ptr %i.ae, i64 %i.am
  %i.at = getelementptr i8, ptr %i.as, i64 72
  %i.au = load double, ptr %i.an, align 8, !tbaa !21, !alias.scope !93
  %i.av = load double, ptr %i.ap, align 8, !tbaa !21, !alias.scope !93
  %i.aw = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.av, i64 1
  %i.ay = load double, ptr %i.ar, align 8, !tbaa !21, !alias.scope !93
  %i.az = load double, ptr %i.at, align 8, !tbaa !21, !alias.scope !93
  %i.ba = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.az, i64 1
  %i.bc = getelementptr i8, ptr %i.ai, i64 16
  store <2 x double> %i.ax, ptr %i.ai, align 8, !tbaa !21, !alias.scope !96, !noalias !93
  store <2 x double> %i.bb, ptr %i.bc, align 8, !tbaa !21, !alias.scope !96, !noalias !93
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.i.i.i.i.i.i.prol = phi i64 [ %i.bg, %scalar.ph.prol ], [ %.09.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i.prol
  %.idx.i.i.i.i.i.i.i.i.i.i.prol = mul i64 %.09.i.i.i.i.i.i.i.prol, 24
  %i.be = getelementptr i8, ptr %i.ae, i64 %.idx.i.i.i.i.i.i.i.i.i.i.prol
  %i.bf = load double, ptr %i.be, align 8, !tbaa !21
  store double %i.bf, ptr %gep.i.i.i.i.i.i.i.prol, align 8, !tbaa !21
  %i.bg = add nuw nsw i64 %.09.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !99

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.bg, %scalar.ph.prol ]
  %i.bh = sub nsw i64 %.09.i.i.i.i.i.i.i.ph, %i.q
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %._crit_edge.i.i.i.i.i.i.i, label %scalar.ph

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bj = add nuw nsw i64 %.0810.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i = icmp eq i64 %i.bj, %i.r
  br i1 %exitcond12.not.i.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !100

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i.i.i.i.i.i = phi i64 [ %i.bv, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i = mul i64 %.09.i.i.i.i.i.i.i, 24
  %i.bk = getelementptr i8, ptr %i.ae, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !21
  store double %i.bl, ptr %gep.i.i.i.i.i.i.i, align 8, !tbaa !21
  %i.bm = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 1   ; 2 uses
  %gep.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %i.bm
  %.idx.i.i.i.i.i.i.i.i.i.i.1 = mul i64 %i.bm, 24
  %i.bn = getelementptr i8, ptr %i.ae, i64 %.idx.i.i.i.i.i.i.i.i.i.i.1
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !21
  store double %i.bo, ptr %gep.i.i.i.i.i.i.i.1, align 8, !tbaa !21
  %i.bp = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 2   ; 2 uses
  %gep.i.i.i.i.i.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %i.bp
  %.idx.i.i.i.i.i.i.i.i.i.i.2 = mul i64 %i.bp, 24
  %i.bq = getelementptr i8, ptr %i.ae, i64 %.idx.i.i.i.i.i.i.i.i.i.i.2
  %i.br = load double, ptr %i.bq, align 8, !tbaa !21
  store double %i.br, ptr %gep.i.i.i.i.i.i.i.2, align 8, !tbaa !21
  %i.bs = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 3   ; 2 uses
  %gep.i.i.i.i.i.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %i.bs
  %.idx.i.i.i.i.i.i.i.i.i.i.3 = mul i64 %i.bs, 24
  %i.bt = getelementptr i8, ptr %i.ae, i64 %.idx.i.i.i.i.i.i.i.i.i.i.3
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !21
  store double %i.bu, ptr %gep.i.i.i.i.i.i.i.3, align 8, !tbaa !21
  %i.bv = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bv, %i.q
end_hunk_1
begin_hunk_2_@_ZN3igl9unprojectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE:.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = fadd <4 x float> %i.bf, %i.bi
  %i.bk = insertelement <4 x float> poison, float %i.ab, i64 0
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bm = fmul <4 x float> %i.u, %i.bl
  %i.bn = fadd <4 x float> %i.bj, %i.bm
  %i.bo = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bq = fmul <4 x float> %i.w, %i.bp
  %i.br = fadd <4 x float> %i.bn, %i.bq           ; 10 uses
  %i.bs = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bu = fmul <4 x float> %i.q, %i.bt
  %i.bv = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = fmul <4 x float> %i.s, %i.bw
  %i.by = fadd <4 x float> %i.bu, %i.bx
  %i.bz = insertelement <4 x float> poison, float %i.af, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cb = fmul <4 x float> %i.u, %i.ca
  %i.cc = fadd <4 x float> %i.by, %i.cb
  %i.cd = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cf = fmul <4 x float> %i.w, %i.ce
  %i.cg = fadd <4 x float> %i.cc, %i.cf           ; 10 uses
  %i.ch = shufflevector <4 x float> %i.ar, <4 x float> %i.bc, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.ci = shufflevector <4 x float> %i.bc, <4 x float> %i.ar, <4 x i32> <i32 6, i32 7, i32 2, i32 3> ; 3 uses
  %i.cj = shufflevector <4 x float> %i.br, <4 x float> %i.cg, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.ck = shufflevector <4 x float> %i.cg, <4 x float> %i.br, <4 x i32> <i32 6, i32 7, i32 2, i32 3> ; 3 uses
  %i.cl = shufflevector <4 x float> %i.bc, <4 x float> %i.ar, <4 x i32> <i32 1, i32 1, i32 4, i32 4>
  %i.cm = fmul <4 x float> %i.ci, %i.cl
  %i.cn = shufflevector <4 x float> %i.ar, <4 x float> %i.bc, <4 x i32> <i32 1, i32 1, i32 4, i32 4>
  %i.co = shufflevector <4 x float> %i.bc, <4 x float> %i.ar, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.cp = fmul <4 x float> %i.cn, %i.co
  %i.cq = fsub <4 x float> %i.cm, %i.cp           ; 5 uses
  %i.cr = shufflevector <4 x float> %i.cg, <4 x float> %i.br, <4 x i32> <i32 3, i32 3, i32 6, i32 6>
  %i.cs = fmul <4 x float> %i.cj, %i.cr
  %i.ct = shufflevector <4 x float> %i.br, <4 x float> %i.cg, <4 x i32> <i32 3, i32 3, i32 6, i32 6>
  %i.cu = shufflevector <4 x float> %i.cg, <4 x float> %i.br, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cv = fmul <4 x float> %i.ct, %i.cu
  %i.cw = fsub <4 x float> %i.cs, %i.cv           ; 5 uses
  %i.cx = shufflevector <4 x float> %i.bc, <4 x float> %i.ar, <4 x i32> <i32 1, i32 1, i32 5, i32 5>
  %i.cy = fmul <4 x float> %i.ch, %i.cx           ; 2 uses
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.da = fsub <4 x float> %i.cy, %i.cz           ; 2 uses
  %i.db = shufflevector <4 x float> %i.bc, <4 x float> %i.ar, <4 x i32> <i32 3, i32 3, i32 7, i32 7>
  %i.dc = fmul <4 x float> %i.ci, %i.db           ; 2 uses
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.de = fsub <4 x float> %i.dc, %i.dd           ; 2 uses
  %i.df = shufflevector <4 x float> %i.cg, <4 x float> %i.br, <4 x i32> <i32 1, i32 1, i32 5, i32 5>
  %i.dg = fmul <4 x float> %i.cj, %i.df           ; 2 uses
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.di = fsub <4 x float> %i.dg, %i.dh           ; 2 uses
  %i.dj = shufflevector <4 x float> %i.cg, <4 x float> %i.br, <4 x i32> <i32 3, i32 3, i32 7, i32 7>
  %i.dk = fmul <4 x float> %i.ck, %i.dj           ; 2 uses
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dm = fsub <4 x float> %i.dk, %i.dl           ; 2 uses
  %i.dn = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.do = fmul <4 x float> %i.cq, %i.dn           ; 2 uses
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dq = fadd <4 x float> %i.do, %i.dp           ; 2 uses
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ds = fadd <4 x float> %i.dq, %i.dr
  %i.dt = fmul <4 x float> %i.da, %i.dm
  %i.du = fmul <4 x float> %i.de, %i.di
  %i.dv = fadd <4 x float> %i.dt, %i.du
  %i.dw = fsub <4 x float> %i.dv, %i.ds
  %i.dx = fdiv <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, %i.dw
  %i.dy = bitcast <4 x float> %i.dx to <4 x i32>
  %i.dz = shufflevector <4 x i32> %i.dy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ea = shufflevector <4 x float> %i.br, <4 x float> %i.cg, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  %i.eb = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ec = fmul <4 x float> %i.eb, %i.ea
  %i.ed = shufflevector <4 x float> %i.br, <4 x float> %i.cg, <4 x i32> <i32 1, i32 1, i32 5, i32 5>
  %i.ee = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ef = fmul <4 x float> %i.ee, %i.ed
  %i.eg = fadd <4 x float> %i.ec, %i.ef
  %i.eh = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ei = fmul <4 x float> %i.eh, %i.ck
  %i.ej = fsub <4 x float> %i.ei, %i.eg
  %i.ek = shufflevector <4 x float> %i.ar, <4 x float> %i.bc, <4 x i32> <i32 2, i32 2, i32 6, i32 6>
  %i.el = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.em = fmul <4 x float> %i.ek, %i.el
  %i.en = shufflevector <4 x float> %i.ar, <4 x float> %i.bc, <4 x i32> <i32 3, i32 3, i32 7, i32 7>
  %i.eo = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ep = fmul <4 x float> %i.en, %i.eo
  %i.eq = fadd <4 x float> %i.em, %i.ep
  %i.er = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.es = fmul <4 x float> %i.ch, %i.er
  %i.et = fsub <4 x float> %i.es, %i.eq
  %i.eu = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 3, i32 0>
  %i.ev = fmul <4 x float> %i.eu, %i.ck
  %i.ew = shufflevector <4 x float> %i.br, <4 x float> %i.cg, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.ex = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 2, i32 1>
  %i.ey = fmul <4 x float> %i.ex, %i.ew
  %i.ez = fsub <4 x float> %i.ev, %i.ey
  %i.fa = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fb = fmul <4 x float> %i.fa, %i.cj
  %i.fc = fsub <4 x float> %i.fb, %i.ez
  %i.fd = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 3, i32 0>
  %i.fe = fmul <4 x float> %i.ch, %i.fd
  %i.ff = shufflevector <4 x float> %i.ar, <4 x float> %i.bc, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.fg = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 2, i32 1>
  %i.fh = fmul <4 x float> %i.ff, %i.fg
  %i.fi = fsub <4 x float> %i.fe, %i.fh
  %i.fj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fk = fmul <4 x float> %i.ci, %i.fj
  %i.fl = fsub <4 x float> %i.fk, %i.fi
  %i.fm = xor <4 x i32> %i.dz, <i32 0, i32 -2147483648, i32 -2147483648, i32 0>
  %i.fn = bitcast <4 x i32> %i.fm to <4 x float>  ; 4 uses
  %i.fo = fmul <4 x float> %i.et, %i.fn           ; 2 uses
  %i.fp = fmul <4 x float> %i.fc, %i.fn           ; 2 uses
  %i.fq = fmul <4 x float> %i.fl, %i.fn           ; 2 uses
  %i.fr = fmul <4 x float> %i.ej, %i.fn           ; 2 uses
  %i.fs = shufflevector <4 x float> %i.fo, <4 x float> %i.fp, <4 x i32> <i32 3, i32 1, i32 7, i32 5>
  %i.ft = shufflevector <4 x float> %i.fo, <4 x float> %i.fp, <4 x i32> <i32 2, i32 0, i32 6, i32 4>
  %i.fu = shufflevector <4 x float> %i.fq, <4 x float> %i.fr, <4 x i32> <i32 3, i32 1, i32 7, i32 5>
  %i.fv = shufflevector <4 x float> %i.fq, <4 x float> %i.fr, <4 x i32> <i32 2, i32 0, i32 6, i32 4>
  %.sroa.0.12.vec.insert = insertelement <4 x float> %.sroa.0.0.vec.expand, float 1.000000e+00, i64 3
  %i.fw = load <2 x float>, ptr %3, align 4, !tbaa !12
  %i.fx = shufflevector <3 x float> %.sroa.0.0.copyload, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.fy = fsub <2 x float> %i.fx, %i.fw
  %i.fz = load <2 x float>, ptr %i.p, align 4, !tbaa !12
  %i.ga = fdiv <2 x float> %i.fy, %i.fz
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> %.sroa.0.12.vec.insert, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gd = fmul <4 x float> %i.gc, splat (float 2.000000e+00)
  %i.ge = fadd <4 x float> %i.gd, splat (float -1.000000e+00) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gg = fmul <4 x float> %i.fs, %i.gf
  %i.gh = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gi = fmul <4 x float> %i.ft, %i.gh
  %i.gj = fadd <4 x float> %i.gg, %i.gi
  %i.gk = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gl = fmul <4 x float> %i.fu, %i.gk
  %i.gm = fadd <4 x float> %i.gl, %i.gj
  %i.gn = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.go = fmul <4 x float> %i.fv, %i.gn
  %i.gp = fadd <4 x float> %i.go, %i.gm           ; 2 uses
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gr = fdiv <4 x float> %i.gp, %i.gq
  store <4 x float> %i.gr, ptr %5, align 16, !tbaa !20
  %i.gs = ptrtoint ptr %4 to i64
  %i.gt = lshr exact i64 %i.gs, 2
  %i.gu = sub nsw i64 0, %i.gt
  %i.gv = and i64 %i.gu, 3                        ; 3 uses
  %cond = icmp eq i64 %i.gv, 0
  br i1 %cond, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gw = shl nuw nsw i64 %i.gv, 2                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %4, ptr nonnull align 16 %5, i64 %i.gw, i1 false), !tbaa !12
  %.not101 = icmp eq i64 %i.gv, 3
  br i1 %.not101, label %_ZN5Eigen5BlockINS0_INS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IfLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.pre-phi = phi i64 [ %i.gw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %scevgep = getelementptr i8, ptr %4, i64 %.pre-phi
  %scevgep103 = getelementptr i8, ptr %5, i64 %.pre-phi
  %i.gx = sub nuw nsw i64 12, %.pre-phi
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep, ptr align 4 %scevgep103, i64 %i.gx, i1 false), !tbaa !12
  br label %_ZN5Eigen5BlockINS0_INS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IfLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS0_INS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IfLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl9unprojectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::Matrix.59", align 16 ; 5 uses
  %6 = alloca %"class.Eigen::Matrix.59", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.a = load <2 x double>, ptr %0, align 1, !tbaa !20, !noalias !105
  store <2 x double> %i.a, ptr %6, align 16, !tbaa !20, !alias.scope !105
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !21, !noalias !105
  store double %i.d, ptr %i.b, align 16, !tbaa !21, !alias.scope !105
  call void @_ZN3igl9unprojectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.e = load <2 x double>, ptr %5, align 16, !tbaa !20
  store <2 x double> %i.e, ptr %4, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = load double, ptr %i.g, align 16, !tbaa !21
  store double %i.h, ptr %i.f, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl9unprojectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
.preheader.i.i.i.i.i.i.i.i.i.i.i.i:
  %5 = alloca %"class.Eigen::Product.702", align 8 ; 5 uses
  %6 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %7 = alloca %"class.Eigen::Matrix.33", align 16 ; 11 uses
  %8 = alloca %"class.Eigen::Matrix.43", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 64
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 96
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.b = getelementptr i8, ptr %3, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %2, ptr %5, align 8, !tbaa !61, !alias.scope !108
  store ptr %1, ptr %i.a, align 8, !tbaa !61, !alias.scope !108
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEENS_7ProductINS_12CwiseUnaryOpINS0_14scalar_cast_opIfdEEKNS2_IfLi4ELi4ELi0ELi4ELi4EEEEESA_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(128) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.sroa.0263.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %7, align 16 ; 6 uses
  %.sroa.4.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 16 ; 5 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.7.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.8.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.9.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 16, !tbaa !20 ; 5 uses
  %i.c = shufflevector <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.d = fmul <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, %i.c ; 2 uses
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.f = fsub <2 x double> %i.d, %i.e             ; 2 uses
  %i.g = shufflevector <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.h = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.g ; 2 uses
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.j = fsub <2 x double> %i.h, %i.i             ; 2 uses
  %i.k = shufflevector <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.l = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.k ; 2 uses
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.n = fsub <2 x double> %i.l, %i.m             ; 2 uses
  %i.o = shufflevector <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.p = fmul <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, %i.o ; 2 uses
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.r = fsub <2 x double> %i.p, %i.q             ; 2 uses
  %i.s = shufflevector <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.t = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.s
  %i.u = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.u, %.sroa.6.0.copyload.i.i.i.i.i.i
  %i.w = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.x = fmul <2 x double> %i.w, %.sroa.6.0.copyload.i.i.i.i.i.i
  %i.y = fsub <2 x double> %i.t, %i.x             ; 5 uses
  %i.z = shufflevector <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.z
  %i.ab = fsub <2 x double> %i.v, %i.aa           ; 5 uses
  %i.ac = shufflevector <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.ac
  %i.ae = shufflevector <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, %i.ae
  %i.ag = shufflevector <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = fmul <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, %i.ag
  %i.ai = fsub <2 x double> %i.ad, %i.ah          ; 6 uses
  %i.aj = shufflevector <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.aj
  %i.al = fsub <2 x double> %i.af, %i.ak          ; 6 uses
  %i.am = shufflevector <2 x double> %i.ai, <2 x double> %i.al, <2 x i32> <i32 0, i32 2>
  %i.an = fmul <2 x double> %i.y, %i.am
  %i.ao = shufflevector <2 x double> %i.ai, <2 x double> %i.al, <2 x i32> <i32 1, i32 3>
  %i.ap = fmul <2 x double> %i.ab, %i.ao
  %i.aq = fadd <2 x double> %i.an, %i.ap          ; 2 uses
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.as = fadd <2 x double> %i.aq, %i.ar
  %i.at = fmul <2 x double> %i.f, %i.r
  %i.au = fmul <2 x double> %i.j, %i.n
  %i.av = fadd <2 x double> %i.au, %i.at
  %i.aw = fsub <2 x double> %i.av, %i.as
  %i.ax = fdiv <2 x double> <double 1.000000e+00, double poison>, %i.aw
  %i.ay = bitcast <2 x double> %i.ax to <2 x i64>
  %i.az = shufflevector <2 x i64> %i.ay, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ba = shufflevector <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x double> %i.y, %i.ba
  %i.bc = shufflevector <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x double> %i.y, %i.bc
  %i.be = shufflevector <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bf = fmul <2 x double> %i.ab, %i.be
  %i.bg = fadd <2 x double> %i.bb, %i.bf
  %i.bh = shufflevector <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bi = fmul <2 x double> %i.ab, %i.bh
  %i.bj = fadd <2 x double> %i.bd, %i.bi
  %i.bk = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bl = fmul <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, %i.bk
  %i.bm = fsub <2 x double> %i.bl, %i.bg          ; 2 uses
  %i.bn = fmul <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, %i.bk
  %i.bo = fsub <2 x double> %i.bn, %i.bj          ; 2 uses
  %i.bp = shufflevector <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x double> %i.bp, %i.ai
  %i.br = shufflevector <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x double> %i.br, %i.ai
  %i.bt = shufflevector <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bu = fmul <2 x double> %i.bt, %i.al
  %i.bv = fadd <2 x double> %i.bq, %i.bu
  %i.bw = shufflevector <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = fmul <2 x double> %i.bw, %i.al
  %i.by = fadd <2 x double> %i.bs, %i.bx
  %i.bz = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ca = fmul <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, %i.bz
  %i.cb = fsub <2 x double> %i.ca, %i.bv          ; 2 uses
  %i.cc = fmul <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, %i.bz
  %i.cd = fsub <2 x double> %i.cc, %i.by          ; 2 uses
  %i.ce = shufflevector <2 x double> %i.ab, <2 x double> %i.y, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cf = fmul <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, %i.ce
  %i.cg = fmul <2 x double> %i.ce, %.sroa.10.0.copyload.i.i.i.i.i.i
  %i.ch = shufflevector <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ci = shufflevector <2 x double> %i.ab, <2 x double> %i.y, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cj = fmul <2 x double> %i.ch, %i.ci
  %i.ck = fsub <2 x double> %i.cf, %i.cj
  %i.cl = fmul <2 x double> %i.ci, %i.o
  %i.cm = fsub <2 x double> %i.cg, %i.cl
  %i.cn = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.cn
  %i.cp = fsub <2 x double> %i.co, %i.ck          ; 2 uses
  %i.cq = fmul <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, %i.cn
  %i.cr = fsub <2 x double> %i.cq, %i.cm          ; 2 uses
  %i.cs = shufflevector <2 x double> %i.al, <2 x double> %i.ai, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ct = fmul <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, %i.cs
  %i.cu = fmul <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, %i.cs
  %i.cv = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cw = shufflevector <2 x double> %i.al, <2 x double> %i.ai, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cx = fmul <2 x double> %i.cv, %i.cw
  %i.cy = fsub <2 x double> %i.ct, %i.cx
  %i.cz = fmul <2 x double> %i.c, %i.cw
  %i.da = fsub <2 x double> %i.cu, %i.cz
  %i.db = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dc = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.db
  %i.dd = fsub <2 x double> %i.dc, %i.cy          ; 2 uses
  %i.de = fmul <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, %i.db
  %i.df = fsub <2 x double> %i.de, %i.da          ; 2 uses
  %i.dg = xor <2 x i64> %i.az, <i64 0, i64 -9223372036854775808>
  %i.dh = bitcast <2 x i64> %i.dg to <2 x double> ; 4 uses
  %i.di = xor <2 x i64> %i.az, <i64 -9223372036854775808, i64 0>
  %i.dj = bitcast <2 x i64> %i.di to <2 x double> ; 4 uses
  %i.dk = shufflevector <2 x double> %i.cd, <2 x double> %i.cb, <2 x i32> <i32 1, i32 3>
  %i.dl = fmul <2 x double> %i.dk, %i.dh
  %i.dm = shufflevector <2 x double> %i.cd, <2 x double> %i.cb, <2 x i32> <i32 0, i32 2>
  %i.dn = fmul <2 x double> %i.dm, %i.dj
  %i.do = shufflevector <2 x double> %i.cr, <2 x double> %i.cp, <2 x i32> <i32 1, i32 3>
  %i.dp = fmul <2 x double> %i.do, %i.dh
  %i.dq = shufflevector <2 x double> %i.cr, <2 x double> %i.cp, <2 x i32> <i32 0, i32 2>
  %i.dr = fmul <2 x double> %i.dq, %i.dj
  %i.ds = shufflevector <2 x double> %i.df, <2 x double> %i.dd, <2 x i32> <i32 1, i32 3>
  %i.dt = fmul <2 x double> %i.ds, %i.dh
  %i.du = shufflevector <2 x double> %i.df, <2 x double> %i.dd, <2 x i32> <i32 0, i32 2>
  %i.dv = fmul <2 x double> %i.du, %i.dj
  %i.dw = shufflevector <2 x double> %i.bo, <2 x double> %i.bm, <2 x i32> <i32 1, i32 3>
  %i.dx = fmul <2 x double> %i.dw, %i.dh
  %i.dy = shufflevector <2 x double> %i.bo, <2 x double> %i.bm, <2 x i32> <i32 0, i32 2>
  %i.dz = fmul <2 x double> %i.dy, %i.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.ea = load <2 x double>, ptr %0, align 1, !tbaa !20, !noalias !111
  %gep56.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %0, i64 16
  %i.eb = load double, ptr %gep56.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !21, !noalias !111
  %i.ec = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.eb, i64 0
  %i.ed = load <2 x float>, ptr %3, align 4, !tbaa !12
  %i.ee = fpext <2 x float> %i.ed to <2 x double>
  %i.ef = fsub <2 x double> %i.ea, %i.ee
  %i.eg = load <2 x float>, ptr %i.b, align 4, !tbaa !12
  %i.eh = fpext <2 x float> %i.eg to <2 x double>
  %i.ei = fdiv <2 x double> %i.ef, %i.eh
  %i.ej = fmul <2 x double> %i.ei, splat (double 2.000000e+00)
  %i.ek = fadd <2 x double> %i.ej, splat (double -1.000000e+00) ; 2 uses
  %i.el = fmul <2 x double> %i.ec, splat (double 2.000000e+00)
  %i.em = fadd <2 x double> %i.el, splat (double -1.000000e+00) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.en = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eo = fmul <2 x double> %i.dl, %i.en
  %.sroa.0.sroa.0.8.vec.extract = extractelement <2 x double> %i.ek, i64 1
  %i.ep = bitcast double %.sroa.0.sroa.0.8.vec.extract to <1 x double>
  %i.eq = shufflevector <1 x double> %i.ep, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.er = fmul <2 x double> %i.dn, %i.eq
  %i.es = fadd <2 x double> %i.eo, %i.er
  %i.et = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eu = fmul <2 x double> %i.dt, %i.et
  %i.ev = fadd <2 x double> %i.eu, %i.es
  %i.ew = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ex = fmul <2 x double> %i.dv, %i.ew
  %i.ey = fadd <2 x double> %i.ex, %i.ev
  %i.ez = fmul <2 x double> %i.dp, %i.en
  %i.fa = fmul <2 x double> %i.dr, %i.eq
  %i.fb = fadd <2 x double> %i.ez, %i.fa
  %i.fc = fmul <2 x double> %i.dx, %i.et
  %i.fd = fadd <2 x double> %i.fc, %i.fb
  %i.fe = fmul <2 x double> %i.dz, %i.ew
  %i.ff = fadd <2 x double> %i.fe, %i.fd          ; 2 uses
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fh = fdiv <2 x double> %i.ey, %i.fg          ; 2 uses
  store <2 x double> %i.fh, ptr %8, align 16, !tbaa !20
  %i.fi = fdiv <2 x double> %i.ff, %i.fg
  store <2 x double> %i.fi, ptr %9, align 16, !tbaa !20
  %i.fj = ptrtoint ptr %4 to i64
  %i.fk = lshr exact i64 %i.fj, 3
  %i.fl = and i64 %i.fk, 1                        ; 5 uses
  %.not = icmp eq i64 %i.fl, 0
  br i1 %.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fm = extractelement <2 x double> %i.fh, i64 0
  store double %i.fm, ptr %4, align 8, !tbaa !21
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fl
  %10 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.fl
  %i.fo = load <2 x double>, ptr %10, align 8, !tbaa !20
  store <2 x double> %i.fo, ptr %i.fn, align 16, !tbaa !20
  br label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fl
  %11 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.fl
  %i.fq = load <2 x double>, ptr %11, align 8, !tbaa !20
  store <2 x double> %i.fq, ptr %i.fp, align 16, !tbaa !20
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ft = load double, ptr %i.fs, align 16, !tbaa !21
  store double %i.ft, ptr %i.fr, align 8, !tbaa !21
  br label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl9unprojectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IdLi4ELi4ELi0ELi4ELi4EEES4_NS2_IdLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
.preheader.i.i.i.i.i.i.i.i.i.i.i.i:
  %5 = alloca %"struct.Eigen::internal::evaluator.623", align 8 ; 8 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.626", align 8 ; 4 uses
  %7 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.631", align 8 ; 7 uses
  %8 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %9 = alloca %"class.Eigen::Matrix.33", align 16 ; 12 uses
  %10 = alloca %"class.Eigen::Matrix.43", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 32
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 48
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 64
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 80
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 96
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.h = getelementptr i8, ptr %3, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %2, ptr %5, align 8, !tbaa !114
  store ptr %1, ptr %i.a, align 8, !tbaa !114
  store ptr %2, ptr %i.b, align 8, !tbaa !116
  store ptr %1, ptr %i.c, align 8, !tbaa !116
  store i64 4, ptr %i.d, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store ptr %9, ptr %6, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store ptr %6, ptr %7, align 8, !tbaa !122
  store ptr %5, ptr %i.e, align 8, !tbaa !124
  store ptr %8, ptr %i.f, align 8, !tbaa !126
  store ptr %9, ptr %i.g, align 8, !tbaa !114
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEEENS3_INS_7ProductIS5_S5_Li1EEEEENS0_9assign_opIddEELi0EEELi2ELi1EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %.sroa.0263.0.copyload.i.i = load <2 x double>, ptr %9, align 16 ; 6 uses
  %.sroa.4.0.copyload.i.i = load <2 x double>, ptr %.sroa.4.0..sroa_idx.i.i, align 16 ; 6 uses
  %.sroa.5.0.copyload.i.i = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i.i, align 16 ; 5 uses
  %.sroa.6.0.copyload.i.i = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i, align 16 ; 6 uses
  %.sroa.7.0.copyload.i.i = load <2 x double>, ptr %.sroa.7.0..sroa_idx.i.i, align 16 ; 6 uses
  %.sroa.8.0.copyload.i.i = load <2 x double>, ptr %.sroa.8.0..sroa_idx.i.i, align 16 ; 6 uses
  %.sroa.9.0.copyload.i.i = load <2 x double>, ptr %.sroa.9.0..sroa_idx.i.i, align 16 ; 6 uses
  %.sroa.10.0.copyload.i.i = load <2 x double>, ptr %.sroa.10.0..sroa_idx.i.i, align 16, !tbaa !20 ; 5 uses
  %i.i = shufflevector <2 x double> %.sroa.5.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.j = fmul <2 x double> %.sroa.0263.0.copyload.i.i, %i.i ; 2 uses
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.l = fsub <2 x double> %i.j, %i.k             ; 2 uses
  %i.m = shufflevector <2 x double> %.sroa.6.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.n = fmul <2 x double> %.sroa.4.0.copyload.i.i, %i.m ; 2 uses
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.p = fsub <2 x double> %i.n, %i.o             ; 2 uses
  %i.q = shufflevector <2 x double> %.sroa.9.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.r = fmul <2 x double> %.sroa.7.0.copyload.i.i, %i.q ; 2 uses
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.t = fsub <2 x double> %i.r, %i.s             ; 2 uses
  %i.u = shufflevector <2 x double> %.sroa.10.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.v = fmul <2 x double> %.sroa.8.0.copyload.i.i, %i.u ; 2 uses
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.x = fsub <2 x double> %i.v, %i.w             ; 2 uses
  %i.y = shufflevector <2 x double> %.sroa.5.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.z = fmul <2 x double> %.sroa.4.0.copyload.i.i, %i.y
  %i.aa = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x double> %i.aa, %.sroa.6.0.copyload.i.i
  %i.ac = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = fmul <2 x double> %i.ac, %.sroa.6.0.copyload.i.i
  %i.ae = fsub <2 x double> %i.z, %i.ad           ; 5 uses
  %i.af = shufflevector <2 x double> %.sroa.5.0.copyload.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x double> %.sroa.4.0.copyload.i.i, %i.af
  %i.ah = fsub <2 x double> %i.ab, %i.ag          ; 5 uses
  %i.ai = shufflevector <2 x double> %.sroa.10.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aj = fmul <2 x double> %.sroa.7.0.copyload.i.i, %i.ai
  %i.ak = shufflevector <2 x double> %.sroa.8.0.copyload.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x double> %.sroa.9.0.copyload.i.i, %i.ak
  %i.am = shufflevector <2 x double> %.sroa.8.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.an = fmul <2 x double> %.sroa.9.0.copyload.i.i, %i.am
  %i.ao = fsub <2 x double> %i.aj, %i.an          ; 6 uses
  %i.ap = shufflevector <2 x double> %.sroa.10.0.copyload.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x double> %.sroa.7.0.copyload.i.i, %i.ap
  %i.ar = fsub <2 x double> %i.al, %i.aq          ; 6 uses
  %i.as = shufflevector <2 x double> %i.ao, <2 x double> %i.ar, <2 x i32> <i32 0, i32 2>
  %i.at = fmul <2 x double> %i.ae, %i.as
  %i.au = shufflevector <2 x double> %i.ao, <2 x double> %i.ar, <2 x i32> <i32 1, i32 3>
  %i.av = fmul <2 x double> %i.ah, %i.au
  %i.aw = fadd <2 x double> %i.at, %i.av          ; 2 uses
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ay = fadd <2 x double> %i.aw, %i.ax
  %i.az = fmul <2 x double> %i.l, %i.x
  %i.ba = fmul <2 x double> %i.p, %i.t
  %i.bb = fadd <2 x double> %i.ba, %i.az
  %i.bc = fsub <2 x double> %i.bb, %i.ay
  %i.bd = fdiv <2 x double> <double 1.000000e+00, double poison>, %i.bc
  %i.be = bitcast <2 x double> %i.bd to <2 x i64>
  %i.bf = shufflevector <2 x i64> %i.be, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bg = shufflevector <2 x double> %.sroa.7.0.copyload.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x double> %i.ae, %i.bg
  %i.bi = shufflevector <2 x double> %.sroa.9.0.copyload.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x double> %i.ae, %i.bi
  %i.bk = shufflevector <2 x double> %.sroa.7.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bl = fmul <2 x double> %i.ah, %i.bk
  %i.bm = fadd <2 x double> %i.bh, %i.bl
  %i.bn = shufflevector <2 x double> %.sroa.9.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bo = fmul <2 x double> %i.ah, %i.bn
  %i.bp = fadd <2 x double> %i.bj, %i.bo
  %i.bq = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.br = fmul <2 x double> %.sroa.8.0.copyload.i.i, %i.bq
  %i.bs = fsub <2 x double> %i.br, %i.bm          ; 2 uses
  %i.bt = fmul <2 x double> %.sroa.10.0.copyload.i.i, %i.bq
  %i.bu = fsub <2 x double> %i.bt, %i.bp          ; 2 uses
  %i.bv = shufflevector <2 x double> %.sroa.4.0.copyload.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x double> %i.bv, %i.ao
  %i.bx = shufflevector <2 x double> %.sroa.6.0.copyload.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x double> %i.bx, %i.ao
  %i.bz = shufflevector <2 x double> %.sroa.4.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ca = fmul <2 x double> %i.bz, %i.ar
  %i.cb = fadd <2 x double> %i.bw, %i.ca
  %i.cc = shufflevector <2 x double> %.sroa.6.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cd = fmul <2 x double> %i.cc, %i.ar
  %i.ce = fadd <2 x double> %i.by, %i.cd
  %i.cf = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cg = fmul <2 x double> %.sroa.0263.0.copyload.i.i, %i.cf
  %i.ch = fsub <2 x double> %i.cg, %i.cb          ; 2 uses
  %i.ci = fmul <2 x double> %.sroa.5.0.copyload.i.i, %i.cf
  %i.cj = fsub <2 x double> %i.ci, %i.ce          ; 2 uses
  %i.ck = shufflevector <2 x double> %i.ah, <2 x double> %i.ae, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cl = fmul <2 x double> %.sroa.8.0.copyload.i.i, %i.ck
  %i.cm = fmul <2 x double> %i.ck, %.sroa.10.0.copyload.i.i
  %i.cn = shufflevector <2 x double> %.sroa.8.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.co = shufflevector <2 x double> %i.ah, <2 x double> %i.ae, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cp = fmul <2 x double> %i.cn, %i.co
  %i.cq = fsub <2 x double> %i.cl, %i.cp
  %i.cr = fmul <2 x double> %i.co, %i.u
  %i.cs = fsub <2 x double> %i.cm, %i.cr
  %i.ct = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cu = fmul <2 x double> %.sroa.7.0.copyload.i.i, %i.ct
  %i.cv = fsub <2 x double> %i.cu, %i.cq          ; 2 uses
  %i.cw = fmul <2 x double> %.sroa.9.0.copyload.i.i, %i.ct
  %i.cx = fsub <2 x double> %i.cw, %i.cs          ; 2 uses
  %i.cy = shufflevector <2 x double> %i.ar, <2 x double> %i.ao, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cz = fmul <2 x double> %.sroa.0263.0.copyload.i.i, %i.cy
  %i.da = fmul <2 x double> %.sroa.5.0.copyload.i.i, %i.cy
  %i.db = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dc = shufflevector <2 x double> %i.ar, <2 x double> %i.ao, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dd = fmul <2 x double> %i.db, %i.dc
  %i.de = fsub <2 x double> %i.cz, %i.dd
  %i.df = fmul <2 x double> %i.i, %i.dc
  %i.dg = fsub <2 x double> %i.da, %i.df
  %i.dh = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.di = fmul <2 x double> %.sroa.4.0.copyload.i.i, %i.dh
  %i.dj = fsub <2 x double> %i.di, %i.de          ; 2 uses
  %i.dk = fmul <2 x double> %.sroa.6.0.copyload.i.i, %i.dh
  %i.dl = fsub <2 x double> %i.dk, %i.dg          ; 2 uses
  %i.dm = xor <2 x i64> %i.bf, <i64 0, i64 -9223372036854775808>
  %i.dn = bitcast <2 x i64> %i.dm to <2 x double> ; 4 uses
  %i.do = xor <2 x i64> %i.bf, <i64 -9223372036854775808, i64 0>
  %i.dp = bitcast <2 x i64> %i.do to <2 x double> ; 4 uses
  %i.dq = shufflevector <2 x double> %i.cj, <2 x double> %i.ch, <2 x i32> <i32 1, i32 3>
  %i.dr = fmul <2 x double> %i.dq, %i.dn
  %i.ds = shufflevector <2 x double> %i.cj, <2 x double> %i.ch, <2 x i32> <i32 0, i32 2>
  %i.dt = fmul <2 x double> %i.ds, %i.dp
  %i.du = shufflevector <2 x double> %i.cx, <2 x double> %i.cv, <2 x i32> <i32 1, i32 3>
  %i.dv = fmul <2 x double> %i.du, %i.dn
  %i.dw = shufflevector <2 x double> %i.cx, <2 x double> %i.cv, <2 x i32> <i32 0, i32 2>
  %i.dx = fmul <2 x double> %i.dw, %i.dp
  %i.dy = shufflevector <2 x double> %i.dl, <2 x double> %i.dj, <2 x i32> <i32 1, i32 3>
  %i.dz = fmul <2 x double> %i.dy, %i.dn
  %i.ea = shufflevector <2 x double> %i.dl, <2 x double> %i.dj, <2 x i32> <i32 0, i32 2>
  %i.eb = fmul <2 x double> %i.ea, %i.dp
  %i.ec = shufflevector <2 x double> %i.bu, <2 x double> %i.bs, <2 x i32> <i32 1, i32 3>
  %i.ed = fmul <2 x double> %i.ec, %i.dn
  %i.ee = shufflevector <2 x double> %i.bu, <2 x double> %i.bs, <2 x i32> <i32 0, i32 2>
  %i.ef = fmul <2 x double> %i.ee, %i.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.eg = load <2 x double>, ptr %0, align 1, !tbaa !20, !noalias !128
  %gep56.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %0, i64 16
  %i.eh = load double, ptr %gep56.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !21, !noalias !128
  %i.ei = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.eh, i64 0
  %i.ej = load <2 x double>, ptr %3, align 8, !tbaa !21
  %i.ek = fsub <2 x double> %i.eg, %i.ej
  %i.el = load <2 x double>, ptr %i.h, align 8, !tbaa !21
  %i.em = fdiv <2 x double> %i.ek, %i.el
  %i.en = fmul <2 x double> %i.em, splat (double 2.000000e+00)
  %i.eo = fadd <2 x double> %i.en, splat (double -1.000000e+00) ; 2 uses
  %i.ep = fmul <2 x double> %i.ei, splat (double 2.000000e+00)
  %i.eq = fadd <2 x double> %i.ep, splat (double -1.000000e+00) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.er = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.es = fmul <2 x double> %i.dr, %i.er
  %.sroa.0.sroa.0.8.vec.extract = extractelement <2 x double> %i.eo, i64 1
  %i.et = bitcast double %.sroa.0.sroa.0.8.vec.extract to <1 x double>
  %i.eu = shufflevector <1 x double> %i.et, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ev = fmul <2 x double> %i.dt, %i.eu
  %i.ew = fadd <2 x double> %i.es, %i.ev
  %i.ex = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ey = fmul <2 x double> %i.dz, %i.ex
  %i.ez = fadd <2 x double> %i.ey, %i.ew
  %i.fa = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fb = fmul <2 x double> %i.eb, %i.fa
  %i.fc = fadd <2 x double> %i.fb, %i.ez
  %i.fd = fmul <2 x double> %i.dv, %i.er
  %i.fe = fmul <2 x double> %i.dx, %i.eu
  %i.ff = fadd <2 x double> %i.fd, %i.fe
  %i.fg = fmul <2 x double> %i.ed, %i.ex
  %i.fh = fadd <2 x double> %i.fg, %i.ff
  %i.fi = fmul <2 x double> %i.ef, %i.fa
  %i.fj = fadd <2 x double> %i.fi, %i.fh          ; 2 uses
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fl = fdiv <2 x double> %i.fc, %i.fk          ; 2 uses
  store <2 x double> %i.fl, ptr %10, align 16, !tbaa !20
  %i.fm = fdiv <2 x double> %i.fj, %i.fk
  store <2 x double> %i.fm, ptr %11, align 16, !tbaa !20
  %i.fn = ptrtoint ptr %4 to i64
  %i.fo = lshr exact i64 %i.fn, 3
  %i.fp = and i64 %i.fo, 1                        ; 5 uses
  %.not = icmp eq i64 %i.fp, 0
  br i1 %.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fq = extractelement <2 x double> %i.fl, i64 0
  store double %i.fq, ptr %4, align 8, !tbaa !21
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fp
  %12 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.fp
  %i.fs = load <2 x double>, ptr %12, align 8, !tbaa !20
  store <2 x double> %i.fs, ptr %i.fr, align 16, !tbaa !20
  br label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fp
  %13 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.fp
  %i.fu = load <2 x double>, ptr %13, align 8, !tbaa !20
  store <2 x double> %i.fu, ptr %i.ft, align 16, !tbaa !20
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fx = load double, ptr %i.fw, align 16, !tbaa !21
  store double %i.fx, ptr %i.fv, align 8, !tbaa !21
  br label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEEENS3_INS_7ProductIS5_S5_Li1EEEEENS0_9assign_opIddEELi0EEELi2ELi1EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !131, !nonnull !133, !align !134
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !135
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !136, !nonnull !133, !align !134 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !135  ; 4 uses
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !20
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !135  ; 4 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !21
  %i.k = insertelement <2 x double> poison, double %i.j, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x double> %i.h, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.o = load <2 x double>, ptr %i.n, align 16, !tbaa !20
  %i.p = getelementptr i8, ptr %i.i, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !21
  %i.r = insertelement <2 x double> poison, double %i.q, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x double> %i.o, %i.s
  %i.u = fadd <2 x double> %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.w = load <2 x double>, ptr %i.v, align 16, !tbaa !20
  %i.x = getelementptr i8, ptr %i.i, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !21
  %i.z = insertelement <2 x double> poison, double %i.y, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x double> %i.w, %i.aa
  %i.ac = fadd <2 x double> %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.ae = load <2 x double>, ptr %i.ad, align 16, !tbaa !20
  %i.af = getelementptr i8, ptr %i.i, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !21
  %i.ah = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x double> %i.ae, %i.ai
  %i.ak = fadd <2 x double> %i.ac, %i.aj
  store <2 x double> %i.ak, ptr %i.c, align 16, !tbaa !20
  %i.al = load ptr, ptr %0, align 8, !tbaa !131, !nonnull !133, !align !134
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !135
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !136, !nonnull !133, !align !134 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !135 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load <2 x double>, ptr %i.as, align 16, !tbaa !20
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !135 ; 4 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !21
  %i.aw = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x double> %i.at, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.ba = load <2 x double>, ptr %i.az, align 16, !tbaa !20
  %i.bb = getelementptr i8, ptr %i.au, i64 8
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !21
  %i.bd = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x double> %i.ba, %i.be
  %i.bg = fadd <2 x double> %i.ay, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.bi = load <2 x double>, ptr %i.bh, align 16, !tbaa !20
  %i.bj = getelementptr i8, ptr %i.au, i64 16
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !21
  %i.bl = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x double> %i.bi, %i.bm
  %i.bo = fadd <2 x double> %i.bg, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  %i.bq = load <2 x double>, ptr %i.bp, align 16, !tbaa !20
  %i.br = getelementptr i8, ptr %i.au, i64 24
  %i.bs = load double, ptr %i.br, align 8, !tbaa !21
  %i.bt = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x double> %i.bq, %i.bu
  %i.bw = fadd <2 x double> %i.bo, %i.bv
  store <2 x double> %i.bw, ptr %i.an, align 16, !tbaa !20
  %i.bx = load ptr, ptr %0, align 8, !tbaa !131, !nonnull !133, !align !134
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !135
  %i.bz = getelementptr i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !136, !nonnull !133, !align !134 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !135 ; 4 uses
  %i.ce = load <2 x double>, ptr %i.cd, align 16, !tbaa !20
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !135 ; 4 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 32
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !21
  %i.ci = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x double> %i.ce, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cm = load <2 x double>, ptr %i.cl, align 16, !tbaa !20
  %i.cn = getelementptr i8, ptr %i.cf, i64 40
  %i.co = load double, ptr %i.cn, align 8, !tbaa !21
  %i.cp = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x double> %i.cm, %i.cq
  %i.cs = fadd <2 x double> %i.ck, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %i.cu = load <2 x double>, ptr %i.ct, align 16, !tbaa !20
  %i.cv = getelementptr i8, ptr %i.cf, i64 48
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !21
  %i.cx = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x double> %i.cu, %i.cy
  %i.da = fadd <2 x double> %i.cs, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.cd, i64 96
  %i.dc = load <2 x double>, ptr %i.db, align 16, !tbaa !20
  %i.dd = getelementptr i8, ptr %i.cf, i64 56
  %i.de = load double, ptr %i.dd, align 8, !tbaa !21
  %i.df = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x double> %i.dc, %i.dg
  %i.di = fadd <2 x double> %i.da, %i.dh
  store <2 x double> %i.di, ptr %i.bz, align 16, !tbaa !20
  %i.dj = load ptr, ptr %0, align 8, !tbaa !131, !nonnull !133, !align !134
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !135
  %i.dl = getelementptr i8, ptr %i.dk, i64 48
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !136, !nonnull !133, !align !134 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !135 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load <2 x double>, ptr %i.dq, align 16, !tbaa !20
  %i.ds = load ptr, ptr %i.do, align 8, !tbaa !135 ; 4 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 32
  %i.du = load double, ptr %i.dt, align 8, !tbaa !21
  %i.dv = insertelement <2 x double> poison, double %i.du, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x double> %i.dr, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dz = load <2 x double>, ptr %i.dy, align 16, !tbaa !20
  %i.ea = getelementptr i8, ptr %i.ds, i64 40
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !21
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.dz, %i.ed
  %i.ef = fadd <2 x double> %i.dx, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dp, i64 80
  %i.eh = load <2 x double>, ptr %i.eg, align 16, !tbaa !20
  %i.ei = getelementptr i8, ptr %i.ds, i64 48
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !21
  %i.ek = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = fmul <2 x double> %i.eh, %i.el
  %i.en = fadd <2 x double> %i.ef, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dp, i64 112
  %i.ep = load <2 x double>, ptr %i.eo, align 16, !tbaa !20
  %i.eq = getelementptr i8, ptr %i.ds, i64 56
  %i.er = load double, ptr %i.eq, align 8, !tbaa !21
  %i.es = insertelement <2 x double> poison, double %i.er, i64 0
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eu = fmul <2 x double> %i.ep, %i.et
  %i.ev = fadd <2 x double> %i.en, %i.eu
  store <2 x double> %i.ev, ptr %i.dl, align 16, !tbaa !20
  %i.ew = load ptr, ptr %0, align 8, !tbaa !131, !nonnull !133, !align !134
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !135
  %i.ey = getelementptr i8, ptr %i.ex, i64 64
  %i.ez = load ptr, ptr %i.a, align 8, !tbaa !136, !nonnull !133, !align !134 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fc = load ptr, ptr %i.fa, align 8, !tbaa !135 ; 4 uses
  %i.fd = load <2 x double>, ptr %i.fc, align 16, !tbaa !20
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !135 ; 4 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 64
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !21
  %i.fh = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x double> %i.fd, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fl = load <2 x double>, ptr %i.fk, align 16, !tbaa !20
  %i.fm = getelementptr i8, ptr %i.fe, i64 72
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !21
  %i.fo = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fq = fmul <2 x double> %i.fl, %i.fp
  %i.fr = fadd <2 x double> %i.fj, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fc, i64 64
  %i.ft = load <2 x double>, ptr %i.fs, align 16, !tbaa !20
  %i.fu = getelementptr i8, ptr %i.fe, i64 80
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !21
  %i.fw = insertelement <2 x double> poison, double %i.fv, i64 0
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fy = fmul <2 x double> %i.ft, %i.fx
  %i.fz = fadd <2 x double> %i.fr, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fc, i64 96
  %i.gb = load <2 x double>, ptr %i.ga, align 16, !tbaa !20
  %i.gc = getelementptr i8, ptr %i.fe, i64 88
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !21
  %i.ge = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gg = fmul <2 x double> %i.gb, %i.gf
  %i.gh = fadd <2 x double> %i.fz, %i.gg
  store <2 x double> %i.gh, ptr %i.ey, align 16, !tbaa !20
  %i.gi = load ptr, ptr %0, align 8, !tbaa !131, !nonnull !133, !align !134
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !135
  %i.gk = getelementptr i8, ptr %i.gj, i64 80
  %i.gl = load ptr, ptr %i.a, align 8, !tbaa !136, !nonnull !133, !align !134 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.go = load ptr, ptr %i.gm, align 8, !tbaa !135 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = load <2 x double>, ptr %i.gp, align 16, !tbaa !20
  %i.gr = load ptr, ptr %i.gn, align 8, !tbaa !135 ; 4 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 64
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !21
  %i.gu = insertelement <2 x double> poison, double %i.gt, i64 0
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gw = fmul <2 x double> %i.gq, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 48
  %i.gy = load <2 x double>, ptr %i.gx, align 16, !tbaa !20
  %i.gz = getelementptr i8, ptr %i.gr, i64 72
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !21
  %i.hb = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.hc = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hd = fmul <2 x double> %i.gy, %i.hc
  %i.he = fadd <2 x double> %i.gw, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.go, i64 80
  %i.hg = load <2 x double>, ptr %i.hf, align 16, !tbaa !20
  %i.hh = getelementptr i8, ptr %i.gr, i64 80
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !21
  %i.hj = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.hk = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hl = fmul <2 x double> %i.hg, %i.hk
  %i.hm = fadd <2 x double> %i.he, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.go, i64 112
  %i.ho = load <2 x double>, ptr %i.hn, align 16, !tbaa !20
  %i.hp = getelementptr i8, ptr %i.gr, i64 88
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !21
  %i.hr = insertelement <2 x double> poison, double %i.hq, i64 0
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = fmul <2 x double> %i.ho, %i.hs
  %i.hu = fadd <2 x double> %i.hm, %i.ht
  store <2 x double> %i.hu, ptr %i.gk, align 16, !tbaa !20
  %i.hv = load ptr, ptr %0, align 8, !tbaa !131, !nonnull !133, !align !134
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !135
  %i.hx = getelementptr i8, ptr %i.hw, i64 96
  %i.hy = load ptr, ptr %i.a, align 8, !tbaa !136, !nonnull !133, !align !134 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ib = load ptr, ptr %i.hz, align 8, !tbaa !135 ; 4 uses
  %i.ic = load <2 x double>, ptr %i.ib, align 16, !tbaa !20
  %i.id = load ptr, ptr %i.ia, align 8, !tbaa !135 ; 4 uses
  %i.ie = getelementptr i8, ptr %i.id, i64 96
  %i.if = load double, ptr %i.ie, align 8, !tbaa !21
  %i.ig = insertelement <2 x double> poison, double %i.if, i64 0
  %i.ih = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ii = fmul <2 x double> %i.ic, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  %i.ik = load <2 x double>, ptr %i.ij, align 16, !tbaa !20
  %i.il = getelementptr i8, ptr %i.id, i64 104
  %i.im = load double, ptr %i.il, align 8, !tbaa !21
  %i.in = insertelement <2 x double> poison, double %i.im, i64 0
  %i.io = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ip = fmul <2 x double> %i.ik, %i.io
  %i.iq = fadd <2 x double> %i.ii, %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ib, i64 64
  %i.is = load <2 x double>, ptr %i.ir, align 16, !tbaa !20
  %i.it = getelementptr i8, ptr %i.id, i64 112
  %i.iu = load double, ptr %i.it, align 8, !tbaa !21
  %i.iv = insertelement <2 x double> poison, double %i.iu, i64 0
  %i.iw = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ix = fmul <2 x double> %i.is, %i.iw
  %i.iy = fadd <2 x double> %i.iq, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ib, i64 96
  %i.ja = load <2 x double>, ptr %i.iz, align 16, !tbaa !20
  %i.jb = getelementptr i8, ptr %i.id, i64 120
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !21
  %i.jd = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.je = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jf = fmul <2 x double> %i.ja, %i.je
  %i.jg = fadd <2 x double> %i.iy, %i.jf
  store <2 x double> %i.jg, ptr %i.hx, align 16, !tbaa !20
  %i.jh = load ptr, ptr %0, align 8, !tbaa !131, !nonnull !133, !align !134
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !135
  %i.jj = getelementptr i8, ptr %i.ji, i64 112
  %i.jk = load ptr, ptr %i.a, align 8, !tbaa !136, !nonnull !133, !align !134 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  %i.jn = load ptr, ptr %i.jl, align 8, !tbaa !135 ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jp = load <2 x double>, ptr %i.jo, align 16, !tbaa !20
  %i.jq = load ptr, ptr %i.jm, align 8, !tbaa !135 ; 4 uses
  %i.jr = getelementptr i8, ptr %i.jq, i64 96
  %i.js = load double, ptr %i.jr, align 8, !tbaa !21
  %i.jt = insertelement <2 x double> poison, double %i.js, i64 0
  %i.ju = shufflevector <2 x double> %i.jt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jv = fmul <2 x double> %i.jp, %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jn, i64 48
  %i.jx = load <2 x double>, ptr %i.jw, align 16, !tbaa !20
  %i.jy = getelementptr i8, ptr %i.jq, i64 104
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !21
  %i.ka = insertelement <2 x double> poison, double %i.jz, i64 0
  %i.kb = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kc = fmul <2 x double> %i.jx, %i.kb
  %i.kd = fadd <2 x double> %i.jv, %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jn, i64 80
  %i.kf = load <2 x double>, ptr %i.ke, align 16, !tbaa !20
  %i.kg = getelementptr i8, ptr %i.jq, i64 112
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !21
  %i.ki = insertelement <2 x double> poison, double %i.kh, i64 0
  %i.kj = shufflevector <2 x double> %i.ki, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kk = fmul <2 x double> %i.kf, %i.kj
  %i.kl = fadd <2 x double> %i.kd, %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.jn, i64 112
  %i.kn = load <2 x double>, ptr %i.km, align 16, !tbaa !20
  %i.ko = getelementptr i8, ptr %i.jq, i64 120
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !21
  %i.kq = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.kr = shufflevector <2 x double> %i.kq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ks = fmul <2 x double> %i.kn, %i.kr
  %i.kt = fadd <2 x double> %i.kl, %i.ks
  store <2 x double> %i.kt, ptr %i.jj, align 16, !tbaa !20
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl9unprojectIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::Product.702", align 8 ; 5 uses
  %6 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %7 = alloca %"class.Eigen::Matrix.33", align 16 ; 11 uses
  %8 = alloca %"class.Eigen::Matrix.59", align 16 ; 6 uses
  %9 = alloca %"class.Eigen::Matrix.69", align 8  ; 10 uses
  %10 = alloca %"class.Eigen::Matrix.43", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23   ; 7 uses
  %.not = icmp eq i64 %i.b, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !alias.scope !137
  %i.c = load ptr, ptr %0, align 8, !tbaa !31, !noalias !137 ; 8 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !32, !noalias !137 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.b, 0     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.f, 0    ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i, %.not8.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sdiv i64 9223372036854775807, %i.f
  %i.j = icmp sgt i64 %i.b, %i.i
  br i1 %i.j, label %.noexc.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.d
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #12, !noalias !137 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !33, !noalias !137
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13, !noalias !137
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.l = mul nsw i64 %i.f, %i.b                   ; 12 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %.thread, label %bb.e

.thread:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  store i64 %i.b, ptr %i.g, align 8, !tbaa !35
  store i64 %i.f, ptr %i.h, align 8, !tbaa !37
  br label %._crit_edge.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %.thread140

.thread140:                                       ; preds = %bb.e
  store i64 %i.b, ptr %i.g, align 8, !tbaa !35
  store i64 %i.f, ptr %i.h, align 8, !tbaa !37
  %.nonneg = sub i64 0, %i.l
  %i.n = and i64 %.nonneg, -2
  %i.o = sub i64 0, %i.n
  br label %._crit_edge.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.p = icmp samesign ugt i64 %i.l, 2305843009213693951
  br i1 %i.p, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

.noexc:                                           ; preds = %bb.f
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !33
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.f
  %i.r = shl nuw i64 %i.l, 3
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #14 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.noexc26, label %bb.g

.noexc26:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !33
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.s, ptr %9, align 8, !tbaa !38
  store i64 %i.b, ptr %i.g, align 8, !tbaa !35
  store i64 %i.f, ptr %i.h, align 8, !tbaa !37
  %i.v = and i64 %i.l, 2305843009213693950        ; 3 uses
  %.not142 = icmp eq i64 %i.l, 1
  br i1 %.not142, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.thread140, %.thread, %bb.g
  %i.w = phi i64 [ 0, %.thread ], [ %i.o, %.thread140 ], [ %i.v, %bb.g ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %.pre.i.i139 = phi ptr [ null, %.thread ], [ null, %.thread140 ], [ %i.s, %bb.g ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i ] ; 7 uses
  %i.x = icmp slt i64 %i.w, %i.l
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %.pre.i.i139143 = ptrtoaddr ptr %.pre.i.i139 to i64
  %i.y = sub i64 %i.l, %i.w                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.y, 8
  %i.z = sub i64 %i.d, %.pre.i.i139143
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader145, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.y, -4                       ; 3 uses
  %i.aa = add i64 %i.w, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = add i64 %i.w, %index                    ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %.pre.i.i139, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ab ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load = load <2 x double>, ptr %i.ad, align 8, !tbaa !21
  %wide.load144 = load <2 x double>, ptr %i.ae, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x double> %wide.load, ptr %i.ac, align 8, !tbaa !21
  store <2 x double> %wide.load144, ptr %i.af, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader145

.lr.ph.i.i.i.i.i.i.i.i.i.preheader145:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ] ; 4 uses
  %i.ah = sub i64 %i.l, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ah, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader145, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader145 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader145 ]
  %i.ai = getelementptr inbounds [8 x i8], ptr %.pre.i.i139, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !21
  store double %i.ak, ptr %i.ai, align 8, !tbaa !21
  %i.al = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !141

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader145
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader145 ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.am = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.l
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %.pre.i.i139, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !21
  store double %i.aq, ptr %i.ao, align 8, !tbaa !21
  %i.ar = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.pre.i.i139, i64 %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ar
  %i.au = load double, ptr %i.at, align 8, !tbaa !21
  store double %i.au, ptr %i.as, align 8, !tbaa !21
  %i.av = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %.pre.i.i139, i64 %i.av
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.av
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !21
  store double %i.ay, ptr %i.aw, align 8, !tbaa !21
  %i.az = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %.pre.i.i139, i64 %i.az
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.az
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !21
  store double %i.bc, ptr %i.ba, align 8, !tbaa !21
  %i.bd = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bd, %i.l
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !142

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.g ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.011.i.i.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.011.i.i.i.i.i.i.i.i
  %i.bg = load <2 x double>, ptr %i.bf, align 16, !tbaa !20
  store <2 x double> %i.bg, ptr %i.be, align 16, !tbaa !20
  %i.bh = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bi = icmp samesign ult i64 %i.bh, %i.v
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !46

_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %bb.b, %._crit_edge.i.i.i.i.i.i.i.i
  invoke void @_ZN3igl9unprojectIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.h unwind label %common.resume

bb.h:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit
  %i.bj = load ptr, ptr %9, align 8, !tbaa !38
  call void @free(ptr noundef %i.bj) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.bk = load <2 x double>, ptr %8, align 16, !tbaa !20
  store <2 x double> %i.bk, ptr %4, align 8, !tbaa !20
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bn = load double, ptr %i.bm, align 16, !tbaa !21
  store double %i.bn, ptr %i.bl, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %.loopexit

common.resume:                                    ; preds = %_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %9, align 8, !tbaa !38
  call void @free(ptr noundef %i.bp) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  resume { ptr, i32 } %i.bo

bb.i:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !32 ; 2 uses
  %i.bs = trunc i64 %i.br to i32
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 64
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 96
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.bv = getelementptr i8, ptr %3, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %wide.trip.count = and i64 %i.br, 2147483647
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i:     ; preds = %.lr.ph, %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %2, ptr %5, align 8, !tbaa !61, !alias.scope !143
  store ptr %1, ptr %i.bu, align 8, !tbaa !61, !alias.scope !143
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEENS_7ProductINS_12CwiseUnaryOpINS0_14scalar_cast_opIfdEEKNS2_IfLi4ELi4ELi0ELi4ELi4EEEEESA_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(128) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.sroa.0263.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %7, align 16 ; 6 uses
  %.sroa.4.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 16 ; 5 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.7.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.8.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.9.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 16, !tbaa !20 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.by = load ptr, ptr %0, align 8, !tbaa !31, !noalias !146
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv ; 3 uses
  %i.ca = load i64, ptr %i.bq, align 8, !tbaa !32, !noalias !149 ; 2 uses
  %i.cb = load double, ptr %i.bz, align 8, !tbaa !21, !noalias !149
  %.sroa.0.sroa.0.0.vec.insert = insertelement <2 x double> poison, double %i.cb, i64 0
  %gep.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !tbaa !21, !noalias !149
  %.sroa.0.sroa.0.8.vec.insert = insertelement <2 x double> %.sroa.0.sroa.0.0.vec.insert, double %i.cc, i64 1
  %gep.i.i.i.i.i.i.i.i.i.i.i.i.2.idx = shl i64 %i.ca, 4
  %gep.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr i8, ptr %i.bz, i64 %gep.i.i.i.i.i.i.i.i.i.i.i.i.2.idx
  %i.cd = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !tbaa !21, !noalias !149
  %i.ce = shufflevector <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cf = fmul <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, %i.ce ; 2 uses
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ch = fsub <2 x double> %i.cf, %i.cg          ; 2 uses
  %i.ci = shufflevector <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cj = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.ci ; 2 uses
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cl = fsub <2 x double> %i.cj, %i.ck          ; 2 uses
  %i.cm = shufflevector <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cn = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.cm ; 2 uses
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cp = fsub <2 x double> %i.cn, %i.co          ; 2 uses
  %i.cq = shufflevector <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cr = fmul <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, %i.cq ; 2 uses
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ct = fsub <2 x double> %i.cr, %i.cs          ; 2 uses
  %i.cu = shufflevector <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cv = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.cu
  %i.cw = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x double> %i.cw, %.sroa.6.0.copyload.i.i.i.i.i.i
  %i.cy = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cz = fmul <2 x double> %i.cy, %.sroa.6.0.copyload.i.i.i.i.i.i
  %i.da = fsub <2 x double> %i.cv, %i.cz          ; 5 uses
  %i.db = shufflevector <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.db
  %i.dd = fsub <2 x double> %i.cx, %i.dc          ; 5 uses
  %i.de = shufflevector <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.df = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.de
  %i.dg = shufflevector <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, %i.dg
  %i.di = shufflevector <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dj = fmul <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, %i.di
  %i.dk = fsub <2 x double> %i.df, %i.dj          ; 6 uses
  %i.dl = shufflevector <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.dl
  %i.dn = fsub <2 x double> %i.dh, %i.dm          ; 6 uses
  %i.do = shufflevector <2 x double> %i.dk, <2 x double> %i.dn, <2 x i32> <i32 0, i32 2>
  %i.dp = fmul <2 x double> %i.da, %i.do
  %i.dq = shufflevector <2 x double> %i.dk, <2 x double> %i.dn, <2 x i32> <i32 1, i32 3>
  %i.dr = fmul <2 x double> %i.dd, %i.dq
  %i.ds = fadd <2 x double> %i.dp, %i.dr          ; 2 uses
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.du = fadd <2 x double> %i.ds, %i.dt
  %i.dv = fmul <2 x double> %i.ch, %i.ct
  %i.dw = fmul <2 x double> %i.cl, %i.cp
  %i.dx = fadd <2 x double> %i.dw, %i.dv
  %i.dy = fsub <2 x double> %i.dx, %i.du
  %i.dz = fdiv <2 x double> <double 1.000000e+00, double poison>, %i.dy
  %i.ea = bitcast <2 x double> %i.dz to <2 x i64>
  %i.eb = shufflevector <2 x i64> %i.ea, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ec = shufflevector <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x double> %i.da, %i.ec
  %i.ee = shufflevector <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = fmul <2 x double> %i.da, %i.ee
  %i.eg = shufflevector <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eh = fmul <2 x double> %i.dd, %i.eg
  %i.ei = fadd <2 x double> %i.ed, %i.eh
  %i.ej = shufflevector <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ek = fmul <2 x double> %i.dd, %i.ej
  %i.el = fadd <2 x double> %i.ef, %i.ek
  %i.em = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.en = fmul <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, %i.em
  %i.eo = fsub <2 x double> %i.en, %i.ei          ; 2 uses
  %i.ep = fmul <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, %i.em
  %i.eq = fsub <2 x double> %i.ep, %i.el          ; 2 uses
  %i.er = shufflevector <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.es = fmul <2 x double> %i.er, %i.dk
  %i.et = shufflevector <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eu = fmul <2 x double> %i.et, %i.dk
  %i.ev = shufflevector <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ew = fmul <2 x double> %i.ev, %i.dn
  %i.ex = fadd <2 x double> %i.es, %i.ew
  %i.ey = shufflevector <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ez = fmul <2 x double> %i.ey, %i.dn
  %i.fa = fadd <2 x double> %i.eu, %i.ez
  %i.fb = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fc = fmul <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, %i.fb
  %i.fd = fsub <2 x double> %i.fc, %i.ex          ; 2 uses
  %i.fe = fmul <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, %i.fb
  %i.ff = fsub <2 x double> %i.fe, %i.fa          ; 2 uses
  %i.fg = shufflevector <2 x double> %i.dd, <2 x double> %i.da, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fh = fmul <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, %i.fg
  %i.fi = fmul <2 x double> %i.fg, %.sroa.10.0.copyload.i.i.i.i.i.i
  %i.fj = shufflevector <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fk = shufflevector <2 x double> %i.dd, <2 x double> %i.da, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fl = fmul <2 x double> %i.fj, %i.fk
  %i.fm = fsub <2 x double> %i.fh, %i.fl
  %i.fn = fmul <2 x double> %i.fk, %i.cq
  %i.fo = fsub <2 x double> %i.fi, %i.fn
  %i.fp = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fq = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.fp
  %i.fr = fsub <2 x double> %i.fq, %i.fm          ; 2 uses
  %i.fs = fmul <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, %i.fp
  %i.ft = fsub <2 x double> %i.fs, %i.fo          ; 2 uses
  %i.fu = shufflevector <2 x double> %i.dn, <2 x double> %i.dk, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fv = fmul <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, %i.fu
  %i.fw = fmul <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, %i.fu
  %i.fx = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fy = shufflevector <2 x double> %i.dn, <2 x double> %i.dk, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fz = fmul <2 x double> %i.fx, %i.fy
  %i.ga = fsub <2 x double> %i.fv, %i.fz
  %i.gb = fmul <2 x double> %i.ce, %i.fy
  %i.gc = fsub <2 x double> %i.fw, %i.gb
  %i.gd = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ge = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.gd
  %i.gf = fsub <2 x double> %i.ge, %i.ga          ; 2 uses
  %i.gg = fmul <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, %i.gd
  %i.gh = fsub <2 x double> %i.gg, %i.gc          ; 2 uses
  %i.gi = xor <2 x i64> %i.eb, <i64 0, i64 -9223372036854775808>
  %i.gj = bitcast <2 x i64> %i.gi to <2 x double> ; 4 uses
  %i.gk = xor <2 x i64> %i.eb, <i64 -9223372036854775808, i64 0>
  %i.gl = bitcast <2 x i64> %i.gk to <2 x double> ; 4 uses
  %i.gm = shufflevector <2 x double> %i.ff, <2 x double> %i.fd, <2 x i32> <i32 1, i32 3>
  %i.gn = fmul <2 x double> %i.gm, %i.gj
  %i.go = shufflevector <2 x double> %i.ff, <2 x double> %i.fd, <2 x i32> <i32 0, i32 2>
  %i.gp = fmul <2 x double> %i.go, %i.gl
  %i.gq = shufflevector <2 x double> %i.ft, <2 x double> %i.fr, <2 x i32> <i32 1, i32 3>
  %i.gr = fmul <2 x double> %i.gq, %i.gj
  %i.gs = shufflevector <2 x double> %i.ft, <2 x double> %i.fr, <2 x i32> <i32 0, i32 2>
  %i.gt = fmul <2 x double> %i.gs, %i.gl
  %i.gu = shufflevector <2 x double> %i.gh, <2 x double> %i.gf, <2 x i32> <i32 1, i32 3>
  %i.gv = fmul <2 x double> %i.gu, %i.gj
  %i.gw = shufflevector <2 x double> %i.gh, <2 x double> %i.gf, <2 x i32> <i32 0, i32 2>
  %i.gx = fmul <2 x double> %i.gw, %i.gl
  %i.gy = shufflevector <2 x double> %i.eq, <2 x double> %i.eo, <2 x i32> <i32 1, i32 3>
  %i.gz = fmul <2 x double> %i.gy, %i.gj
  %i.ha = shufflevector <2 x double> %i.eq, <2 x double> %i.eo, <2 x i32> <i32 0, i32 2>
  %i.hb = fmul <2 x double> %i.ha, %i.gl
  %.sroa.0.sroa.7.24.vec.insert = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.cd, i64 0
  %i.hc = load <2 x float>, ptr %3, align 4, !tbaa !12
  %i.hd = fpext <2 x float> %i.hc to <2 x double>
  %i.he = fsub <2 x double> %.sroa.0.sroa.0.8.vec.insert, %i.hd
  %i.hf = load <2 x float>, ptr %i.bv, align 4, !tbaa !12
  %i.hg = fpext <2 x float> %i.hf to <2 x double>
  %i.hh = fdiv <2 x double> %i.he, %i.hg
  %i.hi = fmul <2 x double> %i.hh, splat (double 2.000000e+00)
  %i.hj = fadd <2 x double> %i.hi, splat (double -1.000000e+00) ; 2 uses
  %i.hk = fmul <2 x double> %.sroa.0.sroa.7.24.vec.insert, splat (double 2.000000e+00)
  %i.hl = fadd <2 x double> %i.hk, splat (double -1.000000e+00) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.hm = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hn = fmul <2 x double> %i.gn, %i.hm
  %.sroa.0.sroa.0.8.vec.extract = extractelement <2 x double> %i.hj, i64 1
  %i.ho = bitcast double %.sroa.0.sroa.0.8.vec.extract to <1 x double>
  %i.hp = shufflevector <1 x double> %i.ho, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hq = fmul <2 x double> %i.gp, %i.hp
  %i.hr = fadd <2 x double> %i.hn, %i.hq
  %i.hs = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ht = fmul <2 x double> %i.gv, %i.hs
  %i.hu = fadd <2 x double> %i.ht, %i.hr
  %i.hv = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hw = fmul <2 x double> %i.gx, %i.hv
  %i.hx = fadd <2 x double> %i.hw, %i.hu
  %i.hy = fmul <2 x double> %i.gr, %i.hm
  %i.hz = fmul <2 x double> %i.gt, %i.hp
  %i.ia = fadd <2 x double> %i.hy, %i.hz
  %i.ib = fmul <2 x double> %i.gz, %i.hs
  %i.ic = fadd <2 x double> %i.ib, %i.ia
  %i.id = fmul <2 x double> %i.hb, %i.hv
  %i.ie = fadd <2 x double> %i.id, %i.ic          ; 2 uses
  %i.if = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ig = fdiv <2 x double> %i.hx, %i.if          ; 2 uses
  store <2 x double> %i.ig, ptr %10, align 16, !tbaa !20
  %i.ih = fdiv <2 x double> %i.ie, %i.if
  store <2 x double> %i.ih, ptr %i.bw, align 16, !tbaa !20
  %.idx.i.i.i.i = mul nuw nsw i64 %indvars.iv, 24
  %i.ii = getelementptr inbounds nuw i8, ptr %4, i64 %.idx.i.i.i.i ; 5 uses
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = lshr exact i64 %i.ij, 3
  %i.il = and i64 %i.ik, 1                        ; 5 uses
  %.not110 = icmp eq i64 %i.il, 0
  br i1 %.not110, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i
  %i.im = extractelement <2 x double> %i.ig, i64 0
  store double %i.im, ptr %i.ii, align 8, !tbaa !21
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.il
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.il
  %i.io = load <2 x double>, ptr %11, align 8, !tbaa !20
  store <2 x double> %i.io, ptr %i.in, align 16, !tbaa !20
  br label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.il
  %12 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.il
  %i.iq = load <2 x double>, ptr %12, align 8, !tbaa !20
  store <2 x double> %i.iq, ptr %i.ip, align 16, !tbaa !20
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.is = load double, ptr %i.bx, align 16, !tbaa !21
  store double %i.is, ptr %i.ir, align 8, !tbaa !21
  br label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i, !llvm.loop !152

.loopexit:                                        ; preds = %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit, %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !31
  tail call void @free(ptr noundef %i.f) #12
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !33
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #14 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !33
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !32
  store i64 %3, ptr %i.c, align 8, !tbaa !23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEENS_7ProductINS_12CwiseUnaryOpINS0_14scalar_cast_opIfdEEKNS2_IfLi4ELi4ELi0ELi4ELi4EEEEESA_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.709", align 16 ; 23 uses
  %4 = alloca %"struct.Eigen::internal::evaluator.626", align 8 ; 4 uses
  %5 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.714", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = load ptr, ptr %1, align 8, !tbaa !153, !nonnull !133, !align !156 ; 8 uses
  %i.b = load <2 x float>, ptr %i.a, align 16, !tbaa !12
  %i.c = fpext <2 x float> %i.b to <2 x double>
  store <2 x double> %i.c, ptr %3, align 16, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <2 x float>, ptr %i.e, align 8, !tbaa !12
  %i.g = fpext <2 x float> %i.f to <2 x double>
  store <2 x double> %i.g, ptr %i.d, align 16, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load <2 x float>, ptr %i.i, align 16, !tbaa !12
  %i.k = fpext <2 x float> %i.j to <2 x double>
  store <2 x double> %i.k, ptr %i.h, align 16, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.n = load <2 x float>, ptr %i.m, align 8, !tbaa !12
  %i.o = fpext <2 x float> %i.n to <2 x double>
  store <2 x double> %i.o, ptr %i.l, align 16, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load <2 x float>, ptr %i.q, align 16, !tbaa !12
  %i.s = fpext <2 x float> %i.r to <2 x double>
  store <2 x double> %i.s, ptr %i.p, align 16, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.v = load <2 x float>, ptr %i.u, align 8, !tbaa !12
  %i.w = fpext <2 x float> %i.v to <2 x double>
  store <2 x double> %i.w, ptr %i.t, align 16, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.z = load <2 x float>, ptr %i.y, align 16, !tbaa !12
  %i.aa = fpext <2 x float> %i.z to <2 x double>
  store <2 x double> %i.aa, ptr %i.x, align 16, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ad = load <2 x float>, ptr %i.ac, align 8, !tbaa !12
  %i.ae = fpext <2 x float> %i.ad to <2 x double>
  store <2 x double> %i.ae, ptr %i.ab, align 16, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !153, !nonnull !133, !align !156 ; 8 uses
  %i.ai = load <2 x float>, ptr %i.ah, align 16, !tbaa !12
  %i.aj = fpext <2 x float> %i.ai to <2 x double>
  store <2 x double> %i.aj, ptr %i.af, align 16, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.am = load <2 x float>, ptr %i.al, align 8, !tbaa !12
  %i.an = fpext <2 x float> %i.am to <2 x double>
  store <2 x double> %i.an, ptr %i.ak, align 16, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aq = load <2 x float>, ptr %i.ap, align 16, !tbaa !12
  %i.ar = fpext <2 x float> %i.aq to <2 x double>
  store <2 x double> %i.ar, ptr %i.ao, align 16, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.au = load <2 x float>, ptr %i.at, align 8, !tbaa !12
  %i.av = fpext <2 x float> %i.au to <2 x double>
  store <2 x double> %i.av, ptr %i.as, align 16, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ay = load <2 x float>, ptr %i.ax, align 16, !tbaa !12
  %i.az = fpext <2 x float> %i.ay to <2 x double>
  store <2 x double> %i.az, ptr %i.aw, align 16, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.bc = load <2 x float>, ptr %i.bb, align 8, !tbaa !12
  %i.bd = fpext <2 x float> %i.bc to <2 x double>
  store <2 x double> %i.bd, ptr %i.ba, align 16, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.bg = load <2 x float>, ptr %i.bf, align 16, !tbaa !12
  %i.bh = fpext <2 x float> %i.bg to <2 x double>
  store <2 x double> %i.bh, ptr %i.be, align 16, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.bk = load <2 x float>, ptr %i.bj, align 8, !tbaa !12
  %i.bl = fpext <2 x float> %i.bk to <2 x double>
  store <2 x double> %i.bl, ptr %i.bi, align 16, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 256
  store ptr %3, ptr %i.bm, align 16, !tbaa !116
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 264
  store ptr %i.af, ptr %i.bn, align 8, !tbaa !116
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 272
  store i64 4, ptr %i.bo, align 16, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %0, ptr %4, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %4, ptr %5, align 8, !tbaa !122
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.bp, align 8, !tbaa !163
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.bq, align 8, !tbaa !126
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %i.br, align 8, !tbaa !114
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEEENS3_INS_7ProductINS_12CwiseUnaryOpINS0_14scalar_cast_opIfdEEKNS4_IfLi4ELi4ELi0ELi4ELi4EEEEESD_Li1EEEEENS0_9assign_opIddEELi0EEELi2ELi1EE3runERSI_(ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEEENS3_INS_7ProductINS_12CwiseUnaryOpINS0_14scalar_cast_opIfdEEKNS4_IfLi4ELi4ELi0ELi4ELi4EEEEESD_Li1EEEEENS0_9assign_opIddEELi0EEELi2ELi1EE3runERSI_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !165, !nonnull !133, !align !134
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !135
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !167, !nonnull !133, !align !156 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %i.g = load ptr, ptr %i.e, align 16, !tbaa !135 ; 4 uses
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !20
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !135  ; 4 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !21
  %i.k = insertelement <2 x double> poison, double %i.j, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x double> %i.h, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.o = load <2 x double>, ptr %i.n, align 16, !tbaa !20
  %i.p = getelementptr i8, ptr %i.i, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !21
  %i.r = insertelement <2 x double> poison, double %i.q, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x double> %i.o, %i.s
  %i.u = fadd <2 x double> %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.w = load <2 x double>, ptr %i.v, align 16, !tbaa !20
  %i.x = getelementptr i8, ptr %i.i, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !21
  %i.z = insertelement <2 x double> poison, double %i.y, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x double> %i.w, %i.aa
  %i.ac = fadd <2 x double> %i.u, %i.ab
end_hunk_2
