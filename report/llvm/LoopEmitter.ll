Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopEmitter?download=true
inline.NumInlined: 4607
inline.NumDeleted: 2561
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0
%"class.llvm::PointerUnion.520" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.521" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.521" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.522" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.522" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.523" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.523" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.524" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.524" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.525" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.525" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.526" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.526" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.527" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.527" = type { %"struct.llvm::detail::PunnedPointer" }
%"class.mlir::ValueTypeRange.862" = type { %"class.llvm::iterator_range.863" }
%"class.llvm::iterator_range.863" = type { %"class.mlir::ValueTypeIterator.864", %"class.mlir::ValueTypeIterator.864" }
%"class.mlir::ValueTypeIterator.864" = type { %"class.llvm::mapped_iterator_base.865" }
%"class.llvm::mapped_iterator_base.865" = type { %"class.llvm::iterator_adaptor_base.866" }
%"class.llvm::iterator_adaptor_base.866" = type { %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator" }
%"class.mlir::scf::WhileOp" = type { %"class.mlir::Op.768" }
%"class.mlir::Op.768" = type { %"class.mlir::OpState" }
%"class.llvm::ArrayRef.868" = type { ptr, i64 }
%"class.llvm::SmallVector.546" = type { %"class.llvm::SmallVectorImpl.547", %"struct.llvm::SmallVectorStorage.550" }
%"class.llvm::SmallVectorImpl.547" = type { %"class.llvm::SmallVectorTemplateBase.548" }
%"class.llvm::SmallVectorTemplateBase.548" = type { %"class.llvm::SmallVectorTemplateCommon.549" }
%"class.llvm::SmallVectorTemplateCommon.549" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.550" = type { [48 x i8] }
%"class.llvm::ArrayRef.552" = type { ptr, i64 }
%"class.mlir::IntegerAttr" = type { %"class.mlir::detail::StorageUserBase.512" }
%"class.mlir::detail::StorageUserBase.512" = type { %"class.mlir::Attribute" }
%"class.mlir::ArrayAttr" = type { %"class.mlir::detail::StorageUserBase.511" }
%"class.mlir::detail::StorageUserBase.511" = type { %"class.mlir::Attribute" }
%"class.mlir::sparse_tensor::CoIterateOp" = type { %"class.mlir::Op.478" }
%"class.mlir::Op.478" = type { %"class.mlir::OpState" }
%"class.llvm::SmallVector.501" = type { %"class.llvm::SmallVectorImpl.502", %"struct.llvm::SmallVectorStorage.505" }
%"class.llvm::SmallVectorImpl.502" = type { %"class.llvm::SmallVectorTemplateBase.503" }
%"class.llvm::SmallVectorTemplateBase.503" = type { %"class.llvm::SmallVectorTemplateCommon.504" }
%"class.llvm::SmallVectorTemplateCommon.504" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.505" = type { [48 x i8] }
%"class.mlir::ValueTypeRange" = type { %"class.llvm::iterator_range.528" }
%"class.llvm::iterator_range.528" = type { %"class.mlir::ValueTypeIterator", %"class.mlir::ValueTypeIterator" }
%"class.mlir::ValueTypeIterator" = type { %"class.llvm::mapped_iterator_base" }
%"class.llvm::mapped_iterator_base" = type { %"class.llvm::iterator_adaptor_base.529" }
%"class.llvm::iterator_adaptor_base.529" = type { %"class.llvm::detail::indexed_accessor_range_base<mlir::OperandRange, mlir::OpOperand *, mlir::Value, mlir::Value, mlir::Value>::iterator" }
%"class.llvm::detail::indexed_accessor_range_base<mlir::OperandRange, mlir::OpOperand *, mlir::Value, mlir::Value, mlir::Value>::iterator" = type { %"class.llvm::indexed_accessor_iterator.531" }
%"class.llvm::indexed_accessor_iterator.531" = type { ptr, i64 }
%"class.mlir::OperandRange" = type { %"class.llvm::detail::indexed_accessor_range_base.436" }
%"class.llvm::detail::indexed_accessor_range_base.436" = type { ptr, i64 }
%"class.llvm::SmallVector.533" = type { %"class.llvm::SmallVectorImpl.534", %"struct.llvm::SmallVectorStorage.537" }
%"class.llvm::SmallVectorImpl.534" = type { %"class.llvm::SmallVectorTemplateBase.535" }
%"class.llvm::SmallVectorTemplateBase.535" = type { %"class.llvm::SmallVectorTemplateCommon.536" }
%"class.llvm::SmallVectorTemplateCommon.536" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.537" = type { [48 x i8] }
%"class.mlir::sparse_tensor::IterSpaceType" = type { %"class.mlir::detail::StorageUserBase.545" }
%"class.mlir::detail::StorageUserBase.545" = type { %"class.mlir::Type" }
%"class.llvm::ArrayRef.376" = type { ptr, i64 }
%"class.mlir::sparse_tensor::IterateOp" = type { %"class.mlir::Op.614" }
%"class.mlir::Op.614" = type { %"class.mlir::OpState" }
%"class.llvm::SmallVector.400" = type { %"class.llvm::SmallVectorImpl.401", %"struct.llvm::SmallVectorStorage.404" }
%"class.llvm::SmallVectorImpl.401" = type { %"class.llvm::SmallVectorTemplateBase.402" }
%"class.llvm::SmallVectorTemplateBase.402" = type { %"class.llvm::SmallVectorTemplateCommon.403" }
%"class.llvm::SmallVectorTemplateCommon.403" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.404" = type { [48 x i8] }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.mlir::scf::ForOp" = type { %"class.mlir::Op.437" }
%"class.mlir::Op.437" = type { %"class.mlir::OpState" }
%"class.mlir::FloatAttr" = type { %"class.mlir::detail::StorageUserBase.1037" }
%"class.mlir::detail::StorageUserBase.1037" = type { %"class.mlir::Attribute" }
%"class.llvm::APFloat" = type { %"union.llvm::APFloat::Storage" }
%"union.llvm::APFloat::Storage" = type { %"class.llvm::detail::DoubleAPFloat", [8 x i8] }
%"class.llvm::detail::DoubleAPFloat" = type { ptr, ptr }
%"class.llvm::SmallVector.1032" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage.1033" }
%"struct.llvm::SmallVectorStorage.1033" = type { [8 x i8] }
%"class.mlir::Builder" = type { ptr }
%"class.std::vector.24" = type { %"struct.std::_Vector_base.25" }
%"struct.std::_Vector_base.25" = type { %"struct.std::_Vector_base<std::vector<unsigned int>, std::allocator<std::vector<unsigned int>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<unsigned int>, std::allocator<std::vector<unsigned int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<unsigned int>, std::allocator<std::vector<unsigned int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<unsigned int>, std::allocator<std::vector<unsigned int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { i8 }
%"class.std::tuple.196" = type { %"struct.std::_Tuple_impl.197" }
%"struct.std::_Tuple_impl.197" = type { %"struct.std::_Tuple_impl.base", %"struct.std::_Head_base.202" }
%"struct.std::_Tuple_impl.base" = type <{ %"struct.std::_Tuple_impl.199", %"struct.std::_Head_base.201" }>
%"struct.std::_Tuple_impl.199" = type { %"struct.std::_Head_base.200" }
%"struct.std::_Head_base.200" = type { i64 }
%"struct.std::_Head_base.201" = type { i32 }
%"struct.std::_Head_base.202" = type { i32 }
%"class.mlir::StringAttr" = type { %"class.mlir::detail::StorageUserBase" }
%"class.mlir::detail::StorageUserBase" = type { %"class.mlir::Attribute" }
%"class.mlir::NamedAttrList" = type { %"class.llvm::SmallVector.1167", %"class.llvm::PointerIntPair.1172" }
%"class.llvm::SmallVector.1167" = type { %"class.llvm::SmallVectorImpl.1168", %"struct.llvm::SmallVectorStorage.1171" }
%"class.llvm::SmallVectorImpl.1168" = type { %"class.llvm::SmallVectorTemplateBase.1169" }
%"class.llvm::SmallVectorTemplateBase.1169" = type { %"class.llvm::SmallVectorTemplateCommon.1170" }
%"class.llvm::SmallVectorTemplateCommon.1170" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.1171" = type { [64 x i8] }
%"class.llvm::PointerIntPair.1172" = type { %"struct.llvm::detail::PunnedPointer.1173" }
%"struct.llvm::detail::PunnedPointer.1173" = type { [8 x i8] }

$_ZNSt6vectorIS_IS_ISt10unique_ptrIN4mlir13sparse_tensor14SparseIteratorESt14default_deleteIS3_EESaIS6_EESaIS8_EESaISA_EE6resizeEm = comdat any

$_ZNSt6vectorIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE7reserveEm = comdat any

$_ZN4mlir13sparse_tensor16SparseTensorTypeC2ENS_16RankedTensorTypeE = comdat any

$_ZNSt6vectorIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE12emplace_backIJRN4llvm8ArrayRefIjEERNS1_9IterateOpEPNS0_5BlockERNS0_13BlockArgumentERNS0_10StringAttrEEEERS3_DpOT_ = comdat any

$_ZNSt6vectorIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE12emplace_backIJRN4llvm8ArrayRefIjEERNS1_11CoIterateOpEDnDnRNS0_10StringAttrEEEERS3_DpOT_ = comdat any

$_ZNSt6vectorIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE12emplace_backIJRN4llvm11SmallVectorIjLj12EEERPNS0_9OperationEPNS0_5BlockERNS0_5ValueERNS0_10StringAttrEEEERS3_DpOT_ = comdat any

$_ZN4mlir6detail18constant_op_binderINS_9AttributeEE5matchEPNS_9OperationE = comdat any

$_ZN4mlir6tensor5PadOp15getMixedPadImplEN4llvm8ArrayRefIlEENS_10ValueRangeE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj = comdat any

$_ZNSt6vectorIN4mlir5ValueESaIS1_EE13_M_assign_auxIN4llvm6detail27indexed_accessor_range_baseINS0_10ValueRangeENS5_12PointerUnionIJPKS1_PNS0_9OpOperandEPNS0_6detail12OpResultImplEPKNS5_8RepeatedIS1_EEEEES1_S1_S1_E8iteratorEEEvT_SO_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIN4mlir5ValueESaIS1_EE14_M_fill_assignEmRKS1_ = comdat any

$_ZNSt6vectorIS_ISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EESaIS6_EESaIS8_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIS_IS_ISt10unique_ptrIN4mlir13sparse_tensor14SparseIteratorESt14default_deleteIS3_EESaIS6_EESaIS8_EESaISA_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIS_IN4mlir5ValueESaIS1_EESaIS3_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIS_IS_ISt4pairIjjESaIS1_EESaIS3_EESaIS5_EE14_M_fill_assignEmRKS5_ = comdat any

$_ZNSt6vectorIS_ISt4pairIjjESaIS1_EESaIS3_EEaSERKS5_ = comdat any

$_ZNSt6vectorIS_ISt4pairIjjESaIS1_EESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_ = comdat any

$_ZNSt6vectorISt4pairIjjESaIS1_EEaSERKS3_ = comdat any

$_ZNSt6vectorIS_ISt4pairIjjESaIS1_EESaIS3_EEC2ERKS5_ = comdat any

$_ZNSt6vectorIS_IS_ISt4pairIN4mlir5ValueEjESaIS3_EESaIS5_EESaIS7_EE14_M_fill_assignEmRKS7_ = comdat any

$_ZNSt6vectorIS_ISt4pairIN4mlir5ValueEjESaIS3_EESaIS5_EEaSERKS7_ = comdat any

$_ZNSt6vectorIS_ISt4pairIN4mlir5ValueEjESaIS3_EESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_ = comdat any

$_ZNSt6vectorISt4pairIN4mlir5ValueEjESaIS3_EEaSERKS5_ = comdat any

$_ZNSt6vectorIS_ISt4pairIN4mlir5ValueEjESaIS3_EESaIS5_EEC2ERKS7_ = comdat any

$_ZNSt6vectorIS_IjSaIjEESaIS1_EE14_M_fill_assignEmRKS1_ = comdat any

$_ZNSt6vectorIS_IjSaIjEESaIS1_EEC2EmRKS1_RKS2_ = comdat any

$_ZNSt6vectorIjSaIjEEaSERKS1_ = comdat any

$_ZNSt6vectorISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EESaIS6_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIS_ISt10unique_ptrIN4mlir13sparse_tensor14SparseIteratorESt14default_deleteIS3_EESaIS6_EESaIS8_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN4mlir5ValueESaIS1_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIjSaIjEE14_M_fill_assignEmRKj = comdat any

$_ZNSt6vectorIS_ISt4pairIjjESaIS1_EESaIS3_EE14_M_fill_assignEmRKS3_ = comdat any

$_ZNSt6vectorIS_ISt4pairIN4mlir5ValueEjESaIS3_EESaIS5_EE14_M_fill_assignEmRKS5_ = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SE_T0_T1_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SE_RT0_ = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJjjmEESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SE_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJjjmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SE_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJjjmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET_SE_SE_T0_ = comdat any

$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJjjmEESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_T0_SF_T1_T2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPN4mlir13sparse_tensor14SparseIteratorELb1EE15growAndPushBackES4_ = comdat any

$_ZNSt3_V28__rotateIPPN4mlir13sparse_tensor14SparseIteratorEEET_S6_S6_S6_St26random_access_iterator_tag = comdat any

$_ZSt17__rotate_adaptiveIPPN4mlir13sparse_tensor14SparseIteratorES4_lET_S5_S5_S5_T1_S6_T0_S6_ = comdat any

$_ZNSt6vectorISt4pairIN4mlir5ValueES_IjSaIjEEESaIS5_EE17_M_realloc_insertIJS2_S4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE17_M_realloc_insertIJRN4llvm8ArrayRefIjEERNS1_9IterateOpEPNS0_5BlockERNS0_13BlockArgumentERNS0_10StringAttrEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE = comdat any

$_ZNSt6vectorIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE17_M_realloc_insertIJRN4llvm8ArrayRefIjEERNS1_11CoIterateOpEDnDnRNS0_10StringAttrEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZNSt6vectorIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE17_M_realloc_insertIJRN4llvm11SmallVectorIjLj12EEERPNS0_9OperationEPNS0_5BlockERNS0_5ValueERNS0_10StringAttrEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6tensor7YieldOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str = private unnamed_addr constant [85 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::ConstantLike<Empty>]\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_9FloatAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4llvm11APFloatBase18semPPCDoubleDoubleE = external global %"struct.llvm::fltSemantics", align 4
@_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3scf5ForOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6tensor5PadOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.7 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_6tensor14ExtractSliceOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Emitted from\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor9IterateOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3scf7YieldOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3scf7WhileOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8

@_ZN4mlir13sparse_tensor11LoopEmitterC1ENS_10ValueRangeENS_10StringAttrEbbjN4llvm12function_refIFSt6vectorISt4pairIjjESaIS8_EEjmEEENS_18SparseEmitStrategyE = unnamed_addr alias void (ptr, i64, i64, ptr, i1, i1, i32, ptr, i32), ptr @_ZN4mlir13sparse_tensor11LoopEmitterC2ENS_10ValueRangeENS_10StringAttrEbbjN4llvm12function_refIFSt6vectorISt4pairIjjESaIS8_EEjmEEENS_18SparseEmitStrategyE

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir13sparse_tensor11LoopEmitterC2ENS_10ValueRangeENS_10StringAttrEbbjN4llvm12function_refIFSt6vectorISt4pairIjjESaIS8_EEjmEEENS_18SparseEmitStrategyE(ptr noundef nonnull align 8 dereferenceable(280) initializes((0, 10), (12, 280)) %0, i64 %1, i64 %2, ptr %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 noundef %6, ptr nofree noundef readonly byval(%"class.llvm::function_ref") align 8 captures(none) %7, i32 %8) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.a, i8 0, i64 264, i1 false)
  tail call void @_ZN4mlir13sparse_tensor11LoopEmitter10initializeENS_10ValueRangeENS_10StringAttrEbbjN4llvm12function_refIFSt6vectorISt4pairIjjESaIS8_EEjmEEENS_18SparseEmitStrategyE(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %1, i64 %2, ptr %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 noundef %6, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %7, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir13sparse_tensor11LoopEmitter10initializeENS_10ValueRangeENS_10StringAttrEbbjN4llvm12function_refIFSt6vectorISt4pairIjjESaIS8_EEjmEEENS_18SparseEmitStrategyE(ptr noundef nonnull align 8 dereferenceable(280) initializes((0, 10), (12, 16)) %0, i64 %1, i64 %2, ptr %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 noundef %6, ptr nofree noundef readonly byval(%"class.llvm::function_ref") align 8 captures(none) %7, i32 noundef %8) local_unnamed_addr #0 align 2 {
bb.a:
  %9 = alloca %"class.mlir::RankedTensorType", align 8 ; 5 uses
  %10 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %11 = alloca %"class.std::vector.44", align 8   ; 8 uses
  %12 = alloca %"class.std::vector.49", align 8   ; 8 uses
  %13 = alloca %"class.std::vector.54", align 8   ; 6 uses
  %14 = alloca %"class.mlir::sparse_tensor::SparseTensorType", align 8 ; 4 uses
  %15 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"class.std::vector.79", align 8   ; 6 uses
  %17 = alloca %"class.std::vector.84", align 8   ; 6 uses
  %18 = alloca %"class.std::vector.79", align 16  ; 9 uses
  %i.b = zext i1 %4 to i8
  %i.c = zext i1 %5 to i8
  store ptr %3, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.b, ptr %i.d, align 8, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.c, ptr %i.e, align 1, !tbaa !318
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %8, ptr %i.f, align 4, !tbaa !86
  %i.g = trunc i64 %2 to i32
  %i.h = add i32 %i.g, 1                          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @_ZNSt6vectorIN4mlir5ValueESaIS1_EE13_M_assign_auxIN4llvm6detail27indexed_accessor_range_baseINS0_10ValueRangeENS5_12PointerUnionIJPKS1_PNS0_9OpOperandEPNS0_6detail12OpResultImplEPKNS5_8RepeatedIS1_EEEEES1_S1_S1_E8iteratorEEEvT_SO_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 %1, i64 0, i64 %1, i64 %2)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = zext i32 %i.h to i64                     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store ptr null, ptr %10, align 8, !tbaa !89
  call void @_ZNSt6vectorIN4mlir5ValueESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(8) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !90   ; 3 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !91   ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 24                  ; 3 uses
  %i.t = icmp ult i64 %i.s, %i.k
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = sub nuw nsw i64 %i.k, %i.s
  call void @_ZNSt6vectorIS_ISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EESaIS6_EESaIS8_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.u)
  br label %_ZNSt6vectorIS_ISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EESaIS6_EESaIS8_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.v = icmp ugt i64 %i.s, %i.k
  br i1 %i.v, label %bb.d, label %_ZNSt6vectorIS_ISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EESaIS6_EESaIS8_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.k ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorIS_ISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EESaIS6_EESaIS8_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyISt6vectorISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS4_EESaIS7_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.al, %_ZSt8_DestroyISt6vectorISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS4_EESaIS7_EEEvPT_.exit.i.i.i.i ], [ %i.w, %bb.d ] ; 5 uses
  %i.x = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !94 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !95   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EEEvT_S8_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %_ZSt8_DestroyISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.x, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.aa = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !97 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4mlir13sparse_tensor17SparseTensorLevelEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4mlir13sparse_tensor17SparseTensorLevelEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !99
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %i.aa) #20, !inline_history !294
  br label %_ZSt8_DestroyISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir13sparse_tensor17SparseTensorLevelEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.z
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !295

