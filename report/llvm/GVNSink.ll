Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GVNSink?download=true
inline.NumInlined: 3600
inline.NumDeleted: 1882
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
%"class.(anonymous namespace)::GVNSink" = type { %"class.(anonymous namespace)::ValueTable", %"class.llvm::DenseMap.21" }
%"class.(anonymous namespace)::ValueTable" = type { %"class.llvm::DenseMap", %"class.llvm::DenseMap.3", %"class.llvm::DenseMap.5", %"class.llvm::BumpPtrAllocatorImpl", %"class.llvm::ArrayRecycler", i32, %"class.llvm::SmallPtrSet.18" }
%"class.llvm::DenseMap" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseMap.3" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseMap.5" = type { ptr, ptr, i32, i32 }
%"class.llvm::BumpPtrAllocatorImpl" = type { ptr, i64, %"class.llvm::SmallVector", %"class.llvm::SmallVector.8" }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage" = type { [32 x i8] }
%"class.llvm::SmallVector.8" = type { %"class.llvm::SmallVectorImpl.9" }
%"class.llvm::SmallVectorImpl.9" = type { %"class.llvm::SmallVectorTemplateBase.10" }
%"class.llvm::SmallVectorTemplateBase.10" = type { %"class.llvm::SmallVectorTemplateCommon.11" }
%"class.llvm::SmallVectorTemplateCommon.11" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::ArrayRecycler" = type { %"class.llvm::SmallVector.13" }
%"class.llvm::SmallVector.13" = type { %"class.llvm::SmallVectorImpl.14", %"struct.llvm::SmallVectorStorage.17" }
%"class.llvm::SmallVectorImpl.14" = type { %"class.llvm::SmallVectorTemplateBase.15" }
%"class.llvm::SmallVectorTemplateBase.15" = type { %"class.llvm::SmallVectorTemplateCommon.16" }
%"class.llvm::SmallVectorTemplateCommon.16" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.17" = type { [64 x i8] }
%"class.llvm::DenseMap.21" = type { ptr, ptr, i32, i32 }
%"class.llvm::SmallVector.91" = type { %"class.llvm::SmallVectorImpl.92", %"struct.llvm::SmallVectorStorage.95" }
%"class.llvm::SmallVectorImpl.92" = type { %"class.llvm::SmallVectorTemplateBase.93" }
%"class.llvm::SmallVectorTemplateBase.93" = type { %"class.llvm::SmallVectorTemplateCommon.94" }
%"class.llvm::SmallVectorTemplateCommon.94" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.95" = type { [32 x i8] }
%"class.llvm::SmallVector.147" = type { %"class.llvm::SmallVectorImpl.148", %"struct.llvm::SmallVectorStorage.151" }
%"class.llvm::SmallVectorImpl.148" = type { %"class.llvm::SmallVectorTemplateBase.149" }
%"class.llvm::SmallVectorTemplateBase.149" = type { %"class.llvm::SmallVectorTemplateCommon.150" }
%"class.llvm::SmallVectorTemplateCommon.150" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.151" = type { [32 x i8] }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.llvm::DenseMap.185" = type { ptr, ptr, i32, i32 }
%"class.llvm::SetVector.101" = type { %"class.llvm::DenseSet.102", %"class.llvm::SmallVector.106" }
%"class.llvm::DenseSet.102" = type { %"class.llvm::detail::DenseSetImpl.103" }
%"class.llvm::detail::DenseSetImpl.103" = type { %"class.llvm::DenseMap.104" }
%"class.llvm::DenseMap.104" = type { ptr, ptr, i32, i32 }
%"class.llvm::SmallVector.106" = type { %"class.llvm::SmallVectorImpl.107" }
%"class.llvm::SmallVectorImpl.107" = type { %"class.llvm::SmallVectorTemplateBase.108" }
%"class.llvm::SmallVectorTemplateBase.108" = type { %"class.llvm::SmallVectorTemplateCommon.109" }
%"class.llvm::SmallVectorTemplateCommon.109" = type { %"class.llvm::SmallVectorBase" }
%"class.(anonymous namespace)::ModelledPHI" = type { %"class.llvm::SmallVector.147", %"class.llvm::SmallVector.82" }
%"class.llvm::SmallVector.82" = type { %"class.llvm::SmallVectorImpl.28", %"struct.llvm::SmallVectorStorage.83" }
%"struct.llvm::SmallVectorStorage.83" = type { [32 x i8] }
%"struct.(anonymous namespace)::SinkingInstructionCandidate" = type { i32, i32, i32, i32, i32, %"class.llvm::SmallVector.82" }
%"class.llvm::SmallVector.153" = type { %"class.llvm::SmallVectorImpl.154", %"struct.llvm::SmallVectorStorage.157" }
%"class.llvm::SmallVectorImpl.154" = type { %"class.llvm::SmallVectorTemplateBase.155" }
%"class.llvm::SmallVectorTemplateBase.155" = type { %"class.llvm::SmallVectorTemplateCommon.156" }
%"class.llvm::SmallVectorTemplateCommon.156" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.157" = type { [64 x i8] }
%"class.llvm::LockstepReverseIterator" = type <{ %"struct.llvm::ActiveBlocksOption", %"class.llvm::ArrayRef", %"class.llvm::SmallVector.91", i8, [7 x i8] }>
%"struct.llvm::ActiveBlocksOption" = type { %"class.llvm::SmallSetVector" }
%"class.llvm::SmallSetVector" = type { %"class.llvm::SetVector" }
%"class.llvm::SetVector" = type { %"class.llvm::DenseSet", %"class.llvm::SmallVector.82" }
%"class.llvm::DenseSet" = type { %"class.llvm::detail::DenseSetImpl" }
%"class.llvm::detail::DenseSetImpl" = type { %"class.llvm::DenseMap.89" }
%"class.llvm::DenseMap.89" = type { ptr, ptr, i32, i32 }
%"class.llvm::ArrayRef" = type { ptr, i64 }
%"class.llvm::SmallVector.96" = type { %"class.llvm::SmallVectorImpl.97", %"struct.llvm::SmallVectorStorage.100" }
%"class.llvm::SmallVectorImpl.97" = type { %"class.llvm::SmallVectorTemplateBase.98" }
%"class.llvm::SmallVectorTemplateBase.98" = type { %"class.llvm::SmallVectorTemplateCommon.99" }
%"class.llvm::SmallVectorTemplateCommon.99" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.100" = type { [288 x i8] }
%"class.llvm::SmallPtrSet.111" = type { %"class.llvm::SmallPtrSetImpl.base.113", [4 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.113" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.std::optional.114" = type { %"struct.std::_Optional_base.115" }
%"struct.std::_Optional_base.115" = type { %"struct.std::_Optional_payload.117" }
%"struct.std::_Optional_payload.117" = type { %"struct.std::_Optional_payload.base.121", [7 x i8] }
%"struct.std::_Optional_payload.base.121" = type { %"struct.std::_Optional_payload_base.base.120" }
%"struct.std::_Optional_payload_base.base.120" = type <{ %"union.std::_Optional_payload_base<(anonymous namespace)::SinkingInstructionCandidate>::_Storage", i8 }>
%"union.std::_Optional_payload_base<(anonymous namespace)::SinkingInstructionCandidate>::_Storage" = type { %"struct.(anonymous namespace)::SinkingInstructionCandidate" }
%"class.llvm::PostOrderTraversal" = type { %"class.llvm::PostOrderTraversalBase", %"class.llvm::po_detail::NumberSet" }
%"class.llvm::PostOrderTraversalBase" = type { %"class.llvm::SmallVector.33" }
%"class.llvm::SmallVector.33" = type { %"class.llvm::SmallVectorImpl.34", %"struct.llvm::SmallVectorStorage.37" }
%"class.llvm::SmallVectorImpl.34" = type { %"class.llvm::SmallVectorTemplateBase.35" }
%"class.llvm::SmallVectorTemplateBase.35" = type { %"class.llvm::SmallVectorTemplateCommon.36" }
%"class.llvm::SmallVectorTemplateCommon.36" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.37" = type { [192 x i8] }
%"class.llvm::po_detail::NumberSet" = type { %"class.llvm::SmallVector.38" }
%"class.llvm::SmallVector.38" = type { %"class.llvm::SmallVectorImpl.39", %"struct.llvm::SmallVectorStorage.43" }
%"class.llvm::SmallVectorImpl.39" = type { %"class.llvm::SmallVectorTemplateBase.40" }
%"class.llvm::SmallVectorTemplateBase.40" = type { %"class.llvm::SmallVectorTemplateCommon.41" }
%"class.llvm::SmallVectorTemplateCommon.41" = type { %"class.llvm::SmallVectorBase.42" }
%"class.llvm::SmallVectorBase.42" = type { ptr, i64, i64 }
%"struct.llvm::SmallVectorStorage.43" = type { [40 x i8] }
%"class.llvm::iterator_range" = type { %"struct.llvm::Instruction::succ_iterator", %"struct.llvm::Instruction::succ_iterator" }
%"struct.llvm::Instruction::succ_iterator" = type { %"class.llvm::iterator_adaptor_base" }
%"class.llvm::iterator_adaptor_base" = type { ptr }
%"struct.llvm::PostOrderTraversalBase<llvm::PostOrderTraversal<llvm::Function *>, llvm::GraphTraits<Function *>>::StackEntry" = type { ptr, %"struct.llvm::Instruction::succ_iterator", %"struct.llvm::Instruction::succ_iterator" }
%class.anon.143 = type { i8 }
%"struct.std::array.237" = type { [25 x i8] }
%"struct.std::array.238" = type { [12 x i8] }
%"struct.std::array" = type { [21 x i8] }
%"struct.std::array.227" = type { [24 x i8] }

$_ZN4llvm25ReversePostOrderTraversalIPNS_8FunctionENS_11GraphTraitsIS2_EEE10InitializeERKS2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_8FunctionENS_9po_detail9NumberSetIPNS_10BasicBlockEEEEENS_11GraphTraitsIS3_EEE13traverseChildEv = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_8FunctionENS_9po_detail9NumberSetIPNS_10BasicBlockEEEEENS_11GraphTraitsIS4_EEE10StackEntryELb1EE18growAndEmplaceBackIJRS8_NS_14iterator_rangeINS_11Instruction13succ_iteratorEEEEEERSE_DpOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_8FunctionENS_9po_detail9NumberSetIPNS_10BasicBlockEEEEENS_11GraphTraitsIS4_EEE10StackEntryELb1EE15growAndPushBackERKSE_ = comdat any

$_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_8FunctionENS_9po_detail9NumberSetIPNS_10BasicBlockEEEEENS_11GraphTraitsIS3_EEE4initES7_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ = comdat any

$_ZN4llvm23LockstepReverseIteratorILb0EEmmEv = comdat any

$_ZN4llvm23LockstepReverseIteratorILb0EE5resetEv = comdat any

$_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EE6removeERKS2_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16shrink_and_clearEv = comdat any

$_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EE6insertERKS2_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E21eraseFromFilledBucketIZNSB_21eraseFromFilledBucketEPS9_EUlRS9_E_EEvSD_OT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_10BasicBlockEPNS_5ValueEELb1EE15growAndPushBackES6_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm15SmallVectorImplIPNS_5ValueEEaSEOS3_ = comdat any

$_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEEaSEOS3_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ = comdat any

$_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_ = comdat any

$_ZNK4llvm13GVNExpression15BasicExpression6equalsERKNS0_10ExpressionE = comdat any

$_ZNK4llvm13GVNExpression10Expression13exactlyEqualsERKS1_ = comdat any

$_ZNK4llvm13GVNExpression15BasicExpression13printInternalERNS_11raw_ostreamEb = comdat any

$_ZN4llvm25array_pod_sort_comparatorIPNS_5ValueEEEiPKvS4_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GVNExpression10ExpressionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPS9_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GVNExpression10ExpressionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GVNExpression10ExpressionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GVNExpression10ExpressionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E24lookupOrInsertIntoBucketImJRjEEESt4pairIPS6_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E15LookupBucketForImEEbRKT_RPS6_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E8moveFromERS7_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS6_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ = comdat any

$_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EE8containsEPKS1_ = comdat any

$_ZN4llvm15SmallVectorImplIPNS_5ValueEE6insertIPPNS_11InstructionEvEEPS2_S8_T_S9_ = comdat any

$_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE6insertIPKS2_vEEPS2_S7_T_S8_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c".gvnsink.split\00", align 1
@_ZTVN12_GLOBAL__N_118InstructionUseExprE = internal unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr null, ptr @_ZN4llvm13GVNExpression15BasicExpressionD2Ev, ptr @_ZN12_GLOBAL__N_118InstructionUseExprD0Ev, ptr @_ZNK4llvm13GVNExpression15BasicExpression6equalsERKNS0_10ExpressionE, ptr @_ZNK4llvm13GVNExpression10Expression13exactlyEqualsERKS1_, ptr @_ZNK12_GLOBAL__N_118InstructionUseExpr12getHashValueEv, ptr @_ZNK4llvm13GVNExpression15BasicExpression13printInternalERNS_11raw_ostreamEb] }, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"ExpressionTypeBasic, \00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"operands = {\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"] = \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"} \00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"opcode = \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c", \00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c".sink\00", align 1
@_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE = external global %"struct.llvm::AnalysisSetKey", align 8

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_ZNK4llvm13GVNExpression10Expression4dumpEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() #20 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 2
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.1, i64 noundef 2) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.c:                                             ; preds = %bb.a
  store i16 8315, ptr %i.e, align 1
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store ptr %i.l, ptr %i.d, align 8, !tbaa !33
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.c, %bb.b
  %i.m = load ptr, ptr %0, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i1 noundef zeroext true) #20, !inline_history !226
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.s = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.2, i64 noundef 1) #20 ; 0 uses
  br label %_ZNK4llvm13GVNExpression10Expression5printERNS_11raw_ostreamE.exit

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  store i8 125, ptr %i.q, align 1
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.u, ptr %i.d, align 8, !tbaa !33
  br label %_ZNK4llvm13GVNExpression10Expression5printERNS_11raw_ostreamE.exit

