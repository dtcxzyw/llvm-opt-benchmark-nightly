Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/XeGPUUnroll?download=true
inline.NumInlined: 5189
inline.NumDeleted: 2388
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 19
begin_hunk_0
%struct.anon = type { ptr, i64 }
%"class.mlir::TypeRange" = type { %"class.llvm::detail::indexed_accessor_range_base.350" }
%"class.llvm::detail::indexed_accessor_range_base.350" = type { %"class.llvm::PointerUnion.351", i64 }
%"class.llvm::PointerUnion.351" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.352" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.352" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.353" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.353" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.354" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.354" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.355" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.355" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.356" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.356" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.357" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.357" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.358" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.358" = type { %"struct.llvm::detail::PunnedPointer.210" }
%"class.std::function.396" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.llvm::function_ref.400" = type { ptr, i64 }
%"class.mlir::xegpu::PrefetchNdOp" = type { %"class.mlir::Op.377" }
%"class.mlir::Op.377" = type { %"class.mlir::OpState" }
%"class.mlir::Location" = type { %"class.mlir::LocationAttr" }
%"class.mlir::LocationAttr" = type { %"class.mlir::Attribute" }
%"class.mlir::xegpu::DistributeLayoutAttr" = type { %"class.mlir::AttributeInterface" }
%"class.mlir::AttributeInterface" = type { %"class.mlir::detail::Interface.394" }
%"class.mlir::detail::Interface.394" = type { %"class.mlir::Attribute", ptr }
%class.anon.399 = type { ptr, ptr, ptr, ptr }
%"class.llvm::SmallVector.462" = type { %"class.llvm::SmallVectorImpl.193", %"struct.llvm::SmallVectorStorage.463" }
%"struct.llvm::SmallVectorStorage.463" = type { [8 x i8] }
%"class.mlir::arith::ConstantIndexOp" = type { %"class.mlir::arith::ConstantOp" }
%"class.mlir::arith::ConstantOp" = type { %"class.mlir::Op.428" }
%"class.mlir::Op.428" = type { %"class.mlir::OpState" }
%"struct.mlir::OperationState" = type { %"class.mlir::Location", %"class.mlir::OperationName", %"class.llvm::SmallVector.464", %"class.llvm::SmallVector.466", %"class.mlir::NamedAttrList", %"class.llvm::SmallVector.475", %"class.llvm::SmallVector.480", %"class.mlir::Attribute", %"class.mlir::PropertyRef", %"class.llvm::function_ref.485", %"class.llvm::function_ref.486" }
%"class.mlir::OperationName" = type { ptr }
%"class.llvm::SmallVector.464" = type { %"class.llvm::SmallVectorImpl.193", %"struct.llvm::SmallVectorStorage.465" }
%"struct.llvm::SmallVectorStorage.465" = type { [32 x i8] }
%"class.llvm::SmallVector.466" = type { %"class.llvm::SmallVectorImpl.31", %"struct.llvm::SmallVectorStorage.467" }
%"struct.llvm::SmallVectorStorage.467" = type { [32 x i8] }
%"class.mlir::NamedAttrList" = type { %"class.llvm::SmallVector.468", %"class.llvm::PointerIntPair.473" }
%"class.llvm::SmallVector.468" = type { %"class.llvm::SmallVectorImpl.469", %"struct.llvm::SmallVectorStorage.472" }
%"class.llvm::SmallVectorImpl.469" = type { %"class.llvm::SmallVectorTemplateBase.470" }
%"class.llvm::SmallVectorTemplateBase.470" = type { %"class.llvm::SmallVectorTemplateCommon.471" }
%"class.llvm::SmallVectorTemplateCommon.471" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.472" = type { [64 x i8] }
%"class.llvm::PointerIntPair.473" = type { %"struct.llvm::detail::PunnedPointer.474" }
%"struct.llvm::detail::PunnedPointer.474" = type { [8 x i8] }
%"class.llvm::SmallVector.475" = type { %"class.llvm::SmallVectorImpl.476", %"struct.llvm::SmallVectorStorage.479" }
%"class.llvm::SmallVectorImpl.476" = type { %"class.llvm::SmallVectorTemplateBase.477" }
%"class.llvm::SmallVectorTemplateBase.477" = type { %"class.llvm::SmallVectorTemplateCommon.478" }
%"class.llvm::SmallVectorTemplateCommon.478" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.479" = type { [8 x i8] }
%"class.llvm::SmallVector.480" = type { %"class.llvm::SmallVectorImpl.481", %"struct.llvm::SmallVectorStorage.484" }
%"class.llvm::SmallVectorImpl.481" = type { %"class.llvm::SmallVectorTemplateBase.482" }
%"class.llvm::SmallVectorTemplateBase.482" = type { %"class.llvm::SmallVectorTemplateCommon.483" }
%"class.llvm::SmallVectorTemplateCommon.483" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.484" = type { [8 x i8] }
%"class.mlir::PropertyRef" = type { %"class.mlir::TypeID", ptr }
%"class.llvm::function_ref.485" = type { ptr, i64 }
%"class.llvm::function_ref.486" = type { ptr, i64 }
%"class.mlir::xegpu::LoadNdOp" = type { %"class.mlir::Op.521" }
%"class.mlir::Op.521" = type { %"class.mlir::OpState" }
%"class.std::optional.546" = type { %"struct.std::_Optional_base.547" }
%"struct.std::_Optional_base.547" = type { %"struct.std::_Optional_payload.549" }
%"struct.std::_Optional_payload.549" = type { %"struct.std::_Optional_payload_base.base.551", [7 x i8] }
%"struct.std::_Optional_payload_base.base.551" = type <{ %"union.std::_Optional_payload_base<llvm::ArrayRef<long>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::ArrayRef<long>>::_Storage" = type { %"class.llvm::ArrayRef.199" }
%class.anon.555 = type { ptr, ptr, ptr, ptr, ptr }
%"class.mlir::xegpu::StoreNdOp" = type { %"class.mlir::Op.571" }
%"class.mlir::Op.571" = type { %"class.mlir::OpState" }
%class.anon.595 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"class.mlir::DictionaryAttr" = type { %"class.mlir::detail::StorageUserBase.264" }
%"class.mlir::detail::StorageUserBase.264" = type { %"class.mlir::Attribute" }
%"class.mlir::xegpu::DpasOp" = type { %"class.mlir::Op.610" }
%"class.mlir::Op.610" = type { %"class.mlir::OpState" }
%"class.llvm::SmallVector.642" = type { %"class.llvm::SmallVectorImpl.643", %"struct.llvm::SmallVectorStorage.646" }
%"class.llvm::SmallVectorImpl.643" = type { %"class.llvm::SmallVectorTemplateBase.644" }
%"class.llvm::SmallVectorTemplateBase.644" = type { %"class.llvm::SmallVectorTemplateCommon.645" }
%"class.llvm::SmallVectorTemplateCommon.645" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.646" = type { [48 x i8] }
%"class.llvm::SmallVector.654" = type { %"class.llvm::SmallVectorImpl.469", %"struct.llvm::SmallVectorStorage.655" }
%"struct.llvm::SmallVectorStorage.655" = type { [48 x i8] }
%"class.mlir::xegpu::DpasMxOp" = type { %"class.mlir::Op.670" }
%"class.mlir::Op.670" = type { %"class.mlir::OpState" }
%"class.mlir::xegpu::LoadMatrixOp" = type { %"class.mlir::Op.717" }
%"class.mlir::Op.717" = type { %"class.mlir::OpState" }
%"class.llvm::SmallVector.743" = type { %"class.llvm::SmallVectorImpl.744", %"struct.llvm::SmallVectorStorage.747" }
%"class.llvm::SmallVectorImpl.744" = type { %"class.llvm::SmallVectorTemplateBase.745" }
%"class.llvm::SmallVectorTemplateBase.745" = type { %"class.llvm::SmallVectorTemplateCommon.746" }
%"class.llvm::SmallVectorTemplateCommon.746" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.747" = type { [64 x i8] }
%"class.mlir::xegpu::StoreMatrixOp" = type { %"class.mlir::Op.764" }
%"class.mlir::Op.764" = type { %"class.mlir::OpState" }
%"class.mlir::IntegerAttr" = type { %"class.mlir::detail::StorageUserBase.215" }
%"class.mlir::detail::StorageUserBase.215" = type { %"class.mlir::Attribute" }
%class.anon.1054 = type { ptr }
%"class.mlir::xegpu::ConvertLayoutOp" = type { %"class.mlir::Op.1029" }
%"class.mlir::Op.1029" = type { %"class.mlir::OpState" }
%"class.mlir::vector::MultiDimReductionOp" = type { %"class.mlir::Op.1086" }
%"class.mlir::Op.1086" = type { %"class.mlir::OpState" }
%"class.llvm::SmallVector.1123" = type { %"class.llvm::SmallVectorImpl.1124", %"struct.llvm::SmallVectorStorage.1128" }
%"class.llvm::SmallVectorImpl.1124" = type { %"class.llvm::SmallVectorTemplateBase.1125" }
%"class.llvm::SmallVectorTemplateBase.1125" = type { %"class.llvm::SmallVectorTemplateCommon.1126" }
%"class.llvm::SmallVectorTemplateCommon.1126" = type { %"class.llvm::SmallVectorBase.1127" }
%"class.llvm::SmallVectorBase.1127" = type { ptr, i64, i64 }
%"struct.llvm::SmallVectorStorage.1128" = type { [40 x i8] }

$_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu14CreateNdDescOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE = comdat any

$_ZN4mlir5xegpu14CreateNdDescOp13getMixedSizesEv = comdat any

$_ZN4mlir5xegpu14CreateNdDescOp15getMixedStridesEv = comdat any

$_ZN4mlir21StaticTileOffsetRangeC2EN4llvm8ArrayRefIlEES3_ = comdat any

$_ZN4mlir21StaticTileOffsetRangeD2Ev = comdat any

$_ZN4llvm15SmallVectorImplIlEaSEOS1_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_ = comdat any

$_ZN4mlir6detail19TileOffsetRangeImplC2ERKS1_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_ = comdat any

$_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu12PrefetchNdOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE = comdat any

$_ZN4mlir5xegpu12PrefetchNdOp15getMixedOffsetsEv = comdat any

$_ZN4llvm19dyn_cast_if_presentIN4mlir5xegpu20DistributeLayoutAttrES3_EEDaRT0_ = comdat any

$_ZN4mlir9OpBuilder12createOrFoldINS_5arith6AddIOpEJRNS_5ValueERNS2_15ConstantIndexOpEEEEvRN4llvm15SmallVectorImplIS4_EENS_8LocationEDpOT0_ = comdat any

$_ZN4llvmplERKNS_5TwineES2_ = comdat any

$_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEEaSEOS3_ = comdat any

$_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu8LoadNdOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE = comdat any

$_ZN4mlir5xegpu8LoadNdOp15getMixedOffsetsEv = comdat any

$_ZN4llvm15SmallVectorImplIN4mlir5ValueEEaSEOS3_ = comdat any

$_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu9StoreNdOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE = comdat any

$_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_ = comdat any

$_ZN4mlir5xegpu9StoreNdOp15getMixedOffsetsEv = comdat any

$_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu6DpasOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl = comdat any

$_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu8DpasMxOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE = comdat any

$_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu12LoadMatrixOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE = comdat any

$_ZN4mlir5xegpu12LoadMatrixOp15getMixedOffsetsEv = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE9push_backERKS4_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE4growEm = comdat any

$_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu13StoreMatrixOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE = comdat any

$_ZN4mlir5xegpu13StoreMatrixOp15getMixedOffsetsEv = comdat any

$_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu12LoadGatherOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE = comdat any

$_ZN4llvm15SmallVectorImplIN4mlir4TypeEEaSEOS3_ = comdat any

$_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu14StoreScatterOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE = comdat any

$_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu15ConvertLayoutOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE = comdat any

$_ZN4mlir5xegpu15ConvertLayoutOp18getInputLayoutAttrEv = comdat any

$_ZN4mlir5xegpu15ConvertLayoutOp19getTargetLayoutAttrEv = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_5xegpu15ConvertLayoutOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6vector19MultiDimReductionOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN12_GLOBAL__N_116UnrollCreateNdOpE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu14CreateNdDescOpEED2Ev, ptr @_ZN12_GLOBAL__N_116UnrollCreateNdOpD0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu14CreateNdDescOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK12_GLOBAL__N_116UnrollCreateNdOp15matchAndRewriteEN4mlir5xegpu14CreateNdDescOpERNS1_15PatternRewriterE] }, align 8
@_ZTVN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu14CreateNdDescOpEEE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu14CreateNdDescOpEED2Ev, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu14CreateNdDescOpEED0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu14CreateNdDescOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @__cxa_pure_virtual] }, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"__xegpu_blocking_pack__\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"__xegpu_blocking_unpack__\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"__xegpu_blocking_tile_shape__\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"xegpu.create_nd_tdesc\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_10MemRefTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.11 = private unnamed_addr constant [67 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::ShapedType]\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.12 = private unnamed_addr constant [90 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::UnrollCreateNdOp]\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN12_GLOBAL__N_118UnrollPrefetchNdOpE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12PrefetchNdOpEED2Ev, ptr @_ZN12_GLOBAL__N_118UnrollPrefetchNdOpD0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu12PrefetchNdOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK12_GLOBAL__N_118UnrollPrefetchNdOp15matchAndRewriteEN4mlir5xegpu12PrefetchNdOpERNS1_15PatternRewriterE] }, align 8
@_ZTVN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12PrefetchNdOpEEE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12PrefetchNdOpEED2Ev, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12PrefetchNdOpEED0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu12PrefetchNdOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @__cxa_pure_virtual] }, align 8
@.str.14 = private unnamed_addr constant [18 x i8] c"xegpu.prefetch_nd\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.15 = private unnamed_addr constant [84 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::xegpu::DistributeLayoutAttr]\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Building op `\00", align 1
@.str.17 = private unnamed_addr constant [238 x i8] c"` but it isn't known in this MLIRContext: the dialect may not be loaded or this operation hasn't been added by the dialect. See also https://mlir.llvm.org/getting_started/Faq/#registered-loaded-dependent-whats-up-with-dialects-management\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5arith6AddIOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.18 = private unnamed_addr constant [11 x i8] c"arith.addi\00", align 1
@.str.19 = private unnamed_addr constant [92 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::UnrollPrefetchNdOp]\00", align 1
@_ZTVN12_GLOBAL__N_114UnrollLoadNdOpE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8LoadNdOpEED2Ev, ptr @_ZN12_GLOBAL__N_114UnrollLoadNdOpD0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu8LoadNdOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK12_GLOBAL__N_114UnrollLoadNdOp15matchAndRewriteEN4mlir5xegpu8LoadNdOpERNS1_15PatternRewriterE] }, align 8
@_ZTVN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8LoadNdOpEEE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8LoadNdOpEED2Ev, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8LoadNdOpEED0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu8LoadNdOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @__cxa_pure_virtual] }, align 8
@.str.20 = private unnamed_addr constant [14 x i8] c"xegpu.load_nd\00", align 1
@.str.21 = private unnamed_addr constant [88 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::UnrollLoadNdOp]\00", align 1
@_ZTVN12_GLOBAL__N_115UnrollStoreNdOpE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu9StoreNdOpEED2Ev, ptr @_ZN12_GLOBAL__N_115UnrollStoreNdOpD0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu9StoreNdOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK12_GLOBAL__N_115UnrollStoreNdOp15matchAndRewriteEN4mlir5xegpu9StoreNdOpERNS1_15PatternRewriterE] }, align 8
@_ZTVN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu9StoreNdOpEEE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu9StoreNdOpEED2Ev, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu9StoreNdOpEED0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu9StoreNdOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @__cxa_pure_virtual] }, align 8
@.str.22 = private unnamed_addr constant [15 x i8] c"xegpu.store_nd\00", align 1
@.str.23 = private unnamed_addr constant [89 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::UnrollStoreNdOp]\00", align 1
@_ZTVN12_GLOBAL__N_112UnrollDpasOpE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu6DpasOpEED2Ev, ptr @_ZN12_GLOBAL__N_112UnrollDpasOpD0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu6DpasOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK12_GLOBAL__N_112UnrollDpasOp15matchAndRewriteEN4mlir5xegpu6DpasOpERNS1_15PatternRewriterE] }, align 8
@_ZTVN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu6DpasOpEEE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu6DpasOpEED2Ev, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu6DpasOpEED0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu6DpasOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @__cxa_pure_virtual] }, align 8
@.str.24 = private unnamed_addr constant [11 x i8] c"xegpu.dpas\00", align 1
@.str.25 = private unnamed_addr constant [86 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::UnrollDpasOp]\00", align 1
@_ZTVN12_GLOBAL__N_114UnrollDpasMxOpE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEED2Ev, ptr @_ZN12_GLOBAL__N_114UnrollDpasMxOpD0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu8DpasMxOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK12_GLOBAL__N_114UnrollDpasMxOp15matchAndRewriteEN4mlir5xegpu8DpasMxOpERNS1_15PatternRewriterE] }, align 8
@_ZTVN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEEE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEED2Ev, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEED0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu8DpasMxOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @__cxa_pure_virtual] }, align 8
@.str.26 = private unnamed_addr constant [14 x i8] c"xegpu.dpas_mx\00", align 1
@.str.27 = private unnamed_addr constant [88 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::UnrollDpasMxOp]\00", align 1
@_ZTVN12_GLOBAL__N_118UnrollLoadMatrixOpE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadMatrixOpEED2Ev, ptr @_ZN12_GLOBAL__N_118UnrollLoadMatrixOpD0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu12LoadMatrixOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK12_GLOBAL__N_118UnrollLoadMatrixOp15matchAndRewriteEN4mlir5xegpu12LoadMatrixOpERNS1_15PatternRewriterE] }, align 8
@_ZTVN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadMatrixOpEEE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadMatrixOpEED2Ev, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadMatrixOpEED0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu12LoadMatrixOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @__cxa_pure_virtual] }, align 8
@.str.28 = private unnamed_addr constant [18 x i8] c"xegpu.load_matrix\00", align 1
@.str.29 = private unnamed_addr constant [92 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::UnrollLoadMatrixOp]\00", align 1
@_ZTVN12_GLOBAL__N_119UnrollStoreMatrixOpE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu13StoreMatrixOpEED2Ev, ptr @_ZN12_GLOBAL__N_119UnrollStoreMatrixOpD0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu13StoreMatrixOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK12_GLOBAL__N_119UnrollStoreMatrixOp15matchAndRewriteEN4mlir5xegpu13StoreMatrixOpERNS1_15PatternRewriterE] }, align 8
@_ZTVN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu13StoreMatrixOpEEE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu13StoreMatrixOpEED2Ev, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu13StoreMatrixOpEED0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu13StoreMatrixOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @__cxa_pure_virtual] }, align 8
@.str.30 = private unnamed_addr constant [19 x i8] c"xegpu.store_matrix\00", align 1
@.str.31 = private unnamed_addr constant [93 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::UnrollStoreMatrixOp]\00", align 1
@_ZTVN12_GLOBAL__N_118UnrollLoadGatherOpE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadGatherOpEED2Ev, ptr @_ZN12_GLOBAL__N_118UnrollLoadGatherOpD0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu12LoadGatherOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK12_GLOBAL__N_118UnrollLoadGatherOp15matchAndRewriteEN4mlir5xegpu12LoadGatherOpERNS1_15PatternRewriterE] }, align 8
@_ZTVN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadGatherOpEEE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadGatherOpEED2Ev, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadGatherOpEED0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu12LoadGatherOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @__cxa_pure_virtual] }, align 8
@.str.32 = private unnamed_addr constant [11 x i8] c"xegpu.load\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"chunk_size\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.34 = private unnamed_addr constant [92 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::UnrollLoadGatherOp]\00", align 1
@_ZTVN12_GLOBAL__N_120UnrollStoreScatterOpE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu14StoreScatterOpEED2Ev, ptr @_ZN12_GLOBAL__N_120UnrollStoreScatterOpD0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu14StoreScatterOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK12_GLOBAL__N_120UnrollStoreScatterOp15matchAndRewriteEN4mlir5xegpu14StoreScatterOpERNS1_15PatternRewriterE] }, align 8
@_ZTVN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu14StoreScatterOpEEE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu14StoreScatterOpEED2Ev, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu14StoreScatterOpEED0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu14StoreScatterOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @__cxa_pure_virtual] }, align 8
@.str.35 = private unnamed_addr constant [12 x i8] c"xegpu.store\00", align 1
@.str.36 = private unnamed_addr constant [94 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::UnrollStoreScatterOp]\00", align 1
@_ZTVN12_GLOBAL__N_121UnrollConvertLayoutOpE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu15ConvertLayoutOpEED2Ev, ptr @_ZN12_GLOBAL__N_121UnrollConvertLayoutOpD0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu15ConvertLayoutOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK12_GLOBAL__N_121UnrollConvertLayoutOp15matchAndRewriteEN4mlir5xegpu15ConvertLayoutOpERNS1_15PatternRewriterE] }, align 8
@_ZTVN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu15ConvertLayoutOpEEE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu15ConvertLayoutOpEED2Ev, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu15ConvertLayoutOpEED0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5xegpu15ConvertLayoutOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @__cxa_pure_virtual] }, align 8
@.str.37 = private unnamed_addr constant [21 x i8] c"xegpu.convert_layout\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"missing layout attributes.\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"Not a target ConvertLayoutOp.\00", align 1
@.str.40 = private unnamed_addr constant [95 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::UnrollConvertLayoutOp]\00", align 1
@_ZTVN12_GLOBAL__N_122UnrollMultiReductionOpE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir6vector19MultiDimReductionOpEED2Ev, ptr @_ZN12_GLOBAL__N_122UnrollMultiReductionOpD0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6vector19MultiDimReductionOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK12_GLOBAL__N_122UnrollMultiReductionOp15matchAndRewriteEN4mlir6vector19MultiDimReductionOpERNS1_15PatternRewriterE] }, align 8
@_ZTVN12_GLOBAL__N_113UnrollPatternIN4mlir6vector19MultiDimReductionOpEEE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir6vector19MultiDimReductionOpEED2Ev, ptr @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir6vector19MultiDimReductionOpEED0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6vector19MultiDimReductionOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @__cxa_pure_virtual] }, align 8
@.str.41 = private unnamed_addr constant [23 x i8] c"vector.multi_reduction\00", align 1
@.str.42 = private unnamed_addr constant [96 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::UnrollMultiReductionOp]\00", align 1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5xegpu27populateXeGPUUnrollPatternsERNS_17RewritePatternSetERKNS0_13UnrollOptionsE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef", align 8    ; 4 uses
  %3 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %4 = alloca %"class.llvm::ArrayRef", align 8    ; 4 uses
  %5 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %6 = alloca %"class.llvm::ArrayRef", align 8    ; 4 uses
  %7 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %8 = alloca %"class.llvm::ArrayRef", align 8    ; 4 uses
  %9 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %10 = alloca %"class.llvm::ArrayRef", align 8   ; 4 uses
  %11 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %12 = alloca %"class.llvm::ArrayRef", align 8   ; 4 uses
  %13 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %14 = alloca %"class.llvm::ArrayRef", align 8   ; 4 uses
  %15 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %16 = alloca %"class.llvm::ArrayRef", align 8   ; 4 uses
  %17 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %18 = alloca %"class.llvm::ArrayRef", align 8   ; 4 uses
  %19 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %20 = alloca %"class.llvm::ArrayRef", align 8   ; 4 uses
  %21 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %22 = alloca %"class.llvm::ArrayRef", align 8   ; 4 uses
  %23 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %24 = alloca %"class.llvm::ArrayRef", align 8   ; 4 uses
  %25 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !429    ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25), !noalias !430
  %i.b = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #17, !noalias !431 ; 19 uses
  call void @_ZN4mlir14PatternBenefitC1Ej(ptr noundef nonnull align 2 dereferenceable(2) %25, i32 noundef 1) #18, !noalias !431
  %i.c = load i16, ptr %25, align 2, !noalias !431
  call void @llvm.lifetime.start.p0(ptr nonnull %24), !noalias !431
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false), !noalias !431
  call void @_ZN4mlir7PatternC2EN4llvm9StringRefENS_14PatternBenefitEPNS_11MLIRContextENS1_8ArrayRefIS2_EE(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr nonnull @.str.8, i64 21, i16 %i.c, ptr noundef %i.a, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %24) #18, !noalias !431
  call void @llvm.lifetime.end.p0(ptr nonnull %24), !noalias !431
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu14CreateNdDescOpEEE, i64 16), ptr %i.b, align 8, !tbaa !19, !noalias !431
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  store ptr @.str.5, ptr %i.e, align 8, !tbaa !432, !noalias !431
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @.str.6, ptr %i.f, align 8, !tbaa !47, !noalias !431
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr @.str.7, ptr %i.g, align 8, !tbaa !48, !noalias !431
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 24 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i8 0, i64 32, i1 false), !noalias !431
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49, !noalias !431 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i, label %_ZNSt8functionIFN4llvm13LogicalResultEPN4mlir9OperationEEEC2ERKS6_.exit.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.l = call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef 2) #18, !noalias !431, !inline_history !237 ; 0 uses
  %i.m = load <2 x ptr>, ptr %i.i, align 8, !tbaa !50, !noalias !431
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !50, !noalias !431
  br label %_ZNSt8functionIFN4llvm13LogicalResultEPN4mlir9OperationEEEC2ERKS6_.exit.i.i.i.i.i.i.i

_ZNSt8functionIFN4llvm13LogicalResultEPN4mlir9OperationEEEC2ERKS6_.exit.i.i.i.i.i.i.i: ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 24 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false), !noalias !431
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49, !noalias !431 ; 2 uses
  %.not.i.i.not.i4.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.not.i4.i.i.i.i.i.i.i, label %_ZNSt8functionIFSt8optionalIN4llvm11SmallVectorIlLj6EEEEPN4mlir9OperationEEEC2ERKS9_.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt8functionIFN4llvm13LogicalResultEPN4mlir9OperationEEEC2ERKS6_.exit.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.s = call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i32 noundef 2) #18, !noalias !431, !inline_history !238 ; 0 uses
  %i.t = load <2 x ptr>, ptr %i.o, align 8, !tbaa !50, !noalias !431
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !50, !noalias !431
  br label %_ZNSt8functionIFSt8optionalIN4llvm11SmallVectorIlLj6EEEEPN4mlir9OperationEEEC2ERKS9_.exit.i.i.i.i.i.i.i

_ZNSt8functionIFSt8optionalIN4llvm11SmallVectorIlLj6EEEEPN4mlir9OperationEEEC2ERKS9_.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %_ZNSt8functionIFN4llvm13LogicalResultEPN4mlir9OperationEEEC2ERKS6_.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 24 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 32, i1 false), !noalias !431
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !49, !noalias !431 ; 2 uses
  %.not.i.i.not.i5.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.not.i5.i.i.i.i.i.i.i, label %_ZSt11make_uniqueIN12_GLOBAL__N_116UnrollCreateNdOpEJPN4mlir11MLIRContextERKNS2_5xegpu13UnrollOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFSt8optionalIN4llvm11SmallVectorIlLj6EEEEPN4mlir9OperationEEEC2ERKS9_.exit.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.z = call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i32 noundef 2) #18, !noalias !431, !inline_history !239 ; 0 uses
  %i.aa = load <2 x ptr>, ptr %i.v, align 8, !tbaa !50, !noalias !431
  store <2 x ptr> %i.aa, ptr %i.y, align 8, !tbaa !50, !noalias !431
  br label %_ZSt11make_uniqueIN12_GLOBAL__N_116UnrollCreateNdOpEJPN4mlir11MLIRContextERKNS2_5xegpu13UnrollOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i.i

_ZSt11make_uniqueIN12_GLOBAL__N_116UnrollCreateNdOpEJPN4mlir11MLIRContextERKNS2_5xegpu13UnrollOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i.i: ; preds = %bb.d, %_ZNSt8functionIFSt8optionalIN4llvm11SmallVectorIlLj6EEEEPN4mlir9OperationEEEC2ERKS9_.exit.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_116UnrollCreateNdOpE, i64 16), ptr %i.b, align 8, !tbaa !19, !noalias !431
  call void @llvm.lifetime.end.p0(ptr nonnull %25), !noalias !430
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !51, !noalias !430
  %i.ab = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i, 0
  br i1 %i.ab, label %bb.e, label %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_116UnrollCreateNdOpEJPNS_11MLIRContextERKNS_5xegpu13UnrollOptionsEEEESt10unique_ptrIT_St14default_deleteISB_EEDpOT0_.exit.i.i

bb.e:                                             ; preds = %_ZSt11make_uniqueIN12_GLOBAL__N_116UnrollCreateNdOpEJPN4mlir11MLIRContextERKNS2_5xegpu13UnrollOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr getelementptr inbounds nuw (i8, ptr @.str.12, i64 49), ptr %i.ac, align 8, !tbaa !433, !noalias !430
  store i64 39, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !51, !noalias !430
  br label %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_116UnrollCreateNdOpEJPNS_11MLIRContextERKNS_5xegpu13UnrollOptionsEEEESt10unique_ptrIT_St14default_deleteISB_EEDpOT0_.exit.i.i

_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_116UnrollCreateNdOpEJPNS_11MLIRContextERKNS_5xegpu13UnrollOptionsEEEESt10unique_ptrIT_St14default_deleteISB_EEDpOT0_.exit.i.i: ; preds = %bb.e, %_ZSt11make_uniqueIN12_GLOBAL__N_116UnrollCreateNdOpEJPN4mlir11MLIRContextERKNS2_5xegpu13UnrollOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !52 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !53
  %i.ah = icmp ugt i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i

bb.f:                                             ; preds = %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_116UnrollCreateNdOpEJPNS_11MLIRContextERKNS_5xegpu13UnrollOptionsEEEESt10unique_ptrIT_St14default_deleteISB_EEDpOT0_.exit.i.i
  %i.ai = zext i32 %i.ae to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull %i.e, i64 noundef %i.ai, i64 noundef 16) #18
  %.pre8.pre.i.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !52
  br label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i: ; preds = %bb.f, %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_116UnrollCreateNdOpEJPNS_11MLIRContextERKNS_5xegpu13UnrollOptionsEEEESt10unique_ptrIT_St14default_deleteISB_EEDpOT0_.exit.i.i
  %.pre8.i.i.i.i = phi i32 [ %i.ae, %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_116UnrollCreateNdOpEJPNS_11MLIRContextERKNS_5xegpu13UnrollOptionsEEEESt10unique_ptrIT_St14default_deleteISB_EEDpOT0_.exit.i.i ], [ %.pre8.pre.i.i.i.i, %bb.f ]
  store i32 %.pre8.i.i.i.i, ptr %i.ad, align 8, !tbaa !52
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 24 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 36 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !434 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 36 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !435
  %.not.i.i.i = icmp eq ptr %i.am, %i.ao
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i
  store ptr %i.b, ptr %i.am, align 8, !tbaa !438
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
end_hunk_0
begin_hunk_1_@_ZN4mlir5xegpu14CreateNdDescOp13getMixedSizesEv:bb.a
_ZN4llvm11SmallVectorIlLj6EED2Ev.exit10:          ; preds = %_ZN4mlir5xegpu14CreateNdDescOp8getShapeEv.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir5xegpu14CreateNdDescOp15getMixedStridesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.201") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.186", align 8 ; 10 uses
  %3 = alloca %"class.mlir::MemRefType", align 8  ; 4 uses
  %4 = alloca %"struct.std::pair.321", align 8    ; 6 uses
  %5 = alloca %"class.mlir::detail::DenseArrayAttrImpl", align 8 ; 4 uses
  %6 = alloca %"class.llvm::SmallVector.186", align 8 ; 10 uses
  %7 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !112
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 6, ptr %i.c, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.d = call i64 @_ZN4mlir5xegpu14CreateNdDescOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #18
  %i.e = load ptr, ptr %1, align 8, !tbaa !120    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = and i32 %i.g, 8388608
  %.not.i.i.i.i.i.i = icmp ne i32 %i.h, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123
  %i.k = and i64 %i.d, 4294967295
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !125
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !128
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !130
  %i.s = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10MemRefTypeEvE2idE ; 2 uses
  %spec.select.i.i = select i1 %i.s, ptr %i.p, ptr null
  store ptr %spec.select.i.i, ptr %3, align 8
  br i1 %i.s, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZNK4mlir10MemRefType19getStridesAndOffsetEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.321") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %i.t = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIlEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %4) ; 0 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !112    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt4pairIN4llvm11SmallVectorIlLj6EEElED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.u) #18
  br label %_ZNSt4pairIN4llvm11SmallVectorIlLj6EEElED2Ev.exit