_ZSt8_DestroyIPSt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EEEvT_S8_.exit.i.i.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EEEvT_S8_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.af = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i.i.i.i.i.i ], [ %i.x, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS4_EESaIS7_EEEvPT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EEEvT_S8_.exit.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !101
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #21
  br label %_ZSt8_DestroyISt6vectorISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS4_EESaIS7_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS4_EESaIS7_EEEvPT_.exit.i.i.i.i: ; preds = %bb.e, %_ZSt8_DestroyIPSt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EEEvT_S8_.exit.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS4_EESaIS7_EEEvT_SB_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !296

_ZSt8_DestroyIPSt6vectorISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS4_EESaIS7_EEEvT_SB_.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS4_EESaIS7_EEEvPT_.exit.i.i.i.i
  store ptr %i.w, ptr %i.m, align 8, !tbaa !90
  br label %_ZNSt6vectorIS_ISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EESaIS6_EESaIS8_EE6resizeEm.exit

_ZNSt6vectorIS_ISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EESaIS6_EESaIS8_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPSt6vectorISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS4_EESaIS7_EEEvT_SB_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  call void @_ZNSt6vectorIS_IS_ISt10unique_ptrIN4mlir13sparse_tensor14SparseIteratorESt14default_deleteIS3_EESaIS6_EESaIS8_EESaISA_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %i.k)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !102 ; 3 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !103 ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 24                ; 3 uses
  %i.av = icmp ult i64 %i.au, %i.k
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIS_ISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EESaIS6_EESaIS8_EE6resizeEm.exit
  %i.aw = sub nuw nsw i64 %i.k, %i.au
  call void @_ZNSt6vectorIS_IN4mlir5ValueESaIS1_EESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 noundef %i.aw)
  br label %_ZNSt6vectorIS_IN4mlir5ValueESaIS1_EESaIS3_EE6resizeEm.exit

bb.g:                                             ; preds = %_ZNSt6vectorIS_ISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EESaIS6_EESaIS8_EE6resizeEm.exit
  %i.ax = icmp ugt i64 %i.au, %i.k
  br i1 %i.ax, label %bb.h, label %_ZNSt6vectorIS_IN4mlir5ValueESaIS1_EESaIS3_EE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.k ; 3 uses
  %.not.i.i62 = icmp eq ptr %i.ap, %i.ay
  br i1 %.not.i.i62, label %_ZNSt6vectorIS_IN4mlir5ValueESaIS1_EESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i63

.lr.ph.i.i.i.i63:                                 ; preds = %bb.h, %_ZSt8_DestroyISt6vectorIN4mlir5ValueESaIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i64 = phi ptr [ %i.bf, %_ZSt8_DestroyISt6vectorIN4mlir5ValueESaIS2_EEEvPT_.exit.i.i.i.i ], [ %i.ay, %bb.h ] ; 3 uses
  %i.az = load ptr, ptr %.05.i.i.i.i64, align 8, !tbaa !104 ; 3 uses
  %.not.i.i.i.i.i.i.i.i65 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i.i65, label %_ZSt8_DestroyISt6vectorIN4mlir5ValueESaIS2_EEEvPT_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i63
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i64, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !105
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #21
  br label %_ZSt8_DestroyISt6vectorIN4mlir5ValueESaIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN4mlir5ValueESaIS2_EEEvPT_.exit.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i63
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i64, i64 24 ; 2 uses
  %.not.i.i.i.i66 = icmp eq ptr %i.bf, %i.ap
  br i1 %.not.i.i.i.i66, label %_ZSt8_DestroyIPSt6vectorIN4mlir5ValueESaIS2_EEEvT_S6_.exit.i.i, label %.lr.ph.i.i.i.i63, !llvm.loop !297

_ZSt8_DestroyIPSt6vectorIN4mlir5ValueESaIS2_EEEvT_S6_.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN4mlir5ValueESaIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.ay, ptr %i.ao, align 8, !tbaa !102
  br label %_ZNSt6vectorIS_IN4mlir5ValueESaIS1_EESaIS3_EE6resizeEm.exit

_ZNSt6vectorIS_IN4mlir5ValueESaIS1_EESaIS3_EE6resizeEm.exit: ; preds = %bb.f, %bb.g, %bb.h, %_ZSt8_DestroyIPSt6vectorIN4mlir5ValueESaIS2_EEEvT_S6_.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bh = zext i32 %6 to i64                      ; 6 uses
  call void @_ZNSt6vectorIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE7reserveEm:bb.a
  store i32 12, ptr %i.r, align 4, !tbaa !182
  %i.s = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !181  ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  %i.u = icmp eq ptr %.011.i.i.i.i.i, %.0810.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.u, %.not.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4mlir13sparse_tensor11LoopEmitter8LoopInfoEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.v = icmp ugt i32 %i.t, 12
  br i1 %i.v, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.w = zext i32 %i.t to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %.011.i.i.i.i.i, ptr noundef nonnull %i.p, i64 noundef %i.w, i64 noundef 4) #20
  %.pre.i.i.i.i.i.i.i.i = load i32, ptr %i.s, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.011.i.i.i.i.i, align 8, !tbaa !180
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i, %bb.d
  %i.x = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.p, %bb.d ]
  %i.y = phi i32 [ %.pre.i.i.i.i.i.i.i.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.t, %bb.d ]
  %i.z = zext i32 %i.y to i64
  %i.aa = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !180
  %gepdiff.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 4 %i.aa, i64 %gepdiff.i.i.i.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i
  store i32 %i.t, ptr %i.q, align 8, !tbaa !181
  br label %_ZSt10_ConstructIN4mlir13sparse_tensor11LoopEmitter8LoopInfoEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN4mlir13sparse_tensor11LoopEmitter8LoopInfoEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 88 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 88
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

_ZNSt6vectorIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit: ; preds = %_ZSt10_ConstructIN4mlir13sparse_tensor11LoopEmitter8LoopInfoEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE11_M_allocateEm.exit.i
  %i.af = load ptr, ptr %0, align 8, !tbaa !177   ; 3 uses
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !178 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4mlir13sparse_tensor11LoopEmitter8LoopInfoEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, %_ZSt8_DestroyIN4mlir13sparse_tensor11LoopEmitter8LoopInfoEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyIN4mlir13sparse_tensor11LoopEmitter8LoopInfoEEvPT_.exit.i.i ], [ %i.af, %_ZNSt6vectorIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit ] ; 3 uses
  %i.ah = load ptr, ptr %.05.i.i, align 8, !tbaa !180 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZSt8_DestroyIN4mlir13sparse_tensor11LoopEmitter8LoopInfoEEvPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef %i.ah) #20
  br label %_ZSt8_DestroyIN4mlir13sparse_tensor11LoopEmitter8LoopInfoEEvPT_.exit.i.i

