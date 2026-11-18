Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/quad_edges?download=true
inline.NumInlined: 352
inline.NumDeleted: 205
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.Eigen::internal::evaluator" = type { %"struct.Eigen::internal::block_evaluator" }
%"struct.Eigen::internal::block_evaluator" = type { %"struct.Eigen::internal::mapbase_evaluator" }
%"struct.Eigen::internal::mapbase_evaluator" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::internal::variable_if_dynamic" = type { i64 }
%"struct.Eigen::internal::evaluator.20" = type { %"struct.Eigen::internal::block_evaluator.21" }
%"struct.Eigen::internal::block_evaluator.21" = type { %"struct.Eigen::internal::mapbase_evaluator.22" }
%"struct.Eigen::internal::mapbase_evaluator.22" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::internal::generic_dense_assignment_kernel" = type { ptr, ptr, ptr, ptr }
%"struct.Eigen::internal::assign_op" = type { i8 }
%"class.Eigen::Block.9" = type { %"class.Eigen::BlockImpl.10" }
%"class.Eigen::BlockImpl.10" = type { %"class.Eigen::internal::BlockImpl_dense.11" }
%"class.Eigen::internal::BlockImpl_dense.11" = type { %"class.Eigen::MapBase.12", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.12" = type { %"class.Eigen::MapBase.13" }
%"class.Eigen::MapBase.13" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { ptr, i64, i64 }

$_ZN3igl10quad_edgesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE = comdat any

$_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS4_IKS6_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSE_ = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10quad_edgesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Eigen::internal::evaluator", align 8 ; 5 uses
  %3 = alloca %"struct.Eigen::internal::evaluator.20", align 8 ; 5 uses
  %4 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %5 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %6 = alloca %"class.Eigen::Block.9", align 8    ; 9 uses
  %7 = alloca %"class.Eigen::Matrix", align 8     ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = icmp sgt i64 %i.b, 1152921504606846975
  br i1 %i.c, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

._crit_edge.i:                                    ; preds = %bb.a
  %i.e = shl nsw i64 %i.b, 2
  %i.f = shl nsw i64 %i.b, 3
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.f, i64 noundef %i.e, i64 noundef 2)
  %i.g = load ptr, ptr %0, align 8, !tbaa !16, !noalias !121
  %i.h = load i64, ptr %i.a, align 8, !tbaa !13, !noalias !121 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13, !noalias !122
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.i = load ptr, ptr %1, align 8, !tbaa !16, !noalias !124 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13, !noalias !124 ; 2 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !19, !alias.scope !123, !noalias !122
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.h, ptr %i.l, align 8, !tbaa !20, !alias.scope !123, !noalias !122
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 1, ptr %i.m, align 8, !tbaa !20, !alias.scope !123, !noalias !122
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %1, ptr %i.n, align 8, !tbaa !125, !alias.scope !123, !noalias !122
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false), !noalias !122
  store i64 %i.k, ptr %i.p, align 8, !tbaa !126, !alias.scope !123, !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13, !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13, !noalias !122
  store ptr %i.g, ptr %2, align 8, !tbaa !26, !noalias !122
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.h, ptr %i.q, align 8, !tbaa !20, !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13, !noalias !122
  store ptr %i.i, ptr %3, align 8, !tbaa !28, !noalias !122
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.k, ptr %i.r, align 8, !tbaa !20, !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13, !noalias !122
  store ptr %3, ptr %4, align 8, !tbaa !127, !noalias !122
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.s, align 8, !tbaa !128, !noalias !122
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %5, ptr %i.t, align 8, !tbaa !129, !noalias !122
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %6, ptr %i.u, align 8, !tbaa !130, !noalias !122
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS4_IKS6_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSE_(ptr noundef nonnull align 8 dereferenceable(32) %4), !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13, !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13, !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13, !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13, !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13, !noalias !122
  %i.v = load ptr, ptr %0, align 8, !tbaa !16, !noalias !131 ; 2 uses
  %i.w = ptrtoaddr ptr %i.v to i64                ; 2 uses
  %i.x = load i64, ptr %i.a, align 8, !tbaa !13, !noalias !131 ; 12 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.x ; 13 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !33
  %.not = icmp eq i64 %i.aa, 1                    ; 6 uses
  %.sroa.11208.0 = select i1 %.not, i64 %i.h, i64 0 ; 8 uses
  %.sroa.62.0 = select i1 %.not, i64 %i.x, i64 %i.h ; 2 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !16, !noalias !132 ; 2 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64              ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %.sroa.11208.0
  %i.ae = load i64, ptr %i.j, align 8, !tbaa !13, !noalias !132 ; 3 uses
  %i.af = select i1 %.not, i64 0, i64 %i.ae
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.af ; 14 uses
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = and i64 %i.ah, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i
  %i.aj = lshr exact i64 %i.ah, 2
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = and i64 %i.ak, 3
  %i.am = call i64 @llvm.smin.i64(i64 %i.al, i64 %i.x)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %._crit_edge.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.am, %bb.c ], [ %i.x, %._crit_edge.i ] ; 11 uses
  %i.an = sub nsw i64 %i.x, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ao = sdiv i64 %i.an, 4
  %i.ap = shl nsw i64 %i.ao, 2                    ; 2 uses
  %i.aq = add nsw i64 %i.ap, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.ar = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader518, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.as = shl i64 %i.x, 2
  %i.at = select i1 %.not, i64 %i.h, i64 %i.ae
  %i.au = shl i64 %i.at, 2
  %i.av = add i64 %i.au, %i.ac
  %i.aw = add i64 %i.as, %i.w
  %i.ax = sub i64 %i.aw, %i.av
  %diff.check = icmp ugt i64 %i.ax, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader518, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <4 x i32>, ptr %i.az, align 4, !tbaa !34
  %wide.load283 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !34
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x i32> %wide.load, ptr %i.ay, align 4, !tbaa !34
  store <4 x i32> %wide.load283, ptr %i.bb, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader518

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader518:      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader518, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader518 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader518 ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !34
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !34
  %i.bg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !51

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader518
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader518 ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.bh = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.by, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !34
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !34
  %i.bm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bm
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !34
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !34
  %i.bq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bq
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !34
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !34
  %i.bu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bu
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !34
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !34
  %i.by = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.by, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !52

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bz = icmp sgt i64 %i.an, 3
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ca = icmp slt i64 %i.aq, %i.x
  br i1 %i.ca, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i29

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.cb = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %i.ap
  %i.cc = sub i64 %i.x, %i.cb                     ; 3 uses
  %min.iters.check287 = icmp ult i64 %i.cc, 20
  br i1 %min.iters.check287, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader517, label %vector.memcheck288

vector.memcheck288:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.cd = select i1 %.not, i64 %i.h, i64 %i.ae
  %i.ce = shl i64 %i.cd, 2
  %i.cf = shl i64 %i.x, 2
  %i.cg = add i64 %i.ce, %i.ac
  %i.ch = add i64 %i.cf, %i.w
  %i.ci = sub i64 %i.ch, %i.cg
  %diff.check289 = icmp ugt i64 %i.ci, -32
  br i1 %diff.check289, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader517, label %vector.ph290

vector.ph290:                                     ; preds = %vector.memcheck288
  %n.vec291 = and i64 %i.cc, -8                   ; 3 uses
  %i.cj = add i64 %i.aq, %n.vec291
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next296, %vector.body292 ] ; 2 uses
  %i.ck = add i64 %i.aq, %index293                ; 2 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ck ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load294 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !34
  %wide.load295 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !34
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <4 x i32> %wide.load294, ptr %i.cl, align 4, !tbaa !34
  store <4 x i32> %wide.load295, ptr %i.co, align 4, !tbaa !34
  %index.next296 = add nuw i64 %index293, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next296, %n.vec291
  br i1 %i.cp, label %middle.block297, label %vector.body292, !llvm.loop !53

middle.block297:                                  ; preds = %vector.body292
  %cmp.n298 = icmp eq i64 %i.cc, %n.vec291
  br i1 %cmp.n298, label %._crit_edge.i29, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader517

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader517:    ; preds = %vector.memcheck288, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block297
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.aq, %vector.memcheck288 ], [ %i.aq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cj, %middle.block297 ] ; 4 uses
  %i.cq = sub i64 %i.x, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter519 = and i64 %i.cq, 3                 ; 2 uses
  %lcmp.mod520.not = icmp eq i64 %xtraiter519, 0
  br i1 %lcmp.mod520.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader517, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.cu, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader517 ] ; 3 uses
  %prol.iter521 = phi i64 [ %prol.iter521.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader517 ]
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.y, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !34
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !34
  %i.cu = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter521.next = add i64 %prol.iter521, 1   ; 2 uses
  %prol.iter521.cmp.not = icmp eq i64 %prol.iter521.next, %xtraiter519
  br i1 %prol.iter521.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !54

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader517
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader517 ], [ %i.cu, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.cv = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %i.x
  %i.cw = icmp ugt i64 %i.cv, -4
  br i1 %i.cw, label %._crit_edge.i29, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dm, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.y, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !34
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !34
  %i.da = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.da
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.da
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !34
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !34
  %i.de = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.de
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.de
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !34
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !34
  %i.di = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.di
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.di
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !34
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !34
  %i.dm = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.dm, %i.x
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.3, label %._crit_edge.i29, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !55

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.021.i.i.i.i.i.i.i.i.i.i.i
  %i.do = getelementptr inbounds [4 x i8], ptr %i.y, i64 %.021.i.i.i.i.i.i.i.i.i.i.i
  %i.dp = load <2 x i64>, ptr %i.do, align 1, !tbaa !39
  store <2 x i64> %i.dp, ptr %i.dn, align 16, !tbaa !39
  %i.dq = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.dr = icmp slt i64 %i.dq, %i.aq
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !56

._crit_edge.i29:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i, %middle.block297, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.ds = select i1 %.not, i64 1, i64 2           ; 2 uses
  %i.dt = load ptr, ptr %0, align 8, !tbaa !16, !noalias !133 ; 2 uses
  %i.du = ptrtoaddr ptr %i.dt to i64              ; 2 uses
  %i.dv = load i64, ptr %i.a, align 8, !tbaa !13, !noalias !133 ; 12 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dv ; 13 uses
  %i.dx = load i64, ptr %i.z, align 8, !tbaa !33
  %i.dy = icmp eq i64 %i.ds, %i.dx                ; 3 uses
  %i.dz = select i1 %i.dy, i64 %.sroa.62.0, i64 0 ; 7 uses
  %.sroa.11208.1 = add nsw i64 %i.dz, %.sroa.11208.0 ; 3 uses
  %.sroa.33.1 = select i1 %i.dy, i64 0, i64 %i.ds ; 3 uses
  %.sroa.62.1 = select i1 %i.dy, i64 %i.dv, i64 %.sroa.62.0 ; 2 uses
  %i.ea = load ptr, ptr %1, align 8, !tbaa !16, !noalias !134 ; 2 uses
  %i.eb = ptrtoaddr ptr %i.ea to i64              ; 2 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %.sroa.11208.1
  %i.ed = load i64, ptr %i.j, align 8, !tbaa !13, !noalias !134 ; 2 uses
  %i.ee = mul nsw i64 %i.ed, %.sroa.33.1          ; 2 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.ee ; 14 uses
  %i.eg = ptrtoint ptr %i.ef to i64               ; 2 uses
  %i.eh = and i64 %i.eg, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i34 = icmp eq i64 %i.eh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i34, label %bb.d, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i35

bb.d:                                             ; preds = %._crit_edge.i29
  %i.ei = lshr exact i64 %i.eg, 2
  %i.ej = sub nsw i64 0, %i.ei
  %i.ek = and i64 %i.ej, 3
  %i.el = call i64 @llvm.smin.i64(i64 %i.ek, i64 %i.dv)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i35

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i35: ; preds = %bb.d, %._crit_edge.i29
  %.0.i.i.i.i.i.i.i.i.i.i.i.i36 = phi i64 [ %i.el, %bb.d ], [ %i.dv, %._crit_edge.i29 ] ; 11 uses
  %i.em = sub nsw i64 %i.dv, %.0.i.i.i.i.i.i.i.i.i.i.i.i36 ; 2 uses
  %i.en = sdiv i64 %i.em, 4
  %i.eo = shl nsw i64 %i.en, 2                    ; 2 uses
  %i.ep = add nsw i64 %i.eo, %.0.i.i.i.i.i.i.i.i.i.i.i.i36 ; 6 uses
  %i.eq = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i36, 0
  br i1 %i.eq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i37

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.preheader:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i35
  %min.iters.check303 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i36, 28
  br i1 %min.iters.check303, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.preheader516, label %vector.memcheck304

vector.memcheck304:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.preheader
  %i.er = mul i64 %.sroa.33.1, %i.ed
  %i.es = shl i64 %i.dv, 2
  %i.et = add i64 %i.er, %.sroa.11208.1
  %i.eu = shl i64 %i.et, 2
  %i.ev = add i64 %i.eu, %i.eb
  %i.ew = add i64 %i.es, %i.du
  %i.ex = sub i64 %i.ew, %i.ev
  %diff.check305 = icmp ugt i64 %i.ex, -32
  br i1 %diff.check305, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.preheader516, label %vector.ph306

vector.ph306:                                     ; preds = %vector.memcheck304
  %n.vec307 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i36, 9223372036854775800 ; 3 uses
  br label %vector.body308

vector.body308:                                   ; preds = %vector.body308, %vector.ph306
  %index309 = phi i64 [ 0, %vector.ph306 ], [ %index.next312, %vector.body308 ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %index309 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %index309 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %wide.load310 = load <4 x i32>, ptr %i.ez, align 4, !tbaa !34
  %wide.load311 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !34
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <4 x i32> %wide.load310, ptr %i.ey, align 4, !tbaa !34
  store <4 x i32> %wide.load311, ptr %i.fb, align 4, !tbaa !34
  %index.next312 = add nuw i64 %index309, 8       ; 2 uses
  %i.fc = icmp eq i64 %index.next312, %n.vec307
  br i1 %i.fc, label %middle.block313, label %vector.body308, !llvm.loop !61

middle.block313:                                  ; preds = %vector.body308
  %cmp.n314 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i36, %n.vec307
  br i1 %cmp.n314, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i37, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.preheader516

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.preheader516:    ; preds = %vector.memcheck304, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.preheader, %middle.block313
  %.05.i.i.i.i.i.i.i.i.i.i.i.i45.ph = phi i64 [ 0, %vector.memcheck304 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.preheader ], [ %n.vec307, %middle.block313 ] ; 3 uses
  %xtraiter522 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i36, 3 ; 2 uses
  %lcmp.mod523.not = icmp eq i64 %xtraiter522, 0
  br i1 %lcmp.mod523.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.prol:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.preheader516, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i45.prol = phi i64 [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i45.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.preheader516 ] ; 3 uses
  %prol.iter524 = phi i64 [ %prol.iter524.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.preheader516 ]
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i45.prol
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i45.prol
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !34
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !34
  %i.fg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i45.prol, 1 ; 2 uses
  %prol.iter524.next = add i64 %prol.iter524, 1   ; 2 uses
  %prol.iter524.cmp.not = icmp eq i64 %prol.iter524.next, %xtraiter522
  br i1 %prol.iter524.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.prol, !llvm.loop !62

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.prol.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.preheader516
  %.05.i.i.i.i.i.i.i.i.i.i.i.i45.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i45.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.preheader516 ], [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.prol ]
  %i.fh = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i45.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i36
  %i.fi = icmp ugt i64 %i.fh, -4
  br i1 %i.fi, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i37, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44
  %.05.i.i.i.i.i.i.i.i.i.i.i.i45 = phi i64 [ %i.fy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i45.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.prol.loopexit ] ; 6 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i45
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i45
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !34
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !34
  %i.fm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i45, 1 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.fm
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.fm
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !34
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !34
  %i.fq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i45, 2 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.fq
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.fq
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !34
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !34
  %i.fu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i45, 3 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.fu
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.fu
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !34
  store i32 %i.fx, ptr %i.fv, align 4, !tbaa !34
  %i.fy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i45, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i46.3 = icmp eq i64 %i.fy, %.0.i.i.i.i.i.i.i.i.i.i.i.i36
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i46.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i37, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44, !llvm.loop !63

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44, %middle.block313, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i35
  %i.fz = icmp sgt i64 %i.em, 3
  br i1 %i.fz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i42, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i38

._crit_edge.i.i.i.i.i.i.i.i.i.i.i38:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i42, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i37
  %i.ga = icmp slt i64 %i.ep, %i.dv
  br i1 %i.ga, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.preheader, label %._crit_edge.i48

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.preheader:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i38
  %i.gb = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i36, %i.eo
  %i.gc = sub i64 %i.dv, %i.gb                    ; 3 uses
  %min.iters.check319 = icmp ult i64 %i.gc, 24
  br i1 %min.iters.check319, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.preheader515, label %vector.memcheck320

vector.memcheck320:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.preheader
  %i.gd = add i64 %i.dz, %.sroa.11208.0
  %i.ge = add i64 %i.gd, %i.ee
  %i.gf = shl i64 %i.ge, 2
  %i.gg = shl i64 %i.dv, 2
  %i.gh = add i64 %i.gf, %i.eb
  %i.gi = add i64 %i.gg, %i.du
  %i.gj = sub i64 %i.gi, %i.gh
  %diff.check321 = icmp ugt i64 %i.gj, -32
  br i1 %diff.check321, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.preheader515, label %vector.ph322

vector.ph322:                                     ; preds = %vector.memcheck320
  %n.vec323 = and i64 %i.gc, -8                   ; 3 uses
  %i.gk = add i64 %i.ep, %n.vec323
  br label %vector.body324

vector.body324:                                   ; preds = %vector.body324, %vector.ph322
  %index325 = phi i64 [ 0, %vector.ph322 ], [ %index.next328, %vector.body324 ] ; 2 uses
  %i.gl = add i64 %i.ep, %index325                ; 2 uses
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.gl ; 2 uses
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.gl ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %wide.load326 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !34
  %wide.load327 = load <4 x i32>, ptr %i.go, align 4, !tbaa !34
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store <4 x i32> %wide.load326, ptr %i.gm, align 4, !tbaa !34
  store <4 x i32> %wide.load327, ptr %i.gp, align 4, !tbaa !34
  %index.next328 = add nuw i64 %index325, 8       ; 2 uses
  %i.gq = icmp eq i64 %index.next328, %n.vec323
  br i1 %i.gq, label %middle.block329, label %vector.body324, !llvm.loop !64

middle.block329:                                  ; preds = %vector.body324
  %cmp.n330 = icmp eq i64 %i.gc, %n.vec323
  br i1 %cmp.n330, label %._crit_edge.i48, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.preheader515

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.preheader515:  ; preds = %vector.memcheck320, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.preheader, %middle.block329
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i40.ph = phi i64 [ %i.ep, %vector.memcheck320 ], [ %i.ep, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.preheader ], [ %i.gk, %middle.block329 ] ; 4 uses
  %i.gr = sub i64 %i.dv, %.05.i18.i.i.i.i.i.i.i.i.i.i.i40.ph
  %xtraiter525 = and i64 %i.gr, 3                 ; 2 uses
  %lcmp.mod526.not = icmp eq i64 %xtraiter525, 0
  br i1 %lcmp.mod526.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.prol:          ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.preheader515, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i40.prol = phi i64 [ %i.gv, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i40.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.preheader515 ] ; 3 uses
  %prol.iter527 = phi i64 [ %prol.iter527.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.preheader515 ]
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i40.prol
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i40.prol
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !34
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !34
  %i.gv = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i40.prol, 1 ; 2 uses
  %prol.iter527.next = add i64 %prol.iter527, 1   ; 2 uses
  %prol.iter527.cmp.not = icmp eq i64 %prol.iter527.next, %xtraiter525
  br i1 %prol.iter527.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.prol, !llvm.loop !65

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.preheader515
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i40.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i40.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.preheader515 ], [ %i.gv, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.prol ]
  %i.gw = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i40.ph, %i.dv
  %i.gx = icmp ugt i64 %i.gw, -4
  br i1 %i.gx, label %._crit_edge.i48, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39:               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i40 = phi i64 [ %i.hn, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i40.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.prol.loopexit ] ; 6 uses
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i40
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i40
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !34
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !34
  %i.hb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i40, 1 ; 2 uses
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.hb
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.hb
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !34
  store i32 %i.he, ptr %i.hc, align 4, !tbaa !34
  %i.hf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i40, 2 ; 2 uses
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.hf
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.hf
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !34
  store i32 %i.hi, ptr %i.hg, align 4, !tbaa !34
  %i.hj = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i40, 3 ; 2 uses
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.hj
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.hj
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !34
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !34
  %i.hn = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i40, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i41.3 = icmp eq i64 %i.hn, %i.dv
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i41.3, label %._crit_edge.i48, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39, !llvm.loop !66