_ZNK4llvm13GVNExpression10Expression5printERNS_11raw_ostreamE.exit: ; preds = %bb.d, %bb.e
  %i.v = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() #20 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !33   ; 2 uses
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK4llvm13GVNExpression10Expression5printERNS_11raw_ostreamE.exit
  %i.ab = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull @.str, i64 noundef 1) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %_ZNK4llvm13GVNExpression10Expression5printERNS_11raw_ostreamE.exit
  store i8 10, ptr %i.z, align 1
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !33
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.f, %bb.g
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm11GVNSinkPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(72) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.llvm::ReversePostOrderTraversal", align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.llvm::SmallPtrSet.18", align 8 ; 11 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.(anonymous namespace)::GVNSink", align 8 ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %6, i8 0, i64 88, i1 false)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 100
  store i32 4, ptr %i.f, align 4, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 4 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  store i32 0, ptr %i.i, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 148
  store i32 0, ptr %i.j, align 4, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  store ptr %i.k, ptr %i.h, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 160
  store i32 0, ptr %i.l, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 164
  store i32 8, ptr %i.m, align 4, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 232
  store i32 1, ptr %i.n, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 240 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 264 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 248
  store i32 32, ptr %i.q, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 252
  store i32 0, ptr %i.r, align 4, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 2 uses
  store i8 1, ptr %i.s, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 520 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr %2, ptr %i.a, align 8, !tbaa !75
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.v, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 8, ptr %i.w, align 4, !tbaa !39
  call void @_ZN4llvm25ReversePostOrderTraversalIPNS_8FunctionENS_11GraphTraitsIS2_EEE10InitializeERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.x = load ptr, ptr %4, align 8, !tbaa !37, !noalias !257 ; 2 uses
  %i.y = load i32, ptr %i.v, align 8, !tbaa !38, !noalias !257 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.z, ptr %5, align 8, !tbaa !70
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 32, ptr %i.aa, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store i32 0, ptr %i.ab, align 4, !tbaa !72
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i8 1, ptr %i.ac, align 8, !tbaa !73
  %.not2.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not2.i.i.i.i, label %_ZN4llvm11SmallPtrSetIPKNS_10BasicBlockELj32EEC2IRNS_25ReversePostOrderTraversalIPNS_8FunctionENS_11GraphTraitsIS8_EEEEEENS_12from_range_tEOT_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.a
  %i.ad = zext i32 %i.y to i64
  %.idx.i.i = shl nuw nsw i64 %i.ad, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE6insertES3_.exit.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.sroa.02.0.i.i.i = phi ptr [ %i.ag, %_ZN4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE6insertES3_.exit.i.i.i.i ], [ %i.ae, %.lr.ph.i.i.preheader.i.i ]
  %i.af = phi i8 [ %i.at, %_ZN4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE6insertES3_.exit.i.i.i.i ], [ 1, %.lr.ph.i.i.preheader.i.i ]
  %i.ag = getelementptr inbounds i8, ptr %.sroa.02.0.i.i.i, i64 -8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !77 ; 3 uses
  %i.ai = trunc nuw i8 %i.af to i1
  br i1 %i.ai, label %bb.b, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aj = load ptr, ptr %5, align 8, !tbaa !70, !noalias !258 ; 2 uses
  %i.ak = load i32, ptr %i.ab, align 4, !tbaa !72, !noalias !258 ; 4 uses
  %i.al = zext i32 %i.ak to i64
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.al, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i.i.i.i.i ; 2 uses
  %.not22.i.i.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not22.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.critedge.i.i.i.i.i.i
  %.023.i.i.i.i.i.i = phi ptr [ %i.ao, %.critedge.i.i.i.i.i.i ], [ %i.aj, %bb.b ] ; 2 uses
  %i.an = load ptr, ptr %.023.i.i.i.i.i.i, align 8, !tbaa !78, !noalias !258
  %.not15.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ah
  br i1 %.not15.i.i.i.i.i.i, label %_ZN4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE6insertES3_.exit.i.i.i.i, label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.am
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.critedge.i.i.i.i.i.i, %bb.b
  %i.ap = load i32, ptr %i.aa, align 8, !tbaa !71, !noalias !258
  %i.aq = icmp ult i32 %i.ak, %i.ap
  br i1 %i.aq, label %bb.c, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ar = add nuw i32 %i.ak, 1
  store i32 %i.ar, ptr %i.ab, align 4, !tbaa !72, !noalias !258
  store ptr %i.ah, ptr %i.am, align 8, !tbaa !78, !noalias !258
  br label %_ZN4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE6insertES3_.exit.i.i.i.i

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.as = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(280) %5, ptr noundef %i.ah) #20, !noalias !258 ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_110ValueTable11lookupOrAddEPN4llvm5ValueE:bb.a
  %.pre = load i8, ptr %1, align 8, !tbaa !112
  br label %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40

