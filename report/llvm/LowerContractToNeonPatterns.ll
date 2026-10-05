Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LowerContractToNeonPatterns?download=true
inline.NumInlined: 1641
inline.NumDeleted: 901
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"class.mlir::TypeID" = type { ptr }
%"class.llvm::ArrayRef" = type { ptr, i64 }
%"class.mlir::PatternBenefit" = type { i16 }
%"class.mlir::Type" = type { ptr }
%class.anon.96 = type { ptr }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.mlir::vector::ContractionOp" = type { %"class.mlir::Op.35" }
%"class.mlir::Op.35" = type { %"class.mlir::OpState" }
%"class.mlir::OpState" = type { ptr }
%"class.mlir::VectorType" = type { %"class.mlir::detail::StorageUserBase" }
%"class.mlir::detail::StorageUserBase" = type { %"class.mlir::Type" }
%"class.std::optional.61" = type { %"struct.std::_Optional_base.62" }
%"struct.std::_Optional_base.62" = type { %"struct.std::_Optional_payload.64" }
%"struct.std::_Optional_payload.64" = type { %"struct.std::_Optional_payload.base.70", [7 x i8] }
%"struct.std::_Optional_payload.base.70" = type { %"struct.std::_Optional_payload_base.base.69" }
%"struct.std::_Optional_payload_base.base.69" = type <{ %"union.std::_Optional_payload_base<llvm::SmallVector<long, 4>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::SmallVector<long, 4>>::_Storage" = type { %"class.llvm::SmallVector.67" }
%"class.llvm::SmallVector.67" = type { %"class.llvm::SmallVectorImpl.56", %"struct.llvm::SmallVectorStorage.68" }
%"class.llvm::SmallVectorImpl.56" = type { %"class.llvm::SmallVectorTemplateBase.57" }
%"class.llvm::SmallVectorTemplateBase.57" = type { %"class.llvm::SmallVectorTemplateCommon.58" }
%"class.llvm::SmallVectorTemplateCommon.58" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.68" = type { [32 x i8] }
%"class.llvm::SmallVector.55" = type { %"class.llvm::SmallVectorImpl.56", %"struct.llvm::SmallVectorStorage.59" }
%"struct.llvm::SmallVectorStorage.59" = type { [48 x i8] }
%"class.(anonymous namespace)::VectorContractRewriterI8MM" = type { %"class.(anonymous namespace)::VectorContractRewriter" }
%"class.(anonymous namespace)::VectorContractRewriter" = type { i32, i8, %"class.mlir::Value", %"class.mlir::Value", %"class.mlir::Value", i64, i64, i64, %"class.llvm::SmallVector.55", %"class.llvm::SmallVector.55" }
%"class.mlir::Value" = type { ptr }
%"class.llvm::SmallVector.238" = type { %"class.llvm::SmallVectorImpl.239", %"struct.llvm::SmallVectorStorage.242" }
%"class.llvm::SmallVectorImpl.239" = type { %"class.llvm::SmallVectorTemplateBase.240" }
%"class.llvm::SmallVectorTemplateBase.240" = type { %"class.llvm::SmallVectorTemplateCommon.241" }
%"class.llvm::SmallVectorTemplateCommon.241" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.242" = type { [8 x i8] }
%"class.llvm::ArrayRef.94" = type { ptr, i64 }
%"class.mlir::ShapedType" = type { %"class.mlir::TypeInterface" }
%"class.mlir::TypeInterface" = type { %"class.mlir::detail::Interface" }
%"class.mlir::detail::Interface" = type { %"class.mlir::Type", ptr }
%"class.llvm::SmallVector.284" = type { %"class.llvm::SmallVectorImpl.285", %"struct.llvm::SmallVectorStorage.288" }
%"class.llvm::SmallVectorImpl.285" = type { %"class.llvm::SmallVectorTemplateBase.286" }
%"class.llvm::SmallVectorTemplateBase.286" = type { %"class.llvm::SmallVectorTemplateCommon.287" }
%"class.llvm::SmallVectorTemplateCommon.287" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.288" = type { [32 x i8] }
%"class.mlir::Location" = type { %"class.mlir::LocationAttr" }
%"class.mlir::LocationAttr" = type { %"class.mlir::Attribute" }
%"class.mlir::Attribute" = type { ptr }
%"class.llvm::SmallVector.328" = type { %"class.llvm::SmallVectorImpl.56", %"struct.llvm::SmallVectorStorage.329" }
%"struct.llvm::SmallVectorStorage.329" = type { [24 x i8] }
%"class.mlir::StaticTileOffsetRange" = type { %"class.mlir::detail::TileOffsetRangeImpl", %"class.mlir::detail::TileOffsetRangeIterator", %"class.mlir::detail::TileOffsetRangeIterator" }
%"class.mlir::detail::TileOffsetRangeImpl" = type { %"class.llvm::SmallVector.55", %"class.llvm::SmallVector.55", %"class.llvm::SmallVector.55", i64 }
%"class.mlir::detail::TileOffsetRangeIterator" = type { %"class.mlir::detail::TileOffsetRangeImpl", i64 }
%class.anon.331 = type { ptr, ptr, ptr }
%"class.llvm::SmallVector.73" = type { %"class.llvm::SmallVectorImpl.74", %"struct.llvm::SmallVectorStorage.77" }
%"class.llvm::SmallVectorImpl.74" = type { %"class.llvm::SmallVectorTemplateBase.75" }
%"class.llvm::SmallVectorTemplateBase.75" = type { %"class.llvm::SmallVectorTemplateCommon.76" }
%"class.llvm::SmallVectorTemplateCommon.76" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.77" = type { [48 x i8] }
%"class.std::optional.230" = type { %"struct.std::_Optional_base.231" }
%"struct.std::_Optional_base.231" = type { %"struct.std::_Optional_payload.233" }
%"struct.std::_Optional_payload.233" = type { %"struct.std::_Optional_payload_base.base.235", [7 x i8] }
%"struct.std::_Optional_payload_base.base.235" = type <{ %"union.std::_Optional_payload_base<llvm::ArrayRef<long>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::ArrayRef<long>>::_Storage" = type { %"class.llvm::ArrayRef.94" }
%"class.mlir::vector::IteratorTypeAttr" = type { %"class.mlir::detail::StorageUserBase.93" }
%"class.mlir::detail::StorageUserBase.93" = type { %"class.mlir::Attribute" }
%"class.mlir::ArrayAttr" = type { %"class.mlir::detail::StorageUserBase.88" }
%"class.mlir::detail::StorageUserBase.88" = type { %"class.mlir::Attribute" }
%"struct.mlir::OperationState" = type { %"class.mlir::Location", %"class.mlir::OperationName", %"class.llvm::SmallVector.243", %"class.llvm::SmallVector.245", %"class.mlir::NamedAttrList", %"class.llvm::SmallVector.257", %"class.llvm::SmallVector.262", %"class.mlir::Attribute", %"class.mlir::PropertyRef", %"class.llvm::function_ref.267", %"class.llvm::function_ref.268" }
%"class.mlir::OperationName" = type { ptr }
%"class.llvm::SmallVector.243" = type { %"class.llvm::SmallVectorImpl.239", %"struct.llvm::SmallVectorStorage.244" }
%"struct.llvm::SmallVectorStorage.244" = type { [32 x i8] }
%"class.llvm::SmallVector.245" = type { %"class.llvm::SmallVectorImpl.246", %"struct.llvm::SmallVectorStorage.249" }
%"class.llvm::SmallVectorImpl.246" = type { %"class.llvm::SmallVectorTemplateBase.247" }
%"class.llvm::SmallVectorTemplateBase.247" = type { %"class.llvm::SmallVectorTemplateCommon.248" }
%"class.llvm::SmallVectorTemplateCommon.248" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.249" = type { [32 x i8] }
%"class.mlir::NamedAttrList" = type { %"class.llvm::SmallVector.250", %"class.llvm::PointerIntPair.255" }
%"class.llvm::SmallVector.250" = type { %"class.llvm::SmallVectorImpl.251", %"struct.llvm::SmallVectorStorage.254" }
%"class.llvm::SmallVectorImpl.251" = type { %"class.llvm::SmallVectorTemplateBase.252" }
%"class.llvm::SmallVectorTemplateBase.252" = type { %"class.llvm::SmallVectorTemplateCommon.253" }
%"class.llvm::SmallVectorTemplateCommon.253" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.254" = type { [64 x i8] }
%"class.llvm::PointerIntPair.255" = type { %"struct.llvm::detail::PunnedPointer.256" }
%"struct.llvm::detail::PunnedPointer.256" = type { [8 x i8] }
%"class.llvm::SmallVector.257" = type { %"class.llvm::SmallVectorImpl.258", %"struct.llvm::SmallVectorStorage.261" }
%"class.llvm::SmallVectorImpl.258" = type { %"class.llvm::SmallVectorTemplateBase.259" }
%"class.llvm::SmallVectorTemplateBase.259" = type { %"class.llvm::SmallVectorTemplateCommon.260" }
%"class.llvm::SmallVectorTemplateCommon.260" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.261" = type { [8 x i8] }
%"class.llvm::SmallVector.262" = type { %"class.llvm::SmallVectorImpl.263", %"struct.llvm::SmallVectorStorage.266" }
%"class.llvm::SmallVectorImpl.263" = type { %"class.llvm::SmallVectorTemplateBase.264" }
%"class.llvm::SmallVectorTemplateBase.264" = type { %"class.llvm::SmallVectorTemplateCommon.265" }
%"class.llvm::SmallVectorTemplateCommon.265" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.266" = type { [8 x i8] }
%"class.mlir::PropertyRef" = type { %"class.mlir::TypeID", ptr }
%"class.llvm::function_ref.267" = type { ptr, i64 }
%"class.llvm::function_ref.268" = type { ptr, i64 }
%"class.mlir::AffineMapAttr" = type { %"class.mlir::detail::StorageUserBase.394" }
%"class.mlir::detail::StorageUserBase.394" = type { %"class.mlir::Attribute" }
%"class.mlir::AffineConstantExpr" = type { %"class.mlir::AffineExpr" }
%"class.mlir::AffineExpr" = type { ptr }
%"class.mlir::AffineDimExpr" = type { %"class.mlir::AffineExpr" }
%"class.mlir::AffineMap" = type { ptr }
%"class.mlir::arith::ConstantOp" = type { %"class.mlir::Op.289" }
%"class.mlir::Op.289" = type { %"class.mlir::OpState" }
%"class.(anonymous namespace)::VectorContractRewriterBFMMLA" = type { %"class.(anonymous namespace)::VectorContractRewriter" }

$_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6vector13ContractionOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE = comdat any

$_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector13ContractionOpEEEN4llvm13LogicalResultEOT_PKc = comdat any

$_ZN4mlir6vector13ContractionOp21getIteratorTypesArrayEv = comdat any

$_ZNK4mlir10VectorType10isScalableEv = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector13ContractionOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZN4mlir9OpBuilder12createOrFoldINS_5arith7ExtSIOpEJRNS_4TypeERNS_5ValueEEEEvRN4llvm15SmallVectorImplIS6_EENS_8LocationEDpOT0_ = comdat any

$_ZN4llvmplERKNS_5TwineES2_ = comdat any

$_ZN4mlir9OpBuilder12createOrFoldINS_5arith7ExtUIOpEJRNS_4TypeERNS_5ValueEEEEvRN4llvm15SmallVectorImplIS6_EENS_8LocationEDpOT0_ = comdat any

$_ZN4llvm15SmallVectorImplIlEaSEOS1_ = comdat any

$_ZN4mlir6vector13ContractionOp20getIndexingMapsArrayEv = comdat any

$_ZN4mlir19applyPermutationMapIlEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS3_EE5valueEEENS_9AffineMapENS1_8ArrayRefIS3_EE = comdat any

$_ZN4mlir21StaticTileOffsetRangeD2Ev = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl = comdat any

$_ZN4mlir6detail19TileOffsetRangeImplC2ERKS1_ = comdat any

$_ZN4mlir9OpBuilder12createOrFoldINS_6vector21ExtractStridedSliceOpEJRNS_5ValueERN4llvm8ArrayRefIlEERNS6_11SmallVectorIlLj6EEESC_EEEvRNS6_15SmallVectorImplIS4_EENS_8LocationEDpOT0_ = comdat any

$_ZN4mlir9OpBuilder12createOrFoldINS_6vector20InsertStridedSliceOpEJRNS_5ValueERNS_5arith10ConstantOpERN4llvm11SmallVectorIlLj6EEESC_EEEvRNS9_15SmallVectorImplIS4_EENS_8LocationEDpOT0_ = comdat any

$_ZN4mlir9OpBuilder12createOrFoldINS_6vector11ShapeCastOpEJRNS_10VectorTypeERNS_5ValueEEEEvRN4llvm15SmallVectorImplIS6_EENS_8LocationEDpOT0_ = comdat any

$_ZN4mlir9OpBuilder12createOrFoldINS_8arm_neon7SmmlaOpEJNS_4TypeERNS_5ValueES6_S6_EEEvRN4llvm15SmallVectorImplIS5_EENS_8LocationEDpOT0_ = comdat any

$_ZN4mlir9OpBuilder12createOrFoldINS_8arm_neon7UmmlaOpEJNS_4TypeERNS_5ValueES6_S6_EEEvRN4llvm15SmallVectorImplIS5_EENS_8LocationEDpOT0_ = comdat any

$_ZN4mlir9OpBuilder12createOrFoldINS_8arm_neon8UsmmlaOpEJNS_4TypeERNS_5ValueES6_S6_EEEvRN4llvm15SmallVectorImplIS5_EENS_8LocationEDpOT0_ = comdat any

$_ZN4mlir9OpBuilder12createOrFoldINS_6vector11ShapeCastOpEJNS_4TypeERNS_5ValueEEEEvRN4llvm15SmallVectorImplIS5_EENS_8LocationEDpOT0_ = comdat any

$_ZN4mlir9OpBuilder12createOrFoldINS_6vector9ExtractOpEJRNS_5ValueEiEEEvRN4llvm15SmallVectorImplIS4_EENS_8LocationEDpOT0_ = comdat any

$_ZN4mlir9OpBuilder12createOrFoldINS_6vector20InsertStridedSliceOpEJRNS_5ValueES5_RN4llvm11SmallVectorIlLj6EEES9_EEEvRNS6_15SmallVectorImplIS4_EENS_8LocationEDpOT0_ = comdat any

$_ZN4mlir14RewritePatternD2Ev = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN12_GLOBAL__N_133LowerContractionToNeonI8MMPatternE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN12_GLOBAL__N_133LowerContractionToNeonI8MMPatternD0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6vector13ContractionOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK12_GLOBAL__N_133LowerContractionToNeonI8MMPattern15matchAndRewriteEN4mlir6vector13ContractionOpERNS1_15PatternRewriterE] }, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"vector.contract\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Unsupported operand shapes\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"LHS is not a sign- or zero- extended iN, N <= 8\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"RHS is not a sign- or zero- extended iN, N <= 8\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"iterator types do not correspond to matrix multiplication\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Invalid operand rank\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Not applicable to scalable vectors\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Dimensions mismatch\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5arith7ExtSIOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_5arith7ExtUIOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"Building op `\00", align 1
@.str.14 = private unnamed_addr constant [238 x i8] c"` but it isn't known in this MLIRContext: the dialect may not be loaded or this operation hasn't been added by the dialect. See also https://mlir.llvm.org/getting_started/Faq/#registered-loaded-dependent-whats-up-with-dialects-management\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"arith.extsi\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"arith.extui\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.17 = private unnamed_addr constant [67 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::ShapedType]\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_6vector21ExtractStridedSliceOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.18 = private unnamed_addr constant [29 x i8] c"vector.extract_strided_slice\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_6vector20InsertStridedSliceOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.19 = private unnamed_addr constant [28 x i8] c"vector.insert_strided_slice\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_6vector11ShapeCastOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.20 = private unnamed_addr constant [18 x i8] c"vector.shape_cast\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_8arm_neon7SmmlaOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.21 = private unnamed_addr constant [20 x i8] c"arm_neon.intr.smmla\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_8arm_neon7UmmlaOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.22 = private unnamed_addr constant [20 x i8] c"arm_neon.intr.ummla\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_8arm_neon8UsmmlaOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.23 = private unnamed_addr constant [21 x i8] c"arm_neon.intr.usmmla\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_6vector9ExtractOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.24 = private unnamed_addr constant [15 x i8] c"vector.extract\00", align 1
@.str.25 = private unnamed_addr constant [107 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::LowerContractionToNeonI8MMPattern]\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN12_GLOBAL__N_135LowerContractionToNeonBFMMLAPatternE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN12_GLOBAL__N_135LowerContractionToNeonBFMMLAPatternD0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6vector13ContractionOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK12_GLOBAL__N_135LowerContractionToNeonBFMMLAPattern15matchAndRewriteEN4mlir6vector13ContractionOpERNS1_15PatternRewriterE] }, align 8
@.str.27 = private unnamed_addr constant [35 x i8] c"output type is not a vector of f32\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"input type is not a vector of bf16\00", align 1
@.str.29 = private unnamed_addr constant [109 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::LowerContractionToNeonBFMMLAPattern]\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir8arm_neon42populateLowerContractionToNeonI8MMPatternsERNS_17RewritePatternSetE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.llvm::ArrayRef", align 8    ; 4 uses
  %2 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !160
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #15, !noalias !161 ; 10 uses
  call void @_ZN4mlir14PatternBenefitC1Ej(ptr noundef nonnull align 2 dereferenceable(2) %2, i32 noundef 2) #16, !noalias !161
  %i.c = load i16, ptr %2, align 2, !noalias !161
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !161
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !noalias !161
  call void @_ZN4mlir7PatternC2EN4llvm9StringRefENS_14PatternBenefitEPNS_11MLIRContextENS1_8ArrayRefIS2_EE(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr nonnull @.str.5, i64 15, i16 %i.c, ptr noundef %i.a, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %1) #16, !noalias !161
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !161
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_133LowerContractionToNeonI8MMPatternE, i64 16), ptr %i.b, align 8, !tbaa !40, !noalias !161
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !160
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !42, !noalias !160
  %i.e = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i, 0
  br i1 %i.e, label %bb.b, label %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_133LowerContractionToNeonI8MMPatternEJRPNS_11MLIRContextEiEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr getelementptr inbounds nuw (i8, ptr @.str.25, i64 49), ptr %i.f, align 8, !tbaa !44, !noalias !160
  store i64 56, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !42, !noalias !160
  br label %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_133LowerContractionToNeonI8MMPatternEJRPNS_11MLIRContextEiEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i

