inline.NumInlined: 1708
inline.NumDeleted: 1040
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.Eigen::internal::assign_op" = type { i8 }
%"class.Eigen::CwiseBinaryOp.65" = type <{ ptr, %"class.Eigen::Replicate", [8 x i8] }>
%"class.Eigen::Replicate" = type { %"class.Eigen::CwiseUnaryOp", [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::CwiseUnaryOp" = type { [8 x i8], %"class.Eigen::PartialReduxExpr", [8 x i8] }
%"class.Eigen::PartialReduxExpr" = type { [8 x i8], %"class.Eigen::CwiseUnaryOp.83", [8 x i8] }
%"class.Eigen::CwiseUnaryOp.83" = type <{ ptr, [8 x i8] }>
%"class.Eigen::internal::variable_if_dynamic" = type { i64 }
%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { ptr, i64, i64 }
%"class.Eigen::Matrix.16" = type { %"class.Eigen::PlainObjectBase.17" }
%"class.Eigen::PlainObjectBase.17" = type { %"class.Eigen::DenseStorage.24" }
%"class.Eigen::DenseStorage.24" = type { ptr, i64 }
%"class.Eigen::CwiseBinaryOp" = type <{ %"class.Eigen::Block.29", %"class.Eigen::Block.29", [8 x i8] }>
%"class.Eigen::Block.29" = type { %"class.Eigen::BlockImpl.30" }
%"class.Eigen::BlockImpl.30" = type { %"class.Eigen::internal::BlockImpl_dense.31" }
%"class.Eigen::internal::BlockImpl_dense.31" = type { %"class.Eigen::MapBase.32", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.32" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::Matrix.38" = type { %"class.Eigen::PlainObjectBase.39" }
%"class.Eigen::PlainObjectBase.39" = type { %"class.Eigen::DenseStorage.46" }
%"class.Eigen::DenseStorage.46" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [3 x double] }
%"struct.Eigen::internal::evaluator.92" = type { %"struct.Eigen::internal::binary_evaluator" }
%"struct.Eigen::internal::binary_evaluator" = type { %"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_quotient_op<double>, const Eigen::Matrix<double, -1, -1>, const Eigen::Replicate<Eigen::CwiseUnaryOp<Eigen::internal::scalar_sqrt_op<double>, const Eigen::PartialReduxExpr<const Eigen::CwiseUnaryOp<Eigen::internal::scalar_abs2_op<double>, const Eigen::Matrix<double, -1, -1>>, Eigen::internal::member_sum<double, double>, 1>>, 1, -1>>>::Data" }
%"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_quotient_op<double>, const Eigen::Matrix<double, -1, -1>, const Eigen::Replicate<Eigen::CwiseUnaryOp<Eigen::internal::scalar_sqrt_op<double>, const Eigen::PartialReduxExpr<const Eigen::CwiseUnaryOp<Eigen::internal::scalar_abs2_op<double>, const Eigen::Matrix<double, -1, -1>>, Eigen::internal::member_sum<double, double>, 1>>, 1, -1>>>::Data" = type { [8 x i8], %"struct.Eigen::internal::evaluator.95", %"struct.Eigen::internal::evaluator.101" }
%"struct.Eigen::internal::evaluator.95" = type { %"struct.Eigen::internal::evaluator.96" }
%"struct.Eigen::internal::evaluator.96" = type { %"struct.Eigen::internal::evaluator.97" }
%"struct.Eigen::internal::evaluator.97" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data.100" }
%"class.Eigen::internal::plainobjectbase_evaluator_data.100" = type { ptr, i64 }
%"struct.Eigen::internal::evaluator.101" = type { %"struct.Eigen::internal::evaluator.base.119", [7 x i8] }
%"struct.Eigen::internal::evaluator.base.119" = type { %"struct.Eigen::internal::unary_evaluator.base" }
%"struct.Eigen::internal::unary_evaluator.base" = type <{ %"class.Eigen::Matrix.105", %"struct.Eigen::internal::evaluator.114", %"class.Eigen::internal::variable_if_dynamic", i8 }>
%"class.Eigen::Matrix.105" = type { %"class.Eigen::PlainObjectBase.106" }
%"class.Eigen::PlainObjectBase.106" = type { %"class.Eigen::DenseStorage.113" }
%"class.Eigen::DenseStorage.113" = type { ptr, i64 }
%"struct.Eigen::internal::evaluator.114" = type { %"struct.Eigen::internal::evaluator.115" }
%"struct.Eigen::internal::evaluator.115" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data.118" }
%"class.Eigen::internal::plainobjectbase_evaluator_data.118" = type { ptr }

$_ZN3igl12edge_vectorsILb1EN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_S4_S3_S3_EEvRKNS1_10MatrixBaseIT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERNS1_15PlainObjectBaseIT4_EERNSM_IT5_EE = comdat any

$_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE10normalizedEv = comdat any

$_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS3_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_ = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl12edge_vectorsILb1EN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_S4_S3_S3_EEvRKNS1_10MatrixBaseIT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERNS1_15PlainObjectBaseIT4_EERNSM_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %7 = alloca %"class.Eigen::CwiseBinaryOp.65", align 8 ; 6 uses
  %8 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %9 = alloca %"class.Eigen::Matrix", align 8     ; 13 uses
  %10 = alloca %"class.Eigen::Matrix.16", align 8 ; 5 uses
  %11 = alloca %"class.Eigen::CwiseBinaryOp", align 8 ; 16 uses
  %12 = alloca %"class.Eigen::Matrix.38", align 16 ; 10 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !9      ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !15
  %i.f = mul nsw i64 %i.e, %i.c                   ; 12 uses
  %i.g = sdiv i64 %i.f, 8
  %i.h = shl nsw i64 %i.g, 3                      ; 3 uses
  %i.i = sdiv i64 %i.f, 4                         ; 2 uses
  %i.j = shl nsw i64 %i.i, 2                      ; 5 uses
  %.off.i.i.i.i = add i64 %i.f, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load <4 x i32>, ptr %i.a, align 16, !tbaa !16 ; 3 uses
  %i.l = icmp sgt i64 %i.f, 7
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load <4 x i32>, ptr %i.m, align 16, !tbaa !16 ; 2 uses
  %i.o = icmp samesign ugt i64 %i.f, 15
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.n, %bb.c ], [ %i.y, %.lr.ph.i.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.k, %bb.c ], [ %i.u, %.lr.ph.i.i.i.i ]
  %i.p = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.0.lcssa.i.i.i.i, <4 x i32> %.lcssa.i.i.i.i) ; 2 uses
  %i.q = icmp sgt i64 %i.j, %i.h
  br i1 %i.q, label %bb.d, label %bb.e

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05779.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ 8, %bb.c ] ; 3 uses
  %.057.in78.i.i.i.i = phi i64 [ %.05779.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %.sroa.064.077.i.i.i.i = phi <4 x i32> [ %i.u, %.lr.ph.i.i.i.i ], [ %i.k, %bb.c ]
  %i.r = phi <4 x i32> [ %i.y, %.lr.ph.i.i.i.i ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.05779.i.i.i.i
  %i.t = load <4 x i32>, ptr %i.s, align 16, !tbaa !16
  %i.u = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.t) ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.057.in78.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load <4 x i32>, ptr %i.w, align 16, !tbaa !16
  %i.y = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.r, <4 x i32> %i.x) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.z = icmp slt i64 %.057.i.i.i.i, %i.h
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !17

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h
  %i.ab = load <4 x i32>, ptr %i.aa, align 16, !tbaa !16
  %i.ac = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.p, <4 x i32> %i.ab)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i, %bb.b
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.k, %bb.b ], [ %i.ac, %bb.d ], [ %i.p, %._crit_edge.i.i.i.i ]
  %i.ad = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  %i.ae = icmp slt i64 %i.j, %i.f
  br i1 %i.ae, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.e
  %i.af = shl nsw i64 %i.i, 2
  %i.ag = sub i64 %i.f, %i.af                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader232, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec = and i64 %i.ag, -8                      ; 3 uses
  %i.ah = add i64 %i.j, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ai = getelementptr [4 x i8], ptr %i.a, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi180 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.am, %vector.body ]
  %i.aj = getelementptr [4 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <4 x i32>, ptr %i.aj, align 4, !tbaa !19
  %wide.load181 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !19
  %i.al = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.am = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi180, <4 x i32> %wide.load181) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.al, <4 x i32> %i.am)
  %i.ao = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader232