_ZNSt4pairIN4llvm11SmallVectorIlLj6EEElED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.pre = load ptr, ptr %1, align 8, !tbaa !120   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 44
  %.pre4 = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt4pairIN4llvm11SmallVectorIlLj6EEElED2Ev.exit, %bb.a
  %i.x = phi i32 [ %.pre4, %_ZNSt4pairIN4llvm11SmallVectorIlLj6EEElED2Ev.exit ], [ %i.g, %bb.a ] ; 2 uses
  %i.y = phi ptr [ %.pre, %_ZNSt4pairIN4llvm11SmallVectorIlLj6EEElED2Ev.exit ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %.not.i.i.i = icmp ugt i32 %i.x, 16777215
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = lshr i32 %i.x, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.z, 1
  %i.aa = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !155 ; 2 uses
  store ptr %i.ad, ptr %5, align 8
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ae = call { ptr, i64 } @_ZNK4mlir6detail18DenseArrayAttrImplIlEcvN4llvm8ArrayRefIlEEEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18 ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 0
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1      ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ah, ptr %6, align 8, !tbaa !112, !alias.scope !567
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !52, !alias.scope !567
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 6, ptr %i.aj, align 4, !tbaa !53, !alias.scope !567
  %.idx.i = shl nuw nsw i64 %i.ag, 3
  %i.ak = icmp ugt i64 %i.ag, 6
  br i1 %i.ak, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.thread.i: ; preds = %bb.e
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.ah, i64 noundef %i.ag, i64 noundef 8) #18
  %.pre8.pre.i.i.i = load i32, ptr %i.ai, align 8, !tbaa !52, !alias.scope !567
  %i.al = zext i32 %.pre8.pre.i.i.i to i64
  %.pre5 = load ptr, ptr %6, align 8, !tbaa !112, !alias.scope !567
  br label %bb.f

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i: ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm9to_vectorINS_8ArrayRefIlEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISC_EE5valueEEEOS6_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.thread.i
  %i.am = phi ptr [ %.pre5, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.thread.i ], [ %i.ah, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i ]
  %.pre8.i.i5.i = phi i64 [ %i.al, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.pre8.i.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 8 %i.af, i64 %.idx.i, i1 false)
  %.pre.i.i.i = load i32, ptr %i.ai, align 8, !tbaa !52, !alias.scope !567
  br label %_ZN4llvm9to_vectorINS_8ArrayRefIlEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISC_EE5valueEEEOS6_.exit

_ZN4llvm9to_vectorINS_8ArrayRefIlEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISC_EE5valueEEEOS6_.exit: ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i, %bb.f
  %i.ao = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i ], [ %.pre.i.i.i, %bb.f ]
  %i.ap = trunc i64 %i.ag to i32
  %i.aq = add i32 %i.ao, %i.ap
  store i32 %i.aq, ptr %i.ai, align 8, !tbaa !52, !alias.scope !567
  %i.ar = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIlEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %6) ; 0 uses
  %i.as = load ptr, ptr %6, align 8, !tbaa !112   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ah
  br i1 %i.at, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm9to_vectorINS_8ArrayRefIlEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISC_EE5valueEEEOS6_.exit
  call void @free(ptr noundef %i.as) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %_ZN4llvm9to_vectorINS_8ArrayRefIlEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISC_EE5valueEEEOS6_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.au = load ptr, ptr %2, align 8, !tbaa !112
  %i.av = load i32, ptr %i.b, align 8, !tbaa !52
  %i.aw = zext i32 %i.av to i64
  %i.ax = call i64 @_ZN4mlir5xegpu14CreateNdDescOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 2) #18 ; 3 uses
  %i.ay = load ptr, ptr %1, align 8, !tbaa !120   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 44
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = and i32 %i.ba, 8388608
  %.not.i.i.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir5xegpu14CreateNdDescOp10getStridesEv.exit, label %bb.i, !prof !156

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !123
  br label %_ZN4mlir5xegpu14CreateNdDescOp10getStridesEv.exit

_ZN4mlir5xegpu14CreateNdDescOp10getStridesEv.exit: ; preds = %bb.h, %bb.i
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.bd, %bb.i ], [ null, %bb.h ]
  %i.be = and i64 %i.ax, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.ax, 32
  %i.bf = add i64 %.sroa.5.0.extract.shift.i.i, %i.ax
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.be
  %i.bi = sub nsw i64 %i.bg, %i.be
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %i.bh, i64 %i.bi) #18
  %i.bj = load ptr, ptr %1, align 8, !tbaa !120
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bk) #18
  %i.bm = load i64, ptr %7, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bo = load i64, ptr %i.bn, align 8
  call void @_ZN4mlir14getMixedValuesEN4llvm8ArrayRefIlEENS_10ValueRangeEPNS_11MLIRContextE(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.201") align 8 %0, ptr %i.au, i64 %i.aw, i64 %i.bm, i64 %i.bo, ptr noundef %i.bl) #18
  %i.bp = load ptr, ptr %2, align 8, !tbaa !112   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.a
  br i1 %i.bq, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1, label %bb.j

bb.j:                                             ; preds = %_ZN4mlir5xegpu14CreateNdDescOp10getStridesEv.exit
  call void @free(ptr noundef %i.bp) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1:           ; preds = %_ZN4mlir5xegpu14CreateNdDescOp10getStridesEv.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu14CreateNdDescOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %0, i64 %1, i64 %2, ptr %3, ptr %4, i64 %5, i64 %6, ptr noundef nonnull align 8 dereferenceable(40) %7) unnamed_addr #1 align 2 {
bb.a:
  %8 = alloca %"class.mlir::Type", align 8        ; 2 uses
  %9 = alloca %"class.mlir::VectorType", align 8  ; 5 uses
  %10 = alloca %"class.mlir::NamedAttribute", align 8 ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.mlir::NamedAttribute", align 8 ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.mlir::TypeRange", align 8  ; 3 uses
  %15 = alloca %"class.llvm::ArrayRef.257", align 8 ; 3 uses
  %16 = alloca [2 x %"class.mlir::NamedAttribute"], align 8 ; 5 uses
  store ptr %3, ptr %8, align 8
  %i.a = inttoptr i64 %6 to ptr                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.b = load ptr, ptr %3, align 8, !tbaa !128
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.d = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE ; 2 uses
  %spec.select.i.i = select i1 %i.d, ptr %3, ptr null
  store ptr %spec.select.i.i, ptr %9, align 8
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #18 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.i = call ptr @_ZN4mlir5xegpu31createVectorWithShapeFromValuesERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr %i.a, i64 %1, i64 %2, ptr %i.f, i64 %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.n, align 1, !tbaa !159
  %i.o = load i8, ptr %i.l, align 1, !tbaa !160
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %_ZN4llvm5TwineC2EPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.l, ptr %11, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %bb.c, %bb.d
  %storemerge.i = phi i8 [ 3, %bb.d ], [ 1, %bb.c ]
  store i8 %storemerge.i, ptr %i.m, align 8, !tbaa !161
  %i.p = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(34) %11) #18
  %i.q = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.p, ptr %i.q) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !48   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.u, align 1, !tbaa !159
  %i.v = load i8, ptr %i.s, align 1, !tbaa !160
  %.not.i32 = icmp eq i8 %i.v, 0
  br i1 %.not.i32, label %_ZN4llvm5TwineC2EPKc.exit34, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit
  store ptr %i.s, ptr %13, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit34

_ZN4llvm5TwineC2EPKc.exit34:                      ; preds = %_ZN4llvm5TwineC2EPKc.exit, %bb.e
  %storemerge.i33 = phi i8 [ 3, %bb.e ], [ 1, %_ZN4llvm5TwineC2EPKc.exit ]
  store i8 %storemerge.i33, ptr %i.t, align 8, !tbaa !161
  %i.w = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(34) %13) #18
  %i.x = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr %4, i64 %5) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr %i.w, ptr %i.x) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr nonnull align 8 dereferenceable(8) %8, i64 1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !163
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !163
  store ptr %16, ptr %15, align 8, !tbaa !166
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 2, ptr %i.z, align 8, !tbaa !167
  %i.aa = load i64, ptr %14, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = call ptr @_ZN4mlir26UnrealizedConversionCastOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr %i.a, i64 %i.aa, i64 %i.ac, i64 %1, i64 %2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.257") align 8 %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZN4llvm5TwineC2EPKc.exit34
  %.sroa.030.1 = phi ptr [ %i.ae, %_ZN4llvm5TwineC2EPKc.exit34 ], [ %i.i, %bb.b ]
  ret ptr %.sroa.030.1
}

declare { ptr, i64 } @_ZNK4mlir5xegpu14TensorDescType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir21StaticTileOffsetRangeC2EN4llvm8ArrayRefIlEES3_(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %"class.llvm::ArrayRef.199", align 8 ; 3 uses
  %6 = alloca %"class.llvm::SmallVector.186", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !112, !alias.scope !572
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !52, !alias.scope !572
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 6, ptr %i.c, align 4, !tbaa !53, !alias.scope !572
  %i.d = icmp ugt i64 %2, 6
  br i1 %i.d, label %bb.b, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.a, i64 noundef %2, i64 noundef 8) #18
  %.pre.i.i.i = load i32, ptr %i.b, align 8, !tbaa !52, !alias.scope !572 ; 2 uses
  %.pre15.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre6.pre = load ptr, ptr %6, align 8, !tbaa !112
  br label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i: ; preds = %bb.b, %bb.a
  %.pre = phi ptr [ %i.a, %bb.a ], [ %.pre6.pre, %bb.b ] ; 2 uses
  %.pre-phi.i.i.i = phi i64 [ 0, %bb.a ], [ %.pre15.i.i.i, %bb.b ]
  %i.e = phi i32 [ 0, %bb.a ], [ %.pre.i.i.i, %bb.b ]
  %i.f = icmp sgt i64 %2, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i, label %_ZN4llvm9to_vectorINS_10iota_rangeIlEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISC_EE5valueEEEOS6_.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i:           ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.pre-phi.i.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i
  %n.vec = and i64 %2, 9223372036854775804        ; 4 uses
  %i.h = shl i64 %n.vec, 3
  %i.i = getelementptr i8, ptr %i.g, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.j = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.j ; 2 uses
  %i.k = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !51
  store <2 x i64> %step.add, ptr %i.k, align 8, !tbaa !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !570

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN4llvm9to_vectorINS_10iota_rangeIlEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISC_EE5valueEEEOS6_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i, %middle.block
  %.049.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i ], [ %i.i, %middle.block ]
  %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.049.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.049.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i, ptr %.049.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !51
  %i.m = add nuw i64 %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %exitcond.not = icmp eq i64 %i.m, %2
  br i1 %exitcond.not, label %_ZN4llvm9to_vectorINS_10iota_rangeIlEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISC_EE5valueEEEOS6_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !571

_ZN4llvm9to_vectorINS_10iota_rangeIlEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISC_EE5valueEEEOS6_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i
  %i.o = trunc i64 %2 to i32
  %i.p = add i32 %i.e, %i.o                       ; 2 uses
  store i32 %i.p, ptr %i.b, align 8, !tbaa !52, !alias.scope !572
  store ptr %.pre, ptr %5, align 8, !tbaa !170
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = zext i32 %i.p to i64
  store i64 %i.r, ptr %i.q, align 8, !tbaa !171
  call void @_ZN4mlir6detail19TileOffsetRangeImplC1EN4llvm8ArrayRefIlEES4_S4_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.199") align 8 %5) #18
  %i.s = load ptr, ptr %6, align 8, !tbaa !112    ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.a
  br i1 %i.t, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm9to_vectorINS_10iota_rangeIlEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISC_EE5valueEEEOS6_.exit
  call void @free(ptr noundef %i.s) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %_ZN4llvm9to_vectorINS_10iota_rangeIlEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISC_EE5valueEEEOS6_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @_ZN4mlir6detail19TileOffsetRangeImplC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(208) %i.u, ptr noundef nonnull align 8 dereferenceable(200) %0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 0, ptr %i.v, align 8, !tbaa !151
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.y = load i64, ptr %i.x, align 8, !tbaa !172
  call void @_ZN4mlir6detail19TileOffsetRangeImplC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(208) %i.w, ptr noundef nonnull align 8 dereferenceable(200) %0)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i64 %i.y, ptr %i.z, align 8, !tbaa !151
  ret void
}

declare ptr @_ZN4mlir7Builder12getIndexAttrEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare ptr @_ZN4mlir6memref9SubViewOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEES9_S9_NS7_INS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, i64, ptr noundef byval(%"class.llvm::ArrayRef.200") align 8, ptr noundef byval(%"class.llvm::ArrayRef.200") align 8, ptr noundef byval(%"class.llvm::ArrayRef.257") align 8) local_unnamed_addr #2

declare ptr @_ZN4mlir5xegpu14CreateNdDescOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_6detail10TypedValueINS_10MemRefTypeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir21StaticTileOffsetRangeD2Ev(ptr noundef nonnull align 8 dead_on_return(616) dereferenceable(616) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.c) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i:        ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !112  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i, label %bb.c
end_hunk_1
begin_hunk_2_@_ZNK12_GLOBAL__N_118UnrollPrefetchNdOp15matchAndRewriteEN4mlir5xegpu12PrefetchNdOpERNS1_15PatternRewriterE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18, !noalias !598
  %i.it = load ptr, ptr %14, align 8, !tbaa !112, !noalias !598 ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.hz
  br i1 %i.iu, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  call void @free(ptr noundef %i.it) #18
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i: ; preds = %bb.ai, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.iv = load ptr, ptr %13, align 8, !tbaa !112, !noalias !598
  %i.iw = load i32, ptr %i.id, align 8, !tbaa !52, !noalias !598 ; 3 uses
  %i.ix = zext i32 %i.iw to i64                   ; 2 uses
  %.idx22.i = shl nuw nsw i64 %i.ix, 3
  %i.iy = load i32, ptr %i.hs, align 8, !tbaa !52, !alias.scope !598 ; 2 uses
  %i.iz = zext i32 %i.iy to i64
  %i.ja = add nuw nsw i64 %i.iz, %i.ix            ; 2 uses
  %i.jb = load i32, ptr %i.ht, align 4, !tbaa !53, !alias.scope !598
  %i.jc = zext i32 %i.jb to i64
  %i.jd = icmp samesign ugt i64 %i.ja, %i.jc
  br i1 %i.jd, label %bb.aj, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i

bb.aj:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull %i.hr, i64 noundef %i.ja, i64 noundef 8) #18
  %.pre8.pre.i.i = load i32, ptr %i.hs, align 8, !tbaa !52, !alias.scope !598
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i: ; preds = %bb.aj, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i
  %.pre8.i.i = phi i32 [ %i.iy, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i ], [ %.pre8.pre.i.i, %bb.aj ] ; 2 uses
  %.not.i.i35.i = icmp eq i32 %i.iw, 0
  br i1 %.not.i.i35.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendIPS2_vEEvT_S6_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i
  %i.je = load ptr, ptr %31, align 8, !tbaa !112, !alias.scope !598
  %i.jf = zext i32 %.pre8.i.i to i64
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.jf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jg, ptr align 8 %i.iv, i64 %.idx22.i, i1 false)
  %.pre.i36.i = load i32, ptr %i.hs, align 8, !tbaa !52, !alias.scope !598
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendIPS2_vEEvT_S6_.exit.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendIPS2_vEEvT_S6_.exit.i: ; preds = %bb.ak, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i
  %i.jh = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i ], [ %.pre.i36.i, %bb.ak ]
  %i.ji = add i32 %i.jh, %i.iw
  store i32 %i.ji, ptr %i.hs, align 8, !tbaa !52, !alias.scope !598
  %i.jj = load ptr, ptr %13, align 8, !tbaa !112, !noalias !598 ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.ie
  br i1 %i.jk, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendIPS2_vEEvT_S6_.exit.i
  call void @free(ptr noundef %i.jj) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i: ; preds = %bb.al, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendIPS2_vEEvT_S6_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18, !noalias !598
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18, !noalias !598
  %i.jl = getelementptr inbounds nuw i8, ptr %.025.i, i64 8 ; 2 uses
  %.not.i32 = icmp eq ptr %i.jl, %i.hy
  br i1 %.not.i32, label %._crit_edge.i, label %bb.af

._crit_edge.i:                                    ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2IPKS2_vEET_S7_.exit.i
  %i.jm = load ptr, ptr %11, align 8, !tbaa !112, !noalias !598 ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.hg
  br i1 %i.jn, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit37.i, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i
  call void @free(ptr noundef %i.jm) #18
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit37.i

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit37.i: ; preds = %bb.am, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18, !noalias !598
  %i.jo = load ptr, ptr %9, align 8, !tbaa !112, !noalias !598 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit38.i, label %bb.an

bb.an:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit37.i
  call void @free(ptr noundef %i.jo) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit38.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit38.i: ; preds = %bb.an, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18, !noalias !598
  %i.jr = load ptr, ptr %8, align 8, !tbaa !112, !noalias !598 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.jt = icmp eq ptr %i.jr, %i.js
  br i1 %i.jt, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit38.i
  call void @free(ptr noundef %i.jr) #18
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i: ; preds = %bb.ao, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !598
  %i.ju = load ptr, ptr %7, align 8, !tbaa !112, !noalias !598 ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.fb
  br i1 %i.jv, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i
  call void @free(ptr noundef %i.ju) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i:          ; preds = %bb.ap, %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !598
  %i.jw = load ptr, ptr %6, align 8, !tbaa !112, !noalias !598 ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.ep
  br i1 %i.jx, label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12PrefetchNdOpEE13unrollNdBatchENS1_5ValueENS2_14TensorDescTypeEN4llvm8ArrayRefIlEENS8_INS1_12OpFoldResultEEElNS7_12function_refIFS5_S5_NS7_11SmallVectorISA_Lj6EEEEEENS1_8LocationERNS1_15PatternRewriterE.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i
  call void @free(ptr noundef %i.jw) #18
  br label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12PrefetchNdOpEE13unrollNdBatchENS1_5ValueENS2_14TensorDescTypeEN4llvm8ArrayRefIlEENS8_INS1_12OpFoldResultEEElNS7_12function_refIFS5_S5_NS7_11SmallVectorISA_Lj6EEEEEENS1_8LocationERNS1_15PatternRewriterE.exit

_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12PrefetchNdOpEE13unrollNdBatchENS1_5ValueENS2_14TensorDescTypeEN4llvm8ArrayRefIlEENS8_INS1_12OpFoldResultEEElNS7_12function_refIFS5_S5_NS7_11SmallVectorISA_Lj6EEEEEENS1_8LocationERNS1_15PatternRewriterE.exit: ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !598
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.jy = load ptr, ptr %31, align 8, !tbaa !112  ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.hr
  br i1 %i.jz, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit33, label %bb.ar

bb.ar:                                            ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12PrefetchNdOpEE13unrollNdBatchENS1_5ValueENS2_14TensorDescTypeEN4llvm8ArrayRefIlEENS8_INS1_12OpFoldResultEEElNS7_12function_refIFS5_S5_NS7_11SmallVectorISA_Lj6EEEEEENS1_8LocationERNS1_15PatternRewriterE.exit
  call void @free(ptr noundef %i.jy) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit33

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit33: ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12PrefetchNdOpEE13unrollNdBatchENS1_5ValueENS2_14TensorDescTypeEN4llvm8ArrayRefIlEENS8_INS1_12OpFoldResultEEElNS7_12function_refIFS5_S5_NS7_11SmallVectorISA_Lj6EEEEEENS1_8LocationERNS1_15PatternRewriterE.exit, %bb.ar
  %i.ka = load ptr, ptr %32, align 8, !tbaa !112  ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit34, label %bb.as

bb.as:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit33
  call void @free(ptr noundef %i.ka) #18
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit34

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit34: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit33, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  br label %bb.at

bb.at:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit34, %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit
  %i.kd = load ptr, ptr %19, align 8, !tbaa !120
  %i.ke = load ptr, ptr %2, align 8, !tbaa !19
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.kd) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %bb.au

bb.au:                                            ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12PrefetchNdOpEE14getTargetShapeEPNS1_9OperationE.exit.thread, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12PrefetchNdOpEE14getTargetShapeEPNS1_9OperationE.exit, %bb.at
  %i.kh = phi ptr [ %i.ad, %bb.at ], [ %i.ad, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12PrefetchNdOpEE14getTargetShapeEPNS1_9OperationE.exit ], [ %i.w, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12PrefetchNdOpEE14getTargetShapeEPNS1_9OperationE.exit.thread ] ; 2 uses
  %.sroa.019.0 = phi i8 [ 1, %bb.at ], [ 0, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12PrefetchNdOpEE14getTargetShapeEPNS1_9OperationE.exit ], [ 0, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12PrefetchNdOpEE14getTargetShapeEPNS1_9OperationE.exit.thread ]
  %i.ki = load i8, ptr %i.kh, align 8, !tbaa !117, !range !119, !noundef !152
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.av, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

bb.av:                                            ; preds = %bb.au
  store i8 0, ptr %i.kh, align 8, !tbaa !117
  %i.kk = load ptr, ptr %22, align 8, !tbaa !112  ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @free(ptr noundef %i.kk) #18
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit: ; preds = %bb.au, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  ret i8 %.sroa.019.0
}

; Function Attrs: cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12PrefetchNdOpEED0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @llvm.trap() #19
  unreachable
}

declare { ptr, ptr } @_ZNK4mlir5xegpu20DistributeLayoutAttr12dropInstDataEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12PrefetchNdOpEE4packENS1_5ValueENS1_9TypeRangeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %1, ptr %2, i64 %3, i64 %4, ptr %.0.val, i64 %.8.val, ptr %5, ptr noundef nonnull align 8 dereferenceable(40) %6) unnamed_addr #1 align 2 {
bb.a:
  %7 = alloca %"class.mlir::Value", align 8       ; 2 uses
  %8 = alloca %"class.mlir::NamedAttribute", align 8 ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.mlir::NamedAttribute", align 8 ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::ArrayRef.257", align 8 ; 3 uses
  %13 = alloca [2 x %"class.mlir::NamedAttribute"], align 8 ; 5 uses
  store ptr %2, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !130
  %i.f = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  tail call void @_ZN4mlir5xegpu32extractVectorsWithShapeFromValueERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefIlEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.192") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr %5, ptr nonnull %2, ptr %.0.val, i64 %.8.val) #18
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.l, align 1, !tbaa !159
  %i.m = load i8, ptr %i.j, align 1, !tbaa !160
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %_ZN4llvm5TwineC2EPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.j, ptr %9, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %bb.c, %bb.d
  %storemerge.i = phi i8 [ 3, %bb.d ], [ 1, %bb.c ]
  store i8 %storemerge.i, ptr %i.k, align 8, !tbaa !161
  %i.n = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(34) %9) #18
  %i.o = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %i.n, ptr %i.o) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !61   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.s, align 1, !tbaa !159
  %i.t = load i8, ptr %i.q, align 1, !tbaa !160
  %.not.i27 = icmp eq i8 %i.t, 0
  br i1 %.not.i27, label %_ZN4llvm5TwineC2EPKc.exit29, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit
  store ptr %i.q, ptr %11, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit29

_ZN4llvm5TwineC2EPKc.exit29:                      ; preds = %_ZN4llvm5TwineC2EPKc.exit, %bb.e
  %storemerge.i28 = phi i8 [ 3, %bb.e ], [ 1, %_ZN4llvm5TwineC2EPKc.exit ]
  store i8 %storemerge.i28, ptr %i.r, align 8, !tbaa !161
  %i.u = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(34) %11) #18
  %i.v = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr %.0.val, i64 %.8.val) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.u, ptr %i.v) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.w = ptrtoint ptr %7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !163
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !163
  store ptr %13, ptr %12, align 8, !tbaa !166
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 2, ptr %i.y, align 8, !tbaa !167
  %i.z = call ptr @_ZN4mlir26UnrealizedConversionCastOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr %5, i64 %3, i64 %4, i64 %i.w, i64 1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.257") align 8 %12) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !206 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -16
  %i.ad = zext i32 %i.ab to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !112, !alias.scope !603
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.af, align 8, !tbaa !52, !alias.scope !603
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.ag, align 4, !tbaa !53, !alias.scope !603
  %i.ah = icmp ugt i32 %i.ab, 6
  br i1 %i.ah, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i: ; preds = %_ZN4llvm5TwineC2EPKc.exit29
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.ae, i64 noundef %i.ad, i64 noundef 8) #18
  %.pre.i.i.i = load i32, ptr %i.af, align 8, !tbaa !52, !alias.scope !603
  %.pre24.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre = load ptr, ptr %0, align 8, !tbaa !112, !alias.scope !603
  br label %.lr.ph.i.i.i.i.preheader.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i: ; preds = %_ZN4llvm5TwineC2EPKc.exit29
  %.not8.i.i.i.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not8.i.i.i.i.i.i.i, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i
  %i.ai = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ %i.ae, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre24.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.pre-phi.i.i3.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.010.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.ak = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef %.sroa.2.09.i.i.i.i.i.i.i) #18
  %i.al = ptrtoint ptr %i.ak to i64
  store i64 %i.al, ptr %.010.i.i.i.i.i.i.i, align 8, !tbaa !125
  %i.am = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.am, %i.ad
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre23.i.i.i = load i32, ptr %i.af, align 8, !tbaa !52, !alias.scope !603
  br label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i
  %i.ao = phi i32 [ %.pre23.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %i.ap = add i32 %i.ao, %i.ab
  store i32 %i.ap, ptr %i.af, align 8, !tbaa !52, !alias.scope !603
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_112unrollByTileEN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEENS2_5xegpu14TensorDescTypeENS0_8ArrayRefIlEERKSt8functionIFNS2_5ValueES4_EENS2_8LocationERNS2_15PatternRewriterE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 %6, ptr noundef nonnull align 8 dereferenceable(40) %7) unnamed_addr #1 {
_ZN4llvm10drop_beginIRNS_11SmallVectorIN4mlir12OpFoldResultELj6EEEEEDaOT_m.exit:
  %8 = alloca %"class.llvm::SmallVector.462", align 8 ; 8 uses
  %9 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %10 = alloca %"class.mlir::arith::ConstantIndexOp", align 8 ; 4 uses
  %11 = alloca %"class.mlir::xegpu::TensorDescType", align 8 ; 3 uses
  %12 = alloca %"class.llvm::SmallVector.201", align 8 ; 10 uses
  %13 = alloca %"class.mlir::StaticTileOffsetRange", align 8 ; 8 uses
  %14 = alloca %"class.mlir::detail::TileOffsetRangeIterator", align 8 ; 11 uses
  %15 = alloca %"class.mlir::detail::TileOffsetRangeIterator", align 8 ; 10 uses
  %16 = alloca %"class.llvm::SmallVector.186", align 8 ; 7 uses
  %17 = alloca %"class.llvm::SmallVector.201", align 8 ; 8 uses
  store ptr %2, ptr %11, align 8
  %i.a = inttoptr i64 %6 to ptr                   ; 3 uses
  %i.b = call { ptr, i64 } @_ZNK4mlir5xegpu14TensorDescType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #18
  %i.c = extractvalue { ptr, i64 } %i.b, 1        ; 6 uses
  %i.d = call { ptr, i64 } @_ZNK4mlir5xegpu14TensorDescType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #18 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !52
  %i.i = zext i32 %i.h to i64
  %i.j = sub i64 %i.i, %i.c
  %i.k = load ptr, ptr %1, align 8, !tbaa !112
  %.idx77 = shl nsw i64 %i.j, 3
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %.idx77
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.m, ptr %12, align 8, !tbaa !112, !alias.scope !619
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  store i32 0, ptr %i.n, align 8, !tbaa !52, !alias.scope !619
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 6, ptr %i.o, align 4, !tbaa !53, !alias.scope !619
  %gepdiff = shl i64 %i.c, 3                      ; 2 uses
  %i.p = ashr exact i64 %gepdiff, 3               ; 2 uses
  %i.q = icmp ugt i64 %i.p, 6
  br i1 %i.q, label %bb.a, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.i

bb.a:                                             ; preds = %_ZN4llvm10drop_beginIRNS_11SmallVectorIN4mlir12OpFoldResultELj6EEEEEDaOT_m.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull %i.m, i64 noundef %i.p, i64 noundef 8) #18
  %.pre8.pre.i.i.i = load i32, ptr %i.n, align 8, !tbaa !52, !alias.scope !619
  br label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.i: ; preds = %bb.a, %_ZN4llvm10drop_beginIRNS_11SmallVectorIN4mlir12OpFoldResultELj6EEEEEDaOT_m.exit
  %.pre8.i.i.i = phi i32 [ 0, %_ZN4llvm10drop_beginIRNS_11SmallVectorIN4mlir12OpFoldResultELj6EEEEEDaOT_m.exit ], [ %.pre8.pre.i.i.i, %bb.a ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm9to_vectorINS_14iterator_rangeIPN4mlir12OpFoldResultEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.i
  %i.r = load ptr, ptr %12, align 8, !tbaa !112, !alias.scope !619
  %i.s = zext i32 %.pre8.i.i.i to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 8 %i.l, i64 %gepdiff, i1 false)
  %.pre.i.i.i = load i32, ptr %i.n, align 8, !tbaa !52, !alias.scope !619
  br label %_ZN4llvm9to_vectorINS_14iterator_rangeIPN4mlir12OpFoldResultEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit

