Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OpenACCUtilsLoop?download=true
inline.NumInlined: 1522
inline.NumDeleted: 939
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"struct.std::pair" = type { %"class.llvm::SmallVector", %"class.llvm::ilist_iterator" }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [48 x i8] }
%"class.llvm::ilist_iterator" = type { ptr }
%"class.mlir::ValueRange" = type { %"class.llvm::detail::indexed_accessor_range_base" }
%"class.llvm::detail::indexed_accessor_range_base" = type { %"class.llvm::PointerUnion", i64 }
%"class.llvm::PointerUnion" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers" }
%"class.llvm::pointer_union_detail::PointerUnionMembers" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.0" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.0" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.1" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.1" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.2" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.2" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.3" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.3" = type { %"struct.llvm::detail::PunnedPointer" }
%"struct.llvm::detail::PunnedPointer" = type { [8 x i8] }
%"class.mlir::acc::YieldOp" = type { %"class.mlir::Op" }
%"class.mlir::Op" = type { %"class.mlir::OpState" }
%"class.mlir::OpState" = type { ptr }
%"struct.llvm::detail::zip_shortest" = type { %"struct.llvm::detail::zip_common" }
%"struct.llvm::detail::zip_common" = type { %"class.std::tuple.33" }
%"class.std::tuple.33" = type { %"struct.std::_Tuple_impl.34" }
%"struct.std::_Tuple_impl.34" = type { %"struct.std::_Tuple_impl.35", %"struct.std::_Head_base.38" }
%"struct.std::_Tuple_impl.35" = type { %"struct.std::_Head_base.36" }
%"struct.std::_Head_base.36" = type { %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator" }
%"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator" = type { %"class.llvm::indexed_accessor_iterator" }
%"class.llvm::indexed_accessor_iterator" = type { %"class.llvm::PointerUnion", i64 }
%"struct.std::_Head_base.38" = type { %"class.llvm::detail::indexed_accessor_range_base<mlir::OperandRange, mlir::OpOperand *, mlir::Value, mlir::Value, mlir::Value>::iterator" }
%"class.llvm::detail::indexed_accessor_range_base<mlir::OperandRange, mlir::OpOperand *, mlir::Value, mlir::Value, mlir::Value>::iterator" = type { %"class.llvm::indexed_accessor_iterator.39" }
%"class.llvm::indexed_accessor_iterator.39" = type { ptr, i64 }
%"class.llvm::SmallVector.92" = type { %"class.llvm::SmallVectorImpl.93", %"struct.llvm::SmallVectorStorage.96" }
%"class.llvm::SmallVectorImpl.93" = type { %"class.llvm::SmallVectorTemplateBase.94" }
%"class.llvm::SmallVectorTemplateBase.94" = type { %"class.llvm::SmallVectorTemplateCommon.95" }
%"class.llvm::SmallVectorTemplateCommon.95" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.96" = type { [48 x i8] }
%"class.llvm::SmallVector.97" = type { %"class.llvm::SmallVectorImpl.98", %"struct.llvm::SmallVectorStorage.101" }
%"class.llvm::SmallVectorImpl.98" = type { %"class.llvm::SmallVectorTemplateBase.99" }
%"class.llvm::SmallVectorTemplateBase.99" = type { %"class.llvm::SmallVectorTemplateCommon.100" }
%"class.llvm::SmallVectorTemplateCommon.100" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.101" = type { [48 x i8] }
%"class.mlir::TypeRange" = type { %"class.llvm::detail::indexed_accessor_range_base.102" }
%"class.llvm::detail::indexed_accessor_range_base.102" = type { %"class.llvm::PointerUnion.103", i64 }
%"class.llvm::PointerUnion.103" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.104" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.104" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.105" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.105" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.106" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.106" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.107" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.107" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.108" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.108" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.109" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.109" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.110" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.110" = type { %"struct.llvm::detail::PunnedPointer" }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.mlir::Value" = type { ptr }
%"class.llvm::SmallVector.376" = type { %"class.llvm::SmallVectorImpl.377", %"struct.llvm::SmallVectorStorage.380" }
%"class.llvm::SmallVectorImpl.377" = type { %"class.llvm::SmallVectorTemplateBase.378" }
%"class.llvm::SmallVectorTemplateBase.378" = type { %"class.llvm::SmallVectorTemplateCommon.379" }
%"class.llvm::SmallVectorTemplateCommon.379" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.380" = type { [48 x i8] }
%"class.mlir::acc::LoopOp" = type { %"class.mlir::Op.176" }
%"class.mlir::Op.176" = type { %"class.mlir::OpState" }
%"class.mlir::IRMapping" = type { %"class.llvm::DenseMap", %"class.llvm::DenseMap.15", %"class.llvm::DenseMap.17" }
%"class.llvm::DenseMap" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseMap.15" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseMap.17" = type { ptr, ptr, i32, i32 }
%"class.llvm::SmallVector.211" = type { %"class.llvm::SmallVectorImpl.212", %"struct.llvm::SmallVectorStorage.215" }
%"class.llvm::SmallVectorImpl.212" = type { %"class.llvm::SmallVectorTemplateBase.213" }
%"class.llvm::SmallVectorTemplateBase.213" = type { %"class.llvm::SmallVectorTemplateCommon.214" }
%"class.llvm::SmallVectorTemplateCommon.214" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.215" = type { [48 x i8] }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base.base", [7 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<llvm::ArrayRef<bool>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::ArrayRef<bool>>::_Storage" = type { %"class.llvm::ArrayRef.263" }
%"class.llvm::ArrayRef.263" = type { ptr, i64 }
%"class.mlir::detail::DenseArrayAttrImpl" = type { %"class.mlir::DenseArrayAttr" }
%"class.mlir::DenseArrayAttr" = type { %"class.mlir::detail::StorageUserBase.264" }
%"class.mlir::detail::StorageUserBase.264" = type { %"class.mlir::Attribute" }
%"class.mlir::Attribute" = type { ptr }
%"class.llvm::function_ref" = type { ptr, i64 }
%"class.mlir::InFlightDiagnostic" = type { ptr, %"class.std::optional.268" }
%"class.std::optional.268" = type { %"struct.std::_Optional_base.269" }
%"struct.std::_Optional_base.269" = type { %"struct.std::_Optional_payload.271" }
%"struct.std::_Optional_payload.271" = type { %"struct.std::_Optional_payload.base.292", [7 x i8] }
%"struct.std::_Optional_payload.base.292" = type { %"struct.std::_Optional_payload_base.base.291" }
%"struct.std::_Optional_payload_base.base.291" = type <{ %"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage", i8 }>
%"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage" = type { %"class.mlir::Diagnostic" }
%"class.mlir::Diagnostic" = type { %"class.mlir::Location", i32, %"class.llvm::SmallVector.274", %"class.std::vector.279", %"class.std::vector.284", %"class.llvm::SmallVector.289" }
%"class.mlir::Location" = type { %"class.mlir::LocationAttr" }
%"class.mlir::LocationAttr" = type { %"class.mlir::Attribute" }
%"class.llvm::SmallVector.274" = type { %"class.llvm::SmallVectorImpl.275", %"struct.llvm::SmallVectorStorage.278" }
%"class.llvm::SmallVectorImpl.275" = type { %"class.llvm::SmallVectorTemplateBase.276" }
%"class.llvm::SmallVectorTemplateBase.276" = type { %"class.llvm::SmallVectorTemplateCommon.277" }
%"class.llvm::SmallVectorTemplateCommon.277" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.278" = type { [96 x i8] }
%"class.std::vector.279" = type { %"struct.std::_Vector_base.280" }
%"struct.std::_Vector_base.280" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.284" = type { %"struct.std::_Vector_base.285" }
%"struct.std::_Vector_base.285" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::SmallVector.289" = type { %"class.llvm::SmallVectorImpl.275" }
%"class.llvm::SmallVector.394" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage.395" }
%"struct.llvm::SmallVectorStorage.395" = type { [8 x i8] }
%"struct.llvm::detail::zip_shortest.431" = type { %"struct.llvm::detail::zip_common.432" }
%"struct.llvm::detail::zip_common.432" = type { %"class.std::tuple.434" }
%"class.std::tuple.434" = type { %"struct.std::_Tuple_impl.435" }
%"struct.std::_Tuple_impl.435" = type { %"struct.std::_Tuple_impl.35", %"struct.std::_Head_base.436" }
%"struct.std::_Head_base.436" = type { ptr }
%"class.llvm::SmallPtrSet" = type { %"class.llvm::SmallPtrSetImpl.base", [2 x ptr] }
%"class.llvm::SmallPtrSetImpl.base" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallPtrSetImplBase.base" = type <{ ptr, i32, i32, i8 }>
%"class.std::optional.573" = type { %"struct.std::_Optional_base.574" }
%"struct.std::_Optional_base.574" = type { %"struct.std::_Optional_payload.576" }
%"struct.std::_Optional_payload.576" = type { %"struct.std::_Optional_payload.base.580", [7 x i8] }
%"struct.std::_Optional_payload.base.580" = type { %"struct.std::_Optional_payload_base.base.579" }
%"struct.std::_Optional_payload_base.base.579" = type <{ %"union.std::_Optional_payload_base<llvm::SmallVector<mlir::Value>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::SmallVector<mlir::Value>>::_Storage" = type { %"class.llvm::SmallVector" }
%"class.mlir::scf::ParallelOp" = type { %"class.mlir::Op.295" }
%"class.mlir::Op.295" = type { %"class.mlir::OpState" }
%"class.llvm::function_ref.334" = type { ptr, i64 }
%"class.mlir::IntegerAttr" = type { %"class.mlir::detail::StorageUserBase.335" }
%"class.mlir::detail::StorageUserBase.335" = type { %"class.mlir::Attribute" }
%"struct.mlir::OperationState" = type { %"class.mlir::Location", %"class.mlir::OperationName", %"class.llvm::SmallVector.396", %"class.llvm::SmallVector.398", %"class.mlir::NamedAttrList", %"class.llvm::SmallVector.407", %"class.llvm::SmallVector.412", %"class.mlir::Attribute", %"class.mlir::PropertyRef", %"class.llvm::function_ref.417", %"class.llvm::function_ref.418" }
%"class.mlir::OperationName" = type { ptr }
%"class.llvm::SmallVector.396" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage.397" }
%"struct.llvm::SmallVectorStorage.397" = type { [32 x i8] }
%"class.llvm::SmallVector.398" = type { %"class.llvm::SmallVectorImpl.98", %"struct.llvm::SmallVectorStorage.399" }
%"struct.llvm::SmallVectorStorage.399" = type { [32 x i8] }
%"class.mlir::NamedAttrList" = type { %"class.llvm::SmallVector.400", %"class.llvm::PointerIntPair.405" }
%"class.llvm::SmallVector.400" = type { %"class.llvm::SmallVectorImpl.401", %"struct.llvm::SmallVectorStorage.404" }
%"class.llvm::SmallVectorImpl.401" = type { %"class.llvm::SmallVectorTemplateBase.402" }
%"class.llvm::SmallVectorTemplateBase.402" = type { %"class.llvm::SmallVectorTemplateCommon.403" }
%"class.llvm::SmallVectorTemplateCommon.403" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.404" = type { [64 x i8] }
%"class.llvm::PointerIntPair.405" = type { %"struct.llvm::detail::PunnedPointer.406" }
%"struct.llvm::detail::PunnedPointer.406" = type { [8 x i8] }
%"class.llvm::SmallVector.407" = type { %"class.llvm::SmallVectorImpl.408", %"struct.llvm::SmallVectorStorage.411" }
%"class.llvm::SmallVectorImpl.408" = type { %"class.llvm::SmallVectorTemplateBase.409" }
%"class.llvm::SmallVectorTemplateBase.409" = type { %"class.llvm::SmallVectorTemplateCommon.410" }
%"class.llvm::SmallVectorTemplateCommon.410" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.411" = type { [8 x i8] }
%"class.llvm::SmallVector.412" = type { %"class.llvm::SmallVectorImpl.413", %"struct.llvm::SmallVectorStorage.416" }
%"class.llvm::SmallVectorImpl.413" = type { %"class.llvm::SmallVectorTemplateBase.414" }
%"class.llvm::SmallVectorTemplateBase.414" = type { %"class.llvm::SmallVectorTemplateCommon.415" }
%"class.llvm::SmallVectorTemplateCommon.415" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.416" = type { [8 x i8] }
%"class.mlir::PropertyRef" = type { %"class.mlir::TypeID", ptr }
%"class.mlir::TypeID" = type { ptr }
%"class.llvm::function_ref.417" = type { ptr, i64 }
%"class.llvm::function_ref.418" = type { ptr, i64 }
%"class.mlir::StringAttr" = type { %"class.mlir::detail::StorageUserBase.349" }
%"class.mlir::detail::StorageUserBase.349" = type { %"class.mlir::Attribute" }

$_ZN4mlir9OpBuilder12createOrFoldINS_5arith6SubIOpEJRNS_5ValueES5_NS2_20IntegerOverflowFlagsEEEEvRN4llvm15SmallVectorImplIS4_EENS_8LocationEDpOT0_ = comdat any

$_ZN4llvmplERKNS_5TwineES2_ = comdat any

$_ZN4mlir9OpBuilder12createOrFoldINS_5arith6AddIOpEJRNS_5ValueES5_NS2_20IntegerOverflowFlagsEEEEvRN4llvm15SmallVectorImplIS4_EENS_8LocationEDpOT0_ = comdat any

$_ZN4mlir9OpBuilder12createOrFoldINS_5arith7DivSIOpEJRNS_5ValueES5_EEEvRN4llvm15SmallVectorImplIS4_EENS_8LocationEDpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ = comdat any

$_ZN4mlir10DiagnosticD2Ev = comdat any

$_ZSt27__throw_bad_optional_accessv = comdat any

$_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf5ForOpELb1EE15growAndPushBackES3_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [28 x i8] c"failed to collapse acc.loop\00", align 1
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3acc7YieldOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Building op `\00", align 1
@.str.2 = private unnamed_addr constant [238 x i8] c"` but it isn't known in this MLIRContext: the dialect may not be loaded or this operation hasn't been added by the dialect. See also https://mlir.llvm.org/getting_started/Faq/#registered-loaded-dependent-whats-up-with-dialects-management\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5arith6SubIOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"arith.subi\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5arith6AddIOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"arith.addi\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5arith7DivSIOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"arith.divsi\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"acc.collapse_count\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir3acc18cloneACCRegionIntoEPNS_6RegionEPNS_5BlockEN4llvm14ilist_iteratorINS5_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEERNS_9IRMappingENS_10ValueRangeE(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef %1, ptr noundef nonnull %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr nofree noundef readonly byval(%"class.mlir::ValueRange") align 8 captures(none) %5) local_unnamed_addr #0 {
_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i:
  %6 = alloca %"class.llvm::SmallVector", align 8 ; 11 uses
  %7 = alloca %"class.mlir::acc::YieldOp", align 8 ; 6 uses
  %8 = alloca %"struct.llvm::detail::zip_shortest", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = icmp ne ptr %1, %i.a
  tail call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = icmp eq ptr %i.f, %1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #16
  %i.i = tail call noundef ptr @_ZN4mlir5Block10splitBlockEN4llvm14ilist_iteratorINS1_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr %3) #16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  tail call void @_ZN4mlir6Region9cloneIntoEPS0_N4llvm14ilist_iteratorINS2_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEERNS_9IRMappingE(ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef %i.h, ptr nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(72) %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.k, ptr %6, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i32 0, ptr %i.l, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 6, ptr %i.m, align 4, !tbaa !18
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.p = call noundef ptr @_ZN4mlir5Block13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.o) #16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !124
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !126
  %i.t = icmp eq ptr %i.s, @_ZN4mlir6detail14TypeIDResolverINS_3acc7YieldOpEvE2idE
  %9 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_3acc7YieldOpEvE2idE
  %spec.select.i.i.i.i = and i1 %9, %i.t
  %spec.select.i.i = select i1 %spec.select.i.i.i.i, ptr %i.p, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %7, align 8
  %.not = icmp eq ptr %spec.select.i.i, null
  br i1 %.not, label %.lr.ph.i53, label %bb.a

bb.a:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  %i.u = call i64 @_ZN4mlir3acc7YieldOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0) #16 ; 3 uses
  %i.v = load ptr, ptr %7, align 8, !tbaa !23     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 8388608
  %.not.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir3acc7YieldOp11getOperandsEv.exit, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27
  br label %_ZN4mlir3acc7YieldOp11getOperandsEv.exit