_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40: ; preds = %.lr.ph.i.i, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit._ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40_crit_edge
  %i.bm = phi i8 [ %.pre, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit._ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40_crit_edge ], [ %i.aq, %.lr.ph.i.i ]
  switch i8 %i.bm, label %.thread [
    i8 63, label %bb.j
    i8 64, label %bb.k
    i8 88, label %bb.l
    i8 36, label %bb.l
    i8 43, label %bb.l
    i8 44, label %bb.l
    i8 45, label %bb.l
    i8 46, label %bb.l
    i8 47, label %bb.l
    i8 48, label %bb.l
    i8 49, label %bb.l
    i8 50, label %bb.l
    i8 51, label %bb.l
    i8 52, label %bb.l
    i8 53, label %bb.l
    i8 54, label %bb.l
    i8 55, label %bb.l
    i8 56, label %bb.l
    i8 57, label %bb.l
    i8 58, label %bb.l
    i8 59, label %bb.l
    i8 60, label %bb.l
    i8 61, label %bb.l
    i8 85, label %bb.l
    i8 86, label %bb.l
    i8 69, label %bb.l
    i8 70, label %bb.l
    i8 71, label %bb.l
    i8 72, label %bb.l
    i8 73, label %bb.l
    i8 74, label %bb.l
    i8 75, label %bb.l
    i8 76, label %bb.l
    i8 77, label %bb.l
    i8 78, label %bb.l
    i8 79, label %bb.l
    i8 80, label %bb.l
    i8 81, label %bb.l
    i8 82, label %bb.l
    i8 89, label %bb.l
    i8 93, label %bb.l
    i8 94, label %bb.l
    i8 95, label %bb.l
    i8 97, label %bb.l
    i8 65, label %bb.l
  ]