.lr.ph.i.i.i.i.i.i.i.i.i.i.i42:                   ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i37, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i42
  %.021.i.i.i.i.i.i.i.i.i.i.i43 = phi i64 [ %i.hr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i42 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i36, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i37 ] ; 3 uses
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %.021.i.i.i.i.i.i.i.i.i.i.i43
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %.021.i.i.i.i.i.i.i.i.i.i.i43
  %i.hq = load <2 x i64>, ptr %i.hp, align 1, !tbaa !39
  store <2 x i64> %i.hq, ptr %i.ho, align 16, !tbaa !39
  %i.hr = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i43, 4 ; 2 uses
  %i.hs = icmp slt i64 %i.hr, %i.ep
  br i1 %i.hs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i42, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i38, !llvm.loop !56

._crit_edge.i48:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i39, %middle.block329, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i38
  %i.ht = add nuw nsw i64 %.sroa.33.1, 1          ; 2 uses
  %i.hu = load ptr, ptr %0, align 8, !tbaa !16, !noalias !135 ; 2 uses
  %i.hv = ptrtoaddr ptr %i.hu to i64              ; 2 uses
  %i.hw = load i64, ptr %i.a, align 8, !tbaa !13, !noalias !135 ; 10 uses
  %.idx = shl i64 %i.hw, 3                        ; 3 uses
  %i.hx = getelementptr inbounds i8, ptr %i.hu, i64 %.idx ; 13 uses
  %i.hy = load i64, ptr %i.z, align 8, !tbaa !33
  %i.hz = icmp eq i64 %i.ht, %i.hy                ; 3 uses
  %i.ia = select i1 %i.hz, i64 %.sroa.62.1, i64 0 ; 6 uses
  %.sroa.11208.2 = add nsw i64 %i.ia, %.sroa.11208.1 ; 3 uses
  %.sroa.33.2 = select i1 %i.hz, i64 0, i64 %i.ht ; 3 uses
  %.sroa.62.2 = select i1 %i.hz, i64 %i.hw, i64 %.sroa.62.1 ; 2 uses
  %i.ib = load ptr, ptr %1, align 8, !tbaa !16, !noalias !136 ; 2 uses
  %i.ic = ptrtoaddr ptr %i.ib to i64              ; 2 uses
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %.sroa.11208.2
  %i.ie = load i64, ptr %i.j, align 8, !tbaa !13, !noalias !136 ; 2 uses
  %i.if = mul nsw i64 %i.ie, %.sroa.33.2          ; 2 uses
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.if ; 14 uses
  %i.ih = ptrtoint ptr %i.ig to i64               ; 2 uses
  %i.ii = and i64 %i.ih, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i53 = icmp eq i64 %i.ii, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i53, label %bb.e, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i54

bb.e:                                             ; preds = %._crit_edge.i48
  %i.ij = lshr exact i64 %i.ih, 2
  %i.ik = sub nsw i64 0, %i.ij
  %i.il = and i64 %i.ik, 3
  %i.im = call i64 @llvm.smin.i64(i64 %i.il, i64 %i.hw)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i54

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i54: ; preds = %bb.e, %._crit_edge.i48
  %.0.i.i.i.i.i.i.i.i.i.i.i.i55 = phi i64 [ %i.im, %bb.e ], [ %i.hw, %._crit_edge.i48 ] ; 11 uses
  %i.in = sub nsw i64 %i.hw, %.0.i.i.i.i.i.i.i.i.i.i.i.i55 ; 2 uses
  %i.io = sdiv i64 %i.in, 4
  %i.ip = shl nsw i64 %i.io, 2                    ; 2 uses
  %i.iq = add nsw i64 %i.ip, %.0.i.i.i.i.i.i.i.i.i.i.i.i55 ; 6 uses
  %i.ir = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i55, 0
  br i1 %i.ir, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i56

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.preheader:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i54
  %min.iters.check335 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i55, 28
  br i1 %min.iters.check335, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.preheader514, label %vector.memcheck336

vector.memcheck336:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.preheader
  %i.is = mul i64 %.sroa.33.2, %i.ie
  %i.it = add i64 %i.is, %.sroa.11208.2
  %i.iu = shl i64 %i.it, 2
  %i.iv = add i64 %i.iu, %i.ic
  %i.iw = add i64 %.idx, %i.hv
  %i.ix = sub i64 %i.iw, %i.iv
  %diff.check337 = icmp ugt i64 %i.ix, -32
  br i1 %diff.check337, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.preheader514, label %vector.ph338

vector.ph338:                                     ; preds = %vector.memcheck336
  %n.vec339 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i55, 9223372036854775800 ; 3 uses
  br label %vector.body340

vector.body340:                                   ; preds = %vector.body340, %vector.ph338
  %index341 = phi i64 [ 0, %vector.ph338 ], [ %index.next344, %vector.body340 ] ; 3 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %index341 ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %index341 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %wide.load342 = load <4 x i32>, ptr %i.iz, align 4, !tbaa !34
  %wide.load343 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !34
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store <4 x i32> %wide.load342, ptr %i.iy, align 4, !tbaa !34
  store <4 x i32> %wide.load343, ptr %i.jb, align 4, !tbaa !34
  %index.next344 = add nuw i64 %index341, 8       ; 2 uses
  %i.jc = icmp eq i64 %index.next344, %n.vec339
  br i1 %i.jc, label %middle.block345, label %vector.body340, !llvm.loop !71

middle.block345:                                  ; preds = %vector.body340
  %cmp.n346 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i55, %n.vec339
  br i1 %cmp.n346, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i56, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.preheader514

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.preheader514:    ; preds = %vector.memcheck336, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.preheader, %middle.block345
  %.05.i.i.i.i.i.i.i.i.i.i.i.i64.ph = phi i64 [ 0, %vector.memcheck336 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.preheader ], [ %n.vec339, %middle.block345 ] ; 3 uses
  %xtraiter528 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i55, 3 ; 2 uses
  %lcmp.mod529.not = icmp eq i64 %xtraiter528, 0
  br i1 %lcmp.mod529.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.prol:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.preheader514, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i64.prol = phi i64 [ %i.jg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i64.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.preheader514 ] ; 3 uses
  %prol.iter530 = phi i64 [ %prol.iter530.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.preheader514 ]
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i64.prol
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i64.prol
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !34
  store i32 %i.jf, ptr %i.jd, align 4, !tbaa !34
  %i.jg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i64.prol, 1 ; 2 uses
  %prol.iter530.next = add i64 %prol.iter530, 1   ; 2 uses
  %prol.iter530.cmp.not = icmp eq i64 %prol.iter530.next, %xtraiter528
  br i1 %prol.iter530.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.prol, !llvm.loop !72

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.prol.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.preheader514
  %.05.i.i.i.i.i.i.i.i.i.i.i.i64.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i64.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.preheader514 ], [ %i.jg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.prol ]
  %i.jh = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i64.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i55
  %i.ji = icmp ugt i64 %i.jh, -4
  br i1 %i.ji, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i56, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63
  %.05.i.i.i.i.i.i.i.i.i.i.i.i64 = phi i64 [ %i.jy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i64.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.prol.loopexit ] ; 6 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i64
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i64
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !34
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !34
  %i.jm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i64, 1 ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.jm
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.jm
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !34
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !34
  %i.jq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i64, 2 ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.jq
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.jq
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !34
  store i32 %i.jt, ptr %i.jr, align 4, !tbaa !34
  %i.ju = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i64, 3 ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.ju
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.ju
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !34
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !34
  %i.jy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i64, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i65.3 = icmp eq i64 %i.jy, %.0.i.i.i.i.i.i.i.i.i.i.i.i55
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i65.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i56, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63, !llvm.loop !73

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i56: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i63, %middle.block345, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i54
  %i.jz = icmp sgt i64 %i.in, 3
  br i1 %i.jz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i57

._crit_edge.i.i.i.i.i.i.i.i.i.i.i57:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i56
  %i.ka = icmp slt i64 %i.iq, %i.hw
  br i1 %i.ka, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.preheader, label %._crit_edge.i67

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.preheader:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i57
  %i.kb = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i55, %i.ip
  %i.kc = sub i64 %i.hw, %i.kb                    ; 3 uses
  %min.iters.check351 = icmp ult i64 %i.kc, 24
  br i1 %min.iters.check351, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.preheader513, label %vector.memcheck352

vector.memcheck352:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.preheader
  %i.kd = add i64 %i.dz, %.sroa.11208.0
  %i.ke = add i64 %i.kd, %i.ia
  %i.kf = add i64 %i.ke, %i.if
  %i.kg = shl i64 %i.kf, 2
  %i.kh = add i64 %i.kg, %i.ic
  %i.ki = add i64 %.idx, %i.hv
  %i.kj = sub i64 %i.ki, %i.kh
  %diff.check353 = icmp ugt i64 %i.kj, -32
  br i1 %diff.check353, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.preheader513, label %vector.ph354

vector.ph354:                                     ; preds = %vector.memcheck352
  %n.vec355 = and i64 %i.kc, -8                   ; 3 uses
  %i.kk = add i64 %i.iq, %n.vec355
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph354
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next360, %vector.body356 ] ; 2 uses
  %i.kl = add i64 %i.iq, %index357                ; 2 uses
  %i.km = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.kl ; 2 uses
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.kl ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %wide.load358 = load <4 x i32>, ptr %i.kn, align 4, !tbaa !34
  %wide.load359 = load <4 x i32>, ptr %i.ko, align 4, !tbaa !34
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  store <4 x i32> %wide.load358, ptr %i.km, align 4, !tbaa !34
  store <4 x i32> %wide.load359, ptr %i.kp, align 4, !tbaa !34
  %index.next360 = add nuw i64 %index357, 8       ; 2 uses
  %i.kq = icmp eq i64 %index.next360, %n.vec355
  br i1 %i.kq, label %middle.block361, label %vector.body356, !llvm.loop !74

