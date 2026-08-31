Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VectorUtils?download=true
inline.NumInlined: 2729
inline.NumDeleted: 1636
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
%"class.llvm::ArrayRef.101" = type { ptr, i64 }
%"class.mlir::ShapedType" = type { %"class.mlir::TypeInterface" }
%"class.mlir::TypeInterface" = type { %"class.mlir::detail::Interface.119" }
%"class.mlir::detail::Interface.119" = type { %"class.mlir::Type", ptr }
%"class.llvm::ArrayRef.23" = type { ptr, i64 }
%"class.llvm::SmallVector.120" = type { %"class.llvm::SmallVectorImpl.121", %"struct.llvm::SmallVectorStorage.125" }
%"class.llvm::SmallVectorImpl.121" = type { %"class.llvm::SmallVectorTemplateBase.122" }
%"class.llvm::SmallVectorTemplateBase.122" = type { %"class.llvm::SmallVectorTemplateCommon.123" }
%"class.llvm::SmallVectorTemplateCommon.123" = type { %"class.llvm::SmallVectorBase.124" }
%"class.llvm::SmallVectorBase.124" = type { ptr, i64, i64 }
%"struct.llvm::SmallVectorStorage.125" = type { [40 x i8] }
%"class.llvm::SmallVector.126" = type { %"class.llvm::SmallVectorImpl.127", %"struct.llvm::SmallVectorStorage.130" }
%"struct.llvm::SmallVectorStorage.130" = type { [48 x i8] }
%"class.mlir::ValueRange" = type { %"class.llvm::detail::indexed_accessor_range_base" }
%"class.llvm::detail::indexed_accessor_range_base" = type { %"class.llvm::PointerUnion", i64 }
%"class.llvm::PointerUnion" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers" }
%"class.llvm::pointer_union_detail::PointerUnionMembers" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.197" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.197" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.198" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.198" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.199" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.199" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.200" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.200" = type { %"struct.llvm::detail::PunnedPointer" }
%"struct.llvm::detail::PunnedPointer" = type { [8 x i8] }
%"class.std::optional.201" = type { %"struct.std::_Optional_base.202" }
%"struct.std::_Optional_base.202" = type { %"struct.std::_Optional_payload.204" }
%"struct.std::_Optional_payload.204" = type { %"struct.std::_Optional_payload_base.base.206", [7 x i8] }
%"struct.std::_Optional_payload_base.base.206" = type <{ %"union.std::_Optional_payload_base<llvm::ArrayRef<bool>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::ArrayRef<bool>>::_Storage" = type { %"class.llvm::ArrayRef.101" }
%"class.std::optional.209" = type { %"struct.std::_Optional_base.210" }
%"struct.std::_Optional_base.210" = type { %"struct.std::_Optional_payload.212" }
%"struct.std::_Optional_payload.212" = type { %"struct.std::_Optional_payload_base.base.214", [7 x i8] }
%"struct.std::_Optional_payload_base.base.214" = type <{ %"union.std::_Optional_payload_base<llvm::ArrayRef<long>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::ArrayRef<long>>::_Storage" = type { %"class.llvm::ArrayRef" }
%"class.mlir::AffineExpr" = type { ptr }
%"class.mlir::AffineDimExpr" = type { %"class.mlir::AffineExpr" }
%"class.mlir::AffineMap" = type { ptr }
%"struct.mlir::detail::constant_op_binder" = type { ptr }
%"class.llvm::SmallVector.547" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage.548" }
%"struct.llvm::SmallVectorStorage.548" = type { [32 x i8] }
%"class.llvm::APSInt" = type { %"class.llvm::APInt.base", i8, [3 x i8] }
%"class.llvm::APInt.base" = type <{ %union.anon.589, i32 }>
%union.anon.589 = type { i64 }
%"struct.mlir::detail::constant_int_value_binder" = type { ptr }
%"class.llvm::FailureOr.306" = type { %"class.std::optional.307" }
%"class.std::optional.307" = type { %"struct.std::_Optional_base.308" }
%"struct.std::_Optional_base.308" = type { %"struct.std::_Optional_payload.310" }
%"struct.std::_Optional_payload.310" = type { %"struct.std::_Optional_payload.base.314", [7 x i8] }
%"struct.std::_Optional_payload.base.314" = type { %"struct.std::_Optional_payload_base.base.313" }
%"struct.std::_Optional_payload_base.base.313" = type <{ %"union.std::_Optional_payload_base<llvm::SmallVector<mlir::Value>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::SmallVector<mlir::Value>>::_Storage" = type { %"class.llvm::SmallVector.126" }
%class.anon.685 = type { ptr }
%"struct.mlir::detail::TypedValue" = type { %"class.mlir::Value" }
%class.anon.687 = type { ptr }
%"class.mlir::VectorType::Builder" = type { %"class.mlir::Type", %"class.mlir::CopyOnWriteArrayRef", %"class.mlir::CopyOnWriteArrayRef.383" }
%"class.mlir::CopyOnWriteArrayRef" = type { %"class.llvm::ArrayRef", %"class.llvm::SmallVector" }
%"class.mlir::CopyOnWriteArrayRef.383" = type { %"class.llvm::ArrayRef.101", %"class.llvm::SmallVector.120" }
%"class.mlir::StringAttr" = type { %"class.mlir::detail::StorageUserBase.475" }
%"class.mlir::detail::StorageUserBase.475" = type { %"class.mlir::Attribute" }
%"class.llvm::SmallVector.606" = type { %"class.llvm::SmallVectorImpl.103", %"struct.llvm::SmallVectorStorage.607" }
%"struct.llvm::SmallVectorStorage.607" = type { [8 x i8] }
%"class.mlir::IntegerAttr" = type { %"class.mlir::detail::StorageUserBase.609" }
%"class.mlir::detail::StorageUserBase.609" = type { %"class.mlir::Attribute" }
%"class.mlir::DenseElementsAttr::AttributeElementIterator" = type { %"class.llvm::indexed_accessor_iterator.616" }
%"class.llvm::indexed_accessor_iterator.616" = type { ptr, i64 }
%"class.mlir::DenseElementsAttr" = type { %"class.mlir::Attribute" }
%"class.mlir::SplatElementsAttr" = type { %"class.mlir::DenseElementsAttr" }
%"struct.mlir::OperationState" = type { %"class.mlir::Location", %"class.mlir::OperationName", %"class.llvm::SmallVector.631", %"class.llvm::SmallVector.633", %"class.mlir::NamedAttrList", %"class.llvm::SmallVector.645", %"class.llvm::SmallVector.650", %"class.mlir::Attribute", %"class.mlir::PropertyRef", %"class.llvm::function_ref.655", %"class.llvm::function_ref.656" }
%"class.mlir::OperationName" = type { ptr }
%"class.llvm::SmallVector.631" = type { %"class.llvm::SmallVectorImpl.127", %"struct.llvm::SmallVectorStorage.632" }
%"struct.llvm::SmallVectorStorage.632" = type { [32 x i8] }
%"class.llvm::SmallVector.633" = type { %"class.llvm::SmallVectorImpl.634", %"struct.llvm::SmallVectorStorage.637" }
%"class.llvm::SmallVectorImpl.634" = type { %"class.llvm::SmallVectorTemplateBase.635" }
%"class.llvm::SmallVectorTemplateBase.635" = type { %"class.llvm::SmallVectorTemplateCommon.636" }
%"class.llvm::SmallVectorTemplateCommon.636" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.637" = type { [32 x i8] }
%"class.mlir::NamedAttrList" = type { %"class.llvm::SmallVector.638", %"class.llvm::PointerIntPair.643" }
%"class.llvm::SmallVector.638" = type { %"class.llvm::SmallVectorImpl.639", %"struct.llvm::SmallVectorStorage.642" }
%"class.llvm::SmallVectorImpl.639" = type { %"class.llvm::SmallVectorTemplateBase.640" }
%"class.llvm::SmallVectorTemplateBase.640" = type { %"class.llvm::SmallVectorTemplateCommon.641" }
%"class.llvm::SmallVectorTemplateCommon.641" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.642" = type { [64 x i8] }
%"class.llvm::PointerIntPair.643" = type { %"struct.llvm::detail::PunnedPointer.644" }
%"struct.llvm::detail::PunnedPointer.644" = type { [8 x i8] }
%"class.llvm::SmallVector.645" = type { %"class.llvm::SmallVectorImpl.646", %"struct.llvm::SmallVectorStorage.649" }
%"class.llvm::SmallVectorImpl.646" = type { %"class.llvm::SmallVectorTemplateBase.647" }
%"class.llvm::SmallVectorTemplateBase.647" = type { %"class.llvm::SmallVectorTemplateCommon.648" }
%"class.llvm::SmallVectorTemplateCommon.648" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.649" = type { [8 x i8] }
%"class.llvm::SmallVector.650" = type { %"class.llvm::SmallVectorImpl.651", %"struct.llvm::SmallVectorStorage.654" }
%"class.llvm::SmallVectorImpl.651" = type { %"class.llvm::SmallVectorTemplateBase.652" }
%"class.llvm::SmallVectorTemplateBase.652" = type { %"class.llvm::SmallVectorTemplateCommon.653" }
%"class.llvm::SmallVectorTemplateCommon.653" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.654" = type { [8 x i8] }
%"class.mlir::PropertyRef" = type { %"class.mlir::TypeID", ptr }
%"class.llvm::function_ref.655" = type { ptr, i64 }
%"class.llvm::function_ref.656" = type { ptr, i64 }

$_ZN4mlir21StaticTileOffsetRangeC2EN4llvm8ArrayRefIlEES3_ = comdat any

$_ZN4mlir21StaticTileOffsetRangeD2Ev = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE15growAndPushBackES3_ = comdat any

$_ZN4mlir11OpInterfaceINS_25VectorTransferOpInterfaceENS_6detail40VectorTransferOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE = comdat any

$_ZN4mlir10DiagnosticD2Ev = comdat any

$_ZN4mlir6detail19TileOffsetRangeImplC2ERKS1_ = comdat any

$_ZN4mlir6detail18constant_op_binderINS_9AttributeEE5matchEPNS_9OperationE = comdat any

$_ZN4mlir6detail25constant_int_value_binder5matchENS_9AttributeE = comdat any

$_ZN4mlir19CopyOnWriteArrayRefIlE5eraseEm = comdat any

$_ZN4mlir19CopyOnWriteArrayRefIbE5eraseEm = comdat any

$_ZN4llvm15SmallVectorImplIlEaSEOS1_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_ = comdat any

$_ZN4mlir9OpBuilder12createOrFoldINS_6memref5DimOpEJRNS_5ValueERlEEEvRN4llvm15SmallVectorImplIS4_EENS_8LocationEDpOT0_ = comdat any

$_ZN4llvmplERKNS_5TwineES2_ = comdat any

$_ZN4mlir9OpBuilder12createOrFoldINS_6tensor5DimOpEJRNS_5ValueERlEEEvRN4llvm15SmallVectorImplIS4_EENS_8LocationEDpOT0_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JRKjEEESt4pairIPS9_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ = comdat any

$_ZN4llvm15SmallVectorImplIbEaSEOS1_ = comdat any

$_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEEaSEOS3_ = comdat any

$_ZN4mlir9OpBuilder12createOrFoldINS_5arith6SubIOpEJRNS_5ValueES5_EEEvRN4llvm15SmallVectorImplIS4_EENS_8LocationEDpOT0_ = comdat any

$_ZN4mlir9OpBuilder12createOrFoldINS_6vector12CreateMaskOpEJRNS_10VectorTypeERN4llvm11SmallVectorINS_12OpFoldResultELj6EEEEEEvRNS6_15SmallVectorImplINS_5ValueEEENS_8LocationEDpOT0_ = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_8LocationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm15SmallVectorImplIN4mlir5ValueEEaSEOS3_ = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRPNS1_9OperationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_25VectorTransferOpInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_25VectorTransferOpInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [71 x i8] c"NYI: assuming only return operations can have 0  results at this point\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"NYI: operation has more than 1 result\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"already 1-D\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"cannot unroll scalable dim\00", align 1
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6affine11AffineForOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZZN4mlir6detail14TypeIDResolverINS_25VectorTransferOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_25VectorTransferOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.10 = private unnamed_addr constant [82 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::VectorTransferOpInterface]\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.14 = private unnamed_addr constant [67 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::ShapedType]\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.15 = private unnamed_addr constant [85 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::ConstantLike<Empty>]\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_11IntegerTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_9IndexTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_18UnrankedMemRefTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_10MemRefTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"Building op `\00", align 1
@.str.19 = private unnamed_addr constant [238 x i8] c"` but it isn't known in this MLIRContext: the dialect may not be loaded or this operation hasn't been added by the dialect. See also https://mlir.llvm.org/getting_started/Faq/#registered-loaded-dependent-whats-up-with-dialects-management\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_6memref5DimOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.20 = private unnamed_addr constant [11 x i8] c"memref.dim\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_18UnrankedTensorTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6tensor5DimOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.21 = private unnamed_addr constant [11 x i8] c"tensor.dim\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4func8ReturnOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6vector14TransferReadOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6vector15TransferWriteOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_5arith6SubIOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.23 = private unnamed_addr constant [11 x i8] c"arith.subi\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_6vector12CreateMaskOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.24 = private unnamed_addr constant [19 x i8] c"vector.create_mask\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir6vector17createOrFoldDimOpERNS_9OpBuilderENS_8LocationENS_5ValueEl(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.629", align 8 ; 8 uses
  %5 = alloca %"class.llvm::SmallVector.629", align 8 ; 8 uses
  %6 = alloca %"class.mlir::Value", align 8       ; 3 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  store ptr %2, ptr %6, align 8
  store i64 %3, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 8
  %i.c = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !14 ; 4 uses
  %i.g = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_18UnrankedMemRefTypeEvE2idE
  %i.h = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10MemRefTypeEvE2idE
  %spec.select.i = or i1 %i.g, %i.h
  br i1 %spec.select.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 1, ptr %i.k, align 4, !tbaa !19
  call void @_ZN4mlir9OpBuilder12createOrFoldINS_6memref5DimOpEJRNS_5ValueERlEEEvRN4llvm15SmallVectorImplIS4_EENS_8LocationEDpOT0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.l = load ptr, ptr %5, align 8, !tbaa !16     ; 3 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.m = icmp eq ptr %i.l, %i.i
  br i1 %i.m, label %_ZN4mlir9OpBuilder12createOrFoldINS_6memref5DimOpEJRNS_5ValueERlEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES4_E4typeENS_8LocationEDpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef nonnull %i.l) #17
  br label %_ZN4mlir9OpBuilder12createOrFoldINS_6memref5DimOpEJRNS_5ValueERlEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES4_E4typeENS_8LocationEDpOT0_.exit

_ZN4mlir9OpBuilder12createOrFoldINS_6memref5DimOpEJRNS_5ValueERlEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES4_E4typeENS_8LocationEDpOT0_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %7 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_18UnrankedTensorTypeEvE2idE
  %8 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE
  %spec.select.i8 = or i1 %7, %8
  tail call void @llvm.assume(i1 %spec.select.i8)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.o, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 1, ptr %i.p, align 4, !tbaa !19
  call void @_ZN4mlir9OpBuilder12createOrFoldINS_6tensor5DimOpEJRNS_5ValueERlEEEvRN4llvm15SmallVectorImplIS4_EENS_8LocationEDpOT0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.q = load ptr, ptr %4, align 8, !tbaa !16     ; 3 uses
  %.sroa.04.0.copyload.i9 = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.r = icmp eq ptr %i.q, %i.n
  br i1 %i.r, label %_ZN4mlir9OpBuilder12createOrFoldINS_6tensor5DimOpEJRNS_5ValueERlEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES4_E4typeENS_8LocationEDpOT0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef nonnull %i.q) #17
  br label %_ZN4mlir9OpBuilder12createOrFoldINS_6tensor5DimOpEJRNS_5ValueERlEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES4_E4typeENS_8LocationEDpOT0_.exit

_ZN4mlir9OpBuilder12createOrFoldINS_6tensor5DimOpEJRNS_5ValueERlEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES4_E4typeENS_8LocationEDpOT0_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.f

bb.f:                                             ; preds = %_ZN4mlir9OpBuilder12createOrFoldINS_6tensor5DimOpEJRNS_5ValueERlEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES4_E4typeENS_8LocationEDpOT0_.exit, %_ZN4mlir9OpBuilder12createOrFoldINS_6memref5DimOpEJRNS_5ValueERlEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES4_E4typeENS_8LocationEDpOT0_.exit
  %.sroa.04.0 = phi ptr [ %.sroa.04.0.copyload.i, %_ZN4mlir9OpBuilder12createOrFoldINS_6memref5DimOpEJRNS_5ValueERlEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES4_E4typeENS_8LocationEDpOT0_.exit ], [ %.sroa.04.0.copyload.i9, %_ZN4mlir9OpBuilder12createOrFoldINS_6tensor5DimOpEJRNS_5ValueERlEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES4_E4typeENS_8LocationEDpOT0_.exit ]
  ret ptr %.sroa.04.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i8 } @_ZN4mlir6vector18isTranspose2DSliceENS0_11TransposeOpE(ptr %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.mlir::vector::TransposeOp", align 8 ; 2 uses
  %2 = alloca %"class.mlir::VectorType", align 8  ; 4 uses
  %3 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  store ptr %0, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.f = inttoptr i64 %i.e to ptr
  store ptr %i.f, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.h, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 6, ptr %i.i, align 4, !tbaa !19
  %i.j = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #17 ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.j, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.l, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %.not2122 = icmp eq i64 %i.l, 0
  br i1 %.not2122, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit, %bb.a
  %i.n = load i32, ptr %i.h, align 8, !tbaa !18
  %.not = icmp eq i32 %i.n, 2
  %.pre25 = load ptr, ptr %3, align 8, !tbaa !16  ; 3 uses
  br i1 %.not, label %bb.e, label %bb.g

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit
  %.sroa.012.024 = phi ptr [ %i.y, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit ], [ %i.k, %bb.a ] ; 2 uses
  %.sroa.7.023 = phi i64 [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit ], [ 0, %bb.a ] ; 3 uses
  %i.o = load i64, ptr %.sroa.012.024, align 8, !tbaa !8
  %i.p = icmp sgt i64 %i.o, 1
  br i1 %i.p, label %bb.b, label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

bb.b:                                             ; preds = %.lr.ph
  %i.q = load i32, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.r = load i32, ptr %i.i, align 4, !tbaa !19
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !25

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %.sroa.7.023)
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