_ZN4mlir3acc7YieldOp11getOperandsEv.exit:         ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.aa, %bb.b ], [ null, %bb.a ]
  %i.ab = and i64 %i.u, 4294967295                ; 3 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.u, 32
  %i.ac = add i64 %.sroa.5.0.extract.shift.i.i, %i.u
  %i.ad = and i64 %i.ac, 4294967295               ; 2 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.ab
  %i.af = sub nsw i64 %i.ad, %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %5, align 8, !noalias !129
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %8, align 8, !alias.scope !129
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !129
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.ae, ptr %i.ag, align 8, !alias.scope !129
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !alias.scope !129
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !131, !noalias !132 ; 2 uses
  %i.aj = icmp ne i64 %i.ad, %i.ab
  %i.ak = icmp ne i64 %i.ai, 0
  %.not3.i79 = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %.not3.i79, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit
  %.pre = load ptr, ptr %7, align 8, !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4mlir3acc7YieldOp11getOperandsEv.exit
  %i.al = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.v, %_ZN4mlir3acc7YieldOp11getOperandsEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.e

.lr.ph:                                           ; preds = %_ZN4mlir3acc7YieldOp11getOperandsEv.exit, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit
  %i.am = phi i64 [ %i.bd, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit ], [ 0, %_ZN4mlir3acc7YieldOp11getOperandsEv.exit ]
  %i.an = phi i64 [ %i.bb, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit ], [ 0, %_ZN4mlir3acc7YieldOp11getOperandsEv.exit ]
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !133, !noalias !134
  %i.ap = getelementptr inbounds [32 x i8], ptr %i.ao, i64 %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i48 = load ptr, ptr %i.aq, align 8, !tbaa !37, !noalias !134 ; 3 uses
  %i.ar = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.am) #16, !noalias !134
  %i.as = call noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #16
  call void @_ZN4mlir26replaceAllUsesInRegionWithENS_5ValueES0_RNS_6RegionE(ptr %i.ar, ptr %.sroa.0.0.copyload.i.i.i.i.i48, ptr noundef nonnull align 8 dereferenceable(28) %i.as) #16
  %i.at = load i32, ptr %i.l, align 8, !tbaa !17  ; 2 uses
  %i.au = load i32, ptr %i.m, align 4, !tbaa !18
  %.not.i49 = icmp ult i32 %i.at, %i.au
  br i1 %.not.i49, label %bb.d, label %bb.c, !prof !38