_ZSt8_DestroyIN4mlir13sparse_tensor11LoopEmitter8LoopInfoEEvPT_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 88 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.ak, %i.ag
  br i1 %.not.i.i7, label %_ZSt8_DestroyIPN4mlir13sparse_tensor11LoopEmitter8LoopInfoEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN4mlir13sparse_tensor11LoopEmitter8LoopInfoEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4mlir13sparse_tensor11LoopEmitter8LoopInfoEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !177
  br label %_ZSt8_DestroyIPN4mlir13sparse_tensor11LoopEmitter8LoopInfoEEvT_S5_.exit

_ZSt8_DestroyIPN4mlir13sparse_tensor11LoopEmitter8LoopInfoEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPN4mlir13sparse_tensor11LoopEmitter8LoopInfoEEvT_S5_.exitthread-pre-split, %_ZNSt6vectorIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit
  %i.al = phi ptr [ %.pr, %_ZSt8_DestroyIPN4mlir13sparse_tensor11LoopEmitter8LoopInfoEEvT_S5_.exitthread-pre-split ], [ %i.af, %_ZNSt6vectorIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4mlir13sparse_tensor11LoopEmitter8LoopInfoEEvT_S5_.exit
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !176
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ap) #21
  br label %_ZNSt12_Vector_baseIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN4mlir13sparse_tensor11LoopEmitter8LoopInfoEEvT_S5_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !177
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.aq, ptr %i.j, align 8, !tbaa !178
  %i.ar = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %1
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !176
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13sparse_tensor16SparseTensorTypeC2ENS_16RankedTensorTypeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = tail call ptr @_ZN4mlir13sparse_tensor23getSparseTensorEncodingENS_4TypeE(ptr %1) #20 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_ZNK4mlir13sparse_tensor24SparseTensorEncodingAttr10getLvlRankEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call { ptr, i64 } @_ZNK4mlir16RankedTensorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  %i.f = extractvalue { ptr, i64 } %i.e, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i64 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  store i64 %i.g, ptr %i.c, align 8, !tbaa !149
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = tail call noundef zeroext i1 @_ZNK4mlir13sparse_tensor24SparseTensorEncodingAttr10isIdentityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @_ZNK4mlir13sparse_tensor24SparseTensorEncodingAttr11getDimToLvlEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %storemerge = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ]
  store ptr %storemerge, ptr %i.h, align 8
  %i.k = tail call noundef zeroext i1 @_ZNK4mlir13sparse_tensor24SparseTensorEncodingAttr10isIdentityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZNK4mlir13sparse_tensor24SparseTensorEncodingAttr11getLvlToDimEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %storemerge2 = phi ptr [ %i.l, %bb.g ], [ null, %bb.f ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %storemerge2, ptr %i.m, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir13sparse_tensor11LoopEmitter17makeLevelIteratorERNS_9OpBuilderENS_8LocationEjm(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %7 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %8 = alloca %"class.mlir::Value", align 8       ; 6 uses
  %9 = alloca %"class.mlir::sparse_tensor::SparseTensorType", align 8 ; 4 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 7 uses
  %11 = alloca %"class.mlir::tensor::PadOp", align 8 ; 13 uses
  %12 = alloca %"class.llvm::SmallBitVector", align 8 ; 6 uses
  %13 = alloca %"class.llvm::SmallVector", align 8 ; 6 uses
  %14 = alloca %"class.llvm::SmallVector", align 8 ; 6 uses
  %15 = alloca %"class.mlir::sparse_tensor::SparseTensorEncodingAttr", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = zext i32 %4 to i64                       ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.e = load i64, ptr %i.d, align 8, !tbaa !109  ; 2 uses
  store i64 %i.e, ptr %8, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %.sroa.019.0.copyload.cast = inttoptr i64 %i.e to ptr ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload.cast, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !334
  %i.g = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.h = inttoptr i64 %i.g to ptr
  call void @_ZN4mlir13sparse_tensor16SparseTensorTypeC2ENS_16RankedTensorTypeE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !91
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !94
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %5
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !97
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !86
  call void @_ZN4mlir13sparse_tensor18makeSimpleIteratorERKNS0_17SparseTensorLevelENS_18SparseEmitStrategyE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i32 noundef %i.p) #20
  %i.q = call fastcc ptr @_ZL14tryFoldTensorsN4mlir5ValueE(ptr %.sroa.019.0.copyload.cast)
  %.not = icmp eq ptr %i.q, %.sroa.019.0.copyload.cast
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.r = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNK4mlir5Value13getDefiningOpINS_6tensor5PadOpEEET_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !184
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !186
  %i.v = icmp eq ptr %i.u, @_ZN4mlir6detail14TypeIDResolverINS_6tensor5PadOpEvE2idE
  %spec.select.i.i.i.i = select i1 %i.v, ptr %i.r, ptr null
  br label %_ZNK4mlir5Value13getDefiningOpINS_6tensor5PadOpEEET_v.exit

_ZNK4mlir5Value13getDefiningOpINS_6tensor5PadOpEEET_v.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.c ], [ null, %bb.b ]
  store ptr %.sroa.0.0.i.i.i, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @_ZN4mlir6tensor5PadOp13getPaddedDimsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallBitVector") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  %i.w = load i64, ptr %12, align 8, !tbaa !336   ; 5 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %_ZNK4llvm14SmallBitVector4testEj.exit.thread, label %bb.d

_ZNK4llvm14SmallBitVector4testEj.exit.thread:     ; preds = %_ZNK4mlir5Value13getDefiningOpINS_6tensor5PadOpEEET_v.exit
  %i.y = lshr i64 %i.w, 1
  %i.z = lshr i64 %i.w, 58
  %i.aa = shl nsw i64 -1, %i.z
  %i.ab = xor i64 %i.aa, -1
  %i.ac = and i64 %i.y, %i.ab
  %i.ad = and i64 %5, 4294967295
  %i.ae = lshr i64 %i.ac, %i.ad
  %i.af = trunc i64 %i.ae to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br i1 %i.af, label %bb.g, label %.critedge37

bb.d:                                             ; preds = %_ZNK4mlir5Value13getDefiningOpINS_6tensor5PadOpEEET_v.exit
  %i.ag = inttoptr i64 %i.w to ptr                ; 3 uses
  %i.ah = lshr i64 %5, 6
  %i.ai = and i64 %i.ah, 67108863
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !180 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = and i64 %5, 63
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !187
  %i.an = shl nuw i64 1, %i.al
  %i.ao = and i64 %i.am, %i.an
  %.not50 = icmp eq i64 %i.ao, 0                  ; 2 uses
  %i.ap = icmp eq i64 %i.w, 0
  br i1 %i.ap, label %_ZN4llvm14SmallBitVectorD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ar = icmp eq ptr %i.aj, %i.aq
  br i1 %i.ar, label %_ZN4llvm9BitVectorD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.aj) #20
  br label %_ZN4llvm9BitVectorD2Ev.exit.i

_ZN4llvm9BitVectorD2Ev.exit.i:                    ; preds = %bb.f, %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 72) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br i1 %.not50, label %.critedge37, label %bb.g

_ZN4llvm14SmallBitVectorD2Ev.exit:                ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br i1 %.not50, label %.critedge37, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i, %_ZNK4llvm14SmallBitVector4testEj.exit.thread, %_ZN4llvm14SmallBitVectorD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.as = call { ptr, i64 } @_ZN4mlir6tensor5PadOp12getStaticLowEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #20, !noalias !337 ; 2 uses
  %i.at = call i64 @_ZN4mlir6tensor5PadOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1) #20, !noalias !337 ; 3 uses
  %i.au = load ptr, ptr %11, align 8, !tbaa !190, !noalias !337 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 44
  %i.aw = load i32, ptr %i.av, align 4, !noalias !337
  %i.ax = and i32 %i.aw, 8388608
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4mlir6tensor5PadOp14getMixedLowPadEv.exit, label %bb.h, !prof !191

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !194, !noalias !337
  br label %_ZN4mlir6tensor5PadOp14getMixedLowPadEv.exit

_ZN4mlir6tensor5PadOp14getMixedLowPadEv.exit:     ; preds = %bb.g, %bb.h
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.az, %bb.h ], [ null, %bb.g ]
  %i.ba = extractvalue { ptr, i64 } %i.as, 1
  %i.bb = extractvalue { ptr, i64 } %i.as, 0
  %i.bc = and i64 %i.at, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i = lshr i64 %i.at, 32
  %i.bd = add i64 %.sroa.5.0.extract.shift.i.i.i, %i.at
  %i.be = and i64 %i.bd, 4294967295
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i.i, i64 %i.bc
  %i.bg = sub nsw i64 %i.be, %i.bc
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %i.bf, i64 %i.bg) #20, !noalias !337
  %i.bh = load i64, ptr %7, align 8, !noalias !337
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !337
  call void @_ZN4mlir6tensor5PadOp15getMixedPadImplEN4llvm8ArrayRefIlEENS_10ValueRangeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr %i.bb, i64 %i.ba, i64 %i.bh, i64 %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bk = load ptr, ptr %13, align 8, !tbaa !180
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %5
  %.sroa.015.0.copyload = load i64, ptr %i.bl, align 8 ; 2 uses
  %i.bm = call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %.sroa.015.0.copyload) #20 ; 2 uses
  %i.bn = extractvalue { i64, i8 } %i.bm, 1
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4mlir6tensor5PadOp14getMixedLowPadEv.exit
  %i.bp = extractvalue { i64, i8 } %i.bm, 0
  %i.bq = call ptr @_ZN4mlir5arith15ConstantIndexOp6createERNS_9OpBuilderENS_8LocationEl(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %3, i64 noundef %i.bp) #20
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -16
  br label %_ZL17unFoldOpIntResultRN4mlir9OpBuilderENS_8LocationENS_12OpFoldResultE.exit

bb.j:                                             ; preds = %_ZN4mlir6tensor5PadOp14getMixedLowPadEv.exit
  %i.bs = and i64 %.sroa.015.0.copyload, -5
  %i.bt = inttoptr i64 %i.bs to ptr
  br label %_ZL17unFoldOpIntResultRN4mlir9OpBuilderENS_8LocationENS_12OpFoldResultE.exit

_ZL17unFoldOpIntResultRN4mlir9OpBuilderENS_8LocationENS_12OpFoldResultE.exit: ; preds = %bb.i, %bb.j
  %.sroa.03.1.i = phi ptr [ %i.bt, %bb.j ], [ %i.br, %bb.i ]
  %i.bu = load ptr, ptr %13, align 8, !tbaa !180  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZL17unFoldOpIntResultRN4mlir9OpBuilderENS_8LocationENS_12OpFoldResultE.exit
  call void @free(ptr noundef %i.bu) #20
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit: ; preds = %_ZL17unFoldOpIntResultRN4mlir9OpBuilderENS_8LocationENS_12OpFoldResultE.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bx = call { ptr, i64 } @_ZN4mlir6tensor5PadOp13getStaticHighEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #20, !noalias !338 ; 2 uses
  %i.by = call i64 @_ZN4mlir6tensor5PadOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 2) #20, !noalias !338 ; 3 uses
  %i.bz = load ptr, ptr %11, align 8, !tbaa !190, !noalias !338 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 44
  %i.cb = load i32, ptr %i.ca, align 4, !noalias !338
  %i.cc = and i32 %i.cb, 8388608
  %.not.i.i.i.i.i.i38 = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.i.i.i.i38, label %_ZN4mlir6tensor5PadOp15getMixedHighPadEv.exit, label %bb.l, !prof !191

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !194, !noalias !338
  br label %_ZN4mlir6tensor5PadOp15getMixedHighPadEv.exit

_ZN4mlir6tensor5PadOp15getMixedHighPadEv.exit:    ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, %bb.l
  %.sroa.0.0.i.i.i.i.i.i39 = phi ptr [ %i.ce, %bb.l ], [ null, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit ]
  %i.cf = extractvalue { ptr, i64 } %i.bx, 1
  %i.cg = extractvalue { ptr, i64 } %i.bx, 0
  %i.ch = and i64 %i.by, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i40 = lshr i64 %i.by, 32
  %i.ci = add i64 %.sroa.5.0.extract.shift.i.i.i40, %i.by
  %i.cj = and i64 %i.ci, 4294967295
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i.i39, i64 %i.ch
  %i.cl = sub nsw i64 %i.cj, %i.ch
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.ck, i64 %i.cl) #20, !noalias !338
  %i.cm = load i64, ptr %6, align 8, !noalias !338
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !noalias !338
  call void @_ZN4mlir6tensor5PadOp15getMixedPadImplEN4llvm8ArrayRefIlEENS_10ValueRangeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr %i.cg, i64 %i.cf, i64 %i.cm, i64 %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.cp = load ptr, ptr %14, align 8, !tbaa !180
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %5
  %.sroa.012.0.copyload = load i64, ptr %i.cq, align 8 ; 2 uses
  %i.cr = call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %.sroa.012.0.copyload) #20 ; 2 uses
  %i.cs = extractvalue { i64, i8 } %i.cr, 1
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4mlir6tensor5PadOp15getMixedHighPadEv.exit
  %i.cu = extractvalue { i64, i8 } %i.cr, 0
  %i.cv = call ptr @_ZN4mlir5arith15ConstantIndexOp6createERNS_9OpBuilderENS_8LocationEl(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %3, i64 noundef %i.cu) #20
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -16
  br label %_ZL17unFoldOpIntResultRN4mlir9OpBuilderENS_8LocationENS_12OpFoldResultE.exit42