_ZN4llvm9to_vectorINS_14iterator_rangeIPN4mlir12OpFoldResultEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.i, %bb.b
  %i.u = phi i32 [ %.pre8.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.i ], [ %.pre.i.i.i, %bb.b ]
  %i.v = trunc i64 %i.c to i32
  %i.w = add i32 %i.u, %i.v
  store i32 %i.w, ptr %i.n, align 8, !tbaa !52, !alias.scope !619
  %i.x = load i32, ptr %i.g, align 8, !tbaa !52
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = sub i64 %i.y, %i.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aa, ptr %0, align 8, !tbaa !112
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 6, ptr %i.ac, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @_ZN4mlir21StaticTileOffsetRangeC2EN4llvm8ArrayRefIlEES3_(ptr noundef nonnull align 8 dereferenceable(616) %13, ptr %i.e, i64 %i.f, ptr %3, i64 %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 200
  call void @_ZN4mlir6detail19TileOffsetRangeImplC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 200 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 400
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !151, !noalias !620
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !151, !alias.scope !620
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 408
  call void @_ZN4mlir6detail19TileOffsetRangeImplC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 200 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 608
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !151, !noalias !621 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK12_GLOBAL__N_114UnrollLoadNdOp15matchAndRewriteEN4mlir5xegpu8LoadNdOpERNS1_15PatternRewriterE:bb.a

.sink.split.i.i.i:                                ; preds = %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i, %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i.i
  store i32 %i.iw, ptr %i.iq, align 8, !tbaa !52, !noalias !680
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2ERKS3_.exit.i

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2ERKS3_.exit.i: ; preds = %.sink.split.i.i.i, %bb.af
  %i.jd = load ptr, ptr %16, align 8, !tbaa !112, !noalias !680
  %i.je = load i32, ptr %i.fs, align 8, !tbaa !52, !noalias !680
  %i.jf = zext i32 %i.je to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18, !noalias !680
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, i8 0, i64 32, i1 false), !noalias !680
  %i.jg = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17 ; 5 uses
  store ptr %i.a, ptr %i.jg, align 16, !tbaa !187
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !176
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store ptr %25, ptr %.sroa.5.0..sroa_idx.i, align 16, !tbaa !189
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  store ptr %21, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !191
  store ptr %i.jg, ptr %24, align 8, !tbaa !50, !noalias !680
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFN4mlir5ValueEN4llvm11SmallVectorINS0_12OpFoldResultELj6EEEEZNK12_GLOBAL__N_113UnrollPatternINS0_5xegpu8LoadNdOpEE13unrollNdBatchES1_NS9_14TensorDescTypeENS2_8ArrayRefIlEENSD_IS4_EElNS2_12function_refIFS1_S1_S5_EEENS0_8LocationERNS0_15PatternRewriterEEUlS5_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFN4mlir5ValueEN4llvm11SmallVectorINS0_12OpFoldResultELj6EEEEZNK12_GLOBAL__N_113UnrollPatternINS0_5xegpu8LoadNdOpEE13unrollNdBatchES1_NS9_14TensorDescTypeENS2_8ArrayRefIlEENSD_IS4_EElNS2_12function_refIFS1_S1_S5_EEENS0_8LocationERNS0_15PatternRewriterEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_>, ptr %i.is, align 8, !tbaa !50, !noalias !680
  call fastcc void @_ZN12_GLOBAL__N_112unrollByTileEN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEENS2_5xegpu14TensorDescTypeENS0_8ArrayRefIlEERKSt8functionIFNS2_5ValueES4_EENS2_8LocationERNS2_15PatternRewriterE(ptr dead_on_unwind noalias writable align 8 %22, ptr nofree noundef align 8 dereferenceable(64) %23, ptr %i.ht, ptr %i.jd, i64 %i.jf, ptr noundef nonnull align 8 dereferenceable(32) %24, i64 %i.fa, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.jh = load ptr, ptr %i.is, align 8, !tbaa !49, !noalias !680 ; 2 uses
  %.not.i.i = icmp eq ptr %i.jh, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2ERKS3_.exit.i
  %i.ji = call noundef zeroext i1 %i.jh(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %24, i32 noundef 3) #18, !inline_history !675 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.ah, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2ERKS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18, !noalias !680
  %i.jj = load ptr, ptr %23, align 8, !tbaa !112, !noalias !680 ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.ip
  br i1 %i.jk, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  call void @free(ptr noundef %i.jj) #18
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i: ; preds = %bb.ai, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.jl = load ptr, ptr %22, align 8, !tbaa !112, !noalias !680
  %i.jm = load i32, ptr %i.it, align 8, !tbaa !52, !noalias !680 ; 3 uses
  %i.jn = zext i32 %i.jm to i64                   ; 2 uses
  %.idx22.i = shl nuw nsw i64 %i.jn, 3
  %i.jo = load i32, ptr %i.ii, align 8, !tbaa !52, !alias.scope !680 ; 2 uses
  %i.jp = zext i32 %i.jo to i64
  %i.jq = add nuw nsw i64 %i.jp, %i.jn            ; 2 uses
  %i.jr = load i32, ptr %i.ij, align 4, !tbaa !53, !alias.scope !680
  %i.js = zext i32 %i.jr to i64
  %i.jt = icmp samesign ugt i64 %i.jq, %i.js
  br i1 %i.jt, label %bb.aj, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i

bb.aj:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull %i.ih, i64 noundef %i.jq, i64 noundef 8) #18
  %.pre8.pre.i.i = load i32, ptr %i.ii, align 8, !tbaa !52, !alias.scope !680
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i: ; preds = %bb.aj, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i
  %.pre8.i.i = phi i32 [ %i.jo, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i ], [ %.pre8.pre.i.i, %bb.aj ] ; 2 uses
  %.not.i.i35.i = icmp eq i32 %i.jm, 0
  br i1 %.not.i.i35.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendIPS2_vEEvT_S6_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i
  %i.ju = load ptr, ptr %44, align 8, !tbaa !112, !alias.scope !680
  %i.jv = zext i32 %.pre8.i.i to i64
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.jv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jw, ptr align 8 %i.jl, i64 %.idx22.i, i1 false)
  %.pre.i36.i = load i32, ptr %i.ii, align 8, !tbaa !52, !alias.scope !680
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendIPS2_vEEvT_S6_.exit.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendIPS2_vEEvT_S6_.exit.i: ; preds = %bb.ak, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i
  %i.jx = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i ], [ %.pre.i36.i, %bb.ak ]
  %i.jy = add i32 %i.jx, %i.jm
  store i32 %i.jy, ptr %i.ii, align 8, !tbaa !52, !alias.scope !680
  %i.jz = load ptr, ptr %22, align 8, !tbaa !112, !noalias !680 ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.iu
  br i1 %i.ka, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendIPS2_vEEvT_S6_.exit.i
  call void @free(ptr noundef %i.jz) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i: ; preds = %bb.al, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendIPS2_vEEvT_S6_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18, !noalias !680
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18, !noalias !680
  %i.kb = getelementptr inbounds nuw i8, ptr %.025.i, i64 8 ; 2 uses
  %.not.i39 = icmp eq ptr %i.kb, %i.io
  br i1 %.not.i39, label %._crit_edge.i, label %bb.af

._crit_edge.i:                                    ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2IPKS2_vEET_S7_.exit.i
  %i.kc = load ptr, ptr %20, align 8, !tbaa !112, !noalias !680 ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.hw
  br i1 %i.kd, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit37.i, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i
  call void @free(ptr noundef %i.kc) #18
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit37.i

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit37.i: ; preds = %bb.am, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18, !noalias !680
  %i.ke = load ptr, ptr %18, align 8, !tbaa !112, !noalias !680 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.kg = icmp eq ptr %i.ke, %i.kf
  br i1 %i.kg, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit38.i, label %bb.an

bb.an:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit37.i
  call void @free(ptr noundef %i.ke) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit38.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit38.i: ; preds = %bb.an, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18, !noalias !680
  %i.kh = load ptr, ptr %17, align 8, !tbaa !112, !noalias !680 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit38.i
  call void @free(ptr noundef %i.kh) #18
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i: ; preds = %bb.ao, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18, !noalias !680
  %i.kk = load ptr, ptr %16, align 8, !tbaa !112, !noalias !680 ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.fr
  br i1 %i.kl, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i
  call void @free(ptr noundef %i.kk) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i:          ; preds = %bb.ap, %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18, !noalias !680
  %i.km = load ptr, ptr %15, align 8, !tbaa !112, !noalias !680 ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.ff
  br i1 %i.kn, label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8LoadNdOpEE13unrollNdBatchENS1_5ValueENS2_14TensorDescTypeEN4llvm8ArrayRefIlEENS8_INS1_12OpFoldResultEEElNS7_12function_refIFS5_S5_NS7_11SmallVectorISA_Lj6EEEEEENS1_8LocationERNS1_15PatternRewriterE.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i
  call void @free(ptr noundef %i.km) #18
  br label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8LoadNdOpEE13unrollNdBatchENS1_5ValueENS2_14TensorDescTypeEN4llvm8ArrayRefIlEENS8_INS1_12OpFoldResultEEElNS7_12function_refIFS5_S5_NS7_11SmallVectorISA_Lj6EEEEEENS1_8LocationERNS1_15PatternRewriterE.exit

_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8LoadNdOpEE13unrollNdBatchENS1_5ValueENS2_14TensorDescTypeEN4llvm8ArrayRefIlEENS8_INS1_12OpFoldResultEEElNS7_12function_refIFS5_S5_NS7_11SmallVectorISA_Lj6EEEEEENS1_8LocationERNS1_15PatternRewriterE.exit: ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18, !noalias !680
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  %i.ko = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir5ValueEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(64) %36, ptr noundef nonnull align 8 dereferenceable(64) %44) ; 0 uses
  %i.kp = load ptr, ptr %44, align 8, !tbaa !112  ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.ih
  br i1 %i.kq, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit40, label %bb.ar

bb.ar:                                            ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8LoadNdOpEE13unrollNdBatchENS1_5ValueENS2_14TensorDescTypeEN4llvm8ArrayRefIlEENS8_INS1_12OpFoldResultEEElNS7_12function_refIFS5_S5_NS7_11SmallVectorISA_Lj6EEEEEENS1_8LocationERNS1_15PatternRewriterE.exit
  call void @free(ptr noundef %i.kp) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit40

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit40: ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8LoadNdOpEE13unrollNdBatchENS1_5ValueENS2_14TensorDescTypeEN4llvm8ArrayRefIlEENS8_INS1_12OpFoldResultEEElNS7_12function_refIFS5_S5_NS7_11SmallVectorISA_Lj6EEEEEENS1_8LocationERNS1_15PatternRewriterE.exit, %bb.ar
  %i.kr = load ptr, ptr %45, align 8, !tbaa !112  ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.kt = icmp eq ptr %i.kr, %i.ks
  br i1 %i.kt, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit41, label %bb.as

bb.as:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit40
  call void @free(ptr noundef %i.kr) #18
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit41

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit41: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit40, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  br label %bb.at

bb.at:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit41, %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #18
  %i.ku = load ptr, ptr %36, align 8, !tbaa !112
  %i.kv = load i32, ptr %i.bi, align 8, !tbaa !52
  %i.kw = zext i32 %i.kv to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr %i.ku, i64 %i.kw) #18
  %i.kx = load ptr, ptr %28, align 8, !tbaa !120
  %i.ky = getelementptr inbounds i8, ptr %i.kx, i64 -16
  %i.kz = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ky, i64 noundef 0) #18
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %.0.copyload.i.i.i.i.i.i.i42 = load i64, ptr %i.la, align 8
  %i.lb = and i64 %.0.copyload.i.i.i.i.i.i.i42, -8
  %i.lc = inttoptr i64 %i.lb to ptr               ; 3 uses
  %i.ld = load ptr, ptr %32, align 8, !tbaa !112
  %i.le = load i32, ptr %i.ba, align 8, !tbaa !52
  %i.lf = zext i32 %i.le to i64
  %.sroa.0.0.copyload = load ptr, ptr %29, align 8 ; 2 uses
  %i.lg = load i64, ptr %47, align 8              ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.li = load i64, ptr %i.lh, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.lc, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.lj = load ptr, ptr %i.lc, align 8, !tbaa !128
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.lk, align 8, !tbaa !130
  %i.ll = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE ; 2 uses
  %spec.select.i.i.i = select i1 %i.ll, ptr %i.lc, ptr null
  store ptr %spec.select.i.i.i, ptr %4, align 8
  br i1 %i.ll, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.lm = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18 ; 2 uses
  %i.ln = extractvalue { ptr, i64 } %i.lm, 0
  %i.lo = extractvalue { ptr, i64 } %i.lm, 1
  %i.lp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.lq = call ptr @_ZN4mlir5xegpu31createVectorWithShapeFromValuesERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(32) %i.lp, ptr %.sroa.0.0.copyload, i64 %i.lg, i64 %i.li, ptr %i.ln, i64 %i.lo) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8LoadNdOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.lr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !66 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.lv = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.lv, align 1, !tbaa !159
  %i.lw = load i8, ptr %i.lt, align 1, !tbaa !160
  %.not.i.i43 = icmp eq i8 %i.lw, 0
  br i1 %.not.i.i43, label %_ZN4llvm5TwineC2EPKc.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store ptr %i.lt, ptr %6, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit.i

_ZN4llvm5TwineC2EPKc.exit.i:                      ; preds = %bb.aw, %bb.av
  %storemerge.i.i = phi i8 [ 3, %bb.aw ], [ 1, %bb.av ]
  store i8 %storemerge.i.i, ptr %i.lu, align 8, !tbaa !161
  %i.lx = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.lr, ptr noundef nonnull align 8 dereferenceable(34) %6) #18
  %i.ly = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lr) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %i.lx, ptr %i.ly) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !67 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.mc = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.mc, align 1, !tbaa !159
  %i.md = load i8, ptr %i.ma, align 1, !tbaa !160
  %.not.i32.i = icmp eq i8 %i.md, 0
  br i1 %.not.i32.i, label %_ZN4llvm5TwineC2EPKc.exit34.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm5TwineC2EPKc.exit.i
  store ptr %i.ma, ptr %8, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit34.i

_ZN4llvm5TwineC2EPKc.exit34.i:                    ; preds = %bb.ax, %_ZN4llvm5TwineC2EPKc.exit.i
  %storemerge.i33.i = phi i8 [ 3, %bb.ax ], [ 1, %_ZN4llvm5TwineC2EPKc.exit.i ]
  store i8 %storemerge.i33.i, ptr %i.mb, align 8, !tbaa !161
  %i.me = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.lr, ptr noundef nonnull align 8 dereferenceable(34) %8) #18
  %i.mf = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %i.lr, ptr %i.ld, i64 %i.lf) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %i.me, ptr %i.mf) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull align 8 dereferenceable(8) %3, i64 1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !163
  %i.mg = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mg, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !163
  store ptr %11, ptr %10, align 8, !tbaa !166
  %i.mh = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 2, ptr %i.mh, align 8, !tbaa !167
  %i.mi = load i64, ptr %9, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.mk = load i64, ptr %i.mj, align 8
  %i.ml = call ptr @_ZN4mlir26UnrealizedConversionCastOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.lr, ptr %.sroa.0.0.copyload, i64 %i.mi, i64 %i.mk, i64 %i.lg, i64 %i.li, ptr noundef nonnull byval(%"class.llvm::ArrayRef.257") align 8 %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.mm = getelementptr inbounds i8, ptr %i.ml, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8LoadNdOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit

_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8LoadNdOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit: ; preds = %bb.au, %_ZN4llvm5TwineC2EPKc.exit34.i
  %.sroa.030.1.i = phi ptr [ %i.mm, %_ZN4llvm5TwineC2EPKc.exit34.i ], [ %i.lq, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  store ptr %.sroa.030.1.i, ptr %46, align 8
  %i.mn = load ptr, ptr %28, align 8, !tbaa !120
  %i.mo = ptrtoint ptr %46 to i64
  %i.mp = load ptr, ptr %2, align 8, !tbaa !19
  %i.mq = load ptr, ptr %i.mp, align 8
  call void %i.mq(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.mn, i64 %i.mo, i64 1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  %i.mr = load ptr, ptr %36, align 8, !tbaa !112  ; 2 uses
  %i.ms = icmp eq ptr %i.mr, %i.bh
  br i1 %i.ms, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit44, label %bb.ay

bb.ay:                                            ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8LoadNdOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit
  call void @free(ptr noundef %i.mr) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit44

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit44: ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8LoadNdOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  br label %bb.az

bb.az:                                            ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8LoadNdOpEE14getTargetShapeEPNS1_9OperationE.exit.thread, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8LoadNdOpEE14getTargetShapeEPNS1_9OperationE.exit, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit44
  %i.mt = phi ptr [ %i.ai, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit44 ], [ %i.ai, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8LoadNdOpEE14getTargetShapeEPNS1_9OperationE.exit ], [ %i.ab, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8LoadNdOpEE14getTargetShapeEPNS1_9OperationE.exit.thread ] ; 2 uses
  %.sroa.025.0 = phi i8 [ 1, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit44 ], [ 0, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8LoadNdOpEE14getTargetShapeEPNS1_9OperationE.exit ], [ 0, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8LoadNdOpEE14getTargetShapeEPNS1_9OperationE.exit.thread ]
  %i.mu = load i8, ptr %i.mt, align 8, !tbaa !117, !range !119, !noundef !152
  %i.mv = trunc nuw i8 %i.mu to i1
  br i1 %i.mv, label %bb.ba, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.mt, align 8, !tbaa !117
  %i.mw = load ptr, ptr %32, align 8, !tbaa !112  ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.my = icmp eq ptr %i.mw, %i.mx
  br i1 %i.my, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @free(ptr noundef %i.mw) #18
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit: ; preds = %bb.az, %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  ret i8 %.sroa.025.0
}

; Function Attrs: cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8LoadNdOpEED0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @llvm.trap() #19
  unreachable
}

declare ptr @_ZNK4mlir10VectorType9cloneWithESt8optionalIN4llvm8ArrayRefIlEEENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef byval(%"class.std::optional.546") align 8, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8LoadNdOpEE4packENS1_5ValueENS1_9TypeRangeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %1, ptr %2, i64 %3, i64 %4, ptr %.0.val, i64 %.8.val, ptr %5, ptr noundef nonnull align 8 dereferenceable(40) %6) unnamed_addr #1 align 2 {
bb.a:
  %7 = alloca %"class.mlir::Value", align 8       ; 2 uses
  %8 = alloca %"class.mlir::NamedAttribute", align 8 ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.mlir::NamedAttribute", align 8 ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::ArrayRef.257", align 8 ; 3 uses
  %13 = alloca [2 x %"class.mlir::NamedAttribute"], align 8 ; 5 uses
  store ptr %2, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !130
  %i.f = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  tail call void @_ZN4mlir5xegpu32extractVectorsWithShapeFromValueERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefIlEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.192") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr %5, ptr nonnull %2, ptr %.0.val, i64 %.8.val) #18
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.l, align 1, !tbaa !159
  %i.m = load i8, ptr %i.j, align 1, !tbaa !160
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %_ZN4llvm5TwineC2EPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.j, ptr %9, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %bb.c, %bb.d
  %storemerge.i = phi i8 [ 3, %bb.d ], [ 1, %bb.c ]
  store i8 %storemerge.i, ptr %i.k, align 8, !tbaa !161
  %i.n = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(34) %9) #18
  %i.o = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %i.n, ptr %i.o) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !67   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.s, align 1, !tbaa !159
  %i.t = load i8, ptr %i.q, align 1, !tbaa !160
  %.not.i27 = icmp eq i8 %i.t, 0
  br i1 %.not.i27, label %_ZN4llvm5TwineC2EPKc.exit29, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit
  store ptr %i.q, ptr %11, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit29

_ZN4llvm5TwineC2EPKc.exit29:                      ; preds = %_ZN4llvm5TwineC2EPKc.exit, %bb.e
  %storemerge.i28 = phi i8 [ 3, %bb.e ], [ 1, %_ZN4llvm5TwineC2EPKc.exit ]
  store i8 %storemerge.i28, ptr %i.r, align 8, !tbaa !161
  %i.u = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(34) %11) #18
  %i.v = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr %.0.val, i64 %.8.val) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.u, ptr %i.v) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.w = ptrtoint ptr %7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !163
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !163
  store ptr %13, ptr %12, align 8, !tbaa !166
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 2, ptr %i.y, align 8, !tbaa !167
  %i.z = call ptr @_ZN4mlir26UnrealizedConversionCastOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr %5, i64 %3, i64 %4, i64 %i.w, i64 1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.257") align 8 %12) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !206 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -16
  %i.ad = zext i32 %i.ab to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !112, !alias.scope !685
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.af, align 8, !tbaa !52, !alias.scope !685
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.ag, align 4, !tbaa !53, !alias.scope !685
  %i.ah = icmp ugt i32 %i.ab, 6
  br i1 %i.ah, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i: ; preds = %_ZN4llvm5TwineC2EPKc.exit29
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.ae, i64 noundef %i.ad, i64 noundef 8) #18
  %.pre.i.i.i = load i32, ptr %i.af, align 8, !tbaa !52, !alias.scope !685
  %.pre24.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre = load ptr, ptr %0, align 8, !tbaa !112, !alias.scope !685
  br label %.lr.ph.i.i.i.i.preheader.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i: ; preds = %_ZN4llvm5TwineC2EPKc.exit29
  %.not8.i.i.i.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not8.i.i.i.i.i.i.i, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i
  %i.ai = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ %i.ae, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre24.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.pre-phi.i.i3.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.010.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.ak = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef %.sroa.2.09.i.i.i.i.i.i.i) #18
  %i.al = ptrtoint ptr %i.ak to i64
  store i64 %i.al, ptr %.010.i.i.i.i.i.i.i, align 8, !tbaa !125
  %i.am = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.am, %i.ad
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre23.i.i.i = load i32, ptr %i.af, align 8, !tbaa !52, !alias.scope !685
  br label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i
  %i.ao = phi i32 [ %.pre23.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %i.ap = add i32 %i.ao, %i.ab
  store i32 %i.ap, ptr %i.af, align 8, !tbaa !52, !alias.scope !685
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir5xegpu8LoadNdOp15getMixedOffsetsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.201") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  %i.a = tail call { ptr, i64 } @_ZN4mlir5xegpu8LoadNdOp15getConstOffsetsEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #18 ; 2 uses
  %i.b = tail call i64 @_ZN4mlir5xegpu8LoadNdOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1) #18 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !120    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 8388608
  %.not.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir5xegpu8LoadNdOp10getOffsetsEv.exit, label %bb.b, !prof !156

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123
  br label %_ZN4mlir5xegpu8LoadNdOp10getOffsetsEv.exit

_ZN4mlir5xegpu8LoadNdOp10getOffsetsEv.exit:       ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.i = extractvalue { ptr, i64 } %i.a, 1
  %i.j = extractvalue { ptr, i64 } %i.a, 0
  %i.k = and i64 %i.b, 4294967295                 ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.b, 32
  %i.l = add i64 %.sroa.5.0.extract.shift.i.i, %i.b
  %i.m = and i64 %i.l, 4294967295
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.k
  %i.o = sub nsw i64 %i.m, %i.k
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %i.n, i64 %i.o) #18
  %i.p = load ptr, ptr %1, align 8, !tbaa !120
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #18
  %i.s = load i64, ptr %2, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8
  call void @_ZN4mlir14getMixedValuesEN4llvm8ArrayRefIlEENS_10ValueRangeEPNS_11MLIRContextE(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.201") align 8 %0, ptr %i.j, i64 %i.i, i64 %i.s, i64 %i.u, ptr noundef %i.r) #18
  ret void
}

declare i64 @_ZN4mlir5xegpu8LoadNdOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare { ptr, i64 } @_ZN4mlir5xegpu8LoadNdOp15getConstOffsetsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal nonnull ptr @_ZNSt17_Function_handlerIFN4mlir5ValueEN4llvm11SmallVectorINS0_12OpFoldResultELj6EEEEZNK12_GLOBAL__N_114UnrollLoadNdOp15matchAndRewriteENS0_5xegpu8LoadNdOpERNS0_15PatternRewriterEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.201", align 8 ; 9 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !50    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !112
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 6, ptr %i.c, align 4, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !52
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EOS3_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  %.val.pre.i.i = load ptr, ptr %2, align 8, !tbaa !112
  %.val2.pre.i.i = load i32, ptr %i.b, align 8, !tbaa !52
  %i.g = zext i32 %.val2.pre.i.i to i64
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EOS3_.exit.i.i

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EOS3_.exit.i.i: ; preds = %bb.b, %bb.a
  %.val2.i.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.b ]
  %.val.i.i = phi ptr [ %i.a, %bb.a ], [ %.val.pre.i.i, %bb.b ]
  %i.h = load ptr, ptr %.val, align 8, !tbaa !687, !nonnull !152, !align !216
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !688, !nonnull !152, !align !216
  %.sroa.07.0.copyload.i.i.i = load ptr, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !689, !nonnull !152, !align !216
  %.sroa.06.0.copyload.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !132
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !690, !nonnull !152, !align !216
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !112
  %.sroa.05.0.copyload.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !125
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !691, !nonnull !152, !align !216
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !120  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %.not.i.i.i.i.i.i = icmp ugt i32 %i.u, 16777215
end_hunk_3
begin_hunk_4_@_ZNK12_GLOBAL__N_115UnrollStoreNdOp15matchAndRewriteEN4mlir5xegpu9StoreNdOpERNS1_15PatternRewriterE:bb.a
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i:          ; preds = %bb.av, %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !739
  %i.ma = load ptr, ptr %6, align 8, !tbaa !112, !noalias !739 ; 2 uses
  %i.mb = icmp eq ptr %i.ma, %i.gw
  br i1 %i.mb, label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu9StoreNdOpEE13unrollNdBatchENS1_5ValueENS2_14TensorDescTypeEN4llvm8ArrayRefIlEENS8_INS1_12OpFoldResultEEElNS7_12function_refIFS5_S5_NS7_11SmallVectorISA_Lj6EEEEEENS1_8LocationERNS1_15PatternRewriterE.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i
  call void @free(ptr noundef %i.ma) #18
  br label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu9StoreNdOpEE13unrollNdBatchENS1_5ValueENS2_14TensorDescTypeEN4llvm8ArrayRefIlEENS8_INS1_12OpFoldResultEEElNS7_12function_refIFS5_S5_NS7_11SmallVectorISA_Lj6EEEEEENS1_8LocationERNS1_15PatternRewriterE.exit

_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu9StoreNdOpEE13unrollNdBatchENS1_5ValueENS2_14TensorDescTypeEN4llvm8ArrayRefIlEENS8_INS1_12OpFoldResultEEElNS7_12function_refIFS5_S5_NS7_11SmallVectorISA_Lj6EEEEEENS1_8LocationERNS1_15PatternRewriterE.exit: ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.mc = load ptr, ptr %36, align 8, !tbaa !112  ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.jv
  br i1 %i.md, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit51, label %bb.ax

bb.ax:                                            ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu9StoreNdOpEE13unrollNdBatchENS1_5ValueENS2_14TensorDescTypeEN4llvm8ArrayRefIlEENS8_INS1_12OpFoldResultEEElNS7_12function_refIFS5_S5_NS7_11SmallVectorISA_Lj6EEEEEENS1_8LocationERNS1_15PatternRewriterE.exit
  call void @free(ptr noundef %i.mc) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit51

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit51: ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu9StoreNdOpEE13unrollNdBatchENS1_5ValueENS2_14TensorDescTypeEN4llvm8ArrayRefIlEENS8_INS1_12OpFoldResultEEElNS7_12function_refIFS5_S5_NS7_11SmallVectorISA_Lj6EEEEEENS1_8LocationERNS1_15PatternRewriterE.exit, %bb.ax
  %i.me = load ptr, ptr %37, align 8, !tbaa !112  ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.mg = icmp eq ptr %i.me, %i.mf
  br i1 %i.mg, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit52, label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit51
  call void @free(ptr noundef %i.me) #18
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit52

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit52: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit51, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  br label %bb.az

bb.az:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit52, %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit
  %i.mh = load ptr, ptr %21, align 8, !tbaa !120
  %i.mi = load ptr, ptr %2, align 8, !tbaa !19
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8
  call void %i.mk(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.mh) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.ml = load ptr, ptr %27, align 8, !tbaa !112  ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.mn = icmp eq ptr %i.ml, %i.mm
  br i1 %i.mn, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit53, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @free(ptr noundef %i.ml) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit53

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit53: ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  %i.mo = load ptr, ptr %26, align 8, !tbaa !112  ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.mq = icmp eq ptr %i.mo, %i.mp
  br i1 %i.mq, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit54, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit53
  call void @free(ptr noundef %i.mo) #18
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit54

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit54: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit53, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu9StoreNdOpEE14getTargetShapeEPNS1_9OperationE.exit.thread, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu9StoreNdOpEE14getTargetShapeEPNS1_9OperationE.exit, %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit54
  %i.mr = phi ptr [ %i.ao, %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit54 ], [ %i.ao, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu9StoreNdOpEE14getTargetShapeEPNS1_9OperationE.exit ], [ %i.ah, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu9StoreNdOpEE14getTargetShapeEPNS1_9OperationE.exit.thread ] ; 2 uses
  %.sroa.025.0 = phi i8 [ 1, %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit54 ], [ 0, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu9StoreNdOpEE14getTargetShapeEPNS1_9OperationE.exit ], [ 0, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu9StoreNdOpEE14getTargetShapeEPNS1_9OperationE.exit.thread ]
  %i.ms = load i8, ptr %i.mr, align 8, !tbaa !117, !range !119, !noundef !152
  %i.mt = trunc nuw i8 %i.ms to i1
  br i1 %i.mt, label %bb.bd, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

bb.bd:                                            ; preds = %bb.bc
  store i8 0, ptr %i.mr, align 8, !tbaa !117
  %i.mu = load ptr, ptr %24, align 8, !tbaa !112  ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.mw = icmp eq ptr %i.mu, %i.mv
  br i1 %i.mw, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @free(ptr noundef %i.mu) #18
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit: ; preds = %bb.bc, %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  ret i8 %.sroa.025.0
}

; Function Attrs: cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu9StoreNdOpEED0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @llvm.trap() #19
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) unnamed_addr #9 comdat align 2 {
bb.a:
  %.cast.i.i = ptrtoint ptr %1 to i64
  store i64 %.cast.i.i, ptr %0, align 8, !tbaa !132
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %_ZN4mlir13TypeInterfaceINS_10ShapedTypeENS_6detail25ShapedTypeInterfaceTraitsEECI2NS2_9InterfaceIS1_NS_4TypeES3_S6_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS5_IS1_S6_S3_S6_S8_E5TraitIT_EESD_EE5valueEvE4typeELPv0EEESD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !128    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i, !prof !133

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.11, i64 49), i64 16) #18
  store ptr %i.f, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !130 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !112  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !52   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i = phi i64 [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i = phi ptr [ %i.g, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.k = lshr i64 %.017.i.i.i.i.i.i.i.i.i, 1      ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i, i64 %i.k ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !130
  %i.m = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = xor i64 %i.k, -1
  %i.p = add nsw i64 %.017.i.i.i.i.i.i.i.i.i, %i.o
  %.112.i.i.i.i.i.i.i.i.i = select i1 %i.m, ptr %i.n, ptr %.01116.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.k ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i, !llvm.loop !1

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i ], [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.g, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.pre-phi.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i, %i.r
  br i1 %.not.i.i.i.i.i.i, label %_ZN4mlir13TypeInterfaceINS_10ShapedTypeENS_6detail25ShapedTypeInterfaceTraitsEECI2NS2_9InterfaceIS1_NS_4TypeES3_S6_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS5_IS1_S6_S3_S6_S8_E5TraitIT_EESD_EE5valueEvE4typeELPv0EEESD_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i
  %i.s = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i, align 8, !tbaa !135
  %i.t = icmp eq ptr %i.s, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.t, label %bb.f, label %_ZN4mlir13TypeInterfaceINS_10ShapedTypeENS_6detail25ShapedTypeInterfaceTraitsEECI2NS2_9InterfaceIS1_NS_4TypeES3_S6_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS5_IS1_S6_S3_S6_S8_E5TraitIT_EESD_EE5valueEvE4typeELPv0EEESD_.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !137
  br label %_ZN4mlir13TypeInterfaceINS_10ShapedTypeENS_6detail25ShapedTypeInterfaceTraitsEECI2NS2_9InterfaceIS1_NS_4TypeES3_S6_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS5_IS1_S6_S3_S6_S8_E5TraitIT_EESD_EE5valueEvE4typeELPv0EEESD_.exit

_ZN4mlir13TypeInterfaceINS_10ShapedTypeENS_6detail25ShapedTypeInterfaceTraitsEECI2NS2_9InterfaceIS1_NS_4TypeES3_S6_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS5_IS1_S6_S3_S6_S8_E5TraitIT_EESD_EE5valueEvE4typeELPv0EEESD_.exit: ; preds = %bb.a, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i, %bb.e, %bb.f
  %i.w = phi ptr [ null, %bb.a ], [ %i.v, %bb.f ], [ null, %bb.e ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !745
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu9StoreNdOpEE4packENS1_5ValueENS1_9TypeRangeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %1, ptr %2, i64 %3, i64 %4, ptr %.0.val, i64 %.8.val, ptr %5, ptr noundef nonnull align 8 dereferenceable(40) %6) unnamed_addr #1 align 2 {
bb.a:
  %7 = alloca %"class.mlir::Value", align 8       ; 2 uses
  %8 = alloca %"class.mlir::NamedAttribute", align 8 ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.mlir::NamedAttribute", align 8 ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::ArrayRef.257", align 8 ; 3 uses
  %13 = alloca [2 x %"class.mlir::NamedAttribute"], align 8 ; 5 uses
  store ptr %2, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !130
  %i.f = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  tail call void @_ZN4mlir5xegpu32extractVectorsWithShapeFromValueERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefIlEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.192") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr %5, ptr nonnull %2, ptr %.0.val, i64 %.8.val) #18
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.l, align 1, !tbaa !159
  %i.m = load i8, ptr %i.j, align 1, !tbaa !160
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %_ZN4llvm5TwineC2EPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.j, ptr %9, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %bb.c, %bb.d
  %storemerge.i = phi i8 [ 3, %bb.d ], [ 1, %bb.c ]
  store i8 %storemerge.i, ptr %i.k, align 8, !tbaa !161
  %i.n = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(34) %9) #18
  %i.o = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %i.n, ptr %i.o) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.s, align 1, !tbaa !159
  %i.t = load i8, ptr %i.q, align 1, !tbaa !160
  %.not.i27 = icmp eq i8 %i.t, 0
  br i1 %.not.i27, label %_ZN4llvm5TwineC2EPKc.exit29, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit
  store ptr %i.q, ptr %11, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit29

