Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VectorMaskElimination?download=true
inline.NumInlined: 484
inline.NumDeleted: 396
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"class.mlir::ResultRange" = type { %"class.llvm::detail::indexed_accessor_range_base.110" }
%"class.llvm::detail::indexed_accessor_range_base.110" = type { ptr, i64 }
%"class.mlir::ValueTypeRange" = type { %"class.llvm::iterator_range" }
%"class.llvm::iterator_range" = type { %"class.mlir::ValueTypeIterator", %"class.mlir::ValueTypeIterator" }
%"class.mlir::ValueTypeIterator" = type { %"class.llvm::mapped_iterator_base" }
%"class.llvm::mapped_iterator_base" = type { %"class.llvm::iterator_adaptor_base" }
%"class.llvm::iterator_adaptor_base" = type { %"class.llvm::detail::indexed_accessor_range_base<mlir::ResultRange, mlir::detail::OpResultImpl *, mlir::OpResult, mlir::OpResult, mlir::OpResult>::iterator" }
%"class.llvm::detail::indexed_accessor_range_base<mlir::ResultRange, mlir::detail::OpResultImpl *, mlir::OpResult, mlir::OpResult, mlir::OpResult>::iterator" = type { %"class.llvm::indexed_accessor_iterator.108" }
%"class.llvm::indexed_accessor_iterator.108" = type { ptr, i64 }
%"class.mlir::VectorType" = type { %"class.mlir::detail::StorageUserBase.31" }
%"class.mlir::detail::StorageUserBase.31" = type { %"class.mlir::Type" }
%"class.mlir::Type" = type { ptr }
%"class.llvm::SmallVector.35" = type { %"class.llvm::SmallVectorImpl.36", %"struct.llvm::SmallVectorStorage.39" }
%"class.llvm::SmallVectorImpl.36" = type { %"class.llvm::SmallVectorTemplateBase.37" }
%"class.llvm::SmallVectorTemplateBase.37" = type { %"class.llvm::SmallVectorTemplateCommon.38" }
%"class.llvm::SmallVectorTemplateCommon.38" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.39" = type { [48 x i8] }
%"class.llvm::FailureOr" = type { %"class.std::optional.63" }
%"class.std::optional.63" = type { %"struct.std::_Optional_base.64" }
%"struct.std::_Optional_base.64" = type { %"struct.std::_Optional_payload.66" }
%"struct.std::_Optional_payload.66" = type { %"struct.std::_Optional_payload_base.base.68", [7 x i8] }
%"struct.std::_Optional_payload_base.base.68" = type <{ %"union.std::_Optional_payload_base<mlir::vector::ScalableValueBoundsConstraintSet::ConstantOrScalableBound>::_Storage", i8 }>
%"union.std::_Optional_payload_base<mlir::vector::ScalableValueBoundsConstraintSet::ConstantOrScalableBound>::_Storage" = type { %"struct.mlir::vector::ScalableValueBoundsConstraintSet::ConstantOrScalableBound" }
%"struct.mlir::vector::ScalableValueBoundsConstraintSet::ConstantOrScalableBound" = type { %"class.mlir::AffineMap" }
%"class.mlir::AffineMap" = type { ptr }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.llvm::FailureOr.71" = type { %"class.std::optional.72" }
%"class.std::optional.72" = type { %"struct.std::_Optional_base.73" }
%"struct.std::_Optional_base.73" = type { %"struct.std::_Optional_payload.75" }
%"struct.std::_Optional_payload.75" = type { %"struct.std::_Optional_payload_base.base.77", [7 x i8] }
%"struct.std::_Optional_payload_base.base.77" = type { %"union.std::_Optional_payload_base<mlir::vector::ScalableValueBoundsConstraintSet::ConstantOrScalableBound::BoundSize>::_Storage", i8 }
%"union.std::_Optional_payload_base<mlir::vector::ScalableValueBoundsConstraintSet::ConstantOrScalableBound::BoundSize>::_Storage" = type { %"struct.mlir::vector::ScalableValueBoundsConstraintSet::ConstantOrScalableBound::BoundSize" }
%"struct.mlir::vector::ScalableValueBoundsConstraintSet::ConstantOrScalableBound::BoundSize" = type <{ i64, i8, [7 x i8] }>
%class.anon.117 = type { ptr }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage" = type { [48 x i8] }
%class.anon = type { ptr }