bb.c:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %.sroa.0.0.copyload.i.i.i.i.i48)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.av = zext i32 %i.at to i64
  %i.aw = load ptr, ptr %6, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  store ptr %.sroa.0.0.copyload.i.i.i.i.i48, ptr %i.ax, align 1
  %i.ay = load i32, ptr %i.l, align 8, !tbaa !17
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.l, align 8, !tbaa !17
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit: ; preds = %bb.c, %bb.d
  %i.ba = load i64, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !tbaa !136
  %i.bb = add nsw i64 %i.ba, 1                    ; 3 uses
  store i64 %i.bb, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !tbaa !136
  %i.bc = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !40
  %i.bd = add nsw i64 %i.bc, 1                    ; 3 uses
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !40
  %i.be = icmp ne i64 %i.bb, %i.af
  %i.bf = icmp ne i64 %i.bd, %i.ai
  %.not3.i = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %.not3.i, label %.lr.ph, label %._crit_edge.loopexit

.lr.ph.i53:                                       ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  %i.bg = call noundef ptr @_ZN4mlir5Block13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.o) #16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.i53, %._crit_edge
  %.sink95 = phi ptr [ %i.bg, %.lr.ph.i53 ], [ %i.al, %._crit_edge ] ; 2 uses
  %i.bh = load ptr, ptr %.sink95, align 8, !tbaa !13
  call void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64) %.sink95) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 9 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !13
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !14 ; 5 uses
  %i.bo = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bo, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm12ilist_traitsIN4mlir9OperationEE21transferNodesFromListERS3_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEES9_(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr %i.bn, ptr nonnull align 8 dereferenceable(16) %i.bj) #16
  %i.bp = icmp eq ptr %i.bn, %i.bj
  br i1 %i.bp, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !13 ; 2 uses
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !13 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bj, ptr %i.bs, align 8, !tbaa !14
  store ptr %i.br, ptr %i.bj, align 8, !tbaa !13
  %i.bt = load ptr, ptr %i.bi, align 8, !tbaa !13 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bi, ptr %i.bu, align 8, !tbaa !14
  store ptr %i.bt, ptr %i.bn, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bn, ptr %i.bv, align 8, !tbaa !14
  store ptr %i.bq, ptr %i.bi, align 8, !tbaa !13
  br label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit

