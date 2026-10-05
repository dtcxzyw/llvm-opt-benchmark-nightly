Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WmmaOpsToSPIRV?download=true
inline.NumInlined: 2177
inline.NumDeleted: 1247
begin_hunk_0
%"class.mlir::Type" = type { ptr }
%"class.mlir::IntegerType" = type { %"class.mlir::detail::StorageUserBase.157" }
%"class.mlir::detail::StorageUserBase.157" = type { %"class.mlir::Type" }
%class.anon.348 = type { ptr }
%"class.mlir::gpu::SubgroupMmaStoreMatrixOpAdaptor" = type { %"class.mlir::gpu::SubgroupMmaStoreMatrixOpGenericAdaptor" }
%"class.mlir::gpu::SubgroupMmaStoreMatrixOpGenericAdaptor" = type { %"class.mlir::gpu::detail::SubgroupMmaStoreMatrixOpGenericAdaptorBase", %"class.mlir::ValueRange" }
%"class.mlir::gpu::detail::SubgroupMmaStoreMatrixOpGenericAdaptorBase" = type { %"class.mlir::DictionaryAttr", %"class.std::optional.112", %"struct.mlir::gpu::detail::SubgroupMmaStoreMatrixOpGenericAdaptorBase::Properties", %"class.mlir::RegionRange" }
%"struct.mlir::gpu::detail::SubgroupMmaStoreMatrixOpGenericAdaptorBase::Properties" = type { %"class.mlir::IntegerAttr", %"class.mlir::UnitAttr" }
%"class.mlir::gpu::SubgroupMmaStoreMatrixOpGenericAdaptor.379" = type { %"class.mlir::gpu::detail::SubgroupMmaStoreMatrixOpGenericAdaptorBase", %"class.llvm::ArrayRef.96" }
%"class.mlir::gpu::SubgroupMmaStoreMatrixOp" = type { %"class.mlir::Op.360" }
%"class.mlir::Op.360" = type { %"class.mlir::OpState" }
%class.anon.408 = type { ptr }
%"class.mlir::gpu::SubgroupMmaConstantMatrixOpAdaptor" = type { %"class.mlir::gpu::SubgroupMmaConstantMatrixOpGenericAdaptor" }
%"class.mlir::gpu::SubgroupMmaConstantMatrixOpGenericAdaptor" = type { %"class.mlir::gpu::detail::SubgroupMmaConstantMatrixOpGenericAdaptorBase", %"class.mlir::ValueRange" }
%"class.mlir::gpu::detail::SubgroupMmaConstantMatrixOpGenericAdaptorBase" = type { %"class.mlir::DictionaryAttr", %"class.std::optional.112", [8 x i8], %"class.mlir::RegionRange" }
%"class.mlir::gpu::SubgroupMmaConstantMatrixOpGenericAdaptor.442" = type { %"class.mlir::gpu::detail::SubgroupMmaConstantMatrixOpGenericAdaptorBase", %"class.llvm::ArrayRef.96" }
%class.anon.474 = type { ptr }
%"class.mlir::Value" = type { ptr }
%"class.mlir::gpu::SubgroupMmaExtractThreadLocalOpAdaptor" = type { %"class.mlir::gpu::SubgroupMmaExtractThreadLocalOpGenericAdaptor" }
%"class.mlir::gpu::SubgroupMmaExtractThreadLocalOpGenericAdaptor" = type { %"class.mlir::gpu::detail::SubgroupMmaExtractThreadLocalOpGenericAdaptorBase", %"class.mlir::ValueRange" }
%"class.mlir::gpu::detail::SubgroupMmaExtractThreadLocalOpGenericAdaptorBase" = type { %"class.mlir::DictionaryAttr", %"class.std::optional.112", [8 x i8], %"class.mlir::RegionRange" }
%"class.mlir::gpu::SubgroupMmaExtractThreadLocalOpGenericAdaptor.514" = type { %"class.mlir::gpu::detail::SubgroupMmaExtractThreadLocalOpGenericAdaptorBase", %"class.llvm::ArrayRef.96" }
%class.anon.597 = type { ptr }
%"class.mlir::gpu::SubgroupMmaExtractThreadLocalOp" = type { %"class.mlir::Op.486" }
%"class.mlir::Op.486" = type { %"class.mlir::OpState" }
%"class.llvm::SmallVector.515" = type { %"class.llvm::SmallVectorImpl.516", %"struct.llvm::SmallVectorStorage.519" }
%"class.llvm::SmallVectorImpl.516" = type { %"class.llvm::SmallVectorTemplateBase.517" }
%"class.llvm::SmallVectorTemplateBase.517" = type { %"class.llvm::SmallVectorTemplateCommon.518" }
%"class.llvm::SmallVectorTemplateCommon.518" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.519" = type { [48 x i8] }
%"class.mlir::arith::ConstantIndexOp" = type { %"class.mlir::arith::ConstantOp" }
%"class.mlir::arith::ConstantOp" = type { %"class.mlir::Op.520" }
%"class.mlir::Op.520" = type { %"class.mlir::OpState" }
%"class.mlir::gpu::SubgroupMmaInsertThreadLocalOpAdaptor" = type { %"class.mlir::gpu::SubgroupMmaInsertThreadLocalOpGenericAdaptor" }
%"class.mlir::gpu::SubgroupMmaInsertThreadLocalOpGenericAdaptor" = type { %"class.mlir::gpu::detail::SubgroupMmaInsertThreadLocalOpGenericAdaptorBase", %"class.mlir::ValueRange" }
%"class.mlir::gpu::detail::SubgroupMmaInsertThreadLocalOpGenericAdaptorBase" = type { %"class.mlir::DictionaryAttr", %"class.std::optional.112", [8 x i8], %"class.mlir::RegionRange" }
%"class.mlir::gpu::SubgroupMmaInsertThreadLocalOpGenericAdaptor.633" = type { %"class.mlir::gpu::detail::SubgroupMmaInsertThreadLocalOpGenericAdaptorBase", %"class.llvm::ArrayRef.96" }
%class.anon.672 = type { ptr }
%"class.mlir::gpu::SubgroupMmaInsertThreadLocalOp" = type { %"class.mlir::Op.609" }
%"class.mlir::Op.609" = type { %"class.mlir::OpState" }
%"class.mlir::gpu::SubgroupMmaElementwiseOpAdaptor" = type { %"class.mlir::gpu::SubgroupMmaElementwiseOpGenericAdaptor" }
%"class.mlir::gpu::SubgroupMmaElementwiseOpGenericAdaptor" = type { %"class.mlir::gpu::detail::SubgroupMmaElementwiseOpGenericAdaptorBase", %"class.mlir::ValueRange" }
%"class.mlir::gpu::detail::SubgroupMmaElementwiseOpGenericAdaptorBase" = type { %"class.mlir::DictionaryAttr", %"class.std::optional.112", %"struct.mlir::gpu::detail::SubgroupMmaElementwiseOpGenericAdaptorBase::Properties", %"class.mlir::RegionRange" }
%"struct.mlir::gpu::detail::SubgroupMmaElementwiseOpGenericAdaptorBase::Properties" = type { %"class.mlir::gpu::MMAElementwiseOpAttr" }
%"class.mlir::gpu::MMAElementwiseOpAttr" = type { %"class.mlir::detail::StorageUserBase.712" }
%"class.mlir::detail::StorageUserBase.712" = type { %"class.mlir::Attribute" }
%"class.mlir::gpu::SubgroupMmaElementwiseOpGenericAdaptor.713" = type { %"class.mlir::gpu::detail::SubgroupMmaElementwiseOpGenericAdaptorBase", %"class.llvm::ArrayRef.96" }
%"class.mlir::TypeRange" = type { %"class.llvm::detail::indexed_accessor_range_base.1123" }
%"class.llvm::detail::indexed_accessor_range_base.1123" = type { %"class.llvm::PointerUnion.1124", i64 }
%"class.llvm::PointerUnion.1124" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.1125" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.1125" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.1126" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.1126" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.1127" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.1127" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.1128" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.1128" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.1129" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.1129" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.1130" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.1130" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.1131" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.1131" = type { %"struct.llvm::detail::PunnedPointer" }
%"class.llvm::ArrayRef.1132" = type { ptr, i64 }
%"class.mlir::gpu::SubgroupMmaElementwiseOp" = type { %"class.mlir::Op.684" }
%"class.mlir::Op.684" = type { %"class.mlir::OpState" }
%class.anon.714 = type { ptr }
%"class.mlir::spirv::CompositeConstructOp" = type { %"class.mlir::Op.443" }
%"class.mlir::Op.443" = type { %"class.mlir::OpState" }
%"class.mlir::gpu::MMAMatrixType" = type { %"class.mlir::detail::StorageUserBase.140" }
%"class.mlir::detail::StorageUserBase.140" = type { %"class.mlir::Type" }