bb.d:                                             ; preds = %bb.b
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store i64 %.sroa.7.023, ptr %i.u, align 1
  %i.v = load i32, ptr %i.h, align 8, !tbaa !18
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.h, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit: ; preds = %bb.d, %bb.c, %.lr.ph
  %i.x = add nuw nsw i64 %.sroa.7.023, 1
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.024, i64 8 ; 2 uses
  %.not21 = icmp eq ptr %i.y, %i.m
  br i1 %.not21, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %._crit_edge
  %i.z = load i64, ptr %.pre25, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre25, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !8
  %i.ac = call { ptr, i64 } @_ZN4mlir6vector11TransposeOp14getPermutationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #17 ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0      ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1      ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i
  %.not16.i = icmp ne i64 %i.ae, 0
  call void @llvm.assume(i1 %.not16.i)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.e
  %.01118.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.ad, %bb.e ] ; 2 uses
  %.01217.i = phi i1 [ %.1.i, %.lr.ph.i ], [ undef, %bb.e ]
  %i.ag = load i64, ptr %.01118.i, align 8, !tbaa !8 ; 2 uses
  %i.ah = icmp ne i64 %i.ag, %i.z                 ; 2 uses
  %i.ai = icmp eq i64 %i.ag, %i.ab                ; 2 uses
  %..012.i = select i1 %i.ai, i1 true, i1 %.01217.i
  %.1.i = select i1 %i.ah, i1 %..012.i, i1 false  ; 2 uses
  %.not21.i = xor i1 %i.ah, true
  %cond.not.i = or i1 %i.ai, %.not21.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.01118.i, i64 8 ; 2 uses
  %.not.i7 = icmp eq ptr %i.aj, %i.af
  %or.cond.i = select i1 %cond.not.i, i1 true, i1 %.not.i7
  br i1 %or.cond.i, label %_ZL26areDimsTransposedIn2DSlicellN4llvm8ArrayRefIlEE.exit, label %.lr.ph.i