_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_133LowerContractionToNeonI8MMPatternEJRPNS_11MLIRContextEiEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !45   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.j = load i32, ptr %i.i, align 4, !tbaa !46
  %i.k = icmp ugt i32 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i

bb.c:                                             ; preds = %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_133LowerContractionToNeonI8MMPatternEJRPNS_11MLIRContextEiEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i
  %i.l = zext i32 %i.h to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.n, i64 noundef %i.l, i64 noundef 16) #16
  %.pre8.pre.i.i.i.i = load i32, ptr %i.g, align 8, !tbaa !45
  br label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i: ; preds = %bb.c, %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_133LowerContractionToNeonI8MMPatternEJRPNS_11MLIRContextEiEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i
  %.pre8.i.i.i.i = phi i32 [ %i.h, %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_133LowerContractionToNeonI8MMPatternEJRPNS_11MLIRContextEiEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i ], [ %.pre8.pre.i.i.i.i, %bb.c ]
  store i32 %.pre8.i.i.i.i, ptr %i.g, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !48
  %.not.i.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i
  store ptr %i.b, ptr %i.q, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.t, ptr %i.p, align 8, !tbaa !47
  br label %_ZN4mlir17RewritePatternSet3addIJN12_GLOBAL__N_133LowerContractionToNeonI8MMPatternEERPNS_11MLIRContextEJiEvEERS0_OT0_DpOT1_.exit

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !52   ; 10 uses
  %i.v = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i.i5.i.i = icmp ne i64 %i.ad, 0
  call void @llvm.assume(i1 %.not.i.i.i5.i.i)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #15 ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  store ptr %i.b, ptr %i.ag, align 8, !tbaa !51
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.q
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ah = add i64 %i.v, -8
  %i.ai = sub i64 %i.ah, %i.w                     ; 3 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader11, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.al = and i64 %i.ai, -8
  %i.am = add i64 %i.al, 8                        ; 2 uses
  %i.an = getelementptr i8, ptr %i.af, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.u, i64 %i.am
  %bound0 = icmp ult ptr %i.af, %i.ao
  %bound1 = icmp ult ptr %i.u, %i.an
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.af, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %i.u, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.as ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.u, i64 %i.as ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.at = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !53, !alias.scope !164, !noalias !162
  %wide.load9 = load <2 x i64>, ptr %i.at, align 8, !tbaa !53, !alias.scope !164, !noalias !162
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !53, !alias.scope !165, !noalias !164
  store <2 x i64> %wide.load9, ptr %i.au, align 8, !tbaa !53, !alias.scope !165, !noalias !164
  %i.av = getelementptr i8, ptr %next.gep8, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !53, !alias.scope !164, !noalias !162
  store <2 x ptr> splat (ptr null), ptr %i.av, align 8, !tbaa !53, !alias.scope !164, !noalias !162
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.i.i.preheader11:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader11 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.ax = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !53, !alias.scope !163, !noalias !162
  store i64 %i.ax, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !53, !alias.scope !162, !noalias !163
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !53, !alias.scope !163, !noalias !162
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.q
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !159

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.af, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.aq, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_133LowerContractionToNeonI8MMPatternES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  %i.bb = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.bd) #18
  br label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_133LowerContractionToNeonI8MMPatternES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_122VectorContractRewriter12matchAndInitEN4mlir6vector13ContractionOpERNS1_15PatternRewriterE:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i14 = load ptr, ptr %i.ae, align 8, !tbaa !89
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i14, i64 8
  %.0.copyload.i.i.i.i.i.i.i15 = load i64, ptr %i.af, align 8
  %i.ag = and i64 %.0.copyload.i.i.i.i.i.i.i15, -8
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %10, align 8
  %i.ai = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #16
  %i.aj = extractvalue { ptr, i64 } %i.ai, 1
  %i.ak = icmp sgt i64 %i.aj, 2
  br i1 %i.ak, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #16
  %i.am = extractvalue { ptr, i64 } %i.al, 1
  %.not11 = icmp eq i64 %i.am, 2
  br i1 %.not11, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.ao, align 1, !tbaa !74
  store ptr @.str.10, ptr %4, align 8, !tbaa !75
  store i8 3, ptr %i.an, align 8, !tbaa !76
  %i.ap = load ptr, ptr %7, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %4, ptr %3, align 8, !tbaa !78
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !85 ; 4 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i16, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector13ContractionOpEEEN4llvm13LogicalResultEOT_PKc.exit19, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ar) #16
  br i1 %i.as, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i17, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector13ContractionOpEEEN4llvm13LogicalResultEOT_PKc.exit19

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i17: ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.0.0.copyload.i.i.i.i18 = load ptr, ptr %i.at, align 8
  %i.au = ptrtoint ptr %3 to i64
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(12) %i.ar, ptr %.sroa.0.0.copyload.i.i.i.i18, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector13ContractionOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.au) #16, !inline_history !196
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector13ContractionOpEEEN4llvm13LogicalResultEOT_PKc.exit19

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector13ContractionOpEEEN4llvm13LogicalResultEOT_PKc.exit19: ; preds = %bb.j, %bb.k, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.t