bb.n:                                             ; preds = %_ZN4mlir6tensor5PadOp15getMixedHighPadEv.exit
  %i.cx = and i64 %.sroa.012.0.copyload, -5
  %i.cy = inttoptr i64 %i.cx to ptr
  br label %_ZL17unFoldOpIntResultRN4mlir9OpBuilderENS_8LocationENS_12OpFoldResultE.exit42

_ZL17unFoldOpIntResultRN4mlir9OpBuilderENS_8LocationENS_12OpFoldResultE.exit42: ; preds = %bb.m, %bb.n
  %.sroa.03.1.i41 = phi ptr [ %i.cy, %bb.n ], [ %i.cw, %bb.m ]
  %i.cz = load ptr, ptr %14, align 8, !tbaa !180  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit43, label %bb.o

bb.o:                                             ; preds = %_ZL17unFoldOpIntResultRN4mlir9OpBuilderENS_8LocationENS_12OpFoldResultE.exit42
  call void @free(ptr noundef %i.cz) #20
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit43

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit43: ; preds = %_ZL17unFoldOpIntResultRN4mlir9OpBuilderENS_8LocationENS_12OpFoldResultE.exit42, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.dc = load i32, ptr %i.o, align 4, !tbaa !86
  call void @_ZN4mlir13sparse_tensor18makePaddedIteratorEOSt10unique_ptrINS0_14SparseIteratorESt14default_deleteIS2_EENS_5ValueES7_NS_18SparseEmitStrategyE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr %.sroa.03.1.i, ptr %.sroa.03.1.i41, i32 noundef %i.dc) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.s

.critedge37:                                      ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i, %_ZNK4llvm14SmallBitVector4testEj.exit.thread, %_ZN4llvm14SmallBitVectorD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.p

bb.p:                                             ; preds = %.critedge37, %bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !34 ; 2 uses
  %.not51 = icmp eq ptr %i.de, null
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  br i1 %.not51, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.de, ptr %15, align 8
  %i.df = call noundef zeroext i1 @_ZNK4mlir13sparse_tensor24SparseTensorEncodingAttr7isSliceEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br i1 %i.df, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %.sroa.06.0.copyload = load ptr, ptr %8, align 8, !tbaa !109 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.copyload, i64 8
  %.0.copyload.i.i.i.i.i.i44 = load i64, ptr %i.dg, align 8
  %i.dh = and i64 %.0.copyload.i.i.i.i.i.i44, -8
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = call ptr @_ZN4mlir13sparse_tensor23getSparseTensorEncodingENS_4TypeE(ptr %i.di) #20
  %i.dk = call noundef i64 @_ZN4mlir13sparse_tensor5toDimENS0_24SparseTensorEncodingAttrEm(ptr %i.dj, i64 noundef %5) #20
  %i.dl = call ptr @_ZN4mlir13sparse_tensor25createOrFoldSliceOffsetOpERNS_9OpBuilderENS_8LocationENS_5ValueEm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %3, ptr %.sroa.06.0.copyload, i64 noundef %i.dk) #20
  %.sroa.03.0.copyload = load ptr, ptr %8, align 8, !tbaa !109 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 8
  %.0.copyload.i.i.i.i.i.i45 = load i64, ptr %i.dm, align 8
  %i.dn = and i64 %.0.copyload.i.i.i.i.i.i45, -8
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = call ptr @_ZN4mlir13sparse_tensor23getSparseTensorEncodingENS_4TypeE(ptr %i.do) #20
  %i.dq = call noundef i64 @_ZN4mlir13sparse_tensor5toDimENS0_24SparseTensorEncodingAttrEm(ptr %i.dp, i64 noundef %5) #20
  %i.dr = call ptr @_ZN4mlir13sparse_tensor25createOrFoldSliceStrideOpERNS_9OpBuilderENS_8LocationENS_5ValueEm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %3, ptr %.sroa.03.0.copyload, i64 noundef %i.dq) #20
  %i.ds = load ptr, ptr %i.i, align 8, !tbaa !91
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %i.b
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !94
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %5
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !97
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %.sroa.0.0.copyload.i46 = load ptr, ptr %i.dx, align 8, !tbaa !109
  %i.dy = load i32, ptr %i.o, align 4, !tbaa !86
  call void @_ZN4mlir13sparse_tensor23makeSlicedLevelIteratorEOSt10unique_ptrINS0_14SparseIteratorESt14default_deleteIS2_EENS_5ValueES7_S7_NS_18SparseEmitStrategyE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr %i.dl, ptr %i.dr, ptr %.sroa.0.0.copyload.i46, i32 noundef %i.dy) #20
  br label %bb.s

.critedge:                                        ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %.thread

.thread:                                          ; preds = %bb.q, %.critedge
  %i.dz = load i64, ptr %10, align 8, !tbaa !160
  store i64 %i.dz, ptr %0, align 8, !tbaa !160
  br label %_ZNSt10unique_ptrIN4mlir13sparse_tensor14SparseIteratorESt14default_deleteIS2_EED2Ev.exit

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit43, %bb.r
  %.pr = load ptr, ptr %10, align 8, !tbaa !160   ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4mlir13sparse_tensor14SparseIteratorESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir13sparse_tensor14SparseIteratorEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4mlir13sparse_tensor14SparseIteratorEEclEPS2_.exit.i: ; preds = %bb.s
  %i.ea = load ptr, ptr %.pr, align 8, !tbaa !99
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(120) %.pr) #20, !inline_history !7
  br label %_ZNSt10unique_ptrIN4mlir13sparse_tensor14SparseIteratorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir13sparse_tensor14SparseIteratorESt14default_deleteIS2_EED2Ev.exit: ; preds = %.thread, %bb.s, %_ZNKSt14default_deleteIN4mlir13sparse_tensor14SparseIteratorEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  ret void
}

declare void @_ZN4mlir13sparse_tensor18makeSimpleIteratorERKNS0_17SparseTensorLevelENS_18SparseEmitStrategyE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZL14tryFoldTensorsN4mlir5ValueE(ptr %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %2 = alloca %"class.mlir::Value", align 8       ; 3 uses
  %3 = alloca %"class.std::optional.1009", align 8 ; 5 uses
  %4 = alloca %"class.mlir::tensor::PadOp", align 8 ; 8 uses
  %5 = alloca %"class.mlir::RankedTensorType", align 8 ; 6 uses
  %6 = alloca %"class.mlir::sparse_tensor::SparseTensorEncodingAttr", align 8 ; 6 uses
  %7 = alloca %"class.mlir::Attribute", align 8   ; 6 uses
  %8 = alloca %"struct.mlir::detail::RecursivePatternMatcher", align 8 ; 5 uses
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !343
  %i.b = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135, !noalias !343
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !137, !noalias !343
  %i.f = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE
  br i1 %i.f, label %bb.b, label %_ZN4mlir13sparse_tensor22tryGetSparseTensorTypeENS_5ValueE.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN4mlir13sparse_tensor16SparseTensorTypeC2ENS_16RankedTensorTypeE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr nonnull %i.c)
  br label %_ZN4mlir13sparse_tensor22tryGetSparseTensorTypeENS_5ValueE.exit

_ZN4mlir13sparse_tensor22tryGetSparseTensorTypeENS_5ValueE.exit: ; preds = %bb.a, %bb.b
  %.sink.i = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i8 %.sink.i, ptr %i.g, align 8, !tbaa !345, !alias.scope !343
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.h = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #20 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNK4mlir5Value13getDefiningOpINS_6tensor5PadOpEEET_v.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir13sparse_tensor22tryGetSparseTensorTypeENS_5ValueE.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !184
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !186
  %i.l = icmp eq ptr %i.k, @_ZN4mlir6detail14TypeIDResolverINS_6tensor5PadOpEvE2idE
  br i1 %i.l, label %bb.d, label %_ZNK4mlir5Value13getDefiningOpINS_6tensor5PadOpEEET_v.exit.thread

_ZNK4mlir5Value13getDefiningOpINS_6tensor5PadOpEEET_v.exit.thread: ; preds = %bb.c, %_ZN4mlir13sparse_tensor22tryGetSparseTensorTypeENS_5ValueE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  br label %.critedge

bb.d:                                             ; preds = %bb.c
  store ptr %i.h, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.m = load i8, ptr %i.g, align 8, !tbaa !345, !range !195, !noundef !196
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = call i64 @_ZN4mlir6tensor5PadOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #20
  %i.r = load ptr, ptr %4, align 8, !tbaa !190
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !194
  %i.u = and i64 %i.q, 4294967295
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !109
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8
  %i.y = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %i.z, ptr %5, align 8
  %i.aa = call ptr @_ZNK4mlir16RankedTensorType11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %.sroa.0.0.copyload.i = load ptr, ptr %i.o, align 8 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %.sroa.0.0.copyload.i
  br i1 %i.ab, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  store ptr %.sroa.0.0.copyload.i, ptr %6, align 8
  %i.ac = call noundef zeroext i1 @_ZNK4mlir13sparse_tensor24SparseTensorEncodingAttr10isIdentityEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %i.ac, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr null, ptr %7, align 8, !tbaa !34
  %i.ad = load ptr, ptr %4, align 8, !tbaa !190   ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.af = load i32, ptr %i.ae, align 4            ; 3 uses
  %i.ag = and i32 %i.af, 8388607
  %i.ah = icmp ne i32 %i.ag, 0
  call void @llvm.assume(i1 %i.ah)
  %i.ai = lshr i32 %i.af, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.ai, 1
  %i.aj = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.aj
  %i.al = lshr i32 %i.af, 21
  %i.am = and i32 %i.al, 2040
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !210
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !211
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.aw = call noundef ptr @_ZN4mlir5Block13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.av) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.ax = ptrtoint ptr %7 to i64
  store i64 %i.ax, ptr %8, align 8, !tbaa !346, !alias.scope !347
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !184
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !186
  %i.bb = icmp eq ptr %i.ba, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7YieldOpEvE2idE
  br i1 %i.bb, label %bb.i, label %.critedge2

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 44
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = and i32 %i.bd, 8388608
  %.not.i.i.i10 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i10, label %.critedge2, label %_ZN4mlir9Operation14getNumOperandsEv.exit.i.i, !prof !191

_ZN4mlir9Operation14getNumOperandsEv.exit.i.i:    ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 68
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !348
  %.not.i.i = icmp eq i32 %i.bg, 1
  br i1 %.not.i.i, label %bb.j, label %.critedge2

bb.j:                                             ; preds = %_ZN4mlir9Operation14getNumOperandsEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !194
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i11 = load ptr, ptr %i.bj, align 8, !tbaa !109
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i11, ptr %1, align 8
  %i.bk = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %.not.not.not.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.not.not.i.i.i.i.i.i, label %.critedge2, label %_ZN4mlir12matchPatternINS_6detail23RecursivePatternMatcherINS_6tensor7YieldOpEJNS1_18constant_op_binderINS_9AttributeEEEEEEEEbPNS_9OperationERKT_.exit

_ZN4mlir12matchPatternINS_6detail23RecursivePatternMatcherINS_6tensor7YieldOpEJNS1_18constant_op_binderINS_9AttributeEEEEEEEEbPNS_9OperationERKT_.exit: ; preds = %bb.j
  %i.bl = call noundef zeroext i1 @_ZN4mlir6detail18constant_op_binderINS_9AttributeEE5matchEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %i.bk)
  br i1 %i.bl, label %bb.k, label %.critedge2