.lr.ph84.i.i.i.i.preheader232:                    ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.j, %.lr.ph84.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.ad, %.lr.ph84.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader232, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.as, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader232 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.ar, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader232 ]
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.05582.i.i.i.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !19
  %i.ar = tail call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.aq) ; 2 uses
  %i.as = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.as, %i.f
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !23

bb.f:                                             ; preds = %bb.a
  %i.at = load i32, ptr %i.a, align 4, !tbaa !19  ; 3 uses
  %i.au = icmp sgt i64 %i.f, 1
  br i1 %i.au, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.av = add nsw i64 %i.f, -1                    ; 2 uses
  %min.iters.check183 = icmp ult i64 %i.f, 9
  br i1 %min.iters.check183, label %.lr.ph89.i.i.i.i.preheader229, label %vector.ph184

vector.ph184:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec185 = and i64 %i.av, -8                   ; 3 uses
  %i.aw = or disjoint i64 %n.vec185, 1
  %broadcast.splatinsert186 = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat187 = shufflevector <4 x i32> %broadcast.splatinsert186, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph184
  %index189 = phi i64 [ 0, %vector.ph184 ], [ %index.next194, %vector.body188 ] ; 2 uses
  %vec.phi190 = phi <4 x i32> [ %broadcast.splat187, %vector.ph184 ], [ %i.ba, %vector.body188 ]
  %vec.phi191 = phi <4 x i32> [ %broadcast.splat187, %vector.ph184 ], [ %i.bb, %vector.body188 ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index189 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %wide.load192 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !19
  %wide.load193 = load <4 x i32>, ptr %i.az, align 4, !tbaa !19
  %i.ba = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi190, <4 x i32> %wide.load192) ; 2 uses
  %i.bb = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi191, <4 x i32> %wide.load193) ; 2 uses
  %index.next194 = add nuw i64 %index189, 8       ; 2 uses
  %i.bc = icmp eq i64 %index.next194, %n.vec185
  br i1 %i.bc, label %middle.block195, label %vector.body188, !llvm.loop !24

middle.block195:                                  ; preds = %vector.body188
  %rdx.minmax196 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ba, <4 x i32> %i.bb)
  %i.bd = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax196) ; 2 uses
  %cmp.n197 = icmp eq i64 %i.av, %n.vec185
  br i1 %cmp.n197, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader229

.lr.ph89.i.i.i.i.preheader229:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block195
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.aw, %middle.block195 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.at, %.lr.ph89.i.i.i.i.preheader ], [ %i.bd, %middle.block195 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader229, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.bh, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader229 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.bg, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader229 ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.087.i.i.i.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !19
  %i.bg = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.bf) ; 2 uses
  %i.bh = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.bh, %i.f
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !25

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %middle.block195, %bb.e, %bb.f
  %.3.i.i.i.i = phi i32 [ %i.bg, %.lr.ph89.i.i.i.i ], [ %i.at, %bb.f ], [ %i.ad, %bb.e ], [ %i.bd, %middle.block195 ], [ %i.ao, %middle.block ], [ %i.ar, %.lr.ph84.i.i.i.i ] ; 2 uses
  %i.bi = add nsw i32 %.3.i.i.i.i, 1              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.bj = sext i32 %i.bi to i64                   ; 14 uses
  %i.bk = mul nsw i64 %i.bj, 3                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i, label %.thread, label %bb.g

.thread:                                          ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !26
  store i64 3, ptr %i.bm, align 8, !tbaa !29
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit

bb.g:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  %i.bn = icmp sgt i32 %.3.i.i.i.i, -1
  br i1 %i.bn, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, label %.thread170

.thread170:                                       ; preds = %bb.g
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !26
  store i64 3, ptr %i.bm, align 8, !tbaa !29
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.g
  %i.bo = mul nuw nsw i64 %i.bj, 24
  %i.bp = tail call noalias ptr @malloc(i64 noundef %i.bo) #15 ; 4 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.h, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.br = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.br, align 8, !tbaa !30
  invoke void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
          to label %.noexc77 unwind label %bb.i

.noexc77:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.bp, ptr %9, align 8, !tbaa !32
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !26
  store i64 3, ptr %i.bm, align 8, !tbaa !29
  %.idx.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.bj, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bp, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !33
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit: ; preds = %.thread170, %.thread, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i
  %i.bt = phi ptr [ null, %.thread ], [ %i.bp, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i ], [ null, %.thread170 ] ; 3 uses
  invoke void @_ZN3igl16per_face_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %.preheader145 unwind label %bb.j

.preheader145:                                    ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit
  %i.bu = load i64, ptr %i.b, align 8, !tbaa !14  ; 4 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.preheader144.preheader, label %._crit_edge.split