$_ZNK4mlir19OpConversionPatternINS_3gpu23SubgroupMmaLoadMatrixOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_3gpu23SubgroupMmaLoadMatrixOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_3gpu23SubgroupMmaLoadMatrixOpEE15matchAndRewriteES2_NS1_37SubgroupMmaLoadMatrixOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3gpu23SubgroupMmaLoadMatrixOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_3gpu23SubgroupMmaLoadMatrixOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_3gpu20SubgroupMmaComputeOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_3gpu20SubgroupMmaComputeOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_3gpu20SubgroupMmaComputeOpEE15matchAndRewriteES2_NS1_34SubgroupMmaComputeOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3gpu20SubgroupMmaComputeOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_3gpu20SubgroupMmaComputeOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_3gpu24SubgroupMmaStoreMatrixOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_3gpu24SubgroupMmaStoreMatrixOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_3gpu24SubgroupMmaStoreMatrixOpEE15matchAndRewriteES2_NS1_38SubgroupMmaStoreMatrixOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_3gpu24SubgroupMmaStoreMatrixOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3gpu24SubgroupMmaStoreMatrixOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZNK4mlir19OpConversionPatternINS_3gpu27SubgroupMmaConstantMatrixOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_3gpu27SubgroupMmaConstantMatrixOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_3gpu27SubgroupMmaConstantMatrixOpEE15matchAndRewriteES2_NS1_41SubgroupMmaConstantMatrixOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3gpu27SubgroupMmaConstantMatrixOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_3gpu27SubgroupMmaConstantMatrixOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_3gpu31SubgroupMmaExtractThreadLocalOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_3gpu31SubgroupMmaExtractThreadLocalOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_3gpu31SubgroupMmaExtractThreadLocalOpEE15matchAndRewriteES2_NS1_45SubgroupMmaExtractThreadLocalOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3gpu31SubgroupMmaExtractThreadLocalOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi = comdat any

$_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_3gpu31SubgroupMmaExtractThreadLocalOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_3gpu30SubgroupMmaInsertThreadLocalOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_3gpu30SubgroupMmaInsertThreadLocalOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_3gpu30SubgroupMmaInsertThreadLocalOpEE15matchAndRewriteES2_NS1_44SubgroupMmaInsertThreadLocalOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3gpu30SubgroupMmaInsertThreadLocalOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_3gpu30SubgroupMmaInsertThreadLocalOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_3gpu24SubgroupMmaElementwiseOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_3gpu24SubgroupMmaElementwiseOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_3gpu24SubgroupMmaElementwiseOpEE15matchAndRewriteES2_NS1_38SubgroupMmaElementwiseOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu24SubgroupMmaElementwiseOpEEEN4llvm13LogicalResultEOT_PKc = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3gpu24SubgroupMmaElementwiseOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_3gpu24SubgroupMmaElementwiseOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4mlir14RewritePatternD2Ev = comdat any

$_ZN4mlir5spirv20CompositeConstructOp15getConstituentsEv = comdat any

$_ZN4mlir12RewriterBase18replaceOpWithNewOpINS_5spirv19MatrixTimesScalarOpEJRNS_4TypeENS_10ValueRangeEEEET_PNS_9OperationEDpOT0_ = comdat any