_ZN4llvm5TwineC2EPKc.exit29:                      ; preds = %_ZN4llvm5TwineC2EPKc.exit, %bb.e
  %storemerge.i28 = phi i8 [ 3, %bb.e ], [ 1, %_ZN4llvm5TwineC2EPKc.exit ]
  store i8 %storemerge.i28, ptr %i.r, align 8, !tbaa !161
  %i.u = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(34) %11) #18
  %i.v = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr %.0.val, i64 %.8.val) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.u, ptr %i.v) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.w = ptrtoint ptr %7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !163
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !163
  store ptr %13, ptr %12, align 8, !tbaa !166
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 2, ptr %i.y, align 8, !tbaa !167
  %i.z = call ptr @_ZN4mlir26UnrealizedConversionCastOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr %5, i64 %3, i64 %4, i64 %i.w, i64 1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.257") align 8 %12) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !206 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -16
  %i.ad = zext i32 %i.ab to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !112, !alias.scope !748
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.af, align 8, !tbaa !52, !alias.scope !748
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.ag, align 4, !tbaa !53, !alias.scope !748
  %i.ah = icmp ugt i32 %i.ab, 6
  br i1 %i.ah, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i: ; preds = %_ZN4llvm5TwineC2EPKc.exit29
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.ae, i64 noundef %i.ad, i64 noundef 8) #18
  %.pre.i.i.i = load i32, ptr %i.af, align 8, !tbaa !52, !alias.scope !748
  %.pre24.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre = load ptr, ptr %0, align 8, !tbaa !112, !alias.scope !748
  br label %.lr.ph.i.i.i.i.preheader.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i: ; preds = %_ZN4llvm5TwineC2EPKc.exit29
  %.not8.i.i.i.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not8.i.i.i.i.i.i.i, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i
  %i.ai = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ %i.ae, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre24.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.pre-phi.i.i3.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.010.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.ak = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef %.sroa.2.09.i.i.i.i.i.i.i) #18
  %i.al = ptrtoint ptr %i.ak to i64
  store i64 %i.al, ptr %.010.i.i.i.i.i.i.i, align 8, !tbaa !125
  %i.am = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.am, %i.ad
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre23.i.i.i = load i32, ptr %i.af, align 8, !tbaa !52, !alias.scope !748
  br label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i
  %i.ao = phi i32 [ %.pre23.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %i.ap = add i32 %i.ao, %i.ab
  store i32 %i.ap, ptr %i.af, align 8, !tbaa !52, !alias.scope !748
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir5xegpu9StoreNdOp15getMixedOffsetsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.201") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  %i.a = tail call { ptr, i64 } @_ZN4mlir5xegpu9StoreNdOp15getConstOffsetsEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #18 ; 2 uses
  %i.b = tail call i64 @_ZN4mlir5xegpu9StoreNdOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 2) #18 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !120    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 8388608
  %.not.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir5xegpu9StoreNdOp10getOffsetsEv.exit, label %bb.b, !prof !156

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123
  br label %_ZN4mlir5xegpu9StoreNdOp10getOffsetsEv.exit

_ZN4mlir5xegpu9StoreNdOp10getOffsetsEv.exit:      ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.i = extractvalue { ptr, i64 } %i.a, 1
  %i.j = extractvalue { ptr, i64 } %i.a, 0
  %i.k = and i64 %i.b, 4294967295                 ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.b, 32
  %i.l = add i64 %.sroa.5.0.extract.shift.i.i, %i.b
  %i.m = and i64 %i.l, 4294967295
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.k
  %i.o = sub nsw i64 %i.m, %i.k
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %i.n, i64 %i.o) #18
  %i.p = load ptr, ptr %1, align 8, !tbaa !120
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #18
  %i.s = load i64, ptr %2, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8
  call void @_ZN4mlir14getMixedValuesEN4llvm8ArrayRefIlEENS_10ValueRangeEPNS_11MLIRContextE(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.201") align 8 %0, ptr %i.j, i64 %i.i, i64 %i.s, i64 %i.u, ptr noundef %i.r) #18
  ret void
}

declare i64 @_ZN4mlir5xegpu9StoreNdOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare { ptr, i64 } @_ZN4mlir5xegpu9StoreNdOp15getConstOffsetsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef ptr @_ZNSt17_Function_handlerIFN4mlir5ValueEN4llvm11SmallVectorINS0_12OpFoldResultELj6EEEEZNK12_GLOBAL__N_115UnrollStoreNdOp15matchAndRewriteENS0_5xegpu9StoreNdOpERNS0_15PatternRewriterEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.201", align 8 ; 9 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !50    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !112
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 6, ptr %i.c, align 4, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !52
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EOS3_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  %.val.pre.i.i = load ptr, ptr %2, align 8, !tbaa !112
  %.val2.pre.i.i = load i32, ptr %i.b, align 8, !tbaa !52
  %i.g = zext i32 %.val2.pre.i.i to i64
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EOS3_.exit.i.i

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EOS3_.exit.i.i: ; preds = %bb.b, %bb.a
  %.val2.i.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.b ]
  %.val.i.i = phi ptr [ %i.a, %bb.a ], [ %.val.pre.i.i, %bb.b ]
  %i.h = load ptr, ptr %.val, align 8, !tbaa !750, !nonnull !152, !align !216
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !751, !nonnull !152, !align !216
  %.sroa.06.0.copyload.i.i.i = load ptr, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !752, !nonnull !152, !align !216
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !753, !nonnull !152, !align !216 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !51   ; 2 uses
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !51
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !112
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  %.sroa.05.0.copyload.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !125
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !754, !nonnull !152, !align !216
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !112
end_hunk_4
begin_hunk_5_@_ZNK12_GLOBAL__N_112UnrollDpasOp15matchAndRewriteEN4mlir5xegpu6DpasOpERNS1_15PatternRewriterE:bb.a
  store ptr %.sroa.0152.1194.us.us.us, ptr %i.ig, align 8
  store i32 3, ptr %i.ie, align 8, !tbaa !52
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit141.us.us.us, %.lr.ph197.us.us.us
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr nonnull align 8 dereferenceable(8) %26, i64 1) #18
  %i.jf = load ptr, ptr %30, align 8, !tbaa !112
  %i.jg = load i32, ptr %i.ie, align 8, !tbaa !52
  %i.jh = zext i32 %i.jg to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr %i.jf, i64 %i.jh) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #18
  %i.ji = load ptr, ptr %13, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.jj = call ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ji) #18
  store ptr %i.jj, ptr %3, align 8
  %i.jk = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.jl = extractvalue { ptr, i64 } %i.jk, 0
  %i.jm = extractvalue { ptr, i64 } %i.jk, 1
  call void @_ZN4mlir5xegpu19dropInstDataOnAttrsEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.654") align 8 %34, ptr %i.jl, i64 %i.jm) #18
  %i.jn = load ptr, ptr %34, align 8, !tbaa !112
  store ptr %i.jn, ptr %33, align 8, !tbaa !166
  %i.jo = load i32, ptr %i.ij, align 8, !tbaa !52
  %i.jp = zext i32 %i.jo to i64
  store i64 %i.jp, ptr %i.ii, align 8, !tbaa !167
  %i.jq = load i64, ptr %31, align 8
  %i.jr = load i64, ptr %i.ik, align 8
  %i.js = load i64, ptr %32, align 8
  %i.jt = load i64, ptr %i.il, align 8
  %i.ju = call ptr @_ZN4mlir5xegpu6DpasOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ih, ptr %.sroa.0.0.copyload.i.i, i64 %i.jq, i64 %i.jr, i64 %i.js, i64 %i.jt, ptr noundef nonnull byval(%"class.llvm::ArrayRef.257") align 8 %33) #18
  %i.jv = getelementptr inbounds i8, ptr %i.ju, i64 -16 ; 3 uses
  %i.jw = load ptr, ptr %34, align 8, !tbaa !112  ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.im
  br i1 %i.jx, label %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.us.us.us, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef %i.jw) #18
  br label %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.us.us.us

_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.us.us.us: ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  %i.jy = load ptr, ptr %30, align 8, !tbaa !112  ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.id
  br i1 %i.jz, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit142.us.us.us, label %bb.al

bb.al:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.us.us.us
  call void @free(ptr noundef %i.jy) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit142.us.us.us

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit142.us.us.us: ; preds = %bb.al, %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  %i.ka = add nuw nsw i64 %.0195.us.us.us, 1      ; 2 uses
  %exitcond248.not = icmp eq i64 %i.ka, %i.he
  br i1 %exitcond248.not, label %._crit_edge198.us.us.us, label %.lr.ph197.us.us.us, !llvm.loop !782

._crit_edge198.us.us.us:                          ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit142.us.us.us
  %i.kb = load i32, ptr %i.hz, align 8, !tbaa !52 ; 2 uses
  %i.kc = load i32, ptr %i.hy, align 4, !tbaa !53
  %.not.i138.us.us.us = icmp ult i32 %i.kb, %i.kc
  br i1 %.not.i138.us.us.us, label %bb.an, label %bb.am, !prof !143

bb.am:                                            ; preds = %._crit_edge198.us.us.us
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr nonnull %i.jv)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us.us.us

bb.an:                                            ; preds = %._crit_edge198.us.us.us
  %i.kd = zext i32 %i.kb to i64
  %i.ke = load ptr, ptr %29, align 8, !tbaa !112
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.kd
  store ptr %i.jv, ptr %i.kf, align 1
  %i.kg = load i32, ptr %i.hz, align 8, !tbaa !52
  %i.kh = add i32 %i.kg, 1
  store i32 %i.kh, ptr %i.hz, align 8, !tbaa !52
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us.us.us

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us.us.us: ; preds = %bb.an, %bb.am
  %i.ki = add nuw nsw i64 %.089203.us.us.us, 1    ; 2 uses
  %exitcond249.not = icmp eq i64 %i.ki, %i.hh
  br i1 %exitcond249.not, label %._crit_edge205.split.us.us.us, label %bb.ah, !llvm.loop !783

._crit_edge205.split.us.us.us:                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us.us.us
  %i.kj = add nuw nsw i64 %.090213.us.us, 1       ; 2 uses
  %exitcond250.not = icmp eq i64 %i.kj, %i.ha
  br i1 %exitcond250.not, label %._crit_edge214.split216.us.us, label %.preheader.us.us, !llvm.loop !784

._crit_edge214.split216.us.us:                    ; preds = %._crit_edge205.split.us.us.us
  %i.kk = add nuw nsw i64 %.091220.us, 1          ; 2 uses
  %exitcond251.not = icmp eq i64 %i.kk, %.093.lcssa319
  br i1 %exitcond251.not, label %._crit_edge221.split, label %.preheader181.us, !llvm.loop !785

.preheader181.lr.ph.split.split.split:            ; preds = %.preheader181.lr.ph.split.split
  br i1 %.not.not, label %.preheader181.us225, label %.preheader181

.preheader181.us225:                              ; preds = %.preheader181.lr.ph.split.split.split, %._crit_edge214.split216.split.us.us
  %.091220.us226 = phi i64 [ %i.ku, %._crit_edge214.split216.split.us.us ], [ 0, %.preheader181.lr.ph.split.split.split ]
  br label %.preheader.us217.us

.preheader.us217.us:                              ; preds = %._crit_edge205.split.split.us.us.us, %.preheader181.us225
  %.090213.us218.us = phi i64 [ 0, %.preheader181.us225 ], [ %i.kt, %._crit_edge205.split.split.us.us.us ]
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us209.us.us, %.preheader.us217.us
  %.089203.us206.us.us = phi i64 [ 0, %.preheader.us217.us ], [ %i.ks, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us209.us.us ]
  %i.kl = load i32, ptr %i.hz, align 8, !tbaa !52 ; 2 uses
  %i.km = load i32, ptr %i.hy, align 4, !tbaa !53
  %.not.i138.us208.us.us = icmp ult i32 %i.kl, %i.km
  br i1 %.not.i138.us208.us.us, label %bb.aq, label %bb.ap, !prof !143

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us209.us.us

bb.aq:                                            ; preds = %bb.ao
  %i.kn = zext i32 %i.kl to i64
  %i.ko = load ptr, ptr %29, align 8, !tbaa !112
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %i.kn
  store ptr null, ptr %i.kp, align 1
  %i.kq = load i32, ptr %i.hz, align 8, !tbaa !52
  %i.kr = add i32 %i.kq, 1
  store i32 %i.kr, ptr %i.hz, align 8, !tbaa !52
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us209.us.us

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us209.us.us: ; preds = %bb.aq, %bb.ap
  %i.ks = add nuw nsw i64 %.089203.us206.us.us, 1 ; 2 uses
  %exitcond245.not = icmp eq i64 %i.ks, %i.hh
  br i1 %exitcond245.not, label %._crit_edge205.split.split.us.us.us, label %bb.ao, !llvm.loop !783

._crit_edge205.split.split.us.us.us:              ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us209.us.us
  %i.kt = add nuw nsw i64 %.090213.us218.us, 1    ; 2 uses
  %exitcond246.not = icmp eq i64 %i.kt, %i.ha
  br i1 %exitcond246.not, label %._crit_edge214.split216.split.us.us, label %.preheader.us217.us, !llvm.loop !784

._crit_edge214.split216.split.us.us:              ; preds = %._crit_edge205.split.split.us.us.us
  %i.ku = add nuw nsw i64 %.091220.us226, 1       ; 2 uses
  %exitcond247.not = icmp eq i64 %i.ku, %.093.lcssa319
  br i1 %exitcond247.not, label %._crit_edge221.split, label %.preheader181.us225, !llvm.loop !785

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.092191 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.lw, %.lr.ph ] ; 6 uses
  %.093190 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.lv, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %.092191
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !51
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.092191
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !51
  %i.kz = sdiv i64 %i.kw, %i.ky
  %i.la = mul nsw i64 %i.kz, %.093190
  %i.lb = or disjoint i64 %.092191, 1             ; 2 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.lb
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !51
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.lb
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !51
  %i.lg = sdiv i64 %i.ld, %i.lf
  %i.lh = mul nsw i64 %i.lg, %i.la
  %i.li = or disjoint i64 %.092191, 2             ; 2 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.li
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !51
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.li
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !51
  %i.ln = sdiv i64 %i.lk, %i.lm
  %i.lo = mul nsw i64 %i.ln, %i.lh
  %i.lp = or disjoint i64 %.092191, 3             ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.lp
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !51
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.lp
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !51
  %i.lu = sdiv i64 %i.lr, %i.lt
  %i.lv = mul nsw i64 %i.lu, %i.lo                ; 3 uses
  %i.lw = add nuw nsw i64 %.092191, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !786

.preheader181:                                    ; preds = %.preheader181.lr.ph.split.split.split, %._crit_edge214.split216.split
  %.091220 = phi i64 [ %i.nt, %._crit_edge214.split216.split ], [ 0, %.preheader181.lr.ph.split.split.split ] ; 2 uses
  %factor.op.mul200.reass = mul i64 %factor.op.mul210, %.091220
  br label %.preheader

._crit_edge221.split:                             ; preds = %._crit_edge214.split216.split, %._crit_edge214.split216.split.us.us, %._crit_edge214.split216.us.us, %.preheader181.lr.ph, %._crit_edge
  %i.lx = phi ptr [ %i.hz, %._crit_edge214.split216.split.us.us ], [ %i.hz, %._crit_edge214.split216.us.us ], [ %i.hv, %._crit_edge ], [ %i.hz, %.preheader181.lr.ph ], [ %i.hz, %._crit_edge214.split216.split ]
  %i.ly = phi ptr [ %i.ia, %._crit_edge214.split216.split.us.us ], [ %i.ia, %._crit_edge214.split216.us.us ], [ %i.hu, %._crit_edge ], [ %i.ia, %.preheader181.lr.ph ], [ %i.ia, %._crit_edge214.split216.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #18
  %i.lz = load ptr, ptr %29, align 8, !tbaa !112
  %i.ma = load i32, ptr %i.lx, align 8, !tbaa !52
  %i.mb = zext i32 %i.ma to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr %i.lz, i64 %i.mb) #18
  %.sroa.01.0.copyload = load ptr, ptr %25, align 8, !tbaa !132 ; 3 uses
  %i.mc = load ptr, ptr %17, align 8, !tbaa !112
  %i.md = load i32, ptr %i.bz, align 8, !tbaa !52
  %i.me = zext i32 %i.md to i64
  %i.mf = load i64, ptr %36, align 8              ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.mh = load i64, ptr %i.mg, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %.sroa.01.0.copyload, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.mi = load ptr, ptr %.sroa.01.0.copyload, align 8, !tbaa !128
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.mj, align 8, !tbaa !130
  %i.mk = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE ; 2 uses
  %spec.select.i.i.i = select i1 %i.mk, ptr %.sroa.01.0.copyload, ptr null
  store ptr %spec.select.i.i.i, ptr %5, align 8
  br i1 %i.mk, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %._crit_edge221.split
  %i.ml = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18 ; 2 uses
  %i.mm = extractvalue { ptr, i64 } %i.ml, 0
  %i.mn = extractvalue { ptr, i64 } %i.ml, 1
  %i.mo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mp = call ptr @_ZN4mlir5xegpu31createVectorWithShapeFromValuesERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(32) %i.mo, ptr %.sroa.0.0.copyload.i.i, i64 %i.mf, i64 %i.mh, ptr %i.mm, i64 %i.mn) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu6DpasOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit

bb.as:                                            ; preds = %._crit_edge221.split
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !77 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.mu = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.mu, align 1, !tbaa !159
  %i.mv = load i8, ptr %i.ms, align 1, !tbaa !160
  %.not.i.i = icmp eq i8 %i.mv, 0
  br i1 %.not.i.i, label %_ZN4llvm5TwineC2EPKc.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.ms, ptr %7, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit.i

_ZN4llvm5TwineC2EPKc.exit.i:                      ; preds = %bb.at, %bb.as
  %storemerge.i.i = phi i8 [ 3, %bb.at ], [ 1, %bb.as ]
  store i8 %storemerge.i.i, ptr %i.mt, align 8, !tbaa !161
  %i.mw = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.mq, ptr noundef nonnull align 8 dereferenceable(34) %7) #18
  %i.mx = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mq) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.mw, ptr %i.mx) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !78 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.nb = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.nb, align 1, !tbaa !159
  %i.nc = load i8, ptr %i.mz, align 1, !tbaa !160
  %.not.i32.i = icmp eq i8 %i.nc, 0
  br i1 %.not.i32.i, label %_ZN4llvm5TwineC2EPKc.exit34.i, label %bb.au

bb.au:                                            ; preds = %_ZN4llvm5TwineC2EPKc.exit.i
  store ptr %i.mz, ptr %9, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit34.i

_ZN4llvm5TwineC2EPKc.exit34.i:                    ; preds = %bb.au, %_ZN4llvm5TwineC2EPKc.exit.i
  %storemerge.i33.i = phi i8 [ 3, %bb.au ], [ 1, %_ZN4llvm5TwineC2EPKc.exit.i ]
  store i8 %storemerge.i33.i, ptr %i.na, align 8, !tbaa !161
  %i.nd = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.mq, ptr noundef nonnull align 8 dereferenceable(34) %9) #18
  %i.ne = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %i.mq, ptr %i.mc, i64 %i.me) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %i.nd, ptr %i.ne) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr nonnull align 8 dereferenceable(8) %4, i64 1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !163
  %i.nf = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nf, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !163
  store ptr %12, ptr %11, align 8, !tbaa !166
  %i.ng = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 2, ptr %i.ng, align 8, !tbaa !167
  %i.nh = load i64, ptr %10, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.nj = load i64, ptr %i.ni, align 8
  %i.nk = call ptr @_ZN4mlir26UnrealizedConversionCastOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.mq, ptr %.sroa.0.0.copyload.i.i, i64 %i.nh, i64 %i.nj, i64 %i.mf, i64 %i.mh, ptr noundef nonnull byval(%"class.llvm::ArrayRef.257") align 8 %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.nl = getelementptr inbounds i8, ptr %i.nk, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu6DpasOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit

_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu6DpasOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit: ; preds = %bb.ar, %_ZN4llvm5TwineC2EPKc.exit34.i
  %.sroa.030.1.i = phi ptr [ %i.nl, %_ZN4llvm5TwineC2EPKc.exit34.i ], [ %i.mp, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  store ptr %.sroa.030.1.i, ptr %35, align 8
  %i.nm = load ptr, ptr %13, align 8, !tbaa !120
  %i.nn = ptrtoint ptr %35 to i64
  %i.no = load ptr, ptr %2, align 8, !tbaa !19
  %i.np = load ptr, ptr %i.no, align 8
  call void %i.np(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.nm, i64 %i.nn, i64 1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  %i.nq = load ptr, ptr %29, align 8, !tbaa !112  ; 2 uses
  %i.nr = icmp eq ptr %i.nq, %i.ly
  br i1 %i.nr, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit137, label %bb.av

bb.av:                                            ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu6DpasOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit
  call void @free(ptr noundef %i.nq) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit137

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit137: ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu6DpasOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  %.pre263 = load ptr, ptr %22, align 8, !tbaa !112
  br label %_ZN4llvm6all_ofIRNS_11SmallVectorIN4mlir10ValueRangeELj3EEEZNK12_GLOBAL__N_112UnrollDpasOp15matchAndRewriteENS2_5xegpu6DpasOpERNS2_15PatternRewriterEEUlRT_E0_EEbOSC_T0_.exit.thread

.preheader:                                       ; preds = %.preheader181, %._crit_edge205.split.split
  %.090213 = phi i64 [ 0, %.preheader181 ], [ %i.nu, %._crit_edge205.split.split ] ; 2 uses
  %i.ns = mul nuw nsw i64 %.090213, %i.hh
  br label %bb.aw

._crit_edge214.split216.split:                    ; preds = %._crit_edge205.split.split
  %i.nt = add nuw nsw i64 %.091220, 1             ; 2 uses
  %exitcond244.not = icmp eq i64 %i.nt, %.093.lcssa319
  br i1 %exitcond244.not, label %._crit_edge221.split, label %.preheader181, !llvm.loop !785

._crit_edge205.split.split:                       ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit
  %i.nu = add nuw nsw i64 %.090213, 1             ; 2 uses
  %exitcond243.not = icmp eq i64 %i.nu, %i.ha
  br i1 %exitcond243.not, label %._crit_edge214.split216.split, label %.preheader, !llvm.loop !784

bb.aw:                                            ; preds = %.preheader, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit
  %.089203 = phi i64 [ 0, %.preheader ], [ %i.oi, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit ] ; 2 uses
  %i.nv = load ptr, ptr %20, align 8, !tbaa !112
  %i.nw = getelementptr [8 x i8], ptr %i.nv, i64 %factor.op.mul200.reass
  %i.nx = getelementptr [8 x i8], ptr %i.nw, i64 %i.ns
  %i.ny = getelementptr [8 x i8], ptr %i.nx, i64 %.089203
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !125
  %i.oa = inttoptr i64 %i.nz to ptr               ; 2 uses
  %i.ob = load i32, ptr %i.hz, align 8, !tbaa !52 ; 2 uses
  %i.oc = load i32, ptr %i.hy, align 4, !tbaa !53
  %.not.i138 = icmp ult i32 %i.ob, %i.oc
  br i1 %.not.i138, label %bb.ay, label %bb.ax, !prof !143

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr %i.oa)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

bb.ay:                                            ; preds = %bb.aw
  %i.od = zext i32 %i.ob to i64
  %i.oe = load ptr, ptr %29, align 8, !tbaa !112
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %i.od
  store ptr %i.oa, ptr %i.of, align 1
  %i.og = load i32, ptr %i.hz, align 8, !tbaa !52
  %i.oh = add i32 %i.og, 1
  store i32 %i.oh, ptr %i.hz, align 8, !tbaa !52
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit: ; preds = %bb.ax, %bb.ay
  %i.oi = add nuw nsw i64 %.089203, 1             ; 2 uses
  %exitcond242.not = icmp eq i64 %i.oi, %i.hh
  br i1 %exitcond242.not, label %._crit_edge205.split.split, label %bb.aw, !llvm.loop !783

_ZN4llvm6all_ofIRNS_11SmallVectorIN4mlir10ValueRangeELj3EEEZNK12_GLOBAL__N_112UnrollDpasOp15matchAndRewriteENS2_5xegpu6DpasOpERNS2_15PatternRewriterEEUlRT_E0_EEbOSC_T0_.exit.thread: ; preds = %bb.af, %_ZN4llvm6any_ofIRNS_11SmallVectorIN4mlir10ValueRangeELj3EEEZNK12_GLOBAL__N_112UnrollDpasOp15matchAndRewriteENS2_5xegpu6DpasOpERNS2_15PatternRewriterEEUlRT_E_EEbOSC_T0_.exit, %_ZN4llvm6all_ofIRNS_11SmallVectorIN4mlir10ValueRangeELj3EEEZNK12_GLOBAL__N_112UnrollDpasOp15matchAndRewriteENS2_5xegpu6DpasOpERNS2_15PatternRewriterEEUlRT_E0_EEbOSC_T0_.exit, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit137
  %i.oj = phi ptr [ %.pre263, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit137 ], [ %.val307, %_ZN4llvm6any_ofIRNS_11SmallVectorIN4mlir10ValueRangeELj3EEEZNK12_GLOBAL__N_112UnrollDpasOp15matchAndRewriteENS2_5xegpu6DpasOpERNS2_15PatternRewriterEEUlRT_E_EEbOSC_T0_.exit ], [ %.val307, %_ZN4llvm6all_ofIRNS_11SmallVectorIN4mlir10ValueRangeELj3EEEZNK12_GLOBAL__N_112UnrollDpasOp15matchAndRewriteENS2_5xegpu6DpasOpERNS2_15PatternRewriterEEUlRT_E0_EEbOSC_T0_.exit ], [ %.val307, %bb.af ] ; 2 uses
  %.sroa.088.0 = phi i8 [ 1, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit137 ], [ 0, %_ZN4llvm6any_ofIRNS_11SmallVectorIN4mlir10ValueRangeELj3EEEZNK12_GLOBAL__N_112UnrollDpasOp15matchAndRewriteENS2_5xegpu6DpasOpERNS2_15PatternRewriterEEUlRT_E_EEbOSC_T0_.exit ], [ 0, %_ZN4llvm6all_ofIRNS_11SmallVectorIN4mlir10ValueRangeELj3EEEZNK12_GLOBAL__N_112UnrollDpasOp15matchAndRewriteENS2_5xegpu6DpasOpERNS2_15PatternRewriterEEUlRT_E0_EEbOSC_T0_.exit ], [ 0, %bb.af ] ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.ol = icmp eq ptr %i.oj, %i.ok
  br i1 %i.ol, label %_ZN4llvm11SmallVectorIN4mlir10ValueRangeELj3EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZN4llvm6all_ofIRNS_11SmallVectorIN4mlir10ValueRangeELj3EEEZNK12_GLOBAL__N_112UnrollDpasOp15matchAndRewriteENS2_5xegpu6DpasOpERNS2_15PatternRewriterEEUlRT_E0_EEbOSC_T0_.exit.thread
  call void @free(ptr noundef %i.oj) #18
  br label %_ZN4llvm11SmallVectorIN4mlir10ValueRangeELj3EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir10ValueRangeELj3EED2Ev.exit: ; preds = %bb.y, %_ZN4llvm6all_ofIRNS_11SmallVectorIN4mlir10ValueRangeELj3EEEZNK12_GLOBAL__N_112UnrollDpasOp15matchAndRewriteENS2_5xegpu6DpasOpERNS2_15PatternRewriterEEUlRT_E0_EEbOSC_T0_.exit.thread, %bb.az
  %.sroa.088.0323 = phi i8 [ %.sroa.088.0, %bb.az ], [ %.sroa.088.0, %_ZN4llvm6all_ofIRNS_11SmallVectorIN4mlir10ValueRangeELj3EEEZNK12_GLOBAL__N_112UnrollDpasOp15matchAndRewriteENS2_5xegpu6DpasOpERNS2_15PatternRewriterEEUlRT_E0_EEbOSC_T0_.exit.thread ], [ 0, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  %i.om = load ptr, ptr %20, align 8, !tbaa !112  ; 2 uses
  %i.on = icmp eq ptr %i.om, %i.ea
  br i1 %i.on, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit143, label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir10ValueRangeELj3EED2Ev.exit
  call void @free(ptr noundef %i.om) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit143

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit143: ; preds = %_ZN4llvm11SmallVectorIN4mlir10ValueRangeELj3EED2Ev.exit, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %i.oo = load ptr, ptr %19, align 8, !tbaa !112  ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.oq = icmp eq ptr %i.oo, %i.op
  br i1 %i.oq, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit144, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit143
  call void @free(ptr noundef %i.oo) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit144

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit144: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit143, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  %i.or = load ptr, ptr %18, align 8, !tbaa !112  ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ot = icmp eq ptr %i.or, %i.os
  br i1 %i.ot, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit145, label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit144
  call void @free(ptr noundef %i.or) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit145

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit145: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit144, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.ou = load ptr, ptr %17, align 8, !tbaa !112  ; 2 uses
  %i.ov = icmp eq ptr %i.ou, %i.by
  br i1 %i.ov, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit145
  call void @free(ptr noundef %i.ou) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit145, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %i.ow = load ptr, ptr %16, align 8, !tbaa !112  ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %i.bd
  br i1 %i.ox, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit146, label %bb.be

bb.be:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit
  call void @free(ptr noundef %i.ow) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit146

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit146:         ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.oy = load ptr, ptr %15, align 8, !tbaa !112  ; 2 uses
  %i.oz = icmp eq ptr %i.oy, %i.ag
  br i1 %i.oz, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit147, label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit146
  call void @free(ptr noundef %i.oy) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit147

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit147:         ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit146, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu6DpasOpEE14getTargetShapeEPNS1_9OperationE.exit.thread, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu6DpasOpEE14getTargetShapeEPNS1_9OperationE.exit, %bb.d, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit147
  %i.pa = phi ptr [ %i.s, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit147 ], [ %i.s, %bb.d ], [ %i.s, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu6DpasOpEE14getTargetShapeEPNS1_9OperationE.exit ], [ %i.l, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu6DpasOpEE14getTargetShapeEPNS1_9OperationE.exit.thread ] ; 2 uses
  %.sroa.088.1 = phi i8 [ %.sroa.088.0323, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit147 ], [ 0, %bb.d ], [ 0, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu6DpasOpEE14getTargetShapeEPNS1_9OperationE.exit ], [ 0, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu6DpasOpEE14getTargetShapeEPNS1_9OperationE.exit.thread ]
  %i.pb = load i8, ptr %i.pa, align 8, !tbaa !117, !range !119, !noundef !152
  %i.pc = trunc nuw i8 %i.pb to i1
  br i1 %i.pc, label %bb.bh, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

bb.bh:                                            ; preds = %bb.bg
  store i8 0, ptr %i.pa, align 8, !tbaa !117
  %i.pd = load ptr, ptr %14, align 8, !tbaa !112  ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.pf = icmp eq ptr %i.pd, %i.pe
  br i1 %i.pf, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @free(ptr noundef %i.pd) #18
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit: ; preds = %bb.bg, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  ret i8 %.sroa.088.1
}

; Function Attrs: cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu6DpasOpEED0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @llvm.trap() #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu6DpasOpEE18packOperandForDpasENS1_5ValueEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %1, ptr %2, ptr %3, i64 %4, ptr %5, ptr noundef nonnull align 8 dereferenceable(40) %6) unnamed_addr #1 align 2 {
bb.a:
  %7 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %8 = alloca %"class.mlir::NamedAttribute", align 8 ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.mlir::NamedAttribute", align 8 ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::ArrayRef.257", align 8 ; 5 uses
  %13 = alloca [2 x %"class.mlir::NamedAttribute"], align 8 ; 5 uses
  %14 = alloca %"class.mlir::VectorType", align 8 ; 6 uses
  %15 = alloca %"class.std::optional", align 8    ; 8 uses
  %16 = alloca %"class.std::optional.546", align 8 ; 4 uses
  %17 = alloca %"class.llvm::SmallVector.197", align 8 ; 14 uses
  %18 = alloca %"class.mlir::TypeRange", align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  store ptr %i.c, ptr %14, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.d = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #18 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  call void @_ZN4mlir17computeShapeRatioEN4llvm8ArrayRefIlEES2_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %15, ptr %i.e, i64 %i.f, ptr %3, i64 %4) #18
  %i.g = load ptr, ptr %15, align 8, !tbaa !112
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !52
  %i.j = zext i32 %i.i to i64
  %i.k = call noundef i64 @_ZN4mlir14computeProductEN4llvm8ArrayRefIlEE(ptr %i.g, i64 %i.j) #18 ; 13 uses
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = ptrtoint ptr %2 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !112
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.p, align 4, !tbaa !53
  store i64 %i.m, ptr %i.n, align 8
  store i32 1, ptr %i.o, align 8, !tbaa !52
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  store ptr %3, ptr %16, align 8, !tbaa !187
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %4, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i8 1, ptr %i.q, align 8, !tbaa !224
  %i.r = call ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #18
  %i.s = call ptr @_ZNK4mlir10VectorType9cloneWithESt8optionalIN4llvm8ArrayRefIlEEENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull byval(%"class.std::optional.546") align 8 %16, ptr %i.r) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.t = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 10 uses
  store ptr %i.t, ptr %17, align 8, !tbaa !112
  %i.u = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 6, ptr %i.v, align 4, !tbaa !53
  %i.w = icmp ugt i64 %i.k, 6
  br i1 %i.w, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.c
  store i32 0, ptr %i.u, align 8, !tbaa !52
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %17, ptr noundef nonnull %i.t, i64 noundef %i.k, i64 noundef 8) #18
  %i.x = load ptr, ptr %17, align 8, !tbaa !112   ; 4 uses
  %i.y = ptrtoint ptr %i.s to i64                 ; 2 uses
  %n.vec = and i64 %i.k, -4                       ; 3 uses
  %i.z = shl i64 %n.vec, 3
  %i.aa = getelementptr i8, ptr %i.x, i64 %i.z
  %i.ab = and i64 %i.k, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.y, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader.i.i.i.i.i.i
  %index = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !132
  store <2 x i64> %broadcast.splat, ptr %i.ad, align 8, !tbaa !132
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !798

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %middle.block, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %i.aa, %middle.block ] ; 2 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %i.ab, %middle.block ]
  store i64 %i.y, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !132
  %i.af = add i64 %.068.i.i.i.i.i.i, -1           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !799

