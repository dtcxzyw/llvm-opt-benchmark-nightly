Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/edge_vectors?download=true
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
  %i.a = load ptr, ptr %2, align 8, !tbaa !70     ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !72
  %i.f = mul nsw i64 %i.e, %i.c                   ; 12 uses
  %i.g = sdiv i64 %i.f, 8
  %i.h = shl nsw i64 %i.g, 3                      ; 3 uses
  %i.i = sdiv i64 %i.f, 4
  %i.j = shl nsw i64 %i.i, 2                      ; 6 uses
  %.off.i.i.i.i = add i64 %i.f, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load <4 x i32>, ptr %i.a, align 16, !tbaa !11 ; 3 uses
  %i.l = icmp sgt i64 %i.f, 7
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load <4 x i32>, ptr %i.m, align 16, !tbaa !11 ; 2 uses
  %i.o = icmp samesign ugt i64 %i.f, 15
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.n, %bb.c ], [ %i.x, %.lr.ph.i.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.k, %bb.c ], [ %i.u, %.lr.ph.i.i.i.i ]
  %i.p = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.0.lcssa.i.i.i.i, <4 x i32> %.lcssa.i.i.i.i) ; 2 uses
  %i.q = icmp sgt i64 %i.j, %i.h
  br i1 %i.q, label %bb.d, label %bb.e

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05779.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ 8, %bb.c ] ; 3 uses
  %.057.in78.i.i.i.i = phi i64 [ %.05779.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %.sroa.064.077.i.i.i.i = phi <4 x i32> [ %i.u, %.lr.ph.i.i.i.i ], [ %i.k, %bb.c ]
  %i.r = phi <4 x i32> [ %i.x, %.lr.ph.i.i.i.i ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.05779.i.i.i.i
  %i.t = load <4 x i32>, ptr %i.s, align 16, !tbaa !11
  %i.u = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.t) ; 2 uses
  %13 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.057.in78.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.w = load <4 x i32>, ptr %i.v, align 16, !tbaa !11
  %i.x = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.r, <4 x i32> %i.w) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.y = icmp slt i64 %.057.i.i.i.i, %i.h
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !32

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h
  %i.aa = load <4 x i32>, ptr %i.z, align 16, !tbaa !11
  %i.ab = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.p, <4 x i32> %i.aa)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i, %bb.b
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.k, %bb.b ], [ %i.ab, %bb.d ], [ %i.p, %._crit_edge.i.i.i.i ]
  %i.ac = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  %i.ad = icmp slt i64 %i.j, %i.f
  br i1 %i.ad, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.e
  %i.ae = sub i64 %i.f, %i.j                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader232, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec = and i64 %i.ae, -8                      ; 3 uses
  %i.af = add i64 %i.j, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ac, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ag = getelementptr [4 x i8], ptr %i.a, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi180 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ak, %vector.body ]
  %i.ah = getelementptr [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <4 x i32>, ptr %i.ah, align 4, !tbaa !73
  %wide.load181 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !73
  %i.aj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.ak = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi180, <4 x i32> %wide.load181) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aj, <4 x i32> %i.ak)
  %i.am = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader232

.lr.ph84.i.i.i.i.preheader232:                    ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.j, %.lr.ph84.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.ac, %.lr.ph84.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader232, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.aq, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader232 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.ap, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader232 ]
  %i.an = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.05582.i.i.i.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !73
  %i.ap = tail call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.ao) ; 2 uses
  %i.aq = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.aq, %i.f
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !34

bb.f:                                             ; preds = %bb.a
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !73  ; 3 uses
  %i.as = icmp sgt i64 %i.f, 1
  br i1 %i.as, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.at = add nsw i64 %i.f, -1                    ; 2 uses
  %min.iters.check183 = icmp ult i64 %i.f, 9
  br i1 %min.iters.check183, label %.lr.ph89.i.i.i.i.preheader229, label %vector.ph184

