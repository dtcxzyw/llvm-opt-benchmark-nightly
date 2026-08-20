inline.NumInlined: 587
inline.NumDeleted: 333
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.Eigen::internal::scalar_sum_op" = type { i8 }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"class.Eigen::SparseMatrix.20" = type { %"class.Eigen::SparseCompressedBase.21", i64, i64, ptr, ptr, %"class.Eigen::internal::CompressedStorage" }
%"class.Eigen::SparseCompressedBase.21" = type { %"class.Eigen::SparseMatrixBase.22" }
%"class.Eigen::SparseMatrixBase.22" = type { i8 }
%"class.Eigen::internal::CompressedStorage" = type { ptr, ptr, i64, i64 }
%"class.Eigen::Matrix.24" = type { %"class.Eigen::PlainObjectBase.25" }
%"class.Eigen::PlainObjectBase.25" = type { %"class.Eigen::DenseStorage.32" }
%"class.Eigen::DenseStorage.32" = type { ptr, i64 }
%"class.Eigen::SparseMatrix" = type { %"class.Eigen::SparseCompressedBase", i64, i64, ptr, ptr, %"class.Eigen::internal::CompressedStorage" }
%"class.Eigen::SparseCompressedBase" = type { %"class.Eigen::SparseMatrixBase" }
%"class.Eigen::SparseMatrixBase" = type { i8 }

$_ZN3igl38scalar_to_cr_vector_gradient_intrinsicIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEES4_S3_S3_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERNS1_12SparseMatrixIT4_Li0EiEE = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll = comdat any

$_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIdiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIdLi0EiEENS0_13scalar_sum_opIddEEEEvRKT_SH_RT0_T1_ = comdat any

$_ZN5Eigen12SparseMatrixIdLi1EiE18collapseDuplicatesINS_8internal13scalar_sum_opIddEEEEvT_ = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiEaSINS0_IdLi1EiEEEERS1_RKNS_16SparseMatrixBaseIT_EE = comdat any

$_ZN5Eigen12SparseMatrixIdLi1EiED2Ev = comdat any

$_ZN5Eigen8internal17CompressedStorageIdiED2Ev = comdat any

$_ZN5Eigen12SparseMatrixIdLi1EiE19reserveInnerVectorsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_ = comdat any

$_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl = comdat any

$_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiED2Ev = comdat any

@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl38scalar_to_cr_vector_gradient_intrinsicIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEES4_S3_S3_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERNS1_12SparseMatrixIT4_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(72) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Eigen::internal::scalar_sum_op", align 1 ; 3 uses
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !14     ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !15
  %i.f = mul nsw i64 %i.e, %i.b                   ; 12 uses
  %i.g = sdiv i64 %i.f, 8
  %i.h = shl nsw i64 %i.g, 3                      ; 3 uses
  %i.i = sdiv i64 %i.f, 4                         ; 2 uses
  %i.j = shl nsw i64 %i.i, 2                      ; 5 uses
  %.off.i.i.i.i = add i64 %i.f, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load <4 x i32>, ptr %i.c, align 16, !tbaa !16 ; 3 uses
  %i.l = icmp sgt i64 %i.f, 7
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
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
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.05779.i.i.i.i
  %i.t = load <4 x i32>, ptr %i.s, align 16, !tbaa !16
  %i.u = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.t) ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.057.in78.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load <4 x i32>, ptr %i.w, align 16, !tbaa !16
  %i.y = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.r, <4 x i32> %i.x) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.z = icmp slt i64 %.057.i.i.i.i, %i.h
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !17

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.h
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
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader790, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec = and i64 %i.ag, -8                      ; 3 uses
  %i.ah = add i64 %i.j, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ai = getelementptr [4 x i8], ptr %i.c, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi655 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.am, %vector.body ]
  %i.aj = getelementptr [4 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <4 x i32>, ptr %i.aj, align 4, !tbaa !19
  %wide.load656 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !19
  %i.al = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.am = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi655, <4 x i32> %wide.load656) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.al, <4 x i32> %i.am)
  %i.ao = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader790

.lr.ph84.i.i.i.i.preheader790:                    ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.j, %.lr.ph84.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.ad, %.lr.ph84.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader790, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.as, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader790 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.ar, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader790 ]
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.05582.i.i.i.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !19
  %i.ar = tail call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.aq) ; 2 uses
  %i.as = add nuw nsw i64 %.05582.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.as, %i.f
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !23

