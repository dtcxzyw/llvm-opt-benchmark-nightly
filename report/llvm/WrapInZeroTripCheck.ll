Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WrapInZeroTripCheck?download=true
inline.NumInlined: 681
inline.NumDeleted: 501
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
%"class.mlir::ResultRange" = type { %"class.llvm::detail::indexed_accessor_range_base.155" }
%"class.llvm::detail::indexed_accessor_range_base.155" = type { ptr, i64 }
%"class.mlir::Value" = type { ptr }
%"class.mlir::scf::WhileOp" = type { %"class.mlir::Op" }
%"class.mlir::Op" = type { %"class.mlir::OpState" }
%"class.mlir::OpState" = type { ptr }
%"class.mlir::IRMapping" = type { %"class.llvm::DenseMap", %"class.llvm::DenseMap.18", %"class.llvm::DenseMap.20" }
%"class.llvm::DenseMap" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseMap.18" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseMap.20" = type { ptr, ptr, i32, i32 }
%"class.mlir::Operation::CloneOptions" = type { i8, [7 x i8], %"class.std::optional.35" }
%"class.std::optional.35" = type { %"struct.std::_Optional_base.36" }
%"struct.std::_Optional_base.36" = type { %"struct.std::_Optional_payload.38" }
%"struct.std::_Optional_payload.38" = type { %"struct.std::_Optional_payload.base.42", [7 x i8] }
%"struct.std::_Optional_payload.base.42" = type { %"struct.std::_Optional_payload_base.base.41" }
%"struct.std::_Optional_payload_base.base.41" = type <{ %"union.std::_Optional_payload_base<llvm::SmallVector<mlir::Type>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::SmallVector<mlir::Type>>::_Storage" = type { %"class.llvm::SmallVector" }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [48 x i8] }
%"class.mlir::scf::ConditionOp" = type { %"class.mlir::Op.45" }
%"class.mlir::Op.45" = type { %"class.mlir::OpState" }
%"class.llvm::SmallVector.60" = type { %"class.llvm::SmallVectorImpl.61", %"struct.llvm::SmallVectorStorage.64" }
%"class.llvm::SmallVectorImpl.61" = type { %"class.llvm::SmallVectorTemplateBase.62" }
%"class.llvm::SmallVectorTemplateBase.62" = type { %"class.llvm::SmallVectorTemplateCommon.63" }
%"class.llvm::SmallVectorTemplateCommon.63" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.64" = type { [48 x i8] }
%"class.mlir::TypeRange" = type { %"class.llvm::detail::indexed_accessor_range_base.65" }
%"class.llvm::detail::indexed_accessor_range_base.65" = type { %"class.llvm::PointerUnion", i64 }
%"class.llvm::PointerUnion" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers" }
%"class.llvm::pointer_union_detail::PointerUnionMembers" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.66" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.66" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.67" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.67" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.68" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.68" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.69" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.69" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.70" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.70" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.71" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.71" = type { %"struct.llvm::detail::PunnedPointer.72" }
%"class.mlir::ValueTypeRange" = type { %"class.llvm::iterator_range" }
%"class.llvm::iterator_range" = type { %"class.mlir::ValueTypeIterator", %"class.mlir::ValueTypeIterator" }
%"class.mlir::ValueTypeIterator" = type { %"class.llvm::mapped_iterator_base" }
%"class.llvm::mapped_iterator_base" = type { %"class.llvm::iterator_adaptor_base" }
%"class.llvm::iterator_adaptor_base" = type { %"class.llvm::detail::indexed_accessor_range_base<mlir::ResultRange, mlir::detail::OpResultImpl *, mlir::OpResult, mlir::OpResult, mlir::OpResult>::iterator" }
%"class.llvm::detail::indexed_accessor_range_base<mlir::ResultRange, mlir::detail::OpResultImpl *, mlir::OpResult, mlir::OpResult, mlir::OpResult>::iterator" = type { %"class.llvm::indexed_accessor_iterator.81" }
%"class.llvm::indexed_accessor_iterator.81" = type { ptr, i64 }
%"class.llvm::function_ref" = type { ptr, i64 }
%class.anon.83 = type { ptr, ptr }
%class.anon.84 = type { i8 }
%class.anon.119 = type { ptr, ptr }
%"class.llvm::function_ref.118" = type { ptr, i64 }
%class.anon.120 = type { ptr }
%"class.mlir::scf::YieldOp" = type { %"class.mlir::Op.175" }
%"class.mlir::Op.175" = type { %"class.mlir::OpState" }

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZN4mlir6detail14TypeIDResolverINS_3scf7YieldOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3scf11ConditionOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i8 } @_ZN4mlir3scf28wrapWhileLoopInZeroTripCheckENS0_7WhileOpERNS_12RewriterBaseEb(ptr %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %4 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %5 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %6 = alloca %"class.mlir::scf::WhileOp", align 8 ; 9 uses
  %7 = alloca %"class.mlir::IRMapping", align 8   ; 14 uses
  %8 = alloca %"class.mlir::Operation::CloneOptions", align 8 ; 7 uses
  %9 = alloca %"class.mlir::scf::ConditionOp", align 8 ; 7 uses
  %10 = alloca %"class.llvm::SmallVector.60", align 8 ; 11 uses
  %11 = alloca %"class.mlir::scf::WhileOp", align 8 ; 5 uses
  %12 = alloca %"class.mlir::TypeRange", align 8  ; 3 uses
  %13 = alloca %"class.mlir::ValueTypeRange", align 8 ; 4 uses
  %14 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %15 = alloca %"class.llvm::function_ref", align 8 ; 3 uses
  %16 = alloca %class.anon.83, align 8            ; 5 uses
  %17 = alloca %"class.llvm::function_ref", align 8 ; 3 uses
  %18 = alloca %class.anon.84, align 1            ; 3 uses
  %19 = alloca %class.anon.119, align 8           ; 5 uses
  %20 = alloca %"class.llvm::function_ref.118", align 8 ; 3 uses
  %21 = alloca %class.anon.120, align 8           ; 4 uses
  store ptr %0, ptr %6, align 8
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = and i32 %i.c, 8388607
  %i.e = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.g
  %i.i = lshr i32 %i.c, 21
  %i.j = and i32 %i.i, 2040
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !8
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.u = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.t) #10
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.y = icmp eq ptr %i.x, @_ZN4mlir6detail14TypeIDResolverINS_3scf7YieldOpEvE2idE
  br i1 %i.y, label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load <2 x ptr>, ptr %i.aa, align 8
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.af = load i32, ptr %i.ae, align 4            ; 3 uses
  %i.ag = and i32 %i.af, 8388607
  %i.ah = icmp ne i32 %i.ag, 0
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = lshr i32 %i.af, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i27 = and i32 %i.ai, 1
  %i.aj = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i27 to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aj
  %i.al = lshr i32 %i.af, 21
  %i.am = and i32 %i.al, 2040
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !8
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !27 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !39 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !42 ; 2 uses
  %i.az = call i64 @_ZN4mlir3scf7WhileOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0) #10
  %i.ba = load ptr, ptr %6, align 8, !tbaa !43    ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 44
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = and i32 %i.bc, 8388608
  %.not.i.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir3scf7WhileOp8getInitsEv.exit, label %bb.d, !prof !46