$_ZN4mlir13TypeConverter18registerConversionESt8functionIFSt8optionalIN4llvm13LogicalResultEENS3_12PointerUnionIJNS_4TypeENS_5ValueEEEERNS3_15SmallVectorImplIS7_EEEE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS_15SmallVectorImplIS7_EEEELb0EE18growAndEmplaceBackIJSE_EEERSE_DpOT_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E16shrink_and_clearEv = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E16shrink_and_clearEv = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_ = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_5spirv21CooperativeMatrixTypeEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_5spirv21CooperativeMatrixTypeEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_3gpu13MMAMatrixTypeEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_3gpu13MMAMatrixTypeEvE13resolveTypeIDEvE2id = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZZN4mlir6detail14TypeIDResolverINS_5spirv21CooperativeMatrixTypeEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_5spirv21CooperativeMatrixTypeEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.5 = private unnamed_addr constant [85 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::spirv::CooperativeMatrixType]\00", align 1
@_ZTVN4mlir3khr12_GLOBAL__N_125WmmaLoadOpToSPIRVLoweringE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN4mlir3khr12_GLOBAL__N_125WmmaLoadOpToSPIRVLoweringD0Ev, ptr @_ZNK4mlir17ConversionPattern15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu23SubgroupMmaLoadMatrixOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu23SubgroupMmaLoadMatrixOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir3khr12_GLOBAL__N_125WmmaLoadOpToSPIRVLowering15matchAndRewriteENS_3gpu23SubgroupMmaLoadMatrixOpENS3_30SubgroupMmaLoadMatrixOpAdaptorERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu23SubgroupMmaLoadMatrixOpEE15matchAndRewriteES2_NS1_37SubgroupMmaLoadMatrixOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE] }, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"gpu.subgroup_mma_load_matrix\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"type conversion failed\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"pattern '\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"' does not support 1:N conversion\00", align 1
@.str.10 = private unnamed_addr constant [110 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::khr::(anonymous namespace)::WmmaLoadOpToSPIRVLowering]\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN4mlir3khr12_GLOBAL__N_124WmmaMmaOpToSPIRVLoweringE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN4mlir3khr12_GLOBAL__N_124WmmaMmaOpToSPIRVLoweringD0Ev, ptr @_ZNK4mlir17ConversionPattern15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu20SubgroupMmaComputeOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu20SubgroupMmaComputeOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir3khr12_GLOBAL__N_124WmmaMmaOpToSPIRVLowering15matchAndRewriteENS_3gpu20SubgroupMmaComputeOpENS3_27SubgroupMmaComputeOpAdaptorERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu20SubgroupMmaComputeOpEE15matchAndRewriteES2_NS1_34SubgroupMmaComputeOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE] }, align 8
@.str.12 = private unnamed_addr constant [25 x i8] c"gpu.subgroup_mma_compute\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_11IntegerTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.13 = private unnamed_addr constant [109 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::khr::(anonymous namespace)::WmmaMmaOpToSPIRVLowering]\00", align 1
@_ZTVN4mlir3khr12_GLOBAL__N_126WmmaStoreOpToSPIRVLoweringE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN4mlir3khr12_GLOBAL__N_126WmmaStoreOpToSPIRVLoweringD0Ev, ptr @_ZNK4mlir17ConversionPattern15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu24SubgroupMmaStoreMatrixOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu24SubgroupMmaStoreMatrixOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir3khr12_GLOBAL__N_126WmmaStoreOpToSPIRVLowering15matchAndRewriteENS_3gpu24SubgroupMmaStoreMatrixOpENS3_31SubgroupMmaStoreMatrixOpAdaptorERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu24SubgroupMmaStoreMatrixOpEE15matchAndRewriteES2_NS1_38SubgroupMmaStoreMatrixOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE] }, align 8
@.str.14 = private unnamed_addr constant [30 x i8] c"gpu.subgroup_mma_store_matrix\00", align 1
@.str.15 = private unnamed_addr constant [111 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::khr::(anonymous namespace)::WmmaStoreOpToSPIRVLowering]\00", align 1
@_ZTVN4mlir12_GLOBAL__N_129WmmaConstantOpToSPIRVLoweringE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN4mlir12_GLOBAL__N_129WmmaConstantOpToSPIRVLoweringD0Ev, ptr @_ZNK4mlir17ConversionPattern15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu27SubgroupMmaConstantMatrixOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu27SubgroupMmaConstantMatrixOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir12_GLOBAL__N_129WmmaConstantOpToSPIRVLowering15matchAndRewriteENS_3gpu27SubgroupMmaConstantMatrixOpENS2_34SubgroupMmaConstantMatrixOpAdaptorERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu27SubgroupMmaConstantMatrixOpEE15matchAndRewriteES2_NS1_41SubgroupMmaConstantMatrixOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE] }, align 8
@.str.16 = private unnamed_addr constant [33 x i8] c"gpu.subgroup_mma_constant_matrix\00", align 1
@.str.17 = private unnamed_addr constant [109 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::WmmaConstantOpToSPIRVLowering]\00", align 1
@_ZTVN4mlir12_GLOBAL__N_128WmmaExtractOpToSPIRVLoweringE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN4mlir12_GLOBAL__N_128WmmaExtractOpToSPIRVLoweringD0Ev, ptr @_ZNK4mlir17ConversionPattern15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu31SubgroupMmaExtractThreadLocalOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu31SubgroupMmaExtractThreadLocalOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir12_GLOBAL__N_128WmmaExtractOpToSPIRVLowering15matchAndRewriteENS_3gpu31SubgroupMmaExtractThreadLocalOpENS2_38SubgroupMmaExtractThreadLocalOpAdaptorERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu31SubgroupMmaExtractThreadLocalOpEE15matchAndRewriteES2_NS1_45SubgroupMmaExtractThreadLocalOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE] }, align 8
@.str.18 = private unnamed_addr constant [38 x i8] c"gpu.subgroup_mma_extract_thread_local\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"indices must be constants\00", align 1
@.str.20 = private unnamed_addr constant [108 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::WmmaExtractOpToSPIRVLowering]\00", align 1
@_ZTVN4mlir12_GLOBAL__N_127WmmaInsertOpToSPIRVLoweringE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN4mlir12_GLOBAL__N_127WmmaInsertOpToSPIRVLoweringD0Ev, ptr @_ZNK4mlir17ConversionPattern15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu30SubgroupMmaInsertThreadLocalOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu30SubgroupMmaInsertThreadLocalOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir12_GLOBAL__N_127WmmaInsertOpToSPIRVLowering15matchAndRewriteENS_3gpu30SubgroupMmaInsertThreadLocalOpENS2_37SubgroupMmaInsertThreadLocalOpAdaptorERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu30SubgroupMmaInsertThreadLocalOpEE15matchAndRewriteES2_NS1_44SubgroupMmaInsertThreadLocalOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE] }, align 8
@.str.21 = private unnamed_addr constant [37 x i8] c"gpu.subgroup_mma_insert_thread_local\00", align 1
@.str.22 = private unnamed_addr constant [107 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::WmmaInsertOpToSPIRVLowering]\00", align 1
@_ZTVN4mlir12_GLOBAL__N_139WmmaElementwiseOpToSPIRVDefaultLoweringE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN4mlir12_GLOBAL__N_139WmmaElementwiseOpToSPIRVDefaultLoweringD0Ev, ptr @_ZNK4mlir17ConversionPattern15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu24SubgroupMmaElementwiseOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu24SubgroupMmaElementwiseOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir12_GLOBAL__N_139WmmaElementwiseOpToSPIRVDefaultLowering15matchAndRewriteENS_3gpu24SubgroupMmaElementwiseOpENS2_31SubgroupMmaElementwiseOpAdaptorERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu24SubgroupMmaElementwiseOpEE15matchAndRewriteES2_NS1_38SubgroupMmaElementwiseOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE] }, align 8
@.str.23 = private unnamed_addr constant [29 x i8] c"gpu.subgroup_mma_elementwise\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"not all operands are coop matrices\00", align 1
@.str.25 = private unnamed_addr constant [119 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::WmmaElementwiseOpToSPIRVDefaultLowering]\00", align 1
@_ZTVN4mlir12_GLOBAL__N_141WmmaElementwiseOpToSPIRVScalarMulLoweringE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN4mlir12_GLOBAL__N_141WmmaElementwiseOpToSPIRVScalarMulLoweringD0Ev, ptr @_ZNK4mlir17ConversionPattern15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu24SubgroupMmaElementwiseOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu24SubgroupMmaElementwiseOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir12_GLOBAL__N_141WmmaElementwiseOpToSPIRVScalarMulLowering15matchAndRewriteENS_3gpu24SubgroupMmaElementwiseOpENS2_31SubgroupMmaElementwiseOpAdaptorERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_3gpu24SubgroupMmaElementwiseOpEE15matchAndRewriteES2_NS1_38SubgroupMmaElementwiseOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE] }, align 8
@.str.26 = private unnamed_addr constant [17 x i8] c"no splat operand\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"splat is not a composite construct\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3gpu27SubgroupMmaConstantMatrixOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_5spirv20CompositeConstructOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.28 = private unnamed_addr constant [121 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::WmmaElementwiseOpToSPIRVScalarMulLowering]\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_3gpu13MMAMatrixTypeEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_3gpu13MMAMatrixTypeEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.29 = private unnamed_addr constant [75 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::gpu::MMAMatrixType]\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4mlir33allOperandsHaveSameCoopMatrixTypeENS_10ValueRangeE(i64 %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::mapped_iterator", align 8 ; 7 uses
  %3 = alloca %"class.llvm::mapped_iterator", align 8 ; 7 uses
  %4 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  store i64 %0, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %"_ZN4llvm9all_equalINS_14iterator_rangeINS_15mapped_iteratorINS_6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS5_5ValueEPNS5_9OpOperandEPNS5_6detail12OpResultImplEPKNS_8RepeatedIS8_EEEEES8_S8_S8_E8iteratorEZNS5_33allOperandsHaveSameCoopMatrixTypeES6_E3$_0NS5_4TypeEEEEEEEbOT_.exit.thread", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %0, ptr %3, align 8
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 1, ptr %.sroa.430.0..sroa_idx.i, align 8
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 256, ptr %.sroa.531.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %0, ptr %2, align 8
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %.sroa.436.0..sroa_idx.i, align 8
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 256, ptr %.sroa.537.0..sroa_idx.i, align 8
  %.not2.i.i.i.i.i = icmp eq i64 %1, 1
  br i1 %.not2.i.i.i.i.i, label %"_ZN4llvm9all_equalINS_14iterator_rangeINS_15mapped_iteratorINS_6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS5_5ValueEPNS5_9OpOperandEPNS5_6detail12OpResultImplEPKNS_8RepeatedIS8_EEEEES8_S8_S8_E8iteratorEZNS5_33allOperandsHaveSameCoopMatrixTypeES6_E3$_0NS5_4TypeEEEEEEEbOT_.exit.thread5", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.val3.i.i.i.i.i = phi i64 [ %i.k, %bb.c ], [ 1, %bb.b ]
  %i.c = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(18) %3, i64 noundef %.val3.i.i.i.i.i) #16
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val.val.i.i.i.i.i.i = load i64, ptr %i.d, align 8
  %i.e = load i64, ptr %.sroa.436.0..sroa_idx.i, align 8, !tbaa !21
  %i.f = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(18) %2, i64 noundef %i.e) #16
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val.val.i2.i.i.i.i.i = load i64, ptr %i.g, align 8
  %i.h = xor i64 %.val.val.i2.i.i.i.i.i, %.val.val.i.i.i.i.i.i
  %i.i = icmp ult i64 %i.h, 8
  br i1 %i.i, label %bb.c, label %"_ZN4llvm9all_equalINS_14iterator_rangeINS_15mapped_iteratorINS_6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS5_5ValueEPNS5_9OpOperandEPNS5_6detail12OpResultImplEPKNS_8RepeatedIS8_EEEEES8_S8_S8_E8iteratorEZNS5_33allOperandsHaveSameCoopMatrixTypeES6_E3$_0NS5_4TypeEEEEEEEbOT_.exit"

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.j = load i64, ptr %.sroa.430.0..sroa_idx.i, align 8, !tbaa !21
  %i.k = add nsw i64 %i.j, 1                      ; 3 uses
  store i64 %i.k, ptr %.sroa.430.0..sroa_idx.i, align 8, !tbaa !21
  %i.l = load i64, ptr %.sroa.436.0..sroa_idx.i, align 8, !tbaa !21
  %i.m = add nsw i64 %i.l, 1
  store i64 %i.m, ptr %.sroa.436.0..sroa_idx.i, align 8, !tbaa !21
  %.not.i.i.i.i.i = icmp eq i64 %i.k, %1
  br i1 %.not.i.i.i.i.i, label %"_ZN4llvm9all_equalINS_14iterator_rangeINS_15mapped_iteratorINS_6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS5_5ValueEPNS5_9OpOperandEPNS5_6detail12OpResultImplEPKNS_8RepeatedIS8_EEEEES8_S8_S8_E8iteratorEZNS5_33allOperandsHaveSameCoopMatrixTypeES6_E3$_0NS5_4TypeEEEEEEEbOT_.exit.thread5", label %.lr.ph.i.i.i.i.i, !llvm.loop !114

