Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/UpliftWhileToFor?download=true
inline.NumInlined: 1531
inline.NumDeleted: 943
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"class.mlir::scf::ConditionOp" = type { %"class.mlir::Op.77" }
%"class.mlir::Op.77" = type { %"class.mlir::OpState" }
%"class.mlir::OpState" = type { ptr }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [48 x i8] }
%"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator" = type { %"class.llvm::indexed_accessor_iterator.543" }
%"class.llvm::indexed_accessor_iterator.543" = type { %"class.llvm::PointerUnion", i64 }
%"class.llvm::PointerUnion" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers" }
%"class.llvm::pointer_union_detail::PointerUnionMembers" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.110" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.110" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.111" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.111" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.112" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.112" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.113" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.113" = type { %"struct.llvm::detail::PunnedPointer.114" }
%"struct.llvm::detail::PunnedPointer.114" = type { [8 x i8] }
%"class.mlir::ResultRange::UseIterator" = type { %"class.llvm::detail::indexed_accessor_range_base<mlir::ResultRange, mlir::detail::OpResultImpl *, mlir::OpResult, mlir::OpResult, mlir::OpResult>::iterator", %"class.llvm::detail::indexed_accessor_range_base<mlir::ResultRange, mlir::detail::OpResultImpl *, mlir::OpResult, mlir::OpResult, mlir::OpResult>::iterator", %"class.mlir::ValueUseIterator" }
%"class.llvm::detail::indexed_accessor_range_base<mlir::ResultRange, mlir::detail::OpResultImpl *, mlir::OpResult, mlir::OpResult, mlir::OpResult>::iterator" = type { %"class.llvm::indexed_accessor_iterator.509" }
%"class.llvm::indexed_accessor_iterator.509" = type { ptr, i64 }
%"class.mlir::ValueUseIterator" = type { ptr }
%"class.mlir::ResultRange" = type { %"class.llvm::detail::indexed_accessor_range_base.436" }
%"class.llvm::detail::indexed_accessor_range_base.436" = type { ptr, i64 }
%"class.llvm::iterator_range.507" = type { %"class.mlir::ResultRange::UseIterator", %"class.mlir::ResultRange::UseIterator" }
%class.anon.524 = type { ptr }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.mlir::scf::WhileOp" = type { %"class.mlir::Op.13" }
%"class.mlir::Op.13" = type { %"class.mlir::OpState" }
%"class.mlir::arith::CmpIOp" = type { %"class.mlir::Op.42" }
%"class.mlir::Op.42" = type { %"class.mlir::OpState" }
%class.anon = type { ptr }
%"class.std::optional.100" = type { %"struct.std::_Optional_base.101" }
%"struct.std::_Optional_base.101" = type { %"struct.std::_Optional_payload.103" }
%"struct.std::_Optional_payload.103" = type { %"struct.std::_Optional_payload.base.107", [7 x i8] }
%"struct.std::_Optional_payload.base.107" = type { %"struct.std::_Optional_payload_base.base.106" }
%"struct.std::_Optional_payload_base.base.106" = type <{ %"union.std::_Optional_payload_base<llvm::SmallVector<unsigned int>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::SmallVector<unsigned int>>::_Storage" = type { %"class.llvm::SmallVector" }
%"class.mlir::ValueRange" = type { %"class.llvm::detail::indexed_accessor_range_base" }
%"class.llvm::detail::indexed_accessor_range_base" = type { %"class.llvm::PointerUnion", i64 }
%class.anon.117 = type { ptr }
%"class.mlir::BlockArgument" = type { %"class.mlir::Value" }
%"class.mlir::Value" = type { ptr }
%"class.mlir::DominanceInfo" = type { %"class.mlir::detail::DominanceInfoBase" }
%"class.mlir::detail::DominanceInfoBase" = type { %"class.llvm::DenseMap" }
%"class.llvm::DenseMap" = type { ptr, ptr, i32, i32 }
%class.anon.118 = type { ptr }
%class.anon.120 = type { ptr }
%"class.mlir::scf::YieldOp" = type { %"class.mlir::Op.121" }
%"class.mlir::Op.121" = type { %"class.mlir::OpState" }
%"class.llvm::SmallVector.206" = type { %"class.llvm::SmallVectorImpl.207", %"struct.llvm::SmallVectorStorage.210" }
%"class.llvm::SmallVectorImpl.207" = type { %"class.llvm::SmallVectorTemplateBase.208" }
%"class.llvm::SmallVectorTemplateBase.208" = type { %"class.llvm::SmallVectorTemplateCommon.209" }
%"class.llvm::SmallVectorTemplateCommon.209" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.210" = type { [48 x i8] }
%"struct.llvm::detail::enumerator_result" = type { i64, %"class.std::tuple.221" }
%"class.std::tuple.221" = type { %"struct.std::_Tuple_impl.222" }
%"struct.std::_Tuple_impl.222" = type { %"struct.std::_Head_base.223" }
%"struct.std::_Head_base.223" = type { %"class.mlir::Value" }
%class.anon.224 = type { i8 }
%"class.mlir::scf::ForOp" = type { %"class.mlir::Op" }
%"class.mlir::Op" = type { %"class.mlir::OpState" }
%"class.llvm::function_ref" = type { ptr, i64 }
%"class.llvm::ArrayRef.549" = type { ptr, i64 }
%"class.mlir::PatternBenefit" = type { i16 }
%"class.mlir::DiagnosticArgument" = type { i32, %union.anon }
%union.anon = type { %"class.llvm::StringRef" }
%"class.llvm::StringRef" = type { ptr, i64 }

$_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_PKc = comdat any

$_ZN4mlir3scf7YieldOp10getResultsEv = comdat any

$_ZN4mlir3scf7WhileOp8getInitsEv = comdat any

$_ZN4llvm15SmallVectorImplIN4mlir5ValueEE12emplace_backIJRS2_EEES5_DpOT_ = comdat any

$_ZN4llvm15SmallVectorImplIN4mlir5ValueEE12emplace_backIJS2_EEERS2_DpOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_ = comdat any

$_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEaSERKS3_ = comdat any

$_ZN4mlir12RewriterBase18replaceOpWithNewOpINS_3scf7YieldOpEJRN4llvm11SmallVectorINS_5ValueELj6EEEEEET_PNS_9OperationEDpOT0_ = comdat any

$_ZN4mlir3scf5ForOp10getResultsEv = comdat any

$_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6insertEPS2_RKS2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj = comdat any

$_ZN4llvm15SmallVectorImplIjEaSEOS1_ = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3scf7WhileOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18growAndEmplaceBackIJRS2_EEES5_DpOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18growAndEmplaceBackIJS2_EEERS2_DpOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6insertINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEvEEPS2_SE_T_SF_ = comdat any

$_ZN4mlir14RewritePatternD2Ev = comdat any

$_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_3scf7WhileOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [30 x i8] c"Loop body must have single op\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Loop body must have single cmp op\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid args order\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Didn't found suitable 'addi' op\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Invalid 'addi' form\00", align 1
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_5arith6CmpIOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.10 = private unnamed_addr constant [32 x i8] c"Expected single condition use: \00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Expected 'slt' or 'sgt' predicate: \00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Unrecognized cmp form: \00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Unrecognized induction var: \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5arith6AddIOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_9IndexTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZTVN12_GLOBAL__N_113UpliftWhileOpE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN12_GLOBAL__N_113UpliftWhileOpD0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_3scf7WhileOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK12_GLOBAL__N_113UpliftWhileOp15matchAndRewriteEN4mlir3scf7WhileOpERNS1_15PatternRewriterE] }, align 8
@.str.14 = private unnamed_addr constant [10 x i8] c"scf.while\00", align 1
@.str.15 = private unnamed_addr constant [87 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::UpliftWhileOp]\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i8 } @_ZN4mlir3scf20upliftWhileToForLoopERNS_12RewriterBaseENS0_7WhileOpE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.mlir::scf::ConditionOp", align 8 ; 6 uses
  %3 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  %4 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 6 uses
  %5 = alloca %"class.mlir::ResultRange::UseIterator", align 8 ; 5 uses
  %6 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %7 = alloca %"class.llvm::iterator_range.507", align 8 ; 7 uses
  %8 = alloca %class.anon.524, align 8            ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %class.anon.524, align 8           ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.mlir::scf::WhileOp", align 8 ; 20 uses
  %13 = alloca %"class.mlir::arith::CmpIOp", align 8 ; 13 uses
  %14 = alloca %"class.mlir::scf::ConditionOp", align 8 ; 8 uses
  %15 = alloca %class.anon, align 8               ; 4 uses
  %16 = alloca %"class.std::optional.100", align 8 ; 19 uses
  %17 = alloca %"class.mlir::ValueRange", align 8 ; 7 uses
  %18 = alloca %"class.std::optional.100", align 8 ; 15 uses
  %19 = alloca %class.anon.117, align 8           ; 4 uses
  %20 = alloca %"class.mlir::BlockArgument", align 8 ; 5 uses
  %21 = alloca %"class.mlir::DominanceInfo", align 8 ; 7 uses
  %22 = alloca %class.anon.118, align 8           ; 4 uses
  %23 = alloca %class.anon.120, align 8           ; 4 uses
  %24 = alloca %"class.mlir::scf::YieldOp", align 8 ; 4 uses
  %25 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %26 = alloca %"class.llvm::SmallVector.206", align 8 ; 25 uses
  %27 = alloca %"struct.llvm::detail::enumerator_result", align 8 ; 4 uses
  %28 = alloca %class.anon.224, align 1           ; 3 uses
  %29 = alloca %"class.mlir::scf::ForOp", align 8 ; 5 uses
  %30 = alloca %"class.mlir::ValueRange", align 8 ; 2 uses
  %31 = alloca %"class.llvm::function_ref", align 8 ; 3 uses
  %32 = alloca %"class.mlir::ValueRange", align 8 ; 7 uses
  %33 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %34 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %35 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %36 = alloca %"class.llvm::SmallVector.206", align 8 ; 9 uses
  %37 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %38 = alloca %"class.mlir::scf::YieldOp", align 8 ; 6 uses
  %39 = alloca %"struct.llvm::detail::enumerator_result", align 8 ; 4 uses
  %40 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %41 = alloca %"class.llvm::SmallVector.206", align 8 ; 9 uses
  %42 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  store ptr %1, ptr %12, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = and i32 %i.b, 8388607
  %i.d = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = lshr i32 %i.b, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.f
  %i.h = lshr i32 %i.b, 21
  %i.i = and i32 %i.h, 2040
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !89
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !90   ; 5 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !90
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvm16hasSingleElementINS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEbOT_.exit.thread, label %_ZN4mlir5Block18without_terminatorEv.exit