bb.d:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !47
  br label %_ZN4mlir3scf7WhileOp8getInitsEv.exit

_ZN4mlir3scf7WhileOp8getInitsEv.exit:             ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.bf, %bb.d ], [ null, %bb.c ]
  %i.bg = and i64 %i.az, 4294967295
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.bg
  %.not78 = icmp eq ptr %i.aw, %i.ay
  br i1 %.not78, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %6, align 8, !tbaa !43
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4mlir3scf7WhileOp8getInitsEv.exit
  %i.bi = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ba, %_ZN4mlir3scf7WhileOp8getInitsEv.exit ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !50
  %i.bl = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.bi) #10
  store ptr %i.bk, ptr %i.aa, align 8, !tbaa !32
  store ptr %i.bl, ptr %i.ab, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %.sroa.044.081 = load ptr, ptr %i.bm, align 8, !tbaa !27 ; 2 uses
  %.not7182 = icmp eq ptr %.sroa.044.081, %i.bn
  br i1 %.not7182, label %.critedge, label %.lr.ph85

.lr.ph85:                                         ; preds = %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.e

.lr.ph:                                           ; preds = %_ZN4mlir3scf7WhileOp8getInitsEv.exit, %.lr.ph
  %.sroa.452.080 = phi i64 [ %i.bw, %.lr.ph ], [ 0, %_ZN4mlir3scf7WhileOp8getInitsEv.exit ] ; 2 uses
  %.sroa.8.079 = phi ptr [ %i.bv, %.lr.ph ], [ %i.aw, %_ZN4mlir3scf7WhileOp8getInitsEv.exit ] ; 2 uses
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.bh, i64 %.sroa.452.080
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !tbaa !51, !noalias !53
  %.sroa.09.0.copyload = load ptr, ptr %.sroa.8.079, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.sroa.09.0.copyload, ptr %5, align 8
  %i.bt = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.bt, 0
  %i.bu = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.bu, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.8.079, i64 8 ; 2 uses
  %i.bw = add nuw nsw i64 %.sroa.452.080, 1
  %.not = icmp eq ptr %i.bv, %i.ay
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph85, %_ZN4mlir9Operation12CloneOptionsD2Ev.exit
  %.sroa.044.083 = phi ptr [ %.sroa.044.081, %.lr.ph85 ], [ %.sroa.044.0, %_ZN4mlir9Operation12CloneOptionsD2Ev.exit ] ; 2 uses
  %i.bx = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.044.083) #10 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i29 = load ptr, ptr %i.by, align 8, !tbaa !28
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i29, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !29
  %i.cb = icmp eq ptr %i.ca, @_ZN4mlir6detail14TypeIDResolverINS_3scf11ConditionOpEvE2idE
  br i1 %i.cb, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @_ZN4mlir9Operation12CloneOptions3allEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::Operation::CloneOptions") align 8 %8) #10
  %i.cc = call noundef ptr @_ZN4mlir9Operation5cloneERNS_9IRMappingERKNS0_12CloneOptionsE(ptr noundef nonnull align 8 dereferenceable(64) %i.bx, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(80) %8) #10
  %i.cd = call noundef ptr @_ZN4mlir9OpBuilder6insertEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef %i.cc) #10 ; 0 uses
  %i.ce = load i8, ptr %i.bo, align 8, !tbaa !58, !range !60, !noundef !61
  %i.cf = trunc nuw i8 %i.ce to i1
  store i8 0, ptr %i.bo, align 8, !tbaa !58
  br i1 %i.cf, label %bb.g, label %_ZN4mlir9Operation12CloneOptionsD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.cg = load ptr, ptr %i.bp, align 8, !tbaa !62 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bq
  br i1 %i.ch, label %_ZN4mlir9Operation12CloneOptionsD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.cg) #10
  br label %_ZN4mlir9Operation12CloneOptionsD2Ev.exit