bb.k:                                             ; preds = %_ZN4mlir12matchPatternINS_6detail23RecursivePatternMatcherINS_6tensor7YieldOpEJNS1_18constant_op_binderINS_9AttributeEEEEEEEEbPNS_9OperationERKT_.exit
  %.sroa.03.0.copyload = load ptr, ptr %7, align 8, !tbaa !213
  %i.bm = call fastcc noundef zeroext i1 @_ZL13isIntOrFPZeroN4mlir9AttributeE(ptr %.sroa.03.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br i1 %i.bm, label %bb.l, label %.thread

.critedge2:                                       ; preds = %bb.j, %bb.h, %_ZN4mlir9Operation14getNumOperandsEv.exit.i.i, %bb.i, %_ZN4mlir12matchPatternINS_6detail23RecursivePatternMatcherINS_6tensor7YieldOpEJNS1_18constant_op_binderINS_9AttributeEEEEEEEEbPNS_9OperationERKT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.thread

.thread:                                          ; preds = %.critedge2, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bn = call i64 @_ZN4mlir6tensor5PadOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #20
  %i.bo = load ptr, ptr %4, align 8, !tbaa !190
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !194
  %i.br = and i64 %i.bn, 4294967295
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.bt, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.n

.critedge:                                        ; preds = %_ZNK4mlir5Value13getDefiningOpINS_6tensor5PadOpEEET_v.exit.thread, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.m

bb.m:                                             ; preds = %.thread, %.critedge, %bb.g
  %.sroa.08.0.copyload = load ptr, ptr %2, align 8, !tbaa !109
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sroa.08.1 = phi ptr [ %.sroa.08.0.copyload, %bb.m ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret ptr %.sroa.08.1
}

declare void @_ZN4mlir6tensor5PadOp13getPaddedDimsEv(ptr dead_on_unwind writable sret(%"class.llvm::SmallBitVector") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN4mlir13sparse_tensor18makePaddedIteratorEOSt10unique_ptrINS0_14SparseIteratorESt14default_deleteIS2_EENS_5ValueES7_NS_18SparseEmitStrategyE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4mlir13sparse_tensor24SparseTensorEncodingAttr7isSliceEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN4mlir13sparse_tensor23makeSlicedLevelIteratorEOSt10unique_ptrINS0_14SparseIteratorESt14default_deleteIS2_EENS_5ValueES7_S7_NS_18SparseEmitStrategyE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr, ptr, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir13sparse_tensor11LoopEmitter18initializeLoopEmitERNS_9OpBuilderENS_8LocationEN4llvm12function_refIFNS_5ValueES3_S4_S7_S7_EEENS6_IFS7_S3_S4_mEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, ptr nofree readonly captures(address_is_null) %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::function_ref.118") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.mlir::Value", align 8       ; 7 uses
  %7 = alloca %"class.mlir::RankedTensorType", align 8 ; 5 uses
  %8 = alloca %"class.mlir::sparse_tensor::SparseTensorType", align 8 ; 5 uses
  %9 = alloca %"struct.std::pair", align 8        ; 7 uses
  %10 = alloca %"class.mlir::sparse_tensor::SparseTensorType", align 8 ; 4 uses
  %11 = alloca %"class.std::unique_ptr.91", align 8 ; 6 uses
  %12 = alloca %"class.std::unique_ptr", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !162
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = and i64 %i.g, 34359738360
  %.not146 = icmp eq i64 %i.h, 0
  br i1 %.not146, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = lshr exact i64 %i.g, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = icmp ne ptr %3, null
  %wide.trip.count = and i64 %i.i, 4294967295
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !86
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.y, label %bb.k

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %.sroa.060.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !109
  %i.s = call fastcc ptr @_ZL14tryFoldTensorsN4mlir5ValueE(ptr %.sroa.060.0.copyload) ; 2 uses
  store ptr %i.s, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.t, align 8
  %i.u = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !137
  %i.y = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE
  %spec.select.i.i = select i1 %i.y, ptr %i.v, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %7, align 8
  %i.z = icmp eq ptr %spec.select.i.i, null
  br i1 %i.z, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !379
  %i.aa = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.ab = inttoptr i64 %i.aa to ptr
  call void @_ZN4mlir13sparse_tensor16SparseTensorTypeC2ENS_16RankedTensorTypeE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr %i.ab)
  %i.ac = call { ptr, i64 } @_ZNK4mlir16RankedTensorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20 ; 2 uses
  %i.ad = load i8, ptr %i.j, align 8, !tbaa !85, !range !195, !noundef !196
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.d, label %_ZNK4mlir13sparse_tensor11LoopEmitter14isOutputTensorEj.exit

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !162
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = lshr exact i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 4294967295
  %i.am = and i64 %i.al, 4294967295
  %i.an = icmp eq i64 %indvars.iv, %i.am
  %i.ao = select i1 %i.an, i1 %i.m, i1 false
  br label %_ZNK4mlir13sparse_tensor11LoopEmitter14isOutputTensorEj.exit

_ZNK4mlir13sparse_tensor11LoopEmitter14isOutputTensorEj.exit: ; preds = %bb.c, %bb.d
  %or.cond = phi i1 [ false, %bb.c ], [ %i.ao, %bb.d ]
  %i.ap = call ptr @_ZNK4mlir16RankedTensorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #20
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !34
  %.not131 = icmp eq ptr %i.aq, null
  br i1 %.not131, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZNK4mlir13sparse_tensor11LoopEmitter14isOutputTensorEj.exit
  %i.ar = extractvalue { ptr, i64 } %i.ac, 1
  %i.as = extractvalue { ptr, i64 } %i.ac, 0
  %i.at = call ptr @_ZN4mlir10MemRefType3getEN4llvm8ArrayRefIlEENS_4TypeENS_25MemRefLayoutAttrInterfaceENS_9AttributeE(ptr %i.as, i64 %i.ar, ptr %i.ap, ptr null, ptr null, ptr null) #20 ; 2 uses
  %i.au = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20 ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_ZN4llvm15isa_and_nonnullIJN4mlir6tensor14ExtractSliceOpEEPNS1_9OperationEEEbRKT0_.exit.thread, label %_ZN4llvm15isa_and_nonnullIJN4mlir6tensor14ExtractSliceOpEEPNS1_9OperationEEEbRKT0_.exit

_ZN4llvm15isa_and_nonnullIJN4mlir6tensor14ExtractSliceOpEEPNS1_9OperationEEEbRKT0_.exit: ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !184
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !186
  %i.ay = icmp eq ptr %i.ax, @_ZN4mlir6detail14TypeIDResolverINS_6tensor14ExtractSliceOpEvE2idE
  br i1 %i.ay, label %bb.f, label %_ZN4llvm15isa_and_nonnullIJN4mlir6tensor14ExtractSliceOpEEPNS1_9OperationEEEbRKT0_.exit.thread

bb.f:                                             ; preds = %_ZN4llvm15isa_and_nonnullIJN4mlir6tensor14ExtractSliceOpEEPNS1_9OperationEEEbRKT0_.exit
  %.sroa.050.0.copyload = load ptr, ptr %7, align 8
  %i.az = call ptr @_ZN4mlir13bufferization35getMemRefTypeWithFullyDynamicLayoutENS_10TensorTypeENS_9AttributeE(ptr %.sroa.050.0.copyload, ptr null) #20
  br label %_ZN4llvm15isa_and_nonnullIJN4mlir6tensor14ExtractSliceOpEEPNS1_9OperationEEEbRKT0_.exit.thread

_ZN4llvm15isa_and_nonnullIJN4mlir6tensor14ExtractSliceOpEEPNS1_9OperationEEEbRKT0_.exit.thread: ; preds = %bb.e, %bb.f, %_ZN4llvm15isa_and_nonnullIJN4mlir6tensor14ExtractSliceOpEEPNS1_9OperationEEEbRKT0_.exit
  %.sroa.055.0 = phi ptr [ %i.az, %bb.f ], [ %i.at, %_ZN4llvm15isa_and_nonnullIJN4mlir6tensor14ExtractSliceOpEEPNS1_9OperationEEEbRKT0_.exit ], [ %i.at, %bb.e ]
  %.sroa.045.0.copyload = load ptr, ptr %6, align 8, !tbaa !109
  %i.ba = call ptr @_ZN4mlir13bufferization10ToBufferOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, ptr %.sroa.055.0, ptr %.sroa.045.0.copyload, i1 noundef zeroext false) #20
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -16 ; 2 uses
  br i1 %or.cond, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN4llvm15isa_and_nonnullIJN4mlir6tensor14ExtractSliceOpEEPNS1_9OperationEEEbRKT0_.exit.thread
  %.sroa.041.0.copyload = load ptr, ptr %6, align 8, !tbaa !109
  %i.bc = call ptr %3(i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, ptr nonnull %i.bb, ptr %.sroa.041.0.copyload) #20, !inline_history !351
  br label %bb.i

bb.h:                                             ; preds = %_ZNK4mlir13sparse_tensor11LoopEmitter14isOutputTensorEj.exit
  %.sroa.038.0.copyload = load ptr, ptr %6, align 8, !tbaa !109
  %i.bd = call ptr @_ZN4mlir13sparse_tensor10ToValuesOp6createERNS_9OpBuilderENS_8LocationENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, ptr %.sroa.038.0.copyload) #20
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -16
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm15isa_and_nonnullIJN4mlir6tensor14ExtractSliceOpEEPNS1_9OperationEEEbRKT0_.exit.thread, %bb.g, %bb.h
  %.sink = phi ptr [ %i.be, %bb.h ], [ %i.bc, %bb.g ], [ %i.bb, %_ZN4llvm15isa_and_nonnullIJN4mlir6tensor14ExtractSliceOpEEPNS1_9OperationEEEbRKT0_.exit.thread ]
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !104
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv
  store ptr %.sink, ptr %i.bg, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !352

bb.k:                                             ; preds = %._crit_edge
  %i.bh = load ptr, ptr %5, align 8, !tbaa !381   ; 2 uses
  %.not = icmp eq ptr %i.bh, null
  %.pre163 = load ptr, ptr %i.b, align 8, !tbaa !162 ; 3 uses
  %.pre165 = load ptr, ptr %i.a, align 8, !tbaa !104 ; 3 uses
  br i1 %.not, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = ptrtoint ptr %.pre163 to i64
  %i.bj = ptrtoint ptr %.pre165 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = lshr exact i64 %i.bk, 3                 ; 2 uses
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !162
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !104
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 2 uses
  %i.bu = and i64 %i.bt, 34359738360
  %.not147 = icmp eq i64 %i.bu, 0
  br i1 %.not147, label %.loopexit, label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.l
  %i.bv = lshr exact i64 %i.bt, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !382
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ca = and i64 %i.bl, 4294967295               ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %wide.trip.count155 = and i64 %i.bv, 4294967295
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph137, %_ZNSt4pairISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EES0_INS2_14SparseIteratorES4_IS7_EEED2Ev.exit
  %indvars.iv152 = phi i64 [ 0, %.lr.ph137 ], [ %indvars.iv.next153, %_ZNSt4pairISt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS3_EES0_INS2_14SparseIteratorES4_IS7_EEED2Ev.exit ] ; 6 uses
  %i.cc = call ptr %i.bh(i64 noundef %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, i64 noundef %indvars.iv152) #20, !inline_history !353 ; 2 uses
  %i.cd = load ptr, ptr %i.bn, align 8, !tbaa !104
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv152
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.cf = load i32, ptr %i.n, align 4, !tbaa !86
  %i.cg = trunc nuw i64 %indvars.iv152 to i32
  call void @_ZN4mlir13sparse_tensor23makeSynLevelAndIteratorENS_5ValueEjjNS_18SparseEmitStrategyE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %9, ptr %i.cc, i32 noundef %i.bm, i32 noundef %i.cg, i32 noundef %i.cf) #20
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !91
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.ca
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !94
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv152 ; 2 uses
  %i.cl = load ptr, ptr %9, align 8, !tbaa !97
  store ptr null, ptr %9, align 8, !tbaa !97
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !97 ; 3 uses
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !97
  %.not.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS2_EEaSEOS5_.exit, label %_ZNKSt14default_deleteIN4mlir13sparse_tensor17SparseTensorLevelEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4mlir13sparse_tensor17SparseTensorLevelEEclEPS2_.exit.i.i.i.i: ; preds = %bb.m
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !99
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(32) %i.cm) #20, !inline_history !354
  br label %_ZNSt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %bb.m, %_ZNKSt14default_deleteIN4mlir13sparse_tensor17SparseTensorLevelEEclEPS2_.exit.i.i.i.i
  %i.cq = load ptr, ptr %i.cb, align 8, !tbaa !150
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.ca
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !154
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %indvars.iv152 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !158 ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !161
  %.not.i = icmp eq ptr %i.cv, %i.cx
  br i1 %.not.i, label %bb.n, label %_ZNSt6vectorISt10unique_ptrIN4mlir13sparse_tensor14SparseIteratorESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN4mlir13sparse_tensor14SparseIteratorESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.thread: ; preds = %_ZNSt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS2_EEaSEOS5_.exit
  %i.cy = load i64, ptr %i.by, align 8, !tbaa !160
  store i64 %i.cy, ptr %i.cv, align 8, !tbaa !160
  store ptr null, ptr %i.by, align 8, !tbaa !160
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.cz, ptr %i.cu, align 8, !tbaa !158
  br label %_ZNSt10unique_ptrIN4mlir13sparse_tensor14SparseIteratorESt14default_deleteIS2_EED2Ev.exit.i

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN4mlir13sparse_tensor17SparseTensorLevelESt14default_deleteIS2_EEaSEOS5_.exit
  %i.da = load ptr, ptr %i.ct, align 8, !tbaa !157 ; 10 uses
  %i.db = ptrtoint ptr %i.cv to i64               ; 3 uses
  %i.dc = ptrtoint ptr %i.da to i64               ; 4 uses
  %i.dd = sub i64 %i.db, %i.dc                    ; 3 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775800
  br i1 %i.de, label %bb.o, label %_ZNKSt6vectorISt10unique_ptrIN4mlir13sparse_tensor14SparseIteratorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #23
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4mlir13sparse_tensor14SparseIteratorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.n
  %i.df = ashr exact i64 %i.dd, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dg = add nsw i64 %.sroa.speculated.i.i, %i.df ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.df
  %i.di = call i64 @llvm.umin.i64(i64 %i.dg, i64 1152921504606846975)
  %i.dj = select i1 %i.dh, i64 1152921504606846975, i64 %i.di ; 3 uses
  %.not.i.i94 = icmp ne i64 %i.dj, 0
  call void @llvm.assume(i1 %.not.i.i94)
  %i.dk = shl nuw nsw i64 %i.dj, 3
  %i.dl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #22 ; 10 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dd
  %i.dn = load i64, ptr %i.by, align 8, !tbaa !160
  store i64 %i.dn, ptr %i.dm, align 8, !tbaa !160
  store ptr null, ptr %i.by, align 8, !tbaa !160
  %.not10.i.i.i.i = icmp eq ptr %i.da, %i.cv
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir13sparse_tensor14SparseIteratorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4mlir13sparse_tensor14SparseIteratorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.do = add i64 %i.db, -8
  %i.dp = sub i64 %i.do, %i.dc                    ; 2 uses
  %i.dq = lshr i64 %i.dp, 3
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dp, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader218, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.dl, i64 8
  %i.ds = add i64 %i.db, -8
  %i.dt = sub i64 %i.ds, %i.dc
  %i.du = and i64 %i.dt, -8                       ; 2 uses
  %scevgep188 = getelementptr i8, ptr %scevgep, i64 %i.du
  %scevgep189 = getelementptr i8, ptr %i.da, i64 8
  %scevgep190 = getelementptr i8, ptr %scevgep189, i64 %i.du
  %bound0 = icmp ult ptr %i.dl, %scevgep190
  %bound1 = icmp ult ptr %i.da, %scevgep188
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader218, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dr, 4611686018427387900     ; 3 uses
  %i.dv = shl i64 %n.vec, 3                       ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dl, i64 %i.dv  ; 2 uses
  %i.dx = getelementptr i8, ptr %i.da, i64 %i.dv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dy = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dl, i64 %i.dy ; 2 uses
  %next.gep191 = getelementptr i8, ptr %i.da, i64 %i.dy ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.dz = getelementptr i8, ptr %next.gep191, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep191, align 8, !tbaa !160, !alias.scope !385, !noalias !383
  %wide.load192 = load <2 x i64>, ptr %i.dz, align 8, !tbaa !160, !alias.scope !385, !noalias !383
  %i.ea = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !160, !alias.scope !386, !noalias !385
  store <2 x i64> %wide.load192, ptr %i.ea, align 8, !tbaa !160, !alias.scope !386, !noalias !385
  %i.eb = getelementptr i8, ptr %next.gep191, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep191, align 8, !tbaa !160, !alias.scope !385, !noalias !383
  store <2 x ptr> splat (ptr null), ptr %i.eb, align 8, !tbaa !160, !alias.scope !385, !noalias !383
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !361