middle.block361:                                  ; preds = %vector.body356
  %cmp.n362 = icmp eq i64 %i.kc, %n.vec355
  br i1 %cmp.n362, label %._crit_edge.i67, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.preheader513

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.preheader513:  ; preds = %vector.memcheck352, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.preheader, %middle.block361
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i59.ph = phi i64 [ %i.iq, %vector.memcheck352 ], [ %i.iq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.preheader ], [ %i.kk, %middle.block361 ] ; 4 uses
  %i.kr = sub i64 %i.hw, %.05.i18.i.i.i.i.i.i.i.i.i.i.i59.ph
  %xtraiter531 = and i64 %i.kr, 3                 ; 2 uses
  %lcmp.mod532.not = icmp eq i64 %xtraiter531, 0
  br i1 %lcmp.mod532.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.prol:          ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.preheader513, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i59.prol = phi i64 [ %i.kv, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i59.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.preheader513 ] ; 3 uses
  %prol.iter533 = phi i64 [ %prol.iter533.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.preheader513 ]
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i59.prol
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i59.prol
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !34
  store i32 %i.ku, ptr %i.ks, align 4, !tbaa !34
  %i.kv = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i59.prol, 1 ; 2 uses
  %prol.iter533.next = add i64 %prol.iter533, 1   ; 2 uses
  %prol.iter533.cmp.not = icmp eq i64 %prol.iter533.next, %xtraiter531
  br i1 %prol.iter533.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.prol, !llvm.loop !75

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.preheader513
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i59.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i59.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.preheader513 ], [ %i.kv, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.prol ]
  %i.kw = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i59.ph, %i.hw
  %i.kx = icmp ugt i64 %i.kw, -4
  br i1 %i.kx, label %._crit_edge.i67, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58:               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i59 = phi i64 [ %i.ln, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i59.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.prol.loopexit ] ; 6 uses
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i59
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i59
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !34
  store i32 %i.la, ptr %i.ky, align 4, !tbaa !34
  %i.lb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i59, 1 ; 2 uses
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.lb
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.lb
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !34
  store i32 %i.le, ptr %i.lc, align 4, !tbaa !34
  %i.lf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i59, 2 ; 2 uses
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.lf
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.lf
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !34
  store i32 %i.li, ptr %i.lg, align 4, !tbaa !34
  %i.lj = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i59, 3 ; 2 uses
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.lj
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.lj
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !34
  store i32 %i.lm, ptr %i.lk, align 4, !tbaa !34
  %i.ln = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i59, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i60.3 = icmp eq i64 %i.ln, %i.hw
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i60.3, label %._crit_edge.i67, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58, !llvm.loop !76

.lr.ph.i.i.i.i.i.i.i.i.i.i.i61:                   ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i56, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %.021.i.i.i.i.i.i.i.i.i.i.i62 = phi i64 [ %i.lr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i55, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i56 ] ; 3 uses
  %i.lo = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %.021.i.i.i.i.i.i.i.i.i.i.i62
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %.021.i.i.i.i.i.i.i.i.i.i.i62
  %i.lq = load <2 x i64>, ptr %i.lp, align 1, !tbaa !39
  store <2 x i64> %i.lq, ptr %i.lo, align 16, !tbaa !39
  %i.lr = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i62, 4 ; 2 uses
  %i.ls = icmp slt i64 %i.lr, %i.iq
  br i1 %i.ls, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i57, !llvm.loop !56

._crit_edge.i67:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i58, %middle.block361, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i57
  %i.lt = add nuw nsw i64 %.sroa.33.2, 1          ; 2 uses
  %i.lu = load ptr, ptr %0, align 8, !tbaa !16, !noalias !137 ; 2 uses
  %i.lv = ptrtoaddr ptr %i.lu to i64              ; 2 uses
  %i.lw = load i64, ptr %i.a, align 8, !tbaa !13, !noalias !137 ; 10 uses
  %.idx241 = shl i64 %i.lw, 3                     ; 3 uses
  %i.lx = getelementptr inbounds i8, ptr %i.lu, i64 %.idx241 ; 13 uses
  %i.ly = load i64, ptr %i.z, align 8, !tbaa !33
  %i.lz = icmp eq i64 %i.lt, %i.ly                ; 3 uses
  %i.ma = select i1 %i.lz, i64 %.sroa.62.2, i64 0 ; 5 uses
  %.sroa.11208.3 = add nsw i64 %i.ma, %.sroa.11208.2 ; 3 uses
  %.sroa.33.3 = select i1 %i.lz, i64 0, i64 %i.lt ; 3 uses
  %.sroa.62.3 = select i1 %i.lz, i64 %i.lw, i64 %.sroa.62.2 ; 2 uses
  %i.mb = load ptr, ptr %1, align 8, !tbaa !16, !noalias !138 ; 2 uses
  %i.mc = ptrtoaddr ptr %i.mb to i64              ; 2 uses
  %i.md = getelementptr inbounds [4 x i8], ptr %i.mb, i64 %.sroa.11208.3
  %i.me = load i64, ptr %i.j, align 8, !tbaa !13, !noalias !138 ; 2 uses
  %i.mf = mul nsw i64 %i.me, %.sroa.33.3          ; 2 uses
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.md, i64 %i.mf ; 14 uses
  %i.mh = ptrtoint ptr %i.mg to i64               ; 2 uses
  %i.mi = and i64 %i.mh, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i72 = icmp eq i64 %i.mi, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i72, label %bb.f, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i73

bb.f:                                             ; preds = %._crit_edge.i67
  %i.mj = lshr exact i64 %i.mh, 2
  %i.mk = sub nsw i64 0, %i.mj
  %i.ml = and i64 %i.mk, 3
  %i.mm = call i64 @llvm.smin.i64(i64 %i.ml, i64 %i.lw)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i73

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i73: ; preds = %bb.f, %._crit_edge.i67
  %.0.i.i.i.i.i.i.i.i.i.i.i.i74 = phi i64 [ %i.mm, %bb.f ], [ %i.lw, %._crit_edge.i67 ] ; 11 uses
  %i.mn = sub nsw i64 %i.lw, %.0.i.i.i.i.i.i.i.i.i.i.i.i74 ; 2 uses
  %i.mo = sdiv i64 %i.mn, 4
  %i.mp = shl nsw i64 %i.mo, 2                    ; 2 uses
  %i.mq = add nsw i64 %i.mp, %.0.i.i.i.i.i.i.i.i.i.i.i.i74 ; 6 uses
  %i.mr = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i74, 0
  br i1 %i.mr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i75

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.preheader:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i73
  %min.iters.check367 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i74, 28
  br i1 %min.iters.check367, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.preheader512, label %vector.memcheck368

vector.memcheck368:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.preheader
  %i.ms = mul i64 %.sroa.33.3, %i.me
  %i.mt = add i64 %i.ms, %.sroa.11208.3
  %i.mu = shl i64 %i.mt, 2
  %i.mv = add i64 %i.mu, %i.mc
  %i.mw = add i64 %.idx241, %i.lv
  %i.mx = sub i64 %i.mw, %i.mv
  %diff.check369 = icmp ugt i64 %i.mx, -32
  br i1 %diff.check369, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.preheader512, label %vector.ph370

vector.ph370:                                     ; preds = %vector.memcheck368
  %n.vec371 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i74, 9223372036854775800 ; 3 uses
  br label %vector.body372

vector.body372:                                   ; preds = %vector.body372, %vector.ph370
  %index373 = phi i64 [ 0, %vector.ph370 ], [ %index.next376, %vector.body372 ] ; 3 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %index373 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %index373 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  %wide.load374 = load <4 x i32>, ptr %i.mz, align 4, !tbaa !34
  %wide.load375 = load <4 x i32>, ptr %i.na, align 4, !tbaa !34
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  store <4 x i32> %wide.load374, ptr %i.my, align 4, !tbaa !34
  store <4 x i32> %wide.load375, ptr %i.nb, align 4, !tbaa !34
  %index.next376 = add nuw i64 %index373, 8       ; 2 uses
  %i.nc = icmp eq i64 %index.next376, %n.vec371
  br i1 %i.nc, label %middle.block377, label %vector.body372, !llvm.loop !81

middle.block377:                                  ; preds = %vector.body372
  %cmp.n378 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i74, %n.vec371
  br i1 %cmp.n378, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i75, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.preheader512

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.preheader512:    ; preds = %vector.memcheck368, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.preheader, %middle.block377
  %.05.i.i.i.i.i.i.i.i.i.i.i.i83.ph = phi i64 [ 0, %vector.memcheck368 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.preheader ], [ %n.vec371, %middle.block377 ] ; 3 uses
  %xtraiter534 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i74, 3 ; 2 uses
  %lcmp.mod535.not = icmp eq i64 %xtraiter534, 0
  br i1 %lcmp.mod535.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.prol:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.preheader512, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i83.prol = phi i64 [ %i.ng, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i83.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.preheader512 ] ; 3 uses
  %prol.iter536 = phi i64 [ %prol.iter536.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.preheader512 ]
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i83.prol
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i83.prol
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !34
  store i32 %i.nf, ptr %i.nd, align 4, !tbaa !34
  %i.ng = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i83.prol, 1 ; 2 uses
  %prol.iter536.next = add i64 %prol.iter536, 1   ; 2 uses
  %prol.iter536.cmp.not = icmp eq i64 %prol.iter536.next, %xtraiter534
  br i1 %prol.iter536.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.prol, !llvm.loop !82

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.prol.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.preheader512
  %.05.i.i.i.i.i.i.i.i.i.i.i.i83.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i83.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.preheader512 ], [ %i.ng, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.prol ]
  %i.nh = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i83.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i74
  %i.ni = icmp ugt i64 %i.nh, -4
  br i1 %i.ni, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i75, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82
  %.05.i.i.i.i.i.i.i.i.i.i.i.i83 = phi i64 [ %i.ny, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i83.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.prol.loopexit ] ; 6 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i83
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i83
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !34
  store i32 %i.nl, ptr %i.nj, align 4, !tbaa !34
  %i.nm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i83, 1 ; 2 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.nm
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.nm
  %i.np = load i32, ptr %i.no, align 4, !tbaa !34
  store i32 %i.np, ptr %i.nn, align 4, !tbaa !34
  %i.nq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i83, 2 ; 2 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.nq
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.nq
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !34
  store i32 %i.nt, ptr %i.nr, align 4, !tbaa !34
  %i.nu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i83, 3 ; 2 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.nu
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.nu
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !34
  store i32 %i.nx, ptr %i.nv, align 4, !tbaa !34
  %i.ny = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i83, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i84.3 = icmp eq i64 %i.ny, %.0.i.i.i.i.i.i.i.i.i.i.i.i74
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i84.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i75, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82, !llvm.loop !83

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i75: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i82, %middle.block377, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i73
  %i.nz = icmp sgt i64 %i.mn, 3
  br i1 %i.nz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i80, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i76

._crit_edge.i.i.i.i.i.i.i.i.i.i.i76:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i80, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i75
  %i.oa = icmp slt i64 %i.mq, %i.lw
  br i1 %i.oa, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.preheader, label %._crit_edge.i86

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.preheader:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i76
  %i.ob = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i74, %i.mp
  %i.oc = sub i64 %i.lw, %i.ob                    ; 3 uses
  %min.iters.check383 = icmp ult i64 %i.oc, 28
  br i1 %min.iters.check383, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.preheader511, label %vector.memcheck384

vector.memcheck384:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.preheader
  %i.od = add i64 %i.dz, %.sroa.11208.0
  %i.oe = add i64 %i.od, %i.ma
  %i.of = add i64 %i.oe, %i.ia
  %i.og = add i64 %i.of, %i.mf
  %i.oh = shl i64 %i.og, 2
  %i.oi = add i64 %i.oh, %i.mc
  %i.oj = add i64 %.idx241, %i.lv
  %i.ok = sub i64 %i.oj, %i.oi
  %diff.check385 = icmp ugt i64 %i.ok, -32
  br i1 %diff.check385, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.preheader511, label %vector.ph386

vector.ph386:                                     ; preds = %vector.memcheck384
  %n.vec387 = and i64 %i.oc, -8                   ; 3 uses
  %i.ol = add i64 %i.mq, %n.vec387
  br label %vector.body388

vector.body388:                                   ; preds = %vector.body388, %vector.ph386
  %index389 = phi i64 [ 0, %vector.ph386 ], [ %index.next392, %vector.body388 ] ; 2 uses
  %i.om = add i64 %i.mq, %index389                ; 2 uses
  %i.on = getelementptr inbounds [4 x i8], ptr %i.mg, i64 %i.om ; 2 uses
  %i.oo = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %i.om ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %wide.load390 = load <4 x i32>, ptr %i.oo, align 4, !tbaa !34
  %wide.load391 = load <4 x i32>, ptr %i.op, align 4, !tbaa !34
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  store <4 x i32> %wide.load390, ptr %i.on, align 4, !tbaa !34
  store <4 x i32> %wide.load391, ptr %i.oq, align 4, !tbaa !34
  %index.next392 = add nuw i64 %index389, 8       ; 2 uses
  %i.or = icmp eq i64 %index.next392, %n.vec387
  br i1 %i.or, label %middle.block393, label %vector.body388, !llvm.loop !84

middle.block393:                                  ; preds = %vector.body388
  %cmp.n394 = icmp eq i64 %i.oc, %n.vec387
  br i1 %cmp.n394, label %._crit_edge.i86, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.preheader511

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.preheader511:  ; preds = %vector.memcheck384, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.preheader, %middle.block393
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i78.ph = phi i64 [ %i.mq, %vector.memcheck384 ], [ %i.mq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.preheader ], [ %i.ol, %middle.block393 ] ; 4 uses
  %i.os = sub i64 %i.lw, %.05.i18.i.i.i.i.i.i.i.i.i.i.i78.ph
  %xtraiter537 = and i64 %i.os, 3                 ; 2 uses
  %lcmp.mod538.not = icmp eq i64 %xtraiter537, 0
  br i1 %lcmp.mod538.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.prol:          ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.preheader511, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i78.prol = phi i64 [ %i.ow, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i78.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.preheader511 ] ; 3 uses
  %prol.iter539 = phi i64 [ %prol.iter539.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.preheader511 ]
  %i.ot = getelementptr inbounds [4 x i8], ptr %i.mg, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i78.prol
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i78.prol
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !34
  store i32 %i.ov, ptr %i.ot, align 4, !tbaa !34
  %i.ow = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i78.prol, 1 ; 2 uses
  %prol.iter539.next = add i64 %prol.iter539, 1   ; 2 uses
  %prol.iter539.cmp.not = icmp eq i64 %prol.iter539.next, %xtraiter537
  br i1 %prol.iter539.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.prol, !llvm.loop !85

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.preheader511
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i78.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i78.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.preheader511 ], [ %i.ow, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.prol ]
  %i.ox = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i78.ph, %i.lw
  %i.oy = icmp ugt i64 %i.ox, -4
  br i1 %i.oy, label %._crit_edge.i86, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77:               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i78 = phi i64 [ %i.po, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i78.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.prol.loopexit ] ; 6 uses
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.mg, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i78
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i78
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !34
  store i32 %i.pb, ptr %i.oz, align 4, !tbaa !34
  %i.pc = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i78, 1 ; 2 uses
  %i.pd = getelementptr inbounds [4 x i8], ptr %i.mg, i64 %i.pc
  %i.pe = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %i.pc
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !34
  store i32 %i.pf, ptr %i.pd, align 4, !tbaa !34
  %i.pg = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i78, 2 ; 2 uses
  %i.ph = getelementptr inbounds [4 x i8], ptr %i.mg, i64 %i.pg
  %i.pi = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %i.pg
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !34
  store i32 %i.pj, ptr %i.ph, align 4, !tbaa !34
  %i.pk = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i78, 3 ; 2 uses
  %i.pl = getelementptr inbounds [4 x i8], ptr %i.mg, i64 %i.pk
  %i.pm = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %i.pk
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !34
  store i32 %i.pn, ptr %i.pl, align 4, !tbaa !34
  %i.po = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i78, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i79.3 = icmp eq i64 %i.po, %i.lw
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i79.3, label %._crit_edge.i86, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77, !llvm.loop !86