_ZN4mlir9Operation12CloneOptionsD2Ev.exit:        ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.044.083, i64 8
  %.sroa.044.0 = load ptr, ptr %i.ci, align 8, !tbaa !27 ; 2 uses
  %.not71 = icmp eq ptr %.sroa.044.0, %i.bn
  br i1 %.not71, label %.critedge, label %bb.e

.critedge:                                        ; preds = %_ZN4mlir9Operation12CloneOptionsD2Ev.exit, %bb.e, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.cj = call ptr @_ZN4mlir3scf7WhileOp14getConditionOpEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  store ptr %i.cj, ptr %9, align 8
  %i.ck = call i64 @_ZN4mlir3scf11ConditionOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0) #10
  %i.cl = load ptr, ptr %9, align 8, !tbaa !43
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !47
  %i.co = and i64 %i.ck, 4294967295
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.cq, align 8, !tbaa !51 ; 3 uses
  %i.cr = load ptr, ptr %7, align 8, !tbaa !64, !noalias !68 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !77, !noalias !68 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !78, !noalias !68 ; 4 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %.loopexit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.cx = add i32 %i.cv, -1                       ; 2 uses
  %i.cy = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i to i64
  %i.cz = xor i64 %i.cy, -49064778989728563       ; 2 uses
  %i.da = lshr i64 %i.cz, 30
  %i.db = xor i64 %i.da, %i.cz
  %i.dc = mul i64 %i.db, -4658895280553007687     ; 2 uses
  %i.dd = lshr i64 %i.dc, 27
  %i.de = xor i64 %i.dd, %i.dc
  %i.df = mul i64 %i.de, -7723592293110705685     ; 2 uses
  %i.dg = lshr i64 %i.df, 31
  %i.dh = xor i64 %i.dg, %i.df
  %i.di = trunc i64 %i.dh to i32
  %i.dj = and i32 %i.cx, %i.di                    ; 3 uses
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = lshr i64 %i.dk, 5
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !79, !noalias !80
  %i.do = and i32 %i.dj, 31
  %i.dp = lshr i32 %i.dn, %i.do
  %i.dq = trunc i32 %i.dp to i1
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !81

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.i, %bb.j
  %i.dr = phi i64 [ %i.dw, %bb.j ], [ %i.dk, %bb.i ]
  %.01419.i.i.i.i.i.i = phi i32 [ %i.dv, %bb.j ], [ %i.dj, %bb.i ]
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.dr ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i31 = load ptr, ptr %i.ds, align 8, !tbaa !51, !noalias !80
  %i.dt = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i31
  br i1 %i.dt, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.loopexit.i.i, label %bb.j, !prof !82

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.du = add nuw i32 %.01419.i.i.i.i.i.i, 1
  %i.dv = and i32 %i.du, %i.cx                    ; 3 uses
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  %i.dx = lshr i64 %i.dw, 5
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !79, !noalias !80
  %i.ea = and i32 %i.dv, 31
  %i.eb = lshr i32 %i.dz, %i.ea
  %i.ec = trunc i32 %i.eb to i1
  br i1 %i.ec, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !83