bb.j:                                             ; preds = %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40
  %i.bn = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_110ValueTable16createMemoryExprIN4llvm8LoadInstEEEPNS_18InstructionUseExprEPT_(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull %1)
  br label %bb.m

bb.k:                                             ; preds = %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40
  %i.bo = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_110ValueTable16createMemoryExprIN4llvm9StoreInstEEEPNS_18InstructionUseExprEPT_(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull %1)
  br label %bb.m

bb.l:                                             ; preds = %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40
  %i.bp = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_110ValueTable10createExprEPN4llvm11InstructionE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.016 = phi ptr [ %i.bp, %bb.l ], [ %i.bn, %bb.j ], [ %i.bo, %bb.k ] ; 11 uses
  %.not = icmp eq ptr %.016, null
  br i1 %.not, label %.thread, label %bb.n

.thread:                                          ; preds = %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread40, %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !69
  %i.bs = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i19 = extractvalue { ptr, i8 } %i.bs, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i19, i64 8
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !82
  %i.bu = load i32, ptr %i.bq, align 8, !tbaa !69 ; 2 uses
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bq, align 8, !tbaa !69
  br label %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr %.016, ptr %i.b, align 8, !tbaa !198
  %i.bx = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GVNExpression10ExpressionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i20 = extractvalue { ptr, i8 } %i.bx, 0
  %i.by = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i20, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !82 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %.not18 = icmp eq i32 %i.bz, 0
  br i1 %.not18, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %.016, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !202
  %i.cc = getelementptr inbounds nuw i8, ptr %.016, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !205
  %i.ce = getelementptr inbounds nuw i8, ptr %.016, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %.016, i64 52
  %i.cg = getelementptr inbounds nuw i8, ptr %.016, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i32 %i.cb, ptr %2, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 4
  store ptr %i.cd, ptr %i.ch, align 4
  %i.ci = load i32, ptr %i.ce, align 8, !tbaa !82
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.ci, ptr %i.cj, align 4
  %i.ck = load i8, ptr %i.cf, align 4, !tbaa !187, !range !79, !noundef !81
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 %i.ck, ptr %i.cl, align 4
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.cg, align 8, !tbaa !195
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.016, i64 64
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !114
  %.idx.i.i.i.i.i = shl nuw nsw i64 %.sroa.2.0.copyload.i.i.i, 2
  %i.cm = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %.sroa.0.0.copyload.i.i.i, i64 noundef %.idx.i.i.i.i.i) #20
  %i.cn = xor i64 %i.cm, -49064778989728563
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i64 %i.cn, ptr %i.co, align 1
  %i.cp = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.cq = getelementptr inbounds nuw i8, ptr %.016, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !206 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.016, i64 36
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !207 ; 2 uses
  %i.cu = zext i32 %i.ct to i64
  %.idx = shl nuw nsw i64 %i.cu, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx
  %.sroa.037.047 = xor i64 %i.cp, -49064778989728563 ; 2 uses
  %.not.i48 = icmp eq i32 %i.ct, 0
  br i1 %.not.i48, label %_ZN12_GLOBAL__N_118InstructionUseExpr12getHashValueIZNS_10ValueTable11lookupOrAddEPN4llvm5ValueEEUlS5_E_EENS3_9hash_codeET_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.037.050 = phi i64 [ %.sroa.037.047, %.lr.ph ], [ %.sroa.037.0, %bb.p ]
  %.0.i49 = phi ptr [ %i.cr, %.lr.ph ], [ %i.da, %bb.p ] ; 2 uses
  %i.cx = load ptr, ptr %.0.i49, align 8, !tbaa !117
  %i.cy = call fastcc noundef i32 @_ZN12_GLOBAL__N_110ValueTable11lookupOrAddEPN4llvm5ValueE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef %i.cx), !inline_history !552
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i64 %.sroa.037.050, ptr %3, align 8
  store i32 %i.cy, ptr %i.cw, align 8
  %i.cz = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i49, i64 8 ; 2 uses
  %.sroa.037.0 = xor i64 %i.cz, -49064778989728563 ; 2 uses
  %.not.i = icmp eq ptr %i.da, %i.cv
  br i1 %.not.i, label %_ZN12_GLOBAL__N_118InstructionUseExpr12getHashValueIZNS_10ValueTable11lookupOrAddEPN4llvm5ValueEEUlS5_E_EENS3_9hash_codeET_.exit, label %bb.p