.lr.ph.i.i.i.i.i.i.i.i.i.i.i80:                   ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i75, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i80
  %.021.i.i.i.i.i.i.i.i.i.i.i81 = phi i64 [ %i.ps, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i80 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i74, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i75 ] ; 3 uses
  %i.pp = getelementptr inbounds [4 x i8], ptr %i.mg, i64 %.021.i.i.i.i.i.i.i.i.i.i.i81
  %i.pq = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %.021.i.i.i.i.i.i.i.i.i.i.i81
  %i.pr = load <2 x i64>, ptr %i.pq, align 1, !tbaa !39
  store <2 x i64> %i.pr, ptr %i.pp, align 16, !tbaa !39
  %i.ps = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i81, 4 ; 2 uses
  %i.pt = icmp slt i64 %i.ps, %i.mq
  br i1 %i.pt, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i80, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i76, !llvm.loop !56

._crit_edge.i86:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i77, %middle.block393, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i76
  %i.pu = add nuw nsw i64 %.sroa.33.3, 1          ; 2 uses
  %i.pv = load ptr, ptr %0, align 8, !tbaa !16, !noalias !139 ; 2 uses
  %i.pw = ptrtoaddr ptr %i.pv to i64              ; 2 uses
  %i.px = load i64, ptr %i.a, align 8, !tbaa !13, !noalias !139 ; 10 uses
  %.idx242 = mul i64 %i.px, 12                    ; 3 uses
  %i.py = getelementptr inbounds i8, ptr %i.pv, i64 %.idx242 ; 13 uses
  %i.pz = load i64, ptr %i.z, align 8, !tbaa !33
  %i.qa = icmp eq i64 %i.pu, %i.pz                ; 3 uses
  %i.qb = select i1 %i.qa, i64 %.sroa.62.3, i64 0 ; 4 uses
  %.sroa.11208.4 = add nsw i64 %i.qb, %.sroa.11208.3 ; 3 uses
  %.sroa.33.4 = select i1 %i.qa, i64 0, i64 %i.pu ; 3 uses
  %.sroa.62.4 = select i1 %i.qa, i64 %i.px, i64 %.sroa.62.3 ; 2 uses
  %i.qc = load ptr, ptr %1, align 8, !tbaa !16, !noalias !140 ; 2 uses
  %i.qd = ptrtoaddr ptr %i.qc to i64              ; 2 uses
  %i.qe = getelementptr inbounds [4 x i8], ptr %i.qc, i64 %.sroa.11208.4
  %i.qf = load i64, ptr %i.j, align 8, !tbaa !13, !noalias !140 ; 2 uses
  %i.qg = mul nsw i64 %i.qf, %.sroa.33.4          ; 2 uses
  %i.qh = getelementptr inbounds [4 x i8], ptr %i.qe, i64 %i.qg ; 14 uses
  %i.qi = ptrtoint ptr %i.qh to i64               ; 2 uses
  %i.qj = and i64 %i.qi, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i91 = icmp eq i64 %i.qj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i91, label %bb.g, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i92

bb.g:                                             ; preds = %._crit_edge.i86
  %i.qk = lshr exact i64 %i.qi, 2
  %i.ql = sub nsw i64 0, %i.qk
  %i.qm = and i64 %i.ql, 3
  %i.qn = call i64 @llvm.smin.i64(i64 %i.qm, i64 %i.px)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i92

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i92: ; preds = %bb.g, %._crit_edge.i86
  %.0.i.i.i.i.i.i.i.i.i.i.i.i93 = phi i64 [ %i.qn, %bb.g ], [ %i.px, %._crit_edge.i86 ] ; 11 uses
  %i.qo = sub nsw i64 %i.px, %.0.i.i.i.i.i.i.i.i.i.i.i.i93 ; 2 uses
  %i.qp = sdiv i64 %i.qo, 4
  %i.qq = shl nsw i64 %i.qp, 2                    ; 2 uses
  %i.qr = add nsw i64 %i.qq, %.0.i.i.i.i.i.i.i.i.i.i.i.i93 ; 6 uses
  %i.qs = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i93, 0
  br i1 %i.qs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i94

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i92
  %min.iters.check399 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i93, 28
  br i1 %min.iters.check399, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.preheader510, label %vector.memcheck400

vector.memcheck400:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.preheader
  %i.qt = mul i64 %.sroa.33.4, %i.qf
  %i.qu = add i64 %i.qt, %.sroa.11208.4
  %i.qv = shl i64 %i.qu, 2
  %i.qw = add i64 %i.qv, %i.qd
  %i.qx = add i64 %.idx242, %i.pw
  %i.qy = sub i64 %i.qx, %i.qw
  %diff.check401 = icmp ugt i64 %i.qy, -32
  br i1 %diff.check401, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.preheader510, label %vector.ph402

vector.ph402:                                     ; preds = %vector.memcheck400
  %n.vec403 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i93, 9223372036854775800 ; 3 uses
  br label %vector.body404

vector.body404:                                   ; preds = %vector.body404, %vector.ph402
  %index405 = phi i64 [ 0, %vector.ph402 ], [ %index.next408, %vector.body404 ] ; 3 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %index405 ; 2 uses
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %index405 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  %wide.load406 = load <4 x i32>, ptr %i.ra, align 4, !tbaa !34
  %wide.load407 = load <4 x i32>, ptr %i.rb, align 4, !tbaa !34
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  store <4 x i32> %wide.load406, ptr %i.qz, align 4, !tbaa !34
  store <4 x i32> %wide.load407, ptr %i.rc, align 4, !tbaa !34
  %index.next408 = add nuw i64 %index405, 8       ; 2 uses
  %i.rd = icmp eq i64 %index.next408, %n.vec403
  br i1 %i.rd, label %middle.block409, label %vector.body404, !llvm.loop !91

middle.block409:                                  ; preds = %vector.body404
  %cmp.n410 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i93, %n.vec403
  br i1 %cmp.n410, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i94, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.preheader510

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.preheader510:   ; preds = %vector.memcheck400, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.preheader, %middle.block409
  %.05.i.i.i.i.i.i.i.i.i.i.i.i102.ph = phi i64 [ 0, %vector.memcheck400 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.preheader ], [ %n.vec403, %middle.block409 ] ; 3 uses
  %xtraiter540 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i93, 3 ; 2 uses
  %lcmp.mod541.not = icmp eq i64 %xtraiter540, 0
  br i1 %lcmp.mod541.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.preheader510, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i102.prol = phi i64 [ %i.rh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i102.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.preheader510 ] ; 3 uses
  %prol.iter542 = phi i64 [ %prol.iter542.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.preheader510 ]
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i102.prol
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i102.prol
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !34
  store i32 %i.rg, ptr %i.re, align 4, !tbaa !34
  %i.rh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i102.prol, 1 ; 2 uses
  %prol.iter542.next = add i64 %prol.iter542, 1   ; 2 uses
  %prol.iter542.cmp.not = icmp eq i64 %prol.iter542.next, %xtraiter540
  br i1 %prol.iter542.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.prol, !llvm.loop !92

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.preheader510
  %.05.i.i.i.i.i.i.i.i.i.i.i.i102.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i102.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.preheader510 ], [ %i.rh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.prol ]
  %i.ri = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i102.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i93
  %i.rj = icmp ugt i64 %i.ri, -4
  br i1 %i.rj, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i94, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101
  %.05.i.i.i.i.i.i.i.i.i.i.i.i102 = phi i64 [ %i.rz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i102.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.prol.loopexit ] ; 6 uses
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i102
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i102
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !34
  store i32 %i.rm, ptr %i.rk, align 4, !tbaa !34
  %i.rn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i102, 1 ; 2 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.rn
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %i.rn
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !34
  store i32 %i.rq, ptr %i.ro, align 4, !tbaa !34
  %i.rr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i102, 2 ; 2 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.rr
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %i.rr
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !34
  store i32 %i.ru, ptr %i.rs, align 4, !tbaa !34
  %i.rv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i102, 3 ; 2 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.rv
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %i.rv
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !34
  store i32 %i.ry, ptr %i.rw, align 4, !tbaa !34
  %i.rz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i102, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i103.3 = icmp eq i64 %i.rz, %.0.i.i.i.i.i.i.i.i.i.i.i.i93
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i103.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i94, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101, !llvm.loop !93

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i94: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i101, %middle.block409, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i92
  %i.sa = icmp sgt i64 %i.qo, 3
  br i1 %i.sa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i99, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i95

._crit_edge.i.i.i.i.i.i.i.i.i.i.i95:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i99, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i94
  %i.sb = icmp slt i64 %i.qr, %i.px
  br i1 %i.sb, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.preheader, label %._crit_edge.i105

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.preheader:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i95
  %i.sc = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i93, %i.qq
  %i.sd = sub i64 %i.px, %i.sc                    ; 3 uses
  %min.iters.check415 = icmp ult i64 %i.sd, 28
  br i1 %min.iters.check415, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.preheader509, label %vector.memcheck416

vector.memcheck416:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.preheader
  %i.se = add i64 %i.dz, %.sroa.11208.0
  %i.sf = add i64 %i.se, %i.qb
  %i.sg = add i64 %i.sf, %i.ma
  %i.sh = add i64 %i.sg, %i.ia
  %i.si = add i64 %i.sh, %i.qg
  %i.sj = shl i64 %i.si, 2
  %i.sk = add i64 %i.sj, %i.qd
  %i.sl = add i64 %.idx242, %i.pw
  %i.sm = sub i64 %i.sl, %i.sk
  %diff.check417 = icmp ugt i64 %i.sm, -32
  br i1 %diff.check417, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.preheader509, label %vector.ph418

vector.ph418:                                     ; preds = %vector.memcheck416
  %n.vec419 = and i64 %i.sd, -8                   ; 3 uses
  %i.sn = add i64 %i.qr, %n.vec419
  br label %vector.body420

vector.body420:                                   ; preds = %vector.body420, %vector.ph418
  %index421 = phi i64 [ 0, %vector.ph418 ], [ %index.next424, %vector.body420 ] ; 2 uses
  %i.so = add i64 %i.qr, %index421                ; 2 uses
  %i.sp = getelementptr inbounds [4 x i8], ptr %i.qh, i64 %i.so ; 2 uses
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.py, i64 %i.so ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %wide.load422 = load <4 x i32>, ptr %i.sq, align 4, !tbaa !34
  %wide.load423 = load <4 x i32>, ptr %i.sr, align 4, !tbaa !34
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  store <4 x i32> %wide.load422, ptr %i.sp, align 4, !tbaa !34
  store <4 x i32> %wide.load423, ptr %i.ss, align 4, !tbaa !34
  %index.next424 = add nuw i64 %index421, 8       ; 2 uses
  %i.st = icmp eq i64 %index.next424, %n.vec419
  br i1 %i.st, label %middle.block425, label %vector.body420, !llvm.loop !94

middle.block425:                                  ; preds = %vector.body420
  %cmp.n426 = icmp eq i64 %i.sd, %n.vec419
  br i1 %cmp.n426, label %._crit_edge.i105, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.preheader509

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.preheader509:  ; preds = %vector.memcheck416, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.preheader, %middle.block425
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i97.ph = phi i64 [ %i.qr, %vector.memcheck416 ], [ %i.qr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.preheader ], [ %i.sn, %middle.block425 ] ; 4 uses
  %i.su = sub i64 %i.px, %.05.i18.i.i.i.i.i.i.i.i.i.i.i97.ph
  %xtraiter543 = and i64 %i.su, 3                 ; 2 uses
  %lcmp.mod544.not = icmp eq i64 %xtraiter543, 0
  br i1 %lcmp.mod544.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.prol:          ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.preheader509, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i97.prol = phi i64 [ %i.sy, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i97.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.preheader509 ] ; 3 uses
  %prol.iter545 = phi i64 [ %prol.iter545.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.preheader509 ]
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.qh, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i97.prol
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.py, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i97.prol
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !34
  store i32 %i.sx, ptr %i.sv, align 4, !tbaa !34
  %i.sy = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i97.prol, 1 ; 2 uses
  %prol.iter545.next = add i64 %prol.iter545, 1   ; 2 uses
  %prol.iter545.cmp.not = icmp eq i64 %prol.iter545.next, %xtraiter543
  br i1 %prol.iter545.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.prol, !llvm.loop !95

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.preheader509
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i97.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i97.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.preheader509 ], [ %i.sy, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.prol ]
  %i.sz = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i97.ph, %i.px
  %i.ta = icmp ugt i64 %i.sz, -4
  br i1 %i.ta, label %._crit_edge.i105, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96:               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i97 = phi i64 [ %i.tq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i97.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.prol.loopexit ] ; 6 uses
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.qh, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i97
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.py, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i97
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !34
  store i32 %i.td, ptr %i.tb, align 4, !tbaa !34
  %i.te = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i97, 1 ; 2 uses
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.qh, i64 %i.te
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.py, i64 %i.te
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !34
  store i32 %i.th, ptr %i.tf, align 4, !tbaa !34
  %i.ti = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i97, 2 ; 2 uses
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.qh, i64 %i.ti
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.py, i64 %i.ti
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !34
  store i32 %i.tl, ptr %i.tj, align 4, !tbaa !34
  %i.tm = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i97, 3 ; 2 uses
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.qh, i64 %i.tm
  %i.to = getelementptr inbounds [4 x i8], ptr %i.py, i64 %i.tm
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !34
  store i32 %i.tp, ptr %i.tn, align 4, !tbaa !34
  %i.tq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i97, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i98.3 = icmp eq i64 %i.tq, %i.px
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i98.3, label %._crit_edge.i105, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96, !llvm.loop !96

.lr.ph.i.i.i.i.i.i.i.i.i.i.i99:                   ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i94, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i99
  %.021.i.i.i.i.i.i.i.i.i.i.i100 = phi i64 [ %i.tu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i99 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i93, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i94 ] ; 3 uses
  %i.tr = getelementptr inbounds [4 x i8], ptr %i.qh, i64 %.021.i.i.i.i.i.i.i.i.i.i.i100
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.py, i64 %.021.i.i.i.i.i.i.i.i.i.i.i100
  %i.tt = load <2 x i64>, ptr %i.ts, align 1, !tbaa !39
  store <2 x i64> %i.tt, ptr %i.tr, align 16, !tbaa !39
  %i.tu = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i100, 4 ; 2 uses
  %i.tv = icmp slt i64 %i.tu, %i.qr
  br i1 %i.tv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i99, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i95, !llvm.loop !56