"_ZN4llvm9all_equalINS_14iterator_rangeINS_15mapped_iteratorINS_6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS5_5ValueEPNS5_9OpOperandEPNS5_6detail12OpResultImplEPKNS_8RepeatedIS8_EEEEES8_S8_S8_E8iteratorEZNS5_33allOperandsHaveSameCoopMatrixTypeES6_E3$_0NS5_4TypeEEEEEEEbOT_.exit.thread5": ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %"_ZN4llvm9all_equalINS_14iterator_rangeINS_15mapped_iteratorINS_6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS5_5ValueEPNS5_9OpOperandEPNS5_6detail12OpResultImplEPKNS_8RepeatedIS8_EEEEES8_S8_S8_E8iteratorEZNS5_33allOperandsHaveSameCoopMatrixTypeES6_E3$_0NS5_4TypeEEEEEEEbOT_.exit.thread"

"_ZN4llvm9all_equalINS_14iterator_rangeINS_15mapped_iteratorINS_6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS5_5ValueEPNS5_9OpOperandEPNS5_6detail12OpResultImplEPKNS_8RepeatedIS8_EEEEES8_S8_S8_E8iteratorEZNS5_33allOperandsHaveSameCoopMatrixTypeES6_E3$_0NS5_4TypeEEEEEEEbOT_.exit": ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.f