_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i: ; preds = %bb.c
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.ah = ptrtoint ptr %i.s to i64                ; 6 uses
  store i64 %i.ah, ptr %i.t, align 8, !tbaa !132
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !132
  %.not.i.i.i.i.i.1 = icmp eq i64 %i.k, 2
  br i1 %.not.i.i.i.i.i.1, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !132
  %.not.i.i.i.i.i.2 = icmp eq i64 %i.k, 3
  br i1 %.not.i.i.i.i.i.2, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph.i.i.i.i.i.2
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 40
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !132
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.k, 4
  br i1 %.not.i.i.i.i.i.3, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.4:                               ; preds = %.lr.ph.i.i.i.i.i.3
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 48
  store i64 %i.ah, ptr %i.al, align 8, !tbaa !132
  %.not.i.i.i.i.i.4 = icmp eq i64 %i.k, 5
  br i1 %.not.i.i.i.i.i.4, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.5

.lr.ph.i.i.i.i.i.5:                               ; preds = %.lr.ph.i.i.i.i.i.4
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 56
  store i64 %i.ah, ptr %i.am, align 8, !tbaa !132
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.5, %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.an = phi ptr [ %i.x, %middle.block ], [ %i.t, %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %.lr.ph.i.i.i.i.i.5 ], [ %i.t, %.lr.ph.i.i.i.i.i.4 ], [ %i.t, %.lr.ph.i.i.i.i.i.3 ], [ %i.t, %.lr.ph.i.i.i.i.i.2 ], [ %i.t, %.lr.ph.preheader.i.i.i.i.i ]
  %storemerge.i = trunc i64 %i.k to i32
  store i32 %storemerge.i, ptr %i.u, align 8, !tbaa !52
  %i.ao = and i64 %i.k, 4294967295
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr %i.an, i64 %i.ao) #18
  %i.ap = load i64, ptr %18, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ar = load i64, ptr %i.aq, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !804)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %2, ptr %7, align 8, !noalias !804
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !804
  %i.as = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !128, !noalias !804
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !130, !noalias !804
  %i.aw = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  br i1 %i.aw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @_ZN4mlir5xegpu32extractVectorsWithShapeFromValueERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefIlEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.192") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr %5, ptr nonnull %2, ptr %3, i64 %4) #18
  br label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu6DpasOpEE4packENS1_5ValueENS1_9TypeRangeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18, !noalias !804
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18, !noalias !804
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !76, !noalias !804 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.bc, align 1, !tbaa !159, !noalias !804
  %i.bd = load i8, ptr %i.ba, align 1, !tbaa !160, !noalias !804
  %.not.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i, label %_ZN4llvm5TwineC2EPKc.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.ba, ptr %9, align 8, !tbaa !160, !noalias !804
  br label %_ZN4llvm5TwineC2EPKc.exit.i

_ZN4llvm5TwineC2EPKc.exit.i:                      ; preds = %bb.f, %bb.e
  %storemerge.i.i = phi i8 [ 3, %bb.f ], [ 1, %bb.e ]
  store i8 %storemerge.i.i, ptr %i.bb, align 8, !tbaa !161, !noalias !804
  %i.be = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(34) %9) #18, !noalias !804
  %i.bf = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) #18, !noalias !804
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %i.be, ptr %i.bf) #18, !noalias !804
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18, !noalias !804
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18, !noalias !804
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18, !noalias !804
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !78, !noalias !804 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.bj, align 1, !tbaa !159, !noalias !804
  %i.bk = load i8, ptr %i.bh, align 1, !tbaa !160, !noalias !804
  %.not.i27.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i27.i, label %_ZN4llvm5TwineC2EPKc.exit29.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit.i
  store ptr %i.bh, ptr %11, align 8, !tbaa !160, !noalias !804
  br label %_ZN4llvm5TwineC2EPKc.exit29.i

_ZN4llvm5TwineC2EPKc.exit29.i:                    ; preds = %bb.g, %_ZN4llvm5TwineC2EPKc.exit.i
  %storemerge.i28.i = phi i8 [ 3, %bb.g ], [ 1, %_ZN4llvm5TwineC2EPKc.exit.i ]
  store i8 %storemerge.i28.i, ptr %i.bi, align 8, !tbaa !161, !noalias !804
  %i.bl = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(34) %11) #18, !noalias !804
  %i.bm = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr %3, i64 %4) #18, !noalias !804
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.bl, ptr %i.bm) #18, !noalias !804
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18, !noalias !804
  %i.bn = ptrtoint ptr %7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18, !noalias !804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !163, !noalias !804
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !163, !noalias !804
  store ptr %13, ptr %12, align 8, !tbaa !166, !noalias !804
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 2, ptr %i.bp, align 8, !tbaa !167, !noalias !804
  %i.bq = call ptr @_ZN4mlir26UnrealizedConversionCastOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr %5, i64 %i.ap, i64 %i.ar, i64 %i.bn, i64 1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.257") align 8 %12) #18, !noalias !804 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18, !noalias !804
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 36
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !206, !noalias !804 ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bq, i64 -16
  %i.bu = zext i32 %i.bs to i64                   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bv, ptr %0, align 8, !tbaa !112, !alias.scope !805
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.bw, align 8, !tbaa !52, !alias.scope !805
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.bx, align 4, !tbaa !53, !alias.scope !805
  %i.by = icmp ugt i32 %i.bs, 6
  br i1 %i.by, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i: ; preds = %_ZN4llvm5TwineC2EPKc.exit29.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.bv, i64 noundef %i.bu, i64 noundef 8) #18
  %.pre.i.i.i.i = load i32, ptr %i.bw, align 8, !tbaa !52, !alias.scope !805
  %.pre24.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !112, !alias.scope !805
  br label %.lr.ph.i.i.i.i.preheader.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i: ; preds = %_ZN4llvm5TwineC2EPKc.exit29.i
  %.not8.i.i.i.i.i.i.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i:                 ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i
  %i.bz = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i ], [ %i.bv, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i ]
  %.pre-phi.i.i3.i.i = phi i64 [ %.pre24.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.pre-phi.i.i3.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i
  %.010.i.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ca, %.lr.ph.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i.i.i = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %i.cb = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 noundef %.sroa.2.09.i.i.i.i.i.i.i.i) #18
  %i.cc = ptrtoint ptr %i.cb to i64
  store i64 %i.cc, ptr %.010.i.i.i.i.i.i.i.i, align 8, !tbaa !125
  %i.cd = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cd, %i.bu
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !3

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pre23.i.i.i.i = load i32, ptr %i.bw, align 8, !tbaa !52, !alias.scope !805
  br label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit.i

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i
  %i.cf = phi i32 [ %.pre23.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i ]
  %i.cg = add i32 %i.cf, %i.bs
  store i32 %i.cg, ptr %i.bw, align 8, !tbaa !52, !alias.scope !805
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18, !noalias !804
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !804
  br label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu6DpasOpEE4packENS1_5ValueENS1_9TypeRangeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit

_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu6DpasOpEE4packENS1_5ValueENS1_9TypeRangeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit: ; preds = %bb.d, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.ch = load ptr, ptr %17, align 8, !tbaa !112  ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.t
  br i1 %i.ci, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu6DpasOpEE4packENS1_5ValueENS1_9TypeRangeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit
  call void @free(ptr noundef %i.ch) #18
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit: ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu6DpasOpEE4packENS1_5ValueENS1_9TypeRangeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit, %bb.b
  %i.cj = getelementptr inbounds nuw i8, ptr %15, i64 64 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !117, !range !119, !noundef !152
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.j, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.cj, align 8, !tbaa !117
  %i.cm = load ptr, ptr %15, align 8, !tbaa !112  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.cm) #18
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit: ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  ret void
}

declare ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr, i64, ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN4mlir5xegpu6DpasOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, i64, i64, ptr noundef byval(%"class.llvm::ArrayRef.257") align 8) local_unnamed_addr #2

declare void @_ZN4mlir5xegpu19dropInstDataOnAttrsEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.654") align 8, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #18
  %i.f = load ptr, ptr %0, align 8, !tbaa !112
  %i.g = load i32, ptr %i.a, align 8, !tbaa !52
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store i64 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !52
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !52
  ret void
}

declare i64 @_ZN4mlir5xegpu6DpasOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare void @_ZN4mlir17computeShapeRatioEN4llvm8ArrayRefIlEES2_(ptr dead_on_unwind writable sret(%"class.std::optional") align 8, ptr, i64, ptr, i64) local_unnamed_addr #2

declare noundef i64 @_ZN4mlir14computeProductEN4llvm8ArrayRefIlEE(ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEED2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) initializes((0, 8)) %0) unnamed_addr #9 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.e = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef 3) #18, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
end_hunk_5
begin_hunk_6_@_ZNK12_GLOBAL__N_114UnrollDpasMxOp15matchAndRewriteEN4mlir5xegpu8DpasMxOpERNS1_15PatternRewriterE:bb.a
  %i.me = getelementptr inbounds i8, ptr %i.mb, i64 -16 ; 3 uses
  %i.mf = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.me, i64 noundef 0) #18
  %i.mg = load ptr, ptr %33, align 8, !tbaa !112  ; 2 uses
  %i.mh = icmp eq ptr %i.mg, %i.jz
  br i1 %i.mh, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit215.us.us.us.us.us, label %bb.av

bb.av:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.us.us.us.us.us
  call void @free(ptr noundef %i.mg) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit215.us.us.us.us.us

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit215.us.us.us.us.us: ; preds = %bb.av, %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.us.us.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  %i.mi = add nuw nsw i64 %.0117268.us.us.us.us.us, 1 ; 2 uses
  %exitcond324.not = icmp eq i64 %i.mi, %i.jb
  br i1 %exitcond324.not, label %._crit_edge271.us.us.us.us.us, label %.lr.ph270.us.us.us.us.us, !llvm.loop !815

._crit_edge271.us.us.us.us.us:                    ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit215.us.us.us.us.us
  %i.mj = load i32, ptr %i.jw, align 8, !tbaa !52 ; 2 uses
  %i.mk = load i32, ptr %i.jv, align 4, !tbaa !53
  %.not.i208.us.us.us.us.us = icmp ult i32 %i.mj, %i.mk
  br i1 %.not.i208.us.us.us.us.us, label %bb.ax, label %bb.aw, !prof !143

bb.aw:                                            ; preds = %._crit_edge271.us.us.us.us.us
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr nonnull %i.me)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us.us.us.us.us

bb.ax:                                            ; preds = %._crit_edge271.us.us.us.us.us
  %i.ml = zext i32 %i.mj to i64
  %i.mm = load ptr, ptr %32, align 8, !tbaa !112
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.ml
  store ptr %i.me, ptr %i.mn, align 1
  %i.mo = load i32, ptr %i.jw, align 8, !tbaa !52
  %i.mp = add i32 %i.mo, 1
  store i32 %i.mp, ptr %i.jw, align 8, !tbaa !52
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us.us.us.us.us

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us.us.us.us.us: ; preds = %bb.ax, %bb.aw
  %i.mq = add nuw nsw i64 %.0118274.us.us.us.us.us, 1 ; 2 uses
  %exitcond325.not = icmp eq i64 %i.mq, %i.je
  br i1 %exitcond325.not, label %._crit_edge276.split.us.us.us.us.us, label %bb.ap, !llvm.loop !816

._crit_edge276.split.us.us.us.us.us:              ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us.us.us.us.us
  %i.mr = add nuw nsw i64 %.0119285.us.us.us.us, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %i.mr, %i.ix
  br i1 %exitcond326.not, label %._crit_edge286.split.us.split.us.us.us, label %.preheader.us.us.us.us, !llvm.loop !817

._crit_edge286.split.us.split.us.us.us:           ; preds = %._crit_edge276.split.us.us.us.us.us
  %i.ms = add nuw nsw i64 %.0120301.us.us, 1      ; 2 uses
  %exitcond327.not = icmp eq i64 %i.ms, %.0.lcssa389
  br i1 %exitcond327.not, label %._crit_edge302.split, label %.preheader264.us.us, !llvm.loop !818

.preheader264.lr.ph.split.split.us.split:         ; preds = %.preheader264.lr.ph.split.split.us
  br i1 %.not, label %.preheader264.us.us311, label %.preheader264.us

.preheader264.us.us311:                           ; preds = %.preheader264.lr.ph.split.split.us.split, %._crit_edge286.split.us.split.split.us.us.us
  %.0120301.us.us312 = phi i64 [ %i.nc, %._crit_edge286.split.us.split.split.us.us.us ], [ 0, %.preheader264.lr.ph.split.split.us.split ]
  br label %.preheader.us.us296.us.us

.preheader.us.us296.us.us:                        ; preds = %._crit_edge276.split.split.us.us.us.us.us, %.preheader264.us.us311
  %.0119285.us.us297.us.us = phi i64 [ 0, %.preheader264.us.us311 ], [ %i.nb, %._crit_edge276.split.split.us.us.us.us.us ]
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us280.us.us.us.us, %.preheader.us.us296.us.us
  %.0118274.us278.us.us.us.us = phi i64 [ 0, %.preheader.us.us296.us.us ], [ %i.na, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us280.us.us.us.us ]
  %i.mt = load i32, ptr %i.jw, align 8, !tbaa !52 ; 2 uses
  %i.mu = load i32, ptr %i.jv, align 4, !tbaa !53
  %.not.i208.us279.us.us.us.us = icmp ult i32 %i.mt, %i.mu
  br i1 %.not.i208.us279.us.us.us.us, label %bb.ba, label %bb.az, !prof !143

bb.az:                                            ; preds = %bb.ay
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr nonnull inttoptr (i64 -16 to ptr))
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us280.us.us.us.us

bb.ba:                                            ; preds = %bb.ay
  %i.mv = zext i32 %i.mt to i64
  %i.mw = load ptr, ptr %32, align 8, !tbaa !112
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %i.mv
  store ptr inttoptr (i64 -16 to ptr), ptr %i.mx, align 1
  %i.my = load i32, ptr %i.jw, align 8, !tbaa !52
  %i.mz = add i32 %i.my, 1
  store i32 %i.mz, ptr %i.jw, align 8, !tbaa !52
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us280.us.us.us.us

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us280.us.us.us.us: ; preds = %bb.ba, %bb.az
  %i.na = add nuw nsw i64 %.0118274.us278.us.us.us.us, 1 ; 2 uses
  %exitcond321.not = icmp eq i64 %i.na, %i.je
  br i1 %exitcond321.not, label %._crit_edge276.split.split.us.us.us.us.us, label %bb.ay, !llvm.loop !816

._crit_edge276.split.split.us.us.us.us.us:        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us280.us.us.us.us
  %i.nb = add nuw nsw i64 %.0119285.us.us297.us.us, 1 ; 2 uses
  %exitcond322.not = icmp eq i64 %i.nb, %i.ix
  br i1 %exitcond322.not, label %._crit_edge286.split.us.split.split.us.us.us, label %.preheader.us.us296.us.us, !llvm.loop !817

._crit_edge286.split.us.split.split.us.us.us:     ; preds = %._crit_edge276.split.split.us.us.us.us.us
  %i.nc = add nuw nsw i64 %.0120301.us.us312, 1   ; 2 uses
  %exitcond323.not = icmp eq i64 %i.nc, %.0.lcssa389
  br i1 %exitcond323.not, label %._crit_edge302.split, label %.preheader264.us.us311, !llvm.loop !818

.preheader264.us:                                 ; preds = %.preheader264.lr.ph.split.split.us.split, %._crit_edge286.split.us.split.split.us307
  %.0120301.us = phi i64 [ %i.nm, %._crit_edge286.split.us.split.split.us307 ], [ 0, %.preheader264.lr.ph.split.split.us.split ]
  br label %.preheader.us.us305

.preheader.us.us305:                              ; preds = %._crit_edge276.split.split.us293.us, %.preheader264.us
  %.0119285.us.us306 = phi i64 [ 0, %.preheader264.us ], [ %i.nl, %._crit_edge276.split.split.us293.us ]
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us292.us, %.preheader.us.us305
  %.0118274.us290.us = phi i64 [ 0, %.preheader.us.us305 ], [ %i.nk, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us292.us ]
  %i.nd = load i32, ptr %i.jw, align 8, !tbaa !52 ; 2 uses
  %i.ne = load i32, ptr %i.jv, align 4, !tbaa !53
  %.not.i208.us291.us = icmp ult i32 %i.nd, %i.ne
  br i1 %.not.i208.us291.us, label %bb.bd, label %bb.bc, !prof !143

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr nonnull inttoptr (i64 -16 to ptr))
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us292.us

bb.bd:                                            ; preds = %bb.bb
  %i.nf = zext i32 %i.nd to i64
  %i.ng = load ptr, ptr %32, align 8, !tbaa !112
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %i.nf
  store ptr inttoptr (i64 -16 to ptr), ptr %i.nh, align 1
  %i.ni = load i32, ptr %i.jw, align 8, !tbaa !52
  %i.nj = add i32 %i.ni, 1
  store i32 %i.nj, ptr %i.jw, align 8, !tbaa !52
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us292.us

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us292.us: ; preds = %bb.bd, %bb.bc
  %i.nk = add nuw nsw i64 %.0118274.us290.us, 1   ; 2 uses
  %exitcond318.not = icmp eq i64 %i.nk, %i.je
  br i1 %exitcond318.not, label %._crit_edge276.split.split.us293.us, label %bb.bb, !llvm.loop !816

._crit_edge276.split.split.us293.us:              ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.us292.us
  %i.nl = add nuw nsw i64 %.0119285.us.us306, 1   ; 2 uses
  %exitcond319.not = icmp eq i64 %i.nl, %i.ix
  br i1 %exitcond319.not, label %._crit_edge286.split.us.split.split.us307, label %.preheader.us.us305, !llvm.loop !817

._crit_edge286.split.us.split.split.us307:        ; preds = %._crit_edge276.split.split.us293.us
  %i.nm = add nuw nsw i64 %.0120301.us, 1         ; 2 uses
  %exitcond320.not = icmp eq i64 %i.nm, %.0.lcssa389
  br i1 %exitcond320.not, label %._crit_edge302.split, label %.preheader264.us, !llvm.loop !818

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0266 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.on, %.lr.ph ]
  %.0116265 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.oo, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %.0116265
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !51
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.0116265
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !51
  %i.nr = sdiv i64 %i.no, %i.nq
  %i.ns = mul nsw i64 %i.nr, %.0266
  %i.nt = or disjoint i64 %.0116265, 1            ; 2 uses
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.nt
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !51
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.nt
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !51
  %i.ny = sdiv i64 %i.nv, %i.nx
  %i.nz = mul nsw i64 %i.ny, %i.ns
  %i.oa = or disjoint i64 %.0116265, 2            ; 2 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.oa
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !51
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.oa
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !51
  %i.of = sdiv i64 %i.oc, %i.oe
  %i.og = mul nsw i64 %i.of, %i.nz
  %i.oh = or disjoint i64 %.0116265, 3            ; 2 uses
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.oh
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !51
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.oh
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !51
  %i.om = sdiv i64 %i.oj, %i.ol
  %i.on = mul nsw i64 %i.om, %i.og                ; 3 uses
  %i.oo = add nuw nsw i64 %.0116265, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !819

._crit_edge302.split:                             ; preds = %._crit_edge286.split.us.split.split.us307, %._crit_edge286.split.us.split.split.us.us.us, %._crit_edge286.split.us.split.us.us.us, %.preheader264.lr.ph, %._crit_edge
  %i.op = phi ptr [ %i.js, %._crit_edge ], [ %i.jw, %.preheader264.lr.ph ], [ %i.jw, %._crit_edge286.split.us.split.us.us.us ], [ %i.jw, %._crit_edge286.split.us.split.split.us.us.us ], [ %i.jw, %._crit_edge286.split.us.split.split.us307 ]
  %i.oq = phi ptr [ %i.jr, %._crit_edge ], [ %i.jx, %.preheader264.lr.ph ], [ %i.jx, %._crit_edge286.split.us.split.us.us.us ], [ %i.jx, %._crit_edge286.split.us.split.split.us.us.us ], [ %i.jx, %._crit_edge286.split.us.split.split.us307 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #18
  %i.or = load ptr, ptr %32, align 8, !tbaa !112
  %i.os = load i32, ptr %i.op, align 8, !tbaa !52
  %i.ot = zext i32 %i.os to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %39, ptr %i.or, i64 %i.ot) #18
  %.sroa.01.0.copyload = load ptr, ptr %28, align 8, !tbaa !132 ; 3 uses
  %i.ou = load ptr, ptr %17, align 8, !tbaa !112
  %i.ov = load i32, ptr %i.cb, align 8, !tbaa !52
  %i.ow = zext i32 %i.ov to i64
  %i.ox = load i64, ptr %39, align 8              ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.oz = load i64, ptr %i.oy, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %.sroa.01.0.copyload, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.pa = load ptr, ptr %.sroa.01.0.copyload, align 8, !tbaa !128
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.pb, align 8, !tbaa !130
  %i.pc = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE ; 2 uses
  %spec.select.i.i.i = select i1 %i.pc, ptr %.sroa.01.0.copyload, ptr null
  store ptr %spec.select.i.i.i, ptr %5, align 8
  br i1 %i.pc, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %._crit_edge302.split
  %i.pd = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18 ; 2 uses
  %i.pe = extractvalue { ptr, i64 } %i.pd, 0
  %i.pf = extractvalue { ptr, i64 } %i.pd, 1
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ph = call ptr @_ZN4mlir5xegpu31createVectorWithShapeFromValuesERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(32) %i.pg, ptr %.sroa.0.0.copyload.i.i, i64 %i.ox, i64 %i.oz, ptr %i.pe, i64 %i.pf) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit

bb.bf:                                            ; preds = %._crit_edge302.split
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !83 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.pm = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.pm, align 1, !tbaa !159
  %i.pn = load i8, ptr %i.pk, align 1, !tbaa !160
  %.not.i.i = icmp eq i8 %i.pn, 0
  br i1 %.not.i.i, label %_ZN4llvm5TwineC2EPKc.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store ptr %i.pk, ptr %7, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit.i

_ZN4llvm5TwineC2EPKc.exit.i:                      ; preds = %bb.bg, %bb.bf
  %storemerge.i.i = phi i8 [ 3, %bb.bg ], [ 1, %bb.bf ]
  store i8 %storemerge.i.i, ptr %i.pl, align 8, !tbaa !161
  %i.po = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.pi, ptr noundef nonnull align 8 dereferenceable(34) %7) #18
  %i.pp = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pi) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.po, ptr %i.pp) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !84 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.pt = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.pt, align 1, !tbaa !159
  %i.pu = load i8, ptr %i.pr, align 1, !tbaa !160
  %.not.i32.i = icmp eq i8 %i.pu, 0
  br i1 %.not.i32.i, label %_ZN4llvm5TwineC2EPKc.exit34.i, label %bb.bh

bb.bh:                                            ; preds = %_ZN4llvm5TwineC2EPKc.exit.i
  store ptr %i.pr, ptr %9, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit34.i

_ZN4llvm5TwineC2EPKc.exit34.i:                    ; preds = %bb.bh, %_ZN4llvm5TwineC2EPKc.exit.i
  %storemerge.i33.i = phi i8 [ 3, %bb.bh ], [ 1, %_ZN4llvm5TwineC2EPKc.exit.i ]
  store i8 %storemerge.i33.i, ptr %i.ps, align 8, !tbaa !161
  %i.pv = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.pi, ptr noundef nonnull align 8 dereferenceable(34) %9) #18
  %i.pw = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %i.pi, ptr %i.ou, i64 %i.ow) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %i.pv, ptr %i.pw) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr nonnull align 8 dereferenceable(8) %4, i64 1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !163
  %i.px = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.px, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !163
  store ptr %12, ptr %11, align 8, !tbaa !166
  %i.py = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 2, ptr %i.py, align 8, !tbaa !167
  %i.pz = load i64, ptr %10, align 8
  %i.qa = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.qb = load i64, ptr %i.qa, align 8
  %i.qc = call ptr @_ZN4mlir26UnrealizedConversionCastOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.pi, ptr %.sroa.0.0.copyload.i.i, i64 %i.pz, i64 %i.qb, i64 %i.ox, i64 %i.oz, ptr noundef nonnull byval(%"class.llvm::ArrayRef.257") align 8 %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.qd = getelementptr inbounds i8, ptr %i.qc, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit

_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit: ; preds = %bb.be, %_ZN4llvm5TwineC2EPKc.exit34.i
  %.sroa.030.1.i = phi ptr [ %i.qd, %_ZN4llvm5TwineC2EPKc.exit34.i ], [ %i.ph, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  store ptr %.sroa.030.1.i, ptr %38, align 8
  %i.qe = load ptr, ptr %13, align 8, !tbaa !120
  %i.qf = ptrtoint ptr %38 to i64
  %i.qg = load ptr, ptr %2, align 8, !tbaa !19
  %i.qh = load ptr, ptr %i.qg, align 8
  call void %i.qh(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.qe, i64 %i.qf, i64 1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  %i.qi = load ptr, ptr %32, align 8, !tbaa !112  ; 2 uses
  %i.qj = icmp eq ptr %i.qi, %i.oq
  br i1 %i.qj, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit198, label %bb.bi

bb.bi:                                            ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit
  call void @free(ptr noundef %i.qi) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit198

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit198: ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  %i.qk = load ptr, ptr %26, align 8, !tbaa !112  ; 2 uses
  %i.ql = icmp eq ptr %i.qk, %i.hq
  br i1 %i.ql, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit199, label %bb.bj

bb.bj:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit198
  call void @free(ptr noundef %i.qk) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit199

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit199: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit198, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  %i.qm = load ptr, ptr %24, align 8, !tbaa !112  ; 2 uses
  %i.qn = icmp eq ptr %i.qm, %i.hg
  br i1 %i.qn, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit200, label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit199
  call void @free(ptr noundef %i.qm) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit200

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit200: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit199, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  %i.qo = load ptr, ptr %22, align 8, !tbaa !112  ; 2 uses
  %i.qp = icmp eq ptr %i.qo, %i.gw
  br i1 %i.qp, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit201, label %bb.bl

bb.bl:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit200
  call void @free(ptr noundef %i.qo) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit201

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit201: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit200, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  %i.qq = load ptr, ptr %21, align 8, !tbaa !112  ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.qs = icmp eq ptr %i.qq, %i.qr
  br i1 %i.qs, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit202, label %bb.bm

bb.bm:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit201
  call void @free(ptr noundef %i.qq) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit202

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit202: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit201, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  %i.qt = load ptr, ptr %20, align 8, !tbaa !112  ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.qv = icmp eq ptr %i.qt, %i.qu
  br i1 %i.qv, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit203, label %bb.bn

bb.bn:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit202
  call void @free(ptr noundef %i.qt) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit203

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit203: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit202, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %i.qw = load ptr, ptr %19, align 8, !tbaa !112  ; 2 uses
  %i.qx = icmp eq ptr %i.qw, %i.dq
  br i1 %i.qx, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit203
  call void @free(ptr noundef %i.qw) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit203, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  %i.qy = load ptr, ptr %18, align 8, !tbaa !112  ; 2 uses
  %i.qz = icmp eq ptr %i.qy, %i.cv
  br i1 %i.qz, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit204, label %bb.bp

bb.bp:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit
  call void @free(ptr noundef %i.qy) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit204

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit204:         ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.ra = load ptr, ptr %17, align 8, !tbaa !112  ; 2 uses
  %i.rb = icmp eq ptr %i.ra, %i.ca
  br i1 %i.rb, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit205, label %bb.bq

bb.bq:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit204
  call void @free(ptr noundef %i.ra) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit205

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit205:         ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit204, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %i.rc = load ptr, ptr %16, align 8, !tbaa !112  ; 2 uses
  %i.rd = icmp eq ptr %i.rc, %i.bf
  br i1 %i.rd, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit206, label %bb.br

bb.br:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit205
  call void @free(ptr noundef %i.rc) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit206

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit206:         ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit205, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.re = load ptr, ptr %15, align 8, !tbaa !112  ; 2 uses
  %i.rf = icmp eq ptr %i.re, %i.ai
  br i1 %i.rf, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit207, label %bb.bs

bb.bs:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit206
  call void @free(ptr noundef %i.re) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit207

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit207:         ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit206, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEE14getTargetShapeEPNS1_9OperationE.exit.thread, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEE14getTargetShapeEPNS1_9OperationE.exit, %bb.d, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit207
  %i.rg = phi ptr [ %i.s, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit207 ], [ %i.s, %bb.d ], [ %i.s, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEE14getTargetShapeEPNS1_9OperationE.exit ], [ %i.l, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEE14getTargetShapeEPNS1_9OperationE.exit.thread ] ; 2 uses
  %.sroa.0115.0 = phi i8 [ 1, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit207 ], [ 0, %bb.d ], [ 0, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEE14getTargetShapeEPNS1_9OperationE.exit ], [ 0, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEE14getTargetShapeEPNS1_9OperationE.exit.thread ]
  %i.rh = load i8, ptr %i.rg, align 8, !tbaa !117, !range !119, !noundef !152
  %i.ri = trunc nuw i8 %i.rh to i1
  br i1 %i.ri, label %bb.bu, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

bb.bu:                                            ; preds = %bb.bt
  store i8 0, ptr %i.rg, align 8, !tbaa !117
  %i.rj = load ptr, ptr %14, align 8, !tbaa !112  ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.rl = icmp eq ptr %i.rj, %i.rk
  br i1 %i.rl, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @free(ptr noundef %i.rj) #18
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit: ; preds = %bb.bt, %bb.bu, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  ret i8 %.sroa.0115.0
}

; Function Attrs: cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEED0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @llvm.trap() #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEE18packOperandForDpasENS1_5ValueEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %1, ptr %2, ptr %3, i64 %4, ptr %5, ptr noundef nonnull align 8 dereferenceable(40) %6) unnamed_addr #1 align 2 {
bb.a:
  %7 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %8 = alloca %"class.mlir::NamedAttribute", align 8 ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.mlir::NamedAttribute", align 8 ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::ArrayRef.257", align 8 ; 5 uses
  %13 = alloca [2 x %"class.mlir::NamedAttribute"], align 8 ; 5 uses
  %14 = alloca %"class.mlir::VectorType", align 8 ; 6 uses
  %15 = alloca %"class.std::optional", align 8    ; 8 uses
  %16 = alloca %"class.std::optional.546", align 8 ; 4 uses
  %17 = alloca %"class.llvm::SmallVector.197", align 8 ; 14 uses
  %18 = alloca %"class.mlir::TypeRange", align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  store ptr %i.c, ptr %14, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.d = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #18 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  call void @_ZN4mlir17computeShapeRatioEN4llvm8ArrayRefIlEES2_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %15, ptr %i.e, i64 %i.f, ptr %3, i64 %4) #18
  %i.g = load ptr, ptr %15, align 8, !tbaa !112
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !52
  %i.j = zext i32 %i.i to i64
  %i.k = call noundef i64 @_ZN4mlir14computeProductEN4llvm8ArrayRefIlEE(ptr %i.g, i64 %i.j) #18 ; 13 uses
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = ptrtoint ptr %2 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !112
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.p, align 4, !tbaa !53
  store i64 %i.m, ptr %i.n, align 8
  store i32 1, ptr %i.o, align 8, !tbaa !52
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  store ptr %3, ptr %16, align 8, !tbaa !187
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %4, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i8 1, ptr %i.q, align 8, !tbaa !224
  %i.r = call ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #18
  %i.s = call ptr @_ZNK4mlir10VectorType9cloneWithESt8optionalIN4llvm8ArrayRefIlEEENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull byval(%"class.std::optional.546") align 8 %16, ptr %i.r) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.t = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 10 uses
  store ptr %i.t, ptr %17, align 8, !tbaa !112
  %i.u = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 6, ptr %i.v, align 4, !tbaa !53
  %i.w = icmp ugt i64 %i.k, 6
  br i1 %i.w, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.c
  store i32 0, ptr %i.u, align 8, !tbaa !52
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %17, ptr noundef nonnull %i.t, i64 noundef %i.k, i64 noundef 8) #18
  %i.x = load ptr, ptr %17, align 8, !tbaa !112   ; 4 uses
  %i.y = ptrtoint ptr %i.s to i64                 ; 2 uses
  %n.vec = and i64 %i.k, -4                       ; 3 uses
  %i.z = shl i64 %n.vec, 3
  %i.aa = getelementptr i8, ptr %i.x, i64 %i.z
  %i.ab = and i64 %i.k, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.y, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader.i.i.i.i.i.i
  %index = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !132
  store <2 x i64> %broadcast.splat, ptr %i.ad, align 8, !tbaa !132
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !822

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %middle.block, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %i.aa, %middle.block ] ; 2 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %i.ab, %middle.block ]
  store i64 %i.y, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !132
  %i.af = add i64 %.068.i.i.i.i.i.i, -1           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !823