$_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir6vector12CreateMaskOpELb1EE15growAndPushBackES3_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6vector12CreateMaskOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6vector20eliminateVectorMasksERNS_10IRRewriterENS_19FunctionOpInterfaceESt8optionalINS0_11VscaleRangeEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr nofree readnone captures(none) %2, i64 %3, i8 %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %6 = alloca %"class.mlir::ValueTypeRange", align 8 ; 5 uses
  %7 = alloca %"class.mlir::VectorType", align 8  ; 6 uses
  %8 = alloca %"class.llvm::SmallVector.35", align 8 ; 10 uses
  %9 = alloca %"class.llvm::FailureOr", align 8   ; 7 uses
  %10 = alloca %"class.std::function", align 8    ; 7 uses
  %11 = alloca %"class.llvm::FailureOr.71", align 8 ; 8 uses
  %12 = alloca %class.anon.117, align 8           ; 4 uses
  %13 = alloca %"class.llvm::SmallVector", align 8 ; 9 uses
  %14 = alloca %class.anon, align 8               ; 4 uses
  %i.a = trunc nuw i8 %4 to i1
  br i1 %i.a, label %bb.b, label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = and i32 %i.c, 8388607
  %i.e = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.g, 1
  %i.h = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h
  %i.j = lshr i32 %i.c, 21
  %i.k = and i32 %i.j, 2040
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !41
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.p ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load <2 x ptr>, ptr %i.u, align 8
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #7
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.y, ptr %13, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i32 0, ptr %i.z, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 6, ptr %i.aa, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #7
  store ptr %13, ptr %14, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  store ptr %14, ptr %12, align 8, !tbaa !51
  %i.ab = ptrtoint ptr %12 to i64
  call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nonnull @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_6vector20eliminateVectorMasksERNS1_10IRRewriterENS1_19FunctionOpInterfaceESt8optionalINSB_11VscaleRangeEEE3$_0NSB_12CreateMaskOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESQ_E4typeES3_OT1_EUlS3_E_EEvlS3_", i64 %i.ab, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  %i.ac = load i32, ptr %i.b, align 4             ; 3 uses
  %i.ad = and i32 %i.ac, 8388607
  %i.ae = icmp ne i32 %i.ad, 0
  call void @llvm.assume(i1 %i.ae)
  %i.af = lshr i32 %i.ac, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.af, 1
  %i.ag = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.ag
  %i.ai = lshr i32 %i.ac, 21
  %i.aj = and i32 %i.ai, 2040
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ak
  %i.am = load i32, ptr %i.n, align 8, !tbaa !41
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !17
  store ptr %i.ar, ptr %i.u, align 8, !tbaa !49
  store ptr %i.at, ptr %i.v, align 8
  %i.au = load ptr, ptr %13, align 8, !tbaa !13   ; 3 uses
  %i.av = load i32, ptr %i.z, align 8, !tbaa !14  ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %.idx = shl nuw nsw i64 %i.aw, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx
  %.not20 = icmp eq i32 %i.av, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %.sroa.046.0.extract.trunc.i = trunc i64 %3 to i32
  %.sroa.247.0.extract.shift.i = lshr i64 %3, 32
  %.sroa.247.0.extract.trunc.i = trunc nuw i64 %.sroa.247.0.extract.shift.i to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.h

._crit_edge.loopexit:                             ; preds = %_ZN12_GLOBAL__N_126resolveAllTrueCreateMaskOpERN4mlir10IRRewriterENS0_6vector12CreateMaskOpENS3_11VscaleRangeE.exit
  %.pre = load ptr, ptr %13, align 8, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.bg = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.au, %bb.c ] ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.y
  br i1 %i.bh, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.bg) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store <2 x ptr> %i.w, ptr %i.u, align 8
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