.preheader144.preheader:                          ; preds = %.preheader145
  %i.bw = load ptr, ptr %8, align 8, !tbaa !32, !noalias !35
  %i.bx = load ptr, ptr %2, align 8, !tbaa !9
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !26 ; 6 uses
  %.idx = shl i64 %i.bu, 3
  %.idx248 = shl nsw i64 %i.bj, 4
  %.idx249 = shl nsw i64 %i.bz, 4
  %.idx250 = shl nsw i64 %i.bj, 4
  %.idx251 = shl nsw i64 %i.bz, 4
  %.idx252 = shl nsw i64 %i.bj, 4
  %.idx253 = shl nsw i64 %i.bz, 4
  br label %.preheader144

.preheader144:                                    ; preds = %.preheader144.preheader, %.preheader144
  %.045151 = phi i64 [ %i.ea, %.preheader144 ], [ 0, %.preheader144.preheader ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.045151 ; 9 uses
  %i.cb = getelementptr [4 x i8], ptr %i.bx, i64 %.045151 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !19
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.cd ; 4 uses
  %i.cf = load double, ptr %i.ca, align 8, !tbaa !33
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !33
  %i.ch = fadd double %i.cf, %i.cg
  store double %i.ch, ptr %i.ce, align 8, !tbaa !33
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.bj ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.bz
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !33
  %i.cl = load double, ptr %i.ci, align 8, !tbaa !33
  %i.cm = fadd double %i.ck, %i.cl
  store double %i.cm, ptr %i.ci, align 8, !tbaa !33
  %i.cn = getelementptr inbounds i8, ptr %i.ce, i64 %.idx248 ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.ca, i64 %.idx249
  %i.cp = load double, ptr %i.co, align 8, !tbaa !33
  %i.cq = load double, ptr %i.cn, align 8, !tbaa !33
  %i.cr = fadd double %i.cp, %i.cq
  store double %i.cr, ptr %i.cn, align 8, !tbaa !33
  %i.cs = getelementptr [4 x i8], ptr %i.cb, i64 %i.bu
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !19
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.cu ; 4 uses
  %i.cw = load double, ptr %i.ca, align 8, !tbaa !33
  %i.cx = load double, ptr %i.cv, align 8, !tbaa !33
  %i.cy = fadd double %i.cw, %i.cx
  store double %i.cy, ptr %i.cv, align 8, !tbaa !33
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.bj ; 2 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.bz
  %i.db = load double, ptr %i.da, align 8, !tbaa !33
  %i.dc = load double, ptr %i.cz, align 8, !tbaa !33
  %i.dd = fadd double %i.db, %i.dc
  store double %i.dd, ptr %i.cz, align 8, !tbaa !33
  %i.de = getelementptr inbounds i8, ptr %i.cv, i64 %.idx250 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.ca, i64 %.idx251
  %i.dg = load double, ptr %i.df, align 8, !tbaa !33
  %i.dh = load double, ptr %i.de, align 8, !tbaa !33
  %i.di = fadd double %i.dg, %i.dh
  store double %i.di, ptr %i.de, align 8, !tbaa !33
  %i.dj = getelementptr i8, ptr %i.cb, i64 %.idx
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !19
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.dl ; 4 uses
  %i.dn = load double, ptr %i.ca, align 8, !tbaa !33
  %i.do = load double, ptr %i.dm, align 8, !tbaa !33
  %i.dp = fadd double %i.dn, %i.do
  store double %i.dp, ptr %i.dm, align 8, !tbaa !33
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.bj ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.bz
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !33
  %i.dt = load double, ptr %i.dq, align 8, !tbaa !33
  %i.du = fadd double %i.ds, %i.dt
  store double %i.du, ptr %i.dq, align 8, !tbaa !33
  %i.dv = getelementptr inbounds i8, ptr %i.dm, i64 %.idx252 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %i.ca, i64 %.idx253
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !33
  %i.dy = load double, ptr %i.dv, align 8, !tbaa !33
  %i.dz = fadd double %i.dx, %i.dy
  store double %i.dz, ptr %i.dv, align 8, !tbaa !33
  %i.ea = add nuw nsw i64 %.045151, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ea, %i.bu
  br i1 %exitcond.not, label %._crit_edge.split, label %.preheader144, !llvm.loop !38

bb.j:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i71, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

._crit_edge.split:                                ; preds = %.preheader144, %.preheader145
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr %9, ptr %7, align 8, !tbaa !39, !alias.scope !41
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %9, ptr %i.ec, align 8, !tbaa !39, !alias.scope !41
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 3, ptr %i.ed, align 8, !alias.scope !41
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS3_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(73) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i unwind label %bb.k

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %._crit_edge.split
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bk, i64 noundef %i.bj, i64 noundef 3)
          to label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i71 unwind label %bb.j

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i71: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.bk, i64 noundef %i.bj, i64 noundef 3)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit72.preheader unwind label %bb.j

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit72.preheader: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i71
  %i.ee = load i64, ptr %i.b, align 8, !tbaa !14
  %i.ef = icmp sgt i64 %i.ee, 0
  br i1 %i.ef, label %.preheader.lr.ph, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit72._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit72.preheader
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.6119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.sroa.7120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 32
  %.sroa.8121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 40
  %.sroa.9122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ej = getelementptr inbounds nuw i8, ptr %11, i64 56
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 72
  %.sroa.6112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 80
  %.sroa.7113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 88
  %.sroa.8114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 96
  %.sroa.9115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 104
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit72
  %.043153 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.es, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit72 ] ; 4 uses
  br label %bb.l

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit72._crit_edge: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit72, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit72.preheader
  %i.ep = load ptr, ptr %9, align 8, !tbaa !32
  call void @free(ptr noundef %i.ep) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.eq = load ptr, ptr %8, align 8, !tbaa !32
  call void @free(ptr noundef %i.eq) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret void

bb.k:                                             ; preds = %._crit_edge.split
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit72: ; preds = %bb.o
  %i.es = add nuw nsw i64 %.043153, 1             ; 2 uses
  %i.et = load i64, ptr %i.b, align 8, !tbaa !14
  %i.eu = icmp slt i64 %i.es, %i.et
  br i1 %i.eu, label %.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit72._crit_edge, !llvm.loop !46