_ZN12_GLOBAL__N_118InstructionUseExpr12getHashValueIZNS_10ValueTable11lookupOrAddEPN4llvm5ValueEEUlS5_E_EENS3_9hash_codeET_.exit: ; preds = %bb.p, %bb.o
  %.sroa.037.0.lcssa = phi i64 [ %.sroa.037.047, %bb.o ], [ %.sroa.037.0, %bb.p ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %.sroa.037.0.lcssa, ptr %i.c, align 8, !tbaa !114
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.dd = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E24lookupOrInsertIntoBucketImJRjEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.dc), !noalias !559 ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.dd, 0
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.dd, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.de = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %i.df = load i32, ptr %i.de, align 8, !tbaa !561 ; 2 uses
  %i.dg = trunc nuw i8 %.fca.1.extract.i.i to i1
  br i1 %i.dg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN12_GLOBAL__N_118InstructionUseExpr12getHashValueIZNS_10ValueTable11lookupOrAddEPN4llvm5ValueEEUlS5_E_EENS3_9hash_codeET_.exit
  %i.dh = load i32, ptr %i.dc, align 8, !tbaa !69 ; 2 uses
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr %i.dc, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store ptr %.016, ptr %i.d, align 8, !tbaa !198
  %i.dj = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GVNExpression10ExpressionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.fca.0.extract.i21 = extractvalue { ptr, i8 } %i.dj, 0
  %i.dk = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i21, i64 8
  store i32 %i.dh, ptr %i.dk, align 4, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.r