._crit_edge.i105:                                 ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i96, %middle.block425, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i95
  %i.tw = add nuw nsw i64 %.sroa.33.4, 1          ; 2 uses
  %i.tx = load ptr, ptr %0, align 8, !tbaa !16, !noalias !141 ; 2 uses
  %i.ty = ptrtoaddr ptr %i.tx to i64              ; 2 uses
  %i.tz = load i64, ptr %i.a, align 8, !tbaa !13, !noalias !141 ; 10 uses
  %.idx243 = mul i64 %i.tz, 12                    ; 3 uses
  %i.ua = getelementptr inbounds i8, ptr %i.tx, i64 %.idx243 ; 13 uses
  %i.ub = load i64, ptr %i.z, align 8, !tbaa !33
  %i.uc = icmp eq i64 %i.tw, %i.ub                ; 3 uses
  %i.ud = select i1 %i.uc, i64 %.sroa.62.4, i64 0 ; 3 uses
  %.sroa.11208.5 = add nsw i64 %i.ud, %.sroa.11208.4 ; 4 uses
  %.sroa.33.5 = select i1 %i.uc, i64 0, i64 %i.tw ; 3 uses
  %.sroa.62.5 = select i1 %i.uc, i64 %i.tz, i64 %.sroa.62.4
  %i.ue = load ptr, ptr %1, align 8, !tbaa !16, !noalias !142 ; 2 uses
  %i.uf = ptrtoaddr ptr %i.ue to i64              ; 2 uses
  %i.ug = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %.sroa.11208.5
  %i.uh = load i64, ptr %i.j, align 8, !tbaa !13, !noalias !142 ; 2 uses
  %i.ui = mul nsw i64 %i.uh, %.sroa.33.5          ; 2 uses
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %i.ui ; 14 uses
  %i.uk = ptrtoint ptr %i.uj to i64               ; 2 uses
  %i.ul = and i64 %i.uk, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i110 = icmp eq i64 %i.ul, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i110, label %bb.h, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i111

bb.h:                                             ; preds = %._crit_edge.i105
  %i.um = lshr exact i64 %i.uk, 2
  %i.un = sub nsw i64 0, %i.um
  %i.uo = and i64 %i.un, 3
  %i.up = call i64 @llvm.smin.i64(i64 %i.uo, i64 %i.tz)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i111

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i111: ; preds = %bb.h, %._crit_edge.i105
  %.0.i.i.i.i.i.i.i.i.i.i.i.i112 = phi i64 [ %i.up, %bb.h ], [ %i.tz, %._crit_edge.i105 ] ; 11 uses
  %i.uq = sub nsw i64 %i.tz, %.0.i.i.i.i.i.i.i.i.i.i.i.i112 ; 2 uses
  %i.ur = sdiv i64 %i.uq, 4
  %i.us = shl nsw i64 %i.ur, 2                    ; 2 uses
  %i.ut = add nsw i64 %i.us, %.0.i.i.i.i.i.i.i.i.i.i.i.i112 ; 6 uses
  %i.uu = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i112, 0
  br i1 %i.uu, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i113

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i111
  %min.iters.check431 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i112, 28
  br i1 %min.iters.check431, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.preheader508, label %vector.memcheck432

vector.memcheck432:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.preheader
  %i.uv = mul i64 %.sroa.33.5, %i.uh
  %i.uw = add i64 %i.uv, %.sroa.11208.5
  %i.ux = shl i64 %i.uw, 2
  %i.uy = add i64 %i.ux, %i.uf
  %i.uz = add i64 %.idx243, %i.ty
  %i.va = sub i64 %i.uz, %i.uy
  %diff.check433 = icmp ugt i64 %i.va, -32
  br i1 %diff.check433, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.preheader508, label %vector.ph434

vector.ph434:                                     ; preds = %vector.memcheck432
  %n.vec435 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i112, 9223372036854775800 ; 3 uses
  br label %vector.body436

vector.body436:                                   ; preds = %vector.body436, %vector.ph434
  %index437 = phi i64 [ 0, %vector.ph434 ], [ %index.next440, %vector.body436 ] ; 3 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %index437 ; 2 uses
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %index437 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 16
  %wide.load438 = load <4 x i32>, ptr %i.vc, align 4, !tbaa !34
  %wide.load439 = load <4 x i32>, ptr %i.vd, align 4, !tbaa !34
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  store <4 x i32> %wide.load438, ptr %i.vb, align 4, !tbaa !34
  store <4 x i32> %wide.load439, ptr %i.ve, align 4, !tbaa !34
  %index.next440 = add nuw i64 %index437, 8       ; 2 uses
  %i.vf = icmp eq i64 %index.next440, %n.vec435
  br i1 %i.vf, label %middle.block441, label %vector.body436, !llvm.loop !101

middle.block441:                                  ; preds = %vector.body436
  %cmp.n442 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i112, %n.vec435
  br i1 %cmp.n442, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i113, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.preheader508

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.preheader508:   ; preds = %vector.memcheck432, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.preheader, %middle.block441
  %.05.i.i.i.i.i.i.i.i.i.i.i.i121.ph = phi i64 [ 0, %vector.memcheck432 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.preheader ], [ %n.vec435, %middle.block441 ] ; 3 uses
  %xtraiter546 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i112, 3 ; 2 uses
  %lcmp.mod547.not = icmp eq i64 %xtraiter546, 0
  br i1 %lcmp.mod547.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.preheader508, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i121.prol = phi i64 [ %i.vj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i121.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.preheader508 ] ; 3 uses
  %prol.iter548 = phi i64 [ %prol.iter548.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.preheader508 ]
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i121.prol
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i121.prol
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !34
  store i32 %i.vi, ptr %i.vg, align 4, !tbaa !34
  %i.vj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i121.prol, 1 ; 2 uses
  %prol.iter548.next = add i64 %prol.iter548, 1   ; 2 uses
  %prol.iter548.cmp.not = icmp eq i64 %prol.iter548.next, %xtraiter546
  br i1 %prol.iter548.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.prol, !llvm.loop !102

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.preheader508
  %.05.i.i.i.i.i.i.i.i.i.i.i.i121.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i121.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.preheader508 ], [ %i.vj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.prol ]
  %i.vk = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i121.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i112
  %i.vl = icmp ugt i64 %i.vk, -4
  br i1 %i.vl, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i113, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120
  %.05.i.i.i.i.i.i.i.i.i.i.i.i121 = phi i64 [ %i.wb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i121.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.prol.loopexit ] ; 6 uses
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i121
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i121
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !34
  store i32 %i.vo, ptr %i.vm, align 4, !tbaa !34
  %i.vp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i121, 1 ; 2 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %i.vp
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %i.vp
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !34
  store i32 %i.vs, ptr %i.vq, align 4, !tbaa !34
  %i.vt = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i121, 2 ; 2 uses
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %i.vt
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %i.vt
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !34
  store i32 %i.vw, ptr %i.vu, align 4, !tbaa !34
  %i.vx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i121, 3 ; 2 uses
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %i.vx
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %i.vx
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !34
  store i32 %i.wa, ptr %i.vy, align 4, !tbaa !34
  %i.wb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i121, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i122.3 = icmp eq i64 %i.wb, %.0.i.i.i.i.i.i.i.i.i.i.i.i112
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i122.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i113, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120, !llvm.loop !103

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i113: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i120, %middle.block441, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i111
  %i.wc = icmp sgt i64 %i.uq, 3
  br i1 %i.wc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i118, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i114

._crit_edge.i.i.i.i.i.i.i.i.i.i.i114:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i118, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i113
  %i.wd = icmp slt i64 %i.ut, %i.tz
  br i1 %i.wd, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.preheader, label %._crit_edge.i124

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i114
  %i.we = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i112, %i.us
  %i.wf = sub i64 %i.tz, %i.we                    ; 3 uses
  %min.iters.check447 = icmp ult i64 %i.wf, 32
  br i1 %min.iters.check447, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.preheader507, label %vector.memcheck448

vector.memcheck448:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.preheader
  %i.wg = add i64 %i.dz, %.sroa.11208.0
  %i.wh = add i64 %i.wg, %i.ud
  %i.wi = add i64 %i.wh, %i.qb
  %i.wj = add i64 %i.wi, %i.ma
  %i.wk = add i64 %i.wj, %i.ia
  %i.wl = add i64 %i.wk, %i.ui
  %i.wm = shl i64 %i.wl, 2
  %i.wn = add i64 %i.wm, %i.uf
  %i.wo = add i64 %.idx243, %i.ty
  %i.wp = sub i64 %i.wo, %i.wn
  %diff.check449 = icmp ugt i64 %i.wp, -32
  br i1 %diff.check449, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.preheader507, label %vector.ph450

vector.ph450:                                     ; preds = %vector.memcheck448
  %n.vec451 = and i64 %i.wf, -8                   ; 3 uses
  %i.wq = add i64 %i.ut, %n.vec451
  br label %vector.body452

vector.body452:                                   ; preds = %vector.body452, %vector.ph450
  %index453 = phi i64 [ 0, %vector.ph450 ], [ %index.next456, %vector.body452 ] ; 2 uses
  %i.wr = add i64 %i.ut, %index453                ; 2 uses
  %i.ws = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %i.wr ; 2 uses
  %i.wt = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.wr ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  %wide.load454 = load <4 x i32>, ptr %i.wt, align 4, !tbaa !34
  %wide.load455 = load <4 x i32>, ptr %i.wu, align 4, !tbaa !34
  %i.wv = getelementptr inbounds nuw i8, ptr %i.ws, i64 16
  store <4 x i32> %wide.load454, ptr %i.ws, align 4, !tbaa !34
  store <4 x i32> %wide.load455, ptr %i.wv, align 4, !tbaa !34
  %index.next456 = add nuw i64 %index453, 8       ; 2 uses
  %i.ww = icmp eq i64 %index.next456, %n.vec451
  br i1 %i.ww, label %middle.block457, label %vector.body452, !llvm.loop !104

middle.block457:                                  ; preds = %vector.body452
  %cmp.n458 = icmp eq i64 %i.wf, %n.vec451
  br i1 %cmp.n458, label %._crit_edge.i124, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.preheader507

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.preheader507: ; preds = %vector.memcheck448, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.preheader, %middle.block457
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i116.ph = phi i64 [ %i.ut, %vector.memcheck448 ], [ %i.ut, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.preheader ], [ %i.wq, %middle.block457 ] ; 4 uses
  %i.wx = sub i64 %i.tz, %.05.i18.i.i.i.i.i.i.i.i.i.i.i116.ph
  %xtraiter549 = and i64 %i.wx, 3                 ; 2 uses
  %lcmp.mod550.not = icmp eq i64 %xtraiter549, 0
  br i1 %lcmp.mod550.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.preheader507, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i116.prol = phi i64 [ %i.xb, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i116.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.preheader507 ] ; 3 uses
  %prol.iter551 = phi i64 [ %prol.iter551.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.preheader507 ]
  %i.wy = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i116.prol
  %i.wz = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i116.prol
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !34
  store i32 %i.xa, ptr %i.wy, align 4, !tbaa !34
  %i.xb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i116.prol, 1 ; 2 uses
  %prol.iter551.next = add i64 %prol.iter551, 1   ; 2 uses
  %prol.iter551.cmp.not = icmp eq i64 %prol.iter551.next, %xtraiter549
  br i1 %prol.iter551.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.prol, !llvm.loop !105

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.preheader507
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i116.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i116.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.preheader507 ], [ %i.xb, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.prol ]
  %i.xc = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i116.ph, %i.tz
  %i.xd = icmp ugt i64 %i.xc, -4
  br i1 %i.xd, label %._crit_edge.i124, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i116 = phi i64 [ %i.xt, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i116.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.prol.loopexit ] ; 6 uses
  %i.xe = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i116
  %i.xf = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i116
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !34
  store i32 %i.xg, ptr %i.xe, align 4, !tbaa !34
  %i.xh = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i116, 1 ; 2 uses
  %i.xi = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %i.xh
  %i.xj = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.xh
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !34
  store i32 %i.xk, ptr %i.xi, align 4, !tbaa !34
  %i.xl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i116, 2 ; 2 uses
  %i.xm = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %i.xl
  %i.xn = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.xl
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !34
  store i32 %i.xo, ptr %i.xm, align 4, !tbaa !34
  %i.xp = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i116, 3 ; 2 uses
  %i.xq = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %i.xp
  %i.xr = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.xp
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !34
  store i32 %i.xs, ptr %i.xq, align 4, !tbaa !34
  %i.xt = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i116, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i117.3 = icmp eq i64 %i.xt, %i.tz
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i117.3, label %._crit_edge.i124, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115, !llvm.loop !106

.lr.ph.i.i.i.i.i.i.i.i.i.i.i118:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i113, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i118
  %.021.i.i.i.i.i.i.i.i.i.i.i119 = phi i64 [ %i.xx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i118 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i112, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i113 ] ; 3 uses
  %i.xu = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %.021.i.i.i.i.i.i.i.i.i.i.i119
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %.021.i.i.i.i.i.i.i.i.i.i.i119
  %i.xw = load <2 x i64>, ptr %i.xv, align 1, !tbaa !39
  store <2 x i64> %i.xw, ptr %i.xu, align 16, !tbaa !39
  %i.xx = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i119, 4 ; 2 uses
  %i.xy = icmp slt i64 %i.xx, %i.ut
  br i1 %i.xy, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i118, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i114, !llvm.loop !56

._crit_edge.i124:                                 ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i115, %middle.block457, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i114
  %i.xz = add nuw nsw i64 %.sroa.33.5, 1          ; 2 uses
  %i.ya = load ptr, ptr %0, align 8, !tbaa !16, !noalias !143 ; 14 uses
  %i.yb = ptrtoaddr ptr %i.ya to i64              ; 2 uses
  %i.yc = load i64, ptr %i.a, align 8, !tbaa !13, !noalias !143 ; 8 uses
  %i.yd = load i64, ptr %i.z, align 8, !tbaa !33
  %i.ye = icmp eq i64 %i.xz, %i.yd                ; 2 uses
  %.sroa.33.6 = select i1 %i.ye, i64 0, i64 %i.xz ; 2 uses
  %i.yf = select i1 %i.ye, i64 %.sroa.62.5, i64 0 ; 3 uses
  %i.yg = load ptr, ptr %1, align 8, !tbaa !16, !noalias !144 ; 2 uses
  %i.yh = ptrtoaddr ptr %i.yg to i64              ; 2 uses
  %i.yi = getelementptr [4 x i8], ptr %i.yg, i64 %.sroa.11208.5
  %i.yj = getelementptr [4 x i8], ptr %i.yi, i64 %i.yf
  %i.yk = load i64, ptr %i.j, align 8, !tbaa !13, !noalias !144 ; 2 uses
  %i.yl = mul nsw i64 %i.yk, %.sroa.33.6          ; 2 uses
  %i.ym = getelementptr inbounds [4 x i8], ptr %i.yj, i64 %i.yl ; 14 uses
  %i.yn = ptrtoint ptr %i.ym to i64               ; 2 uses
  %i.yo = and i64 %i.yn, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i129 = icmp eq i64 %i.yo, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i129, label %bb.i, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i130

bb.i:                                             ; preds = %._crit_edge.i124
  %i.yp = lshr exact i64 %i.yn, 2
  %i.yq = sub nsw i64 0, %i.yp
  %i.yr = and i64 %i.yq, 3
  %i.ys = call i64 @llvm.smin.i64(i64 %i.yr, i64 %i.yc)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i130

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i130: ; preds = %bb.i, %._crit_edge.i124
  %.0.i.i.i.i.i.i.i.i.i.i.i.i131 = phi i64 [ %i.ys, %bb.i ], [ %i.yc, %._crit_edge.i124 ] ; 11 uses
  %i.yt = sub nsw i64 %i.yc, %.0.i.i.i.i.i.i.i.i.i.i.i.i131 ; 2 uses
  %i.yu = sdiv i64 %i.yt, 4
  %i.yv = shl nsw i64 %i.yu, 2                    ; 2 uses
  %i.yw = add nsw i64 %i.yv, %.0.i.i.i.i.i.i.i.i.i.i.i.i131 ; 6 uses
  %i.yx = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i131, 0
  br i1 %i.yx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i132

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i130
  %min.iters.check463 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i131, 28
  br i1 %min.iters.check463, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.preheader506, label %vector.memcheck464

