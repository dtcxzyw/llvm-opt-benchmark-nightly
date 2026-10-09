Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/massmatrix_intrinsic?download=true
inline.NumInlined: 3675
inline.NumDeleted: 1521
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 229
loop-unroll.NumUnrolled: 232
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.Eigen::internal::evaluator.503" = type <{ %"struct.Eigen::internal::scalar_constant_op", [8 x i8] }>
%"struct.Eigen::internal::scalar_constant_op" = type { double }
%"struct.Eigen::internal::evaluator.471" = type { %"struct.Eigen::internal::block_evaluator.472" }
%"struct.Eigen::internal::block_evaluator.472" = type { %"struct.Eigen::internal::mapbase_evaluator.473" }
%"struct.Eigen::internal::mapbase_evaluator.473" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::internal::variable_if_dynamic" = type { i64 }
%"class.Eigen::internal::generic_dense_assignment_kernel.507" = type { ptr, ptr, ptr, ptr }
%"struct.Eigen::internal::div_assign_op" = type { i8 }
%"struct.Eigen::internal::evaluator.254" = type { %"struct.Eigen::internal::block_evaluator" }
%"struct.Eigen::internal::block_evaluator" = type { %"struct.Eigen::internal::mapbase_evaluator" }
%"struct.Eigen::internal::mapbase_evaluator" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"struct.Eigen::internal::evaluator.257" = type { %"struct.Eigen::internal::block_evaluator.258" }
%"struct.Eigen::internal::block_evaluator.258" = type { %"struct.Eigen::internal::mapbase_evaluator.259" }
%"struct.Eigen::internal::mapbase_evaluator.259" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::internal::generic_dense_assignment_kernel" = type { ptr, ptr, ptr, ptr }
%"struct.Eigen::internal::assign_op" = type { i8 }
%"class.Eigen::Block.52" = type { %"class.Eigen::BlockImpl.53" }
%"class.Eigen::BlockImpl.53" = type { %"class.Eigen::internal::BlockImpl_dense.54" }
%"class.Eigen::internal::BlockImpl_dense.54" = type { %"class.Eigen::MapBase.55", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.55" = type { %"class.Eigen::MapBase.56" }
%"class.Eigen::MapBase.56" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"struct.Eigen::internal::evaluator.328" = type { %"struct.Eigen::internal::block_evaluator.329" }
%"struct.Eigen::internal::block_evaluator.329" = type { %"struct.Eigen::internal::mapbase_evaluator.330" }
%"struct.Eigen::internal::mapbase_evaluator.330" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::internal::generic_dense_assignment_kernel.476" = type { ptr, ptr, ptr, ptr }
%"struct.Eigen::internal::assign_op.281" = type { i8 }
%"class.Eigen::Matrix.29" = type { %"class.Eigen::PlainObjectBase.30" }
%"class.Eigen::PlainObjectBase.30" = type { %"class.Eigen::DenseStorage.37" }
%"class.Eigen::DenseStorage.37" = type { ptr, i64 }
%"class.Eigen::Matrix.38" = type { %"class.Eigen::PlainObjectBase.39" }
%"class.Eigen::PlainObjectBase.39" = type { %"class.Eigen::DenseStorage.46" }
%"class.Eigen::DenseStorage.46" = type { ptr, i64 }
%"class.Eigen::Matrix.68" = type { %"class.Eigen::PlainObjectBase.69" }
%"class.Eigen::PlainObjectBase.69" = type { %"class.Eigen::DenseStorage.70" }
%"class.Eigen::DenseStorage.70" = type { ptr, i64 }
%"class.Eigen::CwiseBinaryOp.143" = type <{ %"class.Eigen::ArrayWrapper.149", %"class.Eigen::ArrayWrapper.156", [8 x i8] }>
%"class.Eigen::ArrayWrapper.149" = type { ptr }
%"class.Eigen::ArrayWrapper.156" = type { ptr }
%"class.Eigen::Array" = type { %"class.Eigen::PlainObjectBase.163" }
%"class.Eigen::PlainObjectBase.163" = type { %"class.Eigen::DenseStorage.70" }
%"class.Eigen::CwiseBinaryOp.170" = type <{ %"class.Eigen::ArrayWrapper.149", %"class.Eigen::Replicate", [8 x i8] }>
%"class.Eigen::Replicate" = type { %"class.Eigen::PartialReduxExpr", [8 x i8] }
%"class.Eigen::PartialReduxExpr" = type <{ %"class.Eigen::ArrayWrapper.149", [8 x i8] }>
%"class.Eigen::Block.242" = type { %"class.Eigen::BlockImpl.243" }
%"class.Eigen::BlockImpl.243" = type { %"class.Eigen::internal::BlockImpl_dense.244" }
%"class.Eigen::internal::BlockImpl_dense.244" = type { %"class.Eigen::MapBase.245", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.245" = type { %"class.Eigen::MapBase.246" }
%"class.Eigen::MapBase.246" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"struct.Eigen::internal::evaluator.526" = type { %"struct.Eigen::internal::block_evaluator.527" }
%"struct.Eigen::internal::block_evaluator.527" = type { %"struct.Eigen::internal::mapbase_evaluator.528" }
%"struct.Eigen::internal::mapbase_evaluator.528" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::internal::generic_dense_assignment_kernel.531" = type { ptr, ptr, ptr, ptr }
%"struct.Eigen::internal::evaluator.580" = type { %"struct.Eigen::internal::block_evaluator.581" }
%"struct.Eigen::internal::block_evaluator.581" = type { %"struct.Eigen::internal::mapbase_evaluator.582" }
%"struct.Eigen::internal::mapbase_evaluator.582" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::internal::generic_dense_assignment_kernel.585" = type { ptr, ptr, ptr, ptr }
%"struct.Eigen::internal::evaluator.358" = type { %"struct.Eigen::internal::binary_evaluator.359" }
%"struct.Eigen::internal::binary_evaluator.359" = type { %"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_quotient_op<double>, const Eigen::ArrayWrapper<Eigen::Matrix<double, -1, 3>>, const Eigen::Replicate<Eigen::PartialReduxExpr<Eigen::ArrayWrapper<Eigen::Matrix<double, -1, 3>>, Eigen::internal::member_sum<double, double>, 1>, 1, 3>>>::Data" }
%"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_quotient_op<double>, const Eigen::ArrayWrapper<Eigen::Matrix<double, -1, 3>>, const Eigen::Replicate<Eigen::PartialReduxExpr<Eigen::ArrayWrapper<Eigen::Matrix<double, -1, 3>>, Eigen::internal::member_sum<double, double>, 1>, 1, 3>>>::Data" = type { [8 x i8], %"struct.Eigen::internal::evaluator.338", %"struct.Eigen::internal::evaluator.362" }
%"struct.Eigen::internal::evaluator.338" = type { %"struct.Eigen::internal::evaluator.339" }
%"struct.Eigen::internal::evaluator.339" = type { %"struct.Eigen::internal::unary_evaluator.340" }
%"struct.Eigen::internal::unary_evaluator.340" = type { %"struct.Eigen::internal::evaluator_wrapper_base.341" }
%"struct.Eigen::internal::evaluator_wrapper_base.341" = type { %"struct.Eigen::internal::evaluator.344" }
%"struct.Eigen::internal::evaluator.344" = type { %"struct.Eigen::internal::evaluator.345" }
%"struct.Eigen::internal::evaluator.345" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data.348" }
%"class.Eigen::internal::plainobjectbase_evaluator_data.348" = type { ptr, i64 }
%"struct.Eigen::internal::evaluator.362" = type { %"struct.Eigen::internal::evaluator.base.379", [7 x i8] }
%"struct.Eigen::internal::evaluator.base.379" = type { %"struct.Eigen::internal::unary_evaluator.base" }
%"struct.Eigen::internal::unary_evaluator.base" = type <{ %"class.Eigen::Array.367", %"struct.Eigen::internal::evaluator.375", %"class.Eigen::internal::variable_if_dynamic", i8 }>
%"class.Eigen::Array.367" = type { %"class.Eigen::PlainObjectBase.368" }
%"class.Eigen::PlainObjectBase.368" = type { %"class.Eigen::DenseStorage.37" }
%"struct.Eigen::internal::evaluator.375" = type { %"struct.Eigen::internal::evaluator.376" }
%"struct.Eigen::internal::evaluator.376" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data.278" }
%"class.Eigen::internal::plainobjectbase_evaluator_data.278" = type { ptr }

$_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi4ELi0ELin1ELi4EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE = comdat any

$_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi4ELi0ELin1ELi4EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeEiRNS1_12SparseMatrixIT1_Li0EiEE = comdat any

$_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE = comdat any

$_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeEiRNS1_12SparseMatrixIT1_Li0EiEE = comdat any

$_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE = comdat any

$_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeEiRNS1_12SparseMatrixIT1_Li0EiEE = comdat any

$_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE = comdat any

$_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeEiRNS1_12SparseMatrixIT1_Li0EiEE = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_ = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEC2INS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_12ArrayWrapperIS2_EEKNS9_IKS2_EEEEEERKNS_9DenseBaseIT_EE = comdat any

$_ZN5Eigen8internal26call_dense_assignment_loopINS_5ArrayIdLin1ELi3ELi0ELin1ELi3EEENS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEEKNS_9ReplicateINS_16PartialReduxExprISA_NS0_10member_sumIddEELi1EEELi1ELi3EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_ = comdat any

$_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

$_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_INS5_IdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSE_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS5_IdLin1ELin1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEELi4ELi0EE3runERSH_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_ = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi4ELi0ELin1ELi4EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !20     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !21   ; 4 uses
  %i.d = shl nsw i64 %i.c, 2                      ; 2 uses
  %i.e = sdiv i64 %i.c, 2
  %i.f = shl nsw i64 %i.e, 3                      ; 3 uses
  %.off.i.i.i.i = or disjoint i64 %i.d, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load <4 x i32>, ptr %i.a, align 16, !tbaa !22 ; 3 uses
  %i.h = icmp sgt i64 %i.c, 1
  br i1 %i.h, label %bb.c, label %.loopexit76.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load <4 x i32>, ptr %i.i, align 16, !tbaa !22 ; 2 uses
  %i.k = icmp samesign ugt i64 %i.c, 3
  br i1 %i.k, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.j, %bb.c ], [ %i.u, %.lr.ph.i.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.g, %bb.c ], [ %i.q, %.lr.ph.i.i.i.i ]
  %i.l = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.0.lcssa.i.i.i.i, <4 x i32> %.lcssa.i.i.i.i) ; 2 uses
  %i.m = icmp sgt i64 %i.d, %i.f
  br i1 %i.m, label %bb.d, label %.loopexit76.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05779.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ 8, %bb.c ] ; 3 uses
  %.057.in78.i.i.i.i = phi i64 [ %.05779.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %.sroa.064.077.i.i.i.i = phi <4 x i32> [ %i.q, %.lr.ph.i.i.i.i ], [ %i.g, %bb.c ]
  %i.n = phi <4 x i32> [ %i.u, %.lr.ph.i.i.i.i ], [ %i.j, %bb.c ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.05779.i.i.i.i
  %i.p = load <4 x i32>, ptr %i.o, align 16, !tbaa !22
  %i.q = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.p) ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.057.in78.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load <4 x i32>, ptr %i.s, align 16, !tbaa !22
  %i.u = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.n, <4 x i32> %i.t) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.v = icmp slt i64 %.057.i.i.i.i, %i.f
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !111

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.f
  %i.x = load <4 x i32>, ptr %i.w, align 16, !tbaa !22
  %i.y = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.l, <4 x i32> %i.x)
  br label %.loopexit76.i.i.i.i