_ZN4mlir5Block18without_terminatorEv.exit:        ; preds = %bb.a
  %i.w = tail call { ptr, ptr } @_ZN4mlir5Block23without_terminator_implEv(ptr noundef nonnull align 8 dereferenceable(80) %i.r) #16 ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 2 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 2 uses
  %.not.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i, label %_ZN4llvm16hasSingleElementINS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEbOT_.exit.thread, label %_ZN4llvm16hasSingleElementINS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEbOT_.exit

_ZN4llvm16hasSingleElementINS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEbOT_.exit: ; preds = %_ZN4mlir5Block18without_terminatorEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !90
  %i.ab = icmp eq ptr %i.aa, %i.y
  br i1 %i.ab, label %bb.c, label %_ZN4llvm16hasSingleElementINS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEbOT_.exit.thread

_ZN4llvm16hasSingleElementINS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEbOT_.exit.thread: ; preds = %bb.a, %_ZN4mlir5Block18without_terminatorEv.exit, %_ZN4llvm16hasSingleElementINS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEbOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.ad, align 1, !tbaa !28
  store ptr @.str, ptr %11, align 8, !tbaa !29
  store i8 3, ptr %i.ac, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store ptr %11, ptr %10, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !39 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm16hasSingleElementINS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEbOT_.exit.thread
  %i.ag = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #16
  br i1 %i.ag, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i167 = load ptr, ptr %i.ah, align 8
  %i.ai = ptrtoint ptr %10 to i64
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(12) %i.af, ptr %.sroa.0.0.copyload.i.i.i.i167, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3scf7WhileOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ai) #16, !inline_history !71
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %_ZN4llvm16hasSingleElementINS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEbOT_.exit.thread, %bb.b, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %bb.co