bb.h:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_126resolveAllTrueCreateMaskOpERN4mlir10IRRewriterENS0_6vector12CreateMaskOpENS3_11VscaleRangeE.exit
  %.021 = phi ptr [ %i.au, %.lr.ph ], [ %i.em, %_ZN12_GLOBAL__N_126resolveAllTrueCreateMaskOpERN4mlir10IRRewriterENS0_6vector12CreateMaskOpENS3_11VscaleRangeE.exit ] ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %.021, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7, !noalias !52
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 36
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !53, !noalias !52 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  %i.bl = getelementptr inbounds i8, ptr %.sroa.03.0.copyload, i64 -16 ; 2 uses
  %i.bm = zext i32 %i.bj to i64
  %.sroa.0.0.i.i.i.i = select i1 %i.bk, ptr null, ptr %i.bl
  store ptr %.sroa.0.0.i.i.i.i, ptr %5, align 8, !noalias !52
  store i64 %i.bm, ptr %i.ay, align 8, !noalias !52
  call void @_ZNK4mlir11ResultRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7, !noalias !52
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %6, align 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.bn = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.copyload.i.i.i.i, i64 noundef %.sroa.2.0.copyload.i.i.i.i) #7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bo, align 8
  %i.bp = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8
  %i.bq = inttoptr i64 %i.bp to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  store ptr %i.bq, ptr %7, align 8
  %i.br = call { ptr, i64 } @_ZNK4mlir10VectorType15getScalableDimsEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  %i.bs = extractvalue { ptr, i64 } %i.br, 0      ; 2 uses
  %i.bt = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  %i.bu = extractvalue { ptr, i64 } %i.bt, 0      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  store ptr %i.az, ptr %8, align 8, !tbaa !13
  store i32 0, ptr %i.ba, align 8, !tbaa !14
  store i32 3, ptr %i.bb, align 4, !tbaa !15
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 44
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = and i32 %i.bw, 8388608
  %.not.i.i.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i, label %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_6vector12CreateMaskOpENS0_16VariadicOperandsEE11getOperandsEv.exit.i, !prof !54

_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_6vector12CreateMaskOpENS0_16VariadicOperandsEE11getOperandsEv.exit.i: ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !57
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 68
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !58 ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %.not104105.i = icmp eq i32 %i.cb, 0
  br i1 %.not104105.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_6vector12CreateMaskOpENS0_16VariadicOperandsEE11getOperandsEv.exit.i, %bb.p
  %.sroa.9.0107.i = phi i64 [ %i.de, %bb.p ], [ 0, %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_6vector12CreateMaskOpENS0_16VariadicOperandsEE11getOperandsEv.exit.i ] ; 7 uses
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %i.bz, i64 %.sroa.9.0107.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !60, !noalias !61 ; 4 uses
  %i.cf = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i to i64
  %i.cg = or i64 %i.cf, 4
  %i.ch = call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %i.cg) #7 ; 2 uses
  %i.ci = extractvalue { i64, i8 } %i.ch, 0
  %i.cj = extractvalue { i64, i8 } %i.ch, 1
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.9.0107.i
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !62, !range !63, !noundef !64
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZN4llvm23SmallVectorTemplateBaseIZN12_GLOBAL__N_126resolveAllTrueCreateMaskOpERN4mlir10IRRewriterENS2_6vector12CreateMaskOpENS5_11VscaleRangeEE14UnknownMaskDimLb1EE9push_backES8_.exit.thread95.i, label %bb.j

end_hunk_0
begin_hunk_1_@_ZN4mlir6vector20eliminateVectorMasksERNS_10IRRewriterENS_19FunctionOpInterfaceESt8optionalINS0_11VscaleRangeEE:bb.a
  %i.dq = load i8, ptr %i.bf, align 8, !tbaa !74, !range !63, !noundef !64
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ds = load i64, ptr %11, align 8, !tbaa !75
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.sroa.017.0.copyload.i
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !66
  %i.dv = icmp slt i64 %i.ds, %i.du
  br i1 %i.dv, label %.thread99.i, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.017.0.copyload.i
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !62, !range !63, !noundef !64
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %.thread99.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dz = load i64, ptr %11, align 8, !tbaa !75
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.sroa.017.0.copyload.i
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !66
  %i.ec = icmp slt i64 %i.dz, %i.eb
  br i1 %i.ec, label %.thread99.i, label %bb.w