bb.l:                                             ; preds = %.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.pre-phi, %bb.o ] ; 7 uses
  %i.ev = load ptr, ptr %3, align 8, !tbaa !9
  %i.ew = load i64, ptr %i.eg, align 8, !tbaa !14
  %i.ex = mul nsw i64 %i.ew, %indvars.iv
  %i.ey = getelementptr [4 x i8], ptr %i.ev, i64 %.043153
  %i.ez = getelementptr [4 x i8], ptr %i.ey, i64 %i.ex
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !19
  %i.fb = icmp slt i32 %i.fa, 0
  br i1 %i.fb, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.l
  %.pre = add nuw nsw i64 %indvars.iv, 1
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.fc = load ptr, ptr %2, align 8, !tbaa !9
  %i.fd = load i64, ptr %i.b, align 8, !tbaa !14
  %i.fe = mul nsw i64 %i.fd, %indvars.iv
  %i.ff = getelementptr [4 x i8], ptr %i.fc, i64 %.043153
  %i.fg = getelementptr [4 x i8], ptr %i.ff, i64 %i.fe
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !19
  %i.fi = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %.cmp.not = icmp eq i64 %indvars.iv, 2
  %i.fj = select i1 %.cmp.not, i64 0, i64 %i.fi
  %i.fk = load ptr, ptr %1, align 8, !tbaa !9
  %i.fl = load i64, ptr %i.eh, align 8, !tbaa !14 ; 2 uses
  %i.fm = mul nsw i64 %i.fl, %i.fj
  %i.fn = getelementptr [4 x i8], ptr %i.fk, i64 %.043153 ; 2 uses
  %i.fo = getelementptr [4 x i8], ptr %i.fn, i64 %i.fm
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !19
  %.cmp143 = icmp eq i64 %indvars.iv, 0
  %13 = add i64 %indvars.iv, 4294967295
  %14 = and i64 %13, 4294967295
  %i.fq = select i1 %.cmp143, i64 2, i64 %14
  %i.fr = mul nsw i64 %i.fl, %i.fq
  %i.fs = getelementptr [4 x i8], ptr %i.fn, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.fu = sext i32 %i.ft to i64                   ; 2 uses
  %i.fv = load ptr, ptr %0, align 8, !tbaa !32, !noalias !47 ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fv, i64 %i.fu
  %i.fx = load i64, ptr %i.ei, align 8, !tbaa !29, !noalias !47 ; 2 uses
  %i.fy = sext i32 %i.fp to i64                   ; 2 uses
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fv, i64 %i.fy
  store ptr %i.fw, ptr %11, align 8
  store i64 %i.fx, ptr %.sroa.5118.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.6119.0..sroa_idx, align 8
  store i64 %i.fu, ptr %.sroa.7120.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.8121.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.9122.0..sroa_idx, align 8
  store ptr %i.fz, ptr %i.ej, align 8
  store i64 %i.fx, ptr %.sroa.5111.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.6112.0..sroa_idx, align 8
  store i64 %i.fy, ptr %.sroa.7113.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.8114.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.9115.0..sroa_idx, align 8
  invoke void @_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE10normalizedEv(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.16") align 8 %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ga = sext i32 %i.fh to i64                   ; 5 uses
  %i.gb = load ptr, ptr %4, align 8, !tbaa !32, !noalias !50 ; 2 uses
  %i.gc = ptrtoaddr ptr %i.gb to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.ga ; 6 uses
  %i.ge = load i64, ptr %i.ek, align 8, !tbaa !29, !noalias !50 ; 7 uses
  %i.gf = load ptr, ptr %10, align 8, !tbaa !53   ; 8 uses
  %i.gg = ptrtoaddr ptr %i.gf to i64
  %i.gh = load i64, ptr %i.el, align 8, !tbaa !26 ; 6 uses
  %i.gi = icmp sgt i64 %i.ge, 0
  br i1 %i.gi, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.n
  %min.iters.check215 = icmp ugt i64 %i.ge, 7
  %ident.check213.not = icmp eq i64 %i.gh, 1
  %or.cond = select i1 %min.iters.check215, i1 %ident.check213.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader228

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %i.gj = shl nsw i64 %i.ga, 3
  %i.gk = add i64 %i.gj, %i.gc
  %i.gl = sub i64 %i.gg, %i.gk
  %diff.check = icmp ugt i64 %i.gl, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader228, label %vector.ph216

vector.ph216:                                     ; preds = %vector.memcheck
  %n.vec217 = and i64 %i.ge, 9223372036854775804  ; 3 uses
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph216
  %index219 = phi i64 [ 0, %vector.ph216 ], [ %index.next222, %vector.body218 ] ; 3 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %index219 ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %index219 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %wide.load220 = load <2 x double>, ptr %i.gn, align 8, !tbaa !33
  %wide.load221 = load <2 x double>, ptr %i.go, align 8, !tbaa !33
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store <2 x double> %wide.load220, ptr %i.gm, align 8, !tbaa !33
  store <2 x double> %wide.load221, ptr %i.gp, align 8, !tbaa !33
  %index.next222 = add nuw i64 %index219, 4       ; 2 uses
  %i.gq = icmp eq i64 %index.next222, %n.vec217
  br i1 %i.gq, label %middle.block223, label %vector.body218, !llvm.loop !55

middle.block223:                                  ; preds = %vector.body218
  %cmp.n224 = icmp eq i64 %i.ge, %n.vec217
  br i1 %cmp.n224, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader228

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader228:          ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block223
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec217, %middle.block223 ] ; 3 uses
  %xtraiter = and i64 %i.ge, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader228, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.gv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader228 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader228 ]
  %i.gr = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, %i.gh
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.gr
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %.05.i.i.i.i.i.i.i.i.i.i.prol
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !33
  store double %i.gu, ptr %i.gs, align 8, !tbaa !33
  %i.gv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !56

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader228
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader228 ], [ %i.gv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.gw = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.ge
  %i.gx = icmp ugt i64 %i.gw, -4
  br i1 %i.gx, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hr, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.gy = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.gh
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.gy
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !33
  store double %i.hb, ptr %i.gz, align 8, !tbaa !33
  %i.hc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hd = mul nsw i64 %i.hc, %i.gh
  %i.he = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.hd
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.hc
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !33
  store double %i.hg, ptr %i.he, align 8, !tbaa !33
  %i.hh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.hi = mul nsw i64 %i.hh, %i.gh
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.hi
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.hh
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !33
  store double %i.hl, ptr %i.hj, align 8, !tbaa !33
  %i.hm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.hn = mul nsw i64 %i.hm, %i.gh
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.hn
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.hm
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !33
  store double %i.hq, ptr %i.ho, align 8, !tbaa !33
  %i.hr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.hr, %i.ge
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !58

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block223, %bb.n
  call void @free(ptr noundef %i.gf) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.hs = load ptr, ptr %9, align 8, !tbaa !32, !noalias !59
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.ga ; 3 uses
  %i.hu = load i64, ptr %i.bl, align 8, !tbaa !26 ; 2 uses
  %i.hv = load double, ptr %i.ht, align 8, !tbaa !33 ; 3 uses
  %.sroa.098.0.vec.insert = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %i.hu
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !33 ; 4 uses
  %.sroa.098.8.vec.insert = insertelement <2 x double> %.sroa.098.0.vec.insert, double %i.hx, i64 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i73 = shl nsw i64 %i.hu, 4
  %i.hy = getelementptr inbounds i8, ptr %i.ht, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i73
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !33 ; 6 uses
  %i.ia = load ptr, ptr %4, align 8, !tbaa !32, !noalias !62
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.ia, i64 %i.ga ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.ic = fmul <2 x double> %.sroa.098.8.vec.insert, splat (double f0x3FEFFFFFFFFFFFFF) ; 3 uses
  %i.id = fmul double %i.hz, f0x3FEFFFFFFFFFFFFF
  %.sroa.0.8.vec.extract.i.i.i.i.i = extractelement <2 x double> %i.ic, i64 1
  %i.ie = fmul double %i.hz, %.sroa.0.8.vec.extract.i.i.i.i.i ; 2 uses
  %i.if = fsub double %i.ie, %i.hv
  %i.ig = fadd double %i.hv, %i.ie
  %i.ih = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ii = fmul <2 x double> %.sroa.098.8.vec.insert, %i.ih ; 2 uses
  %i.ij = extractelement <2 x double> %i.ii, i64 1
  %i.ik = fsub double %i.ij, %i.hz
  %i.il = insertelement <2 x double> <double f0x3C91A62633145C07, double poison>, double %i.hz, i64 1
  %i.im = fadd <2 x double> %i.il, %i.ii
  %i.in = insertelement <2 x double> poison, double %i.hz, i64 0
  %i.io = insertelement <2 x double> %i.in, double %i.hx, i64 1
  %i.ip = fmul <2 x double> %i.io, %i.ic          ; 2 uses
  %i.iq = insertelement <2 x double> <double poison, double f0x3C91A62633145C07>, double %i.hx, i64 0
  %i.ir = fadd <2 x double> %i.iq, %i.ip          ; 2 uses
  %i.is = extractelement <2 x double> %i.ip, i64 0
  %i.it = fsub double %i.is, %i.hx
  %.sroa.12.56.vec.insert.i.i.i = insertelement <2 x double> %i.ir, double %i.if, i64 1
  %i.iu = insertelement <2 x double> %i.ir, double %i.ik, i64 0
  %i.iv = fmul double %i.hz, %i.id
  %i.iw = fadd double %i.iv, f0x3C91A62633145C07
  %i.ix = load i64, ptr %i.el, align 8, !tbaa !26, !noalias !74 ; 2 uses
  %i.iy = load double, ptr %i.ib, align 8, !tbaa !33, !noalias !74 ; 2 uses
  %i.iz = insertelement <2 x double> poison, double %i.iy, i64 0
  %i.ja = shufflevector <2 x double> %i.iz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jb = fmul <2 x double> %i.im, %i.ja
  %i.jc = getelementptr [8 x i8], ptr %i.ib, i64 %i.ix
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !33, !noalias !74 ; 2 uses
  %i.je = insertelement <2 x double> poison, double %i.jd, i64 0
  %i.jf = shufflevector <2 x double> %i.je, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jg = fmul <2 x double> %i.iu, %i.jf
  %i.jh = fadd <2 x double> %i.jb, %i.jg
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %i.ix, 4
  %i.ji = getelementptr i8, ptr %i.ib, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !33, !noalias !74 ; 2 uses
  %i.jk = insertelement <2 x double> poison, double %i.jj, i64 0
  %i.jl = shufflevector <2 x double> %i.jk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jm = fmul <2 x double> %.sroa.12.56.vec.insert.i.i.i, %i.jl
  %i.jn = fadd <2 x double> %i.jm, %i.jh
  store <2 x double> %i.jn, ptr %12, align 16, !tbaa !16, !alias.scope !74
  %i.jo = fmul double %i.it, %i.iy
  %i.jp = fmul double %i.ig, %i.jd
  %i.jq = fmul double %i.iw, %i.jj
  %i.jr = fadd double %i.jp, %i.jq
  %i.js = fadd double %i.jo, %i.jr
  store double %i.js, ptr %i.em, align 16, !tbaa !33, !alias.scope !74
  %i.jt = load ptr, ptr %5, align 8, !tbaa !32, !noalias !75
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.jt, i64 %i.ga ; 6 uses
  %i.jv = load i64, ptr %i.en, align 8, !tbaa !29, !noalias !75 ; 7 uses
  %i.jw = load i64, ptr %i.eo, align 8, !tbaa !26 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE10normalizedEv:bb.a
.lr.ph.i.i.i.i.i.i6.preheader:                    ; preds = %bb.i
  %min.iters.check41 = icmp ult i64 %i.da, 16
  br i1 %min.iters.check41, label %.lr.ph.i.i.i.i.i.i6.preheader54, label %vector.scevcheck33

vector.scevcheck33:                               ; preds = %.lr.ph.i.i.i.i.i.i6.preheader
  %ident.check34 = icmp ne i64 %i.cv, 1
  %ident.check35 = icmp ne i64 %i.cx, 1
  %i.de = or i1 %ident.check34, %ident.check35
  br i1 %i.de, label %.lr.ph.i.i.i.i.i.i6.preheader54, label %vector.memcheck36

vector.memcheck36:                                ; preds = %vector.scevcheck33
  %i.df = sub i64 %.sroa.016.0.copyload29, %i.dc
  %diff.check37 = icmp ugt i64 %i.df, -32
  %i.dg = sub i64 %.sroa.11.0.copyload30, %i.dc
  %diff.check38 = icmp ugt i64 %i.dg, -32
  %conflict.rdx39 = or i1 %diff.check37, %diff.check38
  br i1 %conflict.rdx39, label %.lr.ph.i.i.i.i.i.i6.preheader54, label %vector.ph42

vector.ph42:                                      ; preds = %vector.memcheck36
  %n.vec43 = and i64 %i.da, 9223372036854775804   ; 3 uses
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph42
  %index45 = phi i64 [ 0, %vector.ph42 ], [ %index.next50, %vector.body44 ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %index45 ; 2 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %.sroa.016.0.copyload, i64 %index45 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %wide.load46 = load <2 x double>, ptr %i.di, align 8, !tbaa !33
  %wide.load47 = load <2 x double>, ptr %i.dj, align 8, !tbaa !33
  %i.dk = getelementptr inbounds [8 x i8], ptr %.sroa.11.0.copyload, i64 %index45 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load48 = load <2 x double>, ptr %i.dk, align 8, !tbaa !33
  %wide.load49 = load <2 x double>, ptr %i.dl, align 8, !tbaa !33
  %i.dm = fsub <2 x double> %wide.load46, %wide.load48
  %i.dn = fsub <2 x double> %wide.load47, %wide.load49
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <2 x double> %i.dm, ptr %i.dh, align 8, !tbaa !33
  store <2 x double> %i.dn, ptr %i.do, align 8, !tbaa !33
  %index.next50 = add nuw i64 %index45, 4         ; 2 uses
  %i.dp = icmp eq i64 %index.next50, %n.vec43
  br i1 %i.dp, label %middle.block51, label %vector.body44, !llvm.loop !86

middle.block51:                                   ; preds = %vector.body44
  %cmp.n52 = icmp eq i64 %i.da, %n.vec43
  br i1 %cmp.n52, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESD_EEEERKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i6.preheader54

.lr.ph.i.i.i.i.i.i6.preheader54:                  ; preds = %vector.memcheck36, %vector.scevcheck33, %.lr.ph.i.i.i.i.i.i6.preheader, %middle.block51
  %.05.i.i.i.i.i.i7.ph = phi i64 [ 0, %vector.memcheck36 ], [ 0, %vector.scevcheck33 ], [ 0, %.lr.ph.i.i.i.i.i.i6.preheader ], [ %n.vec43, %middle.block51 ] ; 6 uses
  %.neg63 = or disjoint i64 %.05.i.i.i.i.i.i7.ph, 1
  %xtraiter61 = and i64 %i.da, 1
  %lcmp.mod62.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.lr.ph.i.i.i.i.i.i6.prol.loopexit, label %.lr.ph.i.i.i.i.i.i6.prol

.lr.ph.i.i.i.i.i.i6.prol:                         ; preds = %.lr.ph.i.i.i.i.i.i6.preheader54
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.05.i.i.i.i.i.i7.ph
  %i.dr = mul nsw i64 %.05.i.i.i.i.i.i7.ph, %i.cv
  %i.ds = getelementptr inbounds [8 x i8], ptr %.sroa.016.0.copyload, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !33
  %i.du = mul nsw i64 %.05.i.i.i.i.i.i7.ph, %i.cx
  %i.dv = getelementptr inbounds [8 x i8], ptr %.sroa.11.0.copyload, i64 %i.du
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !33
  %i.dx = fsub double %i.dt, %i.dw
  store double %i.dx, ptr %i.dq, align 8, !tbaa !33
  %i.dy = or disjoint i64 %.05.i.i.i.i.i.i7.ph, 1
  br label %.lr.ph.i.i.i.i.i.i6.prol.loopexit

.lr.ph.i.i.i.i.i.i6.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i.i6.prol, %.lr.ph.i.i.i.i.i.i6.preheader54
  %.05.i.i.i.i.i.i7.unr = phi i64 [ %.05.i.i.i.i.i.i7.ph, %.lr.ph.i.i.i.i.i.i6.preheader54 ], [ %i.dy, %.lr.ph.i.i.i.i.i.i6.prol ]
  %i.dz = icmp eq i64 %i.da, %.neg63
  br i1 %i.dz, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESD_EEEERKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i6

.lr.ph.i.i.i.i.i.i6:                              ; preds = %.lr.ph.i.i.i.i.i.i6.prol.loopexit, %.lr.ph.i.i.i.i.i.i6
  %.05.i.i.i.i.i.i7 = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i.i6 ], [ %.05.i.i.i.i.i.i7.unr, %.lr.ph.i.i.i.i.i.i6.prol.loopexit ] ; 5 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.05.i.i.i.i.i.i7
  %i.eb = mul nsw i64 %.05.i.i.i.i.i.i7, %i.cv
  %i.ec = getelementptr inbounds [8 x i8], ptr %.sroa.016.0.copyload, i64 %i.eb
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !33
  %i.ee = mul nsw i64 %.05.i.i.i.i.i.i7, %i.cx
  %i.ef = getelementptr inbounds [8 x i8], ptr %.sroa.11.0.copyload, i64 %i.ee
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !33
  %i.eh = fsub double %i.ed, %i.eg
  store double %i.eh, ptr %i.ea, align 8, !tbaa !33
  %i.ei = add nuw nsw i64 %.05.i.i.i.i.i.i7, 1    ; 3 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.ei
  %i.ek = mul nsw i64 %i.ei, %i.cv
  %i.el = getelementptr inbounds [8 x i8], ptr %.sroa.016.0.copyload, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !33
  %i.en = mul nsw i64 %i.ei, %i.cx
  %i.eo = getelementptr inbounds [8 x i8], ptr %.sroa.11.0.copyload, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !33
  %i.eq = fsub double %i.em, %i.ep
  store double %i.eq, ptr %i.ej, align 8, !tbaa !33
  %i.er = add nuw nsw i64 %.05.i.i.i.i.i.i7, 2    ; 2 uses
  %exitcond.not.i.i.i.i.i.i8.1 = icmp eq i64 %i.er, %i.da
  br i1 %exitcond.not.i.i.i.i.i.i8.1, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESD_EEEERKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i6, !llvm.loop !87

bb.j:                                             ; preds = %thread-pre-split.i.i.i.i.i3, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i1, %bb.h
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESD_EEEERKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i6.prol.loopexit, %.lr.ph.i.i.i.i.i.i6, %middle.block, %middle.block51, %bb.e, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS3_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.92", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !88, !nonnull !100, !align !101 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26
  store ptr %i.c, ptr %i.a, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !104
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105, !nonnull !100, !align !101 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit, label %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.a
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(33) %i.g, i64 noundef %i.k, i64 noundef 1)
          to label %bb.b unwind label %.body.i.i.i.i.i.i