_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i: ; preds = %bb.c
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.ah = ptrtoint ptr %i.s to i64                ; 6 uses
  store i64 %i.ah, ptr %i.t, align 8, !tbaa !132
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !132
  %.not.i.i.i.i.i.1 = icmp eq i64 %i.k, 2
  br i1 %.not.i.i.i.i.i.1, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !132
  %.not.i.i.i.i.i.2 = icmp eq i64 %i.k, 3
  br i1 %.not.i.i.i.i.i.2, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph.i.i.i.i.i.2
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 40
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !132
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.k, 4
  br i1 %.not.i.i.i.i.i.3, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.4:                               ; preds = %.lr.ph.i.i.i.i.i.3
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 48
  store i64 %i.ah, ptr %i.al, align 8, !tbaa !132
  %.not.i.i.i.i.i.4 = icmp eq i64 %i.k, 5
  br i1 %.not.i.i.i.i.i.4, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.5

.lr.ph.i.i.i.i.i.5:                               ; preds = %.lr.ph.i.i.i.i.i.4
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 56
  store i64 %i.ah, ptr %i.am, align 8, !tbaa !132
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.5, %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.an = phi ptr [ %i.x, %middle.block ], [ %i.t, %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %.lr.ph.i.i.i.i.i.5 ], [ %i.t, %.lr.ph.i.i.i.i.i.4 ], [ %i.t, %.lr.ph.i.i.i.i.i.3 ], [ %i.t, %.lr.ph.i.i.i.i.i.2 ], [ %i.t, %.lr.ph.preheader.i.i.i.i.i ]
  %storemerge.i = trunc i64 %i.k to i32
  store i32 %storemerge.i, ptr %i.u, align 8, !tbaa !52
  %i.ao = and i64 %i.k, 4294967295
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr %i.an, i64 %i.ao) #18
  %i.ap = load i64, ptr %18, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ar = load i64, ptr %i.aq, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !828)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %2, ptr %7, align 8, !noalias !828
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !828
  %i.as = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !128, !noalias !828
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !130, !noalias !828
  %i.aw = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  br i1 %i.aw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @_ZN4mlir5xegpu32extractVectorsWithShapeFromValueERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefIlEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.192") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr %5, ptr nonnull %2, ptr %3, i64 %4) #18
  br label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEE4packENS1_5ValueENS1_9TypeRangeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18, !noalias !828
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18, !noalias !828
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !82, !noalias !828 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.bc, align 1, !tbaa !159, !noalias !828
  %i.bd = load i8, ptr %i.ba, align 1, !tbaa !160, !noalias !828
  %.not.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i, label %_ZN4llvm5TwineC2EPKc.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.ba, ptr %9, align 8, !tbaa !160, !noalias !828
  br label %_ZN4llvm5TwineC2EPKc.exit.i

_ZN4llvm5TwineC2EPKc.exit.i:                      ; preds = %bb.f, %bb.e
  %storemerge.i.i = phi i8 [ 3, %bb.f ], [ 1, %bb.e ]
  store i8 %storemerge.i.i, ptr %i.bb, align 8, !tbaa !161, !noalias !828
  %i.be = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(34) %9) #18, !noalias !828
  %i.bf = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) #18, !noalias !828
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %i.be, ptr %i.bf) #18, !noalias !828
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18, !noalias !828
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18, !noalias !828
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18, !noalias !828
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !84, !noalias !828 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.bj, align 1, !tbaa !159, !noalias !828
  %i.bk = load i8, ptr %i.bh, align 1, !tbaa !160, !noalias !828
  %.not.i27.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i27.i, label %_ZN4llvm5TwineC2EPKc.exit29.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit.i
  store ptr %i.bh, ptr %11, align 8, !tbaa !160, !noalias !828
  br label %_ZN4llvm5TwineC2EPKc.exit29.i

_ZN4llvm5TwineC2EPKc.exit29.i:                    ; preds = %bb.g, %_ZN4llvm5TwineC2EPKc.exit.i
  %storemerge.i28.i = phi i8 [ 3, %bb.g ], [ 1, %_ZN4llvm5TwineC2EPKc.exit.i ]
  store i8 %storemerge.i28.i, ptr %i.bi, align 8, !tbaa !161, !noalias !828
  %i.bl = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(34) %11) #18, !noalias !828
  %i.bm = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr %3, i64 %4) #18, !noalias !828
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.bl, ptr %i.bm) #18, !noalias !828
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18, !noalias !828
  %i.bn = ptrtoint ptr %7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18, !noalias !828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !163, !noalias !828
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !163, !noalias !828
  store ptr %13, ptr %12, align 8, !tbaa !166, !noalias !828
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 2, ptr %i.bp, align 8, !tbaa !167, !noalias !828
  %i.bq = call ptr @_ZN4mlir26UnrealizedConversionCastOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr %5, i64 %i.ap, i64 %i.ar, i64 %i.bn, i64 1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.257") align 8 %12) #18, !noalias !828 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18, !noalias !828
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 36
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !206, !noalias !828 ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bq, i64 -16
  %i.bu = zext i32 %i.bs to i64                   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bv, ptr %0, align 8, !tbaa !112, !alias.scope !829
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.bw, align 8, !tbaa !52, !alias.scope !829
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.bx, align 4, !tbaa !53, !alias.scope !829
  %i.by = icmp ugt i32 %i.bs, 6
  br i1 %i.by, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i: ; preds = %_ZN4llvm5TwineC2EPKc.exit29.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.bv, i64 noundef %i.bu, i64 noundef 8) #18
  %.pre.i.i.i.i = load i32, ptr %i.bw, align 8, !tbaa !52, !alias.scope !829
  %.pre24.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !112, !alias.scope !829
  br label %.lr.ph.i.i.i.i.preheader.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i: ; preds = %_ZN4llvm5TwineC2EPKc.exit29.i
  %.not8.i.i.i.i.i.i.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i:                 ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i
  %i.bz = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i ], [ %i.bv, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i ]
  %.pre-phi.i.i3.i.i = phi i64 [ %.pre24.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.pre-phi.i.i3.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i
  %.010.i.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ca, %.lr.ph.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i.i.i = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %i.cb = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 noundef %.sroa.2.09.i.i.i.i.i.i.i.i) #18
  %i.cc = ptrtoint ptr %i.cb to i64
  store i64 %i.cc, ptr %.010.i.i.i.i.i.i.i.i, align 8, !tbaa !125
  %i.cd = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cd, %i.bu
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !3

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pre23.i.i.i.i = load i32, ptr %i.bw, align 8, !tbaa !52, !alias.scope !829
  br label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit.i

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i
  %i.cf = phi i32 [ %.pre23.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i ]
  %i.cg = add i32 %i.cf, %i.bs
  store i32 %i.cg, ptr %i.bw, align 8, !tbaa !52, !alias.scope !829
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18, !noalias !828
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !828
  br label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEE4packENS1_5ValueENS1_9TypeRangeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit

_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEE4packENS1_5ValueENS1_9TypeRangeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit: ; preds = %bb.d, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.ch = load ptr, ptr %17, align 8, !tbaa !112  ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.t
  br i1 %i.ci, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEE4packENS1_5ValueENS1_9TypeRangeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit
  call void @free(ptr noundef %i.ch) #18
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit: ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu8DpasMxOpEE4packENS1_5ValueENS1_9TypeRangeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit, %bb.b
  %i.cj = getelementptr inbounds nuw i8, ptr %15, i64 64 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !117, !range !119, !noundef !152
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.j, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.cj, align 8, !tbaa !117
  %i.cm = load ptr, ptr %15, align 8, !tbaa !112  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.cm) #18
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit: ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  ret void
}

declare ptr @_ZN4mlir5xegpu8DpasMxOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, i64, i64, ptr noundef byval(%"class.llvm::ArrayRef.257") align 8) local_unnamed_addr #2

declare i64 @_ZN4mlir5xegpu8DpasMxOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadMatrixOpEED2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) initializes((0, 8)) %0) unnamed_addr #9 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadMatrixOpEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.e = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef 3) #18, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %.not.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit2.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.i = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef 3) #18, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit2.i

_ZNSt14_Function_baseD2Ev.exit2.i:                ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %.not.i3.i = icmp eq ptr %i.k, null
  br i1 %.not.i3.i, label %_ZN4mlir5xegpu13UnrollOptionsD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i32 noundef 3) #18, !inline_history !0 ; 0 uses
  br label %_ZN4mlir5xegpu13UnrollOptionsD2Ev.exit

_ZN4mlir5xegpu13UnrollOptionsD2Ev.exit:           ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir5xegpu13UnrollOptionsD2Ev.exit
  tail call void @free(ptr noundef %i.n) #18
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.e, %_ZN4mlir5xegpu13UnrollOptionsD2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !112  ; 2 uses
end_hunk_6
begin_hunk_7_@_ZNK12_GLOBAL__N_118UnrollLoadMatrixOp15matchAndRewriteEN4mlir5xegpu12LoadMatrixOpERNS1_15PatternRewriterE:bb.a

.lr.ph:                                           ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %22, i64 16
  br label %bb.l

._crit_edge:                                      ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %21, i64 128
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !112 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %21, i64 144
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.bx) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i:        ; preds = %bb.f, %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %21, i64 64
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !112 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %21, i64 80
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i
  call void @free(ptr noundef %i.cb) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i:       ; preds = %bb.g, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i
  %i.ce = load ptr, ptr %21, align 8, !tbaa !112  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZN4mlir6detail23TileOffsetRangeIteratorIlED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i
  call void @free(ptr noundef %i.ce) #18
  br label %_ZN4mlir6detail23TileOffsetRangeIteratorIlED2Ev.exit

_ZN4mlir6detail23TileOffsetRangeIteratorIlED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  %i.ch = getelementptr inbounds nuw i8, ptr %20, i64 128
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !112 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %20, i64 144
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i29, label %bb.i

bb.i:                                             ; preds = %_ZN4mlir6detail23TileOffsetRangeIteratorIlED2Ev.exit
  call void @free(ptr noundef %i.ci) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i29

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i29:      ; preds = %bb.i, %_ZN4mlir6detail23TileOffsetRangeIteratorIlED2Ev.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !112 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %20, i64 80
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i30, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i29
  call void @free(ptr noundef %i.cm) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i30

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i30:     ; preds = %bb.j, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i29
  %i.cp = load ptr, ptr %20, align 8, !tbaa !112  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZN4mlir6detail23TileOffsetRangeIteratorIlED2Ev.exit31, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i30
  call void @free(ptr noundef %i.cp) #18
  br label %_ZN4mlir6detail23TileOffsetRangeIteratorIlED2Ev.exit31

_ZN4mlir6detail23TileOffsetRangeIteratorIlED2Ev.exit31: ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i30, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @_ZN4mlir21StaticTileOffsetRangeD2Ev(ptr noundef nonnull align 8 dead_on_return(616) dereferenceable(616) %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18
  %i.cs = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  store ptr %i.cs, ptr %26, align 8, !tbaa !112
  %i.ct = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 5 uses
  store i32 0, ptr %i.ct, align 8, !tbaa !52
  %i.cu = getelementptr inbounds nuw i8, ptr %26, i64 12 ; 2 uses
  store i32 6, ptr %i.cu, align 4, !tbaa !53
  %i.cv = load ptr, ptr %15, align 8, !tbaa !155
  %.not54 = icmp eq ptr %i.cv, null
  br i1 %.not54, label %bb.q, label %bb.p

bb.l:                                             ; preds = %.lr.ph, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit
  %i.cw = phi i64 [ %i.bn, %.lr.ph ], [ %i.dq, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  call void @_ZNK4mlir6detail19TileOffsetRangeImpl20getStaticTileOffsetsEl(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.186") align 8 %22, ptr noundef nonnull align 8 dereferenceable(208) %20, i64 noundef %i.cw) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  %i.cx = load ptr, ptr %17, align 8, !tbaa !112
  %i.cy = load i32, ptr %i.bp, align 8, !tbaa !52
  %i.cz = zext i32 %i.cy to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  %i.da = load ptr, ptr %12, align 8, !tbaa !120
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.db) #18
  %i.dd = load ptr, ptr %22, align 8, !tbaa !112
  %i.de = load i32, ptr %i.bq, align 8, !tbaa !52
  %i.df = zext i32 %i.de to i64
  call void @_ZN4mlir22getAsIndexOpFoldResultEPNS_11MLIRContextEN4llvm8ArrayRefIlEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.201") align 8 %25, ptr noundef %i.dc, ptr %i.dd, i64 %i.df) #18
  %i.dg = load ptr, ptr %25, align 8, !tbaa !112
  store ptr %i.dg, ptr %24, align 8, !tbaa !141
  %i.dh = load i32, ptr %i.bs, align 8, !tbaa !52
  %i.di = zext i32 %i.dh to i64
  store i64 %i.di, ptr %i.br, align 8, !tbaa !142
  call void @_ZN4mlir5xegpu14addElementwiseERNS_9OpBuilderENS_8LocationEN4llvm8ArrayRefINS_12OpFoldResultEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.201") align 8 %23, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr %.sroa.0.0.copyload.i.i, ptr %i.cx, i64 %i.cz, ptr noundef nonnull byval(%"class.llvm::ArrayRef.200") align 8 %24) #18
  %i.dj = load ptr, ptr %25, align 8, !tbaa !112  ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.bt
  br i1 %i.dk, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef %i.dj) #18
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(64) %23)
  %i.dl = load ptr, ptr %23, align 8, !tbaa !112  ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.bu
  br i1 %i.dm, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit32, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit
  call void @free(ptr noundef %i.dl) #18
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit32

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit32: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  %i.dn = load ptr, ptr %22, align 8, !tbaa !112  ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.bv
  br i1 %i.do, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit32
  call void @free(ptr noundef %i.dn) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit32, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  %i.dp = load i64, ptr %i.bg, align 8, !tbaa !151
  %i.dq = add nsw i64 %i.dp, 1                    ; 3 uses
  store i64 %i.dq, ptr %i.bg, align 8, !tbaa !151
  %i.dr = load i64, ptr %i.bk, align 8, !tbaa !151
  %.not53 = icmp eq i64 %i.dq, %i.dr
  br i1 %.not53, label %._crit_edge, label %bb.l

bb.p:                                             ; preds = %_ZN4mlir6detail23TileOffsetRangeIteratorIlED2Ev.exit31
  %i.ds = call { ptr, ptr } @_ZNK4mlir5xegpu20DistributeLayoutAttr12dropInstDataEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #18 ; 2 uses
  %i.dt = extractvalue { ptr, ptr } %i.ds, 0
  %i.du = extractvalue { ptr, ptr } %i.ds, 1
  store ptr %i.dt, ptr %15, align 8
  store ptr %i.du, ptr %i.ar, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN4mlir6detail23TileOffsetRangeIteratorIlED2Ev.exit31
  %i.dv = load ptr, ptr %18, align 8, !tbaa !112  ; 2 uses
  %i.dw = load i32, ptr %i.ba, align 8, !tbaa !52 ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %.idx = shl nuw nsw i64 %i.dx, 6
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx
  %.not2856 = icmp eq i32 %i.dw, 0
  br i1 %.not2856, label %._crit_edge61, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.q
  %i.dz = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.z

._crit_edge61:                                    ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit40, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  %i.ed = load ptr, ptr %26, align 8, !tbaa !112
  %i.ee = load i32, ptr %i.ct, align 8, !tbaa !52
  %i.ef = zext i32 %i.ee to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr %i.ed, i64 %i.ef) #18
  %i.eg = load ptr, ptr %12, align 8, !tbaa !120
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -8
  %.0.copyload.i.i.i.i.i.i33 = load i64, ptr %i.eh, align 8
  %i.ei = and i64 %.0.copyload.i.i.i.i.i.i33, -8
  %i.ej = inttoptr i64 %i.ei to ptr               ; 3 uses
  %i.ek = load ptr, ptr %14, align 8, !tbaa !112
  %i.el = load i32, ptr %i.z, align 8, !tbaa !52
  %i.em = zext i32 %i.el to i64
  %i.en = load i64, ptr %29, align 8              ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ep = load i64, ptr %i.eo, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.ej, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.eq = load ptr, ptr %i.ej, align 8, !tbaa !128
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.er, align 8, !tbaa !130
  %i.es = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE ; 2 uses
  %spec.select.i.i.i = select i1 %i.es, ptr %i.ej, ptr null
  store ptr %spec.select.i.i.i, ptr %4, align 8
  br i1 %i.es, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge61
  %i.et = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18 ; 2 uses
  %i.eu = extractvalue { ptr, i64 } %i.et, 0
  %i.ev = extractvalue { ptr, i64 } %i.et, 1
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ex = call ptr @_ZN4mlir5xegpu31createVectorWithShapeFromValuesERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ew, ptr %.sroa.0.0.copyload.i.i, i64 %i.en, i64 %i.ep, ptr %i.eu, i64 %i.ev) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadMatrixOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit

bb.s:                                             ; preds = %._crit_edge61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !88 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.fc, align 1, !tbaa !159
  %i.fd = load i8, ptr %i.fa, align 1, !tbaa !160
  %.not.i.i = icmp eq i8 %i.fd, 0
  br i1 %.not.i.i, label %_ZN4llvm5TwineC2EPKc.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.fa, ptr %6, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit.i

_ZN4llvm5TwineC2EPKc.exit.i:                      ; preds = %bb.t, %bb.s
  %storemerge.i.i = phi i8 [ 3, %bb.t ], [ 1, %bb.s ]
  store i8 %storemerge.i.i, ptr %i.fb, align 8, !tbaa !161
  %i.fe = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull align 8 dereferenceable(34) %6) #18
  %i.ff = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ey) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %i.fe, ptr %i.ff) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !89 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.fj, align 1, !tbaa !159
  %i.fk = load i8, ptr %i.fh, align 1, !tbaa !160
  %.not.i32.i = icmp eq i8 %i.fk, 0
  br i1 %.not.i32.i, label %_ZN4llvm5TwineC2EPKc.exit34.i, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit.i
  store ptr %i.fh, ptr %8, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit34.i

_ZN4llvm5TwineC2EPKc.exit34.i:                    ; preds = %bb.u, %_ZN4llvm5TwineC2EPKc.exit.i
  %storemerge.i33.i = phi i8 [ 3, %bb.u ], [ 1, %_ZN4llvm5TwineC2EPKc.exit.i ]
  store i8 %storemerge.i33.i, ptr %i.fi, align 8, !tbaa !161
  %i.fl = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull align 8 dereferenceable(34) %8) #18
  %i.fm = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr %i.ek, i64 %i.em) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %i.fl, ptr %i.fm) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull align 8 dereferenceable(8) %3, i64 1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !163
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !163
  store ptr %11, ptr %10, align 8, !tbaa !166
  %i.fo = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 2, ptr %i.fo, align 8, !tbaa !167
  %i.fp = load i64, ptr %9, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fr = load i64, ptr %i.fq, align 8
  %i.fs = call ptr @_ZN4mlir26UnrealizedConversionCastOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ey, ptr %.sroa.0.0.copyload.i.i, i64 %i.fp, i64 %i.fr, i64 %i.en, i64 %i.ep, ptr noundef nonnull byval(%"class.llvm::ArrayRef.257") align 8 %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadMatrixOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit

_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadMatrixOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit: ; preds = %bb.r, %_ZN4llvm5TwineC2EPKc.exit34.i
  %.sroa.030.1.i = phi ptr [ %i.ft, %_ZN4llvm5TwineC2EPKc.exit34.i ], [ %i.ex, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  store ptr %.sroa.030.1.i, ptr %28, align 8
  %i.fu = load ptr, ptr %12, align 8, !tbaa !120
  %i.fv = ptrtoint ptr %28 to i64
  %i.fw = load ptr, ptr %2, align 8, !tbaa !19
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.fu, i64 %i.fv, i64 1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  %i.fy = load ptr, ptr %26, align 8, !tbaa !112  ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.cs
  br i1 %i.fz, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadMatrixOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit
  call void @free(ptr noundef %i.fy) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit: ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadMatrixOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  %i.ga = load ptr, ptr %18, align 8, !tbaa !112  ; 3 uses
  %i.gb = load i32, ptr %i.ba, align 8, !tbaa !52 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.gb, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit
  %i.gc = zext i32 %i.gb to i64
  %.idx.i = shl nuw nsw i64 %i.gc, 6
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.ge, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i ], [ %i.gd, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %.05.i.i, i64 -64 ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !112 ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %.05.i.i, i64 -48
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i
  call void @free(ptr noundef %i.gf) #18
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i: ; preds = %bb.w, %.lr.ph.i.i
  %.not.i.i34 = icmp eq ptr %i.ga, %i.ge
  br i1 %.not.i.i34, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !4

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %18, align 8, !tbaa !112
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit
  %i.gi = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i ], [ %i.ga, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit ] ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.az
  br i1 %i.gj, label %_ZN4llvm11SmallVectorINS0_IN4mlir12OpFoldResultELj6EEELj1EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i
  call void @free(ptr noundef %i.gi) #18
  br label %_ZN4llvm11SmallVectorINS0_IN4mlir12OpFoldResultELj6EEELj1EED2Ev.exit

_ZN4llvm11SmallVectorINS0_IN4mlir12OpFoldResultELj6EEELj1EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.gk = load ptr, ptr %17, align 8, !tbaa !112  ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit35, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm11SmallVectorINS0_IN4mlir12OpFoldResultELj6EEELj1EED2Ev.exit
  call void @free(ptr noundef %i.gk) #18
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit35

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit35: ; preds = %_ZN4llvm11SmallVectorINS0_IN4mlir12OpFoldResultELj6EEELj1EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.ae

bb.z:                                             ; preds = %.lr.ph60, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit40
  %.057 = phi ptr [ %i.dv, %.lr.ph60 ], [ %i.ht, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit40 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  store ptr %i.dz, ptr %27, align 8, !tbaa !112
  store i32 0, ptr %i.ea, align 8, !tbaa !52
  store i32 6, ptr %i.eb, align 4, !tbaa !53
  %i.gn = getelementptr inbounds nuw i8, ptr %.057, i64 8 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !52 ; 5 uses
  %.not.i.i36 = icmp eq i32 %i.go, 0
  %i.gp = icmp eq ptr %27, %.057
  %or.cond.i = or i1 %i.gp, %.not.i.i36
  br i1 %or.cond.i, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2ERKS3_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gq = icmp ugt i32 %i.go, 6
  br i1 %i.gq, label %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i, label %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i

_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i: ; preds = %bb.aa
  %i.gr = zext i32 %i.go to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %27, ptr noundef nonnull %i.dz, i64 noundef %i.gr, i64 noundef 8) #18
  %.pre.i37 = load i32, ptr %i.gn, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i38 = icmp eq i32 %.pre.i37, 0
  br i1 %.not.i.i.i38, label %.sink.split.i.i, label %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge

_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i
  %.pre62 = load ptr, ptr %27, align 8, !tbaa !112
  br label %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i

_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i: ; preds = %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge, %bb.aa
  %i.gs = phi ptr [ %.pre62, %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge ], [ %i.dz, %bb.aa ]
  %i.gt = phi i32 [ %.pre.i37, %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge ], [ %i.go, %bb.aa ]
  %i.gu = zext i32 %i.gt to i64
  %i.gv = load ptr, ptr %.057, align 8, !tbaa !112
  %gepdiff.i.i = shl nuw nsw i64 %i.gu, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gs, ptr align 8 %i.gv, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i, %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i
  store i32 %i.go, ptr %i.ea, align 8, !tbaa !52
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2ERKS3_.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2ERKS3_.exit: ; preds = %bb.z, %.sink.split.i.i
  %i.gw = load ptr, ptr %12, align 8, !tbaa !120
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %.sroa.0.0.copyload.i.i39 = load ptr, ptr %i.gx, align 8
  %i.gy = call i64 @_ZN4mlir5xegpu12LoadMatrixOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 0) #18
  %i.gz = load ptr, ptr %12, align 8, !tbaa !120
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 72
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !123
  %i.hc = and i64 %i.gy, 4294967295
  %i.hd = getelementptr inbounds nuw [32 x i8], ptr %i.hb, i64 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.he, align 8, !tbaa !125
  %i.hf = load ptr, ptr %27, align 8, !tbaa !112
  %i.hg = load i32, ptr %i.ea, align 8, !tbaa !52
  %i.hh = zext i32 %i.hg to i64
  %i.hi = call ptr @_ZN4mlir5xegpu12LoadMatrixOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_6detail10TypedValueINS0_11MemDescTypeEEEN4llvm8ArrayRefINS_12OpFoldResultEEENS0_20DistributeLayoutAttrE(ptr noundef nonnull align 8 dereferenceable(32) %i.ec, ptr %.sroa.0.0.copyload.i.i39, ptr %i.ay, ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.hf, i64 %i.hh, ptr noundef nonnull byval(%"class.mlir::xegpu::DistributeLayoutAttr") align 8 %15) #18
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -16 ; 2 uses
  %i.hk = load i32, ptr %i.ct, align 8, !tbaa !52 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZNK12_GLOBAL__N_119UnrollStoreMatrixOp15matchAndRewriteEN4mlir5xegpu13StoreMatrixOpERNS1_15PatternRewriterE:bb.a
  br i1 %.not.i.i8.i, label %bb.c, label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu13StoreMatrixOpEE14getTargetShapeEPNS1_9OperationE.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZSt25__throw_bad_function_callv() #19, !noalias !877
  unreachable

_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu13StoreMatrixOpEE14getTargetShapeEPNS1_9OperationE.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !118, !noalias !877
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #18, !inline_history !854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !876
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %13, i64 64
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !117, !range !119
  %i.q = trunc nuw i8 %.pre to i1
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.ag

bb.d:                                             ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu13StoreMatrixOpEE14getTargetShapeEPNS1_9OperationE.exit
  %i.s = load ptr, ptr %12, align 8, !tbaa !120
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.t, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.u = call i64 @_ZN4mlir5xegpu13StoreMatrixOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 0) #18
  %i.v = load ptr, ptr %12, align 8, !tbaa !120
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !123
  %i.y = and i64 %i.u, 4294967295
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !125
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ab, align 8
  %i.ac = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !128
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !130
  %i.ag = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  %spec.select.i.i = select i1 %i.ag, ptr %i.ad, ptr null
  store ptr %spec.select.i.i, ptr %14, align 8
  %i.ah = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #18 ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0
  %i.aj = extractvalue { ptr, i64 } %i.ah, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.ak = load ptr, ptr %12, align 8, !tbaa !120  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.am, 16777215
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.an = lshr i32 %i.am, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.an, 1
  %i.ao = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.ar = call { ptr, ptr } @_ZN4llvm19dyn_cast_if_presentIN4mlir5xegpu20DistributeLayoutAttrES3_EEDaRT0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0      ; 2 uses
  store ptr %i.as, ptr %15, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.au = extractvalue { ptr, ptr } %i.ar, 1
  store ptr %i.au, ptr %i.at, align 8
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = call { ptr, ptr } @_ZNK4mlir5xegpu20DistributeLayoutAttr12dropInstDataEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #18 ; 2 uses
  %i.aw = extractvalue { ptr, ptr } %i.av, 0
  %i.ax = extractvalue { ptr, ptr } %i.av, 1
  store ptr %i.aw, ptr %15, align 8
  store ptr %i.ax, ptr %i.at, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %.sroa.013.0.copyload = load ptr, ptr %14, align 8 ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %.sroa.013.0.copyload, null
  br i1 %.not.i.i.i25, label %_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %.sroa.013.0.copyload, align 8, !tbaa !128 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.h, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, !prof !133

bb.h:                                             ; preds = %bb.g
  %i.bc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.11, i64 49), i64 16) #18
  store ptr %i.bd, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !130 ; 2 uses
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !112 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bh, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.be, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bi = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i, 1   ; 3 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i, i64 %i.bi ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !130
  %i.bk = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bm = xor i64 %i.bi, -1
  %i.bn = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i, %i.bm
  %.112.i.i.i.i.i.i.i.i.i.i = select i1 %i.bk, ptr %i.bl, ptr %.01116.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i = select i1 %i.bk, i64 %i.bn, i64 %i.bi ; 2 uses
  %i.bo = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bo, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, !llvm.loop !1

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %i.bh, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.be, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %.pre-phi.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, %i.bp
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i
  %i.bq = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !135
  %i.br = icmp eq ptr %i.bq, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.br, label %bb.k, label %_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !137
  br label %_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit

_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit: ; preds = %bb.f, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, %bb.j, %bb.k
  %i.bu = phi ptr [ null, %bb.f ], [ %i.bt, %bb.k ], [ null, %bb.j ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i ]
  %i.bv = load ptr, ptr %13, align 8, !tbaa !112
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !52
  %i.by = zext i32 %i.bx to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !878
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !878
  store ptr %.sroa.013.0.copyload, ptr %10, align 8, !noalias !879
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.bu, ptr %i.bz, align 8, !noalias !879
  store ptr %i.bv, ptr %11, align 8, !noalias !879
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.by, ptr %i.ca, align 8, !noalias !879
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !49, !noalias !879
  %.not.i.i.i26 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i26, label %bb.l, label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu13StoreMatrixOpEE16getUnrolledTypesENS1_10ShapedTypeEN4llvm8ArrayRefIlEE.exit

bb.l:                                             ; preds = %_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit
  call void @_ZSt25__throw_bad_function_callv() #19, !noalias !879
  unreachable

_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu13StoreMatrixOpEE16getUnrolledTypesENS1_10ShapedTypeEN4llvm8ArrayRefIlEE.exit: ; preds = %_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !138, !noalias !879
  call void %i.cf(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.197") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11) #18, !inline_history !859
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !878
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !878
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.cg = call i64 @_ZN4mlir5xegpu13StoreMatrixOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 0) #18
  %i.ch = load ptr, ptr %12, align 8, !tbaa !120
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !123
  %i.ck = and i64 %i.cg, 4294967295
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %.sroa.0.0.copyload.i.i.i.i28 = load ptr, ptr %i.cm, align 8, !tbaa !125 ; 3 uses
  %i.cn = load ptr, ptr %16, align 8, !tbaa !112
  %i.co = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !52
  %i.cq = zext i32 %i.cp to i64
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr %i.cn, i64 %i.cq) #18
  %i.cr = load ptr, ptr %13, align 8, !tbaa !112  ; 2 uses
  %i.cs = load i32, ptr %i.bw, align 8, !tbaa !52
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = load i64, ptr %18, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.cw = load i64, ptr %i.cv, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !880)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %.sroa.0.0.copyload.i.i.i.i28, ptr %3, align 8, !noalias !880
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i28, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.cx, align 8, !noalias !880
  %i.cy = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !128, !noalias !880
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.db, align 8, !tbaa !130, !noalias !880
  %i.dc = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  br i1 %i.dc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu13StoreMatrixOpEE16getUnrolledTypesENS1_10ShapedTypeEN4llvm8ArrayRefIlEE.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir5xegpu32extractVectorsWithShapeFromValueERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefIlEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.192") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %i.dd, ptr %.sroa.0.0.copyload.i.i, ptr nonnull %.sroa.0.0.copyload.i.i.i.i28, ptr %i.cr, i64 %i.ct) #18
  br label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu13StoreMatrixOpEE4packENS1_5ValueENS1_9TypeRangeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit

bb.n:                                             ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu13StoreMatrixOpEE16getUnrolledTypesENS1_10ShapedTypeEN4llvm8ArrayRefIlEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !880
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !880
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !93, !noalias !880 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.di, align 1, !tbaa !159, !noalias !880
  %i.dj = load i8, ptr %i.dg, align 1, !tbaa !160, !noalias !880
  %.not.i.i = icmp eq i8 %i.dj, 0
  br i1 %.not.i.i, label %_ZN4llvm5TwineC2EPKc.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.dg, ptr %5, align 8, !tbaa !160, !noalias !880
  br label %_ZN4llvm5TwineC2EPKc.exit.i

_ZN4llvm5TwineC2EPKc.exit.i:                      ; preds = %bb.o, %bb.n
  %storemerge.i.i = phi i8 [ 3, %bb.o ], [ 1, %bb.n ]
  store i8 %storemerge.i.i, ptr %i.dh, align 8, !tbaa !161, !noalias !880
  %i.dk = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull align 8 dereferenceable(34) %5) #18, !noalias !880
  %i.dl = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.de) #18, !noalias !880
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %i.dk, ptr %i.dl) #18, !noalias !880
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !880
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !880
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18, !noalias !880
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !94, !noalias !880 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.dp, align 1, !tbaa !159, !noalias !880
  %i.dq = load i8, ptr %i.dn, align 1, !tbaa !160, !noalias !880
  %.not.i27.i = icmp eq i8 %i.dq, 0
  br i1 %.not.i27.i, label %_ZN4llvm5TwineC2EPKc.exit29.i, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit.i
  store ptr %i.dn, ptr %7, align 8, !tbaa !160, !noalias !880
  br label %_ZN4llvm5TwineC2EPKc.exit29.i