.thread99.i:                                      ; preds = %bb.v, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  br label %_ZN4llvm23SmallVectorTemplateBaseIZN12_GLOBAL__N_126resolveAllTrueCreateMaskOpERN4mlir10IRRewriterENS2_6vector12CreateMaskOpENS5_11VscaleRangeEE14UnknownMaskDimLb1EE9push_backES8_.exit.thread95.i

bb.w:                                             ; preds = %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  %i.ed = getelementptr inbounds nuw i8, ptr %.049109.i, i64 16 ; 2 uses
  %.not.i14 = icmp eq ptr %i.ed, %i.dg
  br i1 %.not.i14, label %._crit_edge.i, label %.lr.ph110.i

._crit_edge.i:                                    ; preds = %bb.w, %_ZN4llvm23SmallVectorTemplateBaseIZN12_GLOBAL__N_126resolveAllTrueCreateMaskOpERN4mlir10IRRewriterENS2_6vector12CreateMaskOpENS5_11VscaleRangeEE14UnknownMaskDimLb1EE9push_backES8_.exit.i, %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_6vector12CreateMaskOpENS0_16VariadicOperandsEE11getOperandsEv.exit.i, %bb.h
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 24
  %.sroa.0.0.copyload.i.i.i15 = load ptr, ptr %i.ee, align 8
  %.sroa.011.0.copyload.i = load ptr, ptr %7, align 8
  %i.ef = call ptr @_ZN4mlir6vector14ConstantMaskOp6createERNS_9OpBuilderENS_8LocationENS_10VectorTypeENS0_16ConstantMaskKindE(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr %.sroa.0.0.copyload.i.i.i15, ptr %.sroa.011.0.copyload.i, i32 noundef 1) #7
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -16
  %i.eh = load ptr, ptr %0, align 8, !tbaa !77
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull %i.bl, ptr nonnull %i.eg) #7, !inline_history !26
  br label %_ZN4llvm23SmallVectorTemplateBaseIZN12_GLOBAL__N_126resolveAllTrueCreateMaskOpERN4mlir10IRRewriterENS2_6vector12CreateMaskOpENS5_11VscaleRangeEE14UnknownMaskDimLb1EE9push_backES8_.exit.thread95.i

_ZN4llvm23SmallVectorTemplateBaseIZN12_GLOBAL__N_126resolveAllTrueCreateMaskOpERN4mlir10IRRewriterENS2_6vector12CreateMaskOpENS5_11VscaleRangeEE14UnknownMaskDimLb1EE9push_backES8_.exit.thread95.i: ; preds = %bb.l, %bb.j, %bb.i, %._crit_edge.i, %.thread99.i, %.thread.i
  %i.ek = load ptr, ptr %8, align 8, !tbaa !13    ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.az
  br i1 %i.el, label %_ZN12_GLOBAL__N_126resolveAllTrueCreateMaskOpERN4mlir10IRRewriterENS0_6vector12CreateMaskOpENS3_11VscaleRangeE.exit, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIZN12_GLOBAL__N_126resolveAllTrueCreateMaskOpERN4mlir10IRRewriterENS2_6vector12CreateMaskOpENS5_11VscaleRangeEE14UnknownMaskDimLb1EE9push_backES8_.exit.thread95.i
  call void @free(ptr noundef %i.ek) #7
  br label %_ZN12_GLOBAL__N_126resolveAllTrueCreateMaskOpERN4mlir10IRRewriterENS0_6vector12CreateMaskOpENS3_11VscaleRangeE.exit