vector.ph184:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec185 = and i64 %i.at, -8                   ; 3 uses
  %i.au = or disjoint i64 %n.vec185, 1
  %broadcast.splatinsert186 = insertelement <4 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat187 = shufflevector <4 x i32> %broadcast.splatinsert186, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph184
  %index189 = phi i64 [ 0, %vector.ph184 ], [ %index.next194, %vector.body188 ] ; 2 uses
  %vec.phi190 = phi <4 x i32> [ %broadcast.splat187, %vector.ph184 ], [ %i.ay, %vector.body188 ]
  %vec.phi191 = phi <4 x i32> [ %broadcast.splat187, %vector.ph184 ], [ %i.az, %vector.body188 ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index189 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %wide.load192 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !73
  %wide.load193 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !73
  %i.ay = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi190, <4 x i32> %wide.load192) ; 2 uses
  %i.az = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi191, <4 x i32> %wide.load193) ; 2 uses
  %index.next194 = add nuw i64 %index189, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next194, %n.vec185
  br i1 %i.ba, label %middle.block195, label %vector.body188, !llvm.loop !35

middle.block195:                                  ; preds = %vector.body188
  %rdx.minmax196 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ay, <4 x i32> %i.az)
  %i.bb = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax196) ; 2 uses
  %cmp.n197 = icmp eq i64 %i.at, %n.vec185
  br i1 %cmp.n197, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader229

.lr.ph89.i.i.i.i.preheader229:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block195
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.au, %middle.block195 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.ar, %.lr.ph89.i.i.i.i.preheader ], [ %i.bb, %middle.block195 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader229, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.bf, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader229 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.be, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader229 ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.087.i.i.i.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !73
  %i.be = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.bd) ; 2 uses
  %i.bf = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.bf, %i.f
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !36

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %middle.block195, %bb.e, %bb.f
  %.3.i.i.i.i = phi i32 [ %i.be, %.lr.ph89.i.i.i.i ], [ %i.ar, %bb.f ], [ %i.ac, %bb.e ], [ %i.bb, %middle.block195 ], [ %i.am, %middle.block ], [ %i.ap, %.lr.ph84.i.i.i.i ] ; 2 uses
  %i.bg = add nsw i32 %.3.i.i.i.i, 1              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.bh = sext i32 %i.bg to i64                   ; 14 uses
  %i.bi = mul nsw i64 %i.bh, 3                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %.not.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i, label %.thread, label %bb.g

.thread:                                          ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !17
  store i64 3, ptr %i.bk, align 8, !tbaa !18
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit

bb.g:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  %i.bl = icmp sgt i32 %.3.i.i.i.i, -1
  br i1 %i.bl, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, label %.thread170

.thread170:                                       ; preds = %bb.g
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !17
  store i64 3, ptr %i.bk, align 8, !tbaa !18
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.g
  %i.bm = mul nuw nsw i64 %i.bh, 24
  %i.bn = tail call noalias ptr @malloc(i64 noundef %i.bm) #15 ; 4 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.h, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.bp = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bp, align 8, !tbaa !20
  invoke void @__cxa_throw(ptr nonnull %i.bp, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
          to label %.noexc77 unwind label %bb.i

.noexc77:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.bn, ptr %9, align 8, !tbaa !21
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !17
  store i64 3, ptr %i.bk, align 8, !tbaa !18
  %.idx.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.bh, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bn, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !23
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit: ; preds = %.thread170, %.thread, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i
  %i.br = phi ptr [ null, %.thread ], [ %i.bn, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i ], [ null, %.thread170 ] ; 3 uses
  invoke void @_ZN3igl16per_face_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %.preheader145 unwind label %bb.j

.preheader145:                                    ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !71  ; 4 uses
  %i.bt = icmp sgt i64 %i.bs, 0
  br i1 %i.bt, label %.preheader144.preheader, label %._crit_edge.split

.preheader144.preheader:                          ; preds = %.preheader145
  %i.bu = load ptr, ptr %8, align 8, !tbaa !21, !noalias !74
  %i.bv = load ptr, ptr %2, align 8, !tbaa !70
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !17 ; 6 uses
  %.idx = shl i64 %i.bs, 3
  %.idx248 = shl nsw i64 %i.bh, 4
  %.idx249 = shl nsw i64 %i.bx, 4
  %.idx250 = shl nsw i64 %i.bh, 4
  %.idx251 = shl nsw i64 %i.bx, 4
  %.idx252 = shl nsw i64 %i.bh, 4
  %.idx253 = shl nsw i64 %i.bx, 4
  br label %.preheader144

.preheader144:                                    ; preds = %.preheader144.preheader, %.preheader144
  %.045151 = phi i64 [ %i.dy, %.preheader144 ], [ 0, %.preheader144.preheader ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.045151 ; 9 uses
  %i.bz = getelementptr [4 x i8], ptr %i.bv, i64 %.045151 ; 3 uses
end_hunk_0