"_ZN4llvm9all_equalINS_14iterator_rangeINS_15mapped_iteratorINS_6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS5_5ValueEPNS5_9OpOperandEPNS5_6detail12OpResultImplEPKNS_8RepeatedIS8_EEEEES8_S8_S8_E8iteratorEZNS5_33allOperandsHaveSameCoopMatrixTypeES6_E3$_0NS5_4TypeEEEEEEEbOT_.exit.thread": ; preds = %bb.a, %"_ZN4llvm9all_equalINS_14iterator_rangeINS_15mapped_iteratorINS_6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS5_5ValueEPNS5_9OpOperandEPNS5_6detail12OpResultImplEPKNS_8RepeatedIS8_EEEEES8_S8_S8_E8iteratorEZNS5_33allOperandsHaveSameCoopMatrixTypeES6_E3$_0NS5_4TypeEEEEEEEbOT_.exit.thread5"
  %i.n = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 0) #16
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.o, align 8
  %i.p = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.t = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_5spirv21CooperativeMatrixTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.d, label %_ZN4llvm3isaIJN4mlir5spirv21CooperativeMatrixTypeEENS1_4TypeEEEbRKT0_.exit, !prof !29

bb.d:                                             ; preds = %"_ZN4llvm9all_equalINS_14iterator_rangeINS_15mapped_iteratorINS_6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS5_5ValueEPNS5_9OpOperandEPNS5_6detail12OpResultImplEPKNS_8RepeatedIS8_EEEEES8_S8_S8_E8iteratorEZNS5_33allOperandsHaveSameCoopMatrixTypeES6_E3$_0NS5_4TypeEEEEEEEbOT_.exit.thread"
  %i.v = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5spirv21CooperativeMatrixTypeEvE13resolveTypeIDEvE2id) #16
  %.not.i.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm3isaIJN4mlir5spirv21CooperativeMatrixTypeEENS1_4TypeEEEbRKT0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.5, i64 49), i64 34) #16
  store ptr %i.w, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5spirv21CooperativeMatrixTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5spirv21CooperativeMatrixTypeEvE13resolveTypeIDEvE2id) #16
  br label %_ZN4llvm3isaIJN4mlir5spirv21CooperativeMatrixTypeEENS1_4TypeEEEbRKT0_.exit

_ZN4llvm3isaIJN4mlir5spirv21CooperativeMatrixTypeEENS1_4TypeEEEbRKT0_.exit: ; preds = %"_ZN4llvm9all_equalINS_14iterator_rangeINS_15mapped_iteratorINS_6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS5_5ValueEPNS5_9OpOperandEPNS5_6detail12OpResultImplEPKNS_8RepeatedIS8_EEEEES8_S8_S8_E8iteratorEZNS5_33allOperandsHaveSameCoopMatrixTypeES6_E3$_0NS5_4TypeEEEEEEEbOT_.exit.thread", %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5spirv21CooperativeMatrixTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.x = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i
  br label %bb.f

bb.f:                                             ; preds = %"_ZN4llvm9all_equalINS_14iterator_rangeINS_15mapped_iteratorINS_6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS5_5ValueEPNS5_9OpOperandEPNS5_6detail12OpResultImplEPKNS_8RepeatedIS8_EEEEES8_S8_S8_E8iteratorEZNS5_33allOperandsHaveSameCoopMatrixTypeES6_E3$_0NS5_4TypeEEEEEEEbOT_.exit", %_ZN4llvm3isaIJN4mlir5spirv21CooperativeMatrixTypeEENS1_4TypeEEEbRKT0_.exit
  %.0 = phi i1 [ %i.x, %_ZN4llvm3isaIJN4mlir5spirv21CooperativeMatrixTypeEENS1_4TypeEEEbRKT0_.exit ], [ false, %"_ZN4llvm9all_equalINS_14iterator_rangeINS_15mapped_iteratorINS_6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS5_5ValueEPNS5_9OpOperandEPNS5_6detail12OpResultImplEPKNS_8RepeatedIS8_EEEEES8_S8_S8_E8iteratorEZNS5_33allOperandsHaveSameCoopMatrixTypeES6_E3$_0NS5_4TypeEEEEEEEbOT_.exit" ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir53populateGpuWMMAToSPIRVCoopMatrixKHRConversionPatternsERKNS_18SPIRVTypeConverterERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %1) local_unnamed_addr #0 {
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
  %i.a = load ptr, ptr %1, align 8, !tbaa !232    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !233
  %i.b = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #17, !noalias !234 ; 10 uses
  call void @_ZN4mlir14PatternBenefitC1Ej(ptr noundef nonnull align 2 dereferenceable(2) %17, i32 noundef 1) #16, !noalias !234
  %i.c = load i16, ptr %17, align 2, !noalias !234
  call void @llvm.lifetime.start.p0(ptr nonnull %16), !noalias !234
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false), !noalias !234
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_ZN4mlir7PatternC2EN4llvm9StringRefENS_14PatternBenefitEPNS_11MLIRContextENS1_8ArrayRefIS2_EE(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr nonnull @.str.6, i64 28, i16 %i.c, ptr noundef %i.a, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %16) #16, !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !234
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  store ptr %0, ptr %i.e, align 8, !tbaa !55, !noalias !234
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4mlir3khr12_GLOBAL__N_125WmmaLoadOpToSPIRVLoweringE, i64 16), ptr %i.b, align 8, !tbaa !57, !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %17), !noalias !233
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !58, !noalias !233
  %i.f = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i, 0
  br i1 %i.f, label %bb.b, label %_ZN4mlir14RewritePattern6createINS_3khr12_GLOBAL__N_125WmmaLoadOpToSPIRVLoweringEJRKNS_18SPIRVTypeConverterERPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteISC_EEDpOT0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr getelementptr inbounds nuw (i8, ptr @.str.10, i64 49), ptr %i.g, align 8, !tbaa !59, !noalias !233
  store i64 59, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !58, !noalias !233
  br label %_ZN4mlir14RewritePattern6createINS_3khr12_GLOBAL__N_125WmmaLoadOpToSPIRVLoweringEJRKNS_18SPIRVTypeConverterERPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteISC_EEDpOT0_.exit.i.i