bb.b:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !106 ; 10 uses
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !108 ; 10 uses
  %.pre.i.i.i.i.i.i.i41 = ptrtoaddr ptr %.pre.i.i.i.i.i.i.i to i64
  %i.m = sdiv i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.n = shl nsw i64 %i.m, 1                      ; 7 uses
  %i.o = icmp sgt i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.b
  %i.q = icmp slt i64 %i.n, %.pr.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.q, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !29, !noalias !109 ; 4 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.u = shl i64 %i.m, 4
  %scevgep.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %.pre.i.i.i.i.i.i.i, i64 %i.u
  %i.v = sub i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, %i.n
  %i.w = shl i64 %i.v, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.w, i1 false), !tbaa !33
  br label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.x = icmp sgt i64 %i.s, 1
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !32   ; 8 uses
  %i.z = load i64, ptr %i.j, align 8, !tbaa !26   ; 5 uses
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aa = add nsw i64 %i.s, -1                    ; 2 uses
  %i.ab = add nsw i64 %i.s, -2
  %xtraiter71 = and i64 %i.aa, 3                  ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 3
  %unroll_iter = and i64 %i.aa, -4
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  %lcmp.mod74 = icmp ne i64 %xtraiter71, 0
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ad = ptrtoaddr ptr %i.y to i64
  %i.ae = shl nsw i64 %i.m, 1
  %i.af = sub i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, %i.ae ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 4
  %i.ag = sub i64 %i.ad, %.pre.i.i.i.i.i.i.i41
  %diff.check = icmp ugt i64 %i.ag, -16
  %or.cond62 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond62, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader63, label %vector.ph