bb.l:                                             ; preds = %bb.i
  %i.ay = call noundef zeroext i1 @_ZNK4mlir10VectorType10isScalableEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br i1 %i.ay, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = call noundef zeroext i1 @_ZNK4mlir10VectorType10isScalableEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ba = call i8 @_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector13ContractionOpEEEN4llvm13LogicalResultEOT_PKc(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.11)
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.bb = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #16
  %i.bc = extractvalue { ptr, i64 } %i.bb, 0
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !42
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !69
  %i.bf = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #16
  %i.bg = extractvalue { ptr, i64 } %i.bf, 0
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !42
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !70
  %i.bj = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #16
  %i.bk = extractvalue { ptr, i64 } %i.bj, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !42
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !71
  %i.bo = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #16
  %i.bp = extractvalue { ptr, i64 } %i.bo, 1
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 1, ptr %i.be, align 8, !tbaa !69
  %i.br = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #16
  %i.bs = extractvalue { ptr, i64 } %i.br, 0
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bt = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #16
  %i.bu = extractvalue { ptr, i64 } %i.bt, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0.in = phi ptr [ %i.bs, %bb.p ], [ %i.bv, %bb.q ]
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !42
  %i.bw = load i64, ptr %i.bn, align 8, !tbaa !71
  %.not12 = icmp eq i64 %.0, %i.bw
  br i1 %.not12, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = call i8 @_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector13ContractionOpEEEN4llvm13LogicalResultEOT_PKc(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.12)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.n, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector13ContractionOpEEEN4llvm13LogicalResultEOT_PKc.exit19
  %.sroa.0.1 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector13ContractionOpEEEN4llvm13LogicalResultEOT_PKc.exit19 ], [ %i.ba, %bb.n ], [ %i.bx, %bb.s ], [ 1, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector13ContractionOpEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.0.2 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector13ContractionOpEEEN4llvm13LogicalResultEOT_PKc.exit ], [ %.sroa.0.1, %bb.t ]
  %i.by = load ptr, ptr %8, align 8, !tbaa !57    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZN4llvm11SmallVectorIN4mlir6vector12IteratorTypeELj12EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.by) #16
  br label %_ZN4llvm11SmallVectorIN4mlir6vector12IteratorTypeELj12EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir6vector12IteratorTypeELj12EED2Ev.exit: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  ret i8 %.sroa.0.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector13ContractionOpEEEN4llvm13LogicalResultEOT_PKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %class.anon.96, align 8             ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.b, align 1, !tbaa !74
  %i.c = load i8, ptr %2, align 1, !tbaa !75
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %_ZN4llvm5TwineC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %4, align 8, !tbaa !75
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %bb.a, %bb.b
  %storemerge.i = phi i8 [ 3, %bb.b ], [ 1, %bb.a ]
  store i8 %storemerge.i, ptr %i.a, align 8, !tbaa !76
  %i.d = load ptr, ptr %1, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %4, ptr %3, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector13ContractionOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit
  %i.g = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.f) #16
  br i1 %i.g, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector13ContractionOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8
  %i.i = ptrtoint ptr %3 to i64
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr %.sroa.0.0.copyload.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector13ContractionOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.i) #16, !inline_history !197
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector13ContractionOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector13ContractionOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit: ; preds = %_ZN4llvm5TwineC2EPKc.exit, %bb.c, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i8 } @_ZN12_GLOBAL__N_113getExtOperandIN4mlir5arith7ExtSIOpEEESt8optionalINS1_5ValueEES5_(ptr %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %2 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %3 = alloca %"class.mlir::VectorType", align 8  ; 4 uses
  %4 = alloca %"class.mlir::VectorType", align 8  ; 4 uses
  %5 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %6 = alloca %"class.mlir::VectorType", align 8  ; 4 uses
  %7 = alloca %"class.mlir::Type", align 8        ; 5 uses
  store ptr %0, ptr %1, align 8
  %i.a = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #16 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !120
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_5arith7ExtSIOpEvE2idE
  br i1 %i.e, label %_ZNK4mlir5Value13getDefiningOpINS_5arith7ExtSIOpEEET_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.f = load ptr, ptr %1, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.g, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.i = inttoptr i64 %i.h to ptr
  store ptr %i.i, ptr %3, align 8
  %i.j = call ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  store ptr %i.j, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.k = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = call noundef i32 @_ZNK4mlir4Type21getIntOrFloatBitWidthEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %i.m = icmp ugt i32 %i.l, 8
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i64, ptr %1, align 8, !tbaa !89
  %i.o = inttoptr i64 %i.n to ptr
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.012.0 = phi ptr [ %i.o, %bb.e ], [ undef, %bb.d ], [ undef, %bb.c ]
  %.sroa.3.0 = phi i8 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.n

_ZNK4mlir5Value13getDefiningOpINS_5arith7ExtSIOpEEET_v.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !88
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !89 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i1 = load i64, ptr %i.s, align 8
  %i.t = and i64 %.0.copyload.i.i.i.i.i1, -8
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !97
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.x = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  %spec.select.i.i = select i1 %i.x, ptr %i.u, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %4, align 8
  %i.y = icmp eq ptr %spec.select.i.i, null
  br i1 %i.y, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_ZNK4mlir5Value13getDefiningOpINS_5arith7ExtSIOpEEET_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.z = call ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  store ptr %i.z, ptr %5, align 8
  %i.aa = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  br i1 %i.aa, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ab = call noundef i32 @_ZNK4mlir4Type21getIntOrFloatBitWidthEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %i.ac = icmp ugt i32 %i.ab, 8
  br i1 %i.ac, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.ad = getelementptr inbounds i8, ptr %i.a, i64 -8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ad, align 8
  %i.ae = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !97
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i4 = load ptr, ptr %i.ah, align 8, !tbaa !100
  %i.ai = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i4, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE ; 2 uses
  %spec.select.i.i5 = select i1 %i.ai, ptr %i.af, ptr null
  store ptr %spec.select.i.i5, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  br i1 %i.ai, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.aj = call ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  store ptr %i.aj, ptr %7, align 8
  %i.ak = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 32) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %spec.select = zext i1 %i.ak to i8
  br label %bb.k