_ZN4mlir14RewritePattern6createINS_3khr12_GLOBAL__N_125WmmaLoadOpToSPIRVLoweringEJRKNS_18SPIRVTypeConverterERPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteISC_EEDpOT0_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !60   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.k = load i32, ptr %i.j, align 4, !tbaa !61
  %i.l = icmp ugt i32 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i

bb.c:                                             ; preds = %_ZN4mlir14RewritePattern6createINS_3khr12_GLOBAL__N_125WmmaLoadOpToSPIRVLoweringEJRKNS_18SPIRVTypeConverterERPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteISC_EEDpOT0_.exit.i.i
  %i.m = zext i32 %i.i to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull %i.e, i64 noundef %i.m, i64 noundef 16) #16
  %.pre8.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !60
  br label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i: ; preds = %bb.c, %_ZN4mlir14RewritePattern6createINS_3khr12_GLOBAL__N_125WmmaLoadOpToSPIRVLoweringEJRKNS_18SPIRVTypeConverterERPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteISC_EEDpOT0_.exit.i.i
  %.pre8.i.i.i.i = phi i32 [ %i.i, %_ZN4mlir14RewritePattern6createINS_3khr12_GLOBAL__N_125WmmaLoadOpToSPIRVLoweringEJRKNS_18SPIRVTypeConverterERPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteISC_EEDpOT0_.exit.i.i ], [ %.pre8.pre.i.i.i.i, %bb.c ]
  store i32 %.pre8.i.i.i.i, ptr %i.h, align 8, !tbaa !60
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 24 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !235  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 24 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !236
  %.not.i.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i
  store ptr %i.b, ptr %i.q, align 8, !tbaa !239
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.t, ptr %i.p, align 8, !tbaa !235
  br label %_ZN4mlir17RewritePatternSet7addImplINS_3khr12_GLOBAL__N_125WmmaLoadOpToSPIRVLoweringEJRKNS_18SPIRVTypeConverterERPNS_11MLIRContextEEEENSt9enable_ifIXsr3std10is_base_ofINS_14RewritePatternET_EE5valueEvE4typeEN4llvm8ArrayRefINSG_9StringRefEEEDpOT0_.exit.i

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !240  ; 10 uses
  %i.v = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.z ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_3gpu24SubgroupMmaElementwiseOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE:bb.a
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr %.sroa.0.0.copyload.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3gpu24SubgroupMmaElementwiseOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.q) #16, !inline_history !1
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu24SubgroupMmaElementwiseOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu24SubgroupMmaElementwiseOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %bb.b, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %5, align 8, !tbaa !66
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !60
  %i.x = zext i32 %i.w to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.u, i64 %i.x) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.z = load <2 x i64>, ptr %9, align 16
  store <2 x i64> %i.z, ptr %i.y, align 8
  %i.aa = load ptr, ptr %0, align 8, !tbaa !57
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::gpu::SubgroupMmaElementwiseOpAdaptor") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %3) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu24SubgroupMmaElementwiseOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit
  %.sroa.09.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu24SubgroupMmaElementwiseOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit ], [ %i.ad, %bb.c ]
  %i.ae = load i8, ptr %i.b, align 8, !tbaa !97, !range !98, !noundef !93
  %i.af = trunc nuw i8 %i.ae to i1
  store i8 0, ptr %i.b, align 8, !tbaa !97
  br i1 %i.af, label %bb.e, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %5, align 8, !tbaa !66    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.ag) #16
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i8 %.sroa.09.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir14RewritePatternD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #16
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir7PatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #16
  br label %_ZN4mlir7PatternD2Ev.exit

_ZN4mlir7PatternD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4mlir12_GLOBAL__N_141WmmaElementwiseOpToSPIRVScalarMulLoweringD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #16
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #16
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal i8 @_ZNK4mlir12_GLOBAL__N_141WmmaElementwiseOpToSPIRVScalarMulLowering15matchAndRewriteENS_3gpu24SubgroupMmaElementwiseOpENS2_31SubgroupMmaElementwiseOpAdaptorERNS_25ConversionPatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr %1, ptr nofree noundef readonly byval(%"class.mlir::gpu::SubgroupMmaElementwiseOpAdaptor") align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %class.anon.714, align 8            ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %class.anon.714, align 8            ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %"class.mlir::gpu::SubgroupMmaElementwiseOp", align 8 ; 8 uses
  %9 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %10 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %11 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %12 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %13 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %14 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %15 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %16 = alloca %"class.mlir::spirv::CompositeConstructOp", align 8 ; 4 uses
  %17 = alloca %"class.mlir::Type", align 8       ; 4 uses
  %18 = alloca %"class.mlir::ValueRange", align 8 ; 4 uses
  %19 = alloca [2 x %"class.mlir::Value"], align 8 ; 5 uses
  store ptr %1, ptr %8, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.not = icmp eq i64 %.sroa.2.0.copyload.i, 2
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN4mlir33allOperandsHaveSameCoopMatrixTypeENS_10ValueRangeE(i64 %.sroa.0.0.copyload.i, i64 2)
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.d, align 1, !tbaa !79
  store ptr @.str.24, ptr %7, align 8, !tbaa !80
  store i8 3, ptr %i.c, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %7, ptr %6, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !90   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu24SubgroupMmaElementwiseOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.f) #16
  br i1 %i.g, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu24SubgroupMmaElementwiseOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.h, align 8
  %i.i = ptrtoint ptr %6 to i64
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3gpu24SubgroupMmaElementwiseOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.i) #16, !inline_history !0
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu24SubgroupMmaElementwiseOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu24SubgroupMmaElementwiseOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.c, %bb.d, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.s

bb.e:                                             ; preds = %bb.b
  %i.m = call noundef i32 @_ZN4mlir3gpu24SubgroupMmaElementwiseOp9getOpTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #16
  %.not15 = icmp eq i32 %i.m, 1
  br i1 %.not15, label %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_3gpu24SubgroupMmaElementwiseOpENS0_16VariadicOperandsEE11getOperandsEv.exit27, label %bb.s