bb.r:                                             ; preds = %_ZN12_GLOBAL__N_118InstructionUseExpr12getHashValueIZNS_10ValueTable11lookupOrAddEPN4llvm5ValueEEUlS5_E_EENS3_9hash_codeET_.exit, %bb.q, %bb.n
  %.015 = phi i32 [ %i.bz, %bb.n ], [ %i.df, %bb.q ], [ %i.df, %_ZN12_GLOBAL__N_118InstructionUseExpr12getHashValueIZNS_10ValueTable11lookupOrAddEPN4llvm5ValueEEUlS5_E_EENS3_9hash_codeET_.exit ] ; 2 uses
  %i.dl = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i22 = extractvalue { ptr, i8 } %i.dl, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i22, i64 8
  store i32 %.015, ptr %i.dm, align 4, !tbaa !82
  br label %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread

_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread: ; preds = %bb.i, %bb.h, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit, %bb.r, %.thread, %bb.f, %bb.d
  %.2 = phi i32 [ %i.ap, %bb.d ], [ %i.aw, %bb.f ], [ -1, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit ], [ %.015, %bb.r ], [ %i.bu, %.thread ], [ -1, %bb.h ], [ -1, %bb.i ]
  ret i32 %.2
}

declare noundef zeroext i1 @_ZN4llvm29canReplaceOperandWithVariableEPKNS_11InstructionEj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_110ValueTable16createMemoryExprIN4llvm8LoadInstEEEPNS_18InstructionUseExprEPT_(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !208
  %i.c = and i16 %i.b, 768
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZNK4llvm11Instruction8isAtomicEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #21
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_110ValueTable10createExprEPN4llvm11InstructionE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull %1) ; 2 uses
  %i.f = load i16, ptr %i.a, align 2, !tbaa !208
  %i.g = trunc i16 %i.f to i8
  %i.h = and i8 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  store i8 %i.h, ptr %i.i, align 4, !tbaa !211
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_110ValueTable16createMemoryExprIN4llvm9StoreInstEEEPNS_18InstructionUseExprEPT_(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !208
  %i.c = and i16 %i.b, 768
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZNK4llvm11Instruction8isAtomicEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #21
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_110ValueTable10createExprEPN4llvm11InstructionE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull %1) ; 2 uses
  %i.f = load i16, ptr %i.a, align 2, !tbaa !208
  %i.g = trunc i16 %i.f to i8
  %i.h = and i8 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  store i8 %i.h, ptr %i.i, align 4, !tbaa !211
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_110ValueTable10createExprEPN4llvm11InstructionE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 15
  %i.e = and i64 %i.d, -16                        ; 2 uses
  %i.f = add i64 %i.e, 72                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !213
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c, !prof !107