vector.memcheck464:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.preheader
  %i.yy = mul i64 %.sroa.33.6, %i.yk
  %i.yz = add i64 %i.yy, %i.yf
  %i.za = add i64 %i.yz, %.sroa.11208.5
  %i.zb = shl i64 %i.za, 2
  %i.zc = add i64 %i.zb, %i.yh
  %i.zd = sub i64 %i.yb, %i.zc
  %diff.check465 = icmp ugt i64 %i.zd, -32
  br i1 %diff.check465, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.preheader506, label %vector.ph466

vector.ph466:                                     ; preds = %vector.memcheck464
  %n.vec467 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i131, 9223372036854775800 ; 3 uses
  br label %vector.body468

vector.body468:                                   ; preds = %vector.body468, %vector.ph466
  %index469 = phi i64 [ 0, %vector.ph466 ], [ %index.next472, %vector.body468 ] ; 3 uses
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %index469 ; 2 uses
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %index469 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 16
  %wide.load470 = load <4 x i32>, ptr %i.zf, align 4, !tbaa !34
  %wide.load471 = load <4 x i32>, ptr %i.zg, align 4, !tbaa !34
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  store <4 x i32> %wide.load470, ptr %i.ze, align 4, !tbaa !34
  store <4 x i32> %wide.load471, ptr %i.zh, align 4, !tbaa !34
  %index.next472 = add nuw i64 %index469, 8       ; 2 uses
  %i.zi = icmp eq i64 %index.next472, %n.vec467
  br i1 %i.zi, label %middle.block473, label %vector.body468, !llvm.loop !111

middle.block473:                                  ; preds = %vector.body468
  %cmp.n474 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i131, %n.vec467
  br i1 %cmp.n474, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i132, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.preheader506

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.preheader506:   ; preds = %vector.memcheck464, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.preheader, %middle.block473
  %.05.i.i.i.i.i.i.i.i.i.i.i.i140.ph = phi i64 [ 0, %vector.memcheck464 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.preheader ], [ %n.vec467, %middle.block473 ] ; 3 uses
  %xtraiter552 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i131, 3 ; 2 uses
  %lcmp.mod553.not = icmp eq i64 %xtraiter552, 0
  br i1 %lcmp.mod553.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.preheader506, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i140.prol = phi i64 [ %i.zm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i140.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.preheader506 ] ; 3 uses
  %prol.iter554 = phi i64 [ %prol.iter554.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.preheader506 ]
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i140.prol
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i140.prol
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !34
  store i32 %i.zl, ptr %i.zj, align 4, !tbaa !34
  %i.zm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i140.prol, 1 ; 2 uses
  %prol.iter554.next = add i64 %prol.iter554, 1   ; 2 uses
  %prol.iter554.cmp.not = icmp eq i64 %prol.iter554.next, %xtraiter552
  br i1 %prol.iter554.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.prol, !llvm.loop !112

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.preheader506
  %.05.i.i.i.i.i.i.i.i.i.i.i.i140.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i140.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.preheader506 ], [ %i.zm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.prol ]
  %i.zn = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i140.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i131
  %i.zo = icmp ugt i64 %i.zn, -4
  br i1 %i.zo, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i132, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139
  %.05.i.i.i.i.i.i.i.i.i.i.i.i140 = phi i64 [ %i.aae, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i140.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.prol.loopexit ] ; 6 uses
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i140
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i140
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !34
  store i32 %i.zr, ptr %i.zp, align 4, !tbaa !34
  %i.zs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i140, 1 ; 2 uses
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %i.zs
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %i.zs
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !34
  store i32 %i.zv, ptr %i.zt, align 4, !tbaa !34
  %i.zw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i140, 2 ; 2 uses
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %i.zw
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %i.zw
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !34
  store i32 %i.zz, ptr %i.zx, align 4, !tbaa !34
  %i.aaa = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i140, 3 ; 2 uses
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %i.aaa
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %i.aaa
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !34
  store i32 %i.aad, ptr %i.aab, align 4, !tbaa !34
  %i.aae = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i140, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i141.3 = icmp eq i64 %i.aae, %.0.i.i.i.i.i.i.i.i.i.i.i.i131
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i141.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i132, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139, !llvm.loop !113

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i132: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i139, %middle.block473, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i130
  %i.aaf = icmp sgt i64 %i.yt, 3
  br i1 %i.aaf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i137, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i133

._crit_edge.i.i.i.i.i.i.i.i.i.i.i133:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i137, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i132
  %i.aag = icmp slt i64 %i.yw, %i.yc
  br i1 %i.aag, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.preheader, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_5BlockIKS2_Lin1ELi1ELb1EEEEERS3_RKNS_9DenseBaseIT_EE.exit142

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i133
  %i.aah = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i131, %i.yv
  %i.aai = sub i64 %i.yc, %i.aah                  ; 3 uses
  %min.iters.check479 = icmp ult i64 %i.aai, 32
  br i1 %min.iters.check479, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.preheader505, label %vector.memcheck480

vector.memcheck480:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.preheader
  %i.aaj = add i64 %i.dz, %.sroa.11208.0
  %i.aak = add i64 %i.aaj, %i.yf
  %i.aal = add i64 %i.aak, %i.ud
  %i.aam = add i64 %i.aal, %i.qb
  %i.aan = add i64 %i.aam, %i.ma
  %i.aao = add i64 %i.aan, %i.ia
  %i.aap = add i64 %i.aao, %i.yl
  %i.aaq = shl i64 %i.aap, 2
  %i.aar = add i64 %i.aaq, %i.yh
  %i.aas = sub i64 %i.yb, %i.aar
  %diff.check481 = icmp ugt i64 %i.aas, -32
  br i1 %diff.check481, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.preheader505, label %vector.ph482

vector.ph482:                                     ; preds = %vector.memcheck480
  %n.vec483 = and i64 %i.aai, -8                  ; 3 uses
  %i.aat = add i64 %i.yw, %n.vec483
  br label %vector.body484

vector.body484:                                   ; preds = %vector.body484, %vector.ph482
  %index485 = phi i64 [ 0, %vector.ph482 ], [ %index.next488, %vector.body484 ] ; 2 uses
  %i.aau = add i64 %i.yw, %index485               ; 2 uses
  %i.aav = getelementptr inbounds [4 x i8], ptr %i.ym, i64 %i.aau ; 2 uses
  %i.aaw = getelementptr inbounds [4 x i8], ptr %i.ya, i64 %i.aau ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 16
  %wide.load486 = load <4 x i32>, ptr %i.aaw, align 4, !tbaa !34
  %wide.load487 = load <4 x i32>, ptr %i.aax, align 4, !tbaa !34
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aav, i64 16
  store <4 x i32> %wide.load486, ptr %i.aav, align 4, !tbaa !34
  store <4 x i32> %wide.load487, ptr %i.aay, align 4, !tbaa !34
  %index.next488 = add nuw i64 %index485, 8       ; 2 uses
  %i.aaz = icmp eq i64 %index.next488, %n.vec483
  br i1 %i.aaz, label %middle.block489, label %vector.body484, !llvm.loop !114

middle.block489:                                  ; preds = %vector.body484
  %cmp.n490 = icmp eq i64 %i.aai, %n.vec483
  br i1 %cmp.n490, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_5BlockIKS2_Lin1ELi1ELb1EEEEERS3_RKNS_9DenseBaseIT_EE.exit142, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.preheader505

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.preheader505: ; preds = %vector.memcheck480, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.preheader, %middle.block489
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i135.ph = phi i64 [ %i.yw, %vector.memcheck480 ], [ %i.yw, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.preheader ], [ %i.aat, %middle.block489 ] ; 4 uses
  %i.aba = sub i64 %i.yc, %.05.i18.i.i.i.i.i.i.i.i.i.i.i135.ph
  %xtraiter555 = and i64 %i.aba, 3                ; 2 uses
  %lcmp.mod556.not = icmp eq i64 %xtraiter555, 0
  br i1 %lcmp.mod556.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.preheader505, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i135.prol = phi i64 [ %i.abe, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i135.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.preheader505 ] ; 3 uses
  %prol.iter557 = phi i64 [ %prol.iter557.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.preheader505 ]
  %i.abb = getelementptr inbounds [4 x i8], ptr %i.ym, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i135.prol
  %i.abc = getelementptr inbounds [4 x i8], ptr %i.ya, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i135.prol
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !34
  store i32 %i.abd, ptr %i.abb, align 4, !tbaa !34
  %i.abe = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i135.prol, 1 ; 2 uses
  %prol.iter557.next = add i64 %prol.iter557, 1   ; 2 uses
  %prol.iter557.cmp.not = icmp eq i64 %prol.iter557.next, %xtraiter555
  br i1 %prol.iter557.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.prol, !llvm.loop !115

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.preheader505
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i135.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i135.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.preheader505 ], [ %i.abe, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.prol ]
  %i.abf = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i135.ph, %i.yc
  %i.abg = icmp ugt i64 %i.abf, -4
  br i1 %i.abg, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_5BlockIKS2_Lin1ELi1ELb1EEEEERS3_RKNS_9DenseBaseIT_EE.exit142, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i135 = phi i64 [ %i.abw, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i135.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.prol.loopexit ] ; 6 uses
  %i.abh = getelementptr inbounds [4 x i8], ptr %i.ym, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i135
  %i.abi = getelementptr inbounds [4 x i8], ptr %i.ya, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i135
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !34
  store i32 %i.abj, ptr %i.abh, align 4, !tbaa !34
  %i.abk = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i135, 1 ; 2 uses
  %i.abl = getelementptr inbounds [4 x i8], ptr %i.ym, i64 %i.abk
  %i.abm = getelementptr inbounds [4 x i8], ptr %i.ya, i64 %i.abk
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !34
  store i32 %i.abn, ptr %i.abl, align 4, !tbaa !34
  %i.abo = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i135, 2 ; 2 uses
  %i.abp = getelementptr inbounds [4 x i8], ptr %i.ym, i64 %i.abo
  %i.abq = getelementptr inbounds [4 x i8], ptr %i.ya, i64 %i.abo
  %i.abr = load i32, ptr %i.abq, align 4, !tbaa !34
  store i32 %i.abr, ptr %i.abp, align 4, !tbaa !34
  %i.abs = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i135, 3 ; 2 uses
  %i.abt = getelementptr inbounds [4 x i8], ptr %i.ym, i64 %i.abs
  %i.abu = getelementptr inbounds [4 x i8], ptr %i.ya, i64 %i.abs
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !34
  store i32 %i.abv, ptr %i.abt, align 4, !tbaa !34
  %i.abw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i135, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i136.3 = icmp eq i64 %i.abw, %i.yc
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i136.3, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_5BlockIKS2_Lin1ELi1ELb1EEEEERS3_RKNS_9DenseBaseIT_EE.exit142, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134, !llvm.loop !116

.lr.ph.i.i.i.i.i.i.i.i.i.i.i137:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i132, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i137
  %.021.i.i.i.i.i.i.i.i.i.i.i138 = phi i64 [ %i.aca, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i137 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i131, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i132 ] ; 3 uses
  %i.abx = getelementptr inbounds [4 x i8], ptr %i.ym, i64 %.021.i.i.i.i.i.i.i.i.i.i.i138
  %i.aby = getelementptr inbounds [4 x i8], ptr %i.ya, i64 %.021.i.i.i.i.i.i.i.i.i.i.i138
  %i.abz = load <2 x i64>, ptr %i.aby, align 1, !tbaa !39
  store <2 x i64> %i.abz, ptr %i.abx, align 16, !tbaa !39
  %i.aca = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i138, 4 ; 2 uses
  %i.acb = icmp slt i64 %i.aca, %i.yw
  br i1 %i.acb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i137, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i133, !llvm.loop !56

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_5BlockIKS2_Lin1ELi1ELb1EEEEERS3_RKNS_9DenseBaseIT_EE.exit142: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i134, %middle.block489, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i133
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.acc = load ptr, ptr %1, align 8, !tbaa !16   ; 7 uses
  %i.acd = load i64, ptr %i.j, align 8, !tbaa !13 ; 6 uses
  %i.ace = load i64, ptr %i.z, align 8, !tbaa !33 ; 6 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.acd, 0     ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %.not8.i.i.i.i.i.i.i = icmp eq i64 %i.ace, 0    ; 2 uses
  %or.cond.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_15PlainObjectBaseIS1_EEEERKT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_5BlockIKS2_Lin1ELi1ELb1EEEEERS3_RKNS_9DenseBaseIT_EE.exit142
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i, %.not8.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ach = sdiv i64 9223372036854775807, %i.ace
  %i.aci = icmp sgt i64 %i.acd, %i.ach
  br i1 %i.aci, label %.noexc.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.k
  %i.acj = call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.acj, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.acj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.ack = mul nsw i64 %i.ace, %i.acd             ; 11 uses
  %.not.i = icmp eq i64 %i.ack, 0
  br i1 %.not.i, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i
  store i64 %i.acd, ptr %i.acf, align 8, !tbaa !13
  store i64 %i.ace, ptr %i.acg, align 8, !tbaa !33
  br label %._crit_edge.i.i.i.i.i.i.i

bb.l:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i
  %i.acl = icmp sgt i64 %i.ack, 0
  br i1 %i.acl, label %bb.m, label %.thread281

.thread281:                                       ; preds = %bb.l
  store i64 %i.acd, ptr %i.acf, align 8, !tbaa !13
  store i64 %i.ace, ptr %i.acg, align 8, !tbaa !33
  %.nonneg = sub i64 0, %i.ack
  %i.acm = and i64 %.nonneg, -4
  %i.acn = sub i64 0, %i.acm
  br label %._crit_edge.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.aco = icmp samesign ugt i64 %i.ack, 4611686018427387903
  br i1 %i.aco, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.noexc:                                           ; preds = %bb.m
  %i.acp = call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.acp, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.acp, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.m
  %i.acq = shl nuw i64 %i.ack, 2
  %i.acr = call noalias ptr @malloc(i64 noundef %i.acq) #15 ; 10 uses
  %i.acs = icmp eq ptr %i.acr, null
  br i1 %i.acs, label %.noexc144, label %bb.n

.noexc144:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.act = call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.act, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.act, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