bb.c:                                             ; preds = %_ZN4llvm16hasSingleElementINS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEbOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %i.am = load ptr, ptr %i.s, align 8, !tbaa !90
  %i.an = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.am) #16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !91
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !94
  %i.ar = icmp eq ptr %i.aq, @_ZN4mlir6detail14TypeIDResolverINS_5arith6CmpIOpEvE2idE
  %43 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_5arith6CmpIOpEvE2idE
  %spec.select.i.i.i.i = and i1 %43, %i.ar        ; 2 uses
  %spec.select.i.i = select i1 %spec.select.i.i.i.i, ptr %i.an, ptr null
  store ptr %spec.select.i.i, ptr %13, align 8
  br i1 %spec.select.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.at, align 1, !tbaa !28
  store ptr @.str.1, ptr %9, align 8, !tbaa !29
  store i8 3, ptr %i.as, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store ptr %9, ptr %8, align 8, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !39 ; 4 uses
  %.not.i.i.i.i168 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i168, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_PKc.exit171, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.av) #16
  br i1 %i.aw, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i169, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_PKc.exit171

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i169: ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i170 = load ptr, ptr %i.ax, align 8
  %i.ay = ptrtoint ptr %8 to i64
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(12) %i.av, ptr %.sroa.0.0.copyload.i.i.i.i170, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3scf7WhileOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ay) #16, !inline_history !71
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_PKc.exit171

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_PKc.exit171: ; preds = %bb.d, %bb.e, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.cn

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  %i.bc = call ptr @_ZN4mlir3scf7WhileOp14getConditionOpEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #16
  store ptr %i.bc, ptr %14, align 8
  %i.bd = load ptr, ptr %13, align 8, !tbaa !44   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16, !noalias !95
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 36
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !45, !noalias !95 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 -16
  %i.bi = zext i32 %i.bf to i64
  %.sroa.0.0.i.i.i = select i1 %i.bg, ptr null, ptr %i.bh
  store ptr %.sroa.0.0.i.i.i, ptr %6, align 8, !noalias !95
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !noalias !95
  call void @_ZNK4mlir11ResultRange7getUsesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.507") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !noalias !95
  %.sroa.4.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.4.0.copyload7.i.i = load ptr, ptr %.sroa.4.0..sroa_idx6.i.i, align 8 ; 2 uses
  %.sroa.33.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 72
  %.sroa.33.0.copyload.i.i = load ptr, ptr %.sroa.33.0..sroa_idx.i.i, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.4.0.copyload7.i.i, %.sroa.33.0.copyload.i.i
  br i1 %.not.i.i, label %_ZN4mlir9Operation9hasOneUseEv.exit.thread, label %_ZN4mlir9Operation9hasOneUseEv.exit

_ZN4mlir9Operation9hasOneUseEv.exit.thread:       ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %.critedge

_ZN4mlir9Operation9hasOneUseEv.exit:              ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(80) %7, i64 32, i1 false)
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %.sroa.4.0.copyload7.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.bk = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4mlir11ResultRange11UseIteratorppEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #16, !noalias !96 ; 0 uses
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bl = icmp eq ptr %.sroa.3.0.copyload.i.i, %.sroa.33.0.copyload.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br i1 %i.bl, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZN4mlir9Operation9hasOneUseEv.exit
  %i.bm = call i64 @_ZN4mlir3scf11ConditionOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 0) #16
  %i.bn = load ptr, ptr %14, align 8, !tbaa !44
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !48
  %i.bq = and i64 %i.bm, 4294967295
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %.sroa.0.0.copyload.i.i.i.i172 = load ptr, ptr %i.bs, align 8, !tbaa !50
  %i.bt = load ptr, ptr %13, align 8, !tbaa !44
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -16
  %i.bv = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 noundef 0) #16
  %.not337 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i172, %i.bv
  br i1 %.not337, label %bb.i, label %.critedge