end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE12emplace_backIJRN4llvm11SmallVectorIjLj12EEERPNS0_9OperationEPNS0_5BlockERNS0_5ValueERNS0_10StringAttrEEEERS3_DpOT_:bb.a
  %.not.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i, label %_ZN4mlir13sparse_tensor11LoopEmitter8LoopInfoC2EN4llvm8ArrayRefIjEEPNS_9OperationEPNS_5BlockENS_5ValueENS_10StringAttrE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIjLj12EEC2IjvEENS_8ArrayRefIT_EE.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.x = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 5, ptr %i.y, align 8, !tbaa !285
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.z, align 1, !tbaa !286
  store ptr @.str.11, ptr %6, align 8, !tbaa !279
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 12, ptr %i.aa, align 8, !tbaa !279
  %i.ab = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.x, ptr noundef nonnull align 8 dereferenceable(34) %6) #20
  call void @_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr %i.ab, ptr nonnull %.sroa.0.0.copyload.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %_ZN4mlir13sparse_tensor11LoopEmitter8LoopInfoC2EN4llvm8ArrayRefIjEEPNS_9OperationEPNS_5BlockENS_5ValueENS_10StringAttrE.exit

_ZN4mlir13sparse_tensor11LoopEmitter8LoopInfoC2EN4llvm8ArrayRefIjEEPNS_9OperationEPNS_5BlockENS_5ValueENS_10StringAttrE.exit: ; preds = %_ZN4llvm11SmallVectorIjLj12EEC2IjvEENS_8ArrayRefIT_EE.exit.i, %bb.d
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !178
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 88 ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !178
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE17_M_realloc_insertIJRN4llvm11SmallVectorIjLj12EEERPNS0_9OperationEPNS0_5BlockERNS0_5ValueERNS0_10StringAttrEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !268
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4mlir13sparse_tensor11LoopEmitter8LoopInfoC2EN4llvm8ArrayRefIjEEPNS_9OperationEPNS_5BlockENS_5ValueENS_10StringAttrE.exit
  %i.ae = phi ptr [ %.pre, %bb.e ], [ %i.ad, %_ZN4mlir13sparse_tensor11LoopEmitter8LoopInfoC2EN4llvm8ArrayRefIjEEPNS_9OperationEPNS_5BlockENS_5ValueENS_10StringAttrE.exit ]
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -88
  ret ptr %i.af
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir13sparse_tensor11LoopEmitter24locateLvlAtAffineAddressERNS_9OpBuilderENS_8LocationEjNS_10AffineExprE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !162
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  %i.j = add i32 %i.i, 1                          ; 3 uses
  %i.k = urem i32 %3, %i.j                        ; 2 uses
  %i.l = udiv i32 %3, %i.j
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.l to i64 ; 4 uses
  %i.m = icmp ugt i32 %i.j, %3
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br i1 %i.m, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !150
  %.pre23 = zext i32 %i.k to i64                  ; 2 uses
  %.phi.trans.insert24 = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %.pre23
  %.pre25 = load ptr, ptr %.phi.trans.insert24, align 8, !tbaa !154
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = zext i32 %i.k to i64                     ; 2 uses
  %i.o = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !150
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !154  ; 2 uses
  %i.r = getelementptr [24 x i8], ptr %i.q, i64 %.sroa.2.0.insert.ext.i.i
  %i.s = getelementptr i8, ptr %i.r, i64 -16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !218
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !160
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.w = phi ptr [ %.pre25, %._crit_edge ], [ %i.q, %bb.b ]
  %.pre-phi = phi i64 [ %.pre23, %._crit_edge ], [ %i.n, %bb.b ] ; 2 uses
  %i.x = phi ptr [ null, %._crit_edge ], [ %i.v, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !165
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %.pre-phi
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !116
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.2.0.insert.ext.i.i ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !167
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !167
  %i.ag = icmp eq ptr %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.sroa.2.0.insert.ext.i.i ; 2 uses
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !218
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -8
  br label %_ZNK4mlir13sparse_tensor11LoopEmitter14getCurIteratorEjm.exit

bb.e:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !163
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %.pre-phi
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !132
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.sroa.2.0.insert.ext.i.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !164
  %i.ar = add i32 %i.aq, -1
  %i.as = zext i32 %i.ar to i64
  %i.at = load ptr, ptr %i.ah, align 8, !tbaa !157
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  br label %_ZNK4mlir13sparse_tensor11LoopEmitter14getCurIteratorEjm.exit

_ZNK4mlir13sparse_tensor11LoopEmitter14getCurIteratorEjm.exit: ; preds = %bb.d, %bb.e
  %.0.in.i = phi ptr [ %i.ak, %bb.d ], [ %i.au, %bb.e ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !160 ; 2 uses
  tail call void @_ZN4mlir13sparse_tensor14SparseIterator7genInitERNS_9OpBuilderENS_8LocationEPKS1_(ptr noundef nonnull align 8 dereferenceable(120) %.0.i, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, ptr noundef %i.x) #20
  %i.av = tail call ptr @_ZN4mlir13sparse_tensor11LoopEmitter9genAffineERNS_9OpBuilderENS_8LocationENS_10AffineExprE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, ptr %4)
  tail call void @_ZN4mlir13sparse_tensor14SparseIterator6locateERNS_9OpBuilderENS_8LocationENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %.0.i, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, ptr %i.av) #20
  ret void
}

declare void @_ZN4mlir13sparse_tensor14SparseIterator7genInitERNS_9OpBuilderENS_8LocationEPKS1_(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir13sparse_tensor11LoopEmitter11exitForLoopERNS_12RewriterBaseENS_8LocationEN4llvm15MutableArrayRefINS_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %2, ptr %3, i64 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %6 = alloca %"class.mlir::sparse_tensor::IterateOp", align 8 ; 5 uses
  %7 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  %8 = alloca %"class.mlir::scf::ForOp", align 8  ; 5 uses
  %9 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  %10 = alloca %"class.mlir::scf::ParallelOp", align 8 ; 9 uses
  %11 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !268
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !86
  %i.e = icmp eq i32 %i.d, 1
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -24 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !275  ; 3 uses
  store ptr %i.g, ptr %6, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %3, i64 %4) #20
  %i.i = load i64, ptr %7, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = call ptr @_ZN4mlir13sparse_tensor7YieldOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr %2, i64 %i.i, i64 %i.k) #20 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !287
  %i.o = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.g) #20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !211
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.n, ptr %i.r, align 8, !tbaa !237
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.q, ptr %i.s, align 8
  %i.t = call i64 @_ZN4mlir13sparse_tensor9IterateOp26getODSResultIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0) #20 ; 3 uses
  %i.u = load ptr, ptr %6, align 8, !tbaa !190
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -16 ; 2 uses
  %i.w = and i64 %i.t, 4294967295                 ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN4mlir13sparse_tensor9IterateOp10getResultsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 noundef %i.w) #20
  br label %_ZN4mlir13sparse_tensor9IterateOp10getResultsEv.exit

_ZN4mlir13sparse_tensor9IterateOp10getResultsEv.exit: ; preds = %bb.b, %bb.c
  %i.z = phi ptr [ %i.y, %bb.c ], [ %i.v, %bb.b ]
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.t, 32
  %i.aa = add i64 %.sroa.5.0.extract.shift.i.i, %i.t
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = sub nsw i64 %i.ab, %i.w                 ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i, label %_ZN4llvm4copyIN4mlir11ResultRangeEPNS1_5ValueEEET0_OT_S5_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4mlir13sparse_tensor9IterateOp10getResultsEv.exit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %3, %_ZN4mlir13sparse_tensor9IterateOp10getResultsEv.exit ] ; 2 uses
  %.sroa.2.08.i.i.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ 0, %_ZN4mlir13sparse_tensor9IterateOp10getResultsEv.exit ] ; 2 uses
  %i.ae = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 noundef %.sroa.2.08.i.i.i.i.i.i) #20
  store ptr %i.ae, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !109
  %i.af = add nuw nsw i64 %.sroa.2.08.i.i.i.i.i.i, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %exitcond.not.i = icmp eq i64 %i.af, %i.ac
  br i1 %exitcond.not.i, label %_ZN4llvm4copyIN4mlir11ResultRangeEPNS1_5ValueEEET0_OT_S5_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !13

_ZN4llvm4copyIN4mlir11ResultRangeEPNS1_5ValueEEET0_OT_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN4mlir13sparse_tensor9IterateOp10getResultsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !275 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !184
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !186
  %i.al = icmp eq ptr %i.ak, @_ZN4mlir6detail14TypeIDResolverINS_3scf5ForOpEvE2idE
  %spec.select.i.i = select i1 %i.al, ptr %i.ah, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %8, align 8
  %.not = icmp eq ptr %spec.select.i.i, null
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = icmp eq i64 %4, 0
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %3, i64 %4) #20
  %i.ao = load i64, ptr %9, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = call ptr @_ZN4mlir3scf7YieldOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr %2, i64 %i.ao, i64 %i.aq) #20 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !287
  %i.au = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.ah) #20
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !211
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.at, ptr %i.ax, align 8, !tbaa !237
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.aw, ptr %i.ay, align 8
  %i.az = call i64 @_ZN4mlir3scf5ForOp26getODSResultIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0) #20 ; 3 uses
  %i.ba = load ptr, ptr %8, align 8, !tbaa !190
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -16 ; 2 uses
  %i.bc = and i64 %i.az, 4294967295               ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_ZN4mlir3scf5ForOp10getResultsEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 noundef %i.bc) #20
  br label %_ZN4mlir3scf5ForOp10getResultsEv.exit

_ZN4mlir3scf5ForOp10getResultsEv.exit:            ; preds = %bb.g, %bb.h
  %i.bf = phi ptr [ %i.be, %bb.h ], [ %i.bb, %bb.g ]
  %.sroa.5.0.extract.shift.i.i42 = lshr i64 %i.az, 32
  %i.bg = add i64 %.sroa.5.0.extract.shift.i.i42, %i.az
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = sub nsw i64 %i.bh, %i.bc                ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.i46, label %_ZN4llvm4copyIN4mlir11ResultRangeEPNS1_5ValueEEET0_OT_S5_.exit50