bb.f:                                             ; preds = %bb.a
  %i.at = load i32, ptr %i.c, align 4, !tbaa !19  ; 3 uses
  %i.au = icmp sgt i64 %i.f, 1
  br i1 %i.au, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.av = add nsw i64 %i.f, -1                    ; 2 uses
  %min.iters.check658 = icmp ult i64 %i.f, 9
  br i1 %min.iters.check658, label %.lr.ph89.i.i.i.i.preheader786, label %vector.ph659

vector.ph659:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec660 = and i64 %i.av, -8                   ; 3 uses
  %i.aw = or disjoint i64 %n.vec660, 1
  %broadcast.splatinsert661 = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat662 = shufflevector <4 x i32> %broadcast.splatinsert661, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body663

vector.body663:                                   ; preds = %vector.body663, %vector.ph659
  %index664 = phi i64 [ 0, %vector.ph659 ], [ %index.next669, %vector.body663 ] ; 2 uses
  %vec.phi665 = phi <4 x i32> [ %broadcast.splat662, %vector.ph659 ], [ %i.ba, %vector.body663 ]
  %vec.phi666 = phi <4 x i32> [ %broadcast.splat662, %vector.ph659 ], [ %i.bb, %vector.body663 ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index664 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %wide.load667 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !19
  %wide.load668 = load <4 x i32>, ptr %i.az, align 4, !tbaa !19
  %i.ba = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi665, <4 x i32> %wide.load667) ; 2 uses
  %i.bb = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi666, <4 x i32> %wide.load668) ; 2 uses
  %index.next669 = add nuw i64 %index664, 8       ; 2 uses
  %i.bc = icmp eq i64 %index.next669, %n.vec660
  br i1 %i.bc, label %middle.block670, label %vector.body663, !llvm.loop !24

middle.block670:                                  ; preds = %vector.body663
  %rdx.minmax671 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ba, <4 x i32> %i.bb)
  %i.bd = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax671) ; 2 uses
  %cmp.n672 = icmp eq i64 %i.av, %n.vec660
  br i1 %cmp.n672, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader786

.lr.ph89.i.i.i.i.preheader786:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block670
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.aw, %middle.block670 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.at, %.lr.ph89.i.i.i.i.preheader ], [ %i.bd, %middle.block670 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader786, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.bh, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader786 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.bg, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader786 ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.087.i.i.i.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !19
  %i.bg = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.bf) ; 2 uses
  %i.bh = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.bh, %i.f
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !25

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %middle.block670, %bb.e, %bb.f
  %.3.i.i.i.i = phi i32 [ %i.bg, %.lr.ph89.i.i.i.i ], [ %i.at, %bb.f ], [ %i.ad, %bb.e ], [ %i.bd, %middle.block670 ], [ %i.ao, %middle.block ], [ %i.ar, %.lr.ph84.i.i.i.i ]
  %i.bi = add nsw i32 %.3.i.i.i.i, 1
  %i.bj = load ptr, ptr %3, align 8, !tbaa !14    ; 10 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !15
  %i.bo = mul nsw i64 %i.bn, %i.bl                ; 12 uses
  %i.bp = sdiv i64 %i.bo, 8
  %i.bq = shl nsw i64 %i.bp, 3                    ; 3 uses
  %i.br = sdiv i64 %i.bo, 4                       ; 2 uses
  %i.bs = shl nsw i64 %i.br, 2                    ; 5 uses
  %.off.i.i.i.i102 = add i64 %i.bo, 3
  %.not.i.i.i.i103 = icmp ult i64 %.off.i.i.i.i102, 7
  br i1 %.not.i.i.i.i103, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  %i.bt = load <4 x i32>, ptr %i.bj, align 16, !tbaa !16 ; 3 uses
  %i.bu = icmp sgt i64 %i.bo, 7
  br i1 %i.bu, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bw = load <4 x i32>, ptr %i.bv, align 16, !tbaa !16 ; 2 uses
  %i.bx = icmp samesign ugt i64 %i.bo, 15
  br i1 %i.bx, label %.lr.ph.i.i.i.i117, label %._crit_edge.i.i.i.i114