.critedge:                                        ; preds = %_ZN4mlir9Operation9hasOneUseEv.exit, %_ZN4mlir9Operation9hasOneUseEv.exit.thread, %bb.g
  %i.bw = load ptr, ptr %12, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  store ptr %13, ptr %15, align 8, !tbaa !97
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.bx, align 8, !tbaa !39 ; 4 uses
  %.not.i.i173 = icmp eq ptr %.val, null
  br i1 %.not.i.i173, label %"_ZN4mlir12RewriterBase18notifyMatchFailureIZNS_3scf20upliftWhileToForLoopERS0_NS2_7WhileOpEE3$_1EENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm5TwineEEE5valueENS8_13LogicalResultEE4typeEPNS_9OperationEOS7_.exit", label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.by = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %.val) #16
  br i1 %i.by, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i, label %"_ZN4mlir12RewriterBase18notifyMatchFailureIZNS_3scf20upliftWhileToForLoopERS0_NS2_7WhileOpEE3$_1EENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm5TwineEEE5valueENS8_13LogicalResultEE4typeEPNS_9OperationEOS7_.exit"

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i: ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bz, align 8
  %i.ca = ptrtoint ptr %15 to i64
  %i.cb = load ptr, ptr %.val, align 8, !tbaa !41
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 88
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(12) %.val, ptr %.sroa.0.0.copyload.i.i, ptr nonnull @"_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_3scf20upliftWhileToForLoopERNS1_12RewriterBaseENS7_7WhileOpEE3$_1EEvlS3_", i64 %i.ca) #16, !inline_history !76
  br label %"_ZN4mlir12RewriterBase18notifyMatchFailureIZNS_3scf20upliftWhileToForLoopERS0_NS2_7WhileOpEE3$_1EENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm5TwineEEE5valueENS8_13LogicalResultEE4typeEPNS_9OperationEOS7_.exit"

"_ZN4mlir12RewriterBase18notifyMatchFailureIZNS_3scf20upliftWhileToForLoopERS0_NS2_7WhileOpEE3$_1EENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm5TwineEEE5valueENS8_13LogicalResultEE4typeEPNS_9OperationEOS7_.exit": ; preds = %.critedge, %bb.h, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.cm

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 10 uses
  store i8 0, ptr %i.ce, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !101 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !102
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 3
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %i.cg, i64 %i.cm) #16
  %i.cn = call i64 @_ZN4mlir3scf11ConditionOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1) #16 ; 3 uses
  %i.co = load ptr, ptr %14, align 8, !tbaa !44   ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 44
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = and i32 %i.cq, 8388608
  %.not.i.i.i.i.i176 = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i.i.i.i176, label %_ZN4mlir3scf11ConditionOp7getArgsEv.exit, label %bb.j, !prof !53

bb.j:                                             ; preds = %bb.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !48
  br label %_ZN4mlir3scf11ConditionOp7getArgsEv.exit

_ZN4mlir3scf11ConditionOp7getArgsEv.exit:         ; preds = %bb.i, %bb.j
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.ct, %bb.j ], [ null, %bb.i ]
  %i.cu = and i64 %i.cn, 4294967295               ; 3 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.cn, 32
  %i.cv = add i64 %.sroa.5.0.extract.shift.i.i, %i.cn
  %i.cw = and i64 %i.cv, 4294967295               ; 2 uses
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.cu
  %i.cy = sub nsw i64 %i.cw, %i.cu                ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !111
  %.not.i.i.i.i177 = icmp eq i64 %i.da, %i.cy
  br i1 %.not.i.i.i.i177, label %bb.k, label %_ZN4llvm6detailneIN4mlir12OperandRangeENS2_10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS6_EEEEES6_S6_S6_EEbRKNS0_27indexed_accessor_range_baseIT0_T1_T2_T3_T4_EERKT_.exit.thread

_ZN4llvm6detailneIN4mlir12OperandRangeENS2_10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS6_EEEEES6_S6_S6_EEbRKNS0_27indexed_accessor_range_baseIT0_T1_T2_T3_T4_EERKT_.exit.thread: ; preds = %_ZN4mlir3scf11ConditionOp7getArgsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %bb.m

bb.k:                                             ; preds = %_ZN4mlir3scf11ConditionOp7getArgsEv.exit
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %17, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %4, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.db, align 8
  %.not5.i.i.i.i.i.i.i.i = icmp eq i64 %i.cw, %i.cu
  br i1 %.not5.i.i.i.i.i.i.i.i, label %_ZN4llvm6detailneIN4mlir12OperandRangeENS2_10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS6_EEEEES6_S6_S6_EEbRKNS0_27indexed_accessor_range_baseIT0_T1_T2_T3_T4_EERKT_.exit.thread329, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.k, %bb.l
  %i.dc = phi i64 [ %i.dh, %bb.l ], [ 0, %bb.k ]
  %.sroa.2.06.i.i.i.i.i.i.i.i = phi i64 [ %i.di, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.dd = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.dc) #16
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %.sroa.2.06.i.i.i.i.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.df, align 8, !tbaa !50
  %.not.i178 = icmp eq ptr %i.dd, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i178, label %bb.l, label %_ZN4llvm6detailneIN4mlir12OperandRangeENS2_10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS6_EEEEES6_S6_S6_EEbRKNS0_27indexed_accessor_range_baseIT0_T1_T2_T3_T4_EERKT_.exit

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.dg = load i64, ptr %i.db, align 8, !tbaa !113
  %i.dh = add nsw i64 %i.dg, 1                    ; 3 uses
  store i64 %i.dh, ptr %i.db, align 8, !tbaa !113
  %i.di = add nuw nsw i64 %.sroa.2.06.i.i.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.dh, %i.cy
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm6detailneIN4mlir12OperandRangeENS2_10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS6_EEEEES6_S6_S6_EEbRKNS0_27indexed_accessor_range_baseIT0_T1_T2_T3_T4_EERKT_.exit.thread329, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !77

_ZN4llvm6detailneIN4mlir12OperandRangeENS2_10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS6_EEEEES6_S6_S6_EEbRKNS0_27indexed_accessor_range_baseIT0_T1_T2_T3_T4_EERKT_.exit.thread329: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %.critedge159