_ZL26areDimsTransposedIn2DSlicellN4llvm8ArrayRefIlEE.exit: ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !16    ; 4 uses
  br i1 %.1.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZL26areDimsTransposedIn2DSlicellN4llvm8ArrayRefIlEE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.al = load i64, ptr %.pre, align 8, !tbaa !8
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !8
  %.sroa.4.0.insert.ext = shl i64 %i.am, 32
  %.sroa.0.0.insert.ext = and i64 %i.al, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.ext, %.sroa.0.0.insert.ext
  br label %bb.g

bb.g:                                             ; preds = %_ZL26areDimsTransposedIn2DSlicellN4llvm8ArrayRefIlEE.exit, %._crit_edge, %bb.f
  %i.an = phi ptr [ %.pre, %bb.f ], [ %.pre25, %._crit_edge ], [ %.pre, %_ZL26areDimsTransposedIn2DSlicellN4llvm8ArrayRefIlEE.exit ] ; 2 uses
  %.sroa.020.0 = phi i64 [ %.sroa.0.0.insert.insert, %bb.f ], [ undef, %._crit_edge ], [ undef, %_ZL26areDimsTransposedIn2DSlicellN4llvm8ArrayRefIlEE.exit ]
  %.sroa.2.0 = phi i8 [ 1, %bb.f ], [ 0, %._crit_edge ], [ 0, %_ZL26areDimsTransposedIn2DSlicellN4llvm8ArrayRefIlEE.exit ]
  %i.ao = icmp eq ptr %i.an, %i.g
  br i1 %i.ao, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.an) #17
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.020.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { i64, i8 } %.fca.1.insert
}