._crit_edge.i.i.i.i114:                           ; preds = %.lr.ph.i.i.i.i117, %bb.h
  %.lcssa.i.i.i.i115 = phi <4 x i32> [ %i.bw, %bb.h ], [ %i.ch, %.lr.ph.i.i.i.i117 ]
  %.sroa.064.0.lcssa.i.i.i.i116 = phi <4 x i32> [ %i.bt, %bb.h ], [ %i.cd, %.lr.ph.i.i.i.i117 ]
  %i.by = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.0.lcssa.i.i.i.i116, <4 x i32> %.lcssa.i.i.i.i115) ; 2 uses
  %i.bz = icmp sgt i64 %i.bs, %i.bq
  br i1 %i.bz, label %bb.i, label %bb.j

.lr.ph.i.i.i.i117:                                ; preds = %bb.h, %.lr.ph.i.i.i.i117
  %.05779.i.i.i.i118 = phi i64 [ %.057.i.i.i.i121, %.lr.ph.i.i.i.i117 ], [ 8, %bb.h ] ; 3 uses
  %.057.in78.i.i.i.i119 = phi i64 [ %.05779.i.i.i.i118, %.lr.ph.i.i.i.i117 ], [ 0, %bb.h ]
  %.sroa.064.077.i.i.i.i120 = phi <4 x i32> [ %i.cd, %.lr.ph.i.i.i.i117 ], [ %i.bt, %bb.h ]
  %i.ca = phi <4 x i32> [ %i.ch, %.lr.ph.i.i.i.i117 ], [ %i.bw, %bb.h ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.05779.i.i.i.i118
  %i.cc = load <4 x i32>, ptr %i.cb, align 16, !tbaa !16
  %i.cd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i120, <4 x i32> %i.cc) ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.057.in78.i.i.i.i119
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cg = load <4 x i32>, ptr %i.cf, align 16, !tbaa !16
  %i.ch = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ca, <4 x i32> %i.cg) ; 2 uses
  %.057.i.i.i.i121 = add nuw nsw i64 %.05779.i.i.i.i118, 8 ; 2 uses
  %i.ci = icmp slt i64 %.057.i.i.i.i121, %i.bq
  br i1 %i.ci, label %.lr.ph.i.i.i.i117, label %._crit_edge.i.i.i.i114, !llvm.loop !17

bb.i:                                             ; preds = %._crit_edge.i.i.i.i114
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bq
  %i.ck = load <4 x i32>, ptr %i.cj, align 16, !tbaa !16
  %i.cl = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.by, <4 x i32> %i.ck)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i114, %bb.g
  %.sroa.064.2.i.i.i.i104 = phi <4 x i32> [ %i.bt, %bb.g ], [ %i.cl, %bb.i ], [ %i.by, %._crit_edge.i.i.i.i114 ]
  %i.cm = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i104) ; 3 uses
  %i.cn = icmp slt i64 %i.bs, %i.bo
  br i1 %i.cn, label %.lr.ph84.i.i.i.i110.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit126

.lr.ph84.i.i.i.i110.preheader:                    ; preds = %bb.j
  %i.co = shl nsw i64 %i.br, 2
  %i.cp = sub i64 %i.bo, %i.co                    ; 3 uses
  %min.iters.check676 = icmp ult i64 %i.cp, 8
  br i1 %min.iters.check676, label %.lr.ph84.i.i.i.i110.preheader779, label %vector.ph677

vector.ph677:                                     ; preds = %.lr.ph84.i.i.i.i110.preheader
  %n.vec678 = and i64 %i.cp, -8                   ; 3 uses
  %i.cq = add i64 %i.bs, %n.vec678
  %broadcast.splatinsert679 = insertelement <4 x i32> poison, i32 %i.cm, i64 0
  %broadcast.splat680 = shufflevector <4 x i32> %broadcast.splatinsert679, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cr = getelementptr [4 x i8], ptr %i.bj, i64 %i.bs
  br label %vector.body681

vector.body681:                                   ; preds = %vector.body681, %vector.ph677
  %index682 = phi i64 [ 0, %vector.ph677 ], [ %index.next687, %vector.body681 ] ; 2 uses
  %vec.phi683 = phi <4 x i32> [ %broadcast.splat680, %vector.ph677 ], [ %i.cu, %vector.body681 ]
  %vec.phi684 = phi <4 x i32> [ %broadcast.splat680, %vector.ph677 ], [ %i.cv, %vector.body681 ]
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %index682 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load685 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !19
  %wide.load686 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !19
  %i.cu = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi683, <4 x i32> %wide.load685) ; 2 uses
  %i.cv = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi684, <4 x i32> %wide.load686) ; 2 uses
  %index.next687 = add nuw i64 %index682, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next687, %n.vec678
  br i1 %i.cw, label %middle.block688, label %vector.body681, !llvm.loop !26