_ZN4llvm6detailneIN4mlir12OperandRangeENS2_10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS6_EEEEES6_S6_S6_EEbRKNS0_27indexed_accessor_range_baseIT0_T1_T2_T3_T4_EERKT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %.sroa.0112.0.copyload.pre = load ptr, ptr %14, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN4llvm6detailneIN4mlir12OperandRangeENS2_10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS6_EEEEES6_S6_S6_EEbRKNS0_27indexed_accessor_range_baseIT0_T1_T2_T3_T4_EERKT_.exit, %_ZN4llvm6detailneIN4mlir12OperandRangeENS2_10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS6_EEEEES6_S6_S6_EEbRKNS0_27indexed_accessor_range_baseIT0_T1_T2_T3_T4_EERKT_.exit.thread
end_hunk_0
begin_hunk_1_@_ZN4mlir3scf20upliftWhileToForLoopERNS_12RewriterBaseENS0_7WhileOpE:bb.a
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIjLj12EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIjLj12EEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt8optionalIN4llvm11SmallVectorIjLj12EEEEaSEOS3_.exit, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %i.jd = load i8, ptr %i.ce, align 8, !tbaa !99, !range !130, !noundef !62
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %.critedge159, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt14_Optional_baseIN4llvm11SmallVectorIjLj12EEELb0ELb0EED2Ev.exit
  %i.jf = call i8 @_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_PKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.2) ; 0 uses
  br label %bb.cj

.critedge159:                                     ; preds = %_ZNSt14_Optional_baseIN4llvm11SmallVectorIjLj12EEELb0ELb0EED2Ev.exit, %_ZN4llvm6detailneIN4mlir12OperandRangeENS2_10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS6_EEEEES6_S6_S6_EEbRKNS0_27indexed_accessor_range_baseIT0_T1_T2_T3_T4_EERKT_.exit.thread329
  %i.jg = call noundef i64 @_ZN4mlir5arith6CmpIOp12getPredicateEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #16
  switch i64 %i.jg, label %bb.ar [
    i64 4, label %bb.as
    i64 2, label %bb.as
  ]

bb.ar:                                            ; preds = %.critedge159
  %i.jh = load ptr, ptr %12, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  store ptr %13, ptr %19, align 8, !tbaa !97
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val164 = load ptr, ptr %i.ji, align 8, !tbaa !39
  call fastcc void @"_ZN4mlir12RewriterBase18notifyMatchFailureIZNS_3scf20upliftWhileToForLoopERS0_NS2_7WhileOpEE3$_3EENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm5TwineEEE5valueENS8_13LogicalResultEE4typeEPNS_9OperationEOS7_"(ptr %.val164, ptr noundef %i.jh, ptr noundef nonnull align 8 dereferenceable(8) %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %bb.cj

bb.as:                                            ; preds = %.critedge159, %.critedge159
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  store ptr null, ptr %20, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %i.jj = call noundef i64 @_ZN4mlir5arith6CmpIOp12getPredicateEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #16
  %.not154 = icmp eq i64 %i.jj, 2
  br i1 %.not154, label %bb.at, label %.critedge161

bb.at:                                            ; preds = %bb.as
  %i.jk = load ptr, ptr %13, align 8, !tbaa !44
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 72
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !48 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 56
  %.sroa.097.0.pre = load ptr, ptr %i.jo, align 8, !tbaa !50 ; 2 uses
  %storemerge331.pre = load ptr, ptr %i.jn, align 8, !tbaa !50 ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %storemerge331.pre, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jp, align 8
  %i.jq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  %i.jr = icmp ne i64 %i.jq, 7
  %.not338339 = icmp eq ptr %storemerge331.pre, null
  %.not338 = or i1 %.not338339, %i.jr
  br i1 %.not338, label %.critedge161, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.js = getelementptr inbounds nuw i8, ptr %storemerge331.pre, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !128
  %.not155 = icmp eq ptr %i.jt, %i.r
  br i1 %.not155, label %bb.av, label %.critedge161

bb.av:                                            ; preds = %bb.au
  %i.ju = load ptr, ptr %12, align 8, !tbaa !44
  %i.jv = call noundef zeroext i1 @_ZNK4mlir13DominanceInfo17properlyDominatesENS_5ValueEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr %.sroa.097.0.pre, ptr noundef %i.ju) #16
  br i1 %i.jv, label %.lr.ph.i.i, label %.critedge161