.loopexit76.i.i.i.i:                              ; preds = %bb.d, %._crit_edge.i.i.i.i, %bb.b
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.g, %bb.b ], [ %i.y, %bb.d ], [ %i.l, %._crit_edge.i.i.i.i ]
  %i.z = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i)
  br label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi4ELi0ELin1ELi4EEEE8maxCoeffEv.exit

bb.e:                                             ; preds = %bb.a
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !24
  br label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi4ELi0ELin1ELi4EEEE8maxCoeffEv.exit

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi4ELi0ELin1ELi4EEEE8maxCoeffEv.exit: ; preds = %.loopexit76.i.i.i.i, %bb.e
  %.3.i.i.i.i = phi i32 [ %i.z, %.loopexit76.i.i.i.i ], [ %i.aa, %bb.e ]
  %i.ab = add nsw i32 %.3.i.i.i.i, 1
  tail call void @_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi4ELi0ELin1ELi4EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeEiRNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, i32 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(72) %3)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi4ELi0ELin1ELi4EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeEiRNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(72) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Eigen::internal::evaluator.503", align 8 ; 4 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.471", align 8 ; 5 uses
  %7 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.507", align 8 ; 7 uses
  %8 = alloca %"struct.Eigen::internal::div_assign_op", align 1 ; 3 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.503", align 8 ; 4 uses
  %10 = alloca %"struct.Eigen::internal::evaluator.471", align 8 ; 5 uses
  %11 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.507", align 8 ; 7 uses
  %12 = alloca %"struct.Eigen::internal::div_assign_op", align 1 ; 3 uses
  %13 = alloca %"struct.Eigen::internal::evaluator.254", align 8 ; 5 uses
  %14 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %15 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %16 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %17 = alloca %"class.Eigen::Block.52", align 8  ; 9 uses
  %18 = alloca %"struct.Eigen::internal::evaluator.254", align 8 ; 5 uses
  %19 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %20 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %21 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %22 = alloca %"class.Eigen::Block.52", align 8  ; 9 uses
  %23 = alloca %"struct.Eigen::internal::evaluator.328", align 8 ; 5 uses
  %24 = alloca %"struct.Eigen::internal::evaluator.471", align 8 ; 5 uses
  %25 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.476", align 8 ; 7 uses
  %26 = alloca %"struct.Eigen::internal::assign_op.281", align 1 ; 3 uses
  %27 = alloca %"struct.Eigen::internal::evaluator.328", align 8 ; 5 uses
  %28 = alloca %"struct.Eigen::internal::evaluator.471", align 8 ; 5 uses
  %29 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.476", align 8 ; 7 uses
  %30 = alloca %"struct.Eigen::internal::assign_op.281", align 1 ; 3 uses
  %31 = alloca %"struct.Eigen::internal::evaluator.328", align 8 ; 5 uses
  %32 = alloca %"struct.Eigen::internal::evaluator.471", align 8 ; 5 uses
  %33 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.476", align 8 ; 7 uses
  %34 = alloca %"struct.Eigen::internal::assign_op.281", align 1 ; 3 uses
  %35 = alloca %"struct.Eigen::internal::assign_op.281", align 1 ; 3 uses
  %36 = alloca %"struct.Eigen::internal::evaluator.254", align 8 ; 5 uses
  %37 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %38 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %39 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %40 = alloca %"struct.Eigen::internal::evaluator.254", align 8 ; 5 uses
  %41 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %42 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %43 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %44 = alloca %"struct.Eigen::internal::evaluator.254", align 8 ; 5 uses
  %45 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %46 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %47 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %48 = alloca %"struct.Eigen::internal::evaluator.254", align 8 ; 5 uses
  %49 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %50 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %51 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %52 = alloca %"struct.Eigen::internal::evaluator.254", align 8 ; 5 uses
  %53 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %54 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %55 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %56 = alloca %"struct.Eigen::internal::evaluator.254", align 8 ; 5 uses
  %57 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %58 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %59 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %60 = alloca %"class.Eigen::Matrix.29", align 8 ; 11 uses
  %61 = alloca %"class.Eigen::Matrix.38", align 8 ; 37 uses
  %62 = alloca %"class.Eigen::Matrix.38", align 8 ; 27 uses
  %63 = alloca %"class.Eigen::Matrix.29", align 8 ; 26 uses
  %64 = alloca %"class.Eigen::Block.52", align 8  ; 10 uses
  %65 = alloca %"class.Eigen::Block.52", align 8  ; 11 uses
  %66 = alloca %"class.Eigen::Block.52", align 8  ; 11 uses
  %67 = alloca %"class.Eigen::Block.52", align 8  ; 10 uses
  %68 = alloca %"class.Eigen::Block.52", align 8  ; 11 uses
  %69 = alloca %"class.Eigen::Block.52", align 8  ; 11 uses
  %70 = alloca %"class.Eigen::Matrix.68", align 8 ; 11 uses
  %71 = alloca %"class.Eigen::Matrix.68", align 8 ; 11 uses
  %72 = alloca %"class.Eigen::CwiseBinaryOp.143", align 8 ; 6 uses
  %73 = alloca %"class.Eigen::Array", align 8     ; 9 uses
  %74 = alloca %"class.Eigen::CwiseBinaryOp.170", align 8 ; 6 uses
  %75 = alloca %"class.Eigen::Matrix.68", align 8 ; 14 uses
  %76 = alloca %"class.Eigen::Block.242", align 8 ; 10 uses
  %77 = alloca %"class.Eigen::Block.242", align 8 ; 11 uses
  %78 = alloca %"class.Eigen::Block.242", align 8 ; 11 uses
  %79 = alloca %"class.Eigen::Block.242", align 8 ; 10 uses
  %80 = alloca %"class.Eigen::Block.242", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 25 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 8 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(16) %60)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %61, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %62, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, i8 0, i64 16, i1 false)
  switch i32 %2, label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit [
    i32 0, label %bb.d
    i32 1, label %bb.q
    i32 2, label %bb.dj
    i32 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.d:                                             ; preds = %bb.b, %bb.b
  %sext2796 = mul i64 %i.b, 12884901888
  %i.e = ashr exact i64 %sext2796, 32             ; 3 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %61, i64 noundef %i.e, i64 noundef 1)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %62, i64 noundef %i.e, i64 noundef 1)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %63, i64 noundef %i.e, i64 noundef 1)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.f = load ptr, ptr %1, align 8, !tbaa !20, !noalias !402
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %sext2797 = shl i64 %i.b, 32
  %i.g = ashr exact i64 %sext2797, 32             ; 5 uses
  %i.h = load ptr, ptr %61, align 8, !tbaa !26, !noalias !403 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27, !noalias !403 ; 2 uses
  store ptr %i.h, ptr %64, align 8, !tbaa !30, !alias.scope !403
  %i.k = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i64 %i.g, ptr %i.k, align 8, !tbaa !31, !alias.scope !403
  %i.l = getelementptr inbounds nuw i8, ptr %64, i64 16
  store i64 1, ptr %i.l, align 8, !tbaa !31, !alias.scope !403
  %i.m = getelementptr inbounds nuw i8, ptr %64, i64 24
  store ptr %61, ptr %i.m, align 8, !tbaa !33, !alias.scope !403
  %i.n = getelementptr inbounds nuw i8, ptr %64, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %64, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store i64 %i.j, ptr %i.o, align 8, !tbaa !36, !alias.scope !403
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #14
  store ptr %i.f, ptr %56, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.q = load i64, ptr %i.a, align 8, !tbaa !21
  store i64 %i.q, ptr %i.p, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #14
  store ptr %i.h, ptr %57, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %57, i64 16
  store i64 %i.j, ptr %i.r, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #14
  store ptr %57, ptr %58, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %58, i64 8
  store ptr %56, ptr %i.s, align 8, !tbaa !404
  %i.t = getelementptr inbounds nuw i8, ptr %58, i64 16
  store ptr %59, ptr %i.t, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %58, i64 24
  store ptr %64, ptr %i.u, align 8, !tbaa !48
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %58)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #14
  %i.v = load ptr, ptr %1, align 8, !tbaa !20, !noalias !405
  %i.w = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !405 ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.y = load ptr, ptr %61, align 8, !tbaa !26, !noalias !406
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.g ; 2 uses
  %i.aa = load i64, ptr %i.i, align 8, !tbaa !27, !noalias !406 ; 2 uses
  store ptr %i.z, ptr %65, align 8, !tbaa !30, !alias.scope !406
  %i.ab = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i64 %i.g, ptr %i.ab, align 8, !tbaa !31, !alias.scope !406
  %i.ac = getelementptr inbounds nuw i8, ptr %65, i64 16
  store i64 1, ptr %i.ac, align 8, !tbaa !31, !alias.scope !406
  %i.ad = getelementptr inbounds nuw i8, ptr %65, i64 24
  store ptr %61, ptr %i.ad, align 8, !tbaa !33, !alias.scope !406
  %i.ae = getelementptr inbounds nuw i8, ptr %65, i64 32
  store i64 %i.g, ptr %i.ae, align 8, !tbaa !31, !alias.scope !406
  %i.af = getelementptr inbounds nuw i8, ptr %65, i64 40
  store i64 0, ptr %i.af, align 8, !tbaa !31, !alias.scope !406
  %i.ag = getelementptr inbounds nuw i8, ptr %65, i64 48
  store i64 %i.aa, ptr %i.ag, align 8, !tbaa !36, !alias.scope !406
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #14
  store ptr %i.x, ptr %52, align 8, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %52, i64 16
end_hunk_0