middle.block688:                                  ; preds = %vector.body681
  %rdx.minmax689 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cu, <4 x i32> %i.cv)
  %i.cx = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax689) ; 2 uses
  %cmp.n690 = icmp eq i64 %i.cp, %n.vec678
  br i1 %cmp.n690, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit126, label %.lr.ph84.i.i.i.i110.preheader779

.lr.ph84.i.i.i.i110.preheader779:                 ; preds = %.lr.ph84.i.i.i.i110.preheader, %middle.block688
  %.05582.i.i.i.i111.ph = phi i64 [ %i.bs, %.lr.ph84.i.i.i.i110.preheader ], [ %i.cq, %middle.block688 ]
  %.181.i.i.i.i112.ph = phi i32 [ %i.cm, %.lr.ph84.i.i.i.i110.preheader ], [ %i.cx, %middle.block688 ]
  br label %.lr.ph84.i.i.i.i110

.lr.ph84.i.i.i.i110:                              ; preds = %.lr.ph84.i.i.i.i110.preheader779, %.lr.ph84.i.i.i.i110
  %.05582.i.i.i.i111 = phi i64 [ %i.db, %.lr.ph84.i.i.i.i110 ], [ %.05582.i.i.i.i111.ph, %.lr.ph84.i.i.i.i110.preheader779 ] ; 2 uses
  %.181.i.i.i.i112 = phi i32 [ %i.da, %.lr.ph84.i.i.i.i110 ], [ %.181.i.i.i.i112.ph, %.lr.ph84.i.i.i.i110.preheader779 ]
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %.05582.i.i.i.i111
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !19
  %i.da = tail call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i112, i32 %i.cz) ; 2 uses
  %i.db = add nuw nsw i64 %.05582.i.i.i.i111, 1   ; 2 uses
  %exitcond.not.i.i.i.i113 = icmp eq i64 %i.db, %i.bo
  br i1 %exitcond.not.i.i.i.i113, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit126, label %.lr.ph84.i.i.i.i110, !llvm.loop !27

bb.k:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  %i.dc = load i32, ptr %i.bj, align 4, !tbaa !19 ; 3 uses
  %i.dd = icmp sgt i64 %i.bo, 1
  br i1 %i.dd, label %.lr.ph89.i.i.i.i122.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit126

.lr.ph89.i.i.i.i122.preheader:                    ; preds = %bb.k
  %i.de = add nsw i64 %i.bo, -1                   ; 2 uses
  %min.iters.check694 = icmp ult i64 %i.bo, 9
  br i1 %min.iters.check694, label %.lr.ph89.i.i.i.i122.preheader775, label %vector.ph695

vector.ph695:                                     ; preds = %.lr.ph89.i.i.i.i122.preheader
  %n.vec696 = and i64 %i.de, -8                   ; 3 uses
  %i.df = or disjoint i64 %n.vec696, 1
  %broadcast.splatinsert697 = insertelement <4 x i32> poison, i32 %i.dc, i64 0
  %broadcast.splat698 = shufflevector <4 x i32> %broadcast.splatinsert697, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body699

vector.body699:                                   ; preds = %vector.body699, %vector.ph695
  %index700 = phi i64 [ 0, %vector.ph695 ], [ %index.next705, %vector.body699 ] ; 2 uses
  %vec.phi701 = phi <4 x i32> [ %broadcast.splat698, %vector.ph695 ], [ %i.dj, %vector.body699 ]
  %vec.phi702 = phi <4 x i32> [ %broadcast.splat698, %vector.ph695 ], [ %i.dk, %vector.body699 ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %index700 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 20
  %wide.load703 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !19
  %wide.load704 = load <4 x i32>, ptr %i.di, align 4, !tbaa !19
  %i.dj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi701, <4 x i32> %wide.load703) ; 2 uses
  %i.dk = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi702, <4 x i32> %wide.load704) ; 2 uses
  %index.next705 = add nuw i64 %index700, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next705, %n.vec696
  br i1 %i.dl, label %middle.block706, label %vector.body699, !llvm.loop !28