.critedge161:                                     ; preds = %bb.at, %bb.au, %bb.av, %bb.as
  %i.jw = call noundef i64 @_ZN4mlir5arith6CmpIOp12getPredicateEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #16
  %.not154.1 = icmp eq i64 %i.jw, 4
  br i1 %.not154.1, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %.critedge161
  %i.jx = load ptr, ptr %13, align 8, !tbaa !44
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 72
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !48 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 56
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %.sroa.097.0.1.pre = load ptr, ptr %i.kb, align 8, !tbaa !50 ; 2 uses
  %storemerge331.1.pre = load ptr, ptr %i.ka, align 8, !tbaa !50 ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %storemerge331.1.pre, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1.pre = load i64, ptr %.phi.trans.insert, align 8
  %i.kc = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1.pre, 7
  %i.kd = icmp ne i64 %i.kc, 7
  %.not338339.1 = icmp eq ptr %storemerge331.1.pre, null
  %.not338.1 = or i1 %.not338339.1, %i.kd
  br i1 %.not338.1, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ke = getelementptr inbounds nuw i8, ptr %storemerge331.1.pre, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !128
  %.not155.1 = icmp eq ptr %i.kf, %i.r
  br i1 %.not155.1, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.kg = load ptr, ptr %12, align 8, !tbaa !44
  %i.kh = call noundef zeroext i1 @_ZNK4mlir13DominanceInfo17properlyDominatesENS_5ValueEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr %.sroa.097.0.1.pre, ptr noundef %i.kg) #16
  br i1 %i.kh, label %.lr.ph.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %.critedge161
  %i.ki = load ptr, ptr %12, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  store ptr %13, ptr %22, align 8, !tbaa !97
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val165 = load ptr, ptr %i.kj, align 8, !tbaa !39
  call fastcc void @"_ZN4mlir12RewriterBase18notifyMatchFailureIZNS_3scf20upliftWhileToForLoopERS0_NS2_7WhileOpEE3$_4EENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm5TwineEEE5valueENS8_13LogicalResultEE4typeEPNS_9OperationEOS7_"(ptr %.val165, ptr noundef %i.ki, ptr noundef nonnull align 8 dereferenceable(8) %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  br label %bb.ci

.lr.ph.i.i:                                       ; preds = %bb.ay, %bb.av
  %.sroa.097.0.lcssa = phi ptr [ %.sroa.097.0.pre, %bb.av ], [ %.sroa.097.0.1.pre, %bb.ay ] ; 2 uses
  %storemerge331.lcssa = phi ptr [ %storemerge331.pre, %bb.av ], [ %storemerge331.1.pre, %bb.ay ] ; 3 uses
  %i.kk = ptrtoint ptr %storemerge331.lcssa to i64
  store i64 %i.kk, ptr %20, align 8
  %i.kl = load ptr, ptr %storemerge331.lcssa, align 8, !tbaa !133 ; 2 uses
  %i.km = icmp eq ptr %i.kl, null
  br i1 %i.km, label %_ZN4llvm9hasNItemsINS_14iterator_rangeIN4mlir16ValueUseIteratorINS2_9OpOperandEEEEEEEbOT_j.exit.thread, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.kn = load ptr, ptr %i.kl, align 8, !tbaa !136 ; 2 uses
  %i.ko = icmp eq ptr %i.kn, null
  br i1 %i.ko, label %_ZN4llvm9hasNItemsINS_14iterator_rangeIN4mlir16ValueUseIteratorINS2_9OpOperandEEEEEEEbOT_j.exit.thread, label %_ZN4llvm9hasNItemsINS_14iterator_rangeIN4mlir16ValueUseIteratorINS2_9OpOperandEEEEEEEbOT_j.exit

_ZN4llvm9hasNItemsINS_14iterator_rangeIN4mlir16ValueUseIteratorINS2_9OpOperandEEEEEEEbOT_j.exit: ; preds = %.lr.ph.i.i.1
  %i.kp = load ptr, ptr %i.kn, align 8, !tbaa !136
  %.not1317.i.i = icmp eq ptr %i.kp, null
  br i1 %.not1317.i.i, label %bb.ba, label %_ZN4llvm9hasNItemsINS_14iterator_rangeIN4mlir16ValueUseIteratorINS2_9OpOperandEEEEEEEbOT_j.exit.thread

_ZN4llvm9hasNItemsINS_14iterator_rangeIN4mlir16ValueUseIteratorINS2_9OpOperandEEEEEEEbOT_j.exit.thread: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %_ZN4llvm9hasNItemsINS_14iterator_rangeIN4mlir16ValueUseIteratorINS2_9OpOperandEEEEEEEbOT_j.exit
  %i.kq = load ptr, ptr %12, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  store ptr %20, ptr %23, align 8, !tbaa !137
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val166 = load ptr, ptr %i.kr, align 8, !tbaa !39
  call fastcc void @"_ZN4mlir12RewriterBase18notifyMatchFailureIZNS_3scf20upliftWhileToForLoopERS0_NS2_7WhileOpEE3$_5EENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm5TwineEEE5valueENS8_13LogicalResultEE4typeEPNS_9OperationEOS7_"(ptr %.val166, ptr noundef %i.kq, ptr noundef nonnull align 8 dereferenceable(8) %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  br label %bb.ci

bb.ba:                                            ; preds = %_ZN4llvm9hasNItemsINS_14iterator_rangeIN4mlir16ValueUseIteratorINS2_9OpOperandEEEEEEEbOT_j.exit
  %i.ks = load ptr, ptr %12, align 8, !tbaa !44   ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 44
  %i.ku = load i32, ptr %i.kt, align 4            ; 3 uses
  %i.kv = and i32 %i.ku, 8388607
  %i.kw = icmp ne i32 %i.kv, 0
  call void @llvm.assume(i1 %i.kw)
  %i.kx = lshr i32 %i.ku, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i199 = and i32 %i.kx, 1
  %i.ky = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i199 to i64
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %i.ks, i64 %i.ky
  %i.la = lshr i32 %i.ku, 21
  %i.lb = and i32 %i.la, 2040
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %i.ks, i64 40
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !89
  %i.lg = zext i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw [32 x i8], ptr %i.ld, i64 %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 104
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #16
  %i.lk = call ptr @_ZN4mlir3scf7WhileOp10getYieldOpEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #16
  store ptr %i.lk, ptr %24, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %storemerge331.lcssa, i64 24
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #16
  %i.ln = call { ptr, i64 } @_ZN4mlir3scf7YieldOp10getResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %24)
  %i.lo = extractvalue { ptr, i64 } %i.ln, 0
  %i.lp = and i64 %i.lm, 4294967295               ; 8 uses
  %i.lq = getelementptr inbounds nuw [32 x i8], ptr %i.lo, i64 %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %.sroa.0.0.copyload.i.i.i200 = load ptr, ptr %i.lr, align 8, !tbaa !50
  store ptr %.sroa.0.0.copyload.i.i.i200, ptr %25, align 8
  %i.ls = load i8, ptr %i.ce, align 8, !tbaa !99, !range !130, !noundef !62
  %i.lt = trunc nuw i8 %i.ls to i1
  br i1 %i.lt, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.lu = trunc i64 %i.lm to i32
  %i.lv = load ptr, ptr %16, align 8, !tbaa !57
  %i.lw = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !59
  %i.ly = zext i32 %i.lx to i64
  %i.lz = call fastcc noundef i64 @"_ZZN4mlir3scf20upliftWhileToForLoopERNS_12RewriterBaseENS0_7WhileOpEENK3$_0clEN4llvm8ArrayRefIjEEj"(ptr %i.lv, i64 %i.ly, i32 noundef %i.lu)
  %.pre = and i64 %i.lz, 4294967295
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %.pre-phi = phi i64 [ %i.lp, %bb.ba ], [ %.pre, %bb.bb ]
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lj, i64 48
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !101
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %.pre-phi
  %.sroa.0.0.copyload.i201 = load ptr, ptr %i.mc, align 8 ; 2 uses
  %i.md = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #16 ; 3 uses
  %.not.i.i.i202 = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i202, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.me, align 8, !tbaa !91
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !94
  %i.mh = icmp eq ptr %i.mg, @_ZN4mlir6detail14TypeIDResolverINS_5arith6AddIOpEvE2idE
  %44 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_5arith6AddIOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %44, %i.mh
  br i1 %spec.select.i.i.i.i.i.i, label %_ZNK4mlir5Value13getDefiningOpINS_5arith6AddIOpEEET_v.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.mi = call i8 @_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_PKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.3) ; 0 uses
  br label %bb.ch