_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  call void @_ZN4mlir5Block5eraseEv(ptr noundef nonnull align 8 dereferenceable(80) %i.i) #16
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !14 ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 32 ; 9 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !13
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit58, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !14 ; 5 uses
  %i.cf = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cf, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit58, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm12ilist_traitsIN4mlir9OperationEE21transferNodesFromListERS3_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEES9_(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr %i.ce, ptr nonnull align 8 dereferenceable(16) %i.ca) #16
  %i.cg = icmp eq ptr %i.ce, %i.ca
  br i1 %i.cg, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit58, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = load ptr, ptr %i.ca, align 8, !tbaa !13 ; 2 uses
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !13 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.ca, ptr %i.cj, align 8, !tbaa !14
  store ptr %i.ci, ptr %i.ca, align 8, !tbaa !13
  %i.ck = load ptr, ptr %i.bz, align 8, !tbaa !13 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.bz, ptr %i.cl, align 8, !tbaa !14
  store ptr %i.ck, ptr %i.ce, align 8, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.ce, ptr %i.cm, align 8, !tbaa !14
  store ptr %i.ch, ptr %i.bz, align 8, !tbaa !13
  br label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit58

_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit58: ; preds = %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit, %bb.i, %bb.j, %bb.k
  call void @_ZN4mlir5Block5eraseEv(ptr noundef nonnull align 8 dereferenceable(80) %i.by) #16
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cn, ptr %0, align 8, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.co, align 8, !tbaa !17
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.cp, align 4, !tbaa !18
  %i.cq = load i32, ptr %i.l, align 8, !tbaa !17  ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.cq, 0
  %i.cr = icmp eq ptr %0, %6
  %or.cond.i.i = or i1 %i.cr, %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZNSt4pairIN4llvm11SmallVectorIN4mlir5ValueELj6EEENS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS2_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEC2IRS4_RSA_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit58
  %i.cs = icmp ugt i32 %i.cq, 6
  br i1 %i.cs, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i: ; preds = %bb.l
  %i.ct = zext i32 %i.cq to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %i.cn, i64 noundef %i.ct, i64 noundef 8) #16
  %.pre.i.i = load i32, ptr %i.l, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.pre.i.i, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i
end_hunk_0