middle.block706:                                  ; preds = %vector.body699
  %rdx.minmax707 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dj, <4 x i32> %i.dk)
  %i.dm = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax707) ; 2 uses
  %cmp.n708 = icmp eq i64 %i.de, %n.vec696
  br i1 %cmp.n708, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit126, label %.lr.ph89.i.i.i.i122.preheader775

.lr.ph89.i.i.i.i122.preheader775:                 ; preds = %.lr.ph89.i.i.i.i122.preheader, %middle.block706
  %.087.i.i.i.i123.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i122.preheader ], [ %i.df, %middle.block706 ]
  %.286.i.i.i.i124.ph = phi i32 [ %i.dc, %.lr.ph89.i.i.i.i122.preheader ], [ %i.dm, %middle.block706 ]
  br label %.lr.ph89.i.i.i.i122

.lr.ph89.i.i.i.i122:                              ; preds = %.lr.ph89.i.i.i.i122.preheader775, %.lr.ph89.i.i.i.i122
  %.087.i.i.i.i123 = phi i64 [ %i.dq, %.lr.ph89.i.i.i.i122 ], [ %.087.i.i.i.i123.ph, %.lr.ph89.i.i.i.i122.preheader775 ] ; 2 uses
  %.286.i.i.i.i124 = phi i32 [ %i.dp, %.lr.ph89.i.i.i.i122 ], [ %.286.i.i.i.i124.ph, %.lr.ph89.i.i.i.i122.preheader775 ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.087.i.i.i.i123
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !19
  %i.dp = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i124, i32 %i.do) ; 2 uses
  %i.dq = add nuw nsw i64 %.087.i.i.i.i123, 1     ; 2 uses
  %exitcond96.not.i.i.i.i125 = icmp eq i64 %i.dq, %i.bo
  br i1 %exitcond96.not.i.i.i.i125, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit126, label %.lr.ph89.i.i.i.i122, !llvm.loop !29

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit126: ; preds = %.lr.ph84.i.i.i.i110, %.lr.ph89.i.i.i.i122, %middle.block688, %middle.block706, %bb.j, %bb.k
  %.3.i.i.i.i109 = phi i32 [ %i.dp, %.lr.ph89.i.i.i.i122 ], [ %i.dc, %bb.k ], [ %i.cm, %bb.j ], [ %i.dm, %middle.block706 ], [ %i.cx, %middle.block688 ], [ %i.da, %.lr.ph84.i.i.i.i110 ]
  %i.dr = add nsw i32 %.3.i.i.i.i109, 1           ; 4 uses
  %i.ds = mul nsw i64 %i.b, 15                    ; 2 uses
  %i.dt = icmp ugt i64 %i.ds, 576460752303423487
  br i1 %i.dt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit126
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit126
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.m
  %i.du = mul i64 %i.b, 240
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #20
          to label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit unwind label %bb.n ; 5 uses

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.ds ; 2 uses
  %i.dx = icmp sgt i64 %i.b, 0
  br i1 %i.dx, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.o
  %.074386 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ee, %bb.o ] ; 11 uses
  %.sroa.37.0385 = phi ptr [ %i.dw, %.preheader.lr.ph ], [ %.sroa.37.10, %bb.o ]
  %.sroa.19.0384 = phi ptr [ %i.dv, %.preheader.lr.ph ], [ %.sroa.19.7, %bb.o ]
  %.sroa.0.0383 = phi ptr [ %i.dv, %.preheader.lr.ph ], [ %.sroa.0.10, %bb.o ]
  br label %bb.p

._crit_edge:                                      ; preds = %bb.o, %bb.m, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %.sroa.0.0.lcssa = phi ptr [ %i.dv, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ null, %bb.m ], [ %.sroa.0.10, %bb.o ] ; 6 uses
  %.sroa.19.0.lcssa = phi ptr [ %i.dv, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ null, %bb.m ], [ %.sroa.19.7, %bb.o ]
  %.sroa.37.0.lcssa = phi ptr [ %i.dw, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ null, %bb.m ], [ %.sroa.37.10, %bb.o ] ; 3 uses
  %i.ea = shl nsw i32 %i.dr, 1
  %i.eb = sext i32 %i.ea to i64
  %i.ec = sext i32 %i.bi to i64
  invoke void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %5, i64 noundef %i.eb, i64 noundef %i.ec)
          to label %bb.ao unwind label %bb.n

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i, %bb.l, %._crit_edge
  %.sroa.0.1 = phi ptr [ null, %bb.l ], [ %.sroa.0.0.lcssa, %._crit_edge ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i ]
  %.sroa.37.1 = phi ptr [ null, %bb.l ], [ %.sroa.37.0.lcssa, %._crit_edge ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i ]
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.o:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJiRKidEEERS2_DpOT_.exit193
  %i.ee = add nuw nsw i64 %.074386, 1             ; 2 uses
  %exitcond465.not = icmp eq i64 %i.ee, %i.b
  br i1 %exitcond465.not, label %._crit_edge, label %.preheader, !llvm.loop !30