vector.ph:                                        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.ah = and i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %n.vec = sub nuw i64 %i.af, %i.ah               ; 2 uses
  %i.ai = add i64 %i.n, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = add i64 %i.n, %index                    ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.y, i64 %i.aj
  %wide.load = load <2 x double>, ptr %i.ak, align 8, !tbaa !33 ; 2 uses
  %i.al = fmul <2 x double> %wide.load, %wide.load
  %i.am = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %i.aj
  %i.an = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.al)
  store <2 x double> %i.an, ptr %i.am, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, 0
  br i1 %cmp.n, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader63

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader63: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.n, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ] ; 4 uses
  %i.ap = sub i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter68 = and i64 %i.ap, 3                  ; 2 uses
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader63, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.au, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader63 ] ; 3 uses
  %prol.iter70 = phi i64 [ %prol.iter70.next, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader63 ]
  %i.aq = getelementptr [8 x i8], ptr %i.y, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !33 ; 2 uses
  %i.as = fmul double %i.ar, %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = call noundef double @llvm.sqrt.f64(double %i.as)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, ptr %i.at, align 8, !tbaa !33
  %i.au = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter70.next = add i64 %prol.iter70, 1     ; 2 uses
  %prol.iter70.cmp.not = icmp eq i64 %prol.iter70.next, %xtraiter68
  br i1 %prol.iter70.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !113

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader63
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader63 ], [ %i.au, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.av = sub i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.pr.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.us6.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cf, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ax = getelementptr [8 x i8], ptr %i.y, i64 %.05.us6.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !33 ; 2 uses
  %i.az = fmul double %i.ay, %i.ay                ; 2 uses
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.01724.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.02223.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ba = mul nsw i64 %.01724.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.z
  %i.bb = getelementptr [8 x i8], ptr %i.ax, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !33 ; 2 uses
  %i.bd = fmul double %i.bc, %i.bc
  %i.be = fadd double %.02223.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bd
  %i.bf = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.bg = mul nsw i64 %i.bf, %i.z
  %i.bh = getelementptr [8 x i8], ptr %i.ax, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !33 ; 2 uses
  %i.bj = fmul double %i.bi, %i.bi
  %i.bk = fadd double %i.be, %i.bj
  %i.bl = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.bm = mul nsw i64 %i.bl, %i.z
  %i.bn = getelementptr [8 x i8], ptr %i.ax, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !33 ; 2 uses
  %i.bp = fmul double %i.bo, %i.bo
  %i.bq = fadd double %i.bk, %i.bp
  %i.br = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.bs = mul nsw i64 %i.br, %i.z
  %i.bt = getelementptr [8 x i8], ptr %i.ax, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !33 ; 2 uses
  %i.bv = fmul double %i.bu, %i.bu
  %i.bw = fadd double %i.bq, %i.bv                ; 3 uses
  %i.bx = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !114

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %lcmp.mod72.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.01724.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bx, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.02223.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.az, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bw, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod74)
  br label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.01724.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.01724.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.02223.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.02223.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.by = mul nsw i64 %.01724.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.z
  %i.bz = getelementptr [8 x i8], ptr %i.ax, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !33 ; 2 uses
  %i.cb = fmul double %i.ca, %i.ca
  %i.cc = fadd double %.02223.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.cb ; 2 uses
  %i.cd = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter71
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !115

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa
  %.lcssa = phi double [ %i.bw, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.ce = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %.05.us6.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.scalar.i.i.i.us9.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call noundef double @llvm.sqrt.f64(double %.lcssa)
  store double %.scalar.i.i.i.us9.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ce, align 8, !tbaa !33
  %i.cf = add nsw i64 %.05.us6.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cf, %.pr.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !116

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cz, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cg = getelementptr [8 x i8], ptr %i.y, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !33 ; 2 uses
  %i.ci = fmul double %i.ch, %i.ch
  %i.cj = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call noundef double @llvm.sqrt.f64(double %i.ci)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cj, align 8, !tbaa !33
  %i.ck = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cl = getelementptr [8 x i8], ptr %i.y, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !33 ; 2 uses
  %i.cn = fmul double %i.cm, %i.cm
  %i.co = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %i.ck
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = call noundef double @llvm.sqrt.f64(double %i.cn)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, ptr %i.co, align 8, !tbaa !33
  %i.cp = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.cq = getelementptr [8 x i8], ptr %i.y, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !33 ; 2 uses
  %i.cs = fmul double %i.cr, %i.cr
  %i.ct = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %i.cp
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = call noundef double @llvm.sqrt.f64(double %i.cs)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, ptr %i.ct, align 8, !tbaa !33
  %i.cu = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.cv = getelementptr [8 x i8], ptr %i.y, i64 %i.cu
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !33 ; 2 uses
  %i.cx = fmul double %i.cw, %i.cw
  %i.cy = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %i.cu
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = call noundef double @llvm.sqrt.f64(double %i.cx)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, ptr %i.cy, align 8, !tbaa !33
  %i.cz = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cz, %.pr.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !117

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ft, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.da = load i64, ptr %i.j, align 8, !tbaa !26  ; 9 uses
  %i.db = load i64, ptr %i.p, align 8, !tbaa !29  ; 7 uses
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dd = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.de = add nsw i64 %i.db, -1
  %i.df = and i64 %i.de, -4
  %i.dg = getelementptr [8 x i8], ptr %i.dd, i64 %.015.i.i.i.i.i.i.i.i.i.i.i.i.i ; 10 uses
  %i.dh = load <2 x double>, ptr %i.dg, align 1, !tbaa !16 ; 2 uses
  %i.di = fmul <2 x double> %i.dh, %i.dh          ; 2 uses
  %i.dj = icmp sgt i64 %i.db, 4
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %.037.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.di, %bb.c ], [ %i.eq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.c ], [ %i.er, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.dk = icmp slt i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.db
  br i1 %i.dk, label %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dl = sub i64 %i.db, %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.dl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:  ; preds = %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.dr, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.13842.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi <2 x double> [ %i.dq, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.037.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.dm = mul nsw i64 %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %i.da
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.dm
  %i.do = load <2 x double>, ptr %i.dn, align 1, !tbaa !16 ; 2 uses
  %i.dp = fmul <2 x double> %i.do, %i.do
  %i.dq = fadd <2 x double> %.13842.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %i.dp ; 3 uses
  %i.dr = add nuw nsw i64 %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !118

.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa67.unr = phi <2 x double> [ poison, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dq, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dr, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.13842.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi <2 x double> [ %.037.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dq, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ds = sub i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.db
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.040.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %bb.c ] ; 5 uses
  %.03739.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.eq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.di, %bb.c ]
  %i.du = mul nsw i64 %.040.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.da
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.du
  %i.dw = load <2 x double>, ptr %i.dv, align 1, !tbaa !16 ; 2 uses
  %i.dx = fmul <2 x double> %i.dw, %i.dw
  %i.dy = add nuw nsw i64 %.040.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.dz = mul nsw i64 %i.dy, %i.da
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.dz
  %i.eb = load <2 x double>, ptr %i.ea, align 1, !tbaa !16 ; 2 uses
  %i.ec = fmul <2 x double> %i.eb, %i.eb
  %i.ed = fadd <2 x double> %i.dx, %i.ec
  %i.ee = add nuw nsw i64 %.040.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.ef = mul nsw i64 %i.ee, %i.da
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.ef
  %i.eh = load <2 x double>, ptr %i.eg, align 1, !tbaa !16 ; 2 uses
  %i.ei = fmul <2 x double> %i.eh, %i.eh
  %i.ej = add nuw nsw i64 %.040.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.ek = mul nsw i64 %i.ej, %i.da
  %i.el = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.ek
  %i.em = load <2 x double>, ptr %i.el, align 1, !tbaa !16 ; 2 uses
  %i.en = fmul <2 x double> %i.em, %i.em
  %i.eo = fadd <2 x double> %i.ei, %i.en
  %i.ep = fadd <2 x double> %i.ed, %i.eo
  %i.eq = fadd <2 x double> %.03739.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ep ; 2 uses
  %i.er = add nuw nsw i64 %.040.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 3 uses
  %i.es = icmp slt i64 %i.er, %i.df
  br i1 %i.es, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !119

.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fq, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.13842.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.fp, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.13842.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.et = mul nsw i64 %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.da
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.et
  %i.ev = load <2 x double>, ptr %i.eu, align 1, !tbaa !16 ; 2 uses
  %i.ew = fmul <2 x double> %i.ev, %i.ev
  %i.ex = fadd <2 x double> %.13842.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ew
  %i.ey = add nuw nsw i64 %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.ez = mul nsw i64 %i.ey, %i.da
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.ez
  %i.fb = load <2 x double>, ptr %i.fa, align 1, !tbaa !16 ; 2 uses
  %i.fc = fmul <2 x double> %i.fb, %i.fb
  %i.fd = fadd <2 x double> %i.ex, %i.fc
  %i.fe = add nuw nsw i64 %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.ff = mul nsw i64 %i.fe, %i.da
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.ff
  %i.fh = load <2 x double>, ptr %i.fg, align 1, !tbaa !16 ; 2 uses
  %i.fi = fmul <2 x double> %i.fh, %i.fh
  %i.fj = fadd <2 x double> %i.fd, %i.fi
  %i.fk = add nuw nsw i64 %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.fl = mul nsw i64 %i.fk, %i.da
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.fl
  %i.fn = load <2 x double>, ptr %i.fm, align 1, !tbaa !16 ; 2 uses
  %i.fo = fmul <2 x double> %i.fn, %i.fn
  %i.fp = fadd <2 x double> %i.fj, %i.fo          ; 2 uses
  %i.fq = add nuw nsw i64 %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.fq, %i.db
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !120

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.025.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.037.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa67.unr, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.fp, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %.015.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fs = call noundef <2 x double> @llvm.sqrt.v2f64(<2 x double> %.025.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  store <2 x double> %i.fs, ptr %i.fr, align 16, !tbaa !16
  %i.ft = add nuw nsw i64 %.015.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.fu = icmp slt i64 %i.ft, %i.n
  br i1 %i.fu, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !121

common.resume:                                    ; preds = %bb.h, %.body.i.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.fv, %.body.i.i.i.i.i.i ], [ %i.ir, %bb.h ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i.i.i.i:                                ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fv = landingpad { ptr, i32 }
          cleanup
  %i.fw = load ptr, ptr %i.g, align 8, !tbaa !108
  call void @free(ptr noundef %i.fw) #14
  br label %common.resume

_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %bb.a, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.fy = load ptr, ptr %i.g, align 8, !tbaa !108
  store ptr %i.fy, ptr %i.fx, align 8, !tbaa !122
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ga = load ptr, ptr %i.h, align 8, !tbaa !105, !nonnull !100, !align !101
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !26 ; 7 uses
  store i64 %i.gc, ptr %i.fz, align 8, !tbaa !124
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !124 ; 6 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !26
  %.not.i = icmp eq i64 %i.gg, %i.gc
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8
  %.not8.i = icmp eq i64 %i.gi, %i.ge
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit
  %i.gj = icmp eq i64 %i.gc, 0
  %i.gk = icmp eq i64 %i.ge, 0
  %or.cond.i.i.i = or i1 %i.gj, %i.gk
  br i1 %or.cond.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gl = sdiv i64 9223372036854775807, %i.ge
  %i.gm = icmp sgt i64 %i.gc, %i.gl
  br i1 %i.gm, label %bb.f, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

bb.f:                                             ; preds = %bb.e
  %i.gn = call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.gn, align 8, !tbaa !30
  invoke void @__cxa_throw(ptr nonnull %i.gn, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.e, %bb.d
  %i.go = mul nsw i64 %i.ge, %i.gc
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.go, i64 noundef %i.gc, i64 noundef %i.ge)
          to label %thread-pre-split unwind label %bb.h

thread-pre-split:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %.pr = load i64, ptr %i.gh, align 8, !tbaa !29
  %.pre = load i64, ptr %i.gf, align 8, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split, %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit
  %i.gp = phi i64 [ %.pre, %thread-pre-split ], [ %i.gc, %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit ] ; 11 uses
  %i.gq = phi i64 [ %.pr, %thread-pre-split ], [ %i.ge, %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit ] ; 4 uses
  %i.gr = load ptr, ptr %0, align 8, !tbaa !32    ; 4 uses
  %i.gs = icmp sgt i64 %i.gq, 0
  %i.gt = icmp sgt i64 %i.gp, 0
  %or.cond = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS5_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNSC_INS0_14scalar_abs2_opIdEESA_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSV_.exit

.preheader.lr.ph.split.i:                         ; preds = %bb.g
  %i.gu = load ptr, ptr %i.a, align 8, !tbaa !125 ; 3 uses
  %i.gv = load i64, ptr %i.f, align 8, !tbaa !104 ; 3 uses
  %i.gw = load ptr, ptr %i.fx, align 8, !tbaa !127 ; 8 uses
  %i.gx = mul i64 %i.gq, %i.gp
  %i.gy = shl i64 %i.gx, 3
  %scevgep = getelementptr i8, ptr %i.gr, i64 %i.gy ; 2 uses
end_hunk_1