bb.n:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  store ptr %i.acr, ptr %7, align 8, !tbaa !16
  store i64 %i.acd, ptr %i.acf, align 8, !tbaa !13
  store i64 %i.ace, ptr %i.acg, align 8, !tbaa !33
  %i.acu = and i64 %i.ack, 4611686018427387900    ; 3 uses
  %i.acv = icmp samesign ugt i64 %i.ack, 3
  br i1 %i.acv, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.n
  %8 = add nsw i64 %i.ack, -4                     ; 2 uses
  %9 = lshr i64 %8, 2
  %10 = add nuw nsw i64 %9, 1                     ; 2 uses
  %xtraiter558 = and i64 %10, 3                   ; 3 uses
  %11 = icmp ult i64 %8, 12
  br i1 %11, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %10, 9223372036854775804
  br label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.loopexit.unr-lcssa:     ; preds = %.lr.ph.i.i.i.i.i.i.i
  %lcmp.mod559.not = icmp eq i64 %xtraiter558, 0
  br i1 %lcmp.mod559.not, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.epil.preheader:              ; preds = %._crit_edge.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.011.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %29, %._crit_edge.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod560 = icmp ne i64 %xtraiter558, 0
  call void @llvm.assume(i1 %lcmp.mod560)
  br label %.lr.ph.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.epil.preheader
  %.011.i.i.i.i.i.i.i.epil = phi i64 [ %15, %.lr.ph.i.i.i.i.i.i.i.epil ], [ %.011.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.epil.preheader ]
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.acr, i64 %.011.i.i.i.i.i.i.i.epil
  %13 = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %.011.i.i.i.i.i.i.i.epil
  %14 = load <2 x i64>, ptr %13, align 16, !tbaa !39
  store <2 x i64> %14, ptr %12, align 16, !tbaa !39
  %15 = add nuw nsw i64 %.011.i.i.i.i.i.i.i.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter558
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil, !llvm.loop !117

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.epil, %.thread281, %.thread, %bb.n
  %16 = phi i64 [ 0, %.thread ], [ %i.acn, %.thread281 ], [ %i.acu, %bb.n ], [ %i.acu, %.lr.ph.i.i.i.i.i.i.i.epil ], [ %i.acu, %._crit_edge.i.i.i.i.i.i.i.loopexit.unr-lcssa ] ; 5 uses
  %.pre.i143280 = phi ptr [ null, %.thread ], [ null, %.thread281 ], [ %i.acr, %bb.n ], [ %i.acr, %.lr.ph.i.i.i.i.i.i.i.epil ], [ %i.acr, %._crit_edge.i.i.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %i.acw = icmp slt i64 %16, %i.ack
  br i1 %i.acw, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_15PlainObjectBaseIS1_EEEERKT_.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.acx = sub i64 %i.ack, %16                    ; 3 uses
  %min.iters.check493 = icmp ult i64 %i.acx, 8
  br i1 %min.iters.check493, label %.lr.ph.i.i.i.i.i.i.i.i.preheader504, label %vector.ph494

vector.ph494:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec495 = and i64 %i.acx, -8                  ; 3 uses
  %i.acy = add i64 %16, %n.vec495
  br label %vector.body496

vector.body496:                                   ; preds = %vector.body496, %vector.ph494
  %index497 = phi i64 [ 0, %vector.ph494 ], [ %index.next500, %vector.body496 ] ; 2 uses
  %i.acz = add i64 %16, %index497                 ; 2 uses
  %i.ada = getelementptr inbounds [4 x i8], ptr %.pre.i143280, i64 %i.acz ; 2 uses
  %i.adb = getelementptr inbounds [4 x i8], ptr %i.acc, i64 %i.acz ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 16
  %wide.load498 = load <4 x i32>, ptr %i.adb, align 4, !tbaa !34
  %wide.load499 = load <4 x i32>, ptr %i.adc, align 4, !tbaa !34
  %i.add = getelementptr inbounds nuw i8, ptr %i.ada, i64 16
  store <4 x i32> %wide.load498, ptr %i.ada, align 4, !tbaa !34
  store <4 x i32> %wide.load499, ptr %i.add, align 4, !tbaa !34
  %index.next500 = add nuw i64 %index497, 8       ; 2 uses
  %i.ade = icmp eq i64 %index.next500, %n.vec495
  br i1 %i.ade, label %middle.block501, label %vector.body496, !llvm.loop !118

middle.block501:                                  ; preds = %vector.body496
  %cmp.n502 = icmp eq i64 %i.acx, %n.vec495
  br i1 %cmp.n502, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_15PlainObjectBaseIS1_EEEERKT_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader504

.lr.ph.i.i.i.i.i.i.i.i.preheader504:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block501
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ %16, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.acy, %middle.block501 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader504, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.adi, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader504 ] ; 3 uses
  %i.adf = getelementptr inbounds [4 x i8], ptr %.pre.i143280, i64 %.05.i.i.i.i.i.i.i.i
  %i.adg = getelementptr inbounds [4 x i8], ptr %i.acc, i64 %.05.i.i.i.i.i.i.i.i
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !34
  store i32 %i.adh, ptr %i.adf, align 4, !tbaa !34
  %i.adi = add nsw i64 %.05.i.i.i.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.adi, %i.ack
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_15PlainObjectBaseIS1_EEEERKT_.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !119

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.new
  %.011.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.new ], [ %29, %.lr.ph.i.i.i.i.i.i.i ] ; 6 uses
  %.011.i.i.i.i.i.i.i.a = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.new ], [ %i.adm, %.lr.ph.i.i.i.i.i.i.i ]
  %17 = getelementptr inbounds nuw [4 x i8], ptr %i.acr, i64 %.011.i.i.i.i.i.i.i
  %18 = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %.011.i.i.i.i.i.i.i
  %19 = load <2 x i64>, ptr %18, align 16, !tbaa !39
  store <2 x i64> %19, ptr %17, align 16, !tbaa !39
  %20 = or disjoint i64 %.011.i.i.i.i.i.i.i, 4    ; 2 uses
  %21 = getelementptr inbounds nuw [4 x i8], ptr %i.acr, i64 %20
  %22 = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %20
  %23 = load <2 x i64>, ptr %22, align 16, !tbaa !39
  store <2 x i64> %23, ptr %21, align 16, !tbaa !39
  %24 = or disjoint i64 %.011.i.i.i.i.i.i.i, 8    ; 2 uses
  %25 = getelementptr inbounds nuw [4 x i8], ptr %i.acr, i64 %24
  %26 = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %24
  %27 = load <2 x i64>, ptr %26, align 16, !tbaa !39
  store <2 x i64> %27, ptr %25, align 16, !tbaa !39
  %28 = or disjoint i64 %.011.i.i.i.i.i.i.i, 12   ; 2 uses
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.acr, i64 %28
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %28
  %i.adl = load <2 x i64>, ptr %i.adk, align 16, !tbaa !39
  store <2 x i64> %i.adl, ptr %i.adj, align 16, !tbaa !39
  %29 = add nuw nsw i64 %.011.i.i.i.i.i.i.i, 16   ; 2 uses
  %i.adm = add nuw nsw i64 %.011.i.i.i.i.i.i.i.a, 4 ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %i.adm, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !120

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_15PlainObjectBaseIS1_EEEERKT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block501, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_5BlockIKS2_Lin1ELi1ELb1EEEEERS3_RKNS_9DenseBaseIT_EE.exit142, %._crit_edge.i.i.i.i.i.i.i
  invoke void @_ZN3igl16unique_simplicesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.o unwind label %common.resume

bb.o:                                             ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_15PlainObjectBaseIS1_EEEERKT_.exit
  %i.adn = load ptr, ptr %7, align 8, !tbaa !16
  call void @free(ptr noundef %i.adn) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  ret void

common.resume:                                    ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_15PlainObjectBaseIS1_EEEERKT_.exit
  %i.ado = landingpad { ptr, i32 }
          cleanup
  %i.adp = load ptr, ptr %7, align 8, !tbaa !16
  call void @free(ptr noundef %i.adp) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  resume { ptr, i32 } %i.ado
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN3igl16unique_simplicesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.f) #13
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #15 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !13
  store i64 %3, ptr %i.c, align 8, !tbaa !33
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS4_IKS6_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSE_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160, !nonnull !161, !align !162 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 3
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20   ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS4_IKS6_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSE_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20   ; 9 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS4_IKS6_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSE_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !161, !align !162 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %0, align 8, !nonnull !161, !align !162 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !28   ; 3 uses
  %i.r = load i64, ptr %i.p, align 8, !tbaa !20   ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !26   ; 3 uses
  %i.t = load i64, ptr %i.n, align 8, !tbaa !20   ; 3 uses
  %i.u = add nsw i64 %i.g, -1                     ; 2 uses
  %i.v = mul i64 %i.t, %i.u
  %i.w = add i64 %i.v, %i.j
  %i.x = shl i64 %i.w, 2
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.x
  %i.y = mul i64 %i.r, %i.u
  %i.z = add i64 %i.y, %i.j
  %i.aa = shl i64 %i.z, 2
  %scevgep66 = getelementptr i8, ptr %i.q, i64 %i.aa
  %min.iters.check = icmp ult i64 %i.j, 8
  %bound0 = icmp ult ptr %i.q, %scevgep
  %bound1 = icmp ult ptr %i.s, %scevgep66
  %found.conflict = and i1 %bound0, %bound1
  %i.ab = or i64 %i.t, %i.r
  %i.ac = and i64 %i.ab, 2305843009213693952
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = or i1 %found.conflict, %i.ad
  %n.vec = and i64 %i.j, 9223372036854775800      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.au, %._crit_edge.i ] ; 3 uses
  %i.af = mul nsw i64 %.0810.i, %i.r
  %i.ag = getelementptr [4 x i8], ptr %i.q, i64 %i.af ; 6 uses
  %i.ah = mul nsw i64 %.0810.i, %i.t
  %i.ai = getelementptr [4 x i8], ptr %i.s, i64 %i.ah ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ae
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 3 uses
  %i.aj = getelementptr [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.ak = getelementptr [4 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %wide.load = load <4 x i32>, ptr %i.ak, align 4, !tbaa !34, !alias.scope !163
  %wide.load68 = load <4 x i32>, ptr %i.al, align 4, !tbaa !34, !alias.scope !163
  %i.am = getelementptr i8, ptr %i.aj, i64 16
  store <4 x i32> %wide.load, ptr %i.aj, align 4, !tbaa !34, !alias.scope !164, !noalias !163
  store <4 x i32> %wide.load68, ptr %i.am, align 4, !tbaa !34, !alias.scope !164, !noalias !163
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.prol = phi i64 [ %i.ar, %scalar.ph.prol ], [ %.09.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ao = getelementptr [4 x i8], ptr %i.ag, i64 %.09.i.prol
  %i.ap = getelementptr [4 x i8], ptr %i.ai, i64 %.09.i.prol
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !34
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !34
  %i.ar = add nuw nsw i64 %.09.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !149

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ar, %scalar.ph.prol ]
  %i.as = sub nsw i64 %.09.i.ph, %i.j
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.au = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.au, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS4_IKS6_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSE_.exit, label %.preheader.i, !llvm.loop !150

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bk, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.av = getelementptr [4 x i8], ptr %i.ag, i64 %.09.i
  %i.aw = getelementptr [4 x i8], ptr %i.ai, i64 %.09.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !34
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !34
  %i.ay = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.az = getelementptr [4 x i8], ptr %i.ag, i64 %i.ay
  %i.ba = getelementptr [4 x i8], ptr %i.ai, i64 %i.ay
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !34
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !34
  %i.bc = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.ag, i64 %i.bc
  %i.be = getelementptr [4 x i8], ptr %i.ai, i64 %i.bc
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !34
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !34
  %i.bg = add nuw nsw i64 %.09.i, 3               ; 2 uses
  %i.bh = getelementptr [4 x i8], ptr %i.ag, i64 %i.bg
  %i.bi = getelementptr [4 x i8], ptr %i.ai, i64 %i.bg
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !34
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !34
  %i.bk = add nuw nsw i64 %.09.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bk, %i.j
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !151

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !20 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !20 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !165, !nonnull !161, !align !162
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !13
  %i.bt = sub i64 0, %i.bs
  %i.bu = and i64 %i.bt, 3
  %i.bv = icmp sgt i64 %i.bo, 0
  br i1 %i.bv, label %.lr.ph52, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS4_IKS6_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSE_.exit

.lr.ph52:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit
  %i.bw = lshr exact i64 %i.d, 2
  %i.bx = sub nsw i64 0, %i.bw
  %i.by = and i64 %i.bx, 3
  %i.bz = tail call i64 @llvm.smin.i64(i64 %i.by, i64 %i.bm)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph52, %._crit_edge
  %.03451 = phi i64 [ 0, %.lr.ph52 ], [ %i.fy, %._crit_edge ] ; 9 uses
  %.03550 = phi i64 [ %i.bz, %.lr.ph52 ], [ %.sroa.speculated, %._crit_edge ] ; 12 uses
  %i.cb = sub i64 %i.bm, %.03550                  ; 2 uses
  %i.cc = and i64 %i.cb, -4                       ; 2 uses
  %i.cd = add nsw i64 %i.cc, %.03550              ; 6 uses
  %i.ce = icmp sgt i64 %.03550, 0
  br i1 %i.ce, label %.lr.ph, label %.preheader43

.lr.ph:                                           ; preds = %bb.c
  %i.cf = load ptr, ptr %0, align 8, !tbaa !166, !nonnull !161, !align !162 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !28 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !20 ; 2 uses
  %i.cj = mul nsw i64 %i.ci, %.03451
  %i.ck = getelementptr [4 x i8], ptr %i.cg, i64 %i.cj ; 6 uses
  %i.cl = load ptr, ptr %i.ca, align 8, !tbaa !167, !nonnull !161, !align !162 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !26 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !20 ; 2 uses
  %i.cp = mul nsw i64 %i.co, %.03451
  %i.cq = getelementptr [4 x i8], ptr %i.cm, i64 %i.cp ; 6 uses
  %min.iters.check86 = icmp ult i64 %.03550, 12
  br i1 %min.iters.check86, label %scalar.ph85.preheader, label %vector.memcheck87

vector.memcheck87:                                ; preds = %.lr.ph
  %i.cr = ptrtoaddr ptr %i.cm to i64
  %i.cs = ptrtoaddr ptr %i.cg to i64
  %i.ct = shl i64 %.03451, 2                      ; 2 uses
  %i.cu = mul i64 %i.ci, %i.ct
  %i.cv = mul i64 %i.co, %i.ct
  %i.cw = add i64 %i.cv, %i.cr
  %i.cx = add i64 %i.cu, %i.cs
  %i.cy = sub i64 %i.cw, %i.cx
  %diff.check88 = icmp ugt i64 %i.cy, -32
  br i1 %diff.check88, label %scalar.ph85.preheader, label %vector.ph89

vector.ph89:                                      ; preds = %vector.memcheck87
  %n.vec90 = and i64 %.03550, 9223372036854775800 ; 3 uses
  br label %vector.body91

vector.body91:                                    ; preds = %vector.body91, %vector.ph89
  %index92 = phi i64 [ 0, %vector.ph89 ], [ %index.next95, %vector.body91 ] ; 3 uses
  %i.cz = getelementptr [4 x i8], ptr %i.ck, i64 %index92 ; 2 uses
  %i.da = getelementptr [4 x i8], ptr %i.cq, i64 %index92 ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %wide.load93 = load <4 x i32>, ptr %i.da, align 4, !tbaa !34
  %wide.load94 = load <4 x i32>, ptr %i.db, align 4, !tbaa !34
  %i.dc = getelementptr i8, ptr %i.cz, i64 16
  store <4 x i32> %wide.load93, ptr %i.cz, align 4, !tbaa !34
  store <4 x i32> %wide.load94, ptr %i.dc, align 4, !tbaa !34
  %index.next95 = add nuw i64 %index92, 8         ; 2 uses
  %i.dd = icmp eq i64 %index.next95, %n.vec90
  br i1 %i.dd, label %middle.block96, label %vector.body91, !llvm.loop !152

middle.block96:                                   ; preds = %vector.body91
  %cmp.n97 = icmp eq i64 %.03550, %n.vec90
  br i1 %cmp.n97, label %.preheader43, label %scalar.ph85.preheader

scalar.ph85.preheader:                            ; preds = %vector.memcheck87, %.lr.ph, %middle.block96
  %.03345.ph = phi i64 [ 0, %vector.memcheck87 ], [ 0, %.lr.ph ], [ %n.vec90, %middle.block96 ] ; 3 uses
  %xtraiter101 = and i64 %.03550, 3               ; 2 uses
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod102.not, label %scalar.ph85.prol.loopexit, label %scalar.ph85.prol

scalar.ph85.prol:                                 ; preds = %scalar.ph85.preheader, %scalar.ph85.prol
  %.03345.prol = phi i64 [ %i.dh, %scalar.ph85.prol ], [ %.03345.ph, %scalar.ph85.preheader ] ; 3 uses
  %prol.iter103 = phi i64 [ %prol.iter103.next, %scalar.ph85.prol ], [ 0, %scalar.ph85.preheader ]
  %i.de = getelementptr [4 x i8], ptr %i.ck, i64 %.03345.prol
  %i.df = getelementptr [4 x i8], ptr %i.cq, i64 %.03345.prol
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !34
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !34
  %i.dh = add nuw nsw i64 %.03345.prol, 1         ; 2 uses
  %prol.iter103.next = add i64 %prol.iter103, 1   ; 2 uses
  %prol.iter103.cmp.not = icmp eq i64 %prol.iter103.next, %xtraiter101
  br i1 %prol.iter103.cmp.not, label %scalar.ph85.prol.loopexit, label %scalar.ph85.prol, !llvm.loop !153

scalar.ph85.prol.loopexit:                        ; preds = %scalar.ph85.prol, %scalar.ph85.preheader
  %.03345.unr = phi i64 [ %.03345.ph, %scalar.ph85.preheader ], [ %i.dh, %scalar.ph85.prol ]
  %i.di = sub nsw i64 %.03345.ph, %.03550
  %i.dj = icmp ugt i64 %i.di, -4
  br i1 %i.dj, label %.preheader43, label %scalar.ph85

.preheader43:                                     ; preds = %scalar.ph85.prol.loopexit, %scalar.ph85, %middle.block96, %bb.c
  %i.dk = icmp sgt i64 %i.cb, 3
  br i1 %i.dk, label %.lr.ph47, label %.preheader

scalar.ph85:                                      ; preds = %scalar.ph85.prol.loopexit, %scalar.ph85
  %.03345 = phi i64 [ %i.ea, %scalar.ph85 ], [ %.03345.unr, %scalar.ph85.prol.loopexit ] ; 6 uses
  %i.dl = getelementptr [4 x i8], ptr %i.ck, i64 %.03345
  %i.dm = getelementptr [4 x i8], ptr %i.cq, i64 %.03345
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !34
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !34
  %i.do = add nuw nsw i64 %.03345, 1              ; 2 uses
  %i.dp = getelementptr [4 x i8], ptr %i.ck, i64 %i.do
  %i.dq = getelementptr [4 x i8], ptr %i.cq, i64 %i.do
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !34
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !34
  %i.ds = add nuw nsw i64 %.03345, 2              ; 2 uses
  %i.dt = getelementptr [4 x i8], ptr %i.ck, i64 %i.ds
  %i.du = getelementptr [4 x i8], ptr %i.cq, i64 %i.ds
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !34
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !34
  %i.dw = add nuw nsw i64 %.03345, 3              ; 2 uses
  %i.dx = getelementptr [4 x i8], ptr %i.ck, i64 %i.dw
  %i.dy = getelementptr [4 x i8], ptr %i.cq, i64 %i.dw
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !34
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !34
  %i.ea = add nuw nsw i64 %.03345, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ea, %.03550
  br i1 %exitcond.not.3, label %.preheader43, label %scalar.ph85, !llvm.loop !154

.preheader:                                       ; preds = %.lr.ph47, %.preheader43
  %i.eb = icmp slt i64 %i.cd, %i.bm
  br i1 %i.eb, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %i.ec = load ptr, ptr %0, align 8, !tbaa !166, !nonnull !161, !align !162 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !28 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !20 ; 2 uses
  %i.eg = mul nsw i64 %i.ef, %.03451
  %i.eh = getelementptr [4 x i8], ptr %i.ed, i64 %i.eg ; 2 uses
  %i.ei = load ptr, ptr %i.ca, align 8, !tbaa !167, !nonnull !161, !align !162 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !26 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !20 ; 2 uses
  %i.em = mul nsw i64 %i.el, %.03451
  %i.en = getelementptr [4 x i8], ptr %i.ej, i64 %i.em ; 2 uses
  %i.eo = add i64 %.03550, %i.cc
  %i.ep = sub i64 %i.bm, %i.eo                    ; 3 uses
  %min.iters.check71 = icmp ult i64 %i.ep, 12
  br i1 %min.iters.check71, label %scalar.ph70.preheader, label %vector.memcheck72

vector.memcheck72:                                ; preds = %.lr.ph49
  %i.eq = ptrtoaddr ptr %i.ej to i64
  %i.er = ptrtoaddr ptr %i.ed to i64
  %i.es = shl i64 %.03451, 2                      ; 2 uses
  %i.et = mul i64 %i.ef, %i.es
  %i.eu = mul i64 %i.el, %i.es
  %i.ev = add i64 %i.eu, %i.eq
  %i.ew = add i64 %i.et, %i.er
  %i.ex = sub i64 %i.ev, %i.ew
  %diff.check = icmp ugt i64 %i.ex, -32
  br i1 %diff.check, label %scalar.ph70.preheader, label %vector.ph73

vector.ph73:                                      ; preds = %vector.memcheck72
  %n.vec74 = and i64 %i.ep, -8                    ; 3 uses
  %i.ey = add i64 %i.cd, %n.vec74
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next79, %vector.body75 ] ; 2 uses
  %i.ez = add i64 %i.cd, %index76                 ; 2 uses
  %i.fa = getelementptr [4 x i8], ptr %i.eh, i64 %i.ez ; 2 uses
  %i.fb = getelementptr [4 x i8], ptr %i.en, i64 %i.ez ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 16
  %wide.load77 = load <4 x i32>, ptr %i.fb, align 4, !tbaa !34
  %wide.load78 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !34
  %i.fd = getelementptr i8, ptr %i.fa, i64 16
  store <4 x i32> %wide.load77, ptr %i.fa, align 4, !tbaa !34
  store <4 x i32> %wide.load78, ptr %i.fd, align 4, !tbaa !34
  %index.next79 = add nuw i64 %index76, 8         ; 2 uses
  %i.fe = icmp eq i64 %index.next79, %n.vec74
  br i1 %i.fe, label %middle.block80, label %vector.body75, !llvm.loop !155

middle.block80:                                   ; preds = %vector.body75
  %cmp.n81 = icmp eq i64 %i.ep, %n.vec74
  br i1 %cmp.n81, label %._crit_edge, label %scalar.ph70.preheader

scalar.ph70.preheader:                            ; preds = %vector.memcheck72, %.lr.ph49, %middle.block80
  %.048.ph = phi i64 [ %i.cd, %vector.memcheck72 ], [ %i.cd, %.lr.ph49 ], [ %i.ey, %middle.block80 ]
  br label %scalar.ph70

.lr.ph47:                                         ; preds = %.preheader43, %.lr.ph47
  %.03246 = phi i64 [ %i.fu, %.lr.ph47 ], [ %.03550, %.preheader43 ] ; 3 uses
  %i.ff = load ptr, ptr %0, align 8, !tbaa !166, !nonnull !161, !align !162 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !28
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !20
  %i.fj = mul nsw i64 %i.fi, %.03451
  %i.fk = getelementptr [4 x i8], ptr %i.fg, i64 %i.fj
  %i.fl = getelementptr [4 x i8], ptr %i.fk, i64 %.03246
  %i.fm = load ptr, ptr %i.ca, align 8, !tbaa !167, !nonnull !161, !align !162 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !26
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %.03246
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !20
  %i.fr = mul nsw i64 %i.fq, %.03451
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.fr
  %i.ft = load <2 x i64>, ptr %i.fs, align 1, !tbaa !39
  store <2 x i64> %i.ft, ptr %i.fl, align 16, !tbaa !39
  %i.fu = add nsw i64 %.03246, 4                  ; 2 uses
  %i.fv = icmp slt i64 %i.fu, %i.cd
  br i1 %i.fv, label %.lr.ph47, label %.preheader, !llvm.loop !156

._crit_edge:                                      ; preds = %scalar.ph70, %middle.block80, %.preheader
  %i.fw = add nsw i64 %.03550, %i.bu
  %i.fx = srem i64 %i.fw, 4
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bm, i64 %i.fx)
  %i.fy = add nuw nsw i64 %.03451, 1              ; 2 uses
  %exitcond55.not = icmp eq i64 %i.fy, %i.bo
  br i1 %exitcond55.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS4_IKS6_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSE_.exit, label %bb.c, !llvm.loop !157