bb.p:                                             ; preds = %.preheader, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJiRKidEEERS2_DpOT_.exit193
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJiRKidEEERS2_DpOT_.exit193 ] ; 10 uses
  %.sroa.37.2381 = phi ptr [ %.sroa.37.0385, %.preheader ], [ %.sroa.37.10, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJiRKidEEERS2_DpOT_.exit193 ] ; 7 uses
  %.sroa.19.1380 = phi ptr [ %.sroa.19.0384, %.preheader ], [ %.sroa.19.7, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJiRKidEEERS2_DpOT_.exit193 ] ; 5 uses
  %.sroa.0.2379 = phi ptr [ %.sroa.0.0383, %.preheader ], [ %.sroa.0.10, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJiRKidEEERS2_DpOT_.exit193 ] ; 8 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ef = icmp eq i64 %indvars.iv.next, 3
  %i.eg = select i1 %i.ef, i64 0, i64 %indvars.iv.next ; 2 uses
  %i.eh = load ptr, ptr %0, align 8, !tbaa !14
  %i.ei = load i64, ptr %i.a, align 8, !tbaa !9   ; 3 uses
  %i.ej = mul nsw i64 %i.ei, %i.eg
  %i.ek = getelementptr [4 x i8], ptr %i.eh, i64 %.074386 ; 3 uses
  %i.el = getelementptr [4 x i8], ptr %i.ek, i64 %i.ej
  %i.em = load i32, ptr %i.el, align 4, !tbaa !19 ; 4 uses
  %.cmp = icmp eq i64 %indvars.iv, 0
  %i.en = select i1 %.cmp, i64 2, i64 4294967295  ; 2 uses
  %i.eo = mul nsw i64 %i.ei, %i.en
  %i.ep = getelementptr [4 x i8], ptr %i.ek, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !19 ; 4 uses
  %i.er = mul nsw i64 %i.ei, %indvars.iv
  %i.es = getelementptr [4 x i8], ptr %i.ek, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !19 ; 2 uses
  %i.eu = load ptr, ptr %4, align 8, !tbaa !14
  %i.ev = load i64, ptr %i.dy, align 8, !tbaa !9
  %i.ew = mul nsw i64 %i.ev, %indvars.iv
  %i.ex = getelementptr [4 x i8], ptr %i.eu, i64 %.074386
  %i.ey = getelementptr [4 x i8], ptr %i.ex, i64 %i.ew
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !19
  %i.fa = sitofp i32 %i.ez to double              ; 3 uses
  %i.fb = load ptr, ptr %1, align 8, !tbaa !31
  %i.fc = load i64, ptr %i.dz, align 8, !tbaa !34 ; 3 uses
  %i.fd = mul nsw i64 %i.fc, %indvars.iv
  %i.fe = getelementptr [8 x i8], ptr %i.fb, i64 %.074386 ; 3 uses
  %i.ff = getelementptr [8 x i8], ptr %i.fe, i64 %i.fd
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !35 ; 3 uses
  %i.fh = mul nsw i64 %i.fc, %i.eg
  %i.fi = getelementptr [8 x i8], ptr %i.fe, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !35 ; 2 uses
  %i.fk = mul nsw i64 %i.fc, %i.en
  %i.fl = getelementptr [8 x i8], ptr %i.fe, i64 %i.fk
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !35 ; 2 uses
  %i.fn = tail call double @sqrt(double noundef %i.fg) #21 ; 3 uses
  %i.fo = load ptr, ptr %3, align 8, !tbaa !14    ; 3 uses
  %i.fp = load i64, ptr %i.bk, align 8, !tbaa !9  ; 3 uses
  %i.fq = mul nsw i64 %i.fp, %indvars.iv          ; 3 uses
  %i.fr = getelementptr [4 x i8], ptr %i.fo, i64 %.074386
  %i.fs = getelementptr [4 x i8], ptr %i.fr, i64 %i.fq ; 2 uses
  %i.ft = fneg double %i.fa                       ; 3 uses
  %i.fu = load ptr, ptr %2, align 8, !tbaa !31
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %.074386
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !35
  %i.fx = fmul double %i.fw, %i.ft
  %i.fy = fmul double %i.fn, 6.000000e+00         ; 2 uses
  %i.fz = fdiv double %i.fx, %i.fy                ; 2 uses
  %.not.i = icmp eq ptr %.sroa.19.1380, %.sroa.37.2381
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ga = load i32, ptr %i.fs, align 4, !tbaa !19
  store i32 %i.ga, ptr %.sroa.19.1380, align 8, !tbaa !37
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.19.1380, i64 4
  store i32 %i.em, ptr %i.gb, align 4, !tbaa !39
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.19.1380, i64 8
  store double %i.fz, ptr %i.gc, align 8, !tbaa !40
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.gd = ptrtoint ptr %.sroa.37.2381 to i64
  %i.ge = ptrtoint ptr %.sroa.0.2379 to i64
  %i.gf = sub i64 %i.gd, %i.ge                    ; 4 uses
  %i.gg = icmp eq i64 %i.gf, 9223372036854775792
  br i1 %i.gg, label %bb.s, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #19
          to label %.noexc130 unwind label %.loopexit.split-lp

