Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MemRefToEmitC?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1582
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
%"class.mlir::memref::LoadOpGenericAdaptor.861" = type { %"class.mlir::memref::detail::LoadOpGenericAdaptorBase", %"class.llvm::ArrayRef.142" }
%"class.mlir::memref::LoadOp" = type { %"class.mlir::Op.828" }
%"class.mlir::Op.828" = type { %"class.mlir::OpState" }
%"class.mlir::ImplicitLocOpBuilder" = type { %"class.mlir::OpBuilder", %"class.mlir::Location" }
%"class.mlir::OpBuilder" = type { %"class.mlir::Builder", ptr, ptr, %"class.llvm::ilist_iterator" }
%"class.mlir::Builder" = type { ptr }
%"class.llvm::ilist_iterator" = type { ptr }
%"class.mlir::Location" = type { %"class.mlir::LocationAttr" }
%"class.mlir::LocationAttr" = type { %"class.mlir::Attribute" }
%"struct.llvm::detail::zip_shortest" = type { %"struct.llvm::detail::zip_common" }
%"struct.llvm::detail::zip_common" = type { %"class.std::tuple.868" }
%"class.std::tuple.868" = type { %"struct.std::_Tuple_impl.869" }
%"struct.std::_Tuple_impl.869" = type { %"struct.std::_Tuple_impl.870", %"struct.std::_Head_base.872" }
%"struct.std::_Tuple_impl.870" = type { %"struct.std::_Head_base.871" }
%"struct.std::_Head_base.871" = type { %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator" }
%"struct.std::_Head_base.872" = type { ptr }
%class.anon.897 = type { ptr }
%"class.mlir::memref::StoreOpAdaptor" = type { %"class.mlir::memref::StoreOpGenericAdaptor" }
%"class.mlir::memref::StoreOpGenericAdaptor" = type { %"class.mlir::memref::detail::StoreOpGenericAdaptorBase", %"class.mlir::ValueRange" }
%"class.mlir::memref::detail::StoreOpGenericAdaptorBase" = type { %"class.mlir::DictionaryAttr", %"class.std::optional.165", %"struct.mlir::memref::detail::StoreOpGenericAdaptorBase::Properties", %"class.mlir::RegionRange" }
%"struct.mlir::memref::detail::StoreOpGenericAdaptorBase::Properties" = type { %"class.mlir::IntegerAttr", %"class.mlir::BoolAttr" }
%"class.mlir::memref::StoreOpGenericAdaptor.950" = type { %"class.mlir::memref::detail::StoreOpGenericAdaptorBase", %"class.llvm::ArrayRef.142" }
%"class.mlir::memref::StoreOp" = type { %"class.mlir::Op.909" }
%"class.mlir::Op.909" = type { %"class.mlir::OpState" }
%class.anon.951 = type { ptr }

$_ZN4mlir15DialectRegistry12addExtensionIJNS_6memref13MemRefDialectEEEEbPFvPNS_11MLIRContextEDpPT_E = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESF_IJOS8_EEEEERS9_DpOT_ = comdat any

$_ZZN4mlir15DialectRegistry12addExtensionIJNS_6memref13MemRefDialectEEEEbPFvPNS_11MLIRContextEDpPT_EEN9ExtensionD0Ev = comdat any

$_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_6memref13MemRefDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5applyES6_N4llvm15MutableArrayRefIPNS_7DialectEEE = comdat any

$_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_6memref13MemRefDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5cloneEv = comdat any

$_ZZN4mlir15DialectRegistry12addExtensionIJNS_6memref13MemRefDialectEEEEbPFvPNS_11MLIRContextEDpPT_EENK9Extension5applyES5_PS3_ = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref8AllocaOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref8AllocaOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref8AllocaOpEE15matchAndRewriteES2_NS1_22AllocaOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureINS1_8LocationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_6memref8AllocaOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6memref8AllocaOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref7AllocOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref7AllocOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref7AllocOpEE15matchAndRewriteES2_NS1_21AllocOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_8LocationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_ = comdat any

$_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_6memref7AllocOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6memref7AllocOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref6CopyOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref6CopyOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref6CopyOpEE15matchAndRewriteES2_NS1_20CopyOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_6memref6CopyOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6memref6CopyOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref9DeallocOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref9DeallocOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref9DeallocOpEE15matchAndRewriteES2_NS1_23DeallocOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_6memref9DeallocOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6memref9DeallocOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref8GlobalOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref8GlobalOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref8GlobalOpEE15matchAndRewriteES2_NS1_22GlobalOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir12ElementsAttr13getSplatValueINS_9AttributeEEET_v = comdat any

$_ZN4llvm23DefaultDoCastIfPossibleIN4mlir12ElementsAttrENS1_9AttributeENS_8CastInfoIS2_S3_vEEE16doCastIfPossibleES3_ = comdat any

$_ZNK4mlir12ElementsAttr11value_beginINS_9AttributeEEENSt9enable_ifIXoosr3std7is_sameIS2_T_EE5valuentsr3std10is_base_ofIS2_S4_EE5valueENS_6detail20ElementsAttrIteratorIS4_EEE4typeEv = comdat any

$_ZN4mlirlsERN4llvm11raw_ostreamENS_9AttributeE = comdat any

$_ZN4llvm11raw_ostreamlsEPKc = comdat any

$_ZN4llvm11raw_ostreamlsENS_9StringRefE = comdat any

$_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_6memref8GlobalOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6memref8GlobalOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref11GetGlobalOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref11GetGlobalOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref11GetGlobalOpEE15matchAndRewriteES2_NS1_25GetGlobalOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_6memref11GetGlobalOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6memref11GetGlobalOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref6LoadOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref6LoadOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref6LoadOpEE15matchAndRewriteES2_NS1_20LoadOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_6memref6LoadOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6memref6LoadOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZN4mlir14RewritePatternD2Ev = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref7StoreOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref7StoreOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_6memref7StoreOpEE15matchAndRewriteES2_NS1_21StoreOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_6memref7StoreOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6memref7StoreOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_30ConvertToEmitCPatternInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_30ConvertToEmitCPatternInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZTVZN4mlir15DialectRegistry12addExtensionIJNS_6memref13MemRefDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_12ElementsAttrEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_12ElementsAttrEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_9AttributeEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_9AttributeEvE13resolveTypeIDEvE2id = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN12_GLOBAL__N_129MemRefToEmitCDialectInterfaceE = internal unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4mlir16DialectInterfaceD2Ev, ptr @_ZN12_GLOBAL__N_129MemRefToEmitCDialectInterfaceD0Ev, ptr @_ZNK12_GLOBAL__N_129MemRefToEmitCDialectInterface40populateConvertToEmitCConversionPatternsERN4mlir16ConversionTargetERNS1_13TypeConverterERNS1_17RewritePatternSetESt8optionalIbE] }, align 8
@_ZZN4mlir6detail14TypeIDResolverINS_30ConvertToEmitCPatternInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_30ConvertToEmitCPatternInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str = private unnamed_addr constant [87 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::ConvertToEmitCPatternInterface]\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTVZN4mlir15DialectRegistry12addExtensionIJNS_6memref13MemRefDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir20DialectExtensionBaseD2Ev, ptr @_ZZN4mlir15DialectRegistry12addExtensionIJNS_6memref13MemRefDialectEEEEbPFvPNS_11MLIRContextEDpPT_EEN9ExtensionD0Ev, ptr @_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_6memref13MemRefDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5applyES6_N4llvm15MutableArrayRefIPNS_7DialectEEE, ptr @_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_6memref13MemRefDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5cloneEv, ptr @_ZZN4mlir15DialectRegistry12addExtensionIJNS_6memref13MemRefDialectEEEEbPFvPNS_11MLIRContextEDpPT_EENK9Extension5applyES5_PS3_] }, comdat, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"memref\00", align 1
@_ZTVN4mlir20DialectExtensionBaseE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN12_GLOBAL__N_113ConvertAllocaE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN12_GLOBAL__N_113ConvertAllocaD0Ev, ptr @_ZNK4mlir17ConversionPattern15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK4mlir19OpConversionPatternINS_6memref8AllocaOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_6memref8AllocaOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE, ptr @_ZNK12_GLOBAL__N_113ConvertAlloca15matchAndRewriteEN4mlir6memref8AllocaOpENS2_15AllocaOpAdaptorERNS1_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_6memref8AllocaOpEE15matchAndRewriteES2_NS1_22AllocaOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE] }, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"memref.alloca\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"cannot transform alloca with dynamic shape\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"cannot transform alloca with alignment requirement\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"cannot convert type\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN4mlir6detail14TypeIDResolverINS_5emitc11PointerTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.12 = private unnamed_addr constant [10 x i8] c"pattern '\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"' does not support 1:N conversion\00", align 1
@.str.14 = private unnamed_addr constant [87 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ConvertAlloca]\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN12_GLOBAL__N_112ConvertAllocE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN12_GLOBAL__N_112ConvertAllocD0Ev, ptr @_ZNK4mlir17ConversionPattern15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK4mlir19OpConversionPatternINS_6memref7AllocOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_6memref7AllocOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE, ptr @_ZNK12_GLOBAL__N_112ConvertAlloc15matchAndRewriteEN4mlir6memref7AllocOpENS2_14AllocOpAdaptorERNS1_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_6memref7AllocOpEE15matchAndRewriteES2_NS1_21AllocOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE] }, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c"memref.alloc\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"incompatible memref type for EmitC conversion\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"failed to convert memref element type\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"aligned_alloc\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5emitc9SizeTTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.22 = private unnamed_addr constant [7 x i8] c"sizeof\00", align 1
@.str.23 = private unnamed_addr constant [86 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ConvertAlloc]\00", align 1
@_ZTVN12_GLOBAL__N_111ConvertCopyE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN12_GLOBAL__N_111ConvertCopyD0Ev, ptr @_ZNK4mlir17ConversionPattern15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK4mlir19OpConversionPatternINS_6memref6CopyOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_6memref6CopyOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE, ptr @_ZNK12_GLOBAL__N_111ConvertCopy15matchAndRewriteEN4mlir6memref6CopyOpENS2_13CopyOpAdaptorERNS1_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_6memref6CopyOpEE15matchAndRewriteES2_NS1_20CopyOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE] }, align 8
@.str.24 = private unnamed_addr constant [12 x i8] c"memref.copy\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"incompatible source memref type for EmitC conversion\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"incompatible target memref type for EmitC conversion\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"cannot convert element type\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"expected pointer operands\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"memcpy\00", align 1
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_26UnrealizedConversionCastOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.30 = private unnamed_addr constant [85 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ConvertCopy]\00", align 1
@_ZTVN12_GLOBAL__N_114ConvertDeallocE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN12_GLOBAL__N_114ConvertDeallocD0Ev, ptr @_ZNK4mlir17ConversionPattern15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK4mlir19OpConversionPatternINS_6memref9DeallocOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_6memref9DeallocOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE, ptr @_ZNK12_GLOBAL__N_114ConvertDealloc15matchAndRewriteEN4mlir6memref9DeallocOpENS2_16DeallocOpAdaptorERNS1_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_6memref9DeallocOpEE15matchAndRewriteES2_NS1_23DeallocOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE] }, align 8
@.str.31 = private unnamed_addr constant [15 x i8] c"memref.dealloc\00", align 1
@.str.32 = private unnamed_addr constant [54 x i8] c"expected pointer-backed memref for EmitC deallocation\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@.str.34 = private unnamed_addr constant [88 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ConvertDealloc]\00", align 1
@_ZTVN12_GLOBAL__N_113ConvertGlobalE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN12_GLOBAL__N_113ConvertGlobalD0Ev, ptr @_ZNK4mlir17ConversionPattern15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK4mlir19OpConversionPatternINS_6memref8GlobalOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_6memref8GlobalOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE, ptr @_ZNK12_GLOBAL__N_113ConvertGlobal15matchAndRewriteEN4mlir6memref8GlobalOpENS2_15GlobalOpAdaptorERNS1_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_6memref8GlobalOpEE15matchAndRewriteES2_NS1_22GlobalOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE] }, align 8
@.str.35 = private unnamed_addr constant [14 x i8] c"memref.global\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"cannot transform global with dynamic shape\00", align 1
@.str.37 = private unnamed_addr constant [70 x i8] c"global variable with alignment requirement is currently not supported\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"cannot convert result type\00", align 1
@.str.39 = private unnamed_addr constant [58 x i8] c"only public and private visibility is currently supported\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_12ElementsAttrEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_12ElementsAttrEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.40 = private unnamed_addr constant [69 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::ElementsAttr]\00", align 1
@.str.41 = private unnamed_addr constant [62 x i8] c"ElementsAttr does not provide iteration facilities for type `\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"`, see attribute: \00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_9AttributeEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_9AttributeEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.44 = private unnamed_addr constant [66 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::Attribute]\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_8UnitAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.45 = private unnamed_addr constant [87 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ConvertGlobal]\00", align 1
@_ZTVN12_GLOBAL__N_116ConvertGetGlobalE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN12_GLOBAL__N_116ConvertGetGlobalD0Ev, ptr @_ZNK4mlir17ConversionPattern15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK4mlir19OpConversionPatternINS_6memref11GetGlobalOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_6memref11GetGlobalOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE, ptr @_ZNK12_GLOBAL__N_116ConvertGetGlobal15matchAndRewriteEN4mlir6memref11GetGlobalOpENS2_18GetGlobalOpAdaptorERNS1_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_6memref11GetGlobalOpEE15matchAndRewriteES2_NS1_25GetGlobalOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE] }, align 8
@.str.46 = private unnamed_addr constant [18 x i8] c"memref.get_global\00", align 1
@.str.47 = private unnamed_addr constant [90 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ConvertGetGlobal]\00", align 1
@_ZTVN12_GLOBAL__N_111ConvertLoadE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN12_GLOBAL__N_111ConvertLoadD0Ev, ptr @_ZNK4mlir17ConversionPattern15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK4mlir19OpConversionPatternINS_6memref6LoadOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_6memref6LoadOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE, ptr @_ZNK12_GLOBAL__N_111ConvertLoad15matchAndRewriteEN4mlir6memref6LoadOpENS2_13LoadOpAdaptorERNS1_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_6memref6LoadOpEE15matchAndRewriteES2_NS1_20LoadOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE] }, align 8
@.str.48 = private unnamed_addr constant [12 x i8] c"memref.load\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"expected array or pointer type\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5emitc9ArrayTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.50 = private unnamed_addr constant [85 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ConvertLoad]\00", align 1
@_ZTVN12_GLOBAL__N_112ConvertStoreE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN12_GLOBAL__N_112ConvertStoreD0Ev, ptr @_ZNK4mlir17ConversionPattern15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK4mlir19OpConversionPatternINS_6memref7StoreOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_6memref7StoreOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE, ptr @_ZNK12_GLOBAL__N_112ConvertStore15matchAndRewriteEN4mlir6memref7StoreOpENS2_14StoreOpAdaptorERNS1_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_6memref7StoreOpEE15matchAndRewriteES2_NS1_21StoreOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE] }, align 8
@.str.51 = private unnamed_addr constant [13 x i8] c"memref.store\00", align 1
@.str.52 = private unnamed_addr constant [86 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ConvertStore]\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir37registerConvertMemRefToEmitCInterfaceERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir15DialectRegistry12addExtensionIJNS_6memref13MemRefDialectEEEEbPFvPNS_11MLIRContextEDpPT_E(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull @"_ZZN4mlir37registerConvertMemRefToEmitCInterfaceERNS_15DialectRegistryEEN3$_08__invokeEPNS_11MLIRContextEPNS_6memref13MemRefDialectE") ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir15DialectRegistry12addExtensionIJNS_6memref13MemRefDialectEEEEbPFvPNS_11MLIRContextEDpPT_E(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::tuple.92", align 8     ; 5 uses
  %3 = alloca %"class.std::tuple.95", align 8     ; 5 uses
  %4 = alloca %"class.mlir::TypeID", align 8      ; 8 uses
  %5 = alloca %"class.std::unique_ptr.70", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #17, !noalias !170 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !14, !noalias !170
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 3, ptr %i.e, align 4, !tbaa !15, !noalias !170
  store ptr @.str.6, ptr %i.c, align 8, !noalias !170
  %.sroa.4.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 6, ptr %.sroa.4.0..sroa_idx2.i.i.i, align 8, !noalias !170
  store i32 1, ptr %i.d, align 8, !tbaa !16, !noalias !170
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVZN4mlir15DialectRegistry12addExtensionIJNS_6memref13MemRefDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension, i64 16), ptr %i.a, align 8, !tbaa !18, !noalias !170
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %1, ptr %i.f, align 8, !tbaa !27, !noalias !170
  store ptr %i.a, ptr %5, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %1, ptr %4, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %4), !noalias !171 ; 2 uses
  %.fca.1.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.h, 1
  %i.i = trunc nuw i8 %.fca.1.extract.i.i.i.i.i to i1 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.k = ptrtoint ptr %i.a to i64
  br i1 %i.i, label %bb.b, label %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread

_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i

bb.b:                                             ; preds = %bb.a
  %.fca.0.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.h, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !16   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i, i64 8
  store i32 %i.m, ptr %i.n, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %4, ptr %2, align 8, !tbaa !34, !alias.scope !174
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %5, ptr %3, align 8, !tbaa !36, !alias.scope !175
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.p = load i32, ptr %i.o, align 4, !tbaa !15
  %.not.i.i.i.i = icmp ult i32 %i.m, %i.p
  br i1 %.not.i.i.i.i, label %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread6, label %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit, !prof !37

_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread6: ; preds = %bb.b
  %i.q = zext i32 %i.m to i64
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.q ; 2 uses
  %i.t = load i64, ptr %4, align 8, !tbaa !38
  store i64 %i.t, ptr %i.s, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.k, ptr %i.u, align 8, !tbaa !39
  %i.v = add nuw i32 %i.m, 1
  store i32 %i.v, ptr %i.l, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_6memref13MemRefDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit

_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit: ; preds = %bb.b
  %i.w = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESF_IJOS8_EEEEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  %.pre.pre = load ptr, ptr %5, align 8, !tbaa !39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i = icmp eq ptr %.pre.pre, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_6memref13MemRefDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i: ; preds = %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit
  %i.x = phi ptr [ %i.a, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread ], [ %.pre.pre, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit ] ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(72) %i.x) #18, !inline_history !169
  br label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_6memref13MemRefDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit

_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_6memref13MemRefDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit: ; preds = %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread6, %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit
  ret i1 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir39populateMemRefToEmitCConversionPatternsERNS_17RewritePatternSetERKNS_13TypeConverterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(508) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.109", align 8 ; 4 uses
  %3 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %4 = alloca %"class.llvm::ArrayRef.109", align 8 ; 4 uses
  %5 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %6 = alloca %"class.llvm::ArrayRef.109", align 8 ; 4 uses
  %7 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %8 = alloca %"class.llvm::ArrayRef.109", align 8 ; 4 uses
  %9 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %10 = alloca %"class.llvm::ArrayRef.109", align 8 ; 4 uses
  %11 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %12 = alloca %"class.llvm::ArrayRef.109", align 8 ; 4 uses
  %13 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %14 = alloca %"class.llvm::ArrayRef.109", align 8 ; 4 uses
  %15 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %16 = alloca %"class.llvm::ArrayRef.109", align 8 ; 4 uses
  %17 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !293    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !294
  %i.b = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #17, !noalias !295 ; 10 uses
  call void @_ZN4mlir14PatternBenefitC1Ej(ptr noundef nonnull align 2 dereferenceable(2) %17, i32 noundef 1) #18, !noalias !295
  %i.c = load i16, ptr %17, align 2, !noalias !295
  call void @llvm.lifetime.start.p0(ptr nonnull %16), !noalias !295
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false), !noalias !295
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_ZN4mlir7PatternC2EN4llvm9StringRefENS_14PatternBenefitEPNS_11MLIRContextENS1_8ArrayRefIS2_EE(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr nonnull @.str.7, i64 13, i16 %i.c, ptr noundef %i.a, ptr noundef nonnull byval(%"class.llvm::ArrayRef.109") align 8 %16) #18, !noalias !295
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !295
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  store ptr %1, ptr %i.e, align 8, !tbaa !62, !noalias !295
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN12_GLOBAL__N_113ConvertAllocaE, i64 16), ptr %i.b, align 8, !tbaa !18, !noalias !295
  call void @llvm.lifetime.end.p0(ptr nonnull %17), !noalias !294
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !63, !noalias !294
  %i.f = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i, 0
  br i1 %i.f, label %bb.b, label %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_113ConvertAllocaEJRKNS_13TypeConverterEPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteISA_EEDpOT0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr getelementptr inbounds nuw (i8, ptr @.str.14, i64 49), ptr %i.g, align 8, !tbaa !64, !noalias !294
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !63, !noalias !294
  br label %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_113ConvertAllocaEJRKNS_13TypeConverterEPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteISA_EEDpOT0_.exit.i.i

_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_113ConvertAllocaEJRKNS_13TypeConverterEPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteISA_EEDpOT0_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !16   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.k = load i32, ptr %i.j, align 4, !tbaa !15
  %i.l = icmp ugt i32 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i

bb.c:                                             ; preds = %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_113ConvertAllocaEJRKNS_13TypeConverterEPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteISA_EEDpOT0_.exit.i.i
  %i.m = zext i32 %i.i to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull %i.e, i64 noundef %i.m, i64 noundef 16) #18
  %.pre8.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i: ; preds = %bb.c, %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_113ConvertAllocaEJRKNS_13TypeConverterEPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteISA_EEDpOT0_.exit.i.i
  %.pre8.i.i.i.i = phi i32 [ %i.i, %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_113ConvertAllocaEJRKNS_13TypeConverterEPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteISA_EEDpOT0_.exit.i.i ], [ %.pre8.pre.i.i.i.i, %bb.c ]
  store i32 %.pre8.i.i.i.i, ptr %i.h, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 24 uses
end_hunk_0
begin_hunk_1_@_ZNK4mlir19OpConversionPatternINS_6memref6CopyOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE:bb.a
  store ptr %2, ptr %i.a, align 8, !tbaa !83
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !63
  %i.b = load ptr, ptr %0, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i8 %i.d(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::memref::CopyOpGenericAdaptor.504") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #18
  ret i8 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_111ConvertCopy15matchAndRewriteEN4mlir6memref6CopyOpENS2_13CopyOpAdaptorERNS1_25ConversionPatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr %1, ptr nofree noundef readonly byval(%"class.mlir::memref::CopyOpAdaptor") align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %class.anon.436, align 8            ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %7 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %8 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %9 = alloca %class.anon.436, align 8            ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %12 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %13 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %14 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %15 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %16 = alloca %class.anon.436, align 8           ; 4 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %18 = alloca %class.anon.436, align 8           ; 4 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %20 = alloca %class.anon.436, align 8           ; 4 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %22 = alloca %"class.mlir::MemRefType", align 8 ; 7 uses
  %23 = alloca %"class.mlir::TypeRange", align 8  ; 3 uses
  %24 = alloca %"class.mlir::ValueRange", align 8 ; 2 uses
  %25 = alloca [3 x %"class.mlir::Value"], align 8 ; 6 uses
  %26 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !113  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !115
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  store ptr %i.g, ptr %22, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.0.0.copyload.i.i.i.i59 = load ptr, ptr %i.h, align 8, !tbaa !115
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i59, i64 8
  %.0.copyload.i.i.i.i.i.i60 = load i64, ptr %i.i, align 8
  %i.j = tail call fastcc noundef zeroext i1 @_ZL25isMemRefTypeLegalForEmitCN4mlir10MemRefTypeE(ptr %i.g)
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  %i.k = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 1, ptr %i.l, align 1, !tbaa !86
  store ptr @.str.25, ptr %21, align 8, !tbaa !87
  store i8 3, ptr %i.k, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  store ptr %21, ptr %20, align 8, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !97   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #18
  br i1 %i.o, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.c
  %i.p = ptrtoint ptr %20 to i64
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr %.sroa.0.0.copyload.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_8LocationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.p) #18, !inline_history !3
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.b, %bb.c, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %bb.x

bb.d:                                             ; preds = %bb.a
  %i.t = and i64 %.0.copyload.i.i.i.i.i.i60, -8
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = tail call fastcc noundef zeroext i1 @_ZL25isMemRefTypeLegalForEmitCN4mlir10MemRefTypeE(ptr %i.u)
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  %i.w = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !86
  store ptr @.str.26, ptr %19, align 8, !tbaa !87
  store i8 3, ptr %i.w, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  store ptr %19, ptr %18, align 8, !tbaa !90
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !97   ; 4 uses
  %.not.i.i.i.i64 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i64, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit66, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.z) #18
  br i1 %i.aa, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i65, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit66

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i65: ; preds = %bb.f
  %i.ab = ptrtoint ptr %18 to i64
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(12) %i.z, ptr %.sroa.0.0.copyload.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_8LocationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ab) #18, !inline_history !3
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit66

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit66: ; preds = %bb.e, %bb.f, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.x

bb.g:                                             ; preds = %bb.d
  %i.af = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #18
  %i.ag = extractvalue { ptr, i64 } %i.af, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %bb.t

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !62
  %i.ak = call ptr @_ZNK4mlir10MemRefType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #18
  %i.al = call ptr @_ZNK4mlir13TypeConverter11convertTypeENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(508) %i.aj, ptr %i.ak) #18 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 33
  store i8 1, ptr %i.ao, align 1, !tbaa !86
  store ptr @.str.27, ptr %17, align 8, !tbaa !87
  store i8 3, ptr %i.an, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store ptr %17, ptr %16, align 8, !tbaa !90
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !97 ; 4 uses
  %.not.i.i.i.i68 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i68, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit70, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.aq) #18
  br i1 %i.ar, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i69, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit70

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i69: ; preds = %bb.j
  %i.as = ptrtoint ptr %16 to i64
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(12) %i.aq, ptr %.sroa.0.0.copyload.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_8LocationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.as) #18, !inline_history !3
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit70

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit70: ; preds = %bb.i, %bb.j, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.x

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i13.i.i = load i64, ptr %i.aw, align 8 ; 2 uses
  store i64 %.sroa.0.0.copyload.i13.i.i, ptr %15, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.ax, align 8
  %i.ay = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %15, i64 noundef 0) #18 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %i.ay, ptr %14, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.0.copyload.i.i.i.i.i.i71 = load i64, ptr %i.az, align 8
  %i.ba = and i64 %.0.copyload.i.i.i.i.i.i71, -8
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !101
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !38
  %i.be = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_5emitc11PointerTypeEvE2idE
  br i1 %i.be, label %_ZN12_GLOBAL__N_116getMemRefPointerEN4mlir5ValueE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #18 ; 5 uses
  %.not.i.i.i.i72 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i72, label %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !tbaa !117
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !118
  %i.bj = icmp eq ptr %i.bi, @_ZN4mlir6detail14TypeIDResolverINS_26UnrealizedConversionCastOpEvE2idE
  %27 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_26UnrealizedConversionCastOpEvE2idE
  %spec.select.i.i.i.i.i.i.i = and i1 %27, %i.bj
  br i1 %spec.select.i.i.i.i.i.i.i, label %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.i, label %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.thread.i

_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.i: ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 44
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = and i32 %i.bl, 8388608
  %.not.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i, label %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.thread.i, label %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.i, !prof !119

_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.i: ; preds = %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 68
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !120
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %bb.n, label %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.thread.i

bb.n:                                             ; preds = %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !113
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %.sroa.0.0.copyload.i.i.i.i73 = load ptr, ptr %i.bs, align 8, !tbaa !115 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i73, i64 8
  %.0.copyload.i.i.i.i.i1.i = load i64, ptr %i.bt, align 8
  %i.bu = and i64 %.0.copyload.i.i.i.i.i1.i, -8
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !101
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i3.i = load ptr, ptr %i.bx, align 8, !tbaa !38
  %i.by = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i3.i, @_ZN4mlir6detail14TypeIDResolverINS_5emitc11PointerTypeEvE2idE
  br i1 %i.by, label %_ZN12_GLOBAL__N_116getMemRefPointerEN4mlir5ValueE.exit, label %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.thread.i

_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.thread.i: ; preds = %bb.n, %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.i, %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.i, %bb.m, %bb.l
  br label %_ZN12_GLOBAL__N_116getMemRefPointerEN4mlir5ValueE.exit

_ZN12_GLOBAL__N_116getMemRefPointerEN4mlir5ValueE.exit: ; preds = %bb.k, %bb.n, %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.thread.i
  %.sroa.011.1.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i73, %bb.n ], [ null, %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.thread.i ], [ %i.ay, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store i64 %.sroa.0.0.copyload.i13.i.i, ptr %12, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 1, ptr %i.bz, align 8
  %i.ca = call i64 @_ZN4mlir10ValueRange11offset_baseERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  store i64 %i.ca, ptr %13, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.cb, align 8
  %i.cc = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 noundef 0) #18 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %i.cc, ptr %11, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.0.copyload.i.i.i.i.i.i75 = load i64, ptr %i.cd, align 8
  %i.ce = and i64 %.0.copyload.i.i.i.i.i.i75, -8
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !101
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i76 = load ptr, ptr %i.ch, align 8, !tbaa !38
  %i.ci = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i76, @_ZN4mlir6detail14TypeIDResolverINS_5emitc11PointerTypeEvE2idE
  br i1 %i.ci, label %_ZN12_GLOBAL__N_116getMemRefPointerEN4mlir5ValueE.exit87, label %bb.o

bb.o:                                             ; preds = %_ZN12_GLOBAL__N_116getMemRefPointerEN4mlir5ValueE.exit
  %i.cj = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #18 ; 5 uses
  %.not.i.i.i.i77 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i77, label %_ZN12_GLOBAL__N_116getMemRefPointerEN4mlir5ValueE.exit87.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i78 = load ptr, ptr %i.ck, align 8, !tbaa !117
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i78, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !118
  %i.cn = icmp eq ptr %i.cm, @_ZN4mlir6detail14TypeIDResolverINS_26UnrealizedConversionCastOpEvE2idE
  %28 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_26UnrealizedConversionCastOpEvE2idE
  %spec.select.i.i.i.i.i.i.i79 = and i1 %28, %i.cn
  br i1 %spec.select.i.i.i.i.i.i.i79, label %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.i81, label %_ZN12_GLOBAL__N_116getMemRefPointerEN4mlir5ValueE.exit87.thread

_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.i81: ; preds = %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 44
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = and i32 %i.cp, 8388608
  %.not.i.i.i82 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i82, label %_ZN12_GLOBAL__N_116getMemRefPointerEN4mlir5ValueE.exit87.thread, label %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.i83, !prof !119

_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.i83: ; preds = %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.i81
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 68
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !120
  %i.ct = icmp eq i32 %i.cs, 1
  br i1 %i.ct, label %bb.q, label %_ZN12_GLOBAL__N_116getMemRefPointerEN4mlir5ValueE.exit87.thread

bb.q:                                             ; preds = %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.i83
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !113
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %.sroa.0.0.copyload.i.i.i.i84 = load ptr, ptr %i.cw, align 8, !tbaa !115 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i84, i64 8
  %.0.copyload.i.i.i.i.i1.i85 = load i64, ptr %i.cx, align 8
  %i.cy = and i64 %.0.copyload.i.i.i.i.i1.i85, -8
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !101
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i3.i86 = load ptr, ptr %i.db, align 8, !tbaa !38
  %i.dc = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i3.i86, @_ZN4mlir6detail14TypeIDResolverINS_5emitc11PointerTypeEvE2idE
  br i1 %i.dc, label %_ZN12_GLOBAL__N_116getMemRefPointerEN4mlir5ValueE.exit87, label %_ZN12_GLOBAL__N_116getMemRefPointerEN4mlir5ValueE.exit87.thread

_ZN12_GLOBAL__N_116getMemRefPointerEN4mlir5ValueE.exit87: ; preds = %_ZN12_GLOBAL__N_116getMemRefPointerEN4mlir5ValueE.exit, %bb.q
  %.sroa.011.1.i80 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i84, %bb.q ], [ %i.cc, %_ZN12_GLOBAL__N_116getMemRefPointerEN4mlir5ValueE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %.not = icmp eq ptr %.sroa.011.1.i, null
  br i1 %.not, label %.thread, label %bb.s

_ZN12_GLOBAL__N_116getMemRefPointerEN4mlir5ValueE.exit87.thread: ; preds = %bb.o, %bb.p, %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.i81, %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.i83, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.thread

.thread:                                          ; preds = %_ZN12_GLOBAL__N_116getMemRefPointerEN4mlir5ValueE.exit87.thread, %_ZN12_GLOBAL__N_116getMemRefPointerEN4mlir5ValueE.exit87
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.de, align 1, !tbaa !86
  store ptr @.str.28, ptr %10, align 8, !tbaa !87
  store i8 3, ptr %i.dd, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store ptr %10, ptr %9, align 8, !tbaa !90
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !97 ; 4 uses
  %.not.i.i.i.i89 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i89, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit91, label %bb.r

bb.r:                                             ; preds = %.thread
  %i.dh = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.dg) #18
  br i1 %i.dh, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i90, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit91

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i90: ; preds = %bb.r
  %i.di = ptrtoint ptr %9 to i64
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 88
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(12) %i.dg, ptr %.sroa.0.0.copyload.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_8LocationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.di) #18, !inline_history !3
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit91

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit91: ; preds = %.thread, %bb.r, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.x

bb.s:                                             ; preds = %_ZN12_GLOBAL__N_116getMemRefPointerEN4mlir5ValueE.exit87
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.dn = call ptr @_ZN4mlir7Builder12getIndexTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dm) #18
  %i.do = call ptr @_ZN4mlir7Builder12getIndexAttrEl(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, i64 noundef 0) #18
  %i.dp = call ptr @_ZN4mlir5emitc10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr %.sroa.0.0.copyload.i.i, ptr %i.dn, ptr %i.do) #18
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -16 ; 2 uses
  %i.dr = call ptr @_ZN4mlir5emitc11SubscriptOp6createERNS_9OpBuilderENS_8LocationENS_6detail10TypedValueINS0_11PointerTypeEEENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr %.sroa.0.0.copyload.i.i, ptr nonnull %.sroa.011.1.i, ptr nonnull %i.dq) #18
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -16
  %i.dt = call ptr @_ZN4mlir5emitc6LoadOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr %.sroa.0.0.copyload.i.i, ptr nonnull %i.al, ptr nonnull %i.ds) #18
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -16
  %i.dv = call ptr @_ZN4mlir5emitc11SubscriptOp6createERNS_9OpBuilderENS_8LocationENS_6detail10TypedValueINS0_11PointerTypeEEENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr %.sroa.0.0.copyload.i.i, ptr nonnull %.sroa.011.1.i80, ptr nonnull %i.dq) #18
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -16
  %.sroa.0.0.copyload.i.i94 = load ptr, ptr %i.a, align 8
  %i.dx = call ptr @_ZN4mlir5emitc8AssignOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr %.sroa.0.0.copyload.i.i94, ptr nonnull %i.dw, ptr nonnull %i.du) #18
  %i.dy = load ptr, ptr %3, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %1, ptr noundef %i.dx) #18, !inline_history !413
  br label %bb.x

bb.t:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i13.i.i96 = load i64, ptr %i.eb, align 8 ; 2 uses
  store i64 %.sroa.0.0.copyload.i13.i.i96, ptr %8, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ec, align 8
  %i.ed = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ef = call fastcc ptr @_ZN12_GLOBAL__N_127createPointerFromEmitcArrayEN4mlir8LocationERNS0_9OpBuilderENS0_6detail10TypedValueINS0_5emitc9ArrayTypeEEE(ptr %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr %i.ed)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.sroa.0.0.copyload.i13.i.i96, ptr %6, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.eg, align 8
  %i.eh = call i64 @_ZN4mlir10ValueRange11offset_baseERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i64 %i.eh, ptr %7, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ei, align 8
  %i.ej = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef 0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ek = call fastcc ptr @_ZN12_GLOBAL__N_127createPointerFromEmitcArrayEN4mlir8LocationERNS0_9OpBuilderENS0_6detail10TypedValueINS0_5emitc9ArrayTypeEEE(ptr %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr %i.ej)
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !62
  %i.en = call ptr @_ZNK4mlir10MemRefType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #18
  %i.eo = call ptr @_ZNK4mlir13TypeConverter11convertTypeENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(508) %i.em, ptr %i.en) #18 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.er, align 1, !tbaa !86
  store ptr @.str.18, ptr %5, align 8, !tbaa !87
  store i8 3, ptr %i.eq, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %5, ptr %4, align 8, !tbaa !90
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !97 ; 4 uses
  %.not.i.i.i.i101 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i101, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit103, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eu = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.et) #18
  br i1 %i.eu, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i102, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit103

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i102: ; preds = %bb.v
  %i.ev = ptrtoint ptr %4 to i64
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 88
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(12) %i.et, ptr %.sroa.0.0.copyload.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_8LocationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ev) #18, !inline_history !3
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit103

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit103: ; preds = %bb.u, %bb.v, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %.sroa.05.0.copyload = load ptr, ptr %22, align 8
  %i.ez = call fastcc ptr @_ZN12_GLOBAL__N_129calculateMemrefTotalSizeBytesEN4mlir8LocationENS0_10MemRefTypeERNS0_9OpBuilderENS0_4TypeE(ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.05.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr nonnull %i.eo)
  call void @_ZN4mlir9TypeRangeC1EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr null, i64 0) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  %i.fa = getelementptr inbounds i8, ptr %i.ek, i64 -16
  %i.fb = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i64 noundef 0) #18
  store ptr %i.fb, ptr %25, align 8, !tbaa !115
  %i.fc = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.fd = getelementptr inbounds i8, ptr %i.ef, i64 -16
  %i.fe = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, i64 noundef 0) #18
  store ptr %i.fe, ptr %i.fc, align 8, !tbaa !115
  %i.ff = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %i.ez, ptr %i.ff, align 8, !tbaa !115
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr nonnull %25, i64 3) #18
  %i.fg = load i64, ptr %23, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.fi = load i64, ptr %i.fh, align 8
  %i.fj = call ptr @_ZN4mlir5emitc12CallOpaqueOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeEN4llvm9StringRefENS_10ValueRangeENS_9ArrayAttrES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr %.sroa.0.0.copyload.i.i, i64 %i.fg, i64 %i.fi, ptr nonnull @.str.29, i64 6, ptr noundef nonnull byval(%"class.mlir::ValueRange") align 8 %24, i64 0, i64 0) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 36
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !134 ; 2 uses
  %i.fm = icmp eq i32 %i.fl, 0
  %i.fn = getelementptr inbounds i8, ptr %i.fj, i64 -16
  %i.fo = zext i32 %i.fl to i64
  %.sroa.0.0.i.i = select i1 %i.fm, ptr null, ptr %i.fn
  call void @_ZN4mlir10ValueRangeC1ENS_11ResultRangeE(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr %.sroa.0.0.i.i, i64 %i.fo) #18
  %i.fp = load i64, ptr %26, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.fr = load i64, ptr %i.fq, align 8
  call void @_ZN4mlir25ConversionPatternRewriter9replaceOpEPNS_9OperationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %1, i64 %i.fp, i64 %i.fr) #18
  br label %bb.x

bb.x:                                             ; preds = %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit103, %bb.w, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit70, %bb.s, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit91, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit66, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.057.3 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit91 ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit66 ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit70 ], [ 1, %bb.s ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit103 ], [ 1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  ret i8 %.sroa.057.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_6memref6CopyOpEE15matchAndRewriteES2_NS1_20CopyOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef byval(%"class.mlir::memref::CopyOpGenericAdaptor.504") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_6memref6CopyOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::memref::CopyOpGenericAdaptor.504") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  ret i8 %i.a
}

declare void @_ZN4mlir6memref6detail24CopyOpGenericAdaptorBaseC2ENS0_6CopyOpE(ptr noundef nonnull align 8 dereferenceable(48), ptr) unnamed_addr #3

end_hunk_1
begin_hunk_2_@_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_6memref6CopyOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE:bb.a
  %.sroa.2.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.2.0.copyload.i12 = load i64, ptr %.sroa.2.0..sroa_idx.i11, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 3, ptr %i.f, align 8, !tbaa !88, !alias.scope !423
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 5, ptr %i.g, align 1, !tbaa !86, !alias.scope !423
  store ptr @.str.12, ptr %7, align 8, !tbaa !87, !alias.scope !423
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.sroa.0.0.copyload.i10, ptr %i.h, align 8, !tbaa !87, !alias.scope !423
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.sroa.2.0.copyload.i12, ptr %i.i, align 8, !tbaa !87, !alias.scope !423
  store ptr %7, ptr %6, align 8, !alias.scope !424
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.13, ptr %i.j, align 8, !alias.scope !424
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.k, align 8, !tbaa !88, !alias.scope !424
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.l, align 1, !tbaa !86, !alias.scope !424
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %6, ptr %4, align 8, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !97   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref6CopyOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  %i.o = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #18
  br i1 %i.o, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref6CopyOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.p, align 8
  %i.q = ptrtoint ptr %4 to i64
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr %.sroa.0.0.copyload.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6memref6CopyOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.q) #18, !inline_history !422
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref6CopyOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref6CopyOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %bb.b, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %5, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !16
  %i.x = zext i32 %i.w to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.u, i64 %i.x) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.z = load <2 x i64>, ptr %9, align 16
  store <2 x i64> %i.z, ptr %i.y, align 8
  %i.aa = load ptr, ptr %0, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::memref::CopyOpAdaptor") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %3) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref6CopyOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit
  %.sroa.09.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref6CopyOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit ], [ %i.ad, %bb.c ]
  %i.ae = load i8, ptr %i.b, align 8, !tbaa !106, !range !107, !noundef !102
  %i.af = trunc nuw i8 %i.ae to i1
  store i8 0, ptr %i.b, align 8, !tbaa !106
  br i1 %i.af, label %bb.e, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.ag) #18
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret i8 %.sroa.09.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6memref6CopyOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(192) %1) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !426, !nonnull !102, !align !103
  %i.c = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(34) %i.b) #18 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_114ConvertDeallocD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #18
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #18
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_6memref9DeallocOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::memref::DeallocOpAdaptor", align 8 ; 3 uses
  %6 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %2, i64 %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.b = load <2 x i64>, ptr %6, align 16
  call void @_ZN4mlir6memref6detail27DeallocOpGenericAdaptorBaseC2ENS0_9DeallocOpE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %1) #18
  store <2 x i64> %i.b, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call i8 %i.e(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::memref::DeallocOpAdaptor") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #18
  ret i8 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_6memref9DeallocOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::memref::DeallocOpGenericAdaptor.634", align 8 ; 4 uses
  call void @_ZN4mlir6memref6detail27DeallocOpGenericAdaptorBaseC2ENS0_9DeallocOpE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %1) #18
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %2, ptr %i.a, align 8, !tbaa !83
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !63
  %i.b = load ptr, ptr %0, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i8 %i.d(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::memref::DeallocOpGenericAdaptor.634") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #18
  ret i8 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_114ConvertDealloc15matchAndRewriteEN4mlir6memref9DeallocOpENS2_16DeallocOpAdaptorERNS1_25ConversionPatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr nofree noundef readonly byval(%"class.mlir::memref::DeallocOpAdaptor") align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %class.anon.436, align 8            ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.mlir::Value", align 8       ; 5 uses
  %7 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %8 = alloca %"class.mlir::TypeRange", align 8   ; 3 uses
  %9 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.mlir::ValueRange", align 8 ; 2 uses
  %12 = alloca [1 x %"class.mlir::Value"], align 8 ; 4 uses
  %13 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i13.i.i = load i64, ptr %i.b, align 8
  store i64 %.sroa.0.0.copyload.i13.i.i, ptr %7, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.c, align 8
  %i.d = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef 0) #18 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.d, ptr %6, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !101
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.j = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_5emitc11PointerTypeEvE2idE
  br i1 %i.j, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #18 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !118
  %i.o = icmp eq ptr %i.n, @_ZN4mlir6detail14TypeIDResolverINS_26UnrealizedConversionCastOpEvE2idE
  %14 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_26UnrealizedConversionCastOpEvE2idE
  %spec.select.i.i.i.i.i.i.i = and i1 %14, %i.o
  br i1 %spec.select.i.i.i.i.i.i.i, label %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.i, label %bb.e

_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.i: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 8388608
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %bb.e, label %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.i, !prof !119

_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.i: ; preds = %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  %i.t = load i32, ptr %i.s, align 4, !tbaa !120
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !113
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !115 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i1.i = load i64, ptr %i.y, align 8
  %i.z = and i64 %.0.copyload.i.i.i.i.i1.i, -8
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !101
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i3.i = load ptr, ptr %i.ac, align 8, !tbaa !38
  %i.ad = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i3.i, @_ZN4mlir6detail14TypeIDResolverINS_5emitc11PointerTypeEvE2idE
  br i1 %i.ad, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.i, %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.i, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.af, align 1, !tbaa !86
  store ptr @.str.32, ptr %5, align 8, !tbaa !87
  store i8 3, ptr %i.ae, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %5, ptr %4, align 8, !tbaa !90
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !97 ; 4 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i20, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ah) #18
  br i1 %i.ai, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.f
  %i.aj = ptrtoint ptr %4 to i64
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.ah, ptr %.sroa.0.0.copyload.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_8LocationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.aj) #18, !inline_history !3
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.e, %bb.f, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.a
  %.sroa.011.1.i.ph = phi ptr [ %i.d, %bb.a ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !108
  %i.ap = call ptr @_ZN4mlir5emitc10OpaqueType3getEPNS_11MLIRContextEN4llvm9StringRefE(ptr noundef %i.ao, ptr nonnull @.str.21, i64 4) #18
  %i.aq = call ptr @_ZN4mlir5emitc11PointerType3getENS_4TypeE(ptr %i.ap) #18
  %i.ar = call ptr @_ZN4mlir5emitc6CastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr %.sroa.0.0.copyload.i.i, ptr %i.aq, ptr nonnull %.sroa.011.1.i.ph, i1 noundef zeroext false) #18
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -16
  call void @_ZN4mlir9TypeRangeC1EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr null, i64 0) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.au, align 1, !tbaa !86
  store ptr @.str.33, ptr %10, align 8, !tbaa !87
  store i8 3, ptr %i.at, align 8, !tbaa !88
  %i.av = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(34) %10) #18
  store ptr %i.av, ptr %9, align 8
  %i.aw = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #18 ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0
  %i.ay = extractvalue { ptr, i64 } %i.aw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  store ptr %i.as, ptr %12, align 8, !tbaa !115
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr nonnull %12, i64 1) #18
  %i.az = load i64, ptr %8, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = call ptr @_ZN4mlir5emitc12CallOpaqueOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeEN4llvm9StringRefENS_10ValueRangeENS_9ArrayAttrES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr %.sroa.0.0.copyload.i.i, i64 %i.az, i64 %i.bb, ptr %i.ax, i64 %i.ay, ptr noundef nonnull byval(%"class.mlir::ValueRange") align 8 %11, i64 0, i64 0) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 36
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !134 ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  %i.bg = getelementptr inbounds i8, ptr %i.bc, i64 -16
  %i.bh = zext i32 %i.be to i64
  %.sroa.0.0.i.i = select i1 %i.bf, ptr null, ptr %i.bg
  call void @_ZN4mlir10ValueRangeC1ENS_11ResultRangeE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr %.sroa.0.0.i.i, i64 %i.bh) #18
  %i.bi = load i64, ptr %13, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bk = load i64, ptr %i.bj, align 8
  call void @_ZN4mlir25ConversionPatternRewriter9replaceOpEPNS_9OperationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %1, i64 %i.bi, i64 %i.bk) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.018.0 = phi i8 [ 1, %bb.g ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit ]
  ret i8 %.sroa.018.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_6memref9DeallocOpEE15matchAndRewriteES2_NS1_23DeallocOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef byval(%"class.mlir::memref::DeallocOpGenericAdaptor.634") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_6memref9DeallocOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::memref::DeallocOpGenericAdaptor.634") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  ret i8 %i.a
}

declare void @_ZN4mlir6memref6detail27DeallocOpGenericAdaptorBaseC2ENS0_9DeallocOpE(ptr noundef nonnull align 8 dereferenceable(48), ptr) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_6memref9DeallocOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef byval(%"class.mlir::memref::DeallocOpGenericAdaptor.634") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %class.anon.635, align 8            ; 4 uses
  %5 = alloca %"class.llvm::FailureOr", align 8   ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %8 = alloca %"class.mlir::memref::DeallocOpAdaptor", align 8 ; 3 uses
  %9 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !83
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !63
  call void @_ZNK4mlir17ConversionPattern26getOneToOneAdaptorOperandsEN4llvm8ArrayRefINS_10ValueRangeEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::FailureOr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #18
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !106, !range !107, !noundef !102
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i10 = load ptr, ptr %i.e, align 8, !tbaa !64
  %.sroa.2.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.2.0.copyload.i12 = load i64, ptr %.sroa.2.0..sroa_idx.i11, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 3, ptr %i.f, align 8, !tbaa !88, !alias.scope !434
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 5, ptr %i.g, align 1, !tbaa !86, !alias.scope !434
  store ptr @.str.12, ptr %7, align 8, !tbaa !87, !alias.scope !434
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.sroa.0.0.copyload.i10, ptr %i.h, align 8, !tbaa !87, !alias.scope !434
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.sroa.2.0.copyload.i12, ptr %i.i, align 8, !tbaa !87, !alias.scope !434
  store ptr %7, ptr %6, align 8, !alias.scope !435
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.13, ptr %i.j, align 8, !alias.scope !435
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.k, align 8, !tbaa !88, !alias.scope !435
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.l, align 1, !tbaa !86, !alias.scope !435
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %6, ptr %4, align 8, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !97   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref9DeallocOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  %i.o = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #18
  br i1 %i.o, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref9DeallocOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.p, align 8
  %i.q = ptrtoint ptr %4 to i64
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr %.sroa.0.0.copyload.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6memref9DeallocOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.q) #18, !inline_history !433
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref9DeallocOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref9DeallocOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %bb.b, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %5, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !16
  %i.x = zext i32 %i.w to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.u, i64 %i.x) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.z = load <2 x i64>, ptr %9, align 16
  store <2 x i64> %i.z, ptr %i.y, align 8
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_111ConvertLoadD0Ev:bb.a
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #18
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #18
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_6memref6LoadOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::memref::LoadOpAdaptor", align 8 ; 3 uses
  %6 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %2, i64 %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.b = load <2 x i64>, ptr %6, align 16
  call void @_ZN4mlir6memref6detail24LoadOpGenericAdaptorBaseC2ENS0_6LoadOpE(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr %1) #18
  store <2 x i64> %i.b, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call i8 %i.e(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::memref::LoadOpAdaptor") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #18
  ret i8 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_6memref6LoadOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::memref::LoadOpGenericAdaptor.861", align 8 ; 4 uses
  call void @_ZN4mlir6memref6detail24LoadOpGenericAdaptorBaseC2ENS0_6LoadOpE(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr %1) #18
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr %2, ptr %i.a, align 8, !tbaa !83
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !63
  %i.b = load ptr, ptr %0, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i8 %i.d(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::memref::LoadOpGenericAdaptor.861") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #18
  ret i8 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_111ConvertLoad15matchAndRewriteEN4mlir6memref6LoadOpENS2_13LoadOpAdaptorERNS1_25ConversionPatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr %1, ptr noundef byval(%"class.mlir::memref::LoadOpAdaptor") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %5 = alloca %class.anon.436, align 8            ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %8 = alloca %"class.mlir::Value", align 8       ; 5 uses
  %9 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %10 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %11 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %12 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %13 = alloca %class.anon.436, align 8           ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %"class.mlir::memref::LoadOp", align 8 ; 4 uses
  %16 = alloca %"class.mlir::ImplicitLocOpBuilder", align 8 ; 5 uses
  store ptr %1, ptr %15, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.d = getelementptr inbounds i8, ptr %1, i64 -8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.d, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call ptr @_ZNK4mlir13TypeConverter11convertTypeENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(508) %i.c, ptr %i.f) #18 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.j, align 1, !tbaa !86
  store ptr @.str.10, ptr %14, align 8, !tbaa !87
  store i8 3, ptr %i.i, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  store ptr %14, ptr %13, align 8, !tbaa !90
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !97   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #18
  br i1 %i.m, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.c
  %i.n = ptrtoint ptr %13 to i64
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.l, ptr %.sroa.0.0.copyload.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_8LocationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.n) #18, !inline_history !3
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.b, %bb.c, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !156
  %i.t = trunc i64 %i.s to i32
  %i.u = call i64 @_ZN4mlir6memref6detail24LoadOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef 0, i32 noundef %i.t) #18
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %.sroa.0.0.copyload.i13.i.i = load i64, ptr %i.v, align 8 ; 2 uses
  %i.w = and i64 %i.u, 4294967295                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 %.sroa.0.0.copyload.i13.i.i, ptr %11, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.w, ptr %i.x, align 8
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %_ZN4mlir6memref20LoadOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = call i64 @_ZN4mlir10ValueRange11offset_baseERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %i.w) #18
  br label %_ZN4mlir6memref20LoadOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit

_ZN4mlir6memref20LoadOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.z, %bb.e ], [ %.sroa.0.0.copyload.i13.i.i, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %12, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.aa, align 8
  %i.ab = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef 0) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8
  %i.ad = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !101
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !38
  %.not = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_5emitc9ArrayTypeEvE2idE
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.ah = load i64, ptr %i.r, align 8, !tbaa !156
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = call i64 @_ZN4mlir6memref6detail24LoadOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef 0, i32 noundef %i.ai) #18
  %.sroa.0.0.copyload.i13.i.i27 = load i64, ptr %i.v, align 8 ; 2 uses
  %i.ak = and i64 %i.aj, 4294967295               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %.sroa.0.0.copyload.i13.i.i27, ptr %9, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %_ZN4mlir6memref20LoadOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit29, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir6memref20LoadOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit
  %i.an = call i64 @_ZN4mlir10ValueRange11offset_baseERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %i.ak) #18
  br label %_ZN4mlir6memref20LoadOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit29

_ZN4mlir6memref20LoadOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit29: ; preds = %_ZN4mlir6memref20LoadOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit, %bb.f
  %.sroa.0.0.i.i.i.i.i28 = phi i64 [ %i.an, %bb.f ], [ %.sroa.0.0.copyload.i13.i.i27, %_ZN4mlir6memref20LoadOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store i64 %.sroa.0.0.i.i.i.i.i28, ptr %10, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.ao, align 8
  %i.ap = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 noundef 0) #18 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.ap, ptr %8, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.0.copyload.i.i.i.i.i.i30 = load i64, ptr %i.aq, align 8
  %i.ar = and i64 %.0.copyload.i.i.i.i.i.i30, -8
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !101
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !38
  %i.av = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_5emitc11PointerTypeEvE2idE
  br i1 %i.av, label %bb.o, label %bb.g

bb.g:                                             ; preds = %_ZN4mlir6memref20LoadOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit29
  %i.aw = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #18 ; 5 uses
  %.not.i.i.i.i31 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i31, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i32 = load ptr, ptr %i.ax, align 8, !tbaa !117
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i32, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !118
  %i.ba = icmp eq ptr %i.az, @_ZN4mlir6detail14TypeIDResolverINS_26UnrealizedConversionCastOpEvE2idE
  %17 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_26UnrealizedConversionCastOpEvE2idE
  %spec.select.i.i.i.i.i.i.i = and i1 %17, %i.ba
  br i1 %spec.select.i.i.i.i.i.i.i, label %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.i, label %bb.j

_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.i: ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 44
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = and i32 %i.bc, 8388608
  %.not.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i, label %bb.j, label %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.i, !prof !119

_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.i: ; preds = %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 68
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !120
  %i.bg = icmp eq i32 %i.bf, 1
  br i1 %i.bg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !113
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !115 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i1.i = load i64, ptr %i.bk, align 8
  %i.bl = and i64 %.0.copyload.i.i.i.i.i1.i, -8
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !101
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i3.i = load ptr, ptr %i.bo, align 8, !tbaa !38
  %i.bp = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i3.i, @_ZN4mlir6detail14TypeIDResolverINS_5emitc11PointerTypeEvE2idE
  br i1 %i.bp, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.i, %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.i, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br i1 %.not, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.r, align 8, !tbaa !156
  %i.bs = trunc i64 %i.br to i32
  %i.bt = call i64 @_ZN4mlir6memref6detail24LoadOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef 1, i32 noundef %i.bs) #18 ; 3 uses
  %.sroa.0.0.copyload.i13.i.i33 = load i64, ptr %i.v, align 8 ; 2 uses
  %i.bu = and i64 %i.bt, 4294967295               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.0.0.copyload.i13.i.i33, ptr %7, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.bu, ptr %i.bv, align 8
  %i.bw = icmp eq i64 %i.bu, 0
  br i1 %i.bw, label %_ZN4mlir6memref20LoadOpGenericAdaptorINS_10ValueRangeEE10getIndicesEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = call i64 @_ZN4mlir10ValueRange11offset_baseERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.bu) #18
  %.pre.i.i.i.i = load i64, ptr %i.bv, align 8, !tbaa !158
  br label %_ZN4mlir6memref20LoadOpGenericAdaptorINS_10ValueRangeEE10getIndicesEv.exit

_ZN4mlir6memref20LoadOpGenericAdaptorINS_10ValueRangeEE10getIndicesEv.exit: ; preds = %bb.k, %bb.l
  %i.by = phi i64 [ %.pre.i.i.i.i, %bb.l ], [ 0, %bb.k ]
  %.sroa.0.0.i.i.i.i.i34 = phi i64 [ %i.bx, %bb.l ], [ %.sroa.0.0.copyload.i13.i.i33, %bb.k ]
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.bt, 32
  %i.bz = add i64 %.sroa.5.0.extract.shift.i.i, %i.bt
  %i.ca = and i64 %i.bz, 4294967295
  %i.cb = sub nsw i64 %i.ca, %i.by
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.cc = call ptr @_ZN4mlir5emitc11SubscriptOp6createERNS_9OpBuilderENS_8LocationENS_6detail10TypedValueINS0_9ArrayTypeEEENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr %.sroa.0.0.copyload.i.i, ptr nonnull %i.ab, i64 %.sroa.0.0.i.i.i.i.i34, i64 %i.cb) #18
  %.sroa.0.0.copyload.i.i35 = load ptr, ptr %i.a, align 8
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -16
  %i.ce = call ptr @_ZN4mlir5emitc6LoadOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr %.sroa.0.0.copyload.i.i35, ptr nonnull %i.g, ptr nonnull %i.cd) #18
  %i.cf = load ptr, ptr %3, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %1, ptr noundef %i.ce) #18, !inline_history !476
  br label %bb.q

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.cj, align 1, !tbaa !86
  store ptr @.str.49, ptr %6, align 8, !tbaa !87
  store i8 3, ptr %i.ci, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %6, ptr %5, align 8, !tbaa !90
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !97 ; 4 uses
  %.not.i.i.i.i37 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i37, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit39, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cm = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.cl) #18
  br i1 %i.cm, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i38, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit39

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i38: ; preds = %bb.n
  %i.cn = ptrtoint ptr %5 to i64
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 88
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(12) %i.cl, ptr %.sroa.0.0.copyload.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_8LocationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.cn) #18, !inline_history !3
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit39

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit39: ; preds = %bb.m, %bb.n, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.q

bb.o:                                             ; preds = %_ZN4mlir6memref20LoadOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit29, %bb.i
  %.sroa.011.1.i.ph = phi ptr [ %i.ap, %_ZN4mlir6memref20LoadOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit29 ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.cr = call i64 @_ZN4mlir6memref6LoadOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 0) #18
  %i.cs = load ptr, ptr %15, align 8, !tbaa !98
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !113
  %i.cv = and i64 %i.cr, 4294967295
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %.sroa.0.0.copyload.i.i.i.i40 = load ptr, ptr %i.cx, align 8, !tbaa !115
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i40, i64 8
  %.0.copyload.i.i.i.i.i.i41 = load i64, ptr %i.cy, align 8
  %i.cz = and i64 %.0.copyload.i.i.i.i.i.i41, -8
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = load i64, ptr %i.r, align 8, !tbaa !156
  %i.dc = trunc i64 %i.db to i32
  %i.dd = call i64 @_ZN4mlir6memref6detail24LoadOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef 1, i32 noundef %i.dc) #18 ; 3 uses
  %.sroa.0.0.copyload.i13.i.i43 = load i64, ptr %i.v, align 8 ; 2 uses
  %i.de = and i64 %i.dd, 4294967295               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.0.0.copyload.i13.i.i43, ptr %4, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.de, ptr %i.df, align 8
  %i.dg = icmp eq i64 %i.de, 0
  br i1 %i.dg, label %_ZN4mlir6memref20LoadOpGenericAdaptorINS_10ValueRangeEE10getIndicesEv.exit49, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dh = call i64 @_ZN4mlir10ValueRange11offset_baseERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.de) #18
  %.pre.i.i.i.i44 = load i64, ptr %i.df, align 8, !tbaa !158
  br label %_ZN4mlir6memref20LoadOpGenericAdaptorINS_10ValueRangeEE10getIndicesEv.exit49

_ZN4mlir6memref20LoadOpGenericAdaptorINS_10ValueRangeEE10getIndicesEv.exit49: ; preds = %bb.o, %bb.p
  %i.di = phi i64 [ %.pre.i.i.i.i44, %bb.p ], [ 0, %bb.o ]
  %.sroa.0.0.i.i.i.i.i45 = phi i64 [ %i.dh, %bb.p ], [ %.sroa.0.0.copyload.i13.i.i43, %bb.o ]
  %.sroa.5.0.extract.shift.i.i46 = lshr i64 %i.dd, 32
  %i.dj = add i64 %.sroa.5.0.extract.shift.i.i46, %i.dd
  %i.dk = and i64 %i.dj, 4294967295
  %i.dl = sub nsw i64 %i.dk, %i.di
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.dm, i64 32, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.dn, align 8
  %i.do = call fastcc ptr @_ZN12_GLOBAL__N_126computeRowMajorLinearIndexERN4mlir20ImplicitLocOpBuilderENS0_10MemRefTypeENS0_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr %i.da, i64 %.sroa.0.0.i.i.i.i.i45, i64 %i.dl)
  %i.dp = call ptr @_ZN4mlir5emitc11SubscriptOp6createERNS_9OpBuilderENS_8LocationENS_6detail10TypedValueINS0_11PointerTypeEEENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr %.sroa.0.0.copyload.i.i, ptr nonnull %.sroa.011.1.i.ph, ptr %i.do) #18
  %i.dq = load ptr, ptr %15, align 8, !tbaa !98   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %.sroa.0.0.copyload.i.i51 = load ptr, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds i8, ptr %i.dp, i64 -16
  %i.dt = call ptr @_ZN4mlir5emitc6LoadOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr %.sroa.0.0.copyload.i.i51, ptr nonnull %i.g, ptr nonnull %i.ds) #18
  %i.du = load ptr, ptr %3, align 8, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.dq, ptr noundef %i.dt) #18, !inline_history !476
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.q

bb.q:                                             ; preds = %_ZN4mlir6memref20LoadOpGenericAdaptorINS_10ValueRangeEE10getIndicesEv.exit, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit39, %_ZN4mlir6memref20LoadOpGenericAdaptorINS_10ValueRangeEE10getIndicesEv.exit49, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.025.1 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit ], [ 1, %_ZN4mlir6memref20LoadOpGenericAdaptorINS_10ValueRangeEE10getIndicesEv.exit49 ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit39 ], [ 1, %_ZN4mlir6memref20LoadOpGenericAdaptorINS_10ValueRangeEE10getIndicesEv.exit ]
  ret i8 %.sroa.025.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_6memref6LoadOpEE15matchAndRewriteES2_NS1_20LoadOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef byval(%"class.mlir::memref::LoadOpGenericAdaptor.861") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_6memref6LoadOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::memref::LoadOpGenericAdaptor.861") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  ret i8 %i.a
}

declare void @_ZN4mlir6memref6detail24LoadOpGenericAdaptorBaseC2ENS0_6LoadOpE(ptr noundef nonnull align 8 dereferenceable(64), ptr) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN12_GLOBAL__N_126computeRowMajorLinearIndexERN4mlir20ImplicitLocOpBuilderENS0_10MemRefTypeENS0_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i64 %2, i64 %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.mlir::MemRefType", align 8  ; 2 uses
  %5 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %6 = alloca %"struct.llvm::detail::zip_shortest", align 8 ; 6 uses
  store ptr %1, ptr %4, align 8
  store i64 %2, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %3, ptr %i.a, align 8
  %i.b = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_ZN4mlir7Builder12getIndexTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 0) #18
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.h, align 8
  %i.i = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.j = inttoptr i64 %i.i to ptr
end_hunk_3
begin_hunk_4_@_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6memref6LoadOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_:bb.a
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !501, !nonnull !102, !align !103
  %i.c = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(34) %i.b) #18 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir14RewritePatternD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #18
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir7PatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #18
  br label %_ZN4mlir7PatternD2Ev.exit

_ZN4mlir7PatternD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_112ConvertStoreD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #18
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #18
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_6memref7StoreOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::memref::StoreOpAdaptor", align 8 ; 3 uses
  %6 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %2, i64 %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.b = load <2 x i64>, ptr %6, align 16
  call void @_ZN4mlir6memref6detail25StoreOpGenericAdaptorBaseC2ENS0_7StoreOpE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr %1) #18
  store <2 x i64> %i.b, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call i8 %i.e(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::memref::StoreOpAdaptor") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #18
  ret i8 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_6memref7StoreOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::memref::StoreOpGenericAdaptor.950", align 8 ; 4 uses
  call void @_ZN4mlir6memref6detail25StoreOpGenericAdaptorBaseC2ENS0_7StoreOpE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr %1) #18
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %2, ptr %i.a, align 8, !tbaa !83
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !63
  %i.b = load ptr, ptr %0, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i8 %i.d(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::memref::StoreOpGenericAdaptor.950") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #18
  ret i8 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_112ConvertStore15matchAndRewriteEN4mlir6memref7StoreOpENS2_14StoreOpAdaptorERNS1_25ConversionPatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::memref::StoreOpAdaptor") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %5 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %6 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %7 = alloca %class.anon.436, align 8            ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %10 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %11 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %12 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %13 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %14 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %15 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %16 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %17 = alloca %"class.mlir::memref::StoreOp", align 8 ; 4 uses
  %18 = alloca %"class.mlir::ImplicitLocOpBuilder", align 8 ; 5 uses
  store ptr %1, ptr %17, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !156
  %i.d = trunc i64 %i.c to i32
  %i.e = call i64 @_ZN4mlir6memref6detail25StoreOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef 1, i32 noundef %i.d) #18
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  %.sroa.0.0.copyload.i13.i.i = load i64, ptr %i.f, align 8 ; 2 uses
  %i.g = and i64 %i.e, 4294967295                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  store i64 %.sroa.0.0.copyload.i13.i.i, ptr %15, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.g, ptr %i.h, align 8
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call i64 @_ZN4mlir10ValueRange11offset_baseERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %i.g) #18
  br label %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit

_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.j, %bb.b ], [ %.sroa.0.0.copyload.i13.i.i, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %16, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.k, align 8
  %i.l = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef 0) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8
  %i.n = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !38
  %.not = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_5emitc9ArrayTypeEvE2idE
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.r = load i64, ptr %i.b, align 8, !tbaa !156
  %i.s = trunc i64 %i.r to i32
  %i.t = call i64 @_ZN4mlir6memref6detail25StoreOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef 1, i32 noundef %i.s) #18
  %.sroa.0.0.copyload.i13.i.i23 = load i64, ptr %i.f, align 8 ; 2 uses
  %i.u = and i64 %i.t, 4294967295                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store i64 %.sroa.0.0.copyload.i13.i.i23, ptr %13, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.u, ptr %i.v, align 8
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit25, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit
  %i.x = call i64 @_ZN4mlir10ValueRange11offset_baseERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %i.u) #18
  br label %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit25

_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit25: ; preds = %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit, %bb.c
  %.sroa.0.0.i.i.i.i.i24 = phi i64 [ %i.x, %bb.c ], [ %.sroa.0.0.copyload.i13.i.i23, %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  store i64 %.sroa.0.0.i.i.i.i.i24, ptr %14, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.y, align 8
  %i.z = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef 0) #18 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %i.z, ptr %12, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.aa, align 8
  %i.ab = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !101
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !38
  %i.af = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_5emitc11PointerTypeEvE2idE
  br i1 %i.af, label %bb.m, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit25
  %i.ag = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #18 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i26 = load ptr, ptr %i.ah, align 8, !tbaa !117
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i26, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !118
  %i.ak = icmp eq ptr %i.aj, @_ZN4mlir6detail14TypeIDResolverINS_26UnrealizedConversionCastOpEvE2idE
  %19 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_26UnrealizedConversionCastOpEvE2idE
  %spec.select.i.i.i.i.i.i.i = and i1 %19, %i.ak
  br i1 %spec.select.i.i.i.i.i.i.i, label %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.i, label %bb.g

_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.i: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 44
  %i.am = load i32, ptr %i.al, align 4
  %i.an = and i32 %i.am, 8388608
  %.not.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i, label %bb.g, label %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.i, !prof !119

_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.i: ; preds = %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 68
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !120
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !113
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !115 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i1.i = load i64, ptr %i.au, align 8
  %i.av = and i64 %.0.copyload.i.i.i.i.i1.i, -8
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !101
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i3.i = load ptr, ptr %i.ay, align 8, !tbaa !38
  %i.az = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i3.i, @_ZN4mlir6detail14TypeIDResolverINS_5emitc11PointerTypeEvE2idE
  br i1 %i.az, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.i, %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.i, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br i1 %.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !156
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = call i64 @_ZN4mlir6memref6detail25StoreOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef 2, i32 noundef %i.bc) #18 ; 3 uses
  %.sroa.0.0.copyload.i13.i.i27 = load i64, ptr %i.f, align 8 ; 2 uses
  %i.be = and i64 %i.bd, 4294967295               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 %.sroa.0.0.copyload.i13.i.i27, ptr %11, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 %i.be, ptr %i.bf, align 8
  %i.bg = icmp eq i64 %i.be, 0
  br i1 %i.bg, label %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE10getIndicesEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = call i64 @_ZN4mlir10ValueRange11offset_baseERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %i.be) #18
  %.pre.i.i.i.i = load i64, ptr %i.bf, align 8, !tbaa !158
  br label %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE10getIndicesEv.exit

_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE10getIndicesEv.exit: ; preds = %bb.h, %bb.i
  %i.bi = phi i64 [ %.pre.i.i.i.i, %bb.i ], [ 0, %bb.h ]
  %.sroa.0.0.i.i.i.i.i28 = phi i64 [ %i.bh, %bb.i ], [ %.sroa.0.0.copyload.i13.i.i27, %bb.h ]
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.bd, 32
  %i.bj = add i64 %.sroa.5.0.extract.shift.i.i, %i.bd
  %i.bk = and i64 %i.bj, 4294967295
  %i.bl = sub nsw i64 %i.bk, %i.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.bm = call ptr @_ZN4mlir5emitc11SubscriptOp6createERNS_9OpBuilderENS_8LocationENS_6detail10TypedValueINS0_9ArrayTypeEEENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr %.sroa.0.0.copyload.i.i, ptr nonnull %i.l, i64 %.sroa.0.0.i.i.i.i.i28, i64 %i.bl) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !156
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = call i64 @_ZN4mlir6memref6detail25StoreOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef 0, i32 noundef %i.bo) #18
  %.sroa.0.0.copyload.i13.i.i29 = load i64, ptr %i.f, align 8 ; 2 uses
  %i.bq = and i64 %i.bp, 4294967295               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %.sroa.0.0.copyload.i13.i.i29, ptr %9, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.bq, ptr %i.br, align 8
  %i.bs = icmp eq i64 %i.bq, 0
  br i1 %i.bs, label %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE8getValueEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE10getIndicesEv.exit
  %i.bt = call i64 @_ZN4mlir10ValueRange11offset_baseERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %i.bq) #18
  br label %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE8getValueEv.exit

_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE8getValueEv.exit: ; preds = %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE10getIndicesEv.exit, %bb.j
  %.sroa.0.0.i.i.i.i.i30 = phi i64 [ %i.bt, %bb.j ], [ %.sroa.0.0.copyload.i13.i.i29, %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE10getIndicesEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store i64 %.sroa.0.0.i.i.i.i.i30, ptr %10, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.bu, align 8
  %i.bv = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 noundef 0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.sroa.0.0.copyload.i.i31 = load ptr, ptr %i.a, align 8
  %i.bw = getelementptr inbounds i8, ptr %i.bm, i64 -16
  %i.bx = call ptr @_ZN4mlir5emitc8AssignOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr %.sroa.0.0.copyload.i.i31, ptr nonnull %i.bw, ptr %i.bv) #18
  %i.by = load ptr, ptr %3, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %1, ptr noundef %i.bx) #18, !inline_history !502
  br label %bb.p

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.cc, align 1, !tbaa !86
  store ptr @.str.49, ptr %8, align 8, !tbaa !87
  store i8 3, ptr %i.cb, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr %8, ptr %7, align 8, !tbaa !90
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !97 ; 4 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i34, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ce) #18
  br i1 %i.cf, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.l
  %i.cg = ptrtoint ptr %7 to i64
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 88
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(12) %i.ce, ptr %.sroa.0.0.copyload.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_8LocationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.cg) #18, !inline_history !3
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.k, %bb.l, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.p

bb.m:                                             ; preds = %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit25, %bb.f
  %.sroa.011.1.i.ph = phi ptr [ %i.z, %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE9getMemrefEv.exit25 ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.ck = call i64 @_ZN4mlir6memref7StoreOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1) #18
  %i.cl = load ptr, ptr %17, align 8, !tbaa !98
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !113
  %i.co = and i64 %i.ck, 4294967295
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %.sroa.0.0.copyload.i.i.i.i35 = load ptr, ptr %i.cq, align 8, !tbaa !115
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i35, i64 8
  %.0.copyload.i.i.i.i.i.i36 = load i64, ptr %i.cr, align 8
  %i.cs = and i64 %.0.copyload.i.i.i.i.i.i36, -8
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = load i64, ptr %i.b, align 8, !tbaa !156
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = call i64 @_ZN4mlir6memref6detail25StoreOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef 2, i32 noundef %i.cv) #18 ; 3 uses
  %.sroa.0.0.copyload.i13.i.i38 = load i64, ptr %i.f, align 8 ; 2 uses
  %i.cx = and i64 %i.cw, 4294967295               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.sroa.0.0.copyload.i13.i.i38, ptr %6, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.cx, ptr %i.cy, align 8
  %i.cz = icmp eq i64 %i.cx, 0
  br i1 %i.cz, label %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE10getIndicesEv.exit44, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.da = call i64 @_ZN4mlir10ValueRange11offset_baseERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %i.cx) #18
  %.pre.i.i.i.i39 = load i64, ptr %i.cy, align 8, !tbaa !158
  br label %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE10getIndicesEv.exit44

_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE10getIndicesEv.exit44: ; preds = %bb.m, %bb.n
  %i.db = phi i64 [ %.pre.i.i.i.i39, %bb.n ], [ 0, %bb.m ]
  %.sroa.0.0.i.i.i.i.i40 = phi i64 [ %i.da, %bb.n ], [ %.sroa.0.0.copyload.i13.i.i38, %bb.m ]
  %.sroa.5.0.extract.shift.i.i41 = lshr i64 %i.cw, 32
  %i.dc = add i64 %.sroa.5.0.extract.shift.i.i41, %i.cw
  %i.dd = and i64 %i.dc, 4294967295
  %i.de = sub nsw i64 %i.dd, %i.db
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.df, i64 32, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %18, i64 32
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.dg, align 8
  %i.dh = call fastcc ptr @_ZN12_GLOBAL__N_126computeRowMajorLinearIndexERN4mlir20ImplicitLocOpBuilderENS0_10MemRefTypeENS0_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr %i.ct, i64 %.sroa.0.0.i.i.i.i.i40, i64 %i.de)
  %i.di = call ptr @_ZN4mlir5emitc11SubscriptOp6createERNS_9OpBuilderENS_8LocationENS_6detail10TypedValueINS0_11PointerTypeEEENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.df, ptr %.sroa.0.0.copyload.i.i, ptr nonnull %.sroa.011.1.i.ph, ptr %i.dh) #18
  %i.dj = load ptr, ptr %17, align 8, !tbaa !98   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.dk = load i64, ptr %i.b, align 8, !tbaa !156
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = call i64 @_ZN4mlir6memref6detail25StoreOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef 0, i32 noundef %i.dl) #18
  %.sroa.0.0.copyload.i13.i.i46 = load i64, ptr %i.f, align 8 ; 2 uses
  %i.dn = and i64 %i.dm, 4294967295               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.0.0.copyload.i13.i.i46, ptr %4, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.dn, ptr %i.do, align 8
  %i.dp = icmp eq i64 %i.dn, 0
  br i1 %i.dp, label %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE8getValueEv.exit48, label %bb.o

bb.o:                                             ; preds = %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE10getIndicesEv.exit44
  %i.dq = call i64 @_ZN4mlir10ValueRange11offset_baseERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.dn) #18
  br label %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE8getValueEv.exit48

_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE8getValueEv.exit48: ; preds = %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE10getIndicesEv.exit44, %bb.o
  %.sroa.0.0.i.i.i.i.i47 = phi i64 [ %i.dq, %bb.o ], [ %.sroa.0.0.copyload.i13.i.i46, %_ZN4mlir6memref21StoreOpGenericAdaptorINS_10ValueRangeEE10getIndicesEv.exit44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i64 %.sroa.0.0.i.i.i.i.i47, ptr %5, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.dr, align 8
  %i.ds = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
end_hunk_4