.critedge:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge
  %.sroa.3.1 = phi i8 [ %spec.select, %bb.j ], [ 0, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.h, %bb.k
  %.sroa.3.2 = phi i8 [ %.sroa.3.1, %bb.k ], [ 0, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.m

bb.m:                                             ; preds = %_ZNK4mlir5Value13getDefiningOpINS_5arith7ExtSIOpEEET_v.exit, %bb.l
  %.sroa.3.3 = phi i8 [ %.sroa.3.2, %bb.l ], [ 0, %_ZNK4mlir5Value13getDefiningOpINS_5arith7ExtSIOpEEET_v.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f
  %.sroa.012.4 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i, %bb.m ], [ %.sroa.012.0, %bb.f ]
  %.sroa.3.4 = phi i8 [ %.sroa.3.3, %bb.m ], [ %.sroa.3.0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.012.4, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.4, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i8 } @_ZN12_GLOBAL__N_113getExtOperandIN4mlir5arith7ExtUIOpEEESt8optionalINS1_5ValueEES5_(ptr %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.mlir::Value", align 8       ; 2 uses
  %2 = alloca %"class.mlir::VectorType", align 8  ; 4 uses
  %3 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %4 = alloca %"class.mlir::VectorType", align 8  ; 4 uses
  %5 = alloca %"class.mlir::Type", align 8        ; 5 uses
  store ptr %0, ptr %1, align 8
  %i.a = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #16 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !120
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_5arith7ExtUIOpEvE2idE
  br i1 %i.e, label %_ZNK4mlir5Value13getDefiningOpINS_5arith7ExtUIOpEEET_v.exit, label %bb.j

_ZNK4mlir5Value13getDefiningOpINS_5arith7ExtUIOpEEET_v.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !89 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.i, align 8
  %i.j = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !97
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !100
  %i.n = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  %spec.select.i.i = select i1 %i.n, ptr %i.k, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %2, align 8
  %i.o = icmp eq ptr %spec.select.i.i, null
  br i1 %i.o, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZNK4mlir5Value13getDefiningOpINS_5arith7ExtUIOpEEET_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.p = call ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  store ptr %i.p, ptr %3, align 8
  %i.q = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  br i1 %i.q, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.r = call noundef i32 @_ZNK4mlir4Type21getIntOrFloatBitWidthEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %i.s = icmp ugt i32 %i.r, 8
  br i1 %i.s, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.t = getelementptr inbounds i8, ptr %i.a, i64 -8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.t, align 8
  %i.u = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !97
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i2 = load ptr, ptr %i.x, align 8, !tbaa !100
  %i.y = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i2, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE ; 2 uses
  %spec.select.i.i3 = select i1 %i.y, ptr %i.v, ptr null
  store ptr %spec.select.i.i3, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  br i1 %i.y, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.z = call ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  store ptr %i.z, ptr %5, align 8
  %i.aa = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 32) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %spec.select = zext i1 %i.aa to i8
  br label %bb.g

.critedge:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge
  %.sroa.2.0 = phi i8 [ %spec.select, %bb.f ], [ 0, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.g
  %.sroa.2.1 = phi i8 [ %.sroa.2.0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4mlir5Value13getDefiningOpINS_5arith7ExtUIOpEEET_v.exit, %bb.h
  %.sroa.2.2 = phi i8 [ %.sroa.2.1, %bb.h ], [ 0, %_ZNK4mlir5Value13getDefiningOpINS_5arith7ExtUIOpEEET_v.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.i
  %.sroa.09.3 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i, %bb.i ], [ undef, %bb.b ], [ undef, %bb.a ]
  %.sroa.2.3 = phi i8 [ %.sroa.2.2, %bb.i ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.09.3, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.2.3, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN12_GLOBAL__N_120extendSmallIntVectorEN4mlir8LocationENS0_10VectorTypeENS0_5ValueEbRNS0_15PatternRewriterE(ptr %0, ptr %1, ptr %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(40) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.llvm::SmallVector.238", align 8 ; 8 uses
  %6 = alloca %"class.llvm::SmallVector.238", align 8 ; 8 uses
  %7 = alloca %"class.std::optional.230", align 8 ; 4 uses
  %8 = alloca %"class.mlir::VectorType", align 8  ; 2 uses
  %9 = alloca %"class.mlir::Value", align 8       ; 3 uses
  %10 = alloca %"class.mlir::Type", align 8       ; 5 uses
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = tail call ptr @_ZN4mlir7Builder9getI8TypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 0, ptr %i.c, align 8, !tbaa !199
  %i.d = call ptr @_ZNK4mlir10VectorType9cloneWithESt8optionalIN4llvm8ArrayRefIlEEENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull byval(%"class.std::optional.230") align 8 %7, ptr %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store ptr %i.d, ptr %10, align 8, !tbaa !122
  br i1 %3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.f, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 1, ptr %i.g, align 4, !tbaa !46
  call void @_ZN4mlir9OpBuilder12createOrFoldINS_5arith7ExtSIOpEJRNS_4TypeERNS_5ValueEEEEvRN4llvm15SmallVectorImplIS6_EENS_8LocationEDpOT0_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %0, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.h = load ptr, ptr %6, align 8, !tbaa !57     ; 3 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %i.h, align 8, !tbaa !89
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %_ZN4mlir9OpBuilder12createOrFoldINS_5arith7ExtSIOpEJRNS_4TypeERNS_5ValueEEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES6_E4typeENS_8LocationEDpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef nonnull %i.h) #16
  br label %_ZN4mlir9OpBuilder12createOrFoldINS_5arith7ExtSIOpEJRNS_4TypeERNS_5ValueEEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES6_E4typeENS_8LocationEDpOT0_.exit

_ZN4mlir9OpBuilder12createOrFoldINS_5arith7ExtSIOpEJRNS_4TypeERNS_5ValueEEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES6_E4typeENS_8LocationEDpOT0_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 1, ptr %i.l, align 4, !tbaa !46
  call void @_ZN4mlir9OpBuilder12createOrFoldINS_5arith7ExtUIOpEJRNS_4TypeERNS_5ValueEEEEvRN4llvm15SmallVectorImplIS6_EENS_8LocationEDpOT0_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %0, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.m = load ptr, ptr %5, align 8, !tbaa !57     ; 3 uses
  %.sroa.04.0.copyload.i9 = load ptr, ptr %i.m, align 8, !tbaa !89
  %i.n = icmp eq ptr %i.m, %i.j
  br i1 %i.n, label %_ZN4mlir9OpBuilder12createOrFoldINS_5arith7ExtUIOpEJRNS_4TypeERNS_5ValueEEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES6_E4typeENS_8LocationEDpOT0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef nonnull %i.m) #16
  br label %_ZN4mlir9OpBuilder12createOrFoldINS_5arith7ExtUIOpEJRNS_4TypeERNS_5ValueEEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES6_E4typeENS_8LocationEDpOT0_.exit

_ZN4mlir9OpBuilder12createOrFoldINS_5arith7ExtUIOpEJRNS_4TypeERNS_5ValueEEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES6_E4typeENS_8LocationEDpOT0_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.f

bb.f:                                             ; preds = %_ZN4mlir9OpBuilder12createOrFoldINS_5arith7ExtUIOpEJRNS_4TypeERNS_5ValueEEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES6_E4typeENS_8LocationEDpOT0_.exit, %_ZN4mlir9OpBuilder12createOrFoldINS_5arith7ExtSIOpEJRNS_4TypeERNS_5ValueEEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES6_E4typeENS_8LocationEDpOT0_.exit
  %.sroa.08.0 = phi ptr [ %.sroa.04.0.copyload.i, %_ZN4mlir9OpBuilder12createOrFoldINS_5arith7ExtSIOpEJRNS_4TypeERNS_5ValueEEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES6_E4typeENS_8LocationEDpOT0_.exit ], [ %.sroa.04.0.copyload.i9, %_ZN4mlir9OpBuilder12createOrFoldINS_5arith7ExtUIOpEJRNS_4TypeERNS_5ValueEEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES6_E4typeENS_8LocationEDpOT0_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  ret ptr %.sroa.08.0
}

declare void @_ZN4mlir6vector13ContractionOp17getShapeForUnrollEv(ptr dead_on_unwind writable sret(%"class.std::optional.61") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6vector13ContractionOp21getIteratorTypesArrayEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.73") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::vector::IteratorTypeAttr", align 8 ; 4 uses
  %3 = alloca %"class.mlir::ArrayAttr", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = tail call ptr @_ZN4mlir6vector13ContractionOp16getIteratorTypesEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  store ptr %i.a, ptr %3, align 8
  %i.b = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #16, !noalias !205
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #16, !noalias !205 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.i, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 12, ptr %i.j, align 4, !tbaa !46
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 5 uses
  %i.o = icmp ugt i64 %i.n, 12
  br i1 %i.o, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir6vector12IteratorTypeEE7reserveEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.h, i64 noundef %i.n, i64 noundef 4) #16
  %.pre.i.i = load i32, ptr %i.i, align 8, !tbaa !45 ; 2 uses
  %.pre24.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir6vector12IteratorTypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir6vector12IteratorTypeEE7reserveEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi.i.i = phi i64 [ 0, %bb.a ], [ %.pre24.i.i, %bb.b ]
  %i.p = phi i32 [ 0, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.q = icmp sgt i64 %i.n, 0
  br i1 %i.q, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i, label %_ZN4llvm11SmallVectorIN4mlir6vector12IteratorTypeELj12EEC2INS_15mapped_iteratorINS1_9ArrayAttr19attr_value_iteratorINS2_16IteratorTypeAttrEEEZNKS7_15getAsValueRangeIS9_S3_EEDavEUlS9_E_S3_EEvEET_SE_.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i:             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir6vector12IteratorTypeEE7reserveEm.exit.i.i
  %i.r = load ptr, ptr %0, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i
end_hunk_1