.noexc130:                                        ; preds = %bb.s
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.gh = ashr exact i64 %i.gf, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gh, i64 1)
  %i.gi = add nsw i64 %.sroa.speculated.i.i.i, %i.gh ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.gh
  %i.gk = tail call i64 @llvm.umin.i64(i64 %i.gi, i64 576460752303423487)
  %i.gl = select i1 %i.gj, i64 576460752303423487, i64 %i.gk ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.gm = shl nuw nsw i64 %i.gl, 4
  %i.gn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gm) #20
          to label %.noexc131 unwind label %.loopexit ; 5 uses

.noexc131:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gf ; 3 uses
  %i.gp = load i32, ptr %i.fs, align 4, !tbaa !19
  store i32 %i.gp, ptr %i.go, align 8, !tbaa !37
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store i32 %i.em, ptr %i.gq, align 4, !tbaa !39
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store double %i.fz, ptr %i.gr, align 8, !tbaa !40
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0.2379, %.sroa.37.2381
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc131, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i ], [ %i.gn, %.noexc131 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.2379, %.noexc131 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !41, !alias.scope !42
  %i.gs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gs, %.sroa.37.2381
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !46

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc131
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gn, %.noexc131 ], [ %i.gt, %.lr.ph.i.i.i.i.i ]
  %.not.i35.i.i = icmp eq ptr %.sroa.0.2379, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJRKiS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2379, i64 noundef %i.gf) #22
  %.pre.pre = load ptr, ptr %3, align 8, !tbaa !14
  %.pre466.pre = load i64, ptr %i.bk, align 8, !tbaa !9 ; 2 uses
  %.pre488 = mul nsw i64 %.pre466.pre, %indvars.iv
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJRKiS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJRKiS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i
  %.pre481.pre-phi = phi i64 [ %.pre488, %bb.t ], [ %i.fq, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i ]
  %.pre466 = phi i64 [ %.pre466.pre, %bb.t ], [ %i.fp, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i ]
  %.pre = phi ptr [ %.pre.pre, %bb.t ], [ %i.fo, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i ]
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.gn, i64 %i.gl
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJRKiS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %.pre-phi = phi i64 [ %i.fq, %bb.q ], [ %.pre481.pre-phi, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJRKiS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 2 uses
  %i.gv = phi i64 [ %i.fp, %bb.q ], [ %.pre466, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJRKiS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 2 uses
  %i.gw = phi ptr [ %i.fo, %bb.q ], [ %.pre, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJRKiS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 3 uses
  %.sroa.0.6 = phi ptr [ %.sroa.0.2379, %bb.q ], [ %i.gn, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJRKiS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 9 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.sroa.19.1380, %bb.q ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJRKiS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 6 uses
  %.sroa.37.6 = phi ptr [ %.sroa.37.2381, %bb.q ], [ %i.gu, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJRKiS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.pn797 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.pn to i64
  %.sroa.19.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 16 ; 2 uses
  %i.gx = getelementptr [4 x i8], ptr %i.gw, i64 %.074386
  %i.gy = getelementptr [4 x i8], ptr %i.gx, i64 %.pre-phi
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !19
  %i.ha = add nsw i32 %i.gz, %i.dr                ; 2 uses
  %i.hb = fadd double %i.fg, %i.fj
  %i.hc = fsub double %i.hb, %i.fm
  %i.hd = fmul double %i.hc, %i.ft
  %i.he = fmul double %i.fn, 1.200000e+01         ; 2 uses
  %i.hf = fdiv double %i.hd, %i.he                ; 2 uses
  %.not.i132 = icmp eq ptr %.sroa.19.3, %.sroa.37.6
  br i1 %.not.i132, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.ha, ptr %.sroa.19.3, align 8, !tbaa !37
  %i.hg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 20
  store i32 %i.em, ptr %i.hg, align 4, !tbaa !39
  %i.hh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 24
  store double %i.hf, ptr %i.hh, align 8, !tbaa !40
  %i.hi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 32
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.hj = ptrtoint ptr %.sroa.37.6 to i64
  %i.hk = ptrtoint ptr %.sroa.0.6 to i64          ; 2 uses
  %i.hl = sub i64 %i.hj, %i.hk                    ; 4 uses
  %i.hm = icmp eq i64 %i.hl, 9223372036854775792
  br i1 %i.hm, label %bb.x, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i133

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #19
          to label %.noexc144 unwind label %.loopexit.split-lp244

.noexc144:                                        ; preds = %bb.x
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i133: ; preds = %bb.w
  %i.hn = ashr exact i64 %i.hl, 4                 ; 3 uses
  %.sroa.speculated.i.i.i134 = tail call i64 @llvm.umax.i64(i64 %i.hn, i64 1)
  %i.ho = add nsw i64 %.sroa.speculated.i.i.i134, %i.hn ; 2 uses
  %i.hp = icmp ult i64 %i.ho, %i.hn
  %i.hq = tail call i64 @llvm.umin.i64(i64 %i.ho, i64 576460752303423487)
  %i.hr = select i1 %i.hp, i64 576460752303423487, i64 %i.hq ; 3 uses
  %.not.i.i.i135 = icmp ne i64 %i.hr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i135)
  %i.hs = shl nuw nsw i64 %i.hr, 4
  %i.ht = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hs) #20
          to label %.noexc145 unwind label %.loopexit243 ; 6 uses

.noexc145:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i133
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hl ; 3 uses
  store i32 %i.ha, ptr %i.hu, align 8, !tbaa !37
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  store i32 %i.em, ptr %i.hv, align 4, !tbaa !39
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store double %i.hf, ptr %i.hw, align 8, !tbaa !40
  %.not10.i.i.i.i.i136 = icmp eq ptr %.sroa.0.6, %.sroa.37.6
  br i1 %.not10.i.i.i.i.i136, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i141, label %.lr.ph.i.i.i.i.i137.preheader

.lr.ph.i.i.i.i.i137.preheader:                    ; preds = %.noexc145
  %i.hx = sub i64 %.0.lcssa.i.i.i.i.i.pn797, %i.hk ; 2 uses
  %i.hy = lshr i64 %i.hx, 4
  %i.hz = add nuw nsw i64 %i.hy, 1
  %xtraiter = and i64 %i.hz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i137.prol.loopexit, label %.lr.ph.i.i.i.i.i137.prol

.lr.ph.i.i.i.i.i137.prol:                         ; preds = %.lr.ph.i.i.i.i.i137.preheader, %.lr.ph.i.i.i.i.i137.prol
  %.012.i.i.i.i.i138.prol = phi ptr [ %i.ib, %.lr.ph.i.i.i.i.i137.prol ], [ %i.ht, %.lr.ph.i.i.i.i.i137.preheader ] ; 2 uses
  %.0911.i.i.i.i.i139.prol = phi ptr [ %i.ia, %.lr.ph.i.i.i.i.i137.prol ], [ %.sroa.0.6, %.lr.ph.i.i.i.i.i137.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i137.prol ], [ 0, %.lr.ph.i.i.i.i.i137.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i138.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i139.prol, i64 16, i1 false), !tbaa.struct !41, !alias.scope !47
  %i.ia = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i139.prol, i64 16 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i138.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
end_hunk_0