_ZNK4mlir5Value13getDefiningOpINS_5arith6AddIOpEEET_v.exit: ; preds = %bb.bd
  %i.mj = getelementptr inbounds nuw i8, ptr %i.md, i64 72
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !48 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  %.sroa.0.0.copyload.i.i.i.i205 = load ptr, ptr %i.ml, align 8, !tbaa !50 ; 2 uses
  %i.mm = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i205, %.sroa.0.0.copyload.i201
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 56
  %.sroa.0.0.copyload.i.i.i.i207 = load ptr, ptr %i.mn, align 8, !tbaa !50 ; 2 uses
  br i1 %i.mm, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZNK4mlir5Value13getDefiningOpINS_5arith6AddIOpEEET_v.exit
  %i.mo = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i207, %.sroa.0.0.copyload.i201
  br i1 %i.mo, label %bb.bg, label %.thread335

bb.bg:                                            ; preds = %_ZNK4mlir5Value13getDefiningOpINS_5arith6AddIOpEEET_v.exit, %bb.bf
  %.sroa.0291.0 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i205, %bb.bf ], [ %.sroa.0.0.copyload.i.i.i.i207, %_ZNK4mlir5Value13getDefiningOpINS_5arith6AddIOpEEET_v.exit ] ; 7 uses
  %.not341 = icmp eq ptr %.sroa.0291.0, null
  br i1 %.not341, label %.thread335, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mp = load ptr, ptr %12, align 8, !tbaa !44
  %i.mq = call noundef zeroext i1 @_ZNK4mlir13DominanceInfo17properlyDominatesENS_5ValueEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr nonnull %.sroa.0291.0, ptr noundef %i.mp) #16
  br i1 %i.mq, label %bb.bi, label %.thread335

.thread335:                                       ; preds = %bb.bf, %bb.bh, %bb.bg
  %i.mr = call i8 @_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_PKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.4) ; 0 uses
  br label %bb.ch

bb.bi:                                            ; preds = %bb.bh
  %i.ms = call { ptr, i64 } @_ZN4mlir3scf7WhileOp8getInitsEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
  %i.mt = extractvalue { ptr, i64 } %i.ms, 0
  %i.mu = getelementptr inbounds nuw [32 x i8], ptr %i.mt, i64 %i.lp
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  %.sroa.0.0.copyload.i.i.i212 = load ptr, ptr %i.mv, align 8, !tbaa !50 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #16
  %i.mw = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  store ptr %i.mw, ptr %26, align 8, !tbaa !57
  %i.mx = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 8 uses
  store i32 0, ptr %i.mx, align 8, !tbaa !59
  %i.my = getelementptr inbounds nuw i8, ptr %26, i64 12 ; 2 uses
  store i32 6, ptr %i.my, align 4, !tbaa !58
  %i.mz = call { ptr, i64 } @_ZN4mlir3scf7WhileOp8getInitsEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
  %i.na = extractvalue { ptr, i64 } %i.mz, 1      ; 2 uses
  %i.nb = load i32, ptr %i.my, align 4, !tbaa !58
  %i.nc = zext i32 %i.nb to i64
  %i.nd = icmp ugt i64 %i.na, %i.nc
  br i1 %i.nd, label %bb.bj, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull %i.mw, i64 noundef %i.na, i64 noundef 8) #16
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit: ; preds = %bb.bi, %bb.bj
  %i.ne = call { ptr, i64 } @_ZN4mlir3scf7WhileOp8getInitsEv(ptr noundef nonnull align 8 dereferenceable(8) %12) ; 2 uses
  %i.nf = extractvalue { ptr, i64 } %i.ne, 0
  %i.ng = extractvalue { ptr, i64 } %i.ne, 1      ; 2 uses
  %.not342350 = icmp eq i64 %i.ng, 0
  br i1 %.not342350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit
  %i.nh = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  br label %bb.bk