bb.b:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %i.f to ptr
  store ptr %i.j, ptr %i.a, align 8, !tbaa !212
  %i.k = inttoptr i64 %i.e to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef 72, i64 noundef 72, i8 4)
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.k, %bb.b ], [ %i.l, %bb.c ] ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = tail call noundef i32 @_ZNK4llvm5Value10getNumUsesEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 6, ptr %i.o, align 8, !tbaa !214
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 12 ; 3 uses
  store i32 -3, ptr %i.p, align 4, !tbaa !202
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store i32 %i.n, ptr %i.s, align 8, !tbaa !564
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 36 ; 3 uses
  store i32 0, ptr %i.t, align 4, !tbaa !207
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40 ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !205
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_118InstructionUseExprE, i64 16), ptr %.0.i.i.i, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48 ; 2 uses
  store i32 -1, ptr %i.v, align 8, !tbaa !565
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 52
  store i8 0, ptr %i.w, align 4, !tbaa !211
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %_ZN4llvm13ArrayRecyclerIPNS_5ValueELm8EE8Capacity3getEm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit
  %i.y = zext i32 %i.n to i64
  %i.z = add nsw i64 %i.y, -1
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 false)
  %i.ab = trunc nuw nsw i64 %i.aa to i8
  %i.ac = sub nuw nsw i8 64, %i.ab
  br label %_ZN4llvm13ArrayRecyclerIPNS_5ValueELm8EE8Capacity3getEm.exit.i.i

_ZN4llvm13ArrayRecyclerIPNS_5ValueELm8EE8Capacity3getEm.exit.i.i: ; preds = %bb.d, %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit
  %i.ad = phi i8 [ %i.ac, %bb.d ], [ 0, %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit ] ; 2 uses
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !38
  %.not.i.i.i.i = icmp ugt i32 %i.ag, %i.ae
  %i.ah = zext nneg i8 %i.ad to i64               ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %_ZN4llvm13ArrayRecyclerIPNS_5ValueELm8EE8Capacity3getEm.exit.i.i
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !567 ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not9.i.i.i.i, label %._crit_edge.i.i.i, label %_ZN4llvm13ArrayRecyclerIPNS_5ValueELm8EE3popEj.exit.i.i.i

_ZN4llvm13ArrayRecyclerIPNS_5ValueELm8EE3popEj.exit.i.i.i: ; preds = %bb.e
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !569
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !567
  br label %_ZN4llvm13GVNExpression15BasicExpression16allocateOperandsERNS_13ArrayRecyclerIPNS_5ValueELm8EEERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit.i

._crit_edge.i.i.i:                                ; preds = %bb.e, %_ZN4llvm13ArrayRecyclerIPNS_5ValueELm8EE8Capacity3getEm.exit.i.i
  %i.am = shl nuw nsw i64 8, %i.ah                ; 3 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !212 ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = add i64 %i.am, %i.ao                    ; 2 uses
  %i.aq = load i64, ptr %i.g, align 8, !tbaa !213
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.f, label %bb.g, !prof !107

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.as = inttoptr i64 %i.ap to ptr
  store ptr %i.as, ptr %i.a, align 8, !tbaa !212
  br label %_ZN4llvm13GVNExpression15BasicExpression16allocateOperandsERNS_13ArrayRecyclerIPNS_5ValueELm8EEERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.at = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef %i.am, i64 noundef %i.am, i8 3)
  br label %_ZN4llvm13GVNExpression15BasicExpression16allocateOperandsERNS_13ArrayRecyclerIPNS_5ValueELm8EEERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit.i