_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_3gpu24SubgroupMmaElementwiseOpENS0_16VariadicOperandsEE11getOperandsEv.exit27: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.n = load ptr, ptr %8, align 8, !tbaa !69     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.0.0.copyload.i.i.i.i21 = load ptr, ptr %i.q, align 8, !tbaa !74
  store ptr %.sroa.0.0.copyload.i.i.i.i21, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !395
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr [32 x i8], ptr %i.p, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %.sroa.0.0.copyload.i.i.i.i28 = load ptr, ptr %i.v, align 8, !tbaa !74
  store ptr %.sroa.0.0.copyload.i.i.i.i28, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.w = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #16 ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i29, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_3gpu24SubgroupMmaElementwiseOpENS0_16VariadicOperandsEE11getOperandsEv.exit27
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !397
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !399
  %i.aa = icmp eq ptr %i.z, @_ZN4mlir6detail14TypeIDResolverINS_3gpu27SubgroupMmaConstantMatrixOpEvE2idE
  br i1 %i.aa, label %_ZNK4mlir5Value13getDefiningOpINS_3gpu27SubgroupMmaConstantMatrixOpEEET_v.exit, label %bb.g

_ZNK4mlir5Value13getDefiningOpINS_3gpu27SubgroupMmaConstantMatrixOpEEET_v.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  store i64 %.sroa.0.0.copyload.i, ptr %12, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 2, ptr %i.ab, align 8
  %i.ac = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef 0) #16 ; 2 uses
  store ptr %i.ac, ptr %11, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  store i64 %.sroa.0.0.copyload.i, ptr %13, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 2, ptr %i.ad, align 8
  %i.ae = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 noundef 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %thread-pre-split

bb.g:                                             ; preds = %bb.f, %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_3gpu24SubgroupMmaElementwiseOpENS0_16VariadicOperandsEE11getOperandsEv.exit27
  %i.af = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #16 ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i41, label %thread-pre-split.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i42 = load ptr, ptr %i.ag, align 8, !tbaa !397
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i42, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !399
  %i.aj = icmp eq ptr %i.ai, @_ZN4mlir6detail14TypeIDResolverINS_3gpu27SubgroupMmaConstantMatrixOpEvE2idE
  br i1 %i.aj, label %_ZNK4mlir5Value13getDefiningOpINS_3gpu27SubgroupMmaConstantMatrixOpEEET_v.exit45, label %thread-pre-split.thread

_ZNK4mlir5Value13getDefiningOpINS_3gpu27SubgroupMmaConstantMatrixOpEEET_v.exit45: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  store i64 %.sroa.0.0.copyload.i, ptr %14, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 2, ptr %i.ak, align 8
  %i.al = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef 0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  store i64 %.sroa.0.0.copyload.i, ptr %15, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 2, ptr %i.am, align 8
  %i.an = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %15, i64 noundef 1) #16 ; 2 uses
  store ptr %i.an, ptr %11, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZNK4mlir5Value13getDefiningOpINS_3gpu27SubgroupMmaConstantMatrixOpEEET_v.exit, %_ZNK4mlir5Value13getDefiningOpINS_3gpu27SubgroupMmaConstantMatrixOpEEET_v.exit45
  %i.ao = phi ptr [ %i.an, %_ZNK4mlir5Value13getDefiningOpINS_3gpu27SubgroupMmaConstantMatrixOpEEET_v.exit45 ], [ %i.ac, %_ZNK4mlir5Value13getDefiningOpINS_3gpu27SubgroupMmaConstantMatrixOpEEET_v.exit ]
  %.sroa.073.0 = phi ptr [ %i.al, %_ZNK4mlir5Value13getDefiningOpINS_3gpu27SubgroupMmaConstantMatrixOpEEET_v.exit45 ], [ %i.ae, %_ZNK4mlir5Value13getDefiningOpINS_3gpu27SubgroupMmaConstantMatrixOpEEET_v.exit ] ; 2 uses
  %i.ap = icmp ne ptr %i.ao, null
  %i.aq = icmp ne ptr %.sroa.073.0, null
  %or.cond = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond, label %bb.j, label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.g, %bb.h, %thread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.as, align 1, !tbaa !79
  store ptr @.str.26, ptr %5, align 8, !tbaa !80
  store i8 3, ptr %i.ar, align 8, !tbaa !81
  %i.at = load ptr, ptr %8, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %5, ptr %4, align 8, !tbaa !83
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i56 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i56, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu24SubgroupMmaElementwiseOpEEEN4llvm13LogicalResultEOT_PKc.exit59, label %bb.i

bb.i:                                             ; preds = %thread-pre-split.thread
  %i.aw = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.av) #16
  br i1 %i.aw, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i57, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu24SubgroupMmaElementwiseOpEEEN4llvm13LogicalResultEOT_PKc.exit59

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i57: ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.0.0.copyload.i.i.i.i58 = load ptr, ptr %i.ax, align 8
  %i.ay = ptrtoint ptr %4 to i64
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(12) %i.av, ptr %.sroa.0.0.copyload.i.i.i.i58, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3gpu24SubgroupMmaElementwiseOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ay) #16, !inline_history !0
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu24SubgroupMmaElementwiseOpEEEN4llvm13LogicalResultEOT_PKc.exit59

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu24SubgroupMmaElementwiseOpEEEN4llvm13LogicalResultEOT_PKc.exit59: ; preds = %thread-pre-split.thread, %bb.i, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.r