scalar.ph70:                                      ; preds = %scalar.ph70.preheader, %scalar.ph70
  %.048 = phi i64 [ %i.gc, %scalar.ph70 ], [ %.048.ph, %scalar.ph70.preheader ] ; 3 uses
  %i.fz = getelementptr [4 x i8], ptr %i.eh, i64 %.048
  %i.ga = getelementptr [4 x i8], ptr %i.en, i64 %.048
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !34
  store i32 %i.gb, ptr %i.fz, align 4, !tbaa !34
  %i.gc = add nsw i64 %.048, 1                    ; 2 uses
  %i.gd = icmp slt i64 %i.gc, %i.bm
  br i1 %i.gd, label %scalar.ph70, label %._crit_edge, !llvm.loop !158

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS4_IKS6_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSE_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !10, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!12, !11, i64 8}
!14 = !{!"vtable pointer", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!12, !10, i64 0}
!17 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLin1EEE", !11, i64 0}
!18 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi0EEE", !10, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!18, !10, i64 0}
!20 = !{!17, !11, i64 0}
!21 = !{!"p1 _ZTSN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEE", !9, i64 0}
!22 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1EEE", !18, i64 0}
!23 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0ELb1EEE", !22, i64 0, !21, i64 24, !17, i64 32, !17, i64 40, !11, i64 48}
!24 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi1EEE"}
!25 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEE", !10, i64 0, !24, i64 8, !17, i64 16}
!26 = !{!25, !10, i64 0}
!27 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEES4_EE", !10, i64 0, !24, i64 8, !17, i64 16}
!28 = !{!27, !10, i64 0}
!29 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEE", !9, i64 0}
!30 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_5BlockIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEE", !9, i64 0}
!31 = !{!"p1 _ZTSN5Eigen8internal9assign_opIiiEE", !9, i64 0}
!32 = !{!"p1 _ZTSN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEE", !9, i64 0}
!33 = !{!12, !11, i64 16}
!34 = !{!6, !6, i64 0}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !{!5, !5, i64 0}
!40 = distinct !{!40, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!41 = distinct !{!41, !40, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!42 = distinct !{!42, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEElsINS_5BlockIKS2_Lin1ELi1ELb1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE"}
!43 = distinct !{!43, !42, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEElsINS_5BlockIKS2_Lin1ELi1ELb1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE: argument 0"}
!44 = distinct !{!44, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockIllEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!45 = distinct !{!45, !44, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockIllEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!46 = distinct !{!46, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!47 = distinct !{!47, !46, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!48 = distinct !{!48, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!49 = distinct !{!49, !48, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!50 = distinct !{!50, !35, !36, !37}
!51 = distinct !{!51, !38}
!52 = distinct !{!52, !35, !36}
!53 = distinct !{!53, !35, !36, !37}
!54 = distinct !{!54, !38}
!55 = distinct !{!55, !35, !36}
!56 = distinct !{!56, !35}
!57 = distinct !{!57, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!58 = distinct !{!58, !57, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!59 = distinct !{!59, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!60 = distinct !{!60, !59, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!61 = distinct !{!61, !35, !36, !37}
!62 = distinct !{!62, !38}
!63 = distinct !{!63, !35, !36}
!64 = distinct !{!64, !35, !36, !37}
!65 = distinct !{!65, !38}
!66 = distinct !{!66, !35, !36}
!67 = distinct !{!67, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!68 = distinct !{!68, !67, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!69 = distinct !{!69, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!70 = distinct !{!70, !69, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!71 = distinct !{!71, !35, !36, !37}
!72 = distinct !{!72, !38}
!73 = distinct !{!73, !35, !36}
!74 = distinct !{!74, !35, !36, !37}
!75 = distinct !{!75, !38}
!76 = distinct !{!76, !35, !36}
!77 = distinct !{!77, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!78 = distinct !{!78, !77, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!79 = distinct !{!79, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!80 = distinct !{!80, !79, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!81 = distinct !{!81, !35, !36, !37}
!82 = distinct !{!82, !38}
!83 = distinct !{!83, !35, !36}
!84 = distinct !{!84, !35, !36, !37}
!85 = distinct !{!85, !38}
!86 = distinct !{!86, !35, !36}
!87 = distinct !{!87, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!88 = distinct !{!88, !87, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!89 = distinct !{!89, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!90 = distinct !{!90, !89, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!91 = distinct !{!91, !35, !36, !37}
!92 = distinct !{!92, !38}
!93 = distinct !{!93, !35, !36}
!94 = distinct !{!94, !35, !36, !37}
!95 = distinct !{!95, !38}
!96 = distinct !{!96, !35, !36}
!97 = distinct !{!97, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!98 = distinct !{!98, !97, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!99 = distinct !{!99, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!100 = distinct !{!100, !99, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!101 = distinct !{!101, !35, !36, !37}
!102 = distinct !{!102, !38}
!103 = distinct !{!103, !35, !36}
!104 = distinct !{!104, !35, !36, !37}
!105 = distinct !{!105, !38}
!106 = distinct !{!106, !35, !36}
!107 = distinct !{!107, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!108 = distinct !{!108, !107, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!109 = distinct !{!109, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!110 = distinct !{!110, !109, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!111 = distinct !{!111, !35, !36, !37}
!112 = distinct !{!112, !38}
!113 = distinct !{!113, !35, !36}
!114 = distinct !{!114, !35, !36, !37}
!115 = distinct !{!115, !38}
!116 = distinct !{!116, !35, !36}
!117 = distinct !{!117, !38}
!118 = distinct !{!118, !35, !36, !37}
!119 = distinct !{!119, !35, !37, !36}
!120 = distinct !{!120, !35}
!121 = !{!41}
!122 = !{!43}
!123 = !{!45}
!124 = !{!45, !43}
!125 = !{!21, !21, i64 0}
!126 = !{!23, !11, i64 48}
!127 = !{!29, !29, i64 0}
!128 = !{!30, !30, i64 0}
!129 = !{!31, !31, i64 0}
!130 = !{!32, !32, i64 0}
!131 = !{!47}
!132 = !{!49}
!133 = !{!58}
!134 = !{!60}
!135 = !{!68}
!136 = !{!70}
!137 = !{!78}
!138 = !{!80}
!139 = !{!88}
!140 = !{!90}
!141 = !{!98}
!142 = !{!100}
!143 = !{!108}
!144 = !{!110}
!145 = distinct !{!145, i1 false, !"LVerDomain"}
!146 = distinct !{!146, !145}
!147 = distinct !{!147, !145}
!148 = distinct !{!148, !35, !36, !37}
!149 = distinct !{!149, !38}
!150 = distinct !{!150, !35}
!151 = distinct !{!151, !35, !36}
!152 = distinct !{!152, !35, !36, !37}
!153 = distinct !{!153, !38}
!154 = distinct !{!154, !35, !36}
!155 = distinct !{!155, !35, !36, !37}
!156 = distinct !{!156, !35}
!157 = distinct !{!157, !35}
!158 = distinct !{!158, !35, !36}
!159 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS2_INS3_IKS5_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEE", !29, i64 0, !30, i64 8, !31, i64 16, !32, i64 24}
!160 = !{!159, !32, i64 24}
!161 = !{}
!162 = !{i64 8}
!163 = !{!146}
!164 = !{!147}
!165 = !{!23, !21, i64 24}
!166 = !{!159, !29, i64 0}
!167 = !{!159, !30, i64 8}
end_hunk_0