_ZN4llvm5TwineC2EPKc.exit29.i:                    ; preds = %bb.p, %_ZN4llvm5TwineC2EPKc.exit.i
  %storemerge.i28.i = phi i8 [ 3, %bb.p ], [ 1, %_ZN4llvm5TwineC2EPKc.exit.i ]
  store i8 %storemerge.i28.i, ptr %i.do, align 8, !tbaa !161, !noalias !880
  %i.dr = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull align 8 dereferenceable(34) %7) #18, !noalias !880
  %i.ds = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr %i.cr, i64 %i.ct) #18, !noalias !880
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.dr, ptr %i.ds) #18, !noalias !880
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !880
  %i.dt = ptrtoint ptr %3 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18, !noalias !880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !163, !noalias !880
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !163, !noalias !880
  store ptr %9, ptr %8, align 8, !tbaa !166, !noalias !880
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 2, ptr %i.dv, align 8, !tbaa !167, !noalias !880
  %i.dw = call ptr @_ZN4mlir26UnrealizedConversionCastOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.de, ptr %.sroa.0.0.copyload.i.i, i64 %i.cu, i64 %i.cw, i64 %i.dt, i64 1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.257") align 8 %8) #18, !noalias !880 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18, !noalias !880
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 36
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !206, !noalias !880 ; 4 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dw, i64 -16
  %i.ea = zext i32 %i.dy to i64                   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr %i.eb, ptr %17, align 8, !tbaa !112, !alias.scope !881
  %i.ec = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  store i32 0, ptr %i.ec, align 8, !tbaa !52, !alias.scope !881
  %i.ed = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 6, ptr %i.ed, align 4, !tbaa !53, !alias.scope !881
  %i.ee = icmp ugt i32 %i.dy, 6
  br i1 %i.ee, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i: ; preds = %_ZN4llvm5TwineC2EPKc.exit29.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %17, ptr noundef nonnull %i.eb, i64 noundef %i.ea, i64 noundef 8) #18
  %.pre.i.i.i.i = load i32, ptr %i.ec, align 8, !tbaa !52, !alias.scope !881
  %.pre24.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  %.pre.i = load ptr, ptr %17, align 8, !tbaa !112, !alias.scope !881
  br label %.lr.ph.i.i.i.i.preheader.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i: ; preds = %_ZN4llvm5TwineC2EPKc.exit29.i
  %.not8.i.i.i.i.i.i.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i:                 ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i
  %i.ef = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i ], [ %i.eb, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i ]
  %.pre-phi.i.i3.i.i = phi i64 [ %.pre24.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i ]
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.pre-phi.i.i3.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i
  %.010.i.i.i.i.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.eg, %.lr.ph.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i.i.i = phi i64 [ %i.ej, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %i.eh = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 noundef %.sroa.2.09.i.i.i.i.i.i.i.i) #18
  %i.ei = ptrtoint ptr %i.eh to i64
  store i64 %i.ei, ptr %.010.i.i.i.i.i.i.i.i, align 8, !tbaa !125
  %i.ej = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i.i29 = icmp eq i64 %i.ej, %i.ea
  br i1 %.not.i.i.i.i.i.i.i.i29, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !3

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pre23.i.i.i.i = load i32, ptr %i.ec, align 8, !tbaa !52, !alias.scope !881
  br label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit.i

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i
  %i.el = phi i32 [ %.pre23.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i ]
  %i.em = add i32 %i.el, %i.dy
  store i32 %i.em, ptr %i.ec, align 8, !tbaa !52, !alias.scope !881
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !880
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !880
  br label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu13StoreMatrixOpEE4packENS1_5ValueENS1_9TypeRangeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit

_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu13StoreMatrixOpEE4packENS1_5ValueENS1_9TypeRangeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit: ; preds = %bb.m, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  call void @_ZN4mlir5xegpu13StoreMatrixOp15getMixedOffsetsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.201") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.en = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  store ptr %i.en, ptr %20, align 8, !tbaa !112
  %i.eo = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store i32 0, ptr %i.eo, align 8, !tbaa !52
  %i.ep = getelementptr inbounds nuw i8, ptr %20, i64 12
  store i32 1, ptr %i.ep, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  %i.eq = load ptr, ptr %13, align 8, !tbaa !112
  %i.er = load i32, ptr %i.bw, align 8, !tbaa !52
  %i.es = zext i32 %i.er to i64
  call void @_ZN4mlir21StaticTileOffsetRangeC2EN4llvm8ArrayRefIlEES3_(ptr noundef nonnull align 8 dereferenceable(616) %21, ptr %i.ai, i64 %i.aj, ptr %i.eq, i64 %i.es)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %i.et = getelementptr inbounds nuw i8, ptr %21, i64 200
  call void @_ZN4mlir6detail19TileOffsetRangeImplC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 8 dereferenceable(208) %i.et)
  %i.eu = getelementptr inbounds nuw i8, ptr %22, i64 200 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %21, i64 400
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !151, !noalias !882
  store i64 %i.ew, ptr %i.eu, align 8, !tbaa !151, !alias.scope !882
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !883)
  %i.ex = getelementptr inbounds nuw i8, ptr %21, i64 408
  call void @_ZN4mlir6detail19TileOffsetRangeImplC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 8 dereferenceable(208) %i.ex)
  %i.ey = getelementptr inbounds nuw i8, ptr %23, i64 200 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %21, i64 608
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !151, !noalias !883 ; 2 uses
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !151, !alias.scope !883
  %i.fb = load i64, ptr %i.eu, align 8, !tbaa !151 ; 2 uses
  %.not6264 = icmp eq i64 %i.fb, %i.fa
  br i1 %.not6264, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu13StoreMatrixOpEE4packENS1_5ValueENS1_9TypeRangeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %24, i64 16
  br label %bb.w

._crit_edge:                                      ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu13StoreMatrixOpEE4packENS1_5ValueENS1_9TypeRangeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !112 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %23, i64 144
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.fl) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i:        ; preds = %bb.q, %._crit_edge
  %i.fo = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !112 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %23, i64 80
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i
  call void @free(ptr noundef %i.fp) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i:       ; preds = %bb.r, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i
  %i.fs = load ptr, ptr %23, align 8, !tbaa !112  ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZN4mlir6detail23TileOffsetRangeIteratorIlED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i
  call void @free(ptr noundef %i.fs) #18
  br label %_ZN4mlir6detail23TileOffsetRangeIteratorIlED2Ev.exit

_ZN4mlir6detail23TileOffsetRangeIteratorIlED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  %i.fv = getelementptr inbounds nuw i8, ptr %22, i64 128
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !112 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %22, i64 144
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i30, label %bb.t

bb.t:                                             ; preds = %_ZN4mlir6detail23TileOffsetRangeIteratorIlED2Ev.exit
  call void @free(ptr noundef %i.fw) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i30

end_hunk_8
begin_hunk_9_@_ZNK12_GLOBAL__N_118UnrollLoadGatherOp15matchAndRewriteEN4mlir5xegpu12LoadGatherOpERNS1_15PatternRewriterE:bb.a
  %i.km = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i.i.i.i.i.i173 = icmp eq i32 %i.km, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i173, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i157, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kn = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.11, i64 49), i64 16) #18
  store ptr %i.kn, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i157

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i157: ; preds = %bb.as, %bb.ar, %bb.aq
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i158 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !130 ; 2 uses
  %i.ko = load ptr, ptr %i.kj, align 8, !tbaa !112 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i.i.i.i159 = icmp eq i32 %i.kq, 0
  br i1 %.not.i.i.i.i.i.i.i.i159, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i169, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i160

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i160: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i157
  %i.kr = zext i32 %i.kq to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i161

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i161: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i161, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i160
  %.017.i.i.i.i.i.i.i.i.i.i162 = phi i64 [ %i.kr, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i160 ], [ %.1.i.i.i.i.i.i.i.i.i.i168, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i161 ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i163 = phi ptr [ %i.ko, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i160 ], [ %.112.i.i.i.i.i.i.i.i.i.i167, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i161 ] ; 2 uses
  %i.ks = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i162, 1 ; 3 uses
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i163, i64 %i.ks ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i166 = load ptr, ptr %i.kt, align 8, !tbaa !130
  %i.ku = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i166, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i158 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.kw = xor i64 %i.ks, -1
  %i.kx = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i162, %i.kw
  %.112.i.i.i.i.i.i.i.i.i.i167 = select i1 %i.ku, ptr %i.kv, ptr %.01116.i.i.i.i.i.i.i.i.i.i163 ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i168 = select i1 %i.ku, i64 %i.kx, i64 %i.ks ; 2 uses
  %i.ky = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i168, 0
  br i1 %i.ky, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i161, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i169, !llvm.loop !1

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i169: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i161, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i157
  %.pre-phi.i.i.i.i.i.i.i170 = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i157 ], [ %i.kr, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i161 ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i171 = phi ptr [ %i.ko, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i157 ], [ %.112.i.i.i.i.i.i.i.i.i.i167, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i161 ] ; 3 uses
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %i.ko, i64 %.pre-phi.i.i.i.i.i.i.i170
  %.not.i.i.i.i.i.i.i172 = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i171, %i.kz
  br i1 %.not.i.i.i.i.i.i.i172, label %_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit174, label %bb.at

bb.at:                                            ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i169
  %i.la = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i171, align 8, !tbaa !135
  %i.lb = icmp eq ptr %i.la, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i158
  br i1 %i.lb, label %bb.au, label %_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit174

bb.au:                                            ; preds = %bb.at
  %i.lc = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i171, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !137
  br label %_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit174

_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit174: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit154, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i169, %bb.at, %bb.au
  %i.le = phi ptr [ null, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit154 ], [ %i.ld, %bb.au ], [ null, %bb.at ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i169 ]
  %i.lf = load ptr, ptr %21, align 8, !tbaa !112
  %i.lg = load i32, ptr %i.ah, align 8, !tbaa !52
  %i.lh = zext i32 %i.lg to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !940
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !940
  store ptr %spec.select.i.i101, ptr %12, align 8, !noalias !941
  %i.li = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.le, ptr %i.li, align 8, !noalias !941
  store ptr %i.lf, ptr %13, align 8, !noalias !941
  %i.lj = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.lh, ptr %i.lj, align 8, !noalias !941
  %i.lk = load ptr, ptr %i.jm, align 8, !tbaa !49, !noalias !941
  %.not.i.i.i175 = icmp eq ptr %i.lk, null
  br i1 %.not.i.i.i175, label %bb.av, label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadGatherOpEE16getUnrolledTypesENS1_10ShapedTypeEN4llvm8ArrayRefIlEE.exit176

bb.av:                                            ; preds = %_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit174
  call void @_ZSt25__throw_bad_function_callv() #19, !noalias !941
  unreachable

_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadGatherOpEE16getUnrolledTypesENS1_10ShapedTypeEN4llvm8ArrayRefIlEE.exit176: ; preds = %_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit174
  %i.ll = load ptr, ptr %i.jp, align 8, !tbaa !138, !noalias !941
  call void %i.ll(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.197") align 8 %37, ptr noundef nonnull align 8 dereferenceable(32) %i.jo, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13) #18, !inline_history !898
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !940
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !940
  %i.lm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir4TypeEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(64) %26, ptr noundef nonnull align 8 dereferenceable(64) %37) ; 0 uses
  %i.ln = load ptr, ptr %37, align 8, !tbaa !112  ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.lp = icmp eq ptr %i.ln, %i.lo
  br i1 %i.lp, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit177, label %bb.aw

bb.aw:                                            ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadGatherOpEE16getUnrolledTypesENS1_10ShapedTypeEN4llvm8ArrayRefIlEE.exit176
  call void @free(ptr noundef %i.ln) #18
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit177

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit177: ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadGatherOpEE16getUnrolledTypesENS1_10ShapedTypeEN4llvm8ArrayRefIlEE.exit176, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #18
  %i.lq = load ptr, ptr %26, align 8, !tbaa !112
  %i.lr = load i32, ptr %i.by, align 8, !tbaa !52
  %i.ls = zext i32 %i.lr to i64
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %39, ptr %i.lq, i64 %i.ls) #18
  %i.lt = load ptr, ptr %21, align 8, !tbaa !112
  %i.lu = load i32, ptr %i.ah, align 8, !tbaa !52
  %i.lv = zext i32 %i.lu to i64
  %i.lw = load i64, ptr %39, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.ly = load i64, ptr %i.lx, align 8
  call fastcc void @_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadGatherOpEE4packENS1_5ValueENS1_9TypeRangeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE(ptr dead_on_unwind noalias writable align 8 %38, ptr noundef nonnull align 8 dereferenceable(216) %0, ptr nonnull %.sroa.0.0.copyload.i.i.i.i, i64 %i.lw, i64 %i.ly, ptr %i.lt, i64 %i.lv, ptr %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.lz = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir5ValueEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(64) %27, ptr noundef nonnull align 8 dereferenceable(64) %38) ; 0 uses
  %i.ma = load ptr, ptr %38, align 8, !tbaa !112  ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.mc = icmp eq ptr %i.ma, %i.mb
  br i1 %i.mc, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit178, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit177
  call void @free(ptr noundef %i.ma) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit178

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit178: ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit177, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit178, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit129
  %.2 = phi i64 [ %i.cl, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit129 ], [ %.1, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit178 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #18
  %i.md = load i32, ptr %i.j, align 4             ; 2 uses
  %.not.i.i.i179 = icmp ugt i32 %i.md, 16777215
  call void @llvm.assume(i1 %.not.i.i.i179)
  %i.me = lshr i32 %i.md, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.me, 1
  %i.mf = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.mg = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 104
  %i.mi = call { ptr, ptr } @_ZN4llvm19dyn_cast_if_presentIN4mlir5xegpu20DistributeLayoutAttrES3_EEDaRT0_(ptr noundef nonnull align 8 dereferenceable(16) %i.mh) ; 2 uses
  %i.mj = extractvalue { ptr, ptr } %i.mi, 0      ; 2 uses
  store ptr %i.mj, ptr %40, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.ml = extractvalue { ptr, ptr } %i.mi, 1
  store ptr %i.ml, ptr %i.mk, align 8
  %.not278 = icmp eq ptr %i.mj, null
  br i1 %.not278, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mm = call { ptr, ptr } @_ZNK4mlir5xegpu20DistributeLayoutAttr12dropInstDataEv(ptr noundef nonnull align 8 dereferenceable(16) %40) #18 ; 2 uses
  %i.mn = extractvalue { ptr, ptr } %i.mm, 0
  %i.mo = extractvalue { ptr, ptr } %i.mm, 1
  store ptr %i.mn, ptr %40, align 8
  store ptr %i.mo, ptr %i.mk, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #18
  %i.mp = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 3 uses
  store ptr %i.mp, ptr %41, align 8, !tbaa !112
  %i.mq = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 5 uses
  store i32 0, ptr %i.mq, align 8, !tbaa !52
  %i.mr = getelementptr inbounds nuw i8, ptr %41, i64 12 ; 2 uses
  store i32 6, ptr %i.mr, align 4, !tbaa !53
  %i.ms = load ptr, ptr %27, align 8, !tbaa !112, !noalias !942 ; 2 uses
  %i.mt = load ptr, ptr %25, align 8, !tbaa !112, !noalias !942 ; 2 uses
  %i.mu = load i32, ptr %i.cb, align 8, !tbaa !52, !noalias !943 ; 2 uses
  %i.mv = zext i32 %i.mu to i64
  %.idx296 = shl nuw nsw i64 %i.mv, 3
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 %.idx296
  %i.mx = load i32, ptr %i.bv, align 8, !tbaa !52, !noalias !943 ; 2 uses
  %i.my = zext i32 %i.mx to i64
  %.idx297 = shl nuw nsw i64 %i.my, 3
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mt, i64 %.idx297
  %i.na = icmp ne i32 %i.mu, 0
  %i.nb = icmp ne i32 %i.mx, 0
  %.not3.i180288 = select i1 %i.na, i1 %i.nb, i1 false
  br i1 %.not3.i180288, label %.lr.ph292, label %._crit_edge293

.lr.ph292:                                        ; preds = %bb.ba
  %i.nc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.bl

._crit_edge293.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit197
  %.pre301 = load ptr, ptr %41, align 8, !tbaa !112
  %.pre302 = load i32, ptr %i.mq, align 8, !tbaa !52
  %i.nd = zext i32 %.pre302 to i64
  br label %._crit_edge293

._crit_edge293:                                   ; preds = %._crit_edge293.loopexit, %bb.ba
  %i.ne = phi i64 [ %i.nd, %._crit_edge293.loopexit ], [ 0, %bb.ba ]
  %i.nf = phi ptr [ %.pre301, %._crit_edge293.loopexit ], [ %i.mp, %bb.ba ]
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #18
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr %i.nf, i64 %i.ne) #18
  %.0.copyload.i.i.i.i.i.i181 = load i64, ptr %i.d, align 8
  %i.ng = and i64 %.0.copyload.i.i.i.i.i.i181, -8
  %i.nh = inttoptr i64 %i.ng to ptr               ; 3 uses
  %i.ni = load ptr, ptr %21, align 8, !tbaa !112
  %i.nj = load i32, ptr %i.ah, align 8, !tbaa !52
  %i.nk = zext i32 %i.nj to i64
  %i.nl = load i64, ptr %43, align 8              ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.nn = load i64, ptr %i.nm, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.nh, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.no = load ptr, ptr %i.nh, align 8, !tbaa !128
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.np, align 8, !tbaa !130
  %i.nq = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE ; 2 uses
  %spec.select.i.i.i = select i1 %i.nq, ptr %i.nh, ptr null
  store ptr %spec.select.i.i.i, ptr %4, align 8
  br i1 %i.nq, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %._crit_edge293
  %i.nr = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18 ; 2 uses
  %i.ns = extractvalue { ptr, i64 } %i.nr, 0
  %i.nt = extractvalue { ptr, i64 } %i.nr, 1
  %i.nu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.nv = call ptr @_ZN4mlir5xegpu31createVectorWithShapeFromValuesERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(32) %i.nu, ptr %.sroa.0.0.copyload.i.i, i64 %i.nl, i64 %i.nn, ptr %i.ns, i64 %i.nt) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadGatherOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit

bb.bc:                                            ; preds = %._crit_edge293
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.nw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !99 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.oa = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.oa, align 1, !tbaa !159
  %i.ob = load i8, ptr %i.ny, align 1, !tbaa !160
  %.not.i.i182 = icmp eq i8 %i.ob, 0
  br i1 %.not.i.i182, label %_ZN4llvm5TwineC2EPKc.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store ptr %i.ny, ptr %6, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit.i

_ZN4llvm5TwineC2EPKc.exit.i:                      ; preds = %bb.bd, %bb.bc
  %storemerge.i.i = phi i8 [ 3, %bb.bd ], [ 1, %bb.bc ]
  store i8 %storemerge.i.i, ptr %i.nz, align 8, !tbaa !161
  %i.oc = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.nw, ptr noundef nonnull align 8 dereferenceable(34) %6) #18
  %i.od = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nw) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %i.oc, ptr %i.od) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !100 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.oh = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.oh, align 1, !tbaa !159
  %i.oi = load i8, ptr %i.of, align 1, !tbaa !160
  %.not.i32.i = icmp eq i8 %i.oi, 0
  br i1 %.not.i32.i, label %_ZN4llvm5TwineC2EPKc.exit34.i, label %bb.be

bb.be:                                            ; preds = %_ZN4llvm5TwineC2EPKc.exit.i
  store ptr %i.of, ptr %8, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit34.i

_ZN4llvm5TwineC2EPKc.exit34.i:                    ; preds = %bb.be, %_ZN4llvm5TwineC2EPKc.exit.i
  %storemerge.i33.i = phi i8 [ 3, %bb.be ], [ 1, %_ZN4llvm5TwineC2EPKc.exit.i ]
  store i8 %storemerge.i33.i, ptr %i.og, align 8, !tbaa !161
  %i.oj = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.nw, ptr noundef nonnull align 8 dereferenceable(34) %8) #18
  %i.ok = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %i.nw, ptr %i.ni, i64 %i.nk) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %i.oj, ptr %i.ok) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull align 8 dereferenceable(8) %3, i64 1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !163
  %i.ol = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ol, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !163
  store ptr %11, ptr %10, align 8, !tbaa !166
  %i.om = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 2, ptr %i.om, align 8, !tbaa !167
  %i.on = load i64, ptr %9, align 8
  %i.oo = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.op = load i64, ptr %i.oo, align 8
  %i.oq = call ptr @_ZN4mlir26UnrealizedConversionCastOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.nw, ptr %.sroa.0.0.copyload.i.i, i64 %i.on, i64 %i.op, i64 %i.nl, i64 %i.nn, ptr noundef nonnull byval(%"class.llvm::ArrayRef.257") align 8 %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.or = getelementptr inbounds i8, ptr %i.oq, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadGatherOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit

_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadGatherOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit: ; preds = %bb.bb, %_ZN4llvm5TwineC2EPKc.exit34.i
  %.sroa.030.1.i = phi ptr [ %i.or, %_ZN4llvm5TwineC2EPKc.exit34.i ], [ %i.nv, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  store ptr %.sroa.030.1.i, ptr %42, align 8
  %i.os = ptrtoint ptr %42 to i64
  %i.ot = load ptr, ptr %2, align 8, !tbaa !19
  %i.ou = load ptr, ptr %i.ot, align 8
  call void %i.ou(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %1, i64 %i.os, i64 1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  %i.ov = load ptr, ptr %41, align 8, !tbaa !112  ; 2 uses
  %i.ow = icmp eq ptr %i.ov, %i.mp
  br i1 %i.ow, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit183, label %bb.bf

bb.bf:                                            ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadGatherOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit
  call void @free(ptr noundef %i.ov) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit183

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit183: ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadGatherOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE.exit, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  %i.ox = load ptr, ptr %27, align 8, !tbaa !112  ; 2 uses
  %i.oy = icmp eq ptr %i.ox, %i.ca
  br i1 %i.oy, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit184, label %bb.bg

bb.bg:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit183
  call void @free(ptr noundef %i.ox) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit184

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit184: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit183, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  %i.oz = load ptr, ptr %26, align 8, !tbaa !112  ; 2 uses
  %i.pa = icmp eq ptr %i.oz, %i.bx
  br i1 %i.pa, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit185, label %bb.bh

bb.bh:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit184
  call void @free(ptr noundef %i.oz) #18
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit185

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit185: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit184, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  %i.pb = load ptr, ptr %25, align 8, !tbaa !112  ; 2 uses
  %i.pc = icmp eq ptr %i.pb, %i.bu
  br i1 %i.pc, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit186, label %bb.bi

bb.bi:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit185
  call void @free(ptr noundef %i.pb) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit186

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit186: ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit185, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  %i.pd = load ptr, ptr %24, align 8, !tbaa !112  ; 2 uses
  %i.pe = icmp eq ptr %i.pd, %i.br
  br i1 %i.pe, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit187, label %bb.bj

bb.bj:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit186
  call void @free(ptr noundef %i.pd) #18
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit187

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit187: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit186, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  %i.pf = load ptr, ptr %22, align 8, !tbaa !112  ; 2 uses
  %i.pg = icmp eq ptr %i.pf, %i.ae
  br i1 %i.pg, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit187
  call void @free(ptr noundef %i.pf) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit187, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %bb.bo

bb.bl:                                            ; preds = %.lr.ph292, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit197
  %.sroa.0205.0290 = phi ptr [ %i.mt, %.lr.ph292 ], [ %i.qi, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit197 ] ; 2 uses
  %.sroa.7.0289 = phi ptr [ %i.ms, %.lr.ph292 ], [ %i.qh, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit197 ] ; 2 uses
  %i.ph = load ptr, ptr %i.k, align 8, !tbaa !123
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %.sroa.0.0.copyload.i.i.i.i189 = load ptr, ptr %i.pi, align 8, !tbaa !125
  %.sroa.08.0.copyload = load ptr, ptr %.sroa.7.0289, align 8, !tbaa !125
  %.sroa.07.0.copyload = load ptr, ptr %.sroa.0205.0290, align 8, !tbaa !125
  %i.pj = call ptr @_ZN4mlir7Builder17getI64IntegerAttrEl(ptr noundef nonnull align 8 dereferenceable(8) %i.nc, i64 noundef %.2) #18
  %i.pk = load i32, ptr %i.j, align 4             ; 2 uses
  %.not.i.i.i190 = icmp ugt i32 %i.pk, 16777215
  call void @llvm.assume(i1 %.not.i.i.i190)
  %i.pl = lshr i32 %i.pk, 23
  %.lobit.i.i.i.i.i.i.i.i.i191 = and i32 %i.pl, 1
  %i.pm = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i191 to i64
  %i.pn = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.pm ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 80
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !155
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 88
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !155
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pn, i64 96
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !155
  %i.pu = ptrtoint ptr %i.pj to i64
  %i.pv = ptrtoint ptr %i.pp to i64
  %i.pw = ptrtoint ptr %i.pr to i64
  %i.px = ptrtoint ptr %i.pt to i64
  %i.py = call ptr @_ZN4mlir5xegpu12LoadGatherOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_S6_NS_11IntegerAttrENS0_15CachePolicyAttrES8_S8_NS0_20DistributeLayoutAttrES7_(ptr noundef nonnull align 8 dereferenceable(32) %i.nc, ptr %.sroa.0.0.copyload.i.i, ptr %i.bq, ptr %.sroa.0.0.copyload.i.i.i.i189, ptr %.sroa.08.0.copyload, ptr %.sroa.07.0.copyload, i64 %i.pu, i64 %i.pv, i64 %i.pw, i64 %i.px, ptr noundef nonnull byval(%"class.mlir::xegpu::DistributeLayoutAttr") align 8 %40, i64 0) #18
  %i.pz = getelementptr inbounds i8, ptr %i.py, i64 -16 ; 2 uses
  %i.qa = load i32, ptr %i.mq, align 8, !tbaa !52 ; 2 uses
  %i.qb = load i32, ptr %i.mr, align 4, !tbaa !53
  %.not.i196 = icmp ult i32 %i.qa, %i.qb
  br i1 %.not.i196, label %bb.bn, label %bb.bm, !prof !143

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %41, ptr nonnull %i.pz)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit197

bb.bn:                                            ; preds = %bb.bl
  %i.qc = zext i32 %i.qa to i64
  %i.qd = load ptr, ptr %41, align 8, !tbaa !112
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %i.qc
  store ptr %i.pz, ptr %i.qe, align 1
  %i.qf = load i32, ptr %i.mq, align 8, !tbaa !52
  %i.qg = add i32 %i.qf, 1
  store i32 %i.qg, ptr %i.mq, align 8, !tbaa !52
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit197

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit197: ; preds = %bb.bm, %bb.bn
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.7.0289, i64 8 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0205.0290, i64 8 ; 2 uses
  %i.qj = icmp ne ptr %i.qh, %i.mw
  %i.qk = icmp ne ptr %i.qi, %i.mz
  %.not3.i180 = select i1 %i.qj, i1 %i.qk, i1 false
  br i1 %.not3.i180, label %bb.bl, label %._crit_edge293.loopexit

bb.bo:                                            ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadGatherOpEE14getTargetShapeEPNS1_9OperationE.exit.thread, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadGatherOpEE14getTargetShapeEPNS1_9OperationE.exit, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit
  %i.ql = phi ptr [ %i.ad, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit ], [ %i.ad, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadGatherOpEE14getTargetShapeEPNS1_9OperationE.exit ], [ %i.w, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadGatherOpEE14getTargetShapeEPNS1_9OperationE.exit.thread ] ; 2 uses
  %.sroa.080.0 = phi i8 [ 1, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit ], [ 0, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadGatherOpEE14getTargetShapeEPNS1_9OperationE.exit ], [ 0, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadGatherOpEE14getTargetShapeEPNS1_9OperationE.exit.thread ]
  %i.qm = load i8, ptr %i.ql, align 8, !tbaa !117, !range !119, !noundef !152
  %i.qn = trunc nuw i8 %i.qm to i1
  br i1 %i.qn, label %bb.bp, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

bb.bp:                                            ; preds = %bb.bo
  store i8 0, ptr %i.ql, align 8, !tbaa !117
  %i.qo = load ptr, ptr %21, align 8, !tbaa !112  ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.qq = icmp eq ptr %i.qo, %i.qp
  br i1 %i.qq, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @free(ptr noundef %i.qo) #18
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit: ; preds = %bb.bo, %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  ret i8 %.sroa.080.0
}

; Function Attrs: cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadGatherOpEED0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @llvm.trap() #19
  unreachable
}

declare noundef i64 @_ZNK4mlir11IntegerAttr6getIntEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu12LoadGatherOpEE4packENS1_5ValueENS1_9TypeRangeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %1, ptr %2, i64 %3, i64 %4, ptr %.0.val, i64 %.8.val, ptr %5, ptr noundef nonnull align 8 dereferenceable(40) %6) unnamed_addr #1 align 2 {
bb.a:
  %7 = alloca %"class.mlir::Value", align 8       ; 2 uses
  %8 = alloca %"class.mlir::NamedAttribute", align 8 ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.mlir::NamedAttribute", align 8 ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::ArrayRef.257", align 8 ; 3 uses
  %13 = alloca [2 x %"class.mlir::NamedAttribute"], align 8 ; 5 uses
  store ptr %2, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !130
  %i.f = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  tail call void @_ZN4mlir5xegpu32extractVectorsWithShapeFromValueERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefIlEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.192") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr %5, ptr nonnull %2, ptr %.0.val, i64 %.8.val) #18
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !98   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.l, align 1, !tbaa !159
  %i.m = load i8, ptr %i.j, align 1, !tbaa !160
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %_ZN4llvm5TwineC2EPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.j, ptr %9, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %bb.c, %bb.d
  %storemerge.i = phi i8 [ 3, %bb.d ], [ 1, %bb.c ]
  store i8 %storemerge.i, ptr %i.k, align 8, !tbaa !161
  %i.n = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(34) %9) #18
  %i.o = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %i.n, ptr %i.o) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !100  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.s, align 1, !tbaa !159
  %i.t = load i8, ptr %i.q, align 1, !tbaa !160
  %.not.i27 = icmp eq i8 %i.t, 0
  br i1 %.not.i27, label %_ZN4llvm5TwineC2EPKc.exit29, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit
  store ptr %i.q, ptr %11, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit29

_ZN4llvm5TwineC2EPKc.exit29:                      ; preds = %_ZN4llvm5TwineC2EPKc.exit, %bb.e
  %storemerge.i28 = phi i8 [ 3, %bb.e ], [ 1, %_ZN4llvm5TwineC2EPKc.exit ]
  store i8 %storemerge.i28, ptr %i.r, align 8, !tbaa !161
  %i.u = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(34) %11) #18
  %i.v = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr %.0.val, i64 %.8.val) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.u, ptr %i.v) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.w = ptrtoint ptr %7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !163
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !163
  store ptr %13, ptr %12, align 8, !tbaa !166
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 2, ptr %i.y, align 8, !tbaa !167
  %i.z = call ptr @_ZN4mlir26UnrealizedConversionCastOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr %5, i64 %3, i64 %4, i64 %i.w, i64 1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.257") align 8 %12) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !206 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -16
  %i.ad = zext i32 %i.ab to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !112, !alias.scope !946
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.af, align 8, !tbaa !52, !alias.scope !946
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.ag, align 4, !tbaa !53, !alias.scope !946
  %i.ah = icmp ugt i32 %i.ab, 6
  br i1 %i.ah, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i: ; preds = %_ZN4llvm5TwineC2EPKc.exit29
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.ae, i64 noundef %i.ad, i64 noundef 8) #18
  %.pre.i.i.i = load i32, ptr %i.af, align 8, !tbaa !52, !alias.scope !946
  %.pre24.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre = load ptr, ptr %0, align 8, !tbaa !112, !alias.scope !946
  br label %.lr.ph.i.i.i.i.preheader.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i: ; preds = %_ZN4llvm5TwineC2EPKc.exit29
  %.not8.i.i.i.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not8.i.i.i.i.i.i.i, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i
  %i.ai = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ %i.ae, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre24.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.pre-phi.i.i3.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.010.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.ak = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef %.sroa.2.09.i.i.i.i.i.i.i) #18
  %i.al = ptrtoint ptr %i.ak to i64
  store i64 %i.al, ptr %.010.i.i.i.i.i.i.i, align 8, !tbaa !125
  %i.am = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.am, %i.ad
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre23.i.i.i = load i32, ptr %i.af, align 8, !tbaa !52, !alias.scope !946
  br label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i
  %i.ao = phi i32 [ %.pre23.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %i.ap = add i32 %i.ao, %i.ab
  store i32 %i.ap, ptr %i.af, align 8, !tbaa !52, !alias.scope !946
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit
  ret void
}