._crit_edge:                                      ; preds = %bb.bm, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit
  %i.ni = load ptr, ptr %12, align 8, !tbaa !44
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 24
  %.sroa.0.0.copyload.i.i214 = load ptr, ptr %i.nj, align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #16
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.nl = load ptr, ptr %26, align 8, !tbaa !57
  %i.nm = load i32, ptr %i.mx, align 8, !tbaa !59
  %i.nn = zext i32 %i.nm to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr %i.nl, i64 %i.nn) #16
  store ptr @"_ZN4llvm12function_refIFvRN4mlir9OpBuilderENS1_8LocationENS1_5ValueENS1_10ValueRangeEEE11callback_fnIZNS1_3scf20upliftWhileToForLoopERNS1_12RewriterBaseENSA_7WhileOpEE3$_6EEvlS3_S4_S5_S6_", ptr %31, align 8, !tbaa !139
  %i.no = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.np = ptrtoint ptr %28 to i64
  store i64 %i.np, ptr %i.no, align 8, !tbaa !140
  %i.nq = call ptr @_ZN4mlir3scf5ForOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_S5_NS_10ValueRangeEN4llvm12function_refIFvS3_S4_S5_S6_EEEb(ptr noundef nonnull align 8 dereferenceable(32) %i.nk, ptr %.sroa.0.0.copyload.i.i214, ptr %.sroa.0.0.copyload.i.i.i212, ptr %.sroa.097.0.lcssa, ptr nonnull %.sroa.0291.0, ptr noundef nonnull byval(%"class.mlir::ValueRange") align 8 %30, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %31, i1 noundef zeroext false) #16 ; 6 uses
  store ptr %i.nq, ptr %29, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 44
  %i.ns = load i32, ptr %i.nr, align 4            ; 3 uses
  %i.nt = and i32 %i.ns, 8388607
  %i.nu = icmp ne i32 %i.nt, 0
  call void @llvm.assume(i1 %i.nu)
  %i.nv = lshr i32 %i.ns, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.nv, 1
  %i.nw = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.nx = getelementptr inbounds nuw [16 x i8], ptr %i.nq, i64 %i.nw
  %i.ny = lshr i32 %i.ns, 21
  %i.nz = and i32 %i.ny, 2040
  %i.oa = zext nneg i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nq, i64 40
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !89
  %i.oe = zext i32 %i.od to i64
  %i.of = getelementptr inbounds nuw [32 x i8], ptr %i.ob, i64 %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 72
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !90 ; 4 uses
  %i.oi = getelementptr inbounds i8, ptr %i.oh, i64 -8 ; 2 uses
  store i32 0, ptr %i.mx, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #16
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 48
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !101 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 56
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !102
  %i.on = ptrtoint ptr %i.om to i64
  %i.oo = ptrtoint ptr %i.ok to i64
  %i.op = sub i64 %i.on, %i.oo
  %i.oq = ashr exact i64 %i.op, 3
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr %i.ok, i64 %i.oq) #16
  %i.or = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.os = load i64, ptr %i.or, align 8, !tbaa !111 ; 2 uses
  %.not343353 = icmp eq i64 %i.os, 0
  br i1 %.not343353, label %._crit_edge357, label %.lr.ph356

bb.bk:                                            ; preds = %.lr.ph, %bb.bm
  %.sroa.9276.0352 = phi i64 [ 0, %.lr.ph ], [ %i.oy, %bb.bm ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.ot = getelementptr inbounds nuw [32 x i8], ptr %i.nf, i64 %.sroa.9276.0352
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ou, align 8, !tbaa !50, !noalias !143
  store i64 %.sroa.9276.0352, ptr %27, align 8, !tbaa !148, !alias.scope !143
  %i.ov = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i to i64
  store i64 %i.ov, ptr %i.nh, align 8, !tbaa !50, !alias.scope !143
  %i.ow = icmp eq i64 %.sroa.9276.0352, %i.lp
  br i1 %i.ow, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ox = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15SmallVectorImplIN4mlir5ValueEE12emplace_backIJRS2_EEES5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.nh) ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #16
  %i.oy = add nuw i64 %.sroa.9276.0352, 1         ; 2 uses
  %.not342 = icmp eq i64 %i.oy, %i.ng
  br i1 %.not342, label %._crit_edge, label %bb.bk

._crit_edge357:                                   ; preds = %bb.br, %._crit_edge
  %i.oz = load i8, ptr %i.ce, align 8, !tbaa !99, !range !130, !noundef !62
  %i.pa = trunc nuw i8 %i.oz to i1
  br i1 %i.pa, label %bb.bs, label %bb.bu

.lr.ph356:                                        ; preds = %._crit_edge, %bb.br
  %.sroa.0261.0354 = phi i64 [ %i.pk, %bb.br ], [ 0, %._crit_edge ] ; 5 uses
  %i.pb = icmp ult i64 %.sroa.0261.0354, %i.lp
  br i1 %i.pb, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.lr.ph356
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #16
  %i.pc = add nuw nsw i64 %.sroa.0261.0354, 1
  %i.pd = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %32, i64 noundef %i.pc) #16
  store ptr %i.pd, ptr %33, align 8
  %i.pe = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15SmallVectorImplIN4mlir5ValueEE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(8) %33) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #16
  br label %bb.br

bb.bo:                                            ; preds = %.lr.ph356
  %i.pf = icmp eq i64 %.sroa.0261.0354, %i.lp
  br i1 %i.pf, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #16
  %i.pg = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %32, i64 noundef 0) #16
  store ptr %i.pg, ptr %34, align 8
  %i.ph = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15SmallVectorImplIN4mlir5ValueEE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(8) %34) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #16
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #16
  %i.pi = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %32, i64 noundef %.sroa.0261.0354) #16
  store ptr %i.pi, ptr %35, align 8
  %i.pj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15SmallVectorImplIN4mlir5ValueEE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(8) %35) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #16
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq, %bb.bn
  %i.pk = add nuw i64 %.sroa.0261.0354, 1         ; 2 uses
  %.not343 = icmp eq i64 %i.pk, %i.os
  br i1 %.not343, label %._crit_edge357, label %.lr.ph356

bb.bs:                                            ; preds = %._crit_edge357
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #16
  %i.pl = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  store ptr %i.pl, ptr %36, align 8, !tbaa !57
  %i.pm = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i32 0, ptr %i.pm, align 8, !tbaa !59
  %i.pn = getelementptr inbounds nuw i8, ptr %36, i64 12
  store i32 6, ptr %i.pn, align 4, !tbaa !58
  %i.po = load ptr, ptr %16, align 8, !tbaa !57   ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !59 ; 2 uses
end_hunk_1