.lr.ph.i.i.i.i.i.i46:                             ; preds = %_ZN4mlir3scf5ForOp10getResultsEv.exit, %.lr.ph.i.i.i.i.i.i46
  %.010.i.i.i.i.i.i47 = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i46 ], [ %3, %_ZN4mlir3scf5ForOp10getResultsEv.exit ] ; 2 uses
  %.sroa.2.08.i.i.i.i.i.i48 = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i.i46 ], [ 0, %_ZN4mlir3scf5ForOp10getResultsEv.exit ] ; 2 uses
  %i.bk = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 noundef %.sroa.2.08.i.i.i.i.i.i48) #20
  store ptr %i.bk, ptr %.010.i.i.i.i.i.i47, align 8, !tbaa !109
  %i.bl = add nuw nsw i64 %.sroa.2.08.i.i.i.i.i.i48, 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i47, i64 8
  %exitcond.not.i49 = icmp eq i64 %i.bl, %i.bi
  br i1 %exitcond.not.i49, label %_ZN4llvm4copyIN4mlir11ResultRangeEPNS1_5ValueEEET0_OT_S5_.exit50, label %.lr.ph.i.i.i.i.i.i46, !llvm.loop !13

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store ptr %i.ah, ptr %10, align 8
  %i.bn = icmp eq i64 %4, 0
  br i1 %i.bn, label %bb.k, label %_ZN4mlir3scf10ParallelOp11getInitValsEv.exit

_ZN4mlir3scf10ParallelOp11getInitValsEv.exit:     ; preds = %bb.i
  %i.bo = tail call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20 ; 5 uses
  %i.bp = call i64 @_ZN4mlir3scf10ParallelOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 3) #20
  %i.bq = load ptr, ptr %10, align 8, !tbaa !190
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !194
  %i.bt = and i64 %i.bp, 4294967295
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.bv, align 8, !tbaa !109 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store ptr null, ptr %11, align 8, !tbaa !89
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !194 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.by, align 8, !tbaa !109 ; 2 uses
  %i.bz = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %.sroa.0.0.copyload.i.i54 = load ptr, ptr %i.ca, align 8, !tbaa !109 ; 2 uses
  br i1 %i.bz, label %_ZN4mlir3scf8ReduceOp13getReductionsEv.exit.sink.split, label %bb.j

bb.j:                                             ; preds = %_ZN4mlir3scf10ParallelOp11getInitValsEv.exit
  %i.cb = icmp eq ptr %.sroa.0.0.copyload.i.i54, %.sroa.0.0.copyload.i.i.i.i
  br i1 %i.cb, label %_ZN4mlir3scf8ReduceOp13getReductionsEv.exit.sink.split, label %_ZN4mlir3scf8ReduceOp13getReductionsEv.exit

_ZN4mlir3scf8ReduceOp13getReductionsEv.exit.sink.split: ; preds = %bb.j, %_ZN4mlir3scf10ParallelOp11getInitValsEv.exit
  %.sroa.0.0.copyload.i.i.sink = phi ptr [ %.sroa.0.0.copyload.i.i54, %_ZN4mlir3scf10ParallelOp11getInitValsEv.exit ], [ %.sroa.0.0.copyload.i.i, %bb.j ]
  store ptr %.sroa.0.0.copyload.i.i.sink, ptr %11, align 8, !tbaa !109
  br label %_ZN4mlir3scf8ReduceOp13getReductionsEv.exit

_ZN4mlir3scf8ReduceOp13getReductionsEv.exit:      ; preds = %_ZN4mlir3scf8ReduceOp13getReductionsEv.exit.sink.split, %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !287
  %i.cf = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.bo) #20
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !211
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr %i.ce, ptr %i.ci, align 8, !tbaa !237
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr %i.ch, ptr %i.cj, align 8
  %i.ck = ptrtoint ptr %11 to i64
  %i.cl = call ptr @_ZN4mlir3scf8ReduceOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr %2, i64 %i.ck, i64 1) #20 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 44
  %i.cn = load i32, ptr %i.cm, align 4            ; 3 uses
  %i.co = and i32 %i.cn, 8388607
  %i.cp = icmp ne i32 %i.co, 0
  call void @llvm.assume(i1 %i.cp)
  %i.cq = lshr i32 %i.cn, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.cq, 1
  %i.cr = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.cr
  %i.ct = lshr i32 %i.cn, 21
  %i.cu = and i32 %i.ct, 2040
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !210
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !211 ; 4 uses
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 32 ; 2 uses
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !237
  store ptr %i.de, ptr %i.cj, align 8
  %i.df = call noundef ptr @_ZN4mlir9OpBuilder5cloneERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(64) %i.bo) #20 ; 4 uses
  %i.dg = load ptr, ptr %1, align 8, !tbaa !99
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %i.df) #20, !inline_history !493
  %i.dj = getelementptr i8, ptr %i.dc, i64 48
  %.val4.val.val.i = load ptr, ptr %i.dj, align 8, !tbaa !240 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dc, i64 56
  %.val4.val.val5.i = load ptr, ptr %i.dk, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.dl = ptrtoint ptr %.val4.val.val5.i to i64
  %i.dm = ptrtoint ptr %.val4.val.val.i to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = ashr exact i64 %i.dn, 3
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %.val4.val.val.i, i64 %i.do) #20
  %i.dp = load i64, ptr %5, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dr = load i64, ptr %i.dq, align 8
  call void @_ZN4mlir9Operation11setOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(64) %i.df, i64 %i.dp, i64 %i.dr) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ds = load ptr, ptr %1, align 8, !tbaa !99
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.df) #20, !inline_history !493
  %i.dv = load ptr, ptr %1, align 8, !tbaa !99
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.bo) #20
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !237
  store ptr %i.de, ptr %i.cj, align 8
  %i.dy = getelementptr inbounds i8, ptr %i.df, i64 -16
  %i.dz = call ptr @_ZN4mlir3scf14ReduceReturnOp6createERNS_9OpBuilderENS_8LocationENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr %2, ptr nonnull %i.dy) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %.pre = load ptr, ptr %10, align 8, !tbaa !190
  br label %bb.k

bb.k:                                             ; preds = %_ZN4mlir3scf8ReduceOp13getReductionsEv.exit, %bb.i
  %i.ea = phi ptr [ %.pre, %_ZN4mlir3scf8ReduceOp13getReductionsEv.exit ], [ %i.ah, %bb.i ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !287
  %i.ed = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.ea) #20
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !211
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.ec, ptr %i.eg, align 8, !tbaa !237
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.ef, ptr %i.eh, align 8
  %i.ei = call i64 @_ZN4mlir3scf10ParallelOp26getODSResultIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 0) #20 ; 2 uses
  %i.ej = and i64 %i.ei, 4294967295               ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %_ZN4mlir3scf10ParallelOp10getResultsEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.el = load ptr, ptr %10, align 8, !tbaa !190
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 -16
  %i.en = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.em, i64 noundef %i.ej) #20 ; 0 uses
  br label %_ZN4mlir3scf10ParallelOp10getResultsEv.exit

_ZN4mlir3scf10ParallelOp10getResultsEv.exit:      ; preds = %bb.k, %bb.l
  %.sroa.5.0.extract.shift.i.i60 = lshr i64 %i.ei, 32 ; 9 uses
  %.not89 = icmp eq i64 %.sroa.5.0.extract.shift.i.i60, 0
  br i1 %.not89, label %._crit_edge, label %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseINS_3scf10ParallelOpENS0_15VariadicResultsEE9getResultEj.exit.peel

_ZN4mlir7OpTrait6detail20MultiResultTraitBaseINS_3scf10ParallelOpENS0_15VariadicResultsEE9getResultEj.exit.peel: ; preds = %_ZN4mlir3scf10ParallelOp10getResultsEv.exit
  %i.eo = load ptr, ptr %10, align 8, !tbaa !190  ; 6 uses
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -96 ; 4 uses
  %i.eq = getelementptr inbounds i8, ptr %i.eo, i64 -16
  store ptr %i.eq, ptr %3, align 8, !tbaa !109
  %exitcond.peel.not = icmp eq i64 %.sroa.5.0.extract.shift.i.i60, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseINS_3scf10ParallelOpENS0_15VariadicResultsEE9getResultEj.exit.peel92

end_hunk_2
begin_hunk_3_@_ZN4mlir13sparse_tensor11LoopEmitter13exitWhileLoopERNS_9OpBuilderENS_8LocationEN4llvm15MutableArrayRefINS_5ValueEEE:bb.a
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -16 ; 2 uses
  %i.fa = load i32, ptr %i.j, align 8, !tbaa !181 ; 2 uses
  %i.fb = load i32, ptr %i.k, align 4, !tbaa !182
  %.not.i84 = icmp ult i32 %i.fa, %i.fb
  br i1 %.not.i84, label %bb.o, label %bb.n, !prof !219

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr nonnull %i.ez)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit85

bb.o:                                             ; preds = %bb.m
  %i.fc = zext i32 %i.fa to i64
  %i.fd = load ptr, ptr %11, align 8, !tbaa !180
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fc
  store ptr %i.ez, ptr %i.fe, align 1
  %i.ff = load i32, ptr %i.j, align 8, !tbaa !181
  %i.fg = add i32 %i.ff, 1
  store i32 %i.fg, ptr %i.j, align 8, !tbaa !181
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit85

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit85: ; preds = %bb.n, %bb.o
  %i.fh = load ptr, ptr %10, align 8, !tbaa !190  ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 36
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !288
  %i.fk = getelementptr inbounds i8, ptr %i.fh, i64 -16
  %i.fl = zext i32 %i.fj to i64
  %i.fm = add nsw i64 %i.fl, -1
  %i.fn = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, i64 noundef %i.fm) #20
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !221
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -32
  store ptr %i.fn, ptr %i.fq, align 8, !tbaa !109
  %.pre = load i32, ptr %i.j, align 8, !tbaa !181
  br label %bb.p

bb.p:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit85, %._crit_edge150
  %i.fr = phi i32 [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit85 ], [ %i.eh, %._crit_edge150 ] ; 2 uses
  %.not.i88 = icmp eq i32 %i.fr, 0
  br i1 %.not.i88, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fs = load ptr, ptr %11, align 8, !tbaa !180
  %i.ft = zext i32 %i.fr to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr %i.fs, i64 %i.ft) #20
  %i.fu = load i64, ptr %13, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = call ptr @_ZN4mlir3scf7YieldOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, i64 %i.fu, i64 %i.fw) #20 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.fy = load ptr, ptr %10, align 8, !tbaa !190  ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !287
  %i.gb = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.fy) #20
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !211
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ga, ptr %i.ge, align 8, !tbaa !237
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.gd, ptr %i.gf, align 8
  %i.gg = load ptr, ptr %i.c, align 8, !tbaa !180, !noalias !506 ; 2 uses
  %i.gh = load i32, ptr %i.z, align 8, !tbaa !181, !noalias !506 ; 2 uses
  %i.gi = zext i32 %i.gh to i64
  %.idx157 = shl nuw nsw i64 %i.gi, 2
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.idx157
  %.not143151 = icmp eq i32 %i.gh, 0
  br i1 %.not143151, label %._crit_edge155, label %.lr.ph154

.lr.ph154:                                        ; preds = %bb.r
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.t

._crit_edge155:                                   ; preds = %bb.y, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.gp = load ptr, ptr %11, align 8, !tbaa !180  ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.i
  br i1 %i.gq, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge155
  call void @free(ptr noundef %i.gp) #20
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit: ; preds = %._crit_edge155, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  ret void

bb.t:                                             ; preds = %.lr.ph154, %bb.y
  %.sroa.0109.0152 = phi ptr [ %i.gg, %.lr.ph154 ], [ %i.ir, %bb.y ] ; 2 uses
  %i.gr = load i32, ptr %.sroa.0109.0152, align 4, !tbaa !164 ; 2 uses
  %i.gs = load ptr, ptr %i.gl, align 8, !tbaa !162
  %i.gt = load ptr, ptr %i.gk, align 8, !tbaa !104
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = lshr exact i64 %i.gw, 3
  %i.gy = trunc i64 %i.gx to i32
  %i.gz = add i32 %i.gy, 1                        ; 2 uses
  %i.ha = urem i32 %i.gr, %i.gz
  %i.hb = udiv i32 %i.gr, %i.gz
  %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i93 = zext i32 %i.hb to i64 ; 3 uses
  %i.hc = zext i32 %i.ha to i64                   ; 3 uses
  %i.hd = load ptr, ptr %i.gm, align 8, !tbaa !165
  %i.he = getelementptr inbounds nuw [24 x i8], ptr %i.hd, i64 %i.hc
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !116
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %i.hf, i64 %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i93 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !167
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !167
  %i.hk = icmp eq ptr %i.hh, %i.hj
  %i.hl = load ptr, ptr %i.gn, align 8, !tbaa !150
  %i.hm = getelementptr inbounds nuw [24 x i8], ptr %i.hl, i64 %i.hc
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !154
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %i.hn, i64 %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i93 ; 2 uses
  br i1 %i.hk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !218
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 -8
  br label %_ZNK4mlir13sparse_tensor11LoopEmitter14getCurIteratorEjm.exit98