bb.j:                                             ; preds = %thread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  %i.bc = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #16 ; 3 uses
  %.not.i.i.i60 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i60, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i61 = load ptr, ptr %i.bd, align 8, !tbaa !397
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i61, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !399
  %i.bg = icmp eq ptr %i.bf, @_ZN4mlir6detail14TypeIDResolverINS_5spirv20CompositeConstructOpEvE2idE
  br i1 %i.bg, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bh = call i8 @_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu24SubgroupMmaElementwiseOpEEEN4llvm13LogicalResultEOT_PKc(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.27)
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  store ptr %i.bc, ptr %16, align 8
  %i.bi = call { ptr, i64 } @_ZN4mlir5spirv20CompositeConstructOp15getConstituentsEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
  %i.bj = extractvalue { ptr, i64 } %i.bi, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.sroa.0.0.copyload.i.i.i.i64 = load ptr, ptr %i.bk, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !55
  %i.bn = load ptr, ptr %8, align 8, !tbaa !69
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -16
  %i.bp = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 noundef 0) #16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bq, align 8
  %i.br = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = call ptr @_ZNK4mlir13TypeConverter11convertTypeENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(508) %i.bm, ptr %i.bs) #16 ; 2 uses
  store ptr %i.bt, ptr %17, align 8
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bv = call i8 @_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu24SubgroupMmaElementwiseOpEEEN4llvm13LogicalResultEOT_PKc(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.7)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bw = load ptr, ptr %8, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  %i.bx = ptrtoint ptr %.sroa.073.0 to i64
  store i64 %i.bx, ptr %19, align 8, !tbaa !74
  %i.by = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bz = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i64 to i64
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !74
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr nonnull %19, i64 2) #16
  %i.ca = call ptr @_ZN4mlir12RewriterBase18replaceOpWithNewOpINS_5spirv19MatrixTimesScalarOpEJRNS_4TypeENS_10ValueRangeEEEET_PNS_9OperationEDpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(16) %18) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.014.0 = phi i8 [ %i.bv, %bb.n ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %.sroa.014.1 = phi i8 [ %.sroa.014.0, %bb.p ], [ %i.bh, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu24SubgroupMmaElementwiseOpEEEN4llvm13LogicalResultEOT_PKc.exit59
  %.sroa.014.2 = phi i8 [ %.sroa.014.1, %bb.q ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu24SubgroupMmaElementwiseOpEEEN4llvm13LogicalResultEOT_PKc.exit59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.e, %bb.a, %bb.r, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu24SubgroupMmaElementwiseOpEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.014.3 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu24SubgroupMmaElementwiseOpEEEN4llvm13LogicalResultEOT_PKc.exit ], [ 0, %bb.a ], [ %.sroa.014.2, %bb.r ], [ 0, %bb.e ]
  ret i8 %.sroa.014.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4mlir5spirv20CompositeConstructOp15getConstituentsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i64 @_ZN4mlir5spirv20CompositeConstructOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #16 ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 8388608
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZN4mlir5spirv20CompositeConstructOp14getODSOperandsEj.exit, label %bb.b, !prof !99

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  br label %_ZN4mlir5spirv20CompositeConstructOp14getODSOperandsEj.exit

_ZN4mlir5spirv20CompositeConstructOp14getODSOperandsEj.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.h = and i64 %i.a, 4294967295                 ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i64 %i.a, 32
  %i.i = add i64 %.sroa.5.0.extract.shift.i, %i.a
  %i.j = and i64 %i.i, 4294967295
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i, i64 %i.h
  %i.l = sub nsw i64 %i.j, %i.h
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.k, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.l, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN4mlir12RewriterBase18replaceOpWithNewOpINS_5spirv19MatrixTimesScalarOpEJRNS_4TypeENS_10ValueRangeEEEET_PNS_9OperationEDpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.mlir::TypeRange", align 8   ; 3 uses
  %5 = alloca %"class.llvm::ArrayRef.1132", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull align 8 dereferenceable(8) %2, i64 1) #16
  %.sroa.0.0.copyload = load i64, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.c = load i64, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = call ptr @_ZN4mlir5spirv19MatrixTimesScalarOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr %.sroa.0.0.copyload.i, i64 %i.c, i64 %i.e, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1132") align 8 %5) #16 ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1, ptr noundef %i.f) #16
  ret ptr %i.f
}

declare i64 @_ZN4mlir5spirv20CompositeConstructOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare ptr @_ZN4mlir5spirv19MatrixTimesScalarOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, i64, i64, ptr noundef byval(%"class.llvm::ArrayRef.1132") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13TypeConverter18registerConversionESt8functionIFSt8optionalIN4llvm13LogicalResultEENS3_12PointerUnionIJNS_4TypeENS_5ValueEEEERNS3_15SmallVectorImplIS7_EEEE(ptr noundef nonnull align 8 dereferenceable(508) %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !61
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !100

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm23SmallVectorTemplateBaseISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS_15SmallVectorImplIS7_EEEELb0EE18growAndEmplaceBackIJSE_EEERSE_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS0_IS7_EEEEE12emplace_backIJSD_EEERSD_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.c to i64
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.g ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64
  store ptr %i.l, ptr %i.j, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !65
  %.not.i.i.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFSt8optionalIN4llvm13LogicalResultEENS1_12PointerUnionIJN4mlir4TypeENS5_5ValueEEEERNS1_15SmallVectorImplIS6_EEEEC2EOSD_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !101
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !65
  store ptr %i.p, ptr %i.o, align 8, !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFSt8optionalIN4llvm13LogicalResultEENS1_12PointerUnionIJN4mlir4TypeENS5_5ValueEEEERNS1_15SmallVectorImplIS6_EEEEC2EOSD_.exit.i

_ZNSt8functionIFSt8optionalIN4llvm13LogicalResultEENS1_12PointerUnionIJN4mlir4TypeENS5_5ValueEEEERNS1_15SmallVectorImplIS6_EEEEC2EOSD_.exit.i: ; preds = %bb.d, %bb.c
  %i.q = load i32, ptr %i.b, align 8, !tbaa !60
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.b, align 8, !tbaa !60
  br label %_ZN4llvm15SmallVectorImplISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS0_IS7_EEEEE12emplace_backIJSD_EEERSD_DpOT_.exit

_ZN4llvm15SmallVectorImplISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS0_IS7_EEEEE12emplace_backIJSD_EEERSD_DpOT_.exit: ; preds = %bb.b, %_ZNSt8functionIFSt8optionalIN4llvm13LogicalResultEENS1_12PointerUnionIJN4mlir4TypeENS5_5ValueEEEERNS1_15SmallVectorImplIS6_EEEEC2EOSD_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !104  ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5clearEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS0_IS7_EEEEE12emplace_backIJSD_EEERSD_DpOT_.exit
  %i.w = shl i32 %i.u, 2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.y = load i32, ptr %i.x, align 4, !tbaa !105  ; 3 uses
  %i.z = icmp ult i32 %i.w, %i.y
  %i.aa = icmp ugt i32 %i.y, 64
  %or.cond.i = and i1 %i.z, %i.aa
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.s)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5clearEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !106
  %i.ad = zext i32 %i.y to i64
  %i.ae = add nuw nsw i64 %i.ad, 31
  %i.af = lshr i64 %i.ae, 3
  %i.ag = and i64 %i.af, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ac, i8 0, i64 %i.ag, i1 false)
  store i32 0, ptr %i.t, align 8, !tbaa !104
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5clearEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5clearEv.exit: ; preds = %_ZN4llvm15SmallVectorImplISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS0_IS7_EEEEE12emplace_backIJSD_EEERSD_DpOT_.exit, %bb.f, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
end_hunk_1