.loopexit.i.i.i.i:                                ; preds = %bb.j, %bb.i, %.critedge
  %i.ed = zext i32 %i.cv to i64                   ; 2 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.ed
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i = zext i32 %i.cv to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.loopexit.i.i, %.loopexit.i.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.loopexit.i.i ], [ %i.ed, %.loopexit.i.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi ptr [ %i.ds, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.loopexit.i.i ], [ %i.ee, %.loopexit.i.i.i.i ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %.pre-phi.i.i
  %.not.i.i = icmp eq ptr %.lcssa.sink.i.i.i.i, %i.ef
  br i1 %.not.i.i, label %_ZNK4mlir9IRMapping15lookupOrDefaultINS_6detail10TypedValueINS_11IntegerTypeEEEEEDaT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i, i64 8
  %.sroa.speculate.load..i.i = load ptr, ptr %i.eg, align 8, !tbaa !51
  br label %_ZNK4mlir9IRMapping15lookupOrDefaultINS_6detail10TypedValueINS_11IntegerTypeEEEEEDaT_.exit

_ZNK4mlir9IRMapping15lookupOrDefaultINS_6detail10TypedValueINS_11IntegerTypeEEEEEDaT_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.i.i, %bb.k
  %.sroa.speculated.i.i = phi ptr [ %.sroa.speculate.load..i.i, %bb.k ], [ %.sroa.0.0.copyload.i.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.eh = call i64 @_ZN4mlir3scf11ConditionOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1) #10 ; 3 uses
  %i.ei = load ptr, ptr %9, align 8, !tbaa !43    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 44
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = and i32 %i.ek, 8388608
  %.not.i.i.i.i.i32 = icmp eq i32 %i.el, 0
  br i1 %.not.i.i.i.i.i32, label %_ZN4mlir3scf11ConditionOp7getArgsEv.exit, label %bb.l, !prof !46

bb.l:                                             ; preds = %_ZNK4mlir9IRMapping15lookupOrDefaultINS_6detail10TypedValueINS_11IntegerTypeEEEEEDaT_.exit
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 72
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !47
  br label %_ZN4mlir3scf11ConditionOp7getArgsEv.exit

_ZN4mlir3scf11ConditionOp7getArgsEv.exit:         ; preds = %_ZNK4mlir9IRMapping15lookupOrDefaultINS_6detail10TypedValueINS_11IntegerTypeEEEEEDaT_.exit, %bb.l
  %.sroa.0.0.i.i.i.i.i33 = phi ptr [ %i.en, %bb.l ], [ null, %_ZNK4mlir9IRMapping15lookupOrDefaultINS_6detail10TypedValueINS_11IntegerTypeEEEEEDaT_.exit ]
  %i.eo = and i64 %i.eh, 4294967295               ; 4 uses
  %.sroa.5.0.extract.shift.i.i34 = lshr i64 %i.eh, 32
  %i.ep = add i64 %.sroa.5.0.extract.shift.i.i34, %i.eh
  %i.eq = and i64 %i.ep, 4294967295               ; 3 uses
  %i.er = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i33, i64 %i.eo ; 6 uses
  %i.es = sub nsw i64 %i.eq, %i.eo                ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.et, ptr %10, align 8, !tbaa !62, !alias.scope !87
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i32 0, ptr %i.eu, align 8, !tbaa !90, !alias.scope !87
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 6, ptr %i.ev, align 4, !tbaa !91, !alias.scope !87
  %i.ew = icmp ugt i64 %i.es, 6
  br i1 %i.ew, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.thread.i: ; preds = %_ZN4mlir3scf11ConditionOp7getArgsEv.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull %i.et, i64 noundef %i.es, i64 noundef 8) #10
  %.pre.i.i.i.i = load i32, ptr %i.eu, align 8, !tbaa !90, !alias.scope !87
  %.pre93 = load ptr, ptr %10, align 8, !tbaa !62, !alias.scope !87
  br label %.lr.ph.i.i.i.i.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i: ; preds = %_ZN4mlir3scf11ConditionOp7getArgsEv.exit
  %.not3.i.i.i.i.i.i.i.i = icmp eq i64 %i.eq, %i.eo
  br i1 %.not3.i.i.i.i.i.i.i.i, label %"_ZN4llvm13map_to_vectorIN4mlir12OperandRangeEZNS1_3scf28wrapWhileLoopInZeroTripCheckENS3_7WhileOpERNS1_12RewriterBaseEbE3$_0EEDaOT_OT0_.exit", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.thread.i
  %i.ex = phi ptr [ %.pre93, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.thread.i ], [ %i.et, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i ]
  %i.ey = phi i32 [ %.pre.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i ] ; 4 uses
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ez ; 3 uses
  %i.fb = load ptr, ptr %7, align 8, !tbaa !64, !noalias !92
  %i.fc = load ptr, ptr %i.cs, align 8, !tbaa !77, !noalias !92 ; 2 uses
  %i.fd = load i32, ptr %i.cu, align 4, !tbaa !78, !noalias !92 ; 3 uses
  %i.fe = icmp eq i32 %i.fd, 0
  %i.ff = add i32 %i.fd, -1                       ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.fd to i64
  br i1 %i.fe, label %.loopexit.i.i.i.i.i.i.i.i.i.i.us.us.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.us.us.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.es, 3                    ; 3 uses
  %i.fg = sub nsw i64 %i.eo, %i.eq
  %i.fh = icmp ugt i64 %i.fg, -4
  br i1 %i.fh, label %.loopexit.i.i.i.i.i.i.i.i.i.i.us.us.i.i.i.i.i.i.i.i.epil.preheader, label %.loopexit.i.i.i.i.i.i.i.i.i.i.us.us.i.i.i.i.i.i.i.i.preheader.new

.loopexit.i.i.i.i.i.i.i.i.i.i.us.us.i.i.i.i.i.i.i.i.preheader.new: ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.us.us.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.es, -4
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.us.us.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.us.us.i.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.us.us.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.us.us.i.i.i.i.i.i.i.i.preheader.new
  %.05.us.us.i.i.i.i.i.i.i.i = phi ptr [ %i.fa, %.loopexit.i.i.i.i.i.i.i.i.i.i.us.us.i.i.i.i.i.i.i.i.preheader.new ], [ %i.fy, %.loopexit.i.i.i.i.i.i.i.i.i.i.us.us.i.i.i.i.i.i.i.i ] ; 5 uses
  %.val24.us.us.i.i.i.i.i.i.i.i = phi i64 [ 0, %.loopexit.i.i.i.i.i.i.i.i.i.i.us.us.i.i.i.i.i.i.i.i.preheader.new ], [ %i.fx, %.loopexit.i.i.i.i.i.i.i.i.i.i.us.us.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.loopexit.i.i.i.i.i.i.i.i.i.i.us.us.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.loopexit.i.i.i.i.i.i.i.i.i.i.us.us.i.i.i.i.i.i.i.i ]
  %i.fi = getelementptr inbounds nuw [32 x i8], ptr %i.er, i64 %.val24.us.us.i.i.i.i.i.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %.sroa.0.0.copyload.i.i.i.i.us.us.i.i.i.i.i.i.i.i = load ptr, ptr %i.fj, align 8, !tbaa !51, !noalias !84
  %i.fk = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.us.us.i.i.i.i.i.i.i.i to i64
  store i64 %i.fk, ptr %.05.us.us.i.i.i.i.i.i.i.i, align 8, !tbaa !51
  %i.fl = getelementptr inbounds nuw i8, ptr %.05.us.us.i.i.i.i.i.i.i.i, i64 8
end_hunk_0