declare ptr @_ZN4mlir6vector11BroadcastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr) local_unnamed_addr #2

declare ptr @_ZN4mlir5arith6AddIOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_NS0_20IntegerOverflowFlagsE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN4mlir5xegpu12LoadGatherOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_S6_NS_11IntegerAttrENS0_15CachePolicyAttrES8_S8_NS0_20DistributeLayoutAttrES7_(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, ptr noundef byval(%"class.mlir::xegpu::DistributeLayoutAttr") align 8, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7Builder17getI64IntegerAttrEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64), ptr, i64) local_unnamed_addr #2

declare ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir4TypeEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !112    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !112    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE12assignRemoteEOS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #18
  %.pre = load ptr, ptr %1, align 8, !tbaa !112
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE12assignRemoteEOS3_.exit

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE12assignRemoteEOS3_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !112
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !173
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !173
  store ptr %i.c, ptr %1, align 8, !tbaa !112
  store i32 0, ptr %i.k, align 4, !tbaa !53
  store i32 0, ptr %i.j, align 8, !tbaa !52
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !52   ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !52   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !112    ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPN4mlir4TypeES2_ET0_T_S4_S3_.exit
    i32 1, label %bb.h
  ], !prof !174

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPN4mlir4TypeES2_ET0_T_S4_S3_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load i64, ptr %i.b, align 8, !tbaa !132
  store i64 %i.t, ptr %i.s, align 8, !tbaa !132
  br label %_ZSt4moveIPN4mlir4TypeES2_ET0_T_S4_S3_.exit

_ZSt4moveIPN4mlir4TypeES2_ET0_T_S4_S3_.exit:      ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !52
  store i32 0, ptr %i.m, align 8, !tbaa !52
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !53
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !52
end_hunk_9
begin_hunk_10_@_ZNK12_GLOBAL__N_120UnrollStoreScatterOp15matchAndRewriteEN4mlir5xegpu14StoreScatterOpERNS1_15PatternRewriterE:bb.a
  %i.oc = extractvalue { ptr, ptr } %i.ob, 0
  %i.od = extractvalue { ptr, ptr } %i.ob, 1
  store ptr %i.oc, ptr %35, align 8
  store ptr %i.od, ptr %i.nz, align 8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu14StoreScatterOpEE16getUnrolledTypesENS1_10ShapedTypeEN4llvm8ArrayRefIlEE.exit205
  %i.oe = load ptr, ptr %33, align 8, !tbaa !112, !noalias !1009 ; 2 uses
  %i.of = load ptr, ptr %19, align 8, !tbaa !112, !noalias !1009 ; 2 uses
  %i.og = load ptr, ptr %17, align 8, !tbaa !112, !noalias !1009 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !52, !noalias !1010 ; 2 uses
  %i.oj = zext i32 %i.oi to i64
  %.idx329 = shl nuw nsw i64 %i.oj, 3
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oe, i64 %.idx329
  %i.ol = load i32, ptr %i.bz, align 8, !tbaa !52, !noalias !1010 ; 2 uses
  %i.om = zext i32 %i.ol to i64
  %.idx330 = shl nuw nsw i64 %i.om, 3
  %i.on = getelementptr inbounds nuw i8, ptr %i.of, i64 %.idx330
  %i.oo = load i32, ptr %i.bt, align 8, !tbaa !52, !noalias !1010 ; 2 uses
  %i.op = zext i32 %i.oo to i64
  %.idx331 = shl nuw nsw i64 %i.op, 3
  %i.oq = getelementptr inbounds nuw i8, ptr %i.og, i64 %.idx331
  %i.or = icmp ne i32 %i.oi, 0
  %i.os = icmp ne i32 %i.ol, 0
  %or.cond.not310320 = select i1 %i.or, i1 %i.os, i1 false
  %i.ot = icmp ne i32 %i.oo, 0
  %or.cond305321 = select i1 %or.cond.not310320, i1 %i.ot, i1 false
  br i1 %or.cond305321, label %.lr.ph326, label %_ZNK4llvm20iterator_facade_baseINS_6detail12zip_shortestIJPN4mlir5ValueES5_S5_EEESt26bidirectional_iterator_tagSt5tupleIJRS4_S9_S9_EElPSA_SA_EneERKS6_.exit.thread

.lr.ph326:                                        ; preds = %bb.bg
  %i.ou = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.bo

_ZNK4llvm20iterator_facade_baseINS_6detail12zip_shortestIJPN4mlir5ValueES5_S5_EEESt26bidirectional_iterator_tagSt5tupleIJRS4_S9_S9_EElPSA_SA_EneERKS6_.exit.thread: ; preds = %bb.bo, %bb.bg
  %i.ov = load ptr, ptr %2, align 8, !tbaa !19
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %i.ox = load ptr, ptr %i.ow, align 8
  call void %i.ox(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  %i.oy = load ptr, ptr %33, align 8, !tbaa !112  ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.pa = icmp eq ptr %i.oy, %i.oz
  br i1 %i.pa, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit209, label %bb.bh

bb.bh:                                            ; preds = %_ZNK4llvm20iterator_facade_baseINS_6detail12zip_shortestIJPN4mlir5ValueES5_S5_EEESt26bidirectional_iterator_tagSt5tupleIJRS4_S9_S9_EElPSA_SA_EneERKS6_.exit.thread
  call void @free(ptr noundef %i.oy) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit209

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit209: ; preds = %_ZNK4llvm20iterator_facade_baseINS_6detail12zip_shortestIJPN4mlir5ValueES5_S5_EEESt26bidirectional_iterator_tagSt5tupleIJRS4_S9_S9_EElPSA_SA_EneERKS6_.exit.thread, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  %i.pb = load ptr, ptr %32, align 8, !tbaa !112  ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.pd = icmp eq ptr %i.pb, %i.pc
  br i1 %i.pd, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit210, label %bb.bi

bb.bi:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit209
  call void @free(ptr noundef %i.pb) #18
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit210

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit210: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit209, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  %i.pe = load ptr, ptr %19, align 8, !tbaa !112  ; 2 uses
  %i.pf = icmp eq ptr %i.pe, %i.by
  br i1 %i.pf, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit211, label %bb.bj

bb.bj:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit210
  call void @free(ptr noundef %i.pe) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit211

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit211: ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit210, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  %i.pg = load ptr, ptr %18, align 8, !tbaa !112  ; 2 uses
  %i.ph = icmp eq ptr %i.pg, %i.bv
  br i1 %i.ph, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit212, label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit211
  call void @free(ptr noundef %i.pg) #18
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit212

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit212: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit211, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.pi = load ptr, ptr %17, align 8, !tbaa !112  ; 2 uses
  %i.pj = icmp eq ptr %i.pi, %i.bs
  br i1 %i.pj, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit213, label %bb.bl

bb.bl:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit212
  call void @free(ptr noundef %i.pi) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit213

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit213: ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit212, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %i.pk = load ptr, ptr %16, align 8, !tbaa !112  ; 2 uses
  %i.pl = icmp eq ptr %i.pk, %i.bp
  br i1 %i.pl, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit214, label %bb.bm

bb.bm:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit213
  call void @free(ptr noundef %i.pk) #18
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit214

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit214: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit213, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.pm = load ptr, ptr %15, align 8, !tbaa !112  ; 2 uses
  %i.pn = icmp eq ptr %i.pm, %i.aq
  br i1 %i.pn, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit214
  call void @free(ptr noundef %i.pm) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit214, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.bp

bb.bo:                                            ; preds = %.lr.ph326, %bb.bo
  %.sroa.0227.0324 = phi ptr [ %i.og, %.lr.ph326 ], [ %i.qi, %bb.bo ] ; 2 uses
  %.sroa.7.0323 = phi ptr [ %i.of, %.lr.ph326 ], [ %i.qh, %bb.bo ] ; 2 uses
  %.sroa.12.0322 = phi ptr [ %i.oe, %.lr.ph326 ], [ %i.qg, %bb.bo ] ; 2 uses
  %.sroa.08.0.copyload = load ptr, ptr %.sroa.12.0322, align 8, !tbaa !125
  %i.po = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 56
  %.sroa.0.0.copyload.i.i.i.i216 = load ptr, ptr %i.pp, align 8, !tbaa !125
  %.sroa.06.0.copyload = load ptr, ptr %.sroa.7.0323, align 8, !tbaa !125
  %.sroa.05.0.copyload = load ptr, ptr %.sroa.0227.0324, align 8, !tbaa !125
  %i.pq = call ptr @_ZN4mlir7Builder17getI64IntegerAttrEl(ptr noundef nonnull align 8 dereferenceable(8) %i.ou, i64 noundef %.2) #18
  %i.pr = load i32, ptr %i.d, align 4             ; 2 uses
  %.not.i.i.i217 = icmp ugt i32 %i.pr, 16777215
  call void @llvm.assume(i1 %.not.i.i.i217)
  %i.ps = lshr i32 %i.pr, 23
  %.lobit.i.i.i.i.i.i.i.i.i218 = and i32 %i.ps, 1
  %i.pt = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i218 to i64
  %i.pu = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.pt ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 80
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !155
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 88
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !155
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pu, i64 96
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !155
  %i.qb = ptrtoint ptr %i.pq to i64
  %i.qc = ptrtoint ptr %i.pw to i64
  %i.qd = ptrtoint ptr %i.py to i64
  %i.qe = ptrtoint ptr %i.qa to i64
  %i.qf = call ptr @_ZN4mlir5xegpu14StoreScatterOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_S5_S5_NS_11IntegerAttrENS0_15CachePolicyAttrES7_S7_NS0_20DistributeLayoutAttrES6_(ptr noundef nonnull align 8 dereferenceable(32) %i.ou, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.08.0.copyload, ptr %.sroa.0.0.copyload.i.i.i.i216, ptr %.sroa.06.0.copyload, ptr %.sroa.05.0.copyload, i64 %i.qb, i64 %i.qc, i64 %i.qd, i64 %i.qe, ptr noundef nonnull byval(%"class.mlir::xegpu::DistributeLayoutAttr") align 8 %35, i64 0) #18 ; 0 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.12.0322, i64 8 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.7.0323, i64 8 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0227.0324, i64 8 ; 2 uses
  %i.qj = icmp ne ptr %i.qg, %i.ok
  %i.qk = icmp ne ptr %i.qh, %i.on
  %or.cond.not310 = select i1 %i.qj, i1 %i.qk, i1 false
  %i.ql = icmp ne ptr %i.qi, %i.oq
  %or.cond305 = select i1 %or.cond.not310, i1 %i.ql, i1 false
  br i1 %or.cond305, label %bb.bo, label %_ZNK4llvm20iterator_facade_baseINS_6detail12zip_shortestIJPN4mlir5ValueES5_S5_EEESt26bidirectional_iterator_tagSt5tupleIJRS4_S9_S9_EElPSA_SA_EneERKS6_.exit.thread

bb.bp:                                            ; preds = %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu14StoreScatterOpEE14getTargetShapeEPNS1_9OperationE.exit.thread, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu14StoreScatterOpEE14getTargetShapeEPNS1_9OperationE.exit, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit
  %i.qm = phi ptr [ %i.ae, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit ], [ %i.ae, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu14StoreScatterOpEE14getTargetShapeEPNS1_9OperationE.exit ], [ %i.x, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu14StoreScatterOpEE14getTargetShapeEPNS1_9OperationE.exit.thread ] ; 2 uses
  %.sroa.080.0 = phi i8 [ 1, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit ], [ 0, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu14StoreScatterOpEE14getTargetShapeEPNS1_9OperationE.exit ], [ 0, %_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu14StoreScatterOpEE14getTargetShapeEPNS1_9OperationE.exit.thread ]
  %i.qn = load i8, ptr %i.qm, align 8, !tbaa !117, !range !119, !noundef !152
  %i.qo = trunc nuw i8 %i.qn to i1
  br i1 %i.qo, label %bb.bq, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.qm, align 8, !tbaa !117
  %i.qp = load ptr, ptr %13, align 8, !tbaa !112  ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.qr = icmp eq ptr %i.qp, %i.qq
  br i1 %i.qr, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @free(ptr noundef %i.qp) #18
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit: ; preds = %bb.bp, %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  ret i8 %.sroa.080.0
}

; Function Attrs: cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu14StoreScatterOpEED0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @llvm.trap() #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu14StoreScatterOpEE4packENS1_5ValueENS1_9TypeRangeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %1, ptr %2, i64 %3, i64 %4, ptr %.0.val, i64 %.8.val, ptr %5, ptr noundef nonnull align 8 dereferenceable(40) %6) unnamed_addr #1 align 2 {
bb.a:
  %7 = alloca %"class.mlir::Value", align 8       ; 2 uses
  %8 = alloca %"class.mlir::NamedAttribute", align 8 ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.mlir::NamedAttribute", align 8 ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::ArrayRef.257", align 8 ; 3 uses
  %13 = alloca [2 x %"class.mlir::NamedAttribute"], align 8 ; 5 uses
  store ptr %2, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !130
  %i.f = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  tail call void @_ZN4mlir5xegpu32extractVectorsWithShapeFromValueERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefIlEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.192") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr %5, ptr nonnull %2, ptr %.0.val, i64 %.8.val) #18
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !104  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.l, align 1, !tbaa !159
  %i.m = load i8, ptr %i.j, align 1, !tbaa !160
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %_ZN4llvm5TwineC2EPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.j, ptr %9, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %bb.c, %bb.d
  %storemerge.i = phi i8 [ 3, %bb.d ], [ 1, %bb.c ]
  store i8 %storemerge.i, ptr %i.k, align 8, !tbaa !161
  %i.n = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(34) %9) #18
  %i.o = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %i.n, ptr %i.o) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.s, align 1, !tbaa !159
  %i.t = load i8, ptr %i.q, align 1, !tbaa !160
  %.not.i27 = icmp eq i8 %i.t, 0
  br i1 %.not.i27, label %_ZN4llvm5TwineC2EPKc.exit29, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit
  store ptr %i.q, ptr %11, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit29

_ZN4llvm5TwineC2EPKc.exit29:                      ; preds = %_ZN4llvm5TwineC2EPKc.exit, %bb.e
  %storemerge.i28 = phi i8 [ 3, %bb.e ], [ 1, %_ZN4llvm5TwineC2EPKc.exit ]
  store i8 %storemerge.i28, ptr %i.r, align 8, !tbaa !161
  %i.u = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(34) %11) #18
  %i.v = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr %.0.val, i64 %.8.val) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.u, ptr %i.v) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.w = ptrtoint ptr %7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !163
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !163
  store ptr %13, ptr %12, align 8, !tbaa !166
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 2, ptr %i.y, align 8, !tbaa !167
  %i.z = call ptr @_ZN4mlir26UnrealizedConversionCastOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr %5, i64 %3, i64 %4, i64 %i.w, i64 1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.257") align 8 %12) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !206 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -16
  %i.ad = zext i32 %i.ab to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !112, !alias.scope !1013
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.af, align 8, !tbaa !52, !alias.scope !1013
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.ag, align 4, !tbaa !53, !alias.scope !1013
  %i.ah = icmp ugt i32 %i.ab, 6
  br i1 %i.ah, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i: ; preds = %_ZN4llvm5TwineC2EPKc.exit29
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.ae, i64 noundef %i.ad, i64 noundef 8) #18
  %.pre.i.i.i = load i32, ptr %i.af, align 8, !tbaa !52, !alias.scope !1013
  %.pre24.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre = load ptr, ptr %0, align 8, !tbaa !112, !alias.scope !1013
  br label %.lr.ph.i.i.i.i.preheader.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i: ; preds = %_ZN4llvm5TwineC2EPKc.exit29
  %.not8.i.i.i.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not8.i.i.i.i.i.i.i, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i
  %i.ai = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ %i.ae, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre24.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.pre-phi.i.i3.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.010.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.ak = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef %.sroa.2.09.i.i.i.i.i.i.i) #18
  %i.al = ptrtoint ptr %i.ak to i64
  store i64 %i.al, ptr %.010.i.i.i.i.i.i.i, align 8, !tbaa !125
  %i.am = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.am, %i.ad
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre23.i.i.i = load i32, ptr %i.af, align 8, !tbaa !52, !alias.scope !1013
  br label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i
  %i.ao = phi i32 [ %.pre23.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %i.ap = add i32 %i.ao, %i.ab
  store i32 %i.ap, ptr %i.af, align 8, !tbaa !52, !alias.scope !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit
  ret void
}

declare ptr @_ZN4mlir5xegpu14StoreScatterOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_S5_S5_NS_11IntegerAttrENS0_15CachePolicyAttrES7_S7_NS0_20DistributeLayoutAttrES6_(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, ptr noundef byval(%"class.mlir::xegpu::DistributeLayoutAttr") align 8, i64) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu15ConvertLayoutOpEED2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) initializes((0, 8)) %0) unnamed_addr #9 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu15ConvertLayoutOpEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.e = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef 3) #18, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %.not.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit2.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.i = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef 3) #18, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit2.i

_ZNSt14_Function_baseD2Ev.exit2.i:                ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %.not.i3.i = icmp eq ptr %i.k, null
  br i1 %.not.i3.i, label %_ZN4mlir5xegpu13UnrollOptionsD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i32 noundef 3) #18, !inline_history !0 ; 0 uses
  br label %_ZN4mlir5xegpu13UnrollOptionsD2Ev.exit

_ZN4mlir5xegpu13UnrollOptionsD2Ev.exit:           ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir5xegpu13UnrollOptionsD2Ev.exit
  tail call void @free(ptr noundef %i.n) #18
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.e, %_ZN4mlir5xegpu13UnrollOptionsD2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !112  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.r) #18
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_121UnrollConvertLayoutOpD0Ev(ptr noundef nonnull align 8 dereferenceable(216) initializes((0, 8)) %0) unnamed_addr #9 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu15ConvertLayoutOpEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.e = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef 3) #18, !inline_history !1014 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i1.i.i, label %_ZNSt14_Function_baseD2Ev.exit2.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.i = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef 3) #18, !inline_history !1014 ; 0 uses
end_hunk_10
begin_hunk_11_@_ZN4mlir5xegpu15ConvertLayoutOp18getInputLayoutAttrEv:bb.a
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 49), i64 33) #18
  store ptr %i.m, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !130 ; 2 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !112  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !52   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.q, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.r = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.r ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !130
  %i.t = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = xor i64 %i.r, -1
  %i.w = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.v
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.t, ptr %i.u, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.t, i64 %i.w, i64 %i.r ; 2 uses
  %i.x = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.x, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.q, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.y
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir5xegpu20DistributeLayoutAttrES3_EEDcRT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.z = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !135
  %i.aa = icmp eq ptr %i.z, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.aa, label %bb.f, label %_ZN4llvm4castIN4mlir5xegpu20DistributeLayoutAttrES3_EEDcRT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !137
  br label %_ZN4llvm4castIN4mlir5xegpu20DistributeLayoutAttrES3_EEDcRT0_.exit

_ZN4llvm4castIN4mlir5xegpu20DistributeLayoutAttrES3_EEDcRT0_.exit: ; preds = %bb.a, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.ad = phi ptr [ null, %bb.a ], [ %i.ac, %bb.f ], [ null, %bb.e ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.copyload.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %i.ad, 1
  ret { ptr, ptr } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4mlir5xegpu15ConvertLayoutOp19getTargetLayoutAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !120    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.d, 1
  %i.e = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.sroa.0.0.copyload.i = load ptr, ptr %i.g, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm4castIN4mlir5xegpu20DistributeLayoutAttrES3_EEDcRT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !209 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !133

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 49), i64 33) #18
  store ptr %i.m, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !130 ; 2 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !112  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !52   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.q, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.r = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.r ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !130
  %i.t = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = xor i64 %i.r, -1
  %i.w = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.v
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.t, ptr %i.u, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.t, i64 %i.w, i64 %i.r ; 2 uses
  %i.x = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.x, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.q, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.y
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir5xegpu20DistributeLayoutAttrES3_EEDcRT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.z = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !135
  %i.aa = icmp eq ptr %i.z, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.aa, label %bb.f, label %_ZN4llvm4castIN4mlir5xegpu20DistributeLayoutAttrES3_EEDcRT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !137
  br label %_ZN4llvm4castIN4mlir5xegpu20DistributeLayoutAttrES3_EEDcRT0_.exit

_ZN4llvm4castIN4mlir5xegpu20DistributeLayoutAttrES3_EEDcRT0_.exit: ; preds = %bb.a, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.ad = phi ptr [ null, %bb.a ], [ %i.ac, %bb.f ], [ null, %bb.e ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.copyload.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %i.ad, 1
  ret { ptr, ptr } %.fca.1.insert.i.i
}

declare noundef zeroext i1 @_ZNK4mlir4Type12isIntOrFloatEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZNK4mlir5xegpu20DistributeLayoutAttr25getEffectiveInstDataAsIntEv(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.186") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4mlir5xegpu20DistributeLayoutAttr9isEqualToERKS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu15ConvertLayoutOpEE16getUnrolledTypesENS1_10ShapedTypeEN4llvm8ArrayRefIlEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr %2, ptr %3, ptr %4, i64 %5) unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.mlir::ShapedType", align 8  ; 5 uses
  %7 = alloca %"class.llvm::ArrayRef.199", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %2, ptr %6, align 8, !noalias !1039
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.a, align 8, !noalias !1039
  store ptr %4, ptr %7, align 8, !noalias !1039
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %i.b, align 8, !noalias !1039
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49, !noalias !1039
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFN4llvm11SmallVectorIN4mlir4TypeELj6EEENS2_10ShapedTypeENS0_8ArrayRefIlEEEEclES5_S7_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #19, !noalias !1039
  unreachable

_ZNKSt8functionIFN4llvm11SmallVectorIN4mlir4TypeELj6EEENS2_10ShapedTypeENS0_8ArrayRefIlEEEEclES5_S7_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !138, !noalias !1039
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.197") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) #18, !inline_history !1038
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu15ConvertLayoutOpEE4packENS1_5ValueENS1_9TypeRangeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %1, ptr %2, i64 %3, i64 %4, ptr %.0.val, i64 %.8.val, ptr %5, ptr noundef nonnull align 8 dereferenceable(40) %6) unnamed_addr #1 align 2 {
bb.a:
  %7 = alloca %"class.mlir::Value", align 8       ; 2 uses
  %8 = alloca %"class.mlir::NamedAttribute", align 8 ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.mlir::NamedAttribute", align 8 ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::ArrayRef.257", align 8 ; 3 uses
  %13 = alloca [2 x %"class.mlir::NamedAttribute"], align 8 ; 5 uses
  store ptr %2, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !130
  %i.f = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  tail call void @_ZN4mlir5xegpu32extractVectorsWithShapeFromValueERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefIlEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.192") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr %5, ptr nonnull %2, ptr %.0.val, i64 %.8.val) #18
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !109  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.l, align 1, !tbaa !159
  %i.m = load i8, ptr %i.j, align 1, !tbaa !160
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %_ZN4llvm5TwineC2EPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.j, ptr %9, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %bb.c, %bb.d
  %storemerge.i = phi i8 [ 3, %bb.d ], [ 1, %bb.c ]
  store i8 %storemerge.i, ptr %i.k, align 8, !tbaa !161
  %i.n = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(34) %9) #18
  %i.o = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %i.n, ptr %i.o) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.s, align 1, !tbaa !159
  %i.t = load i8, ptr %i.q, align 1, !tbaa !160
  %.not.i27 = icmp eq i8 %i.t, 0
  br i1 %.not.i27, label %_ZN4llvm5TwineC2EPKc.exit29, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit
  store ptr %i.q, ptr %11, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit29

_ZN4llvm5TwineC2EPKc.exit29:                      ; preds = %_ZN4llvm5TwineC2EPKc.exit, %bb.e
  %storemerge.i28 = phi i8 [ 3, %bb.e ], [ 1, %_ZN4llvm5TwineC2EPKc.exit ]
  store i8 %storemerge.i28, ptr %i.r, align 8, !tbaa !161
  %i.u = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(34) %11) #18
  %i.v = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr %.0.val, i64 %.8.val) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.u, ptr %i.v) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.w = ptrtoint ptr %7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !163
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !163
  store ptr %13, ptr %12, align 8, !tbaa !166
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 2, ptr %i.y, align 8, !tbaa !167
  %i.z = call ptr @_ZN4mlir26UnrealizedConversionCastOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr %5, i64 %3, i64 %4, i64 %i.w, i64 1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.257") align 8 %12) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !206 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -16
  %i.ad = zext i32 %i.ab to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !112, !alias.scope !1042
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.af, align 8, !tbaa !52, !alias.scope !1042
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.ag, align 4, !tbaa !53, !alias.scope !1042
  %i.ah = icmp ugt i32 %i.ab, 6
  br i1 %i.ah, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i: ; preds = %_ZN4llvm5TwineC2EPKc.exit29
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.ae, i64 noundef %i.ad, i64 noundef 8) #18
  %.pre.i.i.i = load i32, ptr %i.af, align 8, !tbaa !52, !alias.scope !1042
  %.pre24.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre = load ptr, ptr %0, align 8, !tbaa !112, !alias.scope !1042
  br label %.lr.ph.i.i.i.i.preheader.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i: ; preds = %_ZN4llvm5TwineC2EPKc.exit29
  %.not8.i.i.i.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not8.i.i.i.i.i.i.i, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i
  %i.ai = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ %i.ae, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre24.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.pre-phi.i.i3.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.010.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.ak = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef %.sroa.2.09.i.i.i.i.i.i.i) #18
  %i.al = ptrtoint ptr %i.ak to i64
  store i64 %i.al, ptr %.010.i.i.i.i.i.i.i, align 8, !tbaa !125
  %i.am = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.am, %i.ad
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre23.i.i.i = load i32, ptr %i.af, align 8, !tbaa !52, !alias.scope !1042
  br label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i
  %i.ao = phi i32 [ %.pre23.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %i.ap = add i32 %i.ao, %i.ab
  store i32 %i.ap, ptr %i.af, align 8, !tbaa !52, !alias.scope !1042
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj6EEEvEEv.exit
  ret void
}

declare ptr @_ZN4mlir5xegpu15ConvertLayoutOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueENS0_20DistributeLayoutAttrES7_(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr, ptr, ptr noundef byval(%"class.mlir::xegpu::DistributeLayoutAttr") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZNK12_GLOBAL__N_113UnrollPatternIN4mlir5xegpu15ConvertLayoutOpEE6unpackENS1_10ValueRangeENS1_4TypeEN4llvm8ArrayRefIlEENS1_8LocationERNS1_15PatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %0, i64 %1, i64 %2, ptr %3, ptr %4, i64 %5, i64 %6, ptr noundef nonnull align 8 dereferenceable(40) %7) unnamed_addr #1 align 2 {
bb.a:
  %8 = alloca %"class.mlir::Type", align 8        ; 2 uses
  %9 = alloca %"class.mlir::VectorType", align 8  ; 5 uses
  %10 = alloca %"class.mlir::NamedAttribute", align 8 ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.mlir::NamedAttribute", align 8 ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.mlir::TypeRange", align 8  ; 3 uses
  %15 = alloca %"class.llvm::ArrayRef.257", align 8 ; 3 uses
  %16 = alloca [2 x %"class.mlir::NamedAttribute"], align 8 ; 5 uses
  store ptr %3, ptr %8, align 8
  %i.a = inttoptr i64 %6 to ptr                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.b = load ptr, ptr %3, align 8, !tbaa !128
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.d = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE ; 2 uses
  %spec.select.i.i = select i1 %i.d, ptr %3, ptr null
  store ptr %spec.select.i.i, ptr %9, align 8
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #18 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.i = call ptr @_ZN4mlir5xegpu31createVectorWithShapeFromValuesERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr %i.a, i64 %1, i64 %2, ptr %i.f, i64 %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !110  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.n, align 1, !tbaa !159
  %i.o = load i8, ptr %i.l, align 1, !tbaa !160
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %_ZN4llvm5TwineC2EPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.l, ptr %11, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %bb.c, %bb.d
  %storemerge.i = phi i8 [ 3, %bb.d ], [ 1, %bb.c ]
  store i8 %storemerge.i, ptr %i.m, align 8, !tbaa !161
  %i.p = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(34) %11) #18
  %i.q = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.p, ptr %i.q) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !111  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.u, align 1, !tbaa !159
  %i.v = load i8, ptr %i.s, align 1, !tbaa !160
  %.not.i32 = icmp eq i8 %i.v, 0
  br i1 %.not.i32, label %_ZN4llvm5TwineC2EPKc.exit34, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit
  store ptr %i.s, ptr %13, align 8, !tbaa !160
  br label %_ZN4llvm5TwineC2EPKc.exit34

_ZN4llvm5TwineC2EPKc.exit34:                      ; preds = %_ZN4llvm5TwineC2EPKc.exit, %bb.e
  %storemerge.i33 = phi i8 [ 3, %bb.e ], [ 1, %_ZN4llvm5TwineC2EPKc.exit ]
  store i8 %storemerge.i33, ptr %i.t, align 8, !tbaa !161
  %i.w = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(34) %13) #18
  %i.x = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr %4, i64 %5) #18
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr %i.w, ptr %i.x) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr nonnull align 8 dereferenceable(8) %8, i64 1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !163
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !163
  store ptr %16, ptr %15, align 8, !tbaa !166
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 2, ptr %i.z, align 8, !tbaa !167
  %i.aa = load i64, ptr %14, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = call ptr @_ZN4mlir26UnrealizedConversionCastOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr %i.a, i64 %i.aa, i64 %i.ac, i64 %1, i64 %2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.257") align 8 %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZN4llvm5TwineC2EPKc.exit34
  %.sroa.030.1 = phi ptr [ %i.ae, %_ZN4llvm5TwineC2EPKc.exit34 ], [ %i.i, %bb.b ]
  ret ptr %.sroa.030.1
}

declare noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_5xegpu15ConvertLayoutOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(192) %1) #1 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1044, !nonnull !152, !align !216
  %i.c = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(34) %i.b) #18 ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113UnrollPatternIN4mlir6vector19MultiDimReductionOpEED2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) initializes((0, 8)) %0) unnamed_addr #9 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_113UnrollPatternIN4mlir6vector19MultiDimReductionOpEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.e = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef 3) #18, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %.not.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit2.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.i = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef 3) #18, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit2.i

_ZNSt14_Function_baseD2Ev.exit2.i:                ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %.not.i3.i = icmp eq ptr %i.k, null
  br i1 %.not.i3.i, label %_ZN4mlir5xegpu13UnrollOptionsD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i32 noundef 3) #18, !inline_history !0 ; 0 uses
  br label %_ZN4mlir5xegpu13UnrollOptionsD2Ev.exit

_ZN4mlir5xegpu13UnrollOptionsD2Ev.exit:           ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir5xegpu13UnrollOptionsD2Ev.exit
  tail call void @free(ptr noundef %i.n) #18
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.e, %_ZN4mlir5xegpu13UnrollOptionsD2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !112  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.r) #18
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_122UnrollMultiReductionOpD0Ev(ptr noundef nonnull align 8 dereferenceable(216) initializes((0, 8)) %0) unnamed_addr #9 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_113UnrollPatternIN4mlir6vector19MultiDimReductionOpEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.e = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef 3) #18, !inline_history !1045 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i1.i.i, label %_ZNSt14_Function_baseD2Ev.exit2.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.i = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef 3) #18, !inline_history !1045 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit2.i.i

_ZNSt14_Function_baseD2Ev.exit2.i.i:              ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i3.i.i, label %_ZN4mlir5xegpu13UnrollOptionsD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i32 noundef 3) #18, !inline_history !1045 ; 0 uses
  br label %_ZN4mlir5xegpu13UnrollOptionsD2Ev.exit.i

_ZN4mlir5xegpu13UnrollOptionsD2Ev.exit.i:         ; preds = %bb.d, %_ZNSt14_Function_baseD2Ev.exit2.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir5xegpu13UnrollOptionsD2Ev.exit.i
  tail call void @free(ptr noundef %i.n) #18, !inline_history !1046
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i: ; preds = %bb.e, %_ZN4mlir5xegpu13UnrollOptionsD2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !112  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN12_GLOBAL__N_113UnrollPatternIN4mlir6vector19MultiDimReductionOpEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i
  tail call void @free(ptr noundef %i.r) #18, !inline_history !1046
  br label %_ZN12_GLOBAL__N_113UnrollPatternIN4mlir6vector19MultiDimReductionOpEED2Ev.exit
end_hunk_11