declare { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, i64 } @_ZN4mlir6vector11TransposeOp14getPermutationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir18makePermutationMapEPNS_5BlockEN4llvm8ArrayRefINS_5ValueEEERKNS2_8DenseMapIPNS_9OperationEjNS2_12DenseMapInfoIS8_vEENS2_6detail12DenseMapPairIS8_jEEEE(ptr noundef nonnull %0, ptr %1, i64 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.494", align 8 ; 16 uses
  %5 = alloca %"class.llvm::DenseSet.499", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %6 = alloca %"class.llvm::DenseMap", align 8    ; 11 uses
  %7 = alloca %"class.llvm::SetVector", align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 24, i1 false), !alias.scope !32
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !16, !alias.scope !32
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  store i32 0, ptr %i.d, align 8, !tbaa !18, !alias.scope !32
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !19, !alias.scope !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !32
  %i.f = call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #17 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !33, !noalias !32
  %.not2.i.i = icmp eq ptr %i.f, null
  br i1 %.not2.i.i, label %_ZL18getEnclosingforOpsPN4mlir5BlockE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN4mlir9Operation11getParentOpEv.exit.i.i
  %storemerge3.i.i = phi ptr [ %i.x, %_ZN4mlir9Operation11getParentOpEv.exit.i.i ], [ %i.f, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %storemerge3.i.i, i64 48
end_hunk_0