_ZN4llvm13GVNExpression15BasicExpression16allocateOperandsERNS_13ArrayRecyclerIPNS_5ValueELm8EEERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit.i: ; preds = %bb.g, %bb.f, %_ZN4llvm13ArrayRecyclerIPNS_5ValueELm8EE3popEj.exit.i.i.i
  %.1.i.i.i = phi ptr [ %i.ak, %_ZN4llvm13ArrayRecyclerIPNS_5ValueELm8EE3popEj.exit.i.i.i ], [ %i.an, %bb.f ], [ %i.at, %bb.g ]
  store ptr %.1.i.i.i, ptr %i.r, align 8, !tbaa !206
  %i.au = load i8, ptr %1, align 8, !tbaa !112    ; 2 uses
  %i.av = zext i8 %i.au to i32
  %i.aw = add nsw i32 %i.av, -30
  store i32 %i.aw, ptr %i.p, align 4, !tbaa !202
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !155
  store ptr %i.ay, ptr %i.u, align 8, !tbaa !205
  %.not.i = icmp eq i8 %i.au, 95
  br i1 %.not.i, label %bb.h, label %bb.n

bb.h:                                             ; preds = %_ZN4llvm13GVNExpression15BasicExpression16allocateOperandsERNS_13ArrayRecyclerIPNS_5ValueELm8EEERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !37 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !38 ; 3 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 2                ; 3 uses
  %i.bf = add nuw nsw i64 %i.be, 4
  %i.bg = and i64 %i.bf, 34359738360              ; 2 uses
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !212 ; 2 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = add i64 %i.bg, %i.bi                    ; 2 uses
  %i.bk = load i64, ptr %i.g, align 8, !tbaa !213
  %i.bl = icmp ult i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.i, label %bb.j, !prof !107

bb.i:                                             ; preds = %bb.h
  %i.bm = inttoptr i64 %i.bj to ptr
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !212
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIiEEPT_m.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.bn = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef %i.be, i64 noundef %i.bg, i8 2)
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIiEEPT_m.exit.i.i

_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIiEEPT_m.exit.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.bh, %bb.i ], [ %i.bn, %bb.j ] ; 3 uses
  %i.bo = icmp ugt i32 %i.bc, 1
  br i1 %i.bo, label %bb.k, label %bb.l, !prof !107

bb.k:                                             ; preds = %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIiEEPT_m.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i.i, ptr align 4 %i.ba, i64 %i.be, i1 false)
  br label %_ZN4llvm8ArrayRefIiE4copyINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEENS_15MutableArrayRefIiEERT_.exit.i

bb.l:                                             ; preds = %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIiEEPT_m.exit.i.i
  %i.bp = icmp eq i32 %i.bc, 1
  br i1 %i.bp, label %bb.m, label %_ZN4llvm8ArrayRefIiE4copyINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEENS_15MutableArrayRefIiEERT_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bq = load i32, ptr %i.ba, align 4, !tbaa !82
  store i32 %i.bq, ptr %.0.i.i.i.i.i.i, align 4, !tbaa !82
  br label %_ZN4llvm8ArrayRefIiE4copyINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEENS_15MutableArrayRefIiEERT_.exit.i

_ZN4llvm8ArrayRefIiE4copyINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEENS_15MutableArrayRefIiEERT_.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  store ptr %.0.i.i.i.i.i.i, ptr %i.x, align 8, !tbaa !195
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !114
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvm8ArrayRefIiE4copyINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEENS_15MutableArrayRefIiEERT_.exit.i, %_ZN4llvm13GVNExpression15BasicExpression16allocateOperandsERNS_13ArrayRecyclerIPNS_5ValueELm8EEERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.020.030.i = load ptr, ptr %i.br, align 8, !tbaa !97 ; 2 uses
  %.not2931.i = icmp eq ptr %.sroa.020.030.i, null
  %.pre.i = load i32, ptr %i.t, align 4, !tbaa !207 ; 2 uses
  br i1 %.not2931.i, label %bb.o, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.bs = load ptr, ptr %i.r, align 8, !tbaa !206
  br label %bb.q

._crit_edge.i:                                    ; preds = %bb.q
  store i32 %i.ca, ptr %i.t, align 4, !tbaa !207
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i, %bb.n
  %i.bt = phi i32 [ %i.ca, %._crit_edge.i ], [ %.pre.i, %bb.n ] ; 2 uses
  %i.bu = icmp ult i32 %i.bt, 2
  br i1 %i.bu, label %_ZN12_GLOBAL__N_118InstructionUseExprC2EPN4llvm11InstructionERNS1_13ArrayRecyclerIPNS1_5ValueELm8EEERNS1_20BumpPtrAllocatorImplINS1_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_1