_ZN12_GLOBAL__N_126resolveAllTrueCreateMaskOpERN4mlir10IRRewriterENS0_6vector12CreateMaskOpENS3_11VscaleRangeE.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIZN12_GLOBAL__N_126resolveAllTrueCreateMaskOpERN4mlir10IRRewriterENS2_6vector12CreateMaskOpENS5_11VscaleRangeEE14UnknownMaskDimLb1EE9push_backES8_.exit.thread95.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  %i.em = getelementptr inbounds nuw i8, ptr %.021, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.em, %i.ax
  br i1 %.not, label %._crit_edge.loopexit, label %bb.h

_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit:      ; preds = %bb.g, %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare { ptr, i64 } @_ZNK4mlir10VectorType15getScalableDimsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64) local_unnamed_addr #3

declare { i64, i8 } @_ZN4mlir6vector27getConstantVscaleMultiplierENS_5ValueE(ptr) local_unnamed_addr #3

declare { ptr, i8 } @_ZN4mlir6vector32ScalableValueBoundsConstraintSet20computeScalableBoundENS_5ValueESt8optionalIlEjjNS_10presburger9BoundTypeENS_18ValueBoundsOptionsERKSt8functionIFbS2_S4_RNS_24ValueBoundsConstraintSetEEE(ptr, i64, i8, i32 noundef, i32 noundef, i32 noundef, i16, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZNK4mlir6vector32ScalableValueBoundsConstraintSet23ConstantOrScalableBound7getSizeEv(ptr dead_on_unwind writable sret(%"class.llvm::FailureOr.71") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZN4mlir6vector14ConstantMaskOp6createERNS_9OpBuilderENS_8LocationENS_10VectorTypeENS0_16ConstantMaskKindE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, i32 noundef) local_unnamed_addr #3

declare void @_ZNK4mlir11ResultRange8getTypesEv(ptr dead_on_unwind writable sret(%"class.mlir::ValueTypeRange") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm23SmallVectorTemplateBaseIZN12_GLOBAL__N_126resolveAllTrueCreateMaskOpERN4mlir10IRRewriterENS2_6vector12CreateMaskOpENS5_11VscaleRangeEE14UnknownMaskDimLb1EE15growAndPushBackES8_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #7
  %.val = load ptr, ptr %0, align 8, !tbaa !13
  %.val2 = load i32, ptr %i.a, align 8, !tbaa !14
  %i.f = zext i32 %.val2 to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.f ; 2 uses
  store i64 %1, ptr %i.g, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !14
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !14
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #7, !inline_history !78
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #7 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !17 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !17 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17   ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #7
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #7, !inline_history !78
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_6vector20eliminateVectorMasksERNS1_10IRRewriterENS1_19FunctionOpInterfaceESt8optionalINSB_11VscaleRangeEEE3$_0NSB_12CreateMaskOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESQ_E4typeES3_OT1_EUlS3_E_EEvlS3_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_6vector12CreateMaskOpEvE2idE
  %2 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6vector12CreateMaskOpEvE2idE
  %spec.select.i.i.i.i.not.i = or i1 %2, %i.d
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %spec.select.i.i.i.i.not.i
  br i1 %.not.i, label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNS_6vector20eliminateVectorMasksERNS_10IRRewriterENS_19FunctionOpInterfaceESt8optionalINS4_11VscaleRangeEEE3$_0NS4_12CreateMaskOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESL_E4typeESG_OT1_ENKUlSG_E_clESG_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.e, align 8
  %.val.i = load ptr, ptr %.val, align 8, !tbaa !84 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !15
  %.not.i.i.i = icmp ult i32 %i.g, %i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.c, !prof !18

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir6vector12CreateMaskOpELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %.val.i, ptr nonnull %1)
  br label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNS_6vector20eliminateVectorMasksERNS_10IRRewriterENS_19FunctionOpInterfaceESt8optionalINS4_11VscaleRangeEEE3$_0NS4_12CreateMaskOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESL_E4typeESG_OT1_ENKUlSG_E_clESG_.exit"

bb.d:                                             ; preds = %bb.b
  %i.j = zext i32 %i.g to i64
  %i.k = load ptr, ptr %.val.i, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  store ptr %1, ptr %i.l, align 1
  %i.m = load i32, ptr %i.f, align 8, !tbaa !14
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.f, align 8, !tbaa !14
  br label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNS_6vector20eliminateVectorMasksERNS_10IRRewriterENS_19FunctionOpInterfaceESt8optionalINS4_11VscaleRangeEEE3$_0NS4_12CreateMaskOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESL_E4typeESG_OT1_ENKUlSG_E_clESG_.exit"

"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNS_6vector20eliminateVectorMasksERNS_10IRRewriterENS_19FunctionOpInterfaceESt8optionalINS4_11VscaleRangeEEE3$_0NS4_12CreateMaskOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESL_E4typeESG_OT1_ENKUlSG_E_clESG_.exit": ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir6vector12CreateMaskOpELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #7
  %i.f = load ptr, ptr %0, align 8, !tbaa !13
  %i.g = load i32, ptr %i.a, align 8, !tbaa !14
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !14
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !8, i64 0}
!10 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !9, i64 0, !9, i64 8}
!11 = !{!"p1 _ZTSN4mlir13OperationName4ImplE", !8, i64 0}
!12 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !8, i64 0, !5, i64 8, !5, i64 12}
!13 = !{!12, !8, i64 0}
!14 = !{!12, !5, i64 8}
!15 = !{!12, !5, i64 12}
!16 = !{!"p1 _ZTSN4llvm11SmallVectorIN4mlir6vector12CreateMaskOpELj6EEE", !8, i64 0}
!17 = !{!10, !9, i64 8}
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!19 = distinct !{!19, i1 false, !"_ZN4mlir9Operation14getResultTypesEv"}
!20 = distinct !{!20, !19, !"_ZN4mlir9Operation14getResultTypesEv: argument 0"}
!21 = distinct !{!21, i1 false, !"_ZNK4llvm6detail10zip_commonINS0_14zip_enumeratorIJNS0_14index_iteratorENS0_27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS5_9OpOperandENS5_5ValueES9_S9_E8iteratorEEEENS0_17enumerator_resultIJmS9_EEEJS3_SB_EEdeEv"}
!22 = distinct !{!22, !21, !"_ZNK4llvm6detail10zip_commonINS0_14zip_enumeratorIJNS0_14index_iteratorENS0_27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS5_9OpOperandENS5_5ValueES9_S9_E8iteratorEEEENS0_17enumerator_resultIJmS9_EEEJS3_SB_EEdeEv: argument 0"}
!23 = distinct !{!23, i1 false, !"_ZNK4llvm6detail10zip_commonINS0_14zip_enumeratorIJNS0_14index_iteratorENS0_27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS5_9OpOperandENS5_5ValueES9_S9_E8iteratorEEEENS0_17enumerator_resultIJmS9_EEEJS3_SB_EE5derefIJLm0ELm1EEEESE_St16integer_sequenceImJXspT_EEE"}
!24 = distinct !{!24, !23, !"_ZNK4llvm6detail10zip_commonINS0_14zip_enumeratorIJNS0_14index_iteratorENS0_27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS5_9OpOperandENS5_5ValueES9_S9_E8iteratorEEEENS0_17enumerator_resultIJmS9_EEEJS3_SB_EE5derefIJLm0ELm1EEEESE_St16integer_sequenceImJXspT_EEE: argument 0"}
!25 = distinct !{null, null}
!26 = distinct !{null}
!27 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !10, i64 0}
!28 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEEE", !27, i64 0}
!29 = !{!"_ZTSN4llvm10ilist_nodeIN4mlir9OperationEJEEE", !28, i64 0}
!30 = !{!"_ZTSN4llvm22ilist_node_with_parentIN4mlir9OperationENS1_5BlockEJEEE", !29, i64 0}
!31 = !{!"p1 _ZTSN4mlir5BlockE", !8, i64 0}
!32 = !{!"p1 _ZTSN4mlir16AttributeStorageE", !8, i64 0}
!33 = !{!"_ZTSN4mlir9AttributeE", !32, i64 0}
!34 = !{!"_ZTSN4mlir12LocationAttrE", !33, i64 0}
!35 = !{!"_ZTSN4mlir8LocationE", !34, i64 0}
!36 = !{!"bool", !4, i64 0}
!37 = !{!"_ZTSN4mlir13OperationNameE", !11, i64 0}
!38 = !{!"_ZTSN4mlir6detail15StorageUserBaseINS_14DictionaryAttrENS_9AttributeENS0_21DictionaryAttrStorageENS0_16AttributeUniquerEJEEE", !33, i64 0}
!39 = !{!"_ZTSN4mlir14DictionaryAttrE", !38, i64 0}
!40 = !{!"_ZTSN4mlir9OperationE", !30, i64 0, !31, i64 16, !35, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !36, i64 46, !4, i64 47, !37, i64 48, !39, i64 56}
!41 = !{!40, !5, i64 40}
!42 = !{!10, !9, i64 0}
!43 = !{!"p1 _ZTSN4mlir11MLIRContextE", !8, i64 0}
!44 = !{!"_ZTSN4mlir7BuilderE", !43, i64 0}
!45 = !{!"p1 _ZTSN4mlir9OpBuilder8ListenerE", !8, i64 0}
!46 = !{!"p1 _ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEEE", !8, i64 0}
!47 = !{!"_ZTSN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEE", !46, i64 0}
!48 = !{!"_ZTSN4mlir9OpBuilderE", !44, i64 0, !45, i64 8, !31, i64 16, !47, i64 24}
!49 = !{!48, !31, i64 16}
!50 = !{!16, !16, i64 0}
!51 = !{!8, !8, i64 0}
!52 = !{!20}
!53 = !{!40, !5, i64 36}
!54 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!55 = !{!"p1 _ZTSN4mlir9OpOperandE", !8, i64 0}
!56 = !{!"_ZTSN4mlir6detail14OperandStorageE", !5, i64 0, !5, i64 3, !5, i64 4, !55, i64 8}
!57 = !{!56, !55, i64 8}
!58 = !{!56, !5, i64 4}
!59 = !{!"p1 _ZTSN4mlir6detail9ValueImplE", !8, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!24, !22}
!62 = !{!36, !36, i64 0}
!63 = !{i8 0, i8 2}
!64 = !{}
!65 = !{!"long", !4, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!"_ZTSSt14_Function_base", !4, i64 0, !8, i64 16}
!68 = !{!67, !8, i64 16}
!69 = !{!"_ZTSSt22_Optional_payload_baseIN4mlir6vector32ScalableValueBoundsConstraintSet23ConstantOrScalableBoundEE", !4, i64 0, !36, i64 8}
!70 = !{!69, !36, i64 8}
!71 = !{!"_ZTSSt22_Optional_payload_baseIN4mlir6vector32ScalableValueBoundsConstraintSet23ConstantOrScalableBound9BoundSizeEE", !4, i64 0, !36, i64 16}
!72 = !{!71, !36, i64 16}
!73 = !{!"_ZTSN4mlir6vector32ScalableValueBoundsConstraintSet23ConstantOrScalableBound9BoundSizeE", !65, i64 0, !36, i64 8}
!74 = !{!73, !36, i64 8}
!75 = !{!73, !65, i64 0}
!76 = !{!"vtable pointer", !3, i64 0}
!77 = !{!76, !76, i64 0}
!78 = distinct !{null}
!79 = !{!11, !11, i64 0}
!80 = !{!"p1 _ZTSN4mlir6TypeID7StorageE", !8, i64 0}
!81 = !{!"_ZTSN4mlir6TypeIDE", !80, i64 0}
!82 = !{!81, !80, i64 0}
!83 = !{!"_ZTSZN4mlir6vector20eliminateVectorMasksERNS_10IRRewriterENS_19FunctionOpInterfaceESt8optionalINS0_11VscaleRangeEEE3$_0", !16, i64 0}
!84 = !{!83, !16, i64 0}
end_hunk_1