bb.v:                                             ; preds = %bb.t
  %i.hs = load ptr, ptr %i.go, align 8, !tbaa !163
  %i.ht = getelementptr inbounds nuw [24 x i8], ptr %i.hs, i64 %i.hc
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !132
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i93
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !164
  %i.hx = add i32 %i.hw, -1
  %i.hy = zext i32 %i.hx to i64
  %i.hz = load ptr, ptr %i.ho, align 8, !tbaa !157
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.hy
  br label %_ZNK4mlir13sparse_tensor11LoopEmitter14getCurIteratorEjm.exit98

_ZNK4mlir13sparse_tensor11LoopEmitter14getCurIteratorEjm.exit98: ; preds = %bb.u, %bb.v
  %.0.in.i96 = phi ptr [ %i.hr, %bb.u ], [ %i.ia, %bb.v ]
  %.0.i97 = load ptr, ptr %.0.in.i96, align 8, !tbaa !160 ; 3 uses
  %i.ib = load ptr, ptr %.0.i97, align 8, !tbaa !99
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 56
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = call noundef zeroext i1 %i.id(ptr noundef nonnull align 8 dereferenceable(120) %.0.i97) #20
  br i1 %i.ie, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZNK4mlir13sparse_tensor11LoopEmitter14getCurIteratorEjm.exit98
  %i.if = call i64 @_ZN4mlir3scf7WhileOp26getODSResultIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 0) #20 ; 3 uses
  %i.ig = load ptr, ptr %10, align 8, !tbaa !190
  %i.ih = getelementptr inbounds i8, ptr %i.ig, i64 -16 ; 2 uses
  %i.ii = and i64 %i.if, 4294967295               ; 3 uses
  %i.ij = icmp eq i64 %i.ii, 0
  br i1 %i.ij, label %_ZN4mlir3scf7WhileOp10getResultsEv.exit103, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ik = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ih, i64 noundef %i.ii) #20
  br label %_ZN4mlir3scf7WhileOp10getResultsEv.exit103

_ZN4mlir3scf7WhileOp10getResultsEv.exit103:       ; preds = %bb.w, %bb.x
  %i.il = phi ptr [ %i.ik, %bb.x ], [ %i.ih, %bb.w ]
  %.sroa.5.0.extract.shift.i.i100 = lshr i64 %i.if, 32
  %i.im = add i64 %.sroa.5.0.extract.shift.i.i100, %i.if
  %i.in = and i64 %i.im, 4294967295
  %i.io = xor i64 %i.ii, -1
  %i.ip = add nsw i64 %i.in, %i.io
  %i.iq = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.il, i64 noundef %i.ip) #20
  call void @_ZN4mlir13sparse_tensor14SparseIterator6locateERNS_9OpBuilderENS_8LocationENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %.0.i97, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, ptr %i.iq) #20
  br label %bb.y

bb.y:                                             ; preds = %_ZN4mlir3scf7WhileOp10getResultsEv.exit103, %_ZNK4mlir13sparse_tensor11LoopEmitter14getCurIteratorEjm.exit98
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0109.0152, i64 4 ; 2 uses
  %.not143 = icmp eq ptr %i.ir, %i.gj
  br i1 %.not143, label %._crit_edge155, label %bb.t
}

declare void @_ZN4mlir10ValueRangeC1ENS_11ResultRangeE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #3

declare ptr @_ZN4mlir5arith6CmpIOp6createERNS_9OpBuilderENS_8LocationENS0_13CmpIPredicateENS_5ValueES6_(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64 noundef, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir13sparse_tensor11LoopEmitter15exitCurrentLoopERNS_12RewriterBaseENS_8LocationEN4llvm15MutableArrayRefINS_5ValueEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %2, ptr %3, i64 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !268  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !86
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !275  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !184
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !186
  %i.k = icmp eq ptr %i.j, @_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor9IterateOpEvE2idE
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %3, i64 %4) #20
  %i.m = load i64, ptr %5, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = call ptr @_ZN4mlir13sparse_tensor7YieldOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr %2, i64 %i.m, i64 %i.o) #20 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !287
  %i.s = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.g) #20
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !211
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.r, ptr %i.v, align 8, !tbaa !237
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.u, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !288  ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.g, i64 -16
  %i.aa = zext i32 %i.y to i64
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %_ZN4llvm4copyIN4mlir11ResultRangeEPNS1_5ValueEEET0_OT_S5_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %3, %bb.d ] ; 2 uses
  %.sroa.2.08.i.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.ab = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 noundef %.sroa.2.08.i.i.i.i.i.i) #20
  store ptr %i.ab, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !109
  %i.ac = add nuw nsw i64 %.sroa.2.08.i.i.i.i.i.i, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %exitcond.not.i = icmp eq i64 %i.ac, %i.aa
  br i1 %exitcond.not.i, label %_ZN4llvm4copyIN4mlir11ResultRangeEPNS1_5ValueEEET0_OT_S5_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !13

_ZN4llvm4copyIN4mlir11ResultRangeEPNS1_5ValueEEET0_OT_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !178 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -88 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !178
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !180 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -72
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt6vectorIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE8pop_backEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm4copyIN4mlir11ResultRangeEPNS1_5ValueEEET0_OT_S5_.exit
  call void @free(ptr noundef %i.ag) #20
  br label %_ZNSt6vectorIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE8pop_backEv.exit

bb.f:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !282 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.al, ptr %i.an, align 8, !tbaa !237
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !282
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !276 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.ar) #20
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i17 = load ptr, ptr %i.au, align 8, !tbaa !184
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i17, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !186
  %i.ax = icmp eq ptr %i.aw, @_ZN4mlir6detail14TypeIDResolverINS_3scf7YieldOpEvE2idE
  br i1 %i.ax, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !282
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !276
  %i.bb = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.ba) #20 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !287
  %i.be = tail call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.bb) #20
  store ptr %i.bd, ptr %i.an, align 8, !tbaa !237
  store ptr %i.be, ptr %i.ao, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.h, %bb.g
  %i.bf = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !281
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i18 = load ptr, ptr %i.bh, align 8, !tbaa !184
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i18, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !186
  %i.bk = icmp eq ptr %i.bj, @_ZN4mlir6detail14TypeIDResolverINS_3scf7WhileOpEvE2idE
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge
  tail call void @_ZN4mlir13sparse_tensor11LoopEmitter13exitWhileLoopERNS_9OpBuilderENS_8LocationEN4llvm15MutableArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr %2, ptr %3, i64 %4)
  br label %bb.k

bb.j:                                             ; preds = %.critedge
  tail call void @_ZN4mlir13sparse_tensor11LoopEmitter11exitForLoopERNS_12RewriterBaseENS_8LocationEN4llvm15MutableArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %2, ptr %3, i64 %4)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !178 ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -88 ; 2 uses
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !178
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !180 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 -72
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt6vectorIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE8pop_backEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef %i.bn) #20
  br label %_ZNSt6vectorIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE8pop_backEv.exit

_ZNSt6vectorIN4mlir13sparse_tensor11LoopEmitter8LoopInfoESaIS3_EE8pop_backEv.exit: ; preds = %bb.l, %bb.k, %bb.e, %_ZN4llvm4copyIN4mlir11ResultRangeEPNS1_5ValueEEET0_OT_S5_.exit
  ret void
}

declare void @_ZNK4mlir10ValueRange8getTypesEv(ptr dead_on_unwind writable sret(%"class.mlir::ValueTypeRange.862") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare ptr @_ZN4mlir3scf7WhileOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, i64, i64, ptr noundef byval(%"class.llvm::ArrayRef.868") align 8) local_unnamed_addr #3

declare noundef ptr @_ZN4mlir9OpBuilder11createBlockEPNS_6RegionEN4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEENS_9TypeRangeENS3_8ArrayRefINS_8LocationEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr, i64, i64, ptr noundef byval(%"class.llvm::ArrayRef.552") align 8) local_unnamed_addr #3

declare ptr @_ZN4mlir5arith6AndIOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr) local_unnamed_addr #3

declare ptr @_ZN4mlir3scf11ConditionOp6createERNS_9OpBuilderENS_8LocationENS_5ValueENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, i64, i64) local_unnamed_addr #3

declare ptr @_ZN4mlir5arith8SelectOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr) local_unnamed_addr #3

declare { ptr, i64 } @_ZN4mlir3scf7WhileOp17getAfterArgumentsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZN4mlir13sparse_tensor23getSparseTensorEncodingENS_4TypeE(ptr) local_unnamed_addr #3

declare noundef i64 @_ZNK4mlir13sparse_tensor24SparseTensorEncodingAttr10getLvlRankEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4mlir13sparse_tensor24SparseTensorEncodingAttr10isIdentityEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZNK4mlir13sparse_tensor24SparseTensorEncodingAttr11getDimToLvlEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZNK4mlir13sparse_tensor24SparseTensorEncodingAttr11getLvlToDimEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @_ZNK4mlir16RankedTensorType11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef ptr @_ZN4mlir5Block13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL13isIntOrFPZeroN4mlir9AttributeE(ptr %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.mlir::FloatAttr", align 8   ; 5 uses
  %2 = alloca %"class.llvm::APFloat", align 8     ; 7 uses
  %3 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = load ptr, ptr %0, align 8, !tbaa !509
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !137 ; 2 uses
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_9FloatAttrEvE2idE ; 2 uses
  %spec.select.i.i = select i1 %i.c, ptr %0, ptr null
  store ptr %spec.select.i.i, ptr %1, align 8
  br i1 %i.c, label %.critedge, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.b

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNK4mlir9FloatAttr8getValueEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APFloat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %i.d = load ptr, ptr %2, align 8, !tbaa !279
  %.not.i.i.i = icmp eq ptr %i.d, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %.0.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i.i, ptr %i.f, ptr %2
  %.0.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.0.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 20
  %i.g = load i8, ptr %.0.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.h = and i8 %i.g, 7
  %.not = icmp eq i8 %i.h, 3
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.not, label %bb.e, label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge
  %.pre = load ptr, ptr %0, align 8, !tbaa !509
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i9.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !137
  br label %bb.b

bb.b:                                             ; preds = %.critedge._crit_edge, %.critedge.thread
  %.sroa.0.0.copyload.i.i.i.i.i.i9 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.i9.pre, %.critedge._crit_edge ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %.critedge.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i9, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE ; 2 uses
  %spec.select.i.i10 = select i1 %i.i, ptr %0, ptr null
  store ptr %spec.select.i.i10, ptr %3, align 8
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !278  ; 2 uses
  %i.m = icmp ult i32 %i.l, 65
  br i1 %i.m, label %.split, label %_ZNK4llvm5APInt6isZeroEv.exit

.split:                                           ; preds = %bb.c
  %i.n = load i64, ptr %i.j, align 8, !tbaa !279
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.sink.split, label %bb.d

_ZNK4llvm5APInt6isZeroEv.exit:                    ; preds = %bb.c
  %i.p = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.j) #25
  %i.q = icmp eq i32 %i.p, %i.l
  br i1 %i.q, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %.split, %_ZNK4llvm5APInt6isZeroEv.exit, %bb.b
  br label %.sink.split

.sink.split:                                      ; preds = %.split, %_ZNK4llvm5APInt6isZeroEv.exit, %bb.d
  %.2.ph = phi i1 [ false, %bb.d ], [ true, %_ZNK4llvm5APInt6isZeroEv.exit ], [ true, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %.critedge
  %.2 = phi i1 [ true, %.critedge ], [ %.2.ph, %.sink.split ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir6detail18constant_op_binderINS_9AttributeEE5matchEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.1032", align 8 ; 8 uses
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit, !prof !511

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 49), i64 34) #20
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit

_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !137
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !512  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr %.sroa.01.0.copyload.i.i.i.i.i) #20, !inline_history !510
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !180
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.l, align 8, !tbaa !181
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 1, ptr %i.m, align 4, !tbaa !182
  %i.n = call i8 @_ZN4mlir9Operation4foldEN4llvm8ArrayRefINS_9AttributeEEERNS1_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(16) %2) #20 ; 0 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !180    ; 3 uses
  %.0.copyload.i.i.i.i = load i64, ptr %i.o, align 8
  %i.p = and i64 %.0.copyload.i.i.i.i, -5         ; 2 uses
  %i.q = icmp ne i64 %i.p, 0                      ; 2 uses
  br i1 %i.q, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %0, align 8, !tbaa !514    ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.p, ptr %i.r, align 8, !tbaa !213
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.f, %bb.e
  %i.s = icmp eq ptr %i.o, %i.k
  br i1 %i.s, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj1EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  call void @free(ptr noundef nonnull %i.o) #20
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj1EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj1EED2Ev.exit: ; preds = %.critedge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
end_hunk_3
