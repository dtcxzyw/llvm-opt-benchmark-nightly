Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86TargetTransformInfo?download=true
inline.NumInlined: 8600
inline.NumDeleted: 3034
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 53
begin_hunk_0

$_ZNK4llvm17ShuffleVectorInst14isSingleSourceEv = comdat any

$_ZNK4llvm17ShuffleVectorInst8isSelectEv = comdat any

$_ZNK4llvm17ShuffleVectorInst8isSpliceERi = comdat any

$_ZZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getUnrollingPreferencesEPNS_4LoopERNS_15ScalarEvolutionERNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENKUlvE_clEv = comdat any

$_ZN4llvmlsINS_18OptimizationRemarkEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS2_E4typeEEENS5_8ArgumentEE4typeE = comdat any

$_ZN4llvm15SmallVectorImplINS_30DiagnosticInfoOptimizationBase8ArgumentEEaSEOS3_ = comdat any

$_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentaSEOS1_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE19moveElementsForGrowEPS2_ = comdat any

$_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable = comdat any

$_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable = comdat any

$_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE25GFNIUniformConstCostTable = internal constant [9 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 198, i16 48, %struct.CostKindCosts { i32 1, i32 6, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 48, %struct.CostKindCosts { i32 1, i32 6, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 48, %struct.CostKindCosts { i32 1, i32 6, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 49, %struct.CostKindCosts { i32 1, i32 6, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 49, %struct.CostKindCosts { i32 1, i32 6, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 49, %struct.CostKindCosts { i32 1, i32 6, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 50, %struct.CostKindCosts { i32 1, i32 6, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 50, %struct.CostKindCosts { i32 1, i32 6, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 50, %struct.CostKindCosts { i32 1, i32 6, i32 1, i32 2 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE29AVX512BWUniformConstCostTable = internal constant [15 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 198, i16 48, %struct.CostKindCosts { i32 1, i32 7, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 48, %struct.CostKindCosts { i32 1, i32 7, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 48, %struct.CostKindCosts { i32 1, i32 8, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 49, %struct.CostKindCosts { i32 1, i32 8, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 49, %struct.CostKindCosts { i32 1, i32 8, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 49, %struct.CostKindCosts { i32 1, i32 9, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 50, %struct.CostKindCosts { i32 1, i32 8, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 50, %struct.CostKindCosts { i32 1, i32 8, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 50, %struct.CostKindCosts { i32 1, i32 9, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE29AVX512DQUniformConstCostTable = internal unnamed_addr constant [6 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 62, i16 96, %struct.CostKindCosts { i32 9, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 96, %struct.CostKindCosts { i32 17, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 62, i16 97, %struct.CostKindCosts { i32 9, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 97, %struct.CostKindCosts { i32 17, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 96, %struct.CostKindCosts { i32 17, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 97, %struct.CostKindCosts { i32 17, i32 -1, i32 -1, i32 -1 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE27AVX512UniformConstCostTable = internal constant [25 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 198, i16 50, %struct.CostKindCosts { i32 2, i32 12, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 50, %struct.CostKindCosts { i32 2, i32 12, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 50, %struct.CostKindCosts { i32 3, i32 10, i32 12, i32 12 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 63, %struct.CostKindCosts { i32 2, i32 7, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 63, %struct.CostKindCosts { i32 2, i32 7, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 63, %struct.CostKindCosts { i32 2, i32 7, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 97, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 97, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 97, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 62, i16 82, %struct.CostKindCosts { i32 6, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 82, %struct.CostKindCosts { i32 8, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 63, i16 82, %struct.CostKindCosts { i32 5, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 82, %struct.CostKindCosts { i32 7, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 63, i16 97, %struct.CostKindCosts { i32 9, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 97, %struct.CostKindCosts { i32 21, i32 -1, i32 -1, i32 -1 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE25AVX2UniformConstCostTable = internal constant [30 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 198, i16 48, %struct.CostKindCosts { i32 1, i32 8, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 48, %struct.CostKindCosts { i32 1, i32 8, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 48, %struct.CostKindCosts { i32 2, i32 10, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 49, %struct.CostKindCosts { i32 2, i32 8, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 49, %struct.CostKindCosts { i32 2, i32 8, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 49, %struct.CostKindCosts { i32 3, i32 10, i32 5, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 63, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 63, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 63, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 77, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 77, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 77, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 94, %struct.CostKindCosts { i32 2, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 96, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 96, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 96, %struct.CostKindCosts { i32 4, i32 4, i32 3, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 62, i16 77, %struct.CostKindCosts { i32 6, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 77, %struct.CostKindCosts { i32 8, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 63, i16 77, %struct.CostKindCosts { i32 5, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 77, %struct.CostKindCosts { i32 7, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 63, i16 96, %struct.CostKindCosts { i32 9, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 96, %struct.CostKindCosts { i32 21, i32 -1, i32 -1, i32 -1 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE24AVXUniformConstCostTable = internal constant [28 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 198, i16 48, %struct.CostKindCosts { i32 2, i32 7, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 48, %struct.CostKindCosts { i32 2, i32 7, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 48, %struct.CostKindCosts { i32 3, i32 9, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 49, %struct.CostKindCosts { i32 4, i32 7, i32 7, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 49, %struct.CostKindCosts { i32 4, i32 7, i32 7, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 49, %struct.CostKindCosts { i32 7, i32 7, i32 12, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 62, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 62, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 62, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 63, %struct.CostKindCosts { i32 3, i32 6, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 63, %struct.CostKindCosts { i32 3, i32 6, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 63, %struct.CostKindCosts { i32 3, i32 6, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 73, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 73, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 73, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 77, %struct.CostKindCosts { i32 3, i32 6, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 77, %struct.CostKindCosts { i32 3, i32 6, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 77, %struct.CostKindCosts { i32 3, i32 6, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 94, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 94, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 94, %struct.CostKindCosts { i32 2, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 96, %struct.CostKindCosts { i32 3, i32 6, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 96, %struct.CostKindCosts { i32 3, i32 6, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 96, %struct.CostKindCosts { i32 5, i32 7, i32 8, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 62, i16 77, %struct.CostKindCosts { i32 14, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 77, %struct.CostKindCosts { i32 18, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 63, i16 77, %struct.CostKindCosts { i32 12, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 77, %struct.CostKindCosts { i32 16, i32 -1, i32 -1, i32 -1 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE25SSE2UniformConstCostTable = internal constant [16 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 198, i16 48, %struct.CostKindCosts { i32 1, i32 7, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 48, %struct.CostKindCosts { i32 1, i32 7, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 48, %struct.CostKindCosts { i32 3, i32 9, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 94, %struct.CostKindCosts { i32 3, i32 5, i32 6, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 62, i16 73, %struct.CostKindCosts { i32 6, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 73, %struct.CostKindCosts { i32 8, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 63, i16 73, %struct.CostKindCosts { i32 5, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 73, %struct.CostKindCosts { i32 7, i32 -1, i32 -1, i32 -1 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE22AVX512BWConstCostTable = internal unnamed_addr constant [8 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 62, i16 50, %struct.CostKindCosts { i32 14, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 50, %struct.CostKindCosts { i32 16, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 63, i16 50, %struct.CostKindCosts { i32 14, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 50, %struct.CostKindCosts { i32 16, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 62, i16 64, %struct.CostKindCosts { i32 6, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 64, %struct.CostKindCosts { i32 8, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 63, i16 64, %struct.CostKindCosts { i32 6, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 64, %struct.CostKindCosts { i32 8, i32 -1, i32 -1, i32 -1 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE22AVX512DQConstCostTable = internal unnamed_addr constant [6 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 62, i16 96, %struct.CostKindCosts { i32 9, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 96, %struct.CostKindCosts { i32 21, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 62, i16 97, %struct.CostKindCosts { i32 9, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 97, %struct.CostKindCosts { i32 21, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 96, %struct.CostKindCosts { i32 24, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 97, %struct.CostKindCosts { i32 24, i32 -1, i32 -1, i32 -1 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE20AVX512ConstCostTable = internal constant [14 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 62, i16 50, %struct.CostKindCosts { i32 28, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 50, %struct.CostKindCosts { i32 32, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 63, i16 50, %struct.CostKindCosts { i32 28, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 50, %struct.CostKindCosts { i32 32, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 62, i16 64, %struct.CostKindCosts { i32 12, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 64, %struct.CostKindCosts { i32 16, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 63, i16 64, %struct.CostKindCosts { i32 12, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 64, %struct.CostKindCosts { i32 16, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 62, i16 82, %struct.CostKindCosts { i32 15, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 82, %struct.CostKindCosts { i32 17, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 63, i16 82, %struct.CostKindCosts { i32 15, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 82, %struct.CostKindCosts { i32 17, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 63, i16 97, %struct.CostKindCosts { i32 9, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 97, %struct.CostKindCosts { i32 28, i32 -1, i32 -1, i32 -1 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE18AVX2ConstCostTable = internal constant [14 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 62, i16 49, %struct.CostKindCosts { i32 14, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 49, %struct.CostKindCosts { i32 16, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 63, i16 49, %struct.CostKindCosts { i32 14, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 49, %struct.CostKindCosts { i32 16, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 62, i16 63, %struct.CostKindCosts { i32 6, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 63, %struct.CostKindCosts { i32 8, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 63, i16 63, %struct.CostKindCosts { i32 6, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 63, %struct.CostKindCosts { i32 8, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 62, i16 77, %struct.CostKindCosts { i32 15, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 77, %struct.CostKindCosts { i32 19, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 63, i16 77, %struct.CostKindCosts { i32 15, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 77, %struct.CostKindCosts { i32 19, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 63, i16 96, %struct.CostKindCosts { i32 9, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 96, %struct.CostKindCosts { i32 28, i32 -1, i32 -1, i32 -1 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE17AVXConstCostTable = internal unnamed_addr constant [12 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 62, i16 49, %struct.CostKindCosts { i32 30, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 49, %struct.CostKindCosts { i32 34, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 63, i16 49, %struct.CostKindCosts { i32 30, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 49, %struct.CostKindCosts { i32 34, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 62, i16 63, %struct.CostKindCosts { i32 14, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 63, %struct.CostKindCosts { i32 18, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 63, i16 63, %struct.CostKindCosts { i32 14, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 63, %struct.CostKindCosts { i32 18, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 62, i16 77, %struct.CostKindCosts { i32 32, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 77, %struct.CostKindCosts { i32 38, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 63, i16 77, %struct.CostKindCosts { i32 32, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 77, %struct.CostKindCosts { i32 42, i32 -1, i32 -1, i32 -1 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE19SSE41ConstCostTable = internal unnamed_addr constant [2 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 62, i16 73, %struct.CostKindCosts { i32 15, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 73, %struct.CostKindCosts { i32 20, i32 -1, i32 -1, i32 -1 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE18SSE2ConstCostTable = internal unnamed_addr constant [12 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 62, i16 48, %struct.CostKindCosts { i32 14, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 48, %struct.CostKindCosts { i32 16, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 63, i16 48, %struct.CostKindCosts { i32 14, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 48, %struct.CostKindCosts { i32 16, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 62, i16 62, %struct.CostKindCosts { i32 6, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 62, %struct.CostKindCosts { i32 8, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 63, i16 62, %struct.CostKindCosts { i32 6, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 62, %struct.CostKindCosts { i32 8, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 62, i16 73, %struct.CostKindCosts { i32 19, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 64, i16 73, %struct.CostKindCosts { i32 24, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 63, i16 73, %struct.CostKindCosts { i32 15, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 65, i16 73, %struct.CostKindCosts { i32 20, i32 -1, i32 -1, i32 -1 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE24AVX512BWUniformCostTable = internal unnamed_addr constant [12 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 198, i16 48, %struct.CostKindCosts { i32 3, i32 5, i32 5, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 48, %struct.CostKindCosts { i32 3, i32 10, i32 5, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 48, %struct.CostKindCosts { i32 4, i32 12, i32 8, i32 12 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 49, %struct.CostKindCosts { i32 4, i32 7, i32 6, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 49, %struct.CostKindCosts { i32 4, i32 8, i32 7, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 49, %struct.CostKindCosts { i32 5, i32 10, i32 10, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 50, %struct.CostKindCosts { i32 4, i32 7, i32 6, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 50, %struct.CostKindCosts { i32 4, i32 8, i32 7, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 50, %struct.CostKindCosts { i32 5, i32 10, i32 10, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 64, %struct.CostKindCosts { i32 2, i32 4, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 64, %struct.CostKindCosts { i32 2, i32 4, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 64, %struct.CostKindCosts { i32 2, i32 4, i32 2, i32 3 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE22AVX512UniformCostTable = internal constant [13 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 198, i16 64, %struct.CostKindCosts { i32 5, i32 10, i32 5, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 64, %struct.CostKindCosts { i32 5, i32 10, i32 5, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 64, %struct.CostKindCosts { i32 5, i32 10, i32 5, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 82, %struct.CostKindCosts { i32 2, i32 4, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 82, %struct.CostKindCosts { i32 2, i32 4, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 82, %struct.CostKindCosts { i32 2, i32 4, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 94, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 96, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 96, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 96, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 97, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 97, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 97, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 2 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE20AVX2UniformCostTable = internal constant [24 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 198, i16 48, %struct.CostKindCosts { i32 3, i32 5, i32 5, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 48, %struct.CostKindCosts { i32 3, i32 9, i32 5, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 48, %struct.CostKindCosts { i32 4, i32 5, i32 9, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 49, %struct.CostKindCosts { i32 4, i32 7, i32 6, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 49, %struct.CostKindCosts { i32 4, i32 8, i32 7, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 49, %struct.CostKindCosts { i32 6, i32 9, i32 11, i32 16 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 62, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 62, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 62, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 63, %struct.CostKindCosts { i32 2, i32 4, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 63, %struct.CostKindCosts { i32 2, i32 4, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 63, %struct.CostKindCosts { i32 2, i32 4, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 73, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 73, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 73, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 77, %struct.CostKindCosts { i32 2, i32 4, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 77, %struct.CostKindCosts { i32 2, i32 4, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 77, %struct.CostKindCosts { i32 2, i32 4, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 94, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 94, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 94, %struct.CostKindCosts { i32 2, i32 4, i32 5, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 96, %struct.CostKindCosts { i32 2, i32 4, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 96, %struct.CostKindCosts { i32 2, i32 4, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 96, %struct.CostKindCosts { i32 4, i32 6, i32 5, i32 9 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE19AVXUniformCostTable = internal constant [24 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 198, i16 48, %struct.CostKindCosts { i32 4, i32 4, i32 6, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 48, %struct.CostKindCosts { i32 4, i32 8, i32 5, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 48, %struct.CostKindCosts { i32 6, i32 6, i32 9, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 49, %struct.CostKindCosts { i32 7, i32 8, i32 11, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 49, %struct.CostKindCosts { i32 7, i32 9, i32 10, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 49, %struct.CostKindCosts { i32 10, i32 11, i32 16, i32 21 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 62, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 62, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 62, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 63, %struct.CostKindCosts { i32 3, i32 7, i32 5, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 63, %struct.CostKindCosts { i32 3, i32 7, i32 5, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 63, %struct.CostKindCosts { i32 3, i32 7, i32 5, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 73, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 73, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 73, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 77, %struct.CostKindCosts { i32 3, i32 7, i32 5, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 77, %struct.CostKindCosts { i32 3, i32 7, i32 5, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 77, %struct.CostKindCosts { i32 3, i32 7, i32 5, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 94, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 94, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 94, %struct.CostKindCosts { i32 3, i32 4, i32 5, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 96, %struct.CostKindCosts { i32 3, i32 7, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 96, %struct.CostKindCosts { i32 3, i32 7, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 96, %struct.CostKindCosts { i32 6, i32 7, i32 10, i32 13 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE20SSE2UniformCostTable = internal unnamed_addr constant [12 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 198, i16 48, %struct.CostKindCosts { i32 9, i32 10, i32 6, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 48, %struct.CostKindCosts { i32 9, i32 13, i32 5, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 48, %struct.CostKindCosts { i32 11, i32 15, i32 9, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 62, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 62, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 62, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 73, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 73, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 73, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 94, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 94, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 94, %struct.CostKindCosts { i32 5, i32 9, i32 5, i32 7 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE17AVX512DQCostTable = internal unnamed_addr constant [3 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 61, i16 94, %struct.CostKindCosts { i32 2, i32 15, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 96, %struct.CostKindCosts { i32 2, i32 15, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 97, %struct.CostKindCosts { i32 3, i32 15, i32 1, i32 3 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE17AVX512BWCostTable = internal constant [34 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 198, i16 48, %struct.CostKindCosts { i32 4, i32 8, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 48, %struct.CostKindCosts { i32 4, i32 8, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 48, %struct.CostKindCosts { i32 4, i32 8, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 49, %struct.CostKindCosts { i32 4, i32 23, i32 11, i32 16 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 49, %struct.CostKindCosts { i32 4, i32 30, i32 12, i32 18 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 49, %struct.CostKindCosts { i32 6, i32 13, i32 24, i32 30 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 50, %struct.CostKindCosts { i32 6, i32 19, i32 13, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 50, %struct.CostKindCosts { i32 7, i32 27, i32 15, i32 18 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 50, %struct.CostKindCosts { i32 15, i32 15, i32 30, i32 30 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 59, i16 50, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 59, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 59, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 59, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 59, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 59, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 50, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 48, %struct.CostKindCosts { i32 4, i32 12, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 49, %struct.CostKindCosts { i32 3, i32 10, i32 7, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 50, %struct.CostKindCosts { i32 3, i32 11, i32 7, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 64, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE15AVX512CostTable = internal unnamed_addr constant [72 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 198, i16 50, %struct.CostKindCosts { i32 15, i32 19, i32 27, i32 33 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 50, %struct.CostKindCosts { i32 15, i32 19, i32 30, i32 36 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 50, %struct.CostKindCosts { i32 37, i32 37, i32 51, i32 63 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 64, %struct.CostKindCosts { i32 11, i32 16, i32 11, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 64, %struct.CostKindCosts { i32 11, i32 16, i32 11, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 64, %struct.CostKindCosts { i32 11, i32 16, i32 11, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 97, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 97, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 97, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 59, i16 50, %struct.CostKindCosts { i32 3, i32 7, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 59, i16 64, %struct.CostKindCosts { i32 3, i32 7, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 50, %struct.CostKindCosts { i32 3, i32 7, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 64, %struct.CostKindCosts { i32 3, i32 7, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 193, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 193, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 193, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 193, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 194, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 194, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 194, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 194, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 195, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 195, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 195, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 195, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 82, %struct.CostKindCosts { i32 1, i32 10, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 77, %struct.CostKindCosts { i32 1, i32 10, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 73, %struct.CostKindCosts { i32 1, i32 10, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 97, %struct.CostKindCosts { i32 6, i32 9, i32 8, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 8, %struct.CostKindCosts { i32 1, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 771, i16 97, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 260, i16 157, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 157, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 156, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 157, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 156, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 157, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 156, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 154, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 15, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 15, %struct.CostKindCosts { i32 4, i32 14, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 154, %struct.CostKindCosts { i32 4, i32 14, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 156, %struct.CostKindCosts { i32 8, i32 14, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 157, %struct.CostKindCosts { i32 16, i32 23, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 260, i16 145, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 145, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 140, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 145, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 140, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 145, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 140, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 136, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 14, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 14, %struct.CostKindCosts { i32 3, i32 11, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 136, %struct.CostKindCosts { i32 3, i32 11, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 140, %struct.CostKindCosts { i32 5, i32 11, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 145, %struct.CostKindCosts { i32 10, i32 18, i32 1, i32 3 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE18AVX2ShiftCostTable = internal constant [10 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 198, i16 73, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 73, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 73, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 77, %struct.CostKindCosts { i32 4, i32 4, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 77, %struct.CostKindCosts { i32 4, i32 4, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 77, %struct.CostKindCosts { i32 4, i32 4, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 94, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 94, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 96, %struct.CostKindCosts { i32 4, i32 4, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 96, %struct.CostKindCosts { i32 4, i32 4, i32 1, i32 2 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE17XOPShiftCostTable = internal constant [24 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 198, i16 48, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 48, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 48, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 62, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 62, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 62, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 73, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 73, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 73, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 94, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 94, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 94, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 49, %struct.CostKindCosts { i32 4, i32 7, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 49, %struct.CostKindCosts { i32 6, i32 7, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 49, %struct.CostKindCosts { i32 6, i32 7, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 63, %struct.CostKindCosts { i32 4, i32 7, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 63, %struct.CostKindCosts { i32 6, i32 7, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 63, %struct.CostKindCosts { i32 6, i32 7, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 77, %struct.CostKindCosts { i32 4, i32 7, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 77, %struct.CostKindCosts { i32 6, i32 7, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 77, %struct.CostKindCosts { i32 6, i32 7, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 96, %struct.CostKindCosts { i32 4, i32 7, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 96, %struct.CostKindCosts { i32 6, i32 7, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 96, %struct.CostKindCosts { i32 6, i32 7, i32 5, i32 6 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE12GLMCostTable = internal unnamed_addr constant [4 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 102, i16 14, %struct.CostKindCosts { i32 18, i32 19, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 136, %struct.CostKindCosts { i32 35, i32 36, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 15, %struct.CostKindCosts { i32 33, i32 34, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 154, %struct.CostKindCosts { i32 65, i32 66, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE12SLMCostTable = internal constant [15 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 61, i16 73, %struct.CostKindCosts { i32 11, i32 11, i32 1, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 62, %struct.CostKindCosts { i32 2, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 15, %struct.CostKindCosts { i32 2, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 14, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 154, %struct.CostKindCosts { i32 4, i32 7, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 136, %struct.CostKindCosts { i32 2, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 14, %struct.CostKindCosts { i32 17, i32 19, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 136, %struct.CostKindCosts { i32 39, i32 39, i32 1, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 15, %struct.CostKindCosts { i32 32, i32 34, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 154, %struct.CostKindCosts { i32 69, i32 69, i32 1, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 154, %struct.CostKindCosts { i32 2, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 154, %struct.CostKindCosts { i32 2, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 94, %struct.CostKindCosts { i32 17, i32 22, i32 9, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 59, i16 94, %struct.CostKindCosts { i32 4, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 94, %struct.CostKindCosts { i32 4, i32 2, i32 1, i32 2 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE13AVX2CostTable = internal unnamed_addr constant [56 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 198, i16 48, %struct.CostKindCosts { i32 6, i32 21, i32 11, i32 16 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 49, %struct.CostKindCosts { i32 6, i32 23, i32 11, i32 22 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 62, %struct.CostKindCosts { i32 5, i32 18, i32 5, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 63, %struct.CostKindCosts { i32 8, i32 10, i32 10, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 48, %struct.CostKindCosts { i32 6, i32 27, i32 12, i32 18 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 49, %struct.CostKindCosts { i32 8, i32 30, i32 12, i32 24 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 62, %struct.CostKindCosts { i32 5, i32 11, i32 5, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 63, %struct.CostKindCosts { i32 8, i32 10, i32 10, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 48, %struct.CostKindCosts { i32 17, i32 17, i32 24, i32 30 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 49, %struct.CostKindCosts { i32 18, i32 20, i32 24, i32 43 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 62, %struct.CostKindCosts { i32 5, i32 11, i32 5, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 63, %struct.CostKindCosts { i32 8, i32 10, i32 10, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 94, %struct.CostKindCosts { i32 4, i32 5, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 96, %struct.CostKindCosts { i32 8, i32 8, i32 5, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 59, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 59, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 59, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 59, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 48, %struct.CostKindCosts { i32 5, i32 18, i32 6, i32 12 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 49, %struct.CostKindCosts { i32 4, i32 8, i32 8, i32 16 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 63, %struct.CostKindCosts { i32 2, i32 5, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 77, %struct.CostKindCosts { i32 4, i32 10, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 73, %struct.CostKindCosts { i32 2, i32 10, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 96, %struct.CostKindCosts { i32 6, i32 10, i32 8, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 94, %struct.CostKindCosts { i32 6, i32 10, i32 8, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 771, i16 96, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 260, i16 156, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 260, i16 140, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 15, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 14, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 154, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 136, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 156, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 140, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 15, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 14, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 154, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 136, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 156, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 140, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 15, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 14, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 154, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 136, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 156, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 140, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 14, %struct.CostKindCosts { i32 7, i32 13, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 136, %struct.CostKindCosts { i32 7, i32 13, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 140, %struct.CostKindCosts { i32 14, i32 21, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 15, %struct.CostKindCosts { i32 14, i32 20, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 154, %struct.CostKindCosts { i32 14, i32 20, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 156, %struct.CostKindCosts { i32 28, i32 35, i32 1, i32 3 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE13AVX1CostTable = internal constant [79 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 61, i16 49, %struct.CostKindCosts { i32 10, i32 11, i32 18, i32 19 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 48, %struct.CostKindCosts { i32 5, i32 6, i32 8, i32 12 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 63, %struct.CostKindCosts { i32 4, i32 8, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 77, %struct.CostKindCosts { i32 5, i32 8, i32 5, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 73, %struct.CostKindCosts { i32 2, i32 5, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 96, %struct.CostKindCosts { i32 12, i32 15, i32 19, i32 20 } }, %"struct.llvm::CostTblEntryT" { i16 771, i16 96, %struct.CostKindCosts { i32 3, i32 5, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 193, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 193, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 193, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 193, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 194, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 194, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 194, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 194, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 195, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 195, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 195, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 195, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 49, %struct.CostKindCosts { i32 4, i32 2, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 59, i16 49, %struct.CostKindCosts { i32 4, i32 2, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 63, %struct.CostKindCosts { i32 4, i32 2, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 59, i16 63, %struct.CostKindCosts { i32 4, i32 2, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 77, %struct.CostKindCosts { i32 4, i32 2, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 59, i16 77, %struct.CostKindCosts { i32 4, i32 2, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 96, %struct.CostKindCosts { i32 4, i32 2, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 59, i16 96, %struct.CostKindCosts { i32 4, i32 2, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 59, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 48, %struct.CostKindCosts { i32 10, i32 21, i32 11, i32 17 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 49, %struct.CostKindCosts { i32 22, i32 22, i32 27, i32 40 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 62, %struct.CostKindCosts { i32 6, i32 9, i32 11, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 63, %struct.CostKindCosts { i32 13, i32 16, i32 24, i32 25 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 73, %struct.CostKindCosts { i32 3, i32 11, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 77, %struct.CostKindCosts { i32 9, i32 11, i32 12, i32 17 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 94, %struct.CostKindCosts { i32 2, i32 4, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 96, %struct.CostKindCosts { i32 6, i32 7, i32 11, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 48, %struct.CostKindCosts { i32 11, i32 27, i32 12, i32 18 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 49, %struct.CostKindCosts { i32 23, i32 23, i32 30, i32 43 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 62, %struct.CostKindCosts { i32 13, i32 16, i32 14, i32 22 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 63, %struct.CostKindCosts { i32 28, i32 30, i32 31, i32 48 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 73, %struct.CostKindCosts { i32 6, i32 7, i32 12, i32 16 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 77, %struct.CostKindCosts { i32 14, i32 14, i32 26, i32 34 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 94, %struct.CostKindCosts { i32 2, i32 4, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 96, %struct.CostKindCosts { i32 6, i32 7, i32 11, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 48, %struct.CostKindCosts { i32 21, i32 22, i32 24, i32 36 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 49, %struct.CostKindCosts { i32 44, i32 45, i32 51, i32 76 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 62, %struct.CostKindCosts { i32 13, i32 16, i32 14, i32 22 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 63, %struct.CostKindCosts { i32 28, i32 30, i32 31, i32 48 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 73, %struct.CostKindCosts { i32 6, i32 7, i32 12, i32 16 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 77, %struct.CostKindCosts { i32 14, i32 14, i32 26, i32 34 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 94, %struct.CostKindCosts { i32 5, i32 6, i32 10, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 96, %struct.CostKindCosts { i32 12, i32 12, i32 22, i32 30 } }, %"struct.llvm::CostTblEntryT" { i16 260, i16 156, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 260, i16 140, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 15, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 14, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 154, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 136, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 156, %struct.CostKindCosts { i32 2, i32 5, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 140, %struct.CostKindCosts { i32 2, i32 5, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 15, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 14, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 154, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 136, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 156, %struct.CostKindCosts { i32 2, i32 5, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 140, %struct.CostKindCosts { i32 2, i32 5, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 15, %struct.CostKindCosts { i32 2, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 14, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 154, %struct.CostKindCosts { i32 2, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 136, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 156, %struct.CostKindCosts { i32 4, i32 5, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 140, %struct.CostKindCosts { i32 2, i32 5, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 14, %struct.CostKindCosts { i32 14, i32 14, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 136, %struct.CostKindCosts { i32 14, i32 14, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 140, %struct.CostKindCosts { i32 28, i32 29, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 15, %struct.CostKindCosts { i32 22, i32 22, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 154, %struct.CostKindCosts { i32 22, i32 22, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 156, %struct.CostKindCosts { i32 44, i32 45, i32 1, i32 3 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE14SSE42CostTable = internal constant [17 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 99, i16 15, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 14, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 154, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 136, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 15, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 14, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 154, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 136, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 15, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 14, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 154, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 136, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 14, %struct.CostKindCosts { i32 14, i32 14, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 136, %struct.CostKindCosts { i32 14, i32 14, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 15, %struct.CostKindCosts { i32 22, i32 22, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 154, %struct.CostKindCosts { i32 22, i32 22, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 94, %struct.CostKindCosts { i32 6, i32 10, i32 10, i32 10 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE14SSE41CostTable = internal constant [12 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 198, i16 48, %struct.CostKindCosts { i32 15, i32 24, i32 17, i32 22 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 62, %struct.CostKindCosts { i32 11, i32 14, i32 11, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 73, %struct.CostKindCosts { i32 14, i32 20, i32 4, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 48, %struct.CostKindCosts { i32 16, i32 27, i32 18, i32 24 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 62, %struct.CostKindCosts { i32 22, i32 26, i32 23, i32 27 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 73, %struct.CostKindCosts { i32 16, i32 17, i32 15, i32 19 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 94, %struct.CostKindCosts { i32 4, i32 6, i32 5, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 48, %struct.CostKindCosts { i32 38, i32 41, i32 30, i32 36 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 62, %struct.CostKindCosts { i32 22, i32 26, i32 23, i32 27 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 73, %struct.CostKindCosts { i32 16, i32 17, i32 15, i32 19 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 94, %struct.CostKindCosts { i32 8, i32 17, i32 5, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 73, %struct.CostKindCosts { i32 2, i32 11, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE14SSSE3CostTable = internal unnamed_addr constant [1 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 61, i16 48, %struct.CostKindCosts { i32 5, i32 18, i32 10, i32 12 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE13SSE2CostTable = internal constant [47 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 198, i16 48, %struct.CostKindCosts { i32 13, i32 21, i32 26, i32 28 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 62, %struct.CostKindCosts { i32 24, i32 27, i32 16, i32 20 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 73, %struct.CostKindCosts { i32 17, i32 19, i32 10, i32 12 } }, %"struct.llvm::CostTblEntryT" { i16 198, i16 94, %struct.CostKindCosts { i32 4, i32 6, i32 5, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 48, %struct.CostKindCosts { i32 14, i32 28, i32 27, i32 30 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 62, %struct.CostKindCosts { i32 16, i32 19, i32 31, i32 31 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 73, %struct.CostKindCosts { i32 12, i32 12, i32 15, i32 19 } }, %"struct.llvm::CostTblEntryT" { i16 200, i16 94, %struct.CostKindCosts { i32 4, i32 6, i32 5, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 48, %struct.CostKindCosts { i32 27, i32 30, i32 54, i32 54 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 62, %struct.CostKindCosts { i32 16, i32 19, i32 31, i32 31 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 73, %struct.CostKindCosts { i32 12, i32 12, i32 15, i32 19 } }, %"struct.llvm::CostTblEntryT" { i16 199, i16 94, %struct.CostKindCosts { i32 8, i32 11, i32 12, i32 16 } }, %"struct.llvm::CostTblEntryT" { i16 193, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 193, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 193, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 193, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 194, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 194, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 194, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 194, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 195, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 195, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 195, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 195, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 59, i16 94, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 94, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 48, %struct.CostKindCosts { i32 6, i32 18, i32 12, i32 12 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 62, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 73, %struct.CostKindCosts { i32 6, i32 8, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 94, %struct.CostKindCosts { i32 7, i32 10, i32 10, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 771, i16 94, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 14, %struct.CostKindCosts { i32 23, i32 23, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 136, %struct.CostKindCosts { i32 39, i32 39, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 15, %struct.CostKindCosts { i32 38, i32 38, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 154, %struct.CostKindCosts { i32 69, i32 69, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 260, i16 14, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 260, i16 15, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 260, i16 136, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 260, i16 154, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 14, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 15, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 154, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 14, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 15, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 154, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 15, %struct.CostKindCosts { i32 2, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 154, %struct.CostKindCosts { i32 2, i32 5, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE13SSE1CostTable = internal constant [10 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 102, i16 14, %struct.CostKindCosts { i32 17, i32 18, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 136, %struct.CostKindCosts { i32 34, i32 48, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 260, i16 14, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 260, i16 136, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 14, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 136, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 14, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 136, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 14, %struct.CostKindCosts { i32 2, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 136, %struct.CostKindCosts { i32 2, i32 5, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE10X64CostTbl = internal constant [3 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 59, i16 8, %struct.CostKindCosts { i32 1, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 8, %struct.CostKindCosts { i32 1, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 8, %struct.CostKindCosts { i32 2, i32 6, i32 1, i32 2 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE10X86CostTbl = internal constant [14 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 59, i16 5, %struct.CostKindCosts { i32 1, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 59, i16 6, %struct.CostKindCosts { i32 1, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 59, i16 7, %struct.CostKindCosts { i32 1, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 5, %struct.CostKindCosts { i32 1, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 6, %struct.CostKindCosts { i32 1, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 60, i16 7, %struct.CostKindCosts { i32 1, i32 -1, i32 -1, i32 -1 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 5, %struct.CostKindCosts { i32 3, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 6, %struct.CostKindCosts { i32 2, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 61, i16 7, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 260, i16 15, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 99, i16 15, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 100, i16 15, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 101, i16 15, %struct.CostKindCosts { i32 2, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 102, i16 15, %struct.CostKindCosts { i32 38, i32 38, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionEE23SSE2SubVectorShuffleTbl = internal constant [23 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 0, i16 58, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 56, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 47, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 43, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 41, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 58, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 56, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 43, %struct.CostKindCosts { i32 3, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 41, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 58, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 56, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 43, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 41, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 58, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 56, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 47, %struct.CostKindCosts { i32 7, i32 7, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 43, %struct.CostKindCosts { i32 4, i32 4, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 41, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 58, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 56, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 47, %struct.CostKindCosts { i32 5, i32 5, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 43, %struct.CostKindCosts { i32 3, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 41, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }], align 16
@_ZN4llvmL14PoisonMaskElemE = internal constant i32 -1, align 4
@_ZZNK4llvm10X86TTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionEE20AVX512VBMIShuffleTbl = internal unnamed_addr constant [7 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 1, i16 50, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 50, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 50, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 49, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 48, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }], align 16
@_ZZNK4llvm10X86TTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionEE18AVX512BWShuffleTbl = internal constant [23 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 0, i16 64, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 114, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 50, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 64, %struct.CostKindCosts { i32 2, i32 6, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 114, %struct.CostKindCosts { i32 2, i32 6, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 63, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 113, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 50, %struct.CostKindCosts { i32 2, i32 9, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 64, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 114, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 63, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 113, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 50, %struct.CostKindCosts { i32 8, i32 8, i32 8, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 64, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 114, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 63, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 62, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 50, %struct.CostKindCosts { i32 19, i32 19, i32 19, i32 19 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 50, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 64, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 114, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 50, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }], align 16
@_ZZNK4llvm10X86TTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionEE22AVX512InLaneShuffleTbl = internal unnamed_addr constant [8 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 6, i16 157, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 145, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 97, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 82, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 156, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 140, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 96, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 77, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionEE16AVX512ShuffleTbl = internal unnamed_addr constant [70 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 0, i16 157, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 156, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 145, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 140, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 97, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 96, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 82, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 77, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 64, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 63, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 114, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 113, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 50, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 49, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 157, %struct.CostKindCosts { i32 1, i32 5, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 145, %struct.CostKindCosts { i32 1, i32 3, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 97, %struct.CostKindCosts { i32 1, i32 5, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 82, %struct.CostKindCosts { i32 1, i32 3, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 64, %struct.CostKindCosts { i32 7, i32 7, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 114, %struct.CostKindCosts { i32 7, i32 7, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 50, %struct.CostKindCosts { i32 7, i32 7, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 157, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 156, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 145, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 140, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 97, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 64, %struct.CostKindCosts { i32 4, i32 4, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 114, %struct.CostKindCosts { i32 4, i32 4, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 50, %struct.CostKindCosts { i32 4, i32 4, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 157, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 156, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 154, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 145, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 140, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 136, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 97, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 96, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 94, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 82, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 77, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 73, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 48, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 157, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 145, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 97, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 82, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 156, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 140, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 96, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 77, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 154, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 136, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 94, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 73, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 64, %struct.CostKindCosts { i32 14, i32 14, i32 14, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 114, %struct.CostKindCosts { i32 14, i32 14, i32 14, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 50, %struct.CostKindCosts { i32 14, i32 14, i32 14, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 64, %struct.CostKindCosts { i32 42, i32 42, i32 42, i32 42 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 114, %struct.CostKindCosts { i32 42, i32 42, i32 42, i32 42 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 50, %struct.CostKindCosts { i32 42, i32 42, i32 42, i32 42 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 114, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 50, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 157, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 145, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 97, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionEE20AVX2InLaneShuffleTbl = internal constant [12 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 7, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 113, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 3, i16 156, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 3, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 156, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 140, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 96, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 77, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 63, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 113, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 49, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }], align 16
@_ZZNK4llvm10X86TTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionEE14AVX2ShuffleTbl = internal constant [39 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 0, i16 156, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 140, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 96, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 77, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 63, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 62, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 113, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 112, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 49, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 48, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 156, %struct.CostKindCosts { i32 1, i32 6, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 140, %struct.CostKindCosts { i32 2, i32 7, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 96, %struct.CostKindCosts { i32 1, i32 6, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 77, %struct.CostKindCosts { i32 2, i32 7, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 63, %struct.CostKindCosts { i32 2, i32 9, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 113, %struct.CostKindCosts { i32 2, i32 9, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 49, %struct.CostKindCosts { i32 2, i32 9, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 113, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 77, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 140, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 63, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 113, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 49, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 156, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 140, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 63, %struct.CostKindCosts { i32 4, i32 4, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 113, %struct.CostKindCosts { i32 4, i32 4, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 49, %struct.CostKindCosts { i32 4, i32 4, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 156, %struct.CostKindCosts { i32 3, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 140, %struct.CostKindCosts { i32 3, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 96, %struct.CostKindCosts { i32 3, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 77, %struct.CostKindCosts { i32 3, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 63, %struct.CostKindCosts { i32 7, i32 7, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 113, %struct.CostKindCosts { i32 7, i32 7, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 49, %struct.CostKindCosts { i32 7, i32 7, i32 7, i32 7 } }], align 16
@_ZZNK4llvm10X86TTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionEE13XOPShuffleTbl = internal constant [10 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 7, i16 156, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 140, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 96, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 77, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 63, %struct.CostKindCosts { i32 4, i32 4, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 49, %struct.CostKindCosts { i32 4, i32 4, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 63, %struct.CostKindCosts { i32 9, i32 9, i32 9, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 49, %struct.CostKindCosts { i32 9, i32 9, i32 9, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionEE20AVX1InLaneShuffleTbl = internal constant [16 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 7, i16 156, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 140, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 63, %struct.CostKindCosts { i32 4, i32 4, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 113, %struct.CostKindCosts { i32 4, i32 4, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 49, %struct.CostKindCosts { i32 4, i32 4, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 3, i16 156, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 3, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 156, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 140, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 96, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 77, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 63, %struct.CostKindCosts { i32 9, i32 9, i32 9, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 113, %struct.CostKindCosts { i32 9, i32 9, i32 9, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 49, %struct.CostKindCosts { i32 9, i32 9, i32 9, i32 9 } }], align 16
@_ZZNK4llvm10X86TTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionEE14AVX1ShuffleTbl = internal constant [42 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 0, i16 156, %struct.CostKindCosts { i32 2, i32 3, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 140, %struct.CostKindCosts { i32 2, i32 3, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 96, %struct.CostKindCosts { i32 2, i32 3, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 77, %struct.CostKindCosts { i32 2, i32 3, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 63, %struct.CostKindCosts { i32 2, i32 3, i32 3, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 113, %struct.CostKindCosts { i32 2, i32 3, i32 3, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 49, %struct.CostKindCosts { i32 3, i32 4, i32 3, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 156, %struct.CostKindCosts { i32 2, i32 6, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 140, %struct.CostKindCosts { i32 2, i32 7, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 96, %struct.CostKindCosts { i32 2, i32 6, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 77, %struct.CostKindCosts { i32 2, i32 7, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 63, %struct.CostKindCosts { i32 2, i32 9, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 113, %struct.CostKindCosts { i32 2, i32 9, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 49, %struct.CostKindCosts { i32 2, i32 9, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 156, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 140, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 63, %struct.CostKindCosts { i32 3, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 113, %struct.CostKindCosts { i32 3, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 49, %struct.CostKindCosts { i32 3, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 96, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 156, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 77, %struct.CostKindCosts { i32 4, i32 4, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 140, %struct.CostKindCosts { i32 4, i32 4, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 63, %struct.CostKindCosts { i32 5, i32 5, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 113, %struct.CostKindCosts { i32 5, i32 5, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 49, %struct.CostKindCosts { i32 5, i32 5, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 156, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 96, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 140, %struct.CostKindCosts { i32 4, i32 4, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 77, %struct.CostKindCosts { i32 4, i32 4, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 63, %struct.CostKindCosts { i32 8, i32 8, i32 8, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 113, %struct.CostKindCosts { i32 8, i32 8, i32 8, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 49, %struct.CostKindCosts { i32 8, i32 8, i32 8, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 156, %struct.CostKindCosts { i32 3, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 96, %struct.CostKindCosts { i32 3, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 140, %struct.CostKindCosts { i32 4, i32 4, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 77, %struct.CostKindCosts { i32 4, i32 4, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 63, %struct.CostKindCosts { i32 15, i32 15, i32 15, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 113, %struct.CostKindCosts { i32 15, i32 15, i32 15, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 49, %struct.CostKindCosts { i32 15, i32 15, i32 15, i32 15 } }], align 16
@_ZZNK4llvm10X86TTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionEE15SSE41ShuffleTbl = internal constant [7 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 2, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 154, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 136, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 112, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionEE15SSSE3ShuffleTbl = internal constant [17 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 0, i16 62, %struct.CostKindCosts { i32 1, i32 3, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 112, %struct.CostKindCosts { i32 1, i32 3, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 48, %struct.CostKindCosts { i32 1, i32 3, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 62, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 112, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 48, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 136, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 112, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 112, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 62, %struct.CostKindCosts { i32 3, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 112, %struct.CostKindCosts { i32 3, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 48, %struct.CostKindCosts { i32 3, i32 3, i32 3, i32 3 } }], align 16
@_ZZNK4llvm10X86TTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionEE14SSE2ShuffleTbl = internal constant [36 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 0, i16 154, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 62, %struct.CostKindCosts { i32 1, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 112, %struct.CostKindCosts { i32 1, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 0, i16 48, %struct.CostKindCosts { i32 2, i32 3, i32 3, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 154, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 62, %struct.CostKindCosts { i32 2, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 112, %struct.CostKindCosts { i32 2, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 48, %struct.CostKindCosts { i32 5, i32 6, i32 11, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 154, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 73, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 62, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 112, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 48, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 154, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 73, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 62, %struct.CostKindCosts { i32 3, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 112, %struct.CostKindCosts { i32 3, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 48, %struct.CostKindCosts { i32 3, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 154, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 62, %struct.CostKindCosts { i32 3, i32 5, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 112, %struct.CostKindCosts { i32 3, i32 5, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 48, %struct.CostKindCosts { i32 8, i32 10, i32 10, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 154, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 73, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 62, %struct.CostKindCosts { i32 6, i32 8, i32 8, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 112, %struct.CostKindCosts { i32 6, i32 8, i32 8, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 48, %struct.CostKindCosts { i32 11, i32 13, i32 13, i32 13 } }], align 16
@_ZZNK4llvm10X86TTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionEE14SSE1ShuffleTbl = internal constant [6 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 0, i16 136, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 1, i16 136, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 2, i16 136, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 8, i16 136, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 7, i16 136, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 6, i16 136, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }], align 16
@_ZZNK4llvm10X86TTIImpl16getCastInstrCostEjPNS_4TypeES2_NS_19TargetTransformInfo15CastContextHintENS3_14TargetCostKindEPKNS_11InstructionEE21AVX512BWConversionTbl = internal constant [58 x %"struct.llvm::TypeConversionCostTblEntryT"] [%"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 64, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 64, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 41, i16 20, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 48, i16 20, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 56, i16 20, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 62, i16 20, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 43, i16 22, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 48, i16 22, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 58, i16 22, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 62, i16 22, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 47, i16 26, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 48, i16 26, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 62, i16 26, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 48, i16 27, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 63, i16 27, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 49, i16 28, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 64, i16 28, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 50, i16 29, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 64, i16 29, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 41, i16 20, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 48, i16 20, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 56, i16 20, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 62, i16 20, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 43, i16 22, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 48, i16 22, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 58, i16 22, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 62, i16 22, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 47, i16 26, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 48, i16 26, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 62, i16 26, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 48, i16 27, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 63, i16 27, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 49, i16 28, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 64, i16 28, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 50, i16 29, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 64, i16 29, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 41, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 56, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 62, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 43, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 58, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 62, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 26, i16 47, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 26, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 26, i16 62, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 27, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 27, i16 63, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 28, i16 49, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 28, i16 64, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 29, i16 50, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 29, i16 64, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 49, i16 64, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 63, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 41, i16 56, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 43, i16 58, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 47, i16 62, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl16getCastInstrCostEjPNS_4TypeES2_NS_19TargetTransformInfo15CastContextHintENS3_14TargetCostKindEPKNS_11InstructionEE21AVX512DQConversionTbl = internal unnamed_addr constant [32 x %"struct.llvm::TypeConversionCostTblEntryT"] [%"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 94, i16 20, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 73, i16 20, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 73, i16 22, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 96, i16 22, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 77, i16 26, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 97, i16 27, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 97, i16 26, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 82, i16 27, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 94, i16 20, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 73, i16 20, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 73, i16 22, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 96, i16 22, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 77, i16 26, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 97, i16 27, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 97, i16 26, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 82, i16 27, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 94, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 73, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 73, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 96, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 26, i16 77, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 26, i16 97, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 27, i16 82, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 27, i16 97, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 140, i16 97, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 157, i16 97, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 140, i16 97, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 157, i16 97, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 97, i16 140, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 97, i16 157, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 97, i16 140, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 97, i16 157, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl16getCastInstrCostEjPNS_4TypeES2_NS_19TargetTransformInfo15CastContextHintENS3_14TargetCostKindEPKNS_11InstructionEE20AVX512FConversionTbl = internal unnamed_addr constant [121 x %"struct.llvm::TypeConversionCostTblEntryT"] [%"struct.llvm::TypeConversionCostTblEntryT" { i16 247, i16 157, i16 140, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 247, i16 157, i16 145, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 247, i16 158, i16 145, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 247, i16 145, i16 113, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 247, i16 157, i16 112, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 244, i16 140, i16 157, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 244, i16 113, i16 145, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 41, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 43, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 26, i16 47, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 27, i16 48, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 56, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 58, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 26, i16 62, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 27, i16 63, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 71, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 73, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 26, i16 77, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 27, i16 82, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 94, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 96, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 26, i16 97, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 41, i16 71, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 43, i16 73, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 82, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 49, i16 82, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 50, i16 82, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 63, i16 82, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 64, i16 82, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 41, i16 94, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 56, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 47, i16 97, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 97, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 49, i16 97, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 50, i16 97, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 62, i16 97, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 63, i16 97, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 64, i16 97, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 77, i16 97, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 73, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 98, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 63, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 49, i16 64, %struct.CostKindCosts { i32 8, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 50, i16 64, %struct.CostKindCosts { i32 8, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 41, i16 20, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 41, i16 20, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 43, i16 22, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 43, i16 22, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 47, i16 26, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 47, i16 26, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 48, i16 27, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 48, i16 27, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 56, i16 20, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 56, i16 20, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 58, i16 22, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 58, i16 22, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 62, i16 26, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 62, i16 26, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 63, i16 27, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 63, i16 27, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 71, i16 20, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 71, i16 20, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 73, i16 22, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 73, i16 22, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 77, i16 26, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 77, i16 26, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 94, i16 20, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 94, i16 20, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 96, i16 22, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 96, i16 22, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 82, i16 27, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 82, i16 27, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 97, i16 26, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 97, i16 26, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 82, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 82, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 82, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 82, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 97, i16 47, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 97, i16 47, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 97, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 97, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 97, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 97, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 64, i16 49, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 64, i16 49, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 157, i16 26, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 145, i16 27, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 157, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 145, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 157, i16 62, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 145, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 157, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 145, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 157, i16 26, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 145, i16 27, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 157, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 145, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 157, i16 62, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 145, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 157, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 145, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 140, i16 97, %struct.CostKindCosts { i32 26, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 157, i16 97, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 48, i16 145, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 48, i16 158, %struct.CostKindCosts { i32 7, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 49, i16 159, %struct.CostKindCosts { i32 15, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 50, i16 147, %struct.CostKindCosts { i32 11, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 50, i16 160, %struct.CostKindCosts { i32 31, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 62, i16 157, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 63, i16 158, %struct.CostKindCosts { i32 7, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 64, i16 146, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 64, i16 159, %struct.CostKindCosts { i32 15, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 77, i16 157, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 82, i16 158, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 77, i16 157, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 62, i16 157, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 47, i16 157, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 82, i16 145, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 63, i16 145, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 48, i16 145, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl16getCastInstrCostEjPNS_4TypeES2_NS_19TargetTransformInfo15CastContextHintENS3_14TargetCostKindEPKNS_11InstructionEE23AVX512BWVLConversionTbl = internal unnamed_addr constant [52 x %"struct.llvm::TypeConversionCostTblEntryT"] [%"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 41, i16 20, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 48, i16 20, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 56, i16 20, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 62, i16 20, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 58, i16 22, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 48, i16 22, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 43, i16 22, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 62, i16 22, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 47, i16 26, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 48, i16 26, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 62, i16 26, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 48, i16 27, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 63, i16 27, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 49, i16 28, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 63, i16 28, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 49, i16 29, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 63, i16 29, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 41, i16 20, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 48, i16 20, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 56, i16 20, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 62, i16 20, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 43, i16 22, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 48, i16 22, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 58, i16 22, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 62, i16 22, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 47, i16 26, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 48, i16 26, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 62, i16 26, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 48, i16 27, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 63, i16 27, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 49, i16 28, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 63, i16 28, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 49, i16 29, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 63, i16 29, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 41, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 56, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 62, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 43, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 58, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 62, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 26, i16 47, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 26, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 26, i16 62, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 27, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 27, i16 63, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 28, i16 49, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 28, i16 63, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 29, i16 49, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 29, i16 63, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 63, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl16getCastInstrCostEjPNS_4TypeES2_NS_19TargetTransformInfo15CastContextHintENS3_14TargetCostKindEPKNS_11InstructionEE23AVX512DQVLConversionTbl = internal unnamed_addr constant [40 x %"struct.llvm::TypeConversionCostTblEntryT"] [%"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 94, i16 20, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 73, i16 20, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 73, i16 22, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 96, i16 27, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 96, i16 22, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 96, i16 26, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 77, i16 27, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 77, i16 26, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 94, i16 20, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 73, i16 20, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 73, i16 22, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 96, i16 27, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 96, i16 22, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 96, i16 26, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 77, i16 27, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 77, i16 26, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 27, i16 96, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 27, i16 77, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 94, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 73, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 73, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 96, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 26, i16 96, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 26, i16 77, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 134, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 154, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 136, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 156, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 134, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 154, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 136, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 156, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 94, i16 136, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 96, i16 136, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 94, i16 154, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 96, i16 156, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 94, i16 136, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 96, i16 136, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 94, i16 154, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 96, i16 156, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl16getCastInstrCostEjPNS_4TypeES2_NS_19TargetTransformInfo15CastContextHintENS3_14TargetCostKindEPKNS_11InstructionEE21AVX512VLConversionTbl = internal unnamed_addr constant [85 x %"struct.llvm::TypeConversionCostTblEntryT"] [%"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 41, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 43, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 26, i16 47, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 27, i16 48, %struct.CostKindCosts { i32 8, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 56, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 58, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 26, i16 62, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 27, i16 63, %struct.CostKindCosts { i32 8, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 71, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 73, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 26, i16 77, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 27, i16 77, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 94, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 96, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 73, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 43, i16 96, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 58, i16 96, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 47, i16 77, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 41, i16 20, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 41, i16 20, %struct.CostKindCosts { i32 6, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 43, i16 22, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 43, i16 22, %struct.CostKindCosts { i32 6, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 47, i16 26, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 47, i16 26, %struct.CostKindCosts { i32 6, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 48, i16 27, %struct.CostKindCosts { i32 10, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 48, i16 27, %struct.CostKindCosts { i32 12, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 56, i16 20, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 56, i16 20, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 58, i16 22, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 58, i16 22, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 62, i16 26, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 62, i16 26, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 63, i16 27, %struct.CostKindCosts { i32 10, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 63, i16 27, %struct.CostKindCosts { i32 12, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 71, i16 20, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 71, i16 20, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 73, i16 22, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 73, i16 22, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 77, i16 26, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 77, i16 26, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 77, i16 27, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 77, i16 27, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 94, i16 20, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 94, i16 20, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 96, i16 22, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 96, i16 22, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 96, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 96, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 77, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 77, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 63, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 63, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 96, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 96, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 77, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 77, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 96, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 96, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 154, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 140, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 154, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 140, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 14, i16 8, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 15, i16 8, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 154, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 140, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 154, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 140, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 134, i16 71, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 136, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 156, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 140, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 134, i16 94, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 154, i16 94, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 156, i16 96, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 48, i16 140, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 48, i16 145, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 49, i16 146, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 8, i16 14, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 8, i16 15, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 73, i16 136, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 73, i16 154, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 73, i16 156, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 77, i16 140, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 77, i16 157, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl16getCastInstrCostEjPNS_4TypeES2_NS_19TargetTransformInfo15CastContextHintENS3_14TargetCostKindEPKNS_11InstructionEE17AVX2ConversionTbl = internal unnamed_addr constant [64 x %"struct.llvm::TypeConversionCostTblEntryT"] [%"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 96, i16 22, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 96, i16 22, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 77, i16 26, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 77, i16 26, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 63, i16 27, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 63, i16 27, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 96, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 96, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 77, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 77, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 63, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 63, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 96, i16 62, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 96, i16 62, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 77, i16 62, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 77, i16 62, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 82, i16 63, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 82, i16 63, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 96, i16 73, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 96, i16 73, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 26, i16 77, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 63, i16 82, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 82, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 77, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 96, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 62, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 62, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 62, i16 96, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 73, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 62, i16 77, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 247, i16 157, i16 140, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 244, i16 140, i16 157, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 63, i16 140, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 73, i16 156, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 77, i16 140, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 77, i16 157, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 8, i16 14, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 8, i16 15, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 63, i16 140, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 73, i16 136, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 73, i16 154, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 73, i16 156, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 77, i16 140, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 77, i16 156, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 154, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 140, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 154, i16 62, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 140, i16 62, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 156, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 140, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 157, i16 77, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 154, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 140, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 154, i16 62, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 140, i16 62, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 134, i16 71, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 154, i16 71, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 136, i16 73, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 156, i16 73, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 140, i16 77, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 157, i16 77, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl16getCastInstrCostEjPNS_4TypeES2_NS_19TargetTransformInfo15CastContextHintENS3_14TargetCostKindEPKNS_11InstructionEE16AVXConversionTbl = internal constant [86 x %"struct.llvm::TypeConversionCostTblEntryT"] [%"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 96, i16 22, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 96, i16 22, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 77, i16 26, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 77, i16 26, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 63, i16 27, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 63, i16 27, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 96, i16 48, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 96, i16 48, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 77, i16 48, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 77, i16 48, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 63, i16 48, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 63, i16 48, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 96, i16 62, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 96, i16 62, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 77, i16 62, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 77, i16 62, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 96, i16 73, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 96, i16 73, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 96, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 26, i16 77, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 27, i16 63, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 26, i16 97, %struct.CostKindCosts { i32 9, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 27, i16 98, %struct.CostKindCosts { i32 11, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 63, i16 82, %struct.CostKindCosts { i32 6, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 82, %struct.CostKindCosts { i32 6, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 63, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 77, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 62, i16 77, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 96, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 62, i16 96, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 73, i16 96, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 136, i16 22, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 156, i16 22, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 140, i16 26, %struct.CostKindCosts { i32 8, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 140, i16 48, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 156, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 140, i16 62, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 156, i16 62, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 156, i16 73, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 140, i16 77, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 157, i16 77, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 136, i16 94, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 136, i16 96, %struct.CostKindCosts { i32 8, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 136, i16 22, %struct.CostKindCosts { i32 7, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 156, i16 22, %struct.CostKindCosts { i32 7, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 140, i16 26, %struct.CostKindCosts { i32 6, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 140, i16 48, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 156, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 140, i16 62, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 156, i16 62, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 134, i16 71, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 154, i16 71, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 136, i16 73, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 156, i16 73, %struct.CostKindCosts { i32 6, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 140, i16 77, %struct.CostKindCosts { i32 8, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 157, i16 77, %struct.CostKindCosts { i32 10, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 134, i16 94, %struct.CostKindCosts { i32 10, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 136, i16 96, %struct.CostKindCosts { i32 18, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 154, i16 94, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 156, i16 96, %struct.CostKindCosts { i32 10, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 48, i16 140, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 48, i16 156, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 49, i16 140, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 49, i16 156, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 62, i16 140, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 62, i16 156, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 63, i16 140, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 63, i16 156, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 73, i16 156, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 77, i16 140, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 77, i16 157, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 48, i16 140, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 48, i16 156, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 49, i16 140, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 49, i16 156, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 62, i16 140, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 62, i16 156, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 63, i16 140, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 63, i16 156, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 73, i16 136, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 73, i16 154, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 73, i16 156, %struct.CostKindCosts { i32 6, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 77, i16 140, %struct.CostKindCosts { i32 7, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 77, i16 156, %struct.CostKindCosts { i32 7, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 247, i16 156, i16 136, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 244, i16 136, i16 156, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl16getCastInstrCostEjPNS_4TypeES2_NS_19TargetTransformInfo15CastContextHintENS3_14TargetCostKindEPKNS_11InstructionEE18SSE41ConversionTbl = internal constant [63 x %"struct.llvm::TypeConversionCostTblEntryT"] [%"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 94, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 94, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 73, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 73, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 62, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 62, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 94, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 94, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 73, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 73, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 94, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 94, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 41, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 56, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 43, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 73, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 62, i16 73, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 94, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 14, i16 7, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 15, i16 7, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 14, i16 8, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 15, i16 8, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 136, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 154, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 136, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 154, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 136, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 154, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 156, i16 73, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 14, i16 7, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 15, i16 7, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 14, i16 8, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 15, i16 8, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 136, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 154, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 136, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 154, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 134, i16 71, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 136, i16 73, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 154, i16 73, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 136, i16 94, %struct.CostKindCosts { i32 12, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 136, i16 96, %struct.CostKindCosts { i32 22, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 154, i16 94, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 7, i16 14, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 8, i16 14, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 7, i16 15, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 8, i16 15, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 48, i16 136, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 48, i16 154, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 62, i16 136, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 62, i16 154, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 73, i16 136, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 73, i16 154, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 7, i16 14, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 8, i16 14, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 7, i16 15, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 8, i16 15, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 48, i16 136, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 48, i16 154, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 62, i16 136, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 62, i16 154, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 73, i16 136, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 73, i16 154, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl16getCastInstrCostEjPNS_4TypeES2_NS_19TargetTransformInfo15CastContextHintENS3_14TargetCostKindEPKNS_11InstructionEE17SSE2ConversionTbl = internal constant [74 x %"struct.llvm::TypeConversionCostTblEntryT"] [%"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 14, i16 7, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 15, i16 7, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 14, i16 8, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 15, i16 8, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 136, i16 48, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 154, i16 48, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 136, i16 62, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 154, i16 62, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 136, i16 73, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 154, i16 73, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 136, i16 94, %struct.CostKindCosts { i32 8, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 234, i16 154, i16 94, %struct.CostKindCosts { i32 8, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 14, i16 7, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 15, i16 7, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 14, i16 8, %struct.CostKindCosts { i32 8, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 15, i16 8, %struct.CostKindCosts { i32 9, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 154, i16 48, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 136, i16 48, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 136, i16 62, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 154, i16 62, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 134, i16 71, %struct.CostKindCosts { i32 7, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 154, i16 73, %struct.CostKindCosts { i32 7, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 136, i16 73, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 154, i16 94, %struct.CostKindCosts { i32 15, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 235, i16 136, i16 94, %struct.CostKindCosts { i32 18, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 7, i16 14, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 8, i16 14, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 7, i16 15, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 8, i16 15, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 48, i16 136, %struct.CostKindCosts { i32 6, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 48, i16 154, %struct.CostKindCosts { i32 6, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 62, i16 136, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 62, i16 154, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 73, i16 136, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 240, i16 73, i16 154, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 7, i16 14, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 8, i16 14, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 7, i16 15, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 8, i16 15, %struct.CostKindCosts { i32 15, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 48, i16 136, %struct.CostKindCosts { i32 6, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 48, i16 154, %struct.CostKindCosts { i32 6, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 62, i16 136, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 62, i16 154, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 73, i16 136, %struct.CostKindCosts { i32 8, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 241, i16 73, i16 154, %struct.CostKindCosts { i32 8, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 94, i16 48, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 94, i16 48, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 73, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 73, i16 48, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 62, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 62, i16 48, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 94, i16 62, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 94, i16 62, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 73, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 73, i16 62, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 228, i16 94, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 227, i16 94, i16 73, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 71, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 56, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 20, i16 41, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 58, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 22, i16 43, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 26, i16 47, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 62, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 63, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 73, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 82, %struct.CostKindCosts { i32 7, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 56, i16 71, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 62, i16 73, %struct.CostKindCosts { i32 3, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 62, i16 77, %struct.CostKindCosts { i32 5, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 63, i16 82, %struct.CostKindCosts { i32 10, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 48, i16 94, %struct.CostKindCosts { i32 4, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 62, i16 94, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 230, i16 73, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl16getCastInstrCostEjPNS_4TypeES2_NS_19TargetTransformInfo15CastContextHintENS3_14TargetCostKindEPKNS_11InstructionEE16F16ConversionTbl = internal unnamed_addr constant [8 x %"struct.llvm::TypeConversionCostTblEntryT"] [%"struct.llvm::TypeConversionCostTblEntryT" { i16 244, i16 13, i16 14, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 244, i16 112, i16 140, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 244, i16 108, i16 136, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 247, i16 14, i16 13, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 247, i16 15, i16 13, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 247, i16 140, i16 112, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 247, i16 136, i16 108, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::TypeConversionCostTblEntryT" { i16 247, i16 156, i16 108, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionEE10SLMCostTbl = internal unnamed_addr constant [7 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 222, i16 94, %struct.CostKindCosts { i32 2, i32 5, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 154, %struct.CostKindCosts { i32 4, i32 4, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 136, %struct.CostKindCosts { i32 4, i32 4, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 94, %struct.CostKindCosts { i32 4, i32 4, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 77, %struct.CostKindCosts { i32 4, i32 4, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 62, %struct.CostKindCosts { i32 4, i32 4, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 48, %struct.CostKindCosts { i32 4, i32 4, i32 1, i32 3 } }], align 16
@_ZZNK4llvm10X86TTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionEE15AVX512BWCostTbl = internal unnamed_addr constant [6 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 222, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 50, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 50, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionEE13AVX512CostTbl = internal constant [31 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 222, i16 157, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 156, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 145, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 140, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 97, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 64, %struct.CostKindCosts { i32 3, i32 7, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 50, %struct.CostKindCosts { i32 3, i32 7, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 97, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 157, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 156, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 154, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 15, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 145, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 140, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 136, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 14, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 64, %struct.CostKindCosts { i32 2, i32 2, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 50, %struct.CostKindCosts { i32 2, i32 2, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionEE11AVX2CostTbl = internal constant [16 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 222, i16 156, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 154, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 15, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 140, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 136, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 14, %struct.CostKindCosts { i32 1, i32 4, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 156, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 140, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 96, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 77, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 63, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 49, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }], align 16
@_ZZNK4llvm10X86TTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionEE10XOPCostTbl = internal unnamed_addr constant [2 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 222, i16 96, %struct.CostKindCosts { i32 4, i32 2, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionEE11AVX1CostTbl = internal constant [16 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 222, i16 156, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 154, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 15, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 140, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 136, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 14, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 96, %struct.CostKindCosts { i32 4, i32 2, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 77, %struct.CostKindCosts { i32 4, i32 2, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 63, %struct.CostKindCosts { i32 4, i32 2, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 49, %struct.CostKindCosts { i32 4, i32 2, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 156, %struct.CostKindCosts { i32 3, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 140, %struct.CostKindCosts { i32 3, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 96, %struct.CostKindCosts { i32 3, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 77, %struct.CostKindCosts { i32 3, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 63, %struct.CostKindCosts { i32 3, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 49, %struct.CostKindCosts { i32 3, i32 3, i32 3, i32 3 } }], align 16
@_ZZNK4llvm10X86TTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionEE12SSE42CostTbl = internal unnamed_addr constant [1 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 222, i16 94, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 2 } }], align 16
@_ZZNK4llvm10X86TTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionEE12SSE41CostTbl = internal constant [10 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 222, i16 154, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 136, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 154, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 15, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 136, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 14, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 94, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 73, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 62, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 48, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }], align 16
@_ZZNK4llvm10X86TTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionEE11SSE2CostTbl = internal unnamed_addr constant [12 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 222, i16 154, %struct.CostKindCosts { i32 2, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 15, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 94, %struct.CostKindCosts { i32 5, i32 4, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 154, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 15, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 94, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 73, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 62, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 48, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 3 } }], align 16
@_ZZNK4llvm10X86TTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionEE11SSE1CostTbl = internal unnamed_addr constant [4 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 222, i16 136, %struct.CostKindCosts { i32 2, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 222, i16 14, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 136, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 219, i16 14, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 3 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE18AVX512VBMI2CostTbl = internal constant [18 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 203, i16 97, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 203, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 203, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 203, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 203, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 203, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 203, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 203, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 203, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE19AVX512BITALGCostTbl = internal unnamed_addr constant [6 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 213, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 50, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE22AVX512VPOPCNTDQCostTbl = internal unnamed_addr constant [6 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 213, i16 97, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE15AVX512CDCostTbl = internal constant [18 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 212, i16 97, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 82, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 64, %struct.CostKindCosts { i32 18, i32 27, i32 23, i32 27 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 50, %struct.CostKindCosts { i32 3, i32 16, i32 9, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 96, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 77, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 63, %struct.CostKindCosts { i32 8, i32 19, i32 11, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 49, %struct.CostKindCosts { i32 2, i32 11, i32 9, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 94, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 73, %struct.CostKindCosts { i32 1, i32 5, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 62, %struct.CostKindCosts { i32 3, i32 15, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 48, %struct.CostKindCosts { i32 2, i32 10, i32 9, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 97, %struct.CostKindCosts { i32 2, i32 8, i32 6, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 82, %struct.CostKindCosts { i32 2, i32 8, i32 6, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 96, %struct.CostKindCosts { i32 1, i32 8, i32 6, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 77, %struct.CostKindCosts { i32 1, i32 8, i32 6, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 94, %struct.CostKindCosts { i32 1, i32 8, i32 6, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 73, %struct.CostKindCosts { i32 1, i32 8, i32 6, i32 6 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE15AVX512BWCostTbl = internal unnamed_addr constant [83 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 196, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 50, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 94, %struct.CostKindCosts { i32 3, i32 10, i32 10, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 96, %struct.CostKindCosts { i32 3, i32 11, i32 10, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 97, %struct.CostKindCosts { i32 3, i32 12, i32 10, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 73, %struct.CostKindCosts { i32 3, i32 10, i32 10, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 77, %struct.CostKindCosts { i32 3, i32 11, i32 10, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 82, %struct.CostKindCosts { i32 3, i32 12, i32 10, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 62, %struct.CostKindCosts { i32 3, i32 10, i32 10, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 63, %struct.CostKindCosts { i32 3, i32 11, i32 10, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 64, %struct.CostKindCosts { i32 3, i32 12, i32 10, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 48, %struct.CostKindCosts { i32 2, i32 5, i32 9, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 49, %struct.CostKindCosts { i32 2, i32 5, i32 9, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 50, %struct.CostKindCosts { i32 2, i32 5, i32 9, i32 12 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 97, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 97, %struct.CostKindCosts { i32 8, i32 22, i32 23, i32 23 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 82, %struct.CostKindCosts { i32 8, i32 23, i32 25, i32 25 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 64, %struct.CostKindCosts { i32 4, i32 15, i32 15, i32 16 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 50, %struct.CostKindCosts { i32 3, i32 12, i32 10, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 94, %struct.CostKindCosts { i32 3, i32 7, i32 10, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 96, %struct.CostKindCosts { i32 3, i32 7, i32 10, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 97, %struct.CostKindCosts { i32 3, i32 8, i32 10, i32 12 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 73, %struct.CostKindCosts { i32 7, i32 11, i32 14, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 77, %struct.CostKindCosts { i32 7, i32 11, i32 14, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 82, %struct.CostKindCosts { i32 7, i32 12, i32 14, i32 16 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 62, %struct.CostKindCosts { i32 2, i32 7, i32 11, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 63, %struct.CostKindCosts { i32 2, i32 7, i32 11, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 64, %struct.CostKindCosts { i32 3, i32 7, i32 11, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 48, %struct.CostKindCosts { i32 2, i32 4, i32 8, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 49, %struct.CostKindCosts { i32 2, i32 4, i32 8, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 50, %struct.CostKindCosts { i32 2, i32 5, i32 8, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 62, %struct.CostKindCosts { i32 3, i32 9, i32 14, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 63, %struct.CostKindCosts { i32 3, i32 9, i32 14, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 64, %struct.CostKindCosts { i32 3, i32 10, i32 14, i32 16 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 48, %struct.CostKindCosts { i32 2, i32 6, i32 11, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 49, %struct.CostKindCosts { i32 2, i32 6, i32 11, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 50, %struct.CostKindCosts { i32 3, i32 7, i32 11, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 64, %struct.CostKindCosts { i32 2, i32 8, i32 6, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 63, %struct.CostKindCosts { i32 2, i32 8, i32 6, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 62, %struct.CostKindCosts { i32 2, i32 7, i32 6, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 50, %struct.CostKindCosts { i32 5, i32 6, i32 11, i32 12 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 49, %struct.CostKindCosts { i32 5, i32 15, i32 7, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 48, %struct.CostKindCosts { i32 5, i32 15, i32 7, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 64, %struct.CostKindCosts { i32 2, i32 8, i32 6, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 63, %struct.CostKindCosts { i32 2, i32 8, i32 6, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 62, %struct.CostKindCosts { i32 2, i32 7, i32 6, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 50, %struct.CostKindCosts { i32 5, i32 6, i32 12, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 49, %struct.CostKindCosts { i32 5, i32 14, i32 6, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 48, %struct.CostKindCosts { i32 5, i32 14, i32 6, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 64, %struct.CostKindCosts { i32 2, i32 5, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 63, %struct.CostKindCosts { i32 1, i32 5, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 62, %struct.CostKindCosts { i32 1, i32 5, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 50, %struct.CostKindCosts { i32 2, i32 9, i32 3, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 49, %struct.CostKindCosts { i32 1, i32 9, i32 3, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 48, %struct.CostKindCosts { i32 1, i32 8, i32 3, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 50, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 50, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 50, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 64, %struct.CostKindCosts { i32 3, i32 6, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 50, %struct.CostKindCosts { i32 8, i32 21, i32 17, i32 18 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 64, %struct.CostKindCosts { i32 2, i32 5, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 50, %struct.CostKindCosts { i32 8, i32 15, i32 15, i32 16 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 50, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 50, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 50, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 50, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 64, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 50, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE13AVX512CostTbl = internal unnamed_addr constant [125 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 196, i16 97, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 64, %struct.CostKindCosts { i32 2, i32 7, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 50, %struct.CostKindCosts { i32 2, i32 7, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 97, %struct.CostKindCosts { i32 9, i32 13, i32 20, i32 20 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 82, %struct.CostKindCosts { i32 9, i32 13, i32 20, i32 20 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 64, %struct.CostKindCosts { i32 9, i32 13, i32 20, i32 20 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 50, %struct.CostKindCosts { i32 6, i32 11, i32 17, i32 17 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 97, %struct.CostKindCosts { i32 4, i32 7, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 82, %struct.CostKindCosts { i32 4, i32 7, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 64, %struct.CostKindCosts { i32 4, i32 7, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 97, %struct.CostKindCosts { i32 10, i32 28, i32 32, i32 32 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 82, %struct.CostKindCosts { i32 12, i32 30, i32 38, i32 38 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 64, %struct.CostKindCosts { i32 8, i32 15, i32 29, i32 29 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 50, %struct.CostKindCosts { i32 6, i32 11, i32 19, i32 19 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 97, %struct.CostKindCosts { i32 16, i32 16, i32 19, i32 19 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 82, %struct.CostKindCosts { i32 24, i32 19, i32 27, i32 27 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 64, %struct.CostKindCosts { i32 18, i32 15, i32 22, i32 22 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 50, %struct.CostKindCosts { i32 12, i32 11, i32 16, i32 16 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 97, %struct.CostKindCosts { i32 2, i32 8, i32 6, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 82, %struct.CostKindCosts { i32 2, i32 8, i32 6, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 64, %struct.CostKindCosts { i32 7, i32 17, i32 27, i32 27 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 50, %struct.CostKindCosts { i32 6, i32 13, i32 21, i32 21 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 97, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 97, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 97, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 96, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 94, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 94, %struct.CostKindCosts { i32 3, i32 3, i32 8, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 96, %struct.CostKindCosts { i32 2, i32 2, i32 6, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 97, %struct.CostKindCosts { i32 3, i32 3, i32 6, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 73, %struct.CostKindCosts { i32 2, i32 2, i32 6, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 77, %struct.CostKindCosts { i32 2, i32 2, i32 6, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 82, %struct.CostKindCosts { i32 3, i32 3, i32 6, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 64, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 50, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 97, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 64, %struct.CostKindCosts { i32 3, i32 7, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 50, %struct.CostKindCosts { i32 3, i32 7, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 96, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 94, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 97, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 64, %struct.CostKindCosts { i32 3, i32 7, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 50, %struct.CostKindCosts { i32 3, i32 7, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 96, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 94, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 97, %struct.CostKindCosts { i32 44, i32 44, i32 81, i32 93 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 82, %struct.CostKindCosts { i32 5, i32 12, i32 9, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 64, %struct.CostKindCosts { i32 6, i32 12, i32 17, i32 17 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 50, %struct.CostKindCosts { i32 22, i32 28, i32 42, i32 42 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 94, %struct.CostKindCosts { i32 2, i32 13, i32 9, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 96, %struct.CostKindCosts { i32 2, i32 15, i32 7, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 97, %struct.CostKindCosts { i32 2, i32 14, i32 7, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 73, %struct.CostKindCosts { i32 2, i32 14, i32 7, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 77, %struct.CostKindCosts { i32 2, i32 15, i32 7, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 82, %struct.CostKindCosts { i32 2, i32 14, i32 7, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 64, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 50, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 97, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 64, %struct.CostKindCosts { i32 3, i32 7, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 50, %struct.CostKindCosts { i32 3, i32 7, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 96, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 94, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 97, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 82, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 64, %struct.CostKindCosts { i32 3, i32 7, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 50, %struct.CostKindCosts { i32 3, i32 7, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 96, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 94, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 97, %struct.CostKindCosts { i32 52, i32 52, i32 95, i32 104 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 82, %struct.CostKindCosts { i32 5, i32 12, i32 8, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 64, %struct.CostKindCosts { i32 5, i32 13, i32 16, i32 16 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 50, %struct.CostKindCosts { i32 18, i32 24, i32 30, i32 30 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 94, %struct.CostKindCosts { i32 1, i32 4, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 96, %struct.CostKindCosts { i32 1, i32 4, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 97, %struct.CostKindCosts { i32 1, i32 4, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 73, %struct.CostKindCosts { i32 1, i32 2, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 77, %struct.CostKindCosts { i32 1, i32 2, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 82, %struct.CostKindCosts { i32 2, i32 2, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 64, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 50, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 94, %struct.CostKindCosts { i32 1, i32 4, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 96, %struct.CostKindCosts { i32 1, i32 4, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 97, %struct.CostKindCosts { i32 1, i32 4, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 77, %struct.CostKindCosts { i32 1, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 82, %struct.CostKindCosts { i32 1, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 64, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 50, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 14, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 136, %struct.CostKindCosts { i32 1, i32 1, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 140, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 145, %struct.CostKindCosts { i32 4, i32 4, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 15, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 154, %struct.CostKindCosts { i32 1, i32 1, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 156, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 157, %struct.CostKindCosts { i32 3, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 14, %struct.CostKindCosts { i32 3, i32 12, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 136, %struct.CostKindCosts { i32 3, i32 12, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 140, %struct.CostKindCosts { i32 6, i32 12, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 145, %struct.CostKindCosts { i32 12, i32 20, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 15, %struct.CostKindCosts { i32 6, i32 18, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 154, %struct.CostKindCosts { i32 6, i32 18, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 156, %struct.CostKindCosts { i32 12, i32 18, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 157, %struct.CostKindCosts { i32 24, i32 32, i32 1, i32 3 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE10XOPCostTbl = internal constant [36 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 214, i16 96, %struct.CostKindCosts { i32 3, i32 6, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 77, %struct.CostKindCosts { i32 3, i32 6, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 63, %struct.CostKindCosts { i32 3, i32 6, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 49, %struct.CostKindCosts { i32 3, i32 6, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 94, %struct.CostKindCosts { i32 2, i32 7, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 73, %struct.CostKindCosts { i32 2, i32 7, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 62, %struct.CostKindCosts { i32 2, i32 7, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 48, %struct.CostKindCosts { i32 2, i32 7, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 8, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 7, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 6, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 5, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 96, %struct.CostKindCosts { i32 4, i32 7, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 77, %struct.CostKindCosts { i32 4, i32 7, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 63, %struct.CostKindCosts { i32 4, i32 7, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 49, %struct.CostKindCosts { i32 4, i32 7, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 94, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 73, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 62, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 48, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 96, %struct.CostKindCosts { i32 4, i32 7, i32 8, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 77, %struct.CostKindCosts { i32 4, i32 7, i32 8, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 63, %struct.CostKindCosts { i32 4, i32 7, i32 8, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 49, %struct.CostKindCosts { i32 4, i32 7, i32 8, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 94, %struct.CostKindCosts { i32 1, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 73, %struct.CostKindCosts { i32 1, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 62, %struct.CostKindCosts { i32 1, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 48, %struct.CostKindCosts { i32 1, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 96, %struct.CostKindCosts { i32 4, i32 7, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 77, %struct.CostKindCosts { i32 4, i32 7, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 63, %struct.CostKindCosts { i32 4, i32 7, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 49, %struct.CostKindCosts { i32 4, i32 7, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 94, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 73, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 62, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 48, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE11AVX2CostTbl = internal unnamed_addr constant [116 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 196, i16 94, %struct.CostKindCosts { i32 2, i32 4, i32 3, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 96, %struct.CostKindCosts { i32 2, i32 4, i32 3, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 94, %struct.CostKindCosts { i32 3, i32 11, i32 10, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 96, %struct.CostKindCosts { i32 5, i32 11, i32 10, i32 17 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 73, %struct.CostKindCosts { i32 3, i32 11, i32 10, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 77, %struct.CostKindCosts { i32 5, i32 11, i32 10, i32 17 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 62, %struct.CostKindCosts { i32 3, i32 11, i32 10, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 63, %struct.CostKindCosts { i32 5, i32 11, i32 10, i32 17 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 48, %struct.CostKindCosts { i32 3, i32 6, i32 9, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 49, %struct.CostKindCosts { i32 4, i32 5, i32 9, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 94, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 96, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 73, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 77, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 62, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 63, %struct.CostKindCosts { i32 1, i32 3, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 94, %struct.CostKindCosts { i32 7, i32 18, i32 24, i32 25 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 96, %struct.CostKindCosts { i32 14, i32 18, i32 24, i32 44 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 73, %struct.CostKindCosts { i32 5, i32 16, i32 19, i32 20 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 77, %struct.CostKindCosts { i32 10, i32 16, i32 19, i32 34 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 62, %struct.CostKindCosts { i32 4, i32 13, i32 14, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 63, %struct.CostKindCosts { i32 6, i32 14, i32 14, i32 24 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 48, %struct.CostKindCosts { i32 3, i32 12, i32 9, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 49, %struct.CostKindCosts { i32 4, i32 12, i32 9, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 94, %struct.CostKindCosts { i32 3, i32 9, i32 10, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 96, %struct.CostKindCosts { i32 4, i32 9, i32 10, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 73, %struct.CostKindCosts { i32 7, i32 12, i32 14, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 77, %struct.CostKindCosts { i32 7, i32 12, i32 14, i32 18 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 62, %struct.CostKindCosts { i32 3, i32 7, i32 11, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 63, %struct.CostKindCosts { i32 6, i32 8, i32 11, i32 18 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 48, %struct.CostKindCosts { i32 2, i32 5, i32 8, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 49, %struct.CostKindCosts { i32 3, i32 5, i32 8, i32 12 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 94, %struct.CostKindCosts { i32 4, i32 11, i32 13, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 96, %struct.CostKindCosts { i32 5, i32 11, i32 13, i32 20 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 73, %struct.CostKindCosts { i32 7, i32 14, i32 17, i32 17 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 77, %struct.CostKindCosts { i32 7, i32 15, i32 17, i32 24 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 62, %struct.CostKindCosts { i32 4, i32 9, i32 14, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 63, %struct.CostKindCosts { i32 6, i32 9, i32 14, i32 24 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 48, %struct.CostKindCosts { i32 3, i32 7, i32 11, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 49, %struct.CostKindCosts { i32 5, i32 7, i32 11, i32 18 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 94, %struct.CostKindCosts { i32 4, i32 13, i32 8, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 96, %struct.CostKindCosts { i32 3, i32 10, i32 8, i32 12 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 73, %struct.CostKindCosts { i32 2, i32 6, i32 7, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 77, %struct.CostKindCosts { i32 4, i32 6, i32 7, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 94, %struct.CostKindCosts { i32 2, i32 7, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 96, %struct.CostKindCosts { i32 2, i32 7, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 94, %struct.CostKindCosts { i32 2, i32 7, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 96, %struct.CostKindCosts { i32 2, i32 7, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 96, %struct.CostKindCosts { i32 20, i32 20, i32 33, i32 37 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 94, %struct.CostKindCosts { i32 8, i32 8, i32 13, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 77, %struct.CostKindCosts { i32 8, i32 20, i32 13, i32 24 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 73, %struct.CostKindCosts { i32 5, i32 15, i32 11, i32 12 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 63, %struct.CostKindCosts { i32 4, i32 14, i32 8, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 62, %struct.CostKindCosts { i32 3, i32 9, i32 6, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 49, %struct.CostKindCosts { i32 9, i32 15, i32 18, i32 35 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 48, %struct.CostKindCosts { i32 6, i32 22, i32 14, i32 21 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 94, %struct.CostKindCosts { i32 4, i32 13, i32 9, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 96, %struct.CostKindCosts { i32 4, i32 15, i32 9, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 73, %struct.CostKindCosts { i32 3, i32 14, i32 9, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 77, %struct.CostKindCosts { i32 4, i32 15, i32 9, i32 16 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 94, %struct.CostKindCosts { i32 2, i32 8, i32 6, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 96, %struct.CostKindCosts { i32 3, i32 8, i32 6, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 77, %struct.CostKindCosts { i32 2, i32 2, i32 4, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 94, %struct.CostKindCosts { i32 2, i32 8, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 96, %struct.CostKindCosts { i32 2, i32 8, i32 5, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 94, %struct.CostKindCosts { i32 2, i32 8, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 96, %struct.CostKindCosts { i32 2, i32 8, i32 5, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 77, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 96, %struct.CostKindCosts { i32 24, i32 24, i32 39, i32 43 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 94, %struct.CostKindCosts { i32 10, i32 10, i32 15, i32 19 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 77, %struct.CostKindCosts { i32 8, i32 11, i32 13, i32 23 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 73, %struct.CostKindCosts { i32 5, i32 12, i32 11, i32 12 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 63, %struct.CostKindCosts { i32 4, i32 6, i32 8, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 62, %struct.CostKindCosts { i32 2, i32 8, i32 6, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 49, %struct.CostKindCosts { i32 9, i32 13, i32 17, i32 33 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 48, %struct.CostKindCosts { i32 6, i32 19, i32 13, i32 20 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 94, %struct.CostKindCosts { i32 2, i32 7, i32 6, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 96, %struct.CostKindCosts { i32 3, i32 7, i32 6, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 77, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 63, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 49, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 14, %struct.CostKindCosts { i32 2, i32 7, i32 3, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 136, %struct.CostKindCosts { i32 2, i32 7, i32 3, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 140, %struct.CostKindCosts { i32 3, i32 7, i32 3, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 15, %struct.CostKindCosts { i32 2, i32 7, i32 3, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 154, %struct.CostKindCosts { i32 2, i32 7, i32 3, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 156, %struct.CostKindCosts { i32 3, i32 7, i32 3, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 14, %struct.CostKindCosts { i32 7, i32 15, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 136, %struct.CostKindCosts { i32 7, i32 15, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 140, %struct.CostKindCosts { i32 14, i32 21, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 15, %struct.CostKindCosts { i32 14, i32 21, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 154, %struct.CostKindCosts { i32 14, i32 21, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 156, %struct.CostKindCosts { i32 28, i32 35, i32 1, i32 3 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE11AVX1CostTbl = internal unnamed_addr constant [111 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 196, i16 96, %struct.CostKindCosts { i32 6, i32 8, i32 6, i32 12 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 77, %struct.CostKindCosts { i32 3, i32 6, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 63, %struct.CostKindCosts { i32 3, i32 6, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 49, %struct.CostKindCosts { i32 3, i32 6, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 96, %struct.CostKindCosts { i32 17, i32 20, i32 20, i32 33 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 94, %struct.CostKindCosts { i32 8, i32 13, i32 10, i32 16 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 77, %struct.CostKindCosts { i32 17, i32 20, i32 20, i32 33 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 73, %struct.CostKindCosts { i32 8, i32 13, i32 10, i32 16 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 63, %struct.CostKindCosts { i32 17, i32 20, i32 20, i32 33 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 62, %struct.CostKindCosts { i32 8, i32 13, i32 10, i32 16 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 49, %struct.CostKindCosts { i32 13, i32 15, i32 17, i32 26 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 48, %struct.CostKindCosts { i32 7, i32 7, i32 9, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 96, %struct.CostKindCosts { i32 5, i32 6, i32 5, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 94, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 77, %struct.CostKindCosts { i32 5, i32 6, i32 5, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 73, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 63, %struct.CostKindCosts { i32 5, i32 6, i32 5, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 62, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 96, %struct.CostKindCosts { i32 29, i32 33, i32 49, i32 58 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 94, %struct.CostKindCosts { i32 14, i32 24, i32 24, i32 28 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 77, %struct.CostKindCosts { i32 24, i32 28, i32 39, i32 48 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 73, %struct.CostKindCosts { i32 12, i32 20, i32 19, i32 23 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 63, %struct.CostKindCosts { i32 19, i32 22, i32 29, i32 38 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 62, %struct.CostKindCosts { i32 9, i32 16, i32 14, i32 18 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 49, %struct.CostKindCosts { i32 14, i32 15, i32 19, i32 28 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 48, %struct.CostKindCosts { i32 7, i32 12, i32 9, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 96, %struct.CostKindCosts { i32 14, i32 18, i32 19, i32 28 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 94, %struct.CostKindCosts { i32 7, i32 14, i32 10, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 77, %struct.CostKindCosts { i32 18, i32 24, i32 27, i32 36 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 73, %struct.CostKindCosts { i32 9, i32 20, i32 14, i32 18 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 63, %struct.CostKindCosts { i32 16, i32 21, i32 22, i32 31 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 62, %struct.CostKindCosts { i32 8, i32 18, i32 11, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 49, %struct.CostKindCosts { i32 13, i32 15, i32 16, i32 25 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 48, %struct.CostKindCosts { i32 6, i32 12, i32 8, i32 12 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 96, %struct.CostKindCosts { i32 17, i32 22, i32 24, i32 33 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 94, %struct.CostKindCosts { i32 9, i32 19, i32 13, i32 17 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 77, %struct.CostKindCosts { i32 21, i32 27, i32 32, i32 41 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 73, %struct.CostKindCosts { i32 11, i32 24, i32 17, i32 21 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 63, %struct.CostKindCosts { i32 18, i32 24, i32 27, i32 36 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 62, %struct.CostKindCosts { i32 9, i32 21, i32 14, i32 18 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 49, %struct.CostKindCosts { i32 15, i32 18, i32 21, i32 30 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 48, %struct.CostKindCosts { i32 8, i32 16, i32 11, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 94, %struct.CostKindCosts { i32 6, i32 13, i32 8, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 96, %struct.CostKindCosts { i32 13, i32 20, i32 15, i32 25 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 77, %struct.CostKindCosts { i32 12, i32 18, i32 14, i32 24 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 63, %struct.CostKindCosts { i32 3, i32 3, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 49, %struct.CostKindCosts { i32 3, i32 3, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 96, %struct.CostKindCosts { i32 6, i32 9, i32 6, i32 12 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 94, %struct.CostKindCosts { i32 3, i32 7, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 77, %struct.CostKindCosts { i32 4, i32 6, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 63, %struct.CostKindCosts { i32 4, i32 6, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 49, %struct.CostKindCosts { i32 4, i32 6, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 96, %struct.CostKindCosts { i32 6, i32 9, i32 6, i32 12 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 94, %struct.CostKindCosts { i32 3, i32 7, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 77, %struct.CostKindCosts { i32 4, i32 6, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 63, %struct.CostKindCosts { i32 4, i32 6, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 49, %struct.CostKindCosts { i32 4, i32 6, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 96, %struct.CostKindCosts { i32 20, i32 20, i32 33, i32 37 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 94, %struct.CostKindCosts { i32 9, i32 9, i32 13, i32 17 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 77, %struct.CostKindCosts { i32 15, i32 20, i32 24, i32 29 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 73, %struct.CostKindCosts { i32 7, i32 15, i32 11, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 63, %struct.CostKindCosts { i32 8, i32 14, i32 14, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 62, %struct.CostKindCosts { i32 3, i32 9, i32 6, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 49, %struct.CostKindCosts { i32 20, i32 20, i32 37, i32 39 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 48, %struct.CostKindCosts { i32 9, i32 22, i32 18, i32 21 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 94, %struct.CostKindCosts { i32 7, i32 13, i32 9, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 96, %struct.CostKindCosts { i32 15, i32 21, i32 18, i32 29 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 77, %struct.CostKindCosts { i32 15, i32 19, i32 18, i32 29 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 63, %struct.CostKindCosts { i32 3, i32 3, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 49, %struct.CostKindCosts { i32 3, i32 3, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 94, %struct.CostKindCosts { i32 3, i32 8, i32 6, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 96, %struct.CostKindCosts { i32 8, i32 11, i32 14, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 77, %struct.CostKindCosts { i32 6, i32 6, i32 10, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 63, %struct.CostKindCosts { i32 3, i32 3, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 49, %struct.CostKindCosts { i32 3, i32 3, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 96, %struct.CostKindCosts { i32 9, i32 10, i32 11, i32 17 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 94, %struct.CostKindCosts { i32 4, i32 8, i32 5, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 77, %struct.CostKindCosts { i32 4, i32 6, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 63, %struct.CostKindCosts { i32 4, i32 6, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 49, %struct.CostKindCosts { i32 4, i32 6, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 96, %struct.CostKindCosts { i32 9, i32 10, i32 11, i32 17 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 94, %struct.CostKindCosts { i32 4, i32 8, i32 5, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 77, %struct.CostKindCosts { i32 4, i32 6, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 63, %struct.CostKindCosts { i32 4, i32 6, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 49, %struct.CostKindCosts { i32 4, i32 6, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 96, %struct.CostKindCosts { i32 24, i32 26, i32 39, i32 45 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 94, %struct.CostKindCosts { i32 10, i32 12, i32 15, i32 20 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 77, %struct.CostKindCosts { i32 14, i32 15, i32 23, i32 28 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 73, %struct.CostKindCosts { i32 7, i32 12, i32 11, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 63, %struct.CostKindCosts { i32 7, i32 11, i32 13, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 62, %struct.CostKindCosts { i32 3, i32 8, i32 6, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 49, %struct.CostKindCosts { i32 19, i32 19, i32 35, i32 37 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 48, %struct.CostKindCosts { i32 9, i32 19, i32 17, i32 20 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 94, %struct.CostKindCosts { i32 3, i32 7, i32 6, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 96, %struct.CostKindCosts { i32 8, i32 10, i32 14, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 77, %struct.CostKindCosts { i32 4, i32 4, i32 7, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 77, %struct.CostKindCosts { i32 3, i32 3, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 63, %struct.CostKindCosts { i32 3, i32 3, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 49, %struct.CostKindCosts { i32 3, i32 3, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 14, %struct.CostKindCosts { i32 3, i32 6, i32 3, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 136, %struct.CostKindCosts { i32 3, i32 6, i32 3, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 140, %struct.CostKindCosts { i32 5, i32 7, i32 3, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 15, %struct.CostKindCosts { i32 3, i32 6, i32 3, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 154, %struct.CostKindCosts { i32 3, i32 6, i32 3, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 156, %struct.CostKindCosts { i32 5, i32 7, i32 3, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 14, %struct.CostKindCosts { i32 21, i32 21, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 136, %struct.CostKindCosts { i32 21, i32 21, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 140, %struct.CostKindCosts { i32 42, i32 42, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 15, %struct.CostKindCosts { i32 27, i32 27, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 154, %struct.CostKindCosts { i32 27, i32 27, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 156, %struct.CostKindCosts { i32 54, i32 54, i32 1, i32 3 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE11GFNICostTbl = internal constant [19 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 214, i16 5, %struct.CostKindCosts { i32 3, i32 3, i32 3, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 6, %struct.CostKindCosts { i32 3, i32 3, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 7, %struct.CostKindCosts { i32 3, i32 3, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 8, %struct.CostKindCosts { i32 3, i32 3, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 48, %struct.CostKindCosts { i32 1, i32 6, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 49, %struct.CostKindCosts { i32 1, i32 6, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 50, %struct.CostKindCosts { i32 1, i32 6, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 62, %struct.CostKindCosts { i32 1, i32 8, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 63, %struct.CostKindCosts { i32 1, i32 9, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 64, %struct.CostKindCosts { i32 1, i32 9, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 73, %struct.CostKindCosts { i32 1, i32 8, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 77, %struct.CostKindCosts { i32 1, i32 9, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 82, %struct.CostKindCosts { i32 1, i32 9, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 94, %struct.CostKindCosts { i32 1, i32 8, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 96, %struct.CostKindCosts { i32 1, i32 9, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 97, %struct.CostKindCosts { i32 1, i32 9, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 48, %struct.CostKindCosts { i32 1, i32 6, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 49, %struct.CostKindCosts { i32 1, i32 6, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 50, %struct.CostKindCosts { i32 1, i32 6, i32 1, i32 2 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE10GLMCostTbl = internal unnamed_addr constant [4 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 262, i16 14, %struct.CostKindCosts { i32 19, i32 20, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 136, %struct.CostKindCosts { i32 37, i32 41, i32 1, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 15, %struct.CostKindCosts { i32 34, i32 35, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 154, %struct.CostKindCosts { i32 67, i32 71, i32 1, i32 5 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE10SLMCostTbl = internal unnamed_addr constant [7 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 210, i16 94, %struct.CostKindCosts { i32 5, i32 5, i32 1, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 73, %struct.CostKindCosts { i32 5, i32 5, i32 1, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 62, %struct.CostKindCosts { i32 5, i32 5, i32 1, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 14, %struct.CostKindCosts { i32 20, i32 20, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 136, %struct.CostKindCosts { i32 40, i32 41, i32 1, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 15, %struct.CostKindCosts { i32 35, i32 35, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 154, %struct.CostKindCosts { i32 70, i32 71, i32 1, i32 5 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE12SSE42CostTbl = internal unnamed_addr constant [6 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 296, i16 14, %struct.CostKindCosts { i32 5, i32 5, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 136, %struct.CostKindCosts { i32 4, i32 4, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 15, %struct.CostKindCosts { i32 5, i32 5, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 154, %struct.CostKindCosts { i32 4, i32 4, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 14, %struct.CostKindCosts { i32 18, i32 18, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 136, %struct.CostKindCosts { i32 18, i32 18, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE12SSE41CostTbl = internal constant [29 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 196, i16 94, %struct.CostKindCosts { i32 3, i32 4, i32 3, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 94, %struct.CostKindCosts { i32 10, i32 14, i32 17, i32 21 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 73, %struct.CostKindCosts { i32 5, i32 11, i32 8, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 94, %struct.CostKindCosts { i32 12, i32 19, i32 25, i32 29 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 73, %struct.CostKindCosts { i32 6, i32 14, i32 10, i32 12 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 94, %struct.CostKindCosts { i32 3, i32 7, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 94, %struct.CostKindCosts { i32 3, i32 7, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 94, %struct.CostKindCosts { i32 9, i32 11, i32 13, i32 17 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 73, %struct.CostKindCosts { i32 20, i32 24, i32 13, i32 19 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 62, %struct.CostKindCosts { i32 5, i32 9, i32 8, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 48, %struct.CostKindCosts { i32 13, i32 22, i32 24, i32 25 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 94, %struct.CostKindCosts { i32 6, i32 13, i32 14, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 73, %struct.CostKindCosts { i32 2, i32 2, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 94, %struct.CostKindCosts { i32 6, i32 10, i32 14, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 73, %struct.CostKindCosts { i32 1, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 94, %struct.CostKindCosts { i32 2, i32 11, i32 6, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 94, %struct.CostKindCosts { i32 2, i32 11, i32 6, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 73, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 94, %struct.CostKindCosts { i32 14, i32 20, i32 15, i32 20 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 73, %struct.CostKindCosts { i32 19, i32 22, i32 12, i32 18 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 62, %struct.CostKindCosts { i32 4, i32 9, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 48, %struct.CostKindCosts { i32 13, i32 19, i32 18, i32 20 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE12SSSE3CostTbl = internal constant [22 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 196, i16 73, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 62, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 48, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 94, %struct.CostKindCosts { i32 16, i32 20, i32 11, i32 21 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 73, %struct.CostKindCosts { i32 16, i32 20, i32 11, i32 21 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 62, %struct.CostKindCosts { i32 16, i32 20, i32 11, i32 21 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 48, %struct.CostKindCosts { i32 11, i32 12, i32 10, i32 16 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 94, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 73, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 62, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 94, %struct.CostKindCosts { i32 18, i32 28, i32 28, i32 35 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 73, %struct.CostKindCosts { i32 15, i32 20, i32 22, i32 28 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 62, %struct.CostKindCosts { i32 13, i32 17, i32 16, i32 22 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 48, %struct.CostKindCosts { i32 11, i32 15, i32 10, i32 16 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 94, %struct.CostKindCosts { i32 13, i32 19, i32 12, i32 18 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 73, %struct.CostKindCosts { i32 18, i32 24, i32 16, i32 22 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 62, %struct.CostKindCosts { i32 13, i32 18, i32 14, i32 20 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 48, %struct.CostKindCosts { i32 11, i32 12, i32 10, i32 16 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 94, %struct.CostKindCosts { i32 13, i32 25, i32 15, i32 22 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 73, %struct.CostKindCosts { i32 18, i32 26, i32 19, i32 25 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 62, %struct.CostKindCosts { i32 13, i32 20, i32 17, i32 23 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 48, %struct.CostKindCosts { i32 11, i32 16, i32 13, i32 19 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE11SSE2CostTbl = internal constant [67 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 196, i16 94, %struct.CostKindCosts { i32 3, i32 6, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 73, %struct.CostKindCosts { i32 1, i32 4, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 62, %struct.CostKindCosts { i32 1, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 48, %struct.CostKindCosts { i32 1, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 94, %struct.CostKindCosts { i32 16, i32 20, i32 32, i32 32 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 73, %struct.CostKindCosts { i32 16, i32 20, i32 30, i32 30 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 62, %struct.CostKindCosts { i32 16, i32 20, i32 25, i32 25 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 48, %struct.CostKindCosts { i32 11, i32 12, i32 21, i32 21 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 94, %struct.CostKindCosts { i32 5, i32 6, i32 11, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 73, %struct.CostKindCosts { i32 5, i32 5, i32 9, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 62, %struct.CostKindCosts { i32 5, i32 5, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 94, %struct.CostKindCosts { i32 10, i32 45, i32 36, i32 38 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 73, %struct.CostKindCosts { i32 10, i32 45, i32 38, i32 40 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 62, %struct.CostKindCosts { i32 9, i32 38, i32 32, i32 34 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 48, %struct.CostKindCosts { i32 8, i32 39, i32 29, i32 32 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 94, %struct.CostKindCosts { i32 12, i32 26, i32 16, i32 18 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 73, %struct.CostKindCosts { i32 15, i32 29, i32 21, i32 23 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 62, %struct.CostKindCosts { i32 13, i32 25, i32 18, i32 20 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 48, %struct.CostKindCosts { i32 10, i32 21, i32 14, i32 16 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 94, %struct.CostKindCosts { i32 14, i32 28, i32 19, i32 21 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 73, %struct.CostKindCosts { i32 18, i32 31, i32 24, i32 26 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 62, %struct.CostKindCosts { i32 16, i32 27, i32 21, i32 23 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 48, %struct.CostKindCosts { i32 13, i32 23, i32 17, i32 19 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 94, %struct.CostKindCosts { i32 12, i32 14, i32 24, i32 24 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 73, %struct.CostKindCosts { i32 6, i32 11, i32 11, i32 12 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 62, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 48, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 94, %struct.CostKindCosts { i32 4, i32 8, i32 15, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 73, %struct.CostKindCosts { i32 2, i32 4, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 48, %struct.CostKindCosts { i32 2, i32 4, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 94, %struct.CostKindCosts { i32 4, i32 8, i32 15, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 73, %struct.CostKindCosts { i32 2, i32 4, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 62, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 48, %struct.CostKindCosts { i32 2, i32 4, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 94, %struct.CostKindCosts { i32 30, i32 33, i32 13, i32 23 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 73, %struct.CostKindCosts { i32 20, i32 24, i32 23, i32 23 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 62, %struct.CostKindCosts { i32 5, i32 10, i32 8, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 48, %struct.CostKindCosts { i32 13, i32 23, i32 24, i32 25 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 94, %struct.CostKindCosts { i32 16, i32 19, i32 31, i32 31 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 73, %struct.CostKindCosts { i32 6, i32 14, i32 12, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 62, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 48, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 94, %struct.CostKindCosts { i32 7, i32 13, i32 14, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 73, %struct.CostKindCosts { i32 4, i32 5, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 62, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 48, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 94, %struct.CostKindCosts { i32 4, i32 8, i32 15, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 73, %struct.CostKindCosts { i32 2, i32 5, i32 8, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 62, %struct.CostKindCosts { i32 1, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 94, %struct.CostKindCosts { i32 4, i32 8, i32 15, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 73, %struct.CostKindCosts { i32 2, i32 5, i32 8, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 62, %struct.CostKindCosts { i32 1, i32 3, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 48, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 94, %struct.CostKindCosts { i32 30, i32 33, i32 15, i32 29 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 73, %struct.CostKindCosts { i32 19, i32 22, i32 14, i32 18 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 62, %struct.CostKindCosts { i32 4, i32 9, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 48, %struct.CostKindCosts { i32 13, i32 19, i32 20, i32 20 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 94, %struct.CostKindCosts { i32 7, i32 10, i32 14, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 73, %struct.CostKindCosts { i32 4, i32 4, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 62, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 48, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 15, %struct.CostKindCosts { i32 5, i32 5, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 154, %struct.CostKindCosts { i32 4, i32 6, i32 6, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 15, %struct.CostKindCosts { i32 32, i32 32, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 154, %struct.CostKindCosts { i32 32, i32 32, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE11SSE1CostTbl = internal constant [4 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 296, i16 14, %struct.CostKindCosts { i32 5, i32 5, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 296, i16 136, %struct.CostKindCosts { i32 4, i32 6, i32 6, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 14, %struct.CostKindCosts { i32 28, i32 30, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 262, i16 136, %struct.CostKindCosts { i32 56, i32 56, i32 1, i32 2 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE12BMI64CostTbl = internal unnamed_addr constant [1 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 211, i16 8, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE12BMI32CostTbl = internal constant [3 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 211, i16 7, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 6, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 5, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE14LZCNT64CostTbl = internal unnamed_addr constant [1 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 212, i16 8, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE14LZCNT32CostTbl = internal constant [3 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 212, i16 7, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 6, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 5, %struct.CostKindCosts { i32 2, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE15POPCNT64CostTbl = internal unnamed_addr constant [1 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 213, i16 8, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE15POPCNT32CostTbl = internal constant [3 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 213, i16 7, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 6, %struct.CostKindCosts { i32 1, i32 1, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 5, %struct.CostKindCosts { i32 1, i32 1, i32 2, i32 2 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE10X64CostTbl = internal constant [30 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 196, i16 8, %struct.CostKindCosts { i32 1, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 8, %struct.CostKindCosts { i32 10, i32 12, i32 20, i32 22 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 8, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 8, %struct.CostKindCosts { i32 1, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 7, %struct.CostKindCosts { i32 1, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 6, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 5, %struct.CostKindCosts { i32 2, i32 2, i32 4, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 217, i16 8, %struct.CostKindCosts { i32 1, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 8, %struct.CostKindCosts { i32 1, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 7, %struct.CostKindCosts { i32 1, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 6, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 5, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 216, i16 8, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 8, %struct.CostKindCosts { i32 10, i32 6, i32 19, i32 19 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 8, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 8, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 8, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 203, i16 8, %struct.CostKindCosts { i32 4, i32 4, i32 1, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 8, %struct.CostKindCosts { i32 4, i32 4, i32 7, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 8, %struct.CostKindCosts { i32 4, i32 5, i32 8, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 8, %struct.CostKindCosts { i32 2, i32 3, i32 4, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 8, %struct.CostKindCosts { i32 2, i32 3, i32 4, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 8, %struct.CostKindCosts { i32 1, i32 3, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 8, %struct.CostKindCosts { i32 1, i32 3, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 8, %struct.CostKindCosts { i32 1, i32 3, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 8, %struct.CostKindCosts { i32 1, i32 3, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 79, i16 8, %struct.CostKindCosts { i32 2, i32 2, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 80, i16 8, %struct.CostKindCosts { i32 2, i32 2, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 8, %struct.CostKindCosts { i32 4, i32 4, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 8, %struct.CostKindCosts { i32 8, i32 8, i32 4, i32 7 } }], align 16
@_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE10X86CostTbl = internal constant [71 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 196, i16 7, %struct.CostKindCosts { i32 1, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 6, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 196, i16 5, %struct.CostKindCosts { i32 2, i32 4, i32 4, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 7, %struct.CostKindCosts { i32 9, i32 12, i32 17, i32 19 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 6, %struct.CostKindCosts { i32 9, i32 12, i32 17, i32 19 } }, %"struct.llvm::CostTblEntryT" { i16 214, i16 5, %struct.CostKindCosts { i32 7, i32 9, i32 13, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 7, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 210, i16 6, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 7, %struct.CostKindCosts { i32 2, i32 2, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 6, %struct.CostKindCosts { i32 2, i32 2, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 212, i16 5, %struct.CostKindCosts { i32 2, i32 2, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 217, i16 7, %struct.CostKindCosts { i32 1, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 217, i16 6, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 217, i16 5, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 7, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 6, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 211, i16 5, %struct.CostKindCosts { i32 2, i32 2, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 216, i16 7, %struct.CostKindCosts { i32 1, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 216, i16 6, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 216, i16 5, %struct.CostKindCosts { i32 2, i32 2, i32 1, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 7, %struct.CostKindCosts { i32 8, i32 7, i32 15, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 6, %struct.CostKindCosts { i32 9, i32 8, i32 17, i32 17 } }, %"struct.llvm::CostTblEntryT" { i16 213, i16 5, %struct.CostKindCosts { i32 7, i32 6, i32 6, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 7, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 6, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 201, i16 5, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 7, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 6, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 202, i16 5, %struct.CostKindCosts { i32 2, i32 3, i32 1, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 7, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 6, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 965, i16 5, %struct.CostKindCosts { i32 1, i32 1, i32 1, i32 1 } }, %"struct.llvm::CostTblEntryT" { i16 203, i16 7, %struct.CostKindCosts { i32 4, i32 4, i32 1, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 203, i16 6, %struct.CostKindCosts { i32 4, i32 4, i32 2, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 203, i16 5, %struct.CostKindCosts { i32 4, i32 4, i32 2, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 7, %struct.CostKindCosts { i32 3, i32 4, i32 6, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 6, %struct.CostKindCosts { i32 4, i32 4, i32 7, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 85, i16 5, %struct.CostKindCosts { i32 4, i32 5, i32 8, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 7, %struct.CostKindCosts { i32 4, i32 4, i32 7, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 6, %struct.CostKindCosts { i32 4, i32 4, i32 7, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 87, i16 5, %struct.CostKindCosts { i32 4, i32 5, i32 8, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 7, %struct.CostKindCosts { i32 2, i32 3, i32 4, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 6, %struct.CostKindCosts { i32 2, i32 3, i32 4, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 86, i16 5, %struct.CostKindCosts { i32 3, i32 3, i32 5, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 7, %struct.CostKindCosts { i32 2, i32 3, i32 4, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 6, %struct.CostKindCosts { i32 2, i32 3, i32 4, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 88, i16 5, %struct.CostKindCosts { i32 3, i32 3, i32 5, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 7, %struct.CostKindCosts { i32 1, i32 2, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 6, %struct.CostKindCosts { i32 1, i32 4, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 188, i16 5, %struct.CostKindCosts { i32 1, i32 4, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 7, %struct.CostKindCosts { i32 1, i32 2, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 6, %struct.CostKindCosts { i32 1, i32 4, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 5, %struct.CostKindCosts { i32 1, i32 4, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 7, %struct.CostKindCosts { i32 1, i32 2, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 6, %struct.CostKindCosts { i32 1, i32 4, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 190, i16 5, %struct.CostKindCosts { i32 1, i32 4, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 7, %struct.CostKindCosts { i32 1, i32 2, i32 2, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 6, %struct.CostKindCosts { i32 1, i32 4, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 5, %struct.CostKindCosts { i32 1, i32 4, i32 2, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 79, i16 7, %struct.CostKindCosts { i32 2, i32 2, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 79, i16 6, %struct.CostKindCosts { i32 2, i32 2, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 79, i16 5, %struct.CostKindCosts { i32 2, i32 2, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 80, i16 7, %struct.CostKindCosts { i32 2, i32 2, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 80, i16 6, %struct.CostKindCosts { i32 2, i32 2, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 80, i16 5, %struct.CostKindCosts { i32 2, i32 2, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 7, %struct.CostKindCosts { i32 2, i32 2, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 6, %struct.CostKindCosts { i32 5, i32 5, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 83, i16 5, %struct.CostKindCosts { i32 6, i32 6, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 7, %struct.CostKindCosts { i32 6, i32 6, i32 4, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 6, %struct.CostKindCosts { i32 6, i32 6, i32 4, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 84, i16 5, %struct.CostKindCosts { i32 6, i32 6, i32 4, i32 6 } }], align 16
@_ZZNK4llvm10X86TTIImpl18getVectorInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjPKNS_5ValueES7_NS3_18VectorInstrContextEE10SLMCostTbl = internal unnamed_addr constant [4 x %"struct.llvm::CostTblEntryT.100"] [%"struct.llvm::CostTblEntryT.100" { i16 164, i16 5, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 164, i16 6, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 164, i16 7, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 164, i16 8, i16 7 }], align 16
@_ZZNK4llvm10X86TTIImpl26getArithmeticReductionCostEjPNS_10VectorTypeESt8optionalINS_13FastMathFlagsEENS_19TargetTransformInfo14TargetCostKindEE10SLMCostTbl = internal unnamed_addr constant [2 x %"struct.llvm::CostTblEntryT.100"] [%"struct.llvm::CostTblEntryT.100" { i16 99, i16 154, i16 3 }, %"struct.llvm::CostTblEntryT.100" { i16 59, i16 94, i16 5 }], align 2
@_ZZNK4llvm10X86TTIImpl26getArithmeticReductionCostEjPNS_10VectorTypeESt8optionalINS_13FastMathFlagsEENS_19TargetTransformInfo14TargetCostKindEE11SSE2CostTbl = internal constant [13 x %"struct.llvm::CostTblEntryT.100"] [%"struct.llvm::CostTblEntryT.100" { i16 99, i16 154, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 99, i16 134, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 99, i16 136, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 59, i16 94, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 59, i16 71, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 59, i16 73, i16 3 }, %"struct.llvm::CostTblEntryT.100" { i16 59, i16 56, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 59, i16 58, i16 3 }, %"struct.llvm::CostTblEntryT.100" { i16 59, i16 62, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 59, i16 41, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 59, i16 43, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 59, i16 47, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 59, i16 48, i16 3 }], align 16
@_ZZNK4llvm10X86TTIImpl26getArithmeticReductionCostEjPNS_10VectorTypeESt8optionalINS_13FastMathFlagsEENS_19TargetTransformInfo14TargetCostKindEE11AVX1CostTbl = internal unnamed_addr constant [8 x %"struct.llvm::CostTblEntryT.100"] [%"struct.llvm::CostTblEntryT.100" { i16 99, i16 156, i16 3 }, %"struct.llvm::CostTblEntryT.100" { i16 99, i16 136, i16 3 }, %"struct.llvm::CostTblEntryT.100" { i16 99, i16 140, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 59, i16 94, i16 1 }, %"struct.llvm::CostTblEntryT.100" { i16 59, i16 96, i16 3 }, %"struct.llvm::CostTblEntryT.100" { i16 59, i16 77, i16 5 }, %"struct.llvm::CostTblEntryT.100" { i16 59, i16 63, i16 5 }, %"struct.llvm::CostTblEntryT.100" { i16 59, i16 49, i16 4 }], align 16
@_ZZNK4llvm10X86TTIImpl26getArithmeticReductionCostEjPNS_10VectorTypeESt8optionalINS_13FastMathFlagsEENS_19TargetTransformInfo14TargetCostKindEE14AVX512FCostTbl = internal unnamed_addr constant [4 x %"struct.llvm::CostTblEntryT.100"] [%"struct.llvm::CostTblEntryT.100" { i16 99, i16 157, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 99, i16 145, i16 5 }, %"struct.llvm::CostTblEntryT.100" { i16 59, i16 97, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 59, i16 82, i16 6 }], align 16
@_ZZNK4llvm10X86TTIImpl26getArithmeticReductionCostEjPNS_10VectorTypeESt8optionalINS_13FastMathFlagsEENS_19TargetTransformInfo14TargetCostKindEE15AVX512BWCostTbl = internal unnamed_addr constant [2 x %"struct.llvm::CostTblEntryT.100"] [%"struct.llvm::CostTblEntryT.100" { i16 59, i16 64, i16 7 }, %"struct.llvm::CostTblEntryT.100" { i16 59, i16 50, i16 4 }], align 2
@_ZZNK4llvm10X86TTIImpl26getArithmeticReductionCostEjPNS_10VectorTypeESt8optionalINS_13FastMathFlagsEENS_19TargetTransformInfo14TargetCostKindEE19AVX512BoolReduction = internal constant [12 x %"struct.llvm::CostTblEntryT.100"] [%"struct.llvm::CostTblEntryT.100" { i16 193, i16 20, i16 3 }, %"struct.llvm::CostTblEntryT.100" { i16 193, i16 22, i16 5 }, %"struct.llvm::CostTblEntryT.100" { i16 193, i16 26, i16 7 }, %"struct.llvm::CostTblEntryT.100" { i16 193, i16 27, i16 9 }, %"struct.llvm::CostTblEntryT.100" { i16 193, i16 28, i16 11 }, %"struct.llvm::CostTblEntryT.100" { i16 193, i16 29, i16 13 }, %"struct.llvm::CostTblEntryT.100" { i16 194, i16 20, i16 3 }, %"struct.llvm::CostTblEntryT.100" { i16 194, i16 22, i16 5 }, %"struct.llvm::CostTblEntryT.100" { i16 194, i16 26, i16 7 }, %"struct.llvm::CostTblEntryT.100" { i16 194, i16 27, i16 9 }, %"struct.llvm::CostTblEntryT.100" { i16 194, i16 28, i16 11 }, %"struct.llvm::CostTblEntryT.100" { i16 194, i16 29, i16 13 }], align 16
@_ZZNK4llvm10X86TTIImpl26getArithmeticReductionCostEjPNS_10VectorTypeESt8optionalINS_13FastMathFlagsEENS_19TargetTransformInfo14TargetCostKindEE17AVX2BoolReduction = internal constant [4 x %"struct.llvm::CostTblEntryT.100"] [%"struct.llvm::CostTblEntryT.100" { i16 193, i16 63, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 193, i16 49, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 194, i16 63, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 194, i16 49, i16 2 }], align 16
@_ZZNK4llvm10X86TTIImpl26getArithmeticReductionCostEjPNS_10VectorTypeESt8optionalINS_13FastMathFlagsEENS_19TargetTransformInfo14TargetCostKindEE17AVX1BoolReduction = internal constant [8 x %"struct.llvm::CostTblEntryT.100"] [%"struct.llvm::CostTblEntryT.100" { i16 193, i16 96, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 193, i16 77, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 193, i16 63, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 193, i16 49, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 194, i16 96, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 194, i16 77, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 194, i16 63, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 194, i16 49, i16 4 }], align 16
@_ZZNK4llvm10X86TTIImpl26getArithmeticReductionCostEjPNS_10VectorTypeESt8optionalINS_13FastMathFlagsEENS_19TargetTransformInfo14TargetCostKindEE17SSE2BoolReduction = internal constant [8 x %"struct.llvm::CostTblEntryT.100"] [%"struct.llvm::CostTblEntryT.100" { i16 193, i16 94, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 193, i16 73, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 193, i16 62, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 193, i16 48, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 194, i16 94, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 194, i16 73, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 194, i16 62, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 194, i16 48, i16 2 }], align 16
@_ZZNK4llvm10X86TTIImpl22getMinMaxReductionCostEjPNS_10VectorTypeENS_13FastMathFlagsENS_19TargetTransformInfo14TargetCostKindEE11SSE2CostTbl = internal constant [20 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 187, i16 94, %struct.CostKindCosts { i32 3, i32 4, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 94, %struct.CostKindCosts { i32 3, i32 4, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 71, %struct.CostKindCosts { i32 2, i32 2, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 71, %struct.CostKindCosts { i32 2, i32 2, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 73, %struct.CostKindCosts { i32 3, i32 7, i32 11, i32 12 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 73, %struct.CostKindCosts { i32 4, i32 7, i32 14, i32 15 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 56, %struct.CostKindCosts { i32 2, i32 3, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 56, %struct.CostKindCosts { i32 2, i32 3, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 58, %struct.CostKindCosts { i32 3, i32 5, i32 6, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 58, %struct.CostKindCosts { i32 3, i32 5, i32 8, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 62, %struct.CostKindCosts { i32 3, i32 8, i32 8, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 62, %struct.CostKindCosts { i32 4, i32 8, i32 12, i32 14 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 41, %struct.CostKindCosts { i32 2, i32 3, i32 5, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 41, %struct.CostKindCosts { i32 2, i32 3, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 43, %struct.CostKindCosts { i32 4, i32 6, i32 12, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 43, %struct.CostKindCosts { i32 3, i32 6, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 47, %struct.CostKindCosts { i32 5, i32 9, i32 18, i32 19 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 47, %struct.CostKindCosts { i32 4, i32 8, i32 9, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 48, %struct.CostKindCosts { i32 7, i32 13, i32 24, i32 25 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 48, %struct.CostKindCosts { i32 3, i32 10, i32 11, i32 11 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getMinMaxReductionCostEjPNS_10VectorTypeENS_13FastMathFlagsENS_19TargetTransformInfo14TargetCostKindEE12SSE41CostTbl = internal constant [16 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 187, i16 94, %struct.CostKindCosts { i32 3, i32 4, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 94, %struct.CostKindCosts { i32 3, i32 4, i32 4, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 71, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 71, %struct.CostKindCosts { i32 2, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 73, %struct.CostKindCosts { i32 3, i32 4, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 73, %struct.CostKindCosts { i32 3, i32 4, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 56, %struct.CostKindCosts { i32 2, i32 3, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 58, %struct.CostKindCosts { i32 3, i32 5, i32 6, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 58, %struct.CostKindCosts { i32 3, i32 5, i32 6, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 62, %struct.CostKindCosts { i32 2, i32 8, i32 4, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 62, %struct.CostKindCosts { i32 2, i32 5, i32 2, i32 2 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 41, %struct.CostKindCosts { i32 2, i32 3, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 43, %struct.CostKindCosts { i32 3, i32 6, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 47, %struct.CostKindCosts { i32 4, i32 8, i32 9, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 48, %struct.CostKindCosts { i32 3, i32 10, i32 7, i32 8 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 48, %struct.CostKindCosts { i32 3, i32 8, i32 5, i32 5 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getMinMaxReductionCostEjPNS_10VectorTypeENS_13FastMathFlagsENS_19TargetTransformInfo14TargetCostKindEE11AVX1CostTbl = internal unnamed_addr constant [8 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 187, i16 96, %struct.CostKindCosts { i32 5, i32 11, i32 7, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 96, %struct.CostKindCosts { i32 6, i32 12, i32 10, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 77, %struct.CostKindCosts { i32 4, i32 9, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 77, %struct.CostKindCosts { i32 4, i32 9, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 63, %struct.CostKindCosts { i32 3, i32 15, i32 6, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 63, %struct.CostKindCosts { i32 2, i32 9, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 49, %struct.CostKindCosts { i32 4, i32 17, i32 8, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 49, %struct.CostKindCosts { i32 3, i32 11, i32 6, i32 6 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getMinMaxReductionCostEjPNS_10VectorTypeENS_13FastMathFlagsENS_19TargetTransformInfo14TargetCostKindEE11AVX2CostTbl = internal constant [14 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 187, i16 96, %struct.CostKindCosts { i32 4, i32 11, i32 7, i32 10 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 96, %struct.CostKindCosts { i32 4, i32 12, i32 10, i32 13 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 71, %struct.CostKindCosts { i32 1, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 71, %struct.CostKindCosts { i32 1, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 73, %struct.CostKindCosts { i32 2, i32 4, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 73, %struct.CostKindCosts { i32 2, i32 4, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 77, %struct.CostKindCosts { i32 3, i32 9, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 77, %struct.CostKindCosts { i32 3, i32 9, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 58, %struct.CostKindCosts { i32 2, i32 4, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 58, %struct.CostKindCosts { i32 2, i32 4, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 63, %struct.CostKindCosts { i32 2, i32 15, i32 6, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 47, %struct.CostKindCosts { i32 3, i32 6, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 47, %struct.CostKindCosts { i32 3, i32 6, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 49, %struct.CostKindCosts { i32 3, i32 17, i32 8, i32 9 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getMinMaxReductionCostEjPNS_10VectorTypeENS_13FastMathFlagsENS_19TargetTransformInfo14TargetCostKindEE14AVX512FCostTbl = internal unnamed_addr constant [8 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 187, i16 94, %struct.CostKindCosts { i32 2, i32 4, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 94, %struct.CostKindCosts { i32 2, i32 4, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 96, %struct.CostKindCosts { i32 3, i32 10, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 96, %struct.CostKindCosts { i32 3, i32 10, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 97, %struct.CostKindCosts { i32 5, i32 16, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 97, %struct.CostKindCosts { i32 5, i32 16, i32 7, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 82, %struct.CostKindCosts { i32 4, i32 12, i32 9, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 82, %struct.CostKindCosts { i32 4, i32 12, i32 9, i32 9 } }], align 16
@_ZZNK4llvm10X86TTIImpl22getMinMaxReductionCostEjPNS_10VectorTypeENS_13FastMathFlagsENS_19TargetTransformInfo14TargetCostKindEE15AVX512BWCostTbl = internal constant [14 x %"struct.llvm::CostTblEntryT"] [%"struct.llvm::CostTblEntryT" { i16 187, i16 56, %struct.CostKindCosts { i32 1, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 56, %struct.CostKindCosts { i32 1, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 64, %struct.CostKindCosts { i32 2, i32 19, i32 8, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 64, %struct.CostKindCosts { i32 2, i32 12, i32 6, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 41, %struct.CostKindCosts { i32 1, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 41, %struct.CostKindCosts { i32 1, i32 2, i32 3, i32 3 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 43, %struct.CostKindCosts { i32 2, i32 4, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 43, %struct.CostKindCosts { i32 2, i32 4, i32 5, i32 5 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 48, %struct.CostKindCosts { i32 2, i32 10, i32 6, i32 7 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 48, %struct.CostKindCosts { i32 2, i32 6, i32 4, i32 4 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 49, %struct.CostKindCosts { i32 2, i32 17, i32 8, i32 9 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 49, %struct.CostKindCosts { i32 2, i32 10, i32 6, i32 6 } }, %"struct.llvm::CostTblEntryT" { i16 187, i16 50, %struct.CostKindCosts { i32 2, i32 21, i32 10, i32 11 } }, %"struct.llvm::CostTblEntryT" { i16 189, i16 50, %struct.CostKindCosts { i32 2, i32 14, i32 8, i32 8 } }], align 16
@_ZZNK4llvm10X86TTIImpl32getInterleavedMemoryOpCostAVX512EjPNS_15FixedVectorTypeEjNS_8ArrayRefIjEENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindEbbE24AVX512InterleavedLoadTbl = internal unnamed_addr constant [3 x %"struct.llvm::CostTblEntryT.100"] [%"struct.llvm::CostTblEntryT.100" { i16 3, i16 48, i16 12 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 49, i16 14 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 50, i16 22 }], align 16
@_ZZNK4llvm10X86TTIImpl32getInterleavedMemoryOpCostAVX512EjPNS_15FixedVectorTypeEjNS_8ArrayRefIjEENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindEbbE25AVX512InterleavedStoreTbl = internal unnamed_addr constant [7 x %"struct.llvm::CostTblEntryT.100"] [%"struct.llvm::CostTblEntryT.100" { i16 3, i16 48, i16 12 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 49, i16 14 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 50, i16 26 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 47, i16 10 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 48, i16 11 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 49, i16 14 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 50, i16 24 }], align 16
@_ZZNK4llvm10X86TTIImpl26getInterleavedMemoryOpCostEjPNS_4TypeEjNS_8ArrayRefIjEENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindEbbE22AVX2InterleavedLoadTbl = internal unnamed_addr constant [71 x %"struct.llvm::CostTblEntryT.100"] [%"struct.llvm::CostTblEntryT.100" { i16 2, i16 41, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 43, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 47, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 48, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 49, i16 6 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 62, i16 6 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 63, i16 9 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 64, i16 18 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 77, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 82, i16 8 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 84, i16 16 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 96, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 97, i16 8 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 98, i16 16 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 99, i16 32 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 41, i16 3 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 43, i16 3 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 47, i16 6 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 48, i16 11 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 49, i16 14 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 56, i16 5 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 58, i16 7 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 62, i16 9 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 63, i16 28 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 64, i16 56 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 71, i16 3 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 73, i16 3 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 77, i16 7 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 82, i16 14 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 84, i16 32 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 94, i16 1 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 96, i16 5 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 97, i16 10 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 98, i16 20 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 41, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 43, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 47, i16 12 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 48, i16 24 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 49, i16 56 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 56, i16 6 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 58, i16 17 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 62, i16 33 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 63, i16 75 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 64, i16 150 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 71, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 73, i16 8 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 77, i16 16 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 82, i16 32 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 84, i16 68 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 94, i16 6 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 96, i16 8 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 97, i16 20 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 98, i16 40 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 41, i16 6 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 43, i16 14 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 47, i16 18 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 48, i16 43 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 49, i16 82 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 56, i16 13 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 58, i16 9 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 62, i16 39 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 63, i16 106 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 64, i16 212 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 71, i16 6 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 73, i16 15 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 77, i16 31 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 82, i16 64 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 94, i16 6 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 96, i16 18 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 97, i16 36 }, %"struct.llvm::CostTblEntryT.100" { i16 8, i16 77, i16 40 }], align 16
@_ZZNK4llvm10X86TTIImpl26getInterleavedMemoryOpCostEjPNS_4TypeEjNS_8ArrayRefIjEENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindEbbE22SSE2InterleavedLoadTbl = internal constant [5 x %"struct.llvm::CostTblEntryT.100"] [%"struct.llvm::CostTblEntryT.100" { i16 2, i16 56, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 58, i16 7 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 71, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 73, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 94, i16 2 }], align 16
@_ZZNK4llvm10X86TTIImpl26getInterleavedMemoryOpCostEjPNS_4TypeEjNS_8ArrayRefIjEENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindEbbE23AVX2InterleavedStoreTbl = internal unnamed_addr constant [69 x %"struct.llvm::CostTblEntryT.100"] [%"struct.llvm::CostTblEntryT.100" { i16 2, i16 48, i16 3 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 49, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 62, i16 3 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 63, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 64, i16 8 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 73, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 77, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 82, i16 8 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 84, i16 16 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 94, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 96, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 97, i16 8 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 98, i16 16 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 99, i16 32 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 41, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 43, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 47, i16 6 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 48, i16 11 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 49, i16 13 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 56, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 58, i16 6 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 62, i16 12 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 63, i16 27 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 64, i16 54 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 71, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 73, i16 5 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 77, i16 11 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 82, i16 22 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 84, i16 48 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 94, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 96, i16 6 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 97, i16 12 }, %"struct.llvm::CostTblEntryT.100" { i16 3, i16 98, i16 24 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 41, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 43, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 47, i16 4 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 48, i16 8 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 49, i16 12 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 56, i16 2 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 58, i16 6 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 62, i16 10 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 63, i16 32 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 64, i16 64 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 71, i16 5 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 73, i16 6 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 77, i16 16 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 82, i16 32 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 84, i16 64 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 94, i16 6 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 96, i16 8 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 97, i16 20 }, %"struct.llvm::CostTblEntryT.100" { i16 4, i16 98, i16 40 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 41, i16 7 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 43, i16 9 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 47, i16 16 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 48, i16 27 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 49, i16 90 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 56, i16 10 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 58, i16 15 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 62, i16 21 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 63, i16 58 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 64, i16 90 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 71, i16 9 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 73, i16 12 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 77, i16 33 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 82, i16 66 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 94, i16 8 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 96, i16 15 }, %"struct.llvm::CostTblEntryT.100" { i16 6, i16 97, i16 30 }], align 16
@_ZZNK4llvm10X86TTIImpl26getInterleavedMemoryOpCostEjPNS_4TypeEjNS_8ArrayRefIjEENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindEbbE23SSE2InterleavedStoreTbl = internal constant [6 x %"struct.llvm::CostTblEntryT.100"] [%"struct.llvm::CostTblEntryT.100" { i16 2, i16 41, i16 1 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 43, i16 1 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 47, i16 1 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 56, i16 1 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 58, i16 1 }, %"struct.llvm::CostTblEntryT.100" { i16 2, i16 71, i16 1 }], align 16
@_ZTVN4llvm10X86TTIImplE = unnamed_addr constant { [211 x ptr] } { [211 x ptr] [ptr null, ptr null, ptr @_ZN4llvm27TargetTransformInfoImplBaseD2Ev, ptr @_ZN4llvm10X86TTIImplD0Ev, ptr @_ZNK4llvm27TargetTransformInfoImplBase13getDataLayoutEv, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE10getGEPCostEPNS_4TypeEPKNS_5ValueENS_8ArrayRefIS7_EES4_NS_19TargetTransformInfo14TargetCostKindE, ptr @_ZNK4llvm10X86TTIImpl20getPointersChainCostENS_8ArrayRefIPKNS_5ValueEEES4_RKNS_19TargetTransformInfo17PointersChainInfoEPNS_4TypeENS6_14TargetCostKindE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE32getEstimatedNumberOfCaseClustersERKNS_10SwitchInstERjPNS_18ProfileSummaryInfoEPNS_18BlockFrequencyInfoE, ptr @_ZNK4llvm31TargetTransformInfoImplCRTPBaseINS_10X86TTIImplEE18getInstructionCostEPKNS_4UserENS_8ArrayRefIPKNS_5ValueEEENS_19TargetTransformInfo14TargetCostKindE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE30getInliningThresholdMultiplierEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase47getInliningCostBenefitAnalysisSavingsMultiplierEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase50getInliningCostBenefitAnalysisProfitableMultiplierEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase32getInliningLastCallToStaticBonusEv, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23adjustInliningThresholdEPKNS_8CallBaseE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE19getCallerAllocaCostEPKNS_8CallBaseEPKNS_10AllocaInstE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE28getInlinerVectorBonusPercentEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase13getMemcpyCostEPKNS_11InstructionE, ptr @_ZNK4llvm10X86TTIImpl37getMaxMemIntrinsicInlineSizeThresholdEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase29getPredictableBranchThresholdEv, ptr @_ZNK4llvm10X86TTIImpl26getBranchMispredictPenaltyEv, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE19hasBranchDivergenceEPKNS_8FunctionE, ptr @_ZNK4llvm27TargetTransformInfoImplBase18getValueUniformityEPKNS_5ValueE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE20isValidAddrSpaceCastEjj, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE18addrspacesMayAliasEjj, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE19getFlatAddressSpaceEv, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE26collectFlatAddressOperandsERNS_15SmallVectorImplIiEEj, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE19isNoopAddrSpaceCastEjj, ptr @_ZNK4llvm27TargetTransformInfoImplBase29computeKnownBitsAddrSpaceCastEjRKNS_5ValueE, ptr @_ZNK4llvm27TargetTransformInfoImplBase29computeKnownBitsAddrSpaceCastEjjRKNS_9KnownBitsE, ptr @_ZNK4llvm27TargetTransformInfoImplBase32getAddrSpaceCastPreservedPtrMaskEjj, ptr @_ZNK4llvm27TargetTransformInfoImplBase46canHaveNonUndefGlobalInitializerInAddressSpaceEj, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE19getAssumedAddrSpaceEPKNS_5ValueE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE16isSingleThreadedEv, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE22getPredicatedAddrSpaceEPKNS_5ValueE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE32rewriteIntrinsicWithAddressSpaceEPNS_13IntrinsicInstEPNS_5ValueES6_, ptr @_ZNK4llvm27TargetTransformInfoImplBase15isLoweredToCallEPKNS_8FunctionE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE24isHardwareLoopProfitableEPNS_4LoopERNS_15ScalarEvolutionERNS_15AssumptionCacheEPNS_17TargetLibraryInfoERNS_16HardwareLoopInfoE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE29getEpilogueVectorizationMinVFEv, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE29preferTailFoldingOverEpilogueEPNS_15TailFoldingInfoE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE28getPreferredTailFoldingStyleEv, ptr @_ZNK4llvm10X86TTIImpl20instCombineIntrinsicERNS_12InstCombinerERNS_13IntrinsicInstE, ptr @_ZNK4llvm10X86TTIImpl32simplifyDemandedUseBitsIntrinsicERNS_12InstCombinerERNS_13IntrinsicInstENS_5APIntERNS_9KnownBitsERb, ptr @_ZNK4llvm10X86TTIImpl35simplifyDemandedVectorEltsIntrinsicERNS_12InstCombinerERNS_13IntrinsicInstENS_5APIntERS5_S6_S6_St8functionIFvPNS_11InstructionEjS5_S6_EE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getUnrollingPreferencesEPNS_4LoopERNS_15ScalarEvolutionERNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE21getPeelingPreferencesEPNS_4LoopERNS_15ScalarEvolutionERNS_19TargetTransformInfo18PeelingPreferencesE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE19isLegalAddImmediateEl, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE27isLegalAddScalableImmediateEl, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE20isLegalICmpImmediateEl, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE21isLegalAddressingModeEPNS_4TypeEPNS_11GlobalValueElbljPNS_11InstructionEl, ptr @_ZNK4llvm10X86TTIImpl13isLSRCostLessERKNS_19TargetTransformInfo7LSRCostES4_, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23isNumRegsMajorCostOfLSREv, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE37shouldDropLSRSolutionIfLessProfitableEv, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE27isProfitableLSRChainElementEPNS_11InstructionE, ptr @_ZNK4llvm10X86TTIImpl15canMacroFuseCmpEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase10canSaveCmpEPNS_4LoopEPPNS_10CondBrInstEPNS_15ScalarEvolutionEPNS_8LoopInfoEPNS_13DominatorTreeEPNS_15AssumptionCacheEPNS_17TargetLibraryInfoE, ptr @_ZNK4llvm27TargetTransformInfoImplBase26getPreferredAddressingModeEPKNS_4LoopEPNS_15ScalarEvolutionE, ptr @_ZNK4llvm10X86TTIImpl18isLegalMaskedStoreEPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo8MaskKindE, ptr @_ZNK4llvm10X86TTIImpl17isLegalMaskedLoadEPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo8MaskKindE, ptr @_ZNK4llvm10X86TTIImpl14isLegalNTStoreEPNS_4TypeENS_5AlignE, ptr @_ZNK4llvm10X86TTIImpl13isLegalNTLoadEPNS_4TypeENS_5AlignE, ptr @_ZNK4llvm10X86TTIImpl20isLegalBroadcastLoadEPNS_4TypeENS_12ElementCountE, ptr @_ZNK4llvm10X86TTIImpl20isLegalMaskedScatterEPNS_4TypeENS_5AlignE, ptr @_ZNK4llvm10X86TTIImpl19isLegalMaskedGatherEPNS_4TypeENS_5AlignE, ptr @_ZNK4llvm10X86TTIImpl26forceScalarizeMaskedGatherEPNS_10VectorTypeENS_5AlignE, ptr @_ZNK4llvm10X86TTIImpl27forceScalarizeMaskedScatterEPNS_10VectorTypeENS_5AlignE, ptr @_ZNK4llvm10X86TTIImpl26isLegalMaskedCompressStoreEPNS_4TypeENS_5AlignE, ptr @_ZNK4llvm10X86TTIImpl15isLegalAltInstrEPNS_10VectorTypeEjjRKNS_14SmallBitVectorE, ptr @_ZNK4llvm10X86TTIImpl23isLegalMaskedExpandLoadEPNS_4TypeENS_5AlignE, ptr @_ZNK4llvm27TargetTransformInfoImplBase23isLegalStridedLoadStoreEPNS_4TypeENS_5AlignE, ptr @_ZNK4llvm27TargetTransformInfoImplBase28isLegalInterleavedAccessTypeEPNS_10VectorTypeEjNS_5AlignEj, ptr @_ZNK4llvm27TargetTransformInfoImplBase28isLegalMaskedVectorHistogramEPNS_4TypeES2_, ptr @_ZNK4llvm27TargetTransformInfoImplBase23enableOrderedReductionsEv, ptr @_ZNK4llvm10X86TTIImpl11hasDivRemOpEPNS_4TypeEb, ptr @_ZNK4llvm27TargetTransformInfoImplBase18hasVolatileVariantEPNS_11InstructionEj, ptr @_ZNK4llvm10X86TTIImpl27prefersVectorizedAddressingEv, ptr @_ZNK4llvm10X86TTIImpl20getScalingFactorCostEPNS_4TypeEPNS_11GlobalValueENS_11StackOffsetEblj, ptr @_ZNK4llvm27TargetTransformInfoImplBase19LSRWithInstrQueriesEv, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE14isTruncateFreeEPNS_4TypeES4_, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE19isProfitableToHoistEPNS_11InstructionE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE5useAAEv, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE11isTypeLegalEPNS_4TypeE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE18getRegUsageForTypeEPNS_4TypeE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23shouldBuildLookupTablesEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase34shouldBuildLookupTablesForConstantEPNS_8ConstantE, ptr @_ZNK4llvm27TargetTransformInfoImplBase34getMinimumLookupTableEntryBitWidthEv, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE26shouldBuildRelLookupTablesEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase20useColdCCForColdCallERNS_8FunctionE, ptr @_ZNK4llvm10X86TTIImpl24useFastCCForInternalCallERNS_8FunctionE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE34isTargetIntrinsicWithScalarOpAtArgEjj, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE38isTargetIntrinsicWithOverloadTypeAtArgEji, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE48isTargetIntrinsicWithStructReturnOverloadAtFieldEji, ptr @_ZNK4llvm10X86TTIImpl24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS6_18VectorInstrContextE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE32getOperandsScalarizationOverheadENS_8ArrayRefIPNS_4TypeEEENS_19TargetTransformInfo14TargetCostKindENS7_18VectorInstrContextE, ptr @_ZNK4llvm10X86TTIImpl39supportsEfficientVectorElementLoadStoreEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase17supportsTailCallsEv, ptr @_ZNK4llvm31TargetTransformInfoImplCRTPBaseINS_10X86TTIImplEE19supportsTailCallForEPKNS_8CallBaseE, ptr @_ZNK4llvm27TargetTransformInfoImplBase28enableAggressiveInterleavingEb, ptr @_ZNK4llvm10X86TTIImpl21enableMemCmpExpansionEbb, ptr @_ZNK4llvm27TargetTransformInfoImplBase20enableSelectOptimizeEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase32shouldTreatInstructionLikeSelectEPKNS_11InstructionE, ptr @_ZNK4llvm10X86TTIImpl36enableInterleavedAccessVectorizationEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase42enableMaskedInterleavedAccessVectorizationEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase34isFPVectorizationPotentiallyUnsafeEv, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE30allowsMisalignedMemoryAccessesERNS_11LLVMContextEjjNS_5AlignEPj, ptr @_ZNK4llvm10X86TTIImpl16getPopcntSupportEj, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE12haveFastSqrtEPNS_4TypeE, ptr @_ZNK4llvm10X86TTIImpl33isExpensiveToSpeculativelyExecuteEPKNS_11InstructionE, ptr @_ZNK4llvm10X86TTIImpl28isFCmpOrdCheaperThanFCmpZeroEPNS_4TypeE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE11getFPOpCostEPNS_4TypeE, ptr @_ZNK4llvm27TargetTransformInfoImplBase21getIntImmCodeSizeCostEjjRKNS_5APIntEPNS_4TypeE, ptr @_ZNK4llvm10X86TTIImpl13getIntImmCostERKNS_5APIntEPNS_4TypeENS_19TargetTransformInfo14TargetCostKindE, ptr @_ZNK4llvm10X86TTIImpl17getIntImmCostInstEjjRKNS_5APIntEPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEPNS_11InstructionE, ptr @_ZNK4llvm10X86TTIImpl19getIntImmCostIntrinEjjRKNS_5APIntEPNS_4TypeENS_19TargetTransformInfo14TargetCostKindE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE29preferToKeepConstantsAttachedERKNS_11InstructionERKNS_8FunctionE, ptr @_ZNK4llvm10X86TTIImpl20getNumberOfRegistersEj, ptr @_ZNK4llvm10X86TTIImpl30hasConditionalLoadStoreForTypeEPNS_4TypeEb, ptr @_ZNK4llvm10X86TTIImpl23getRegisterClassForTypeEbPNS_4TypeE, ptr @_ZNK4llvm27TargetTransformInfoImplBase20getRegisterClassNameEj, ptr @_ZNK4llvm27TargetTransformInfoImplBase25getRegisterClassSpillCostEjNS_19TargetTransformInfo14TargetCostKindE, ptr @_ZNK4llvm27TargetTransformInfoImplBase26getRegisterClassReloadCostEjNS_19TargetTransformInfo14TargetCostKindE, ptr @_ZNK4llvm10X86TTIImpl19getRegisterBitWidthENS_19TargetTransformInfo12RegisterKindE, ptr @_ZNK4llvm27TargetTransformInfoImplBase28getMinVectorRegisterBitWidthEv, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE12getMaxVScaleEv, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE18getVScaleForTuningEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase29shouldMaximizeVectorBandwidthENS_19TargetTransformInfo12RegisterKindE, ptr @_ZNK4llvm27TargetTransformInfoImplBase12getMinimumVFEjb, ptr @_ZNK4llvm27TargetTransformInfoImplBase12getMaximumVFEjj, ptr @_ZNK4llvm10X86TTIImpl17getStoreMinimumVFEjPNS_4TypeES2_NS_5AlignEj, ptr @_ZNK4llvm27TargetTransformInfoImplBase34shouldConsiderAddressTypePromotionERKNS_11InstructionERb, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE16getCacheLineSizeEv, ptr @_ZNK4llvm10X86TTIImpl12getCacheSizeENS_19TargetTransformInfo10CacheLevelE, ptr @_ZNK4llvm10X86TTIImpl21getCacheAssociativityENS_19TargetTransformInfo10CacheLevelE, ptr @_ZNK4llvm27TargetTransformInfoImplBase14getMinPageSizeEv, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE19getPrefetchDistanceEv, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE20getMinPrefetchStrideEjjjb, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE29getMaxPrefetchIterationsAheadEv, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE22enableWritePrefetchingEv, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE26shouldPrefetchAddressSpaceEj, ptr @_ZNK4llvm10X86TTIImpl23getPartialReductionCostEjPNS_4TypeES2_S2_NS_12ElementCountENS_19TargetTransformInfo26PartialReductionExtendKindES5_St8optionalIjENS4_14TargetCostKindES6_INS_13FastMathFlagsEE, ptr @_ZNK4llvm10X86TTIImpl22getMaxInterleaveFactorENS_12ElementCountEb, ptr @_ZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionE, ptr @_ZNK4llvm10X86TTIImpl15getAltInstrCostEPNS_10VectorTypeEjjRKNS_14SmallBitVectorENS_19TargetTransformInfo14TargetCostKindE, ptr @_ZNK4llvm10X86TTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionE, ptr @_ZNK4llvm10X86TTIImpl16getCastInstrCostEjPNS_4TypeES2_NS_19TargetTransformInfo15CastContextHintENS3_14TargetCostKindEPKNS_11InstructionE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE24getExtractWithExtendCostEjPNS_4TypeEPNS_10VectorTypeEjNS_19TargetTransformInfo14TargetCostKindE, ptr @_ZNK4llvm10X86TTIImpl14getCFInstrCostEjNS_19TargetTransformInfo14TargetCostKindEPKNS_11InstructionE, ptr @_ZNK4llvm10X86TTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionE, ptr @_ZNK4llvm10X86TTIImpl18getVectorInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjPKNS_5ValueES7_NS3_18VectorInstrContextE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE18getVectorInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjPNS_5ValueENS_8ArrayRefISt5tupleIJS8_PNS_4UserEiEEEENS5_18VectorInstrContextE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE18getVectorInstrCostERKNS_11InstructionEPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjNS8_18VectorInstrContextE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE32getIndexedVectorInstrCostFromEndEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEj, ptr @_ZNK4llvm10X86TTIImpl25getReplicationShuffleCostEPNS_4TypeEiiRKNS_5APIntENS_19TargetTransformInfo14TargetCostKindE, ptr @_ZNK4llvm27TargetTransformInfoImplBase25getInsertExtractValueCostEjNS_19TargetTransformInfo14TargetCostKindE, ptr @_ZNK4llvm10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS4_16OperandValueInfoEPKNS_11InstructionE, ptr @_ZNK4llvm10X86TTIImpl26getInterleavedMemoryOpCostEjPNS_4TypeEjNS_8ArrayRefIjEENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindEbb, ptr @_ZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE, ptr @_ZNK4llvm10X86TTIImpl24getMemIntrinsicInstrCostERKNS_26MemIntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE16getCallInstrCostEPNS_8FunctionEPNS_4TypeENS_8ArrayRefIS6_EENS_19TargetTransformInfo14TargetCostKindE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE16getNumberOfPartsEPNS_4TypeE, ptr @_ZNK4llvm10X86TTIImpl25getAddressComputationCostEPNS_4TypeEPNS_15ScalarEvolutionEPKNS_4SCEVENS_19TargetTransformInfo14TargetCostKindE, ptr @_ZNK4llvm10X86TTIImpl26getArithmeticReductionCostEjPNS_10VectorTypeESt8optionalINS_13FastMathFlagsEENS_19TargetTransformInfo14TargetCostKindE, ptr @_ZNK4llvm10X86TTIImpl22getMinMaxReductionCostEjPNS_10VectorTypeENS_13FastMathFlagsENS_19TargetTransformInfo14TargetCostKindE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE24getExtendedReductionCostEjbPNS_4TypeEPNS_10VectorTypeESt8optionalINS_13FastMathFlagsEENS_19TargetTransformInfo14TargetCostKindE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE22getMulAccReductionCostEbjPNS_4TypeEPNS_10VectorTypeENS_19TargetTransformInfo14TargetCostKindE, ptr @_ZNK4llvm27TargetTransformInfoImplBase28getCostOfKeepingLiveOverCallENS_8ArrayRefIPNS_4TypeEEE, ptr @_ZNK4llvm27TargetTransformInfoImplBase18getTgtMemIntrinsicEPNS_13IntrinsicInstERNS_16MemIntrinsicInfoE, ptr @_ZNK4llvm10X86TTIImpl35getAtomicMemIntrinsicMaxElementSizeEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase33getOrCreateResultFromMemIntrinsicEPNS_13IntrinsicInstEPNS_4TypeEb, ptr @_ZNK4llvm27TargetTransformInfoImplBase25getMemcpyLoopLoweringTypeERNS_11LLVMContextEPNS_5ValueEjjNS_5AlignES5_St8optionalIjE, ptr @_ZNK4llvm27TargetTransformInfoImplBase33getMemcpyLoopResidualLoweringTypeERNS_15SmallVectorImplIPNS_4TypeEEERNS_11LLVMContextEjjjNS_5AlignES8_St8optionalIjE, ptr @_ZNK4llvm10X86TTIImpl19areInlineCompatibleEPKNS_8FunctionES3_, ptr @_ZNK4llvm27TargetTransformInfoImplBase20getInlineCallPenaltyEPKNS_8FunctionERKNS_8CallBaseEj, ptr @_ZNK4llvm27TargetTransformInfoImplBase36shouldCopyAttributeWhenOutliningFromEPKNS_8FunctionERKNS_9AttributeE, ptr @_ZNK4llvm10X86TTIImpl21areTypesABICompatibleEPKNS_8FunctionES3_NS_8ArrayRefIPNS_4TypeEEE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE18isIndexedLoadLegalENS_19TargetTransformInfo14MemIndexedModeEPNS_4TypeE, ptr @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE19isIndexedStoreLegalENS_19TargetTransformInfo14MemIndexedModeEPNS_4TypeE, ptr @_ZNK4llvm10X86TTIImpl26getLoadStoreVecRegBitWidthEj, ptr @_ZNK4llvm27TargetTransformInfoImplBase22isLegalToVectorizeLoadEPNS_8LoadInstE, ptr @_ZNK4llvm27TargetTransformInfoImplBase23isLegalToVectorizeStoreEPNS_9StoreInstE, ptr @_ZNK4llvm27TargetTransformInfoImplBase27isLegalToVectorizeLoadChainEjNS_5AlignEj, ptr @_ZNK4llvm27TargetTransformInfoImplBase28isLegalToVectorizeStoreChainEjNS_5AlignEj, ptr @_ZNK4llvm27TargetTransformInfoImplBase27isLegalToVectorizeReductionERKNS_20RecurrenceDescriptorENS_12ElementCountE, ptr @_ZNK4llvm27TargetTransformInfoImplBase35isElementTypeLegalForScalableVectorEPNS_4TypeE, ptr @_ZNK4llvm27TargetTransformInfoImplBase19getLoadVectorFactorEjjjPNS_10VectorTypeE, ptr @_ZNK4llvm27TargetTransformInfoImplBase20getStoreVectorFactorEjjjPNS_10VectorTypeE, ptr @_ZNK4llvm27TargetTransformInfoImplBase34preferFixedOverScalableIfEqualCostEb, ptr @_ZNK4llvm27TargetTransformInfoImplBase21preferInLoopReductionENS_9RecurKindEPNS_4TypeE, ptr @_ZNK4llvm10X86TTIImpl34preferAlternateOpcodeVectorizationEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase23preferSLPInstCountCheckEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase31preferPredicatedReductionSelectEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase27preferEpilogueVectorizationENS_12ElementCountE, ptr @_ZNK4llvm27TargetTransformInfoImplBase38shouldConsiderVectorizationRegPressureEv, ptr @_ZNK4llvm10X86TTIImpl21shouldExpandReductionEPKNS_13IntrinsicInstE, ptr @_ZNK4llvm27TargetTransformInfoImplBase36getPreferredExpandedReductionShuffleEPKNS_13IntrinsicInstE, ptr @_ZNK4llvm27TargetTransformInfoImplBase23getGISelRematGlobalCostEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase35getMinTripCountTailFoldingThresholdEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase23supportsScalableVectorsEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase27enableScalableVectorizationEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase21hasActiveVectorLengthEv, ptr @_ZNK4llvm10X86TTIImpl26isProfitableToSinkOperandsEPNS_11InstructionERNS_15SmallVectorImplIPNS_3UseEEE, ptr @_ZNK4llvm10X86TTIImpl26isVectorShiftByScalarCheapEPNS_4TypeE, ptr @_ZNK4llvm27TargetTransformInfoImplBase25getVPLegalizationStrategyERKNS_11VPIntrinsicE, ptr @_ZNK4llvm27TargetTransformInfoImplBase16hasArmWideBranchEb, ptr @_ZNK4llvm27TargetTransformInfoImplBase14getFeatureMaskERKNS_8FunctionE, ptr @_ZNK4llvm27TargetTransformInfoImplBase15getPriorityMaskERKNS_8FunctionE, ptr @_ZNK4llvm27TargetTransformInfoImplBase24isMultiversionedFunctionERKNS_8FunctionE, ptr @_ZNK4llvm27TargetTransformInfoImplBase13getMaxNumArgsEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase27getNumBytesToPadGlobalArrayEjPNS_4TypeE, ptr @_ZNK4llvm27TargetTransformInfoImplBase25collectKernelLaunchBoundsERKNS_8FunctionERNS_15SmallVectorImplISt4pairINS_9StringRefElEEE, ptr @_ZNK4llvm27TargetTransformInfoImplBase34allowVectorElementIndexingUsingGEPEv, ptr @_ZNK4llvm27TargetTransformInfoImplBase9isUniformEPKNS_11InstructionERKNS_14SmallBitVectorE] }, align 8
@.str = private unnamed_addr constant [99 x i8] c"Cannot implicitly convert a scalable size to a fixed-width size in `TypeSize::operator ScalarTy()`\00", align 1
@.str.1 = private unnamed_addr constant [146 x i8] c"Possible incorrect use of MVT::getVectorNumElements() for scalable vector. Scalable flag may be dropped, use MVT::getVectorElementCount() instead\00", align 1
@_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable = linkonce_odr local_unnamed_addr constant <{ [215 x i16], [57 x i16] }> <{ [215 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 2048, i16 4096, i16 128, i16 256, i16 64, i16 128, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 4096, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 16, i16 24, i16 32, i16 48, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 2048, i16 4096, i16 1, i16 2, i16 3, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 1, i16 2, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 4096, i16 1, i16 2, i16 3, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 2048, i16 4096, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 2048, i16 1, i16 2, i16 3, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 64, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 64, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 1, i16 2, i16 4, i16 8, i16 16, i16 1, i16 2, i16 4, i16 8], [57 x i16] zeroinitializer }>, comdat, align 16
@_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable = linkonce_odr local_unnamed_addr constant <{ [215 x i16], [57 x i16] }> <{ [215 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 3, i16 3, i16 4, i16 4, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 9, i16 9, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 14, i16 14, i16 14, i16 14, i16 14, i16 15, i16 15, i16 15, i16 15], [57 x i16] zeroinitializer }>, comdat, align 16
@_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable = linkonce_odr local_unnamed_addr constant <{ [263 x { i64, i8 }], [9 x { i64, i8 }] }> <{ [263 x { i64, i8 }] [{ i64, i8 } zeroinitializer, { i64, i8 } { i64 1, i8 0 }, { i64, i8 } { i64 2, i8 0 }, { i64, i8 } { i64 4, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 80, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 1, i8 0 }, { i64, i8 } { i64 2, i8 0 }, { i64, i8 } { i64 3, i8 0 }, { i64, i8 } { i64 4, i8 0 }, { i64, i8 } { i64 5, i8 0 }, { i64, i8 } { i64 6, i8 0 }, { i64, i8 } { i64 7, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 24, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 40, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 56, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 80, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 112, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 160, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 224, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 288, i8 0 }, { i64, i8 } { i64 320, i8 0 }, { i64, i8 } { i64 352, i8 0 }, { i64, i8 } { i64 384, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 768, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 1536, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 32768, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 131072, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 80, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 112, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 32768, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 160, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 224, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 288, i8 0 }, { i64, i8 } { i64 320, i8 0 }, { i64, i8 } { i64 352, i8 0 }, { i64, i8 } { i64 384, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 32768, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 1, i8 1 }, { i64, i8 } { i64 2, i8 1 }, { i64, i8 } { i64 4, i8 1 }, { i64, i8 } { i64 8, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 8, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 1024, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 1024, i8 1 }, { i64, i8 } { i64 2048, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 24, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 40, i8 1 }, { i64, i8 } { i64 48, i8 1 }, { i64, i8 } { i64 56, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 48, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 80, i8 1 }, { i64, i8 } { i64 96, i8 1 }, { i64, i8 } { i64 112, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 96, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 160, i8 1 }, { i64, i8 } { i64 192, i8 1 }, { i64, i8 } { i64 224, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 192, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 320, i8 1 }, { i64, i8 } { i64 384, i8 1 }, { i64, i8 } { i64 448, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 384, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } zeroinitializer, { i64, i8 } zeroinitializer, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } zeroinitializer, { i64, i8 } zeroinitializer, { i64, i8 } zeroinitializer, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } zeroinitializer, { i64, i8 } { i64 160, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }], [9 x { i64, i8 }] zeroinitializer }>, comdat, align 16
@.str.3 = private unnamed_addr constant [10 x i8] c"copysignf\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"fabs\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"fabsf\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"fmin\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"fminf\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"fmax\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"fmaxf\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"sinf\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"cosf\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"tanf\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"asinf\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"acos\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"acosf\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"atan\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"atanf\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"atan2f\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"sinh\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"sinhf\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"cosh\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"coshf\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"tanh\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"tanhf\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"sqrtf\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"exp10l\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"powf\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"exp2l\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"floorf\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"ceil\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"round\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"ffs\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"ffsl\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"labs\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"llabs\00", align 1
@.str.65 = private unnamed_addr constant [32 x i8] c"Generic::Unknown Register Class\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"Generic::ScalarRC\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"Generic::VectorRC\00", align 1
@_ZN4llvm25PartialUnrollingThresholdE = external local_unnamed_addr global %"class.llvm::cl::opt", align 8
@.str.68 = private unnamed_addr constant [4 x i8] c"TTI\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"DontUnroll\00", align 1
@.str.70 = private unnamed_addr constant [59 x i8] c"advising against unrolling the loop because it contains a \00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"Call\00", align 1
@_ZTVN4llvm18OptimizationRemarkE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN4llvm30DiagnosticInfoOptimizationBaseE = external unnamed_addr constant { [7 x ptr] }, align 8
@switch.table._ZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionE = private unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE14SSSE3CostTable, i64 4), ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE14SSSE3CostTable, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE14SSSE3CostTable, i64 12), ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE14SSSE3CostTable, i64 16)], align 8
@switch.table._ZNK4llvm10X86TTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionE = private unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionEE12SSE42CostTbl, i64 4), ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionEE12SSE42CostTbl, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionEE12SSE42CostTbl, i64 12), ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionEE12SSE42CostTbl, i64 16)], align 8
@switch.table._ZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE = private unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE12BMI64CostTbl, i64 4), ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE12BMI64CostTbl, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE12BMI64CostTbl, i64 12), ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE12BMI64CostTbl, i64 16)], align 8
@switch.table._ZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE.61 = private unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE14LZCNT64CostTbl, i64 4), ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE14LZCNT64CostTbl, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE14LZCNT64CostTbl, i64 12), ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE14LZCNT64CostTbl, i64 16)], align 8
@switch.table._ZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE.62 = private unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE15POPCNT64CostTbl, i64 4), ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE15POPCNT64CostTbl, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE15POPCNT64CostTbl, i64 12), ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE15POPCNT64CostTbl, i64 16)], align 8
@switch.table._ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE11getFPOpCostEPNS_4TypeE = private unnamed_addr constant [5 x i8] c"\04\04\10\10\04", align 8
@switch.table._ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE30getTypeBasedIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE = private unnamed_addr constant [5 x i8] [i8 21, i8 24, i8 poison, i8 20, i8 23], align 4
@switch.table._ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE30getTypeBasedIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE.63 = private unnamed_addr constant [5 x i16] [i16 532, i16 534, i16 poison, i16 531, i16 533], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZNK4llvm10X86TTIImpl16getPopcntSupportEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 469
  %i.d = load i8, ptr %i.c, align 1, !tbaa !172, !range !173, !noundef !174
  %i.e = shl nuw nsw i8 %i.d, 1
  %i.f = zext nneg i8 %i.e to i32
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i64 4295000064, 4295229441) i64 @_ZNK4llvm10X86TTIImpl12getCacheSizeENS_19TargetTransformInfo10CacheLevelE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %.sroa.0.0.insert.insert = select i1 %i.a, i64 4295000064, i64 4295229440
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZNK4llvm10X86TTIImpl21getCacheAssociativityENS_19TargetTransformInfo10CacheLevelE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #1 align 2 {
bb.a:
  ret i64 4294967304
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZNK4llvm10X86TTIImpl23getRegisterClassForTypeEbPNS_4TypeE(ptr nofree nonnull readnone align 8 captures(none) %0, i1 noundef zeroext %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #3 align 2 {
bb.a:
  br i1 %1, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %.fr3 = freeze i32 %i.b                         ; 2 uses
  %trunc.i.i = trunc i32 %.fr3 to i8              ; 2 uses
  %i.c = icmp ult i8 %trunc.i.i, 6
  %switch.shifted = lshr i8 47, %trunc.i.i
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit

_ZNK4llvm4Type17isFloatingPointTyEv.exit:         ; preds = %bb.c
  %i.d = and i32 %.fr3, 253
  %spec.select.i = icmp eq i32 %i.d, 4
  %spec.select = select i1 %spec.select.i, i32 2, i32 0
  br label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread

_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread:  ; preds = %_ZNK4llvm4Type17isFloatingPointTyEv.exit, %bb.c, %bb.b, %bb.a
  %i.e = phi i32 [ 1, %bb.a ], [ 0, %bb.b ], [ 2, %bb.c ], [ %spec.select, %_ZNK4llvm4Type17isFloatingPointTyEv.exit ]
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 33) i32 @_ZNK4llvm10X86TTIImpl20getNumberOfRegistersEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 5 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  %i.e = load i32, ptr %i.d, align 8, !tbaa !175  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 522
  %i.h = load i8, ptr %i.g, align 2, !tbaa !176, !range !173, !noundef !174
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.g

.thread:                                          ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 522
  %i.k = load i8, ptr %i.j, align 2, !tbaa !176, !range !173, !noundef !174
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.thread4, label %bb.g

bb.d:                                             ; preds = %bb.c
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %bb.e, label %..thread4_crit_edge

..thread4_crit_edge:                              ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !175
  br label %.thread4

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 412
  %i.n = load i8, ptr %i.m, align 4, !tbaa !177, !range !173, !noundef !174
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.g, label %bb.f

.thread4:                                         ; preds = %..thread4_crit_edge, %.thread
  %i.p = phi i32 [ %.pre, %..thread4_crit_edge ], [ %i.e, %.thread ]
  %i.q = icmp sgt i32 %i.p, 8
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread4
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.e, %.thread4, %bb.c, %bb.b, %bb.f
  %.0 = phi i32 [ 8, %bb.c ], [ 16, %bb.f ], [ 0, %bb.b ], [ 32, %.thread4 ], [ 32, %bb.e ], [ 8, %.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm10X86TTIImpl30hasConditionalLoadStoreForTypeEPNS_4TypeEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(address_is_null) %1, i1 zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.d = load i8, ptr %i.c, align 8, !tbaa !178, !range !173, !noundef !174
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 3 uses
  %trunc = trunc i32 %i.g to i8
  switch i8 %trunc, label %bb.g [
    i8 12, label %bb.e
    i8 18, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !186
  %.not12 = icmp eq i32 %i.i, 1
  br i1 %.not12, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = and i32 %i.g, 254
  %spec.select.i.i13 = icmp eq i32 %i.j, 18
  br i1 %spec.select.i.i13, label %bb.f, label %_ZNK4llvm4Type13getScalarTypeEv.exit

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !187
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !188
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit

_ZNK4llvm4Type13getScalarTypeEv.exit:             ; preds = %bb.e, %bb.f
  %i.n = phi i32 [ %.pre, %bb.f ], [ %i.g, %bb.e ]
  %i.o = lshr i32 %i.n, 8
  %switch.tableidx = add nsw i32 %i.o, -16        ; 2 uses
  %i.p = icmp ult i32 %switch.tableidx, 49
  br i1 %i.p, label %switch.lookup, label %bb.g

switch.lookup:                                    ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  %switch.cast = zext nneg i32 %switch.tableidx to i49
  %switch.downshift = lshr i49 -281474976645119, %switch.cast
  %switch.masked = trunc i49 %switch.downshift to i1
  br label %bb.g

bb.g:                                             ; preds = %switch.lookup, %_ZNK4llvm4Type13getScalarTypeEv.exit, %bb.c, %bb.d, %bb.b, %bb.a
  %.2 = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.d ], [ %switch.masked, %switch.lookup ], [ false, %_ZNK4llvm4Type13getScalarTypeEv.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { i64, i8 } @_ZNK4llvm10X86TTIImpl19getRegisterBitWidthENS_19TargetTransformInfo12RegisterKindE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 728
  %i.d = load i32, ptr %i.c, align 8, !tbaa !189  ; 3 uses
  switch i32 %1, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 522
  %i.f = load i8, ptr %i.e, align 2, !tbaa !176, !range !173, !noundef !174
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = select i1 %i.g, i64 64, i64 32
  %.fca.0.insert.i = insertvalue { i64, i8 } poison, i64 %i.h, 0
  %.fca.1.insert.i = insertvalue { i64, i8 } %.fca.0.insert.i, i8 0, 1
  br label %bb.g

end_hunk_0
begin_hunk_1_@_ZN4llvm15CostTableLookupILm31E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE:.lr.ph.i
  %i.ei = zext i16 %i.eh to i32
  %i.ej = icmp eq i32 %1, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 342
  %i.el = load i16, ptr %i.ek, align 2
  %i.em = icmp eq i16 %i.el, %2
  %i.en = select i1 %i.ej, i1 %i.em, i1 false
  br i1 %i.en, label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit2, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ep = load i16, ptr %i.eo, align 4, !tbaa !223
  %i.eq = zext i16 %i.ep to i32
  %i.er = icmp eq i32 %1, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 362
  %i.et = load i16, ptr %i.es, align 2
  %i.eu = icmp eq i16 %i.et, %2
  %i.ev = select i1 %i.er, i1 %i.eu, i1 false
  br i1 %i.ev, label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit4, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.ex = load i16, ptr %i.ew, align 4, !tbaa !223
  %i.ey = zext i16 %i.ex to i32
  %i.ez = icmp eq i32 %1, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 382
  %i.fb = load i16, ptr %i.fa, align 2
  %i.fc = icmp eq i16 %i.fb, %2
  %i.fd = select i1 %i.ez, i1 %i.fc, i1 false
  br i1 %i.fd, label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit6, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.o
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %i.ff = load i16, ptr %i.fe, align 4, !tbaa !223
  %i.fg = zext i16 %i.ff to i32
  %i.fh = icmp eq i32 %1, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 402
  %i.fj = load i16, ptr %i.fi, align 2
  %i.fk = icmp eq i16 %i.fj, %2
  %i.fl = select i1 %i.fh, i1 %i.fk, i1 false
  br i1 %i.fl, label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.5
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.fn = load i16, ptr %i.fm, align 4, !tbaa !223
  %i.fo = zext i16 %i.fn to i32
  %i.fp = icmp eq i32 %1, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 422
  %i.fr = load i16, ptr %i.fq, align 2
  %i.fs = icmp eq i16 %i.fr, %2
  %i.ft = select i1 %i.fp, i1 %i.fs, i1 false
  br i1 %i.ft, label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit2, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.fv = load i16, ptr %i.fu, align 4, !tbaa !223
  %i.fw = zext i16 %i.fv to i32
  %i.fx = icmp eq i32 %1, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 442
  %i.fz = load i16, ptr %i.fy, align 2
  %i.ga = icmp eq i16 %i.fz, %2
  %i.gb = select i1 %i.fx, i1 %i.ga, i1 false
  br i1 %i.gb, label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit4, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.gd = load i16, ptr %i.gc, align 4, !tbaa !223
  %i.ge = zext i16 %i.gd to i32
  %i.gf = icmp eq i32 %1, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 462
  %i.gh = load i16, ptr %i.gg, align 2
  %i.gi = icmp eq i16 %i.gh, %2
  %i.gj = select i1 %i.gf, i1 %i.gi, i1 false
  br i1 %i.gj, label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit6, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %bb.r
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 5 uses
  %i.gl = load i16, ptr %i.gk, align 4, !tbaa !223
  %i.gm = zext i16 %i.gl to i32
  %i.gn = icmp eq i32 %1, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 482
  %i.gp = load i16, ptr %i.go, align 2
  %i.gq = icmp eq i16 %i.gp, %2
  %i.gr = select i1 %i.gn, i1 %i.gq, i1 false
  br i1 %i.gr, label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.6
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.gt = load i16, ptr %i.gs, align 4, !tbaa !223
  %i.gu = zext i16 %i.gt to i32
  %i.gv = icmp eq i32 %1, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 502
  %i.gx = load i16, ptr %i.gw, align 2
  %i.gy = icmp eq i16 %i.gx, %2
  %i.gz = select i1 %i.gv, i1 %i.gy, i1 false
  br i1 %i.gz, label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit2, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.hb = load i16, ptr %i.ha, align 4, !tbaa !223
  %i.hc = zext i16 %i.hb to i32
  %i.hd = icmp eq i32 %1, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 522
  %i.hf = load i16, ptr %i.he, align 2
  %i.hg = icmp eq i16 %i.hf, %2
  %i.hh = select i1 %i.hd, i1 %i.hg, i1 false
  br i1 %i.hh, label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit4, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.hj = load i16, ptr %i.hi, align 4, !tbaa !223
  %i.hk = zext i16 %i.hj to i32
  %i.hl = icmp eq i32 %1, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 542
  %i.hn = load i16, ptr %i.hm, align 2
  %i.ho = icmp eq i16 %i.hn, %2
  %i.hp = select i1 %i.hl, i1 %i.ho, i1 false
  br i1 %i.hp, label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit6, label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %bb.u
  %i.hq = load i16, ptr %scevgep.i, align 4, !tbaa !223
  %i.hr = zext i16 %i.hq to i32
  %i.hs = icmp eq i32 %1, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 562
  %i.hu = load i16, ptr %i.ht, align 2
  %i.hv = icmp eq i16 %i.hu, %2
  %i.hw = select i1 %i.hs, i1 %i.hv, i1 false
  br i1 %i.hw, label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge.loopexit.i
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 2 uses
  %i.hy = load i16, ptr %i.hx, align 4, !tbaa !223
  %i.hz = zext i16 %i.hy to i32
  %i.ia = icmp eq i32 %1, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 582
  %i.ic = load i16, ptr %i.ib, align 2
  %i.id = icmp eq i16 %i.ic, %2
  %i.ie = select i1 %i.ia, i1 %i.id, i1 false
  br i1 %i.ie, label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.ig = load i16, ptr %i.if, align 4, !tbaa !223
  %i.ih = zext i16 %i.ig to i32
  %i.ii = icmp eq i32 %1, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 602
  %i.ik = load i16, ptr %i.ij, align 2
  %i.il = icmp eq i16 %i.ik, %2
  %i.im = select i1 %i.ii, i1 %i.il, i1 false
  %spec.select = select i1 %i.im, ptr %i.if, ptr %i.a
  br label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit

_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit2: ; preds = %bb.s, %bb.p, %bb.m, %bb.j, %bb.g, %bb.d, %bb.a
  %.02952.i.lcssa10 = phi ptr [ %0, %bb.a ], [ %i.ag, %bb.d ], [ %i.bm, %bb.g ], [ %i.cs, %bb.j ], [ %i.dy, %bb.m ], [ %i.fe, %bb.p ], [ %i.gk, %bb.s ]
  %i.in = getelementptr inbounds nuw i8, ptr %.02952.i.lcssa10, i64 20
  br label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit

_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit4: ; preds = %bb.t, %bb.q, %bb.n, %bb.k, %bb.h, %bb.e, %bb.b
  %.02952.i.lcssa11 = phi ptr [ %0, %bb.b ], [ %i.ag, %bb.e ], [ %i.bm, %bb.h ], [ %i.cs, %bb.k ], [ %i.dy, %bb.n ], [ %i.fe, %bb.q ], [ %i.gk, %bb.t ]
  %i.io = getelementptr inbounds nuw i8, ptr %.02952.i.lcssa11, i64 40
  br label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit

_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit6: ; preds = %bb.u, %bb.r, %bb.o, %bb.l, %bb.i, %bb.f, %bb.c
  %.02952.i.lcssa12 = phi ptr [ %0, %bb.c ], [ %i.ag, %bb.f ], [ %i.bm, %bb.i ], [ %i.cs, %bb.l ], [ %i.dy, %bb.o ], [ %i.fe, %bb.r ], [ %i.gk, %bb.u ]
  %i.ip = getelementptr inbounds nuw i8, ptr %.02952.i.lcssa12, i64 60
  br label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit

_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit: ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit2, %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit4, %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit6, %bb.w, %._crit_edge.loopexit.i, %bb.v
  %.028.i = phi ptr [ %i.hx, %bb.v ], [ %scevgep.i, %._crit_edge.loopexit.i ], [ %spec.select, %bb.w ], [ %i.ip, %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit6 ], [ %i.io, %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit4 ], [ %i.in, %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit2 ], [ %0, %.lr.ph.i ], [ %i.ag, %.lr.ph.i.1 ], [ %i.bm, %.lr.ph.i.2 ], [ %i.cs, %.lr.ph.i.3 ], [ %i.dy, %.lr.ph.i.4 ], [ %i.fe, %.lr.ph.i.5 ], [ %i.gk, %.lr.ph.i.6 ] ; 2 uses
  %.not.i = icmp eq ptr %.028.i, %i.a
  %..i = select i1 %.not.i, ptr null, ptr %.028.i
  ret ptr %..i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK4llvm10X86TTIImpl35getAtomicMemIntrinsicMaxElementSizeEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  ret i32 16
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i32 } @_ZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %2) unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.372", align 8    ; 7 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  %4 = alloca %"struct.llvm::PatternMatch::ap_match", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %5 = alloca %"struct.llvm::PatternMatch::ap_match", align 8 ; 6 uses
  %6 = alloca %"struct.std::pair", align 8        ; 4 uses
  %7 = alloca %"struct.std::pair", align 8        ; 4 uses
  %8 = alloca %"struct.std::pair", align 8        ; 4 uses
  %9 = alloca %"struct.std::pair", align 8        ; 4 uses
  %10 = alloca %"struct.std::pair", align 8       ; 4 uses
  %11 = alloca %"struct.std::pair", align 8       ; 4 uses
  %12 = alloca %"struct.std::pair", align 8       ; 4 uses
  %13 = alloca %"struct.std::pair", align 8       ; 4 uses
  %14 = alloca %"struct.std::pair", align 8       ; 4 uses
  %15 = alloca %"struct.std::pair", align 8       ; 4 uses
  %16 = alloca %"struct.std::pair", align 8       ; 4 uses
  %17 = alloca %"struct.std::pair", align 8       ; 4 uses
  %18 = alloca %"struct.std::pair", align 8       ; 4 uses
  %19 = alloca %"class.llvm::ArrayRef.62", align 8 ; 2 uses
  %20 = alloca %"class.llvm::ArrayRef.62", align 8 ; 2 uses
  %21 = alloca %"class.llvm::ArrayRef.62", align 8 ; 2 uses
  %22 = alloca %"class.llvm::ArrayRef.62", align 8 ; 2 uses
  %23 = alloca %"class.llvm::ArrayRef.62", align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !305  ; 35 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !306  ; 2 uses
  switch i32 %i.f, label %bb.lb [
    i32 1, label %bb.af
    i32 19, label %bb.b
    i32 20, label %bb.c
    i32 74, label %bb.d
    i32 75, label %bb.e
    i32 76, label %bb.f
    i32 190, label %bb.g
    i32 191, label %bb.l
    i32 236, label %bb.q
    i32 222, label %bb.q
    i32 254, label %bb.r
    i32 265, label %bb.r
    i32 335, label %bb.s
    i32 353, label %bb.t
    i32 354, label %bb.u
    i32 362, label %bb.v
    i32 386, label %bb.w
    i32 392, label %bb.x
    i32 393, label %bb.y
    i32 398, label %bb.z
    i32 359, label %bb.aa
    i32 336, label %bb.ab
    i32 363, label %bb.ab
    i32 387, label %bb.ac
    i32 399, label %bb.ac
    i32 357, label %bb.ad
    i32 396, label %bb.ae
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  br label %bb.af

bb.d:                                             ; preds = %bb.a
  br label %bb.af

bb.e:                                             ; preds = %bb.a
  br label %bb.af

bb.f:                                             ; preds = %bb.a
  br label %bb.af

bb.g:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !253
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.af, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !251  ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !210
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !210
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.i, label %bb.af

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !210  ; 2 uses
  %.not567 = icmp eq ptr %i.p, null
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  br i1 %.not567, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.a, ptr %4, align 8
  %.sroa.2407.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 1, ptr %.sroa.2407.0..sroa_idx, align 8
  %i.q = call noundef zeroext i1 @_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_8ap_matchINS_5APIntEEEEEbPT_RKT0_(ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(9) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %spec.select = select i1 %i.q, i32 965, i32 201
  br label %bb.k

.critedge:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge
  %.0533 = phi i32 [ 201, %.critedge ], [ %spec.select, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.af

bb.l:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = load i32, ptr %i.r, align 8, !tbaa !253
  %.not.i.i749 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i749, label %bb.af, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !251  ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !210
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !210
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.n, label %bb.af

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !210 ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  br i1 %.not, label %.critedge52, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.b, ptr %5, align 8
  %.sroa.2399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 1, ptr %.sroa.2399.0..sroa_idx, align 8
  %i.ab = call noundef zeroext i1 @_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_8ap_matchINS_5APIntEEEEEbPT_RKT0_(ptr noundef nonnull %i.aa, ptr noundef nonnull align 8 dereferenceable(9) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %spec.select595 = select i1 %i.ab, i32 965, i32 202
  br label %bb.p

.critedge52:                                      ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.critedge52
  %.2 = phi i32 [ 202, %.critedge52 ], [ %spec.select595, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.af

bb.q:                                             ; preds = %bb.a, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !251
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !188
  %i.af = tail call { i64, i32 } @_ZNK4llvm10X86TTIImpl16getCastInstrCostEjPNS_4TypeES2_NS_19TargetTransformInfo15CastContextHintENS3_14TargetCostKindEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 43, ptr noundef %i.d, ptr noundef %i.ae, i8 noundef zeroext 0, i32 noundef %2, ptr noundef null)
  br label %bb.lc

bb.r:                                             ; preds = %bb.a, %bb.a
  br label %bb.af

bb.s:                                             ; preds = %bb.a
  br label %bb.af

bb.t:                                             ; preds = %bb.a
  br label %bb.af

bb.u:                                             ; preds = %bb.a
  br label %bb.af

bb.v:                                             ; preds = %bb.a
  br label %bb.af

bb.w:                                             ; preds = %bb.a
  br label %bb.af

bb.x:                                             ; preds = %bb.a
  br label %bb.af

bb.y:                                             ; preds = %bb.a
  br label %bb.af

bb.z:                                             ; preds = %bb.a
  br label %bb.af

bb.aa:                                            ; preds = %bb.a
  br label %bb.af

bb.ab:                                            ; preds = %bb.a, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !187
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !188
  br label %bb.af

bb.ac:                                            ; preds = %bb.a, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !187
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !188
  br label %bb.af

bb.ad:                                            ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !187
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !188
  br label %bb.af

bb.ae:                                            ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !187
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !188
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.ae, %bb.l, %bb.h, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.k, %bb.p, %bb.m
  %.4.ph = phi i32 [ 203, %bb.m ], [ %.2, %bb.p ], [ %.0533, %bb.k ], [ 83, %bb.ad ], [ 80, %bb.ac ], [ 79, %bb.ab ], [ 262, %bb.aa ], [ 88, %bb.z ], [ 189, %bb.y ], [ 190, %bb.x ], [ 86, %bb.w ], [ 87, %bb.v ], [ 187, %bb.u ], [ 188, %bb.t ], [ 85, %bb.s ], [ 296, %bb.r ], [ 203, %bb.h ], [ 203, %bb.l ], [ 84, %bb.ae ], [ 203, %bb.g ], [ 211, %bb.f ], [ 213, %bb.e ], [ 212, %bb.d ], [ 210, %bb.c ], [ 214, %bb.b ], [ 196, %bb.a ] ; 8 uses
  %.0.ph = phi ptr [ %i.d, %bb.m ], [ %i.d, %bb.p ], [ %i.d, %bb.k ], [ %i.ao, %bb.ad ], [ %i.al, %bb.ac ], [ %i.ai, %bb.ab ], [ %i.d, %bb.aa ], [ %i.d, %bb.z ], [ %i.d, %bb.y ], [ %i.d, %bb.x ], [ %i.d, %bb.w ], [ %i.d, %bb.v ], [ %i.d, %bb.u ], [ %i.d, %bb.t ], [ %i.d, %bb.s ], [ %i.d, %bb.r ], [ %i.d, %bb.h ], [ %i.d, %bb.l ], [ %i.ar, %bb.ae ], [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %i.d, %bb.e ], [ %i.d, %bb.d ], [ %i.d, %bb.c ], [ %i.d, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.as = load ptr, ptr %.0.ph, align 8, !tbaa !192, !noalias !618, !nonnull !174, !align !193
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !194, !noalias !618
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !195, !noalias !618, !nonnull !174, !align !193
  %i.ax = call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.au, ptr noundef nonnull align 8 dereferenceable(912) %i.aw, ptr noundef nonnull %.0.ph, i1 noundef zeroext false), !noalias !618 ; 2 uses
  %i.ay = extractvalue { i16, ptr } %i.ax, 0
  %i.az = extractvalue { i16, ptr } %i.ax, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.am, %bb.af
  %.sroa.019.0.i = phi i64 [ 4, %bb.af ], [ %.sroa.019.1.i, %bb.am ] ; 5 uses
  %.sroa.025.0.i = phi i16 [ %i.ay, %bb.af ], [ %.sroa.0.0.copyload.i, %bb.am ] ; 6 uses
  %.sroa.1027.0.i = phi ptr [ %i.az, %bb.af ], [ %.sroa.24.0.copyload.i, %bb.am ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !618
  %i.bb = load ptr, ptr %i.at, align 8, !tbaa !194, !noalias !618
  call void @_ZNK4llvm18TargetLoweringBase17getTypeConversionERNS_11LLVMContextENS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.372") align 8 %3, ptr noundef nonnull align 8 dereferenceable(518435) %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.as, i16 %.sroa.025.0.i, ptr %.sroa.1027.0.i) #23, !noalias !618
  %i.bc = load i8, ptr %3, align 8, !tbaa !201, !noalias !618 ; 2 uses
  switch i8 %i.bc, label %bb.ai [
    i8 9, label %bb.ah
    i8 0, label %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  ]

bb.ah:                                            ; preds = %bb.ag
  %.not.i = icmp eq i16 %.sroa.025.0.i, 0
  %spec.select.i = select i1 %.not.i, i16 8, i16 %.sroa.025.0.i
  br label %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit

bb.ai:                                            ; preds = %bb.ag
  %i.bd = and i8 %i.bc, -5
  %or.cond.i = icmp eq i8 %i.bd, 2
  br i1 %or.cond.i, label %bb.aj, label %_ZN4llvm15InstructionCostmLEl.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.be = add i64 %.sroa.019.0.i, -1152921504606846976
  %i.bf = icmp ult i64 %i.be, -2305843009213693952
  br i1 %i.bf, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.bg = icmp sgt i64 %.sroa.019.0.i, 0
  %spec.select28.i = select i1 %i.bg, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN4llvm15InstructionCostmLEl.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.bh = shl nsw i64 %.sroa.019.0.i, 1
  br label %_ZN4llvm15InstructionCostmLEl.exit.i

_ZN4llvm15InstructionCostmLEl.exit.i:             ; preds = %bb.al, %bb.ak, %bb.ai
  %.sroa.019.1.i = phi i64 [ %.sroa.019.0.i, %bb.ai ], [ %i.bh, %bb.al ], [ %spec.select28.i, %bb.ak ] ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.ba, align 8, !tbaa !202, !noalias !618 ; 2 uses
  %.sroa.24.0.copyload.i = load ptr, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !188, !noalias !618 ; 2 uses
  %.not.i.i.i = icmp eq i16 %.sroa.025.0.i, %.sroa.0.0.copyload.i
  %i.bi = icmp eq ptr %.sroa.1027.0.i, %.sroa.24.0.copyload.i
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.bi, i1 false
  br i1 %.not4.i.i, label %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit, label %bb.am

bb.am:                                            ; preds = %_ZN4llvm15InstructionCostmLEl.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !618
  br label %bb.ag, !llvm.loop !0

_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit: ; preds = %bb.ag, %_ZN4llvm15InstructionCostmLEl.exit.i, %bb.ah
  %.sroa.019.1.lcssa.sink.i = phi i64 [ 0, %bb.ah ], [ %.sroa.019.0.i, %bb.ag ], [ %.sroa.019.1.i, %_ZN4llvm15InstructionCostmLEl.exit.i ] ; 77 uses
  %.sink.i = phi i32 [ 1, %bb.ah ], [ 0, %_ZN4llvm15InstructionCostmLEl.exit.i ], [ 0, %bb.ag ] ; 60 uses
  %.sroa.025.0.lcssa38.sink.i = phi i16 [ %spec.select.i, %bb.ah ], [ %.sroa.025.0.i, %_ZN4llvm15InstructionCostmLEl.exit.i ], [ %.sroa.025.0.i, %bb.ag ] ; 84 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !618
  %i.bj = icmp eq i32 %.4.ph, 211                 ; 2 uses
  br i1 %i.bj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 392
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !307, !range !173, !noundef !174
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %.thread1429, label %bb.aq

bb.ao:                                            ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  %i.bp = icmp eq i32 %.4.ph, 212
  br i1 %i.bp, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 450
  %i.bt = load i8, ptr %i.bs, align 2, !tbaa !619, !range !173, !noundef !174
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %.thread1429, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %i.bv = add i16 %.sroa.025.0.lcssa38.sink.i, -19
  %spec.select.i752 = icmp ult i16 %i.bv, 197
  br i1 %spec.select.i752, label %.thread1429, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !253
  %.not.i.i753 = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i753, label %.thread1429, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !251
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !210 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !213
  %.not1603 = icmp eq i8 %i.cc, 5
  br i1 %.not1603, label %bb.at, label %.thread1429

bb.at:                                            ; preds = %bb.as
  %i.cd = call noundef zeroext i1 @_ZNK4llvm8Constant14isAllOnesValueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cb) #23
  %i.ce = select i1 %i.bj, i32 216, i32 217
  %spec.select596 = select i1 %i.cd, i32 %i.ce, i32 %.4.ph
  br label %.thread1429

bb.au:                                            ; preds = %bb.ao
  %i.cf = icmp eq i32 %.4.ph, 262                 ; 2 uses
  %i.cg = icmp eq i32 %2, 2
  %or.cond = and i1 %i.cg, %i.cf
  br i1 %or.cond, label %.critedge699, label %.thread1429

.thread1429:                                      ; preds = %bb.an, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.au
  %i.ch = phi i1 [ %i.cf, %bb.au ], [ false, %bb.ap ], [ false, %bb.aq ], [ false, %bb.ar ], [ false, %bb.as ], [ false, %bb.at ], [ false, %bb.an ] ; 12 uses
  %.61432 = phi i32 [ %.4.ph, %bb.au ], [ 212, %bb.ap ], [ %.4.ph, %bb.aq ], [ %.4.ph, %bb.ar ], [ %.4.ph, %bb.as ], [ %spec.select596, %bb.at ], [ 211, %bb.an ] ; 39 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 15 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !24 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 550
  %i.cl = load i8, ptr %i.ck, align 2, !tbaa !224, !range !173, !noundef !174
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.av, label %.critedge600

bb.av:                                            ; preds = %.thread1429
  %i.cn = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 14
  %i.co = select i1 %i.ch, i1 %i.cn, i1 false
  br i1 %i.co, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cp = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 136
  %i.cq = select i1 %i.ch, i1 %i.cp, i1 false
  br i1 %i.cq, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cr = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 15
  %i.cs = select i1 %i.ch, i1 %i.cr, i1 false
  br i1 %i.cs, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ct = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 154
  %i.cu = select i1 %i.ch, i1 %i.ct, i1 false
  br i1 %i.cu, label %bb.az, label %.critedge600

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av
  %.028.i.idx.ph.i = phi i64 [ 20, %bb.aw ], [ 0, %bb.av ], [ 40, %bb.ax ], [ 60, %bb.ay ]
  %.028.i.ptr10.i = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE10GLMCostTbl, i64 %.028.i.idx.ph.i ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.028.i.ptr10.i, i64 4
  switch i32 %2, label %.critedge600 [
    i32 0, label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit
    i32 1, label %bb.ba
    i32 2, label %bb.bb
    i32 3, label %bb.bc
  ]

bb.ba:                                            ; preds = %bb.az
  %i.cw = getelementptr inbounds nuw i8, ptr %.028.i.ptr10.i, i64 8
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit

bb.bb:                                            ; preds = %bb.az
  %i.cx = getelementptr inbounds nuw i8, ptr %.028.i.ptr10.i, i64 12
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit

bb.bc:                                            ; preds = %bb.az
  %i.cy = getelementptr inbounds nuw i8, ptr %.028.i.ptr10.i, i64 16
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit: ; preds = %bb.az, %bb.ba, %bb.bb, %bb.bc
  %.0.in.i = phi ptr [ %i.cy, %bb.bc ], [ %i.cx, %bb.bb ], [ %i.cw, %bb.ba ], [ %i.cv, %bb.az ]
  %.0.i = load i32, ptr %.0.in.i, align 4, !tbaa !217 ; 4 uses
  %.not.i754.not = icmp eq i32 %.0.i, -1
  br i1 %.not.i754.not, label %.critedge600, label %bb.bd

bb.bd:                                            ; preds = %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit
  %i.cz = load i16, ptr %.028.i.ptr10.i, align 4, !tbaa !223
  %i.da = add i16 %i.cz, -295
  %or.cond.i756 = icmp ult i16 %i.da, 2
  br i1 %or.cond.i756, label %bb.be, label %.thread.i

bb.be:                                            ; preds = %bb.bd
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload.i755 = load i32, ptr %i.db, align 8, !tbaa !217
  %i.dc = and i32 %.sroa.0.0.copyload.i755, 2
  %.not13.i = icmp eq i32 %i.dc, 0
  br i1 %.not13.i, label %.thread.i, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i

_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i:     ; preds = %bb.be
  %i.dd = add i64 %.sroa.019.1.lcssa.sink.i, -2305843009213693952
  %i.de = icmp ult i64 %i.dd, -4611686018427387904
  %i.df = shl i64 %.sroa.019.1.lcssa.sink.i, 2
  %i.dg = ashr exact i64 %i.df, 2
  %i.dh = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  %spec.select.i762 = select i1 %i.dh, i64 9223372036854775807, i64 -9223372036854775808
  %.0.i.i.i = select i1 %i.de, i64 %spec.select.i762, i64 %i.dg
  br label %.critedge699

.thread.i:                                        ; preds = %bb.bd, %bb.be
  %i.di = sext i32 %.0.i to i64
  %i.dj = shl nsw i64 %i.di, 2
  %i.dk = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.019.1.lcssa.sink.i, i64 %i.dj) ; 2 uses
  %i.dl = extractvalue { i64, i1 } %i.dk, 1
  br i1 %i.dl, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %.thread.i
  %i.dm = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  br i1 %i.dm, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.dn = icmp sgt i32 %.0.i, 0
  br i1 %i.dn, label %.critedge699, label %.thread.i.i39.i1816

bb.bh:                                            ; preds = %bb.bf
  %i.do = icmp ne i64 %.sroa.019.1.lcssa.sink.i, 0
  %i.dp = icmp slt i32 %.0.i, 0
  %or.cond.i.i38.i = and i1 %i.do, %i.dp
  br i1 %or.cond.i.i38.i, label %.critedge699, label %.thread.i.i39.i1816

bb.bi:                                            ; preds = %.thread.i
  %i.dq = extractvalue { i64, i1 } %i.dk, 0
  %i.dr = ashr exact i64 %i.dq, 2
  br label %.critedge699

.critedge600:                                     ; preds = %bb.az, %bb.ay, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit, %.thread1429
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cj, i64 558
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !215, !range !173, !noundef !174
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.bj, label %.critedge604

bb.bj:                                            ; preds = %.critedge600
  %i.dv = icmp eq i32 %.61432, 210                ; 3 uses
  %i.dw = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 94
  %i.dx = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %i.dx, label %select.unfold, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dy = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 73
  %i.dz = select i1 %i.dv, i1 %i.dy, i1 false
  br i1 %i.dz, label %select.unfold, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ea = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 62
  %i.eb = select i1 %i.dv, i1 %i.ea, i1 false
  br i1 %i.eb, label %select.unfold, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ec = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 14
  %i.ed = select i1 %i.ch, i1 %i.ec, i1 false
  br i1 %i.ed, label %select.unfold, label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.bm
  %i.ee = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 136
  %i.ef = select i1 %i.ch, i1 %i.ee, i1 false
  br i1 %i.ef, label %select.unfold, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge.loopexit.i.i
  %i.eg = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 15
  %i.eh = select i1 %i.ch, i1 %i.eg, i1 false
  br i1 %i.eh, label %select.unfold, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ei = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 154
  %i.ej = select i1 %i.ch, i1 %i.ei, i1 false
  br i1 %i.ej, label %select.unfold, label %.critedge604

select.unfold:                                    ; preds = %bb.bo, %bb.bn, %._crit_edge.loopexit.i.i, %bb.bl, %bb.bk, %bb.bj, %bb.bm
  %.028.i.i.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE10SLMCostTbl, i64 100), %bb.bn ], [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE10SLMCostTbl, i64 60), %bb.bm ], [ @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE10SLMCostTbl, %bb.bj ], [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE10SLMCostTbl, i64 20), %bb.bk ], [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE10SLMCostTbl, i64 40), %bb.bl ], [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE10SLMCostTbl, i64 80), %._crit_edge.loopexit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE10SLMCostTbl, i64 120), %bb.bo ] ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.028.i.i.ph, i64 4
  switch i32 %2, label %.critedge604 [
    i32 0, label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit770
    i32 1, label %bb.bp
    i32 2, label %bb.bq
    i32 3, label %bb.br
  ]

bb.bp:                                            ; preds = %select.unfold
  %i.el = getelementptr inbounds nuw i8, ptr %.028.i.i.ph, i64 8
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit770

bb.bq:                                            ; preds = %select.unfold
  %i.em = getelementptr inbounds nuw i8, ptr %.028.i.i.ph, i64 12
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit770

bb.br:                                            ; preds = %select.unfold
  %i.en = getelementptr inbounds nuw i8, ptr %.028.i.i.ph, i64 16
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit770

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit770: ; preds = %select.unfold, %bb.bp, %bb.bq, %bb.br
  %.0.in.i765 = phi ptr [ %i.en, %bb.br ], [ %i.em, %bb.bq ], [ %i.el, %bb.bp ], [ %i.ek, %select.unfold ]
  %.0.i766 = load i32, ptr %.0.in.i765, align 4, !tbaa !217 ; 4 uses
  %.not.i767.not = icmp eq i32 %.0.i766, -1
  br i1 %.not.i767.not, label %.critedge604, label %bb.bs

bb.bs:                                            ; preds = %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit770
  %i.eo = load i16, ptr %.028.i.i.ph, align 4, !tbaa !223
  %i.ep = add i16 %i.eo, -295
  %or.cond.i775 = icmp ult i16 %i.ep, 2
  br i1 %or.cond.i775, label %bb.bt, label %.thread.i778

bb.bt:                                            ; preds = %bb.bs
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload.i771 = load i32, ptr %i.eq, align 8, !tbaa !217
  %i.er = and i32 %.sroa.0.0.copyload.i771, 2
  %.not13.i794 = icmp eq i32 %i.er, 0
  br i1 %.not13.i794, label %.thread.i778, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i795

_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i795:  ; preds = %bb.bt
  %i.es = add i64 %.sroa.019.1.lcssa.sink.i, -2305843009213693952
  %i.et = icmp ult i64 %i.es, -4611686018427387904
  %i.eu = shl i64 %.sroa.019.1.lcssa.sink.i, 2
  %i.ev = ashr exact i64 %i.eu, 2
  %i.ew = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  %spec.select.i796 = select i1 %i.ew, i64 9223372036854775807, i64 -9223372036854775808
  %.0.i.i.i797 = select i1 %i.et, i64 %spec.select.i796, i64 %i.ev
  br label %.critedge699

.thread.i778:                                     ; preds = %bb.bs, %bb.bt
  %i.ex = sext i32 %.0.i766 to i64
  %i.ey = shl nsw i64 %i.ex, 2
  %i.ez = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.019.1.lcssa.sink.i, i64 %i.ey) ; 2 uses
  %i.fa = extractvalue { i64, i1 } %i.ez, 1
  br i1 %i.fa, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %.thread.i778
  %i.fb = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  br i1 %i.fb, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.fc = icmp sgt i32 %.0.i766, 0
  br i1 %i.fc, label %.critedge699, label %.thread.i.i39.i1816

bb.bw:                                            ; preds = %bb.bu
  %i.fd = icmp ne i64 %.sroa.019.1.lcssa.sink.i, 0
  %i.fe = icmp slt i32 %.0.i766, 0
  %or.cond.i.i38.i783 = and i1 %i.fd, %i.fe
  br i1 %or.cond.i.i38.i783, label %.critedge699, label %.thread.i.i39.i1816

bb.bx:                                            ; preds = %.thread.i778
  %i.ff = extractvalue { i64, i1 } %i.ez, 0
  %i.fg = ashr exact i64 %i.ff, 2
  br label %.critedge699

.critedge604:                                     ; preds = %bb.bo, %select.unfold, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit770, %.critedge600
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cj, i64 502
  %i.fi = load i8, ptr %i.fh, align 2, !tbaa !308, !range !173, !noundef !174
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.by, label %.critedge608

bb.by:                                            ; preds = %.critedge604
  %i.fk = call noundef ptr @_ZN4llvm15CostTableLookupILm18E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE(ptr noundef nonnull align 4 dereferenceable(360) @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE18AVX512VBMI2CostTbl, i32 noundef %.61432, i16 %.sroa.025.0.lcssa38.sink.i) ; 6 uses
  %.not572 = icmp eq ptr %i.fk, null
  br i1 %.not572, label %.critedge608, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  switch i32 %2, label %.critedge608 [
    i32 0, label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit804
    i32 1, label %bb.ca
    i32 2, label %bb.cb
    i32 3, label %bb.cc
  ]

bb.ca:                                            ; preds = %bb.bz
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit804

bb.cb:                                            ; preds = %bb.bz
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit804

bb.cc:                                            ; preds = %bb.bz
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit804

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit804: ; preds = %bb.bz, %bb.ca, %bb.cb, %bb.cc
  %.0.in.i799 = phi ptr [ %i.fo, %bb.cc ], [ %i.fn, %bb.cb ], [ %i.fm, %bb.ca ], [ %i.fl, %bb.bz ]
  %.0.i800 = load i32, ptr %.0.in.i799, align 4, !tbaa !217 ; 4 uses
  %.not.i801.not = icmp eq i32 %.0.i800, -1
  br i1 %.not.i801.not, label %.critedge608, label %bb.cd

bb.cd:                                            ; preds = %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit804
  %i.fp = load i16, ptr %i.fk, align 4, !tbaa !223 ; 2 uses
  %i.fq = add i16 %i.fp, -295
  %or.cond.i809 = icmp ult i16 %i.fq, 2
  br i1 %or.cond.i809, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload.i805 = load i32, ptr %i.fr, align 8, !tbaa !217
  %i.fs = and i32 %.sroa.0.0.copyload.i805, 2
  %.not13.i828 = icmp eq i32 %i.fs, 0
  br i1 %.not13.i828, label %.thread.i812, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i829

_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i829:  ; preds = %bb.ce
  %i.ft = add i64 %.sroa.019.1.lcssa.sink.i, -2305843009213693952
  %i.fu = icmp ult i64 %i.ft, -4611686018427387904
  %i.fv = shl i64 %.sroa.019.1.lcssa.sink.i, 2
  %i.fw = ashr exact i64 %i.fv, 2
  %i.fx = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  %spec.select.i830 = select i1 %i.fx, i64 9223372036854775807, i64 -9223372036854775808
  %.0.i.i.i831 = select i1 %i.fu, i64 %spec.select.i830, i64 %i.fw
  br label %.critedge699

bb.cf:                                            ; preds = %bb.cd
  %i.fy = add i16 %.sroa.025.0.lcssa38.sink.i, -2
  %spec.select.i27.i810 = icmp ult i16 %i.fy, 10
  %i.fz = icmp eq i16 %i.fp, 210
  %or.cond4.i811 = and i1 %spec.select.i27.i810, %i.fz
  br i1 %or.cond4.i811, label %bb.cg, label %.thread.i812

bb.cg:                                            ; preds = %bb.cf
  %i.ga = load ptr, ptr %i.ci, align 8, !tbaa !24 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 453
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !309, !range !173, !noundef !174
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.ch, label %.thread.i812

bb.ch:                                            ; preds = %bb.cg
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 433
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !310, !range !173, !noundef !174
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.ci, label %.thread.i812

bb.ci:                                            ; preds = %bb.ch
  %i.gh = load ptr, ptr %1, align 8, !tbaa !311   ; 5 uses
  %.not.i819 = icmp eq ptr %i.gh, null
  br i1 %.not.i819, label %.thread.i812, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !261 ; 3 uses
  %.not.i.i820 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i820, label %.critedge.i822, label %_ZNK4llvm5Value9hasOneUseEv.exit.i821

_ZNK4llvm5Value9hasOneUseEv.exit.i821:            ; preds = %bb.cj
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !262
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %bb.ck, label %.critedge.i822

bb.ck:                                            ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.i821
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !263
  %i.gp = load i8, ptr %i.go, align 8, !tbaa !213
  %i.gq = icmp eq i8 %i.gp, 64
  br i1 %i.gq, label %.critedge699, label %.critedge.i822

.critedge.i822:                                   ; preds = %bb.ck, %_ZNK4llvm5Value9hasOneUseEv.exit.i821, %bb.cj
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gs = load i32, ptr %i.gr, align 4            ; 2 uses
  %i.gt = and i32 %i.gs, 1073741824
  %.not.i.i.i823 = icmp eq i32 %i.gt, 0
  br i1 %.not.i.i.i823, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.critedge.i822
  %i.gu = getelementptr inbounds i8, ptr %i.gh, i64 -8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !226
  br label %_ZNK4llvm4User10getOperandEj.exit.i824

bb.cm:                                            ; preds = %.critedge.i822
  %i.gw = and i32 %i.gs, 268435455
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = sub nsw i64 0, %i.gx
  %i.gz = getelementptr inbounds [32 x i8], ptr %i.gh, i64 %i.gy
  br label %_ZNK4llvm4User10getOperandEj.exit.i824

_ZNK4llvm4User10getOperandEj.exit.i824:           ; preds = %bb.cm, %bb.cl
  %i.ha = phi ptr [ %i.gv, %bb.cl ], [ %i.gz, %bb.cm ]
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !230 ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 8, !tbaa !213
  %.not12.i825 = icmp eq i8 %i.hc, 63
  br i1 %.not12.i825, label %bb.cn, label %.thread.i812

bb.cn:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit.i824
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !261 ; 2 uses
  %.not.i28.i826 = icmp eq ptr %i.he, null
  br i1 %.not.i28.i826, label %.thread.i812, label %_ZNK4llvm5Value9hasOneUseEv.exit30.i827

_ZNK4llvm5Value9hasOneUseEv.exit30.i827:          ; preds = %bb.cn
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !262
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %.critedge699, label %.thread.i812

.thread.i812:                                     ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit30.i827, %bb.cn, %_ZNK4llvm4User10getOperandEj.exit.i824, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce
  %i.hi = sext i32 %.0.i800 to i64
  %i.hj = shl nsw i64 %i.hi, 2
  %i.hk = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.019.1.lcssa.sink.i, i64 %i.hj) ; 2 uses
  %i.hl = extractvalue { i64, i1 } %i.hk, 1
  br i1 %i.hl, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %.thread.i812
  %i.hm = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  br i1 %i.hm, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.hn = icmp sgt i32 %.0.i800, 0
  br i1 %i.hn, label %.critedge699, label %.thread.i.i39.i1816

bb.cq:                                            ; preds = %bb.co
  %i.ho = icmp ne i64 %.sroa.019.1.lcssa.sink.i, 0
  %i.hp = icmp slt i32 %.0.i800, 0
  %or.cond.i.i38.i817 = and i1 %i.ho, %i.hp
  br i1 %or.cond.i.i38.i817, label %.critedge699, label %.thread.i.i39.i1816

bb.cr:                                            ; preds = %.thread.i812
  %i.hq = extractvalue { i64, i1 } %i.hk, 0
  %i.hr = ashr exact i64 %i.hq, 2
  br label %.critedge699

.critedge608:                                     ; preds = %bb.bz, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit804, %bb.by, %.critedge604
  %i.hs = load ptr, ptr %i.ci, align 8, !tbaa !24 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 390
  %i.hu = load i8, ptr %i.ht, align 2, !tbaa !620, !range !173, !noundef !174
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.cs, label %.critedge612

bb.cs:                                            ; preds = %.critedge608
  %i.hw = icmp eq i32 %.61432, 213                ; 6 uses
  %i.hx = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 64
  %i.hy = select i1 %i.hw, i1 %i.hx, i1 false
  br i1 %i.hy, label %select.unfold1453, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.hz = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 50
  %i.ia = select i1 %i.hw, i1 %i.hz, i1 false
  br i1 %i.ia, label %select.unfold1453, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ib = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 63
  %i.ic = select i1 %i.hw, i1 %i.ib, i1 false
  br i1 %i.ic, label %select.unfold1453, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.id = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 49
  %i.ie = select i1 %i.hw, i1 %i.id, i1 false
  br i1 %i.ie, label %select.unfold1453, label %._crit_edge.loopexit.i.i833

._crit_edge.loopexit.i.i833:                      ; preds = %bb.cv
  %i.if = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 62
  %i.ig = select i1 %i.hw, i1 %i.if, i1 false
  br i1 %i.ig, label %select.unfold1453, label %bb.cw

bb.cw:                                            ; preds = %._crit_edge.loopexit.i.i833
  %i.ih = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 48
  %i.ii = select i1 %i.hw, i1 %i.ih, i1 false
  br i1 %i.ii, label %select.unfold1453, label %.critedge612

select.unfold1453:                                ; preds = %bb.cw, %._crit_edge.loopexit.i.i833, %bb.cu, %bb.cs, %bb.ct, %bb.cv
  %.028.i.i835.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE19AVX512BITALGCostTbl, i64 80), %._crit_edge.loopexit.i.i833 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE19AVX512BITALGCostTbl, i64 60), %bb.cv ], [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE19AVX512BITALGCostTbl, i64 20), %bb.ct ], [ @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE19AVX512BITALGCostTbl, %bb.cs ], [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE19AVX512BITALGCostTbl, i64 40), %bb.cu ], [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE19AVX512BITALGCostTbl, i64 100), %bb.cw ] ; 5 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.028.i.i835.ph, i64 4
  switch i32 %2, label %.critedge612 [
    i32 0, label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit843
    i32 1, label %bb.cx
    i32 2, label %bb.cy
    i32 3, label %bb.cz
  ]

bb.cx:                                            ; preds = %select.unfold1453
  %i.ik = getelementptr inbounds nuw i8, ptr %.028.i.i835.ph, i64 8
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit843

bb.cy:                                            ; preds = %select.unfold1453
  %i.il = getelementptr inbounds nuw i8, ptr %.028.i.i835.ph, i64 12
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit843

bb.cz:                                            ; preds = %select.unfold1453
  %i.im = getelementptr inbounds nuw i8, ptr %.028.i.i835.ph, i64 16
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit843

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit843: ; preds = %select.unfold1453, %bb.cx, %bb.cy, %bb.cz
  %.0.in.i838 = phi ptr [ %i.im, %bb.cz ], [ %i.il, %bb.cy ], [ %i.ik, %bb.cx ], [ %i.ij, %select.unfold1453 ]
  %.0.i839 = load i32, ptr %.0.in.i838, align 4, !tbaa !217 ; 4 uses
  %.not.i840.not = icmp eq i32 %.0.i839, -1
  br i1 %.not.i840.not, label %.critedge612, label %bb.da

bb.da:                                            ; preds = %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit843
  %i.in = load i16, ptr %.028.i.i835.ph, align 4, !tbaa !223
  %i.io = add i16 %i.in, -295
  %or.cond.i848 = icmp ult i16 %i.io, 2
  br i1 %or.cond.i848, label %bb.db, label %.thread.i851

bb.db:                                            ; preds = %bb.da
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload.i844 = load i32, ptr %i.ip, align 8, !tbaa !217
  %i.iq = and i32 %.sroa.0.0.copyload.i844, 2
  %.not13.i867 = icmp eq i32 %i.iq, 0
  br i1 %.not13.i867, label %.thread.i851, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i868

_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i868:  ; preds = %bb.db
  %i.ir = add i64 %.sroa.019.1.lcssa.sink.i, -2305843009213693952
  %i.is = icmp ult i64 %i.ir, -4611686018427387904
  %i.it = shl i64 %.sroa.019.1.lcssa.sink.i, 2
  %i.iu = ashr exact i64 %i.it, 2
  %i.iv = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  %spec.select.i869 = select i1 %i.iv, i64 9223372036854775807, i64 -9223372036854775808
  %.0.i.i.i870 = select i1 %i.is, i64 %spec.select.i869, i64 %i.iu
  br label %.critedge699

.thread.i851:                                     ; preds = %bb.da, %bb.db
  %i.iw = sext i32 %.0.i839 to i64
  %i.ix = shl nsw i64 %i.iw, 2
  %i.iy = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.019.1.lcssa.sink.i, i64 %i.ix) ; 2 uses
  %i.iz = extractvalue { i64, i1 } %i.iy, 1
  br i1 %i.iz, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %.thread.i851
  %i.ja = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  br i1 %i.ja, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.jb = icmp sgt i32 %.0.i839, 0
  br i1 %i.jb, label %.critedge699, label %.thread.i.i39.i1816

bb.de:                                            ; preds = %bb.dc
  %i.jc = icmp ne i64 %.sroa.019.1.lcssa.sink.i, 0
  %i.jd = icmp slt i32 %.0.i839, 0
  %or.cond.i.i38.i856 = and i1 %i.jc, %i.jd
  br i1 %or.cond.i.i38.i856, label %.critedge699, label %.thread.i.i39.i1816

bb.df:                                            ; preds = %.thread.i851
  %i.je = extractvalue { i64, i1 } %i.iy, 0
  %i.jf = ashr exact i64 %i.je, 2
  br label %.critedge699

.critedge612:                                     ; preds = %bb.cw, %select.unfold1453, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit843, %.critedge608
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hs, i64 507
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !621, !range !173, !noundef !174
  %i.ji = trunc nuw i8 %i.jh to i1
  br i1 %i.ji, label %bb.dg, label %.critedge616

bb.dg:                                            ; preds = %.critedge612
  %i.jj = icmp eq i32 %.61432, 213                ; 6 uses
  %i.jk = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 97
  %i.jl = select i1 %i.jj, i1 %i.jk, i1 false
  br i1 %i.jl, label %select.unfold1463, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.jm = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 82
  %i.jn = select i1 %i.jj, i1 %i.jm, i1 false
  br i1 %i.jn, label %select.unfold1463, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.jo = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 96
  %i.jp = select i1 %i.jj, i1 %i.jo, i1 false
  br i1 %i.jp, label %select.unfold1463, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.jq = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 77
  %i.jr = select i1 %i.jj, i1 %i.jq, i1 false
  br i1 %i.jr, label %select.unfold1463, label %._crit_edge.loopexit.i.i872

._crit_edge.loopexit.i.i872:                      ; preds = %bb.dj
  %i.js = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 94
  %i.jt = select i1 %i.jj, i1 %i.js, i1 false
  br i1 %i.jt, label %select.unfold1463, label %bb.dk

bb.dk:                                            ; preds = %._crit_edge.loopexit.i.i872
  %i.ju = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 73
  %i.jv = select i1 %i.jj, i1 %i.ju, i1 false
  br i1 %i.jv, label %select.unfold1463, label %.critedge616

select.unfold1463:                                ; preds = %bb.dk, %._crit_edge.loopexit.i.i872, %bb.di, %bb.dg, %bb.dh, %bb.dj
  %.028.i.i874.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE22AVX512VPOPCNTDQCostTbl, i64 80), %._crit_edge.loopexit.i.i872 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE22AVX512VPOPCNTDQCostTbl, i64 60), %bb.dj ], [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE22AVX512VPOPCNTDQCostTbl, i64 20), %bb.dh ], [ @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE22AVX512VPOPCNTDQCostTbl, %bb.dg ], [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE22AVX512VPOPCNTDQCostTbl, i64 40), %bb.di ], [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE22AVX512VPOPCNTDQCostTbl, i64 100), %bb.dk ] ; 5 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.028.i.i874.ph, i64 4
  switch i32 %2, label %.critedge616 [
    i32 0, label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit883
    i32 1, label %bb.dl
    i32 2, label %bb.dm
    i32 3, label %bb.dn
  ]

bb.dl:                                            ; preds = %select.unfold1463
  %i.jx = getelementptr inbounds nuw i8, ptr %.028.i.i874.ph, i64 8
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit883

bb.dm:                                            ; preds = %select.unfold1463
  %i.jy = getelementptr inbounds nuw i8, ptr %.028.i.i874.ph, i64 12
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit883

bb.dn:                                            ; preds = %select.unfold1463
  %i.jz = getelementptr inbounds nuw i8, ptr %.028.i.i874.ph, i64 16
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit883

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit883: ; preds = %select.unfold1463, %bb.dl, %bb.dm, %bb.dn
  %.0.in.i878 = phi ptr [ %i.jz, %bb.dn ], [ %i.jy, %bb.dm ], [ %i.jx, %bb.dl ], [ %i.jw, %select.unfold1463 ]
  %.0.i879 = load i32, ptr %.0.in.i878, align 4, !tbaa !217 ; 4 uses
  %.not.i880.not = icmp eq i32 %.0.i879, -1
  br i1 %.not.i880.not, label %.critedge616, label %bb.do

bb.do:                                            ; preds = %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit883
  %i.ka = load i16, ptr %.028.i.i874.ph, align 4, !tbaa !223
  %i.kb = add i16 %i.ka, -295
  %or.cond.i888 = icmp ult i16 %i.kb, 2
  br i1 %or.cond.i888, label %bb.dp, label %.thread.i891

bb.dp:                                            ; preds = %bb.do
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload.i884 = load i32, ptr %i.kc, align 8, !tbaa !217
  %i.kd = and i32 %.sroa.0.0.copyload.i884, 2
  %.not13.i907 = icmp eq i32 %i.kd, 0
  br i1 %.not13.i907, label %.thread.i891, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i908

_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i908:  ; preds = %bb.dp
  %i.ke = add i64 %.sroa.019.1.lcssa.sink.i, -2305843009213693952
  %i.kf = icmp ult i64 %i.ke, -4611686018427387904
  %i.kg = shl i64 %.sroa.019.1.lcssa.sink.i, 2
  %i.kh = ashr exact i64 %i.kg, 2
  %i.ki = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  %spec.select.i909 = select i1 %i.ki, i64 9223372036854775807, i64 -9223372036854775808
  %.0.i.i.i910 = select i1 %i.kf, i64 %spec.select.i909, i64 %i.kh
  br label %.critedge699

.thread.i891:                                     ; preds = %bb.do, %bb.dp
  %i.kj = sext i32 %.0.i879 to i64
  %i.kk = shl nsw i64 %i.kj, 2
  %i.kl = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.019.1.lcssa.sink.i, i64 %i.kk) ; 2 uses
  %i.km = extractvalue { i64, i1 } %i.kl, 1
  br i1 %i.km, label %bb.dq, label %bb.dt

bb.dq:                                            ; preds = %.thread.i891
  %i.kn = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  br i1 %i.kn, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.ko = icmp sgt i32 %.0.i879, 0
  br i1 %i.ko, label %.critedge699, label %.thread.i.i39.i1816

bb.ds:                                            ; preds = %bb.dq
  %i.kp = icmp ne i64 %.sroa.019.1.lcssa.sink.i, 0
  %i.kq = icmp slt i32 %.0.i879, 0
  %or.cond.i.i38.i896 = and i1 %i.kp, %i.kq
  br i1 %or.cond.i.i38.i896, label %.critedge699, label %.thread.i.i39.i1816

bb.dt:                                            ; preds = %.thread.i891
  %i.kr = extractvalue { i64, i1 } %i.kl, 0
  %i.ks = ashr exact i64 %i.kr, 2
  br label %.critedge699

.critedge616:                                     ; preds = %bb.dk, %select.unfold1463, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit883, %.critedge612
  %i.kt = getelementptr inbounds nuw i8, ptr %i.hs, i64 442
  %i.ku = load i8, ptr %i.kt, align 2, !tbaa !216, !range !173, !noundef !174
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %bb.du, label %.critedge620

bb.du:                                            ; preds = %.critedge616
  %i.kw = call noundef ptr @_ZN4llvm15CostTableLookupILm19E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE(ptr noundef nonnull align 4 dereferenceable(380) @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE11GFNICostTbl, i32 noundef %.61432, i16 %.sroa.025.0.lcssa38.sink.i) ; 6 uses
  %.not575 = icmp eq ptr %i.kw, null
  br i1 %.not575, label %.critedge620, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  switch i32 %2, label %.critedge620 [
    i32 0, label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit917
    i32 1, label %bb.dw
    i32 2, label %bb.dx
    i32 3, label %bb.dy
  ]

bb.dw:                                            ; preds = %bb.dv
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit917

bb.dx:                                            ; preds = %bb.dv
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 12
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit917

bb.dy:                                            ; preds = %bb.dv
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit917

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit917: ; preds = %bb.dv, %bb.dw, %bb.dx, %bb.dy
  %.0.in.i912 = phi ptr [ %i.la, %bb.dy ], [ %i.kz, %bb.dx ], [ %i.ky, %bb.dw ], [ %i.kx, %bb.dv ]
  %.0.i913 = load i32, ptr %.0.in.i912, align 4, !tbaa !217 ; 4 uses
  %.not.i914.not = icmp eq i32 %.0.i913, -1
  br i1 %.not.i914.not, label %.critedge620, label %bb.dz

bb.dz:                                            ; preds = %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit917
  %i.lb = load i16, ptr %i.kw, align 4, !tbaa !223 ; 2 uses
  %i.lc = add i16 %i.lb, -295
  %or.cond.i1670 = icmp ult i16 %i.lc, 2
  br i1 %or.cond.i1670, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload.i918 = load i32, ptr %i.ld, align 8, !tbaa !217
  %i.le = and i32 %.sroa.0.0.copyload.i918, 2
  %.not13.i1676 = icmp eq i32 %i.le, 0
  br i1 %.not13.i1676, label %.thread.i1671, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i1677

_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i1677: ; preds = %bb.ea
  %i.lf = add i64 %.sroa.019.1.lcssa.sink.i, -2305843009213693952
  %i.lg = icmp ult i64 %i.lf, -4611686018427387904
  %i.lh = shl i64 %.sroa.019.1.lcssa.sink.i, 2
  %i.li = ashr exact i64 %i.lh, 2
  %i.lj = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  %spec.select.i1678 = select i1 %i.lj, i64 9223372036854775807, i64 -9223372036854775808
  %.0.i.i.i1679 = select i1 %i.lg, i64 %spec.select.i1678, i64 %i.li
  br label %.critedge699

bb.eb:                                            ; preds = %bb.dz
  %i.lk = add i16 %.sroa.025.0.lcssa38.sink.i, -2
  %spec.select.i27.i = icmp ult i16 %i.lk, 10
  %i.ll = icmp eq i16 %i.lb, 210
  %or.cond4.i = and i1 %spec.select.i27.i, %i.ll
  br i1 %or.cond4.i, label %bb.ec, label %.thread.i1671

bb.ec:                                            ; preds = %bb.eb
  %i.lm = load ptr, ptr %i.ci, align 8, !tbaa !24 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 453
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !309, !range !173, !noundef !174
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %bb.ed, label %.thread.i1671

bb.ed:                                            ; preds = %bb.ec
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 433
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !310, !range !173, !noundef !174
  %i.ls = trunc nuw i8 %i.lr to i1
  br i1 %i.ls, label %bb.ee, label %.thread.i1671

bb.ee:                                            ; preds = %bb.ed
  %i.lt = load ptr, ptr %1, align 8, !tbaa !311   ; 5 uses
  %.not.i1673 = icmp eq ptr %i.lt, null
  br i1 %.not.i1673, label %.thread.i1671, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !261 ; 3 uses
  %.not.i.i1674 = icmp eq ptr %i.lv, null
  br i1 %.not.i.i1674, label %.critedge.i, label %_ZNK4llvm5Value9hasOneUseEv.exit.i

_ZNK4llvm5Value9hasOneUseEv.exit.i:               ; preds = %bb.ef
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !262
  %i.ly = icmp eq ptr %i.lx, null
  br i1 %i.ly, label %bb.eg, label %.critedge.i

bb.eg:                                            ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !263
  %i.mb = load i8, ptr %i.ma, align 8, !tbaa !213
  %i.mc = icmp eq i8 %i.mb, 64
  br i1 %i.mc, label %.critedge699, label %.critedge.i

.critedge.i:                                      ; preds = %bb.eg, %_ZNK4llvm5Value9hasOneUseEv.exit.i, %bb.ef
  %i.md = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  %i.me = load i32, ptr %i.md, align 4            ; 2 uses
  %i.mf = and i32 %i.me, 1073741824
  %.not.i.i.i1675 = icmp eq i32 %i.mf, 0
  br i1 %.not.i.i.i1675, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %.critedge.i
  %i.mg = getelementptr inbounds i8, ptr %i.lt, i64 -8
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !226
  br label %_ZNK4llvm4User10getOperandEj.exit.i

bb.ei:                                            ; preds = %.critedge.i
  %i.mi = and i32 %i.me, 268435455
  %i.mj = zext nneg i32 %i.mi to i64
  %i.mk = sub nsw i64 0, %i.mj
  %i.ml = getelementptr inbounds [32 x i8], ptr %i.lt, i64 %i.mk
  br label %_ZNK4llvm4User10getOperandEj.exit.i

_ZNK4llvm4User10getOperandEj.exit.i:              ; preds = %bb.ei, %bb.eh
  %i.mm = phi ptr [ %i.mh, %bb.eh ], [ %i.ml, %bb.ei ]
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !230 ; 2 uses
  %i.mo = load i8, ptr %i.mn, align 8, !tbaa !213
  %.not12.i = icmp eq i8 %i.mo, 63
  br i1 %.not12.i, label %bb.ej, label %.thread.i1671

bb.ej:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !261 ; 2 uses
  %.not.i28.i = icmp eq ptr %i.mq, null
  br i1 %.not.i28.i, label %.thread.i1671, label %_ZNK4llvm5Value9hasOneUseEv.exit30.i

_ZNK4llvm5Value9hasOneUseEv.exit30.i:             ; preds = %bb.ej
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !262
  %i.mt = icmp eq ptr %i.ms, null
  br i1 %i.mt, label %.critedge699, label %.thread.i1671

.thread.i1671:                                    ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit30.i, %bb.ej, %_ZNK4llvm4User10getOperandEj.exit.i, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea
  %i.mu = sext i32 %.0.i913 to i64
  %i.mv = shl nsw i64 %i.mu, 2
  %i.mw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.019.1.lcssa.sink.i, i64 %i.mv) ; 2 uses
  %i.mx = extractvalue { i64, i1 } %i.mw, 1
  br i1 %i.mx, label %bb.ek, label %bb.en

bb.ek:                                            ; preds = %.thread.i1671
  %i.my = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  br i1 %i.my, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.mz = icmp sgt i32 %.0.i913, 0
  br i1 %i.mz, label %.critedge699, label %.thread.i.i39.i1816

bb.em:                                            ; preds = %bb.ek
  %i.na = icmp ne i64 %.sroa.019.1.lcssa.sink.i, 0
  %i.nb = icmp slt i32 %.0.i913, 0
  %or.cond.i.i38.i1672 = and i1 %i.na, %i.nb
  br i1 %or.cond.i.i38.i1672, label %.critedge699, label %.thread.i.i39.i1816

bb.en:                                            ; preds = %.thread.i1671
  %i.nc = extractvalue { i64, i1 } %i.mw, 0
  %i.nd = ashr exact i64 %i.nc, 2
  br label %.critedge699

.critedge620:                                     ; preds = %bb.dv, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit917, %bb.du, %.critedge616
  %i.ne = load ptr, ptr %i.ci, align 8, !tbaa !24
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 399
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !622, !range !173, !noundef !174
  %i.nh = trunc nuw i8 %i.ng to i1
  br i1 %i.nh, label %bb.eo, label %.critedge624

bb.eo:                                            ; preds = %.critedge620
  %i.ni = call noundef ptr @_ZN4llvm15CostTableLookupILm18E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE(ptr noundef nonnull align 4 dereferenceable(360) @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE15AVX512CDCostTbl, i32 noundef %.61432, i16 %.sroa.025.0.lcssa38.sink.i) ; 6 uses
  %.not576 = icmp eq ptr %i.ni, null
  br i1 %.not576, label %.critedge624, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  switch i32 %2, label %.critedge624 [
    i32 0, label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit924
    i32 1, label %bb.eq
    i32 2, label %bb.er
    i32 3, label %bb.es
  ]

bb.eq:                                            ; preds = %bb.ep
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit924

bb.er:                                            ; preds = %bb.ep
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ni, i64 12
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit924

bb.es:                                            ; preds = %bb.ep
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit924

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit924: ; preds = %bb.ep, %bb.eq, %bb.er, %bb.es
  %.0.in.i919 = phi ptr [ %i.nm, %bb.es ], [ %i.nl, %bb.er ], [ %i.nk, %bb.eq ], [ %i.nj, %bb.ep ]
  %.0.i920 = load i32, ptr %.0.in.i919, align 4, !tbaa !217 ; 4 uses
  %.not.i921.not = icmp eq i32 %.0.i920, -1
  br i1 %.not.i921.not, label %.critedge624, label %bb.et

bb.et:                                            ; preds = %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit924
  %i.nn = load i16, ptr %i.ni, align 4, !tbaa !223 ; 2 uses
  %i.no = add i16 %i.nn, -295
  %or.cond.i1683 = icmp ult i16 %i.no, 2
  br i1 %or.cond.i1683, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload.i925 = load i32, ptr %i.np, align 8, !tbaa !217
  %i.nq = and i32 %.sroa.0.0.copyload.i925, 2
  %.not13.i1702 = icmp eq i32 %i.nq, 0
  br i1 %.not13.i1702, label %.thread.i1686, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i1703

_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i1703: ; preds = %bb.eu
  %i.nr = add i64 %.sroa.019.1.lcssa.sink.i, -2305843009213693952
  %i.ns = icmp ult i64 %i.nr, -4611686018427387904
  %i.nt = shl i64 %.sroa.019.1.lcssa.sink.i, 2
  %i.nu = ashr exact i64 %i.nt, 2
  %i.nv = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  %spec.select.i1704 = select i1 %i.nv, i64 9223372036854775807, i64 -9223372036854775808
  %.0.i.i.i1705 = select i1 %i.ns, i64 %spec.select.i1704, i64 %i.nu
  br label %.critedge699

bb.ev:                                            ; preds = %bb.et
  %i.nw = add i16 %.sroa.025.0.lcssa38.sink.i, -2
  %spec.select.i27.i1684 = icmp ult i16 %i.nw, 10
  %i.nx = icmp eq i16 %i.nn, 210
  %or.cond4.i1685 = and i1 %spec.select.i27.i1684, %i.nx
  br i1 %or.cond4.i1685, label %bb.ew, label %.thread.i1686

bb.ew:                                            ; preds = %bb.ev
  %i.ny = load ptr, ptr %i.ci, align 8, !tbaa !24 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 453
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !309, !range !173, !noundef !174
  %i.ob = trunc nuw i8 %i.oa to i1
  br i1 %i.ob, label %bb.ex, label %.thread.i1686

bb.ex:                                            ; preds = %bb.ew
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 433
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !310, !range !173, !noundef !174
  %i.oe = trunc nuw i8 %i.od to i1
  br i1 %i.oe, label %bb.ey, label %.thread.i1686

bb.ey:                                            ; preds = %bb.ex
  %i.of = load ptr, ptr %1, align 8, !tbaa !311   ; 5 uses
  %.not.i1693 = icmp eq ptr %i.of, null
  br i1 %.not.i1693, label %.thread.i1686, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !261 ; 3 uses
  %.not.i.i1694 = icmp eq ptr %i.oh, null
  br i1 %.not.i.i1694, label %.critedge.i1696, label %_ZNK4llvm5Value9hasOneUseEv.exit.i1695

_ZNK4llvm5Value9hasOneUseEv.exit.i1695:           ; preds = %bb.ez
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !262
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %bb.fa, label %.critedge.i1696

bb.fa:                                            ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.i1695
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !263
  %i.on = load i8, ptr %i.om, align 8, !tbaa !213
  %i.oo = icmp eq i8 %i.on, 64
  br i1 %i.oo, label %.critedge699, label %.critedge.i1696

.critedge.i1696:                                  ; preds = %bb.fa, %_ZNK4llvm5Value9hasOneUseEv.exit.i1695, %bb.ez
  %i.op = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  %i.oq = load i32, ptr %i.op, align 4            ; 2 uses
  %i.or = and i32 %i.oq, 1073741824
  %.not.i.i.i1697 = icmp eq i32 %i.or, 0
  br i1 %.not.i.i.i1697, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %.critedge.i1696
  %i.os = getelementptr inbounds i8, ptr %i.of, i64 -8
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !226
  br label %_ZNK4llvm4User10getOperandEj.exit.i1698

bb.fc:                                            ; preds = %.critedge.i1696
  %i.ou = and i32 %i.oq, 268435455
  %i.ov = zext nneg i32 %i.ou to i64
  %i.ow = sub nsw i64 0, %i.ov
  %i.ox = getelementptr inbounds [32 x i8], ptr %i.of, i64 %i.ow
  br label %_ZNK4llvm4User10getOperandEj.exit.i1698

_ZNK4llvm4User10getOperandEj.exit.i1698:          ; preds = %bb.fc, %bb.fb
  %i.oy = phi ptr [ %i.ot, %bb.fb ], [ %i.ox, %bb.fc ]
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !230 ; 2 uses
  %i.pa = load i8, ptr %i.oz, align 8, !tbaa !213
  %.not12.i1699 = icmp eq i8 %i.pa, 63
  br i1 %.not12.i1699, label %bb.fd, label %.thread.i1686

bb.fd:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit.i1698
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !261 ; 2 uses
  %.not.i28.i1700 = icmp eq ptr %i.pc, null
  br i1 %.not.i28.i1700, label %.thread.i1686, label %_ZNK4llvm5Value9hasOneUseEv.exit30.i1701

_ZNK4llvm5Value9hasOneUseEv.exit30.i1701:         ; preds = %bb.fd
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !262
  %i.pf = icmp eq ptr %i.pe, null
  br i1 %i.pf, label %.critedge699, label %.thread.i1686

.thread.i1686:                                    ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit30.i1701, %bb.fd, %_ZNK4llvm4User10getOperandEj.exit.i1698, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu
  %i.pg = sext i32 %.0.i920 to i64
  %i.ph = shl nsw i64 %i.pg, 2
  %i.pi = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.019.1.lcssa.sink.i, i64 %i.ph) ; 2 uses
  %i.pj = extractvalue { i64, i1 } %i.pi, 1
  br i1 %i.pj, label %bb.fe, label %bb.fh

bb.fe:                                            ; preds = %.thread.i1686
  %i.pk = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  br i1 %i.pk, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.pl = icmp sgt i32 %.0.i920, 0
  br i1 %i.pl, label %.critedge699, label %.thread.i.i39.i1816

bb.fg:                                            ; preds = %bb.fe
  %i.pm = icmp ne i64 %.sroa.019.1.lcssa.sink.i, 0
  %i.pn = icmp slt i32 %.0.i920, 0
  %or.cond.i.i38.i1691 = and i1 %i.pm, %i.pn
  br i1 %or.cond.i.i38.i1691, label %.critedge699, label %.thread.i.i39.i1816

bb.fh:                                            ; preds = %.thread.i1686
  %i.po = extractvalue { i64, i1 } %i.pi, 0
  %i.pp = ashr exact i64 %i.po, 2
  br label %.critedge699

.critedge624:                                     ; preds = %bb.ep, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit924, %bb.eo, %.critedge620
  %i.pq = load ptr, ptr %i.ci, align 8, !tbaa !24 ; 7 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 395
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !218, !range !173, !noundef !174
  %i.pt = trunc nuw i8 %i.ps to i1
  br i1 %i.pt, label %.lr.ph.i.i, label %.critedge628

.lr.ph.i.i:                                       ; preds = %.critedge624, %bb.fl
  %.053.i.i = phi i64 [ %i.qw, %bb.fl ], [ 20, %.critedge624 ] ; 2 uses
  %.02952.i.i.idx = phi i64 [ %.02952.i.i.add1606, %bb.fl ], [ 0, %.critedge624 ] ; 6 uses
  %.02952.i.i.ptr = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE15AVX512BWCostTbl, i64 %.02952.i.i.idx ; 5 uses
  %i.pu = load i16, ptr %.02952.i.i.ptr, align 16, !tbaa !223
  %i.pv = zext i16 %i.pu to i32
  %i.pw = icmp eq i32 %.61432, %i.pv
  %i.px = getelementptr inbounds nuw i8, ptr %.02952.i.i.ptr, i64 2
  %i.py = load i16, ptr %i.px, align 2
  %i.pz = icmp eq i16 %i.py, %.sroa.025.0.lcssa38.sink.i
  %i.qa = select i1 %i.pw, i1 %i.pz, i1 false
  br i1 %i.qa, label %_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread1651, label %bb.fi

bb.fi:                                            ; preds = %.lr.ph.i.i
  %.02952.i.i.add1604 = add nuw nsw i64 %.02952.i.i.idx, 20 ; 2 uses
  %.ptr1607 = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE15AVX512BWCostTbl, i64 %.02952.i.i.add1604
  %i.qb = load i16, ptr %.ptr1607, align 4, !tbaa !223
  %i.qc = zext i16 %i.qb to i32
  %i.qd = icmp eq i32 %.61432, %i.qc
  %i.qe = getelementptr inbounds nuw i8, ptr %.02952.i.i.ptr, i64 22
  %i.qf = load i16, ptr %i.qe, align 2
  %i.qg = icmp eq i16 %i.qf, %.sroa.025.0.lcssa38.sink.i
  %i.qh = select i1 %i.qd, i1 %i.qg, i1 false
  br i1 %i.qh, label %_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread1651, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %.02952.i.i.add = add nuw nsw i64 %.02952.i.i.idx, 40 ; 2 uses
  %.ptr = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE15AVX512BWCostTbl, i64 %.02952.i.i.add
  %i.qi = load i16, ptr %.ptr, align 8, !tbaa !223
  %i.qj = zext i16 %i.qi to i32
  %i.qk = icmp eq i32 %.61432, %i.qj
  %i.ql = getelementptr inbounds nuw i8, ptr %.02952.i.i.ptr, i64 42
  %i.qm = load i16, ptr %i.ql, align 2
  %i.qn = icmp eq i16 %i.qm, %.sroa.025.0.lcssa38.sink.i
  %i.qo = select i1 %i.qk, i1 %i.qn, i1 false
  br i1 %i.qo, label %_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread1651, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %.02952.i.i.add1605 = add nuw nsw i64 %.02952.i.i.idx, 60 ; 3 uses
  %.ptr1608.a = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE15AVX512BWCostTbl, i64 %.02952.i.i.add1605
  %i.qp = load i16, ptr %.ptr1608.a, align 4, !tbaa !223
  %i.qq = zext i16 %i.qp to i32
  %i.qr = icmp eq i32 %.61432, %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr %.02952.i.i.ptr, i64 62
  %i.qt = load i16, ptr %i.qs, align 2
  %i.qu = icmp eq i16 %i.qt, %.sroa.025.0.lcssa38.sink.i
  %i.qv = select i1 %i.qr, i1 %i.qu, i1 false
  br i1 %i.qv, label %_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %.02952.i.i.add1606 = add nuw nsw i64 %.02952.i.i.idx, 80
  %i.qw = add nsw i64 %.053.i.i, -1
  %i.qx = icmp samesign ugt i64 %.053.i.i, 1
  br i1 %i.qx, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i926, !llvm.loop !1

._crit_edge.loopexit.i.i926:                      ; preds = %bb.fl
  %i.qy = icmp eq i32 %.61432, 189
  %i.qz = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 50 ; 2 uses
  %i.ra = select i1 %i.qy, i1 %i.qz, i1 false
  br i1 %i.ra, label %_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread, label %bb.fm

bb.fm:                                            ; preds = %._crit_edge.loopexit.i.i926
  %i.rb = icmp eq i32 %.61432, 88                 ; 2 uses
  %i.rc = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 64
  %i.rd = select i1 %i.rb, i1 %i.rc, i1 false
  br i1 %i.rd, label %_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.re = select i1 %i.rb, i1 %i.qz, i1 false
  br i1 %i.re, label %_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread, label %.critedge628

_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread1651: ; preds = %.lr.ph.i.i, %bb.fi, %bb.fj
  %.028.i.i928.idx.ph = phi i64 [ %.02952.i.i.add, %bb.fj ], [ %.02952.i.i.add1604, %bb.fi ], [ %.02952.i.i.idx, %.lr.ph.i.i ]
  %.028.i.i928.ptr1653 = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE15AVX512BWCostTbl, i64 %.028.i.i928.idx.ph
  br label %_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread

_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit: ; preds = %bb.fk
  %.ptr1608.le.a = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE15AVX512BWCostTbl, i64 %.02952.i.i.add1605
  %.not.i.i929 = icmp eq i64 %.02952.i.i.add1605, 1660
  br i1 %.not.i.i929, label %.critedge628, label %_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread

_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread: ; preds = %_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread1651, %bb.fn, %._crit_edge.loopexit.i.i926, %bb.fm, %_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit
  %..i.i9301487 = phi ptr [ %.ptr1608.le.a, %_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit ], [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE15AVX512BWCostTbl, i64 1620), %bb.fm ], [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE15AVX512BWCostTbl, i64 1600), %._crit_edge.loopexit.i.i926 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE15AVX512BWCostTbl, i64 1640), %bb.fn ], [ %.028.i.i928.ptr1653, %_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread1651 ] ; 5 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %..i.i9301487, i64 4
  switch i32 %2, label %.critedge628 [
    i32 0, label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit936
    i32 1, label %bb.fo
    i32 2, label %bb.fp
    i32 3, label %bb.fq
  ]

bb.fo:                                            ; preds = %_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread
  %i.rg = getelementptr inbounds nuw i8, ptr %..i.i9301487, i64 8
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit936

bb.fp:                                            ; preds = %_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread
  %i.rh = getelementptr inbounds nuw i8, ptr %..i.i9301487, i64 12
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit936

bb.fq:                                            ; preds = %_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread
  %i.ri = getelementptr inbounds nuw i8, ptr %..i.i9301487, i64 16
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit936

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit936: ; preds = %_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread, %bb.fo, %bb.fp, %bb.fq
  %.0.in.i931 = phi ptr [ %i.ri, %bb.fq ], [ %i.rh, %bb.fp ], [ %i.rg, %bb.fo ], [ %i.rf, %_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread ]
  %.0.i932 = load i32, ptr %.0.in.i931, align 4, !tbaa !217 ; 4 uses
  %.not.i933.not = icmp eq i32 %.0.i932, -1
  br i1 %.not.i933.not, label %.critedge628, label %bb.fr

bb.fr:                                            ; preds = %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit936
  %i.rj = load i16, ptr %..i.i9301487, align 4, !tbaa !223 ; 2 uses
  %i.rk = add i16 %i.rj, -295
  %or.cond.i1710 = icmp ult i16 %i.rk, 2
  br i1 %or.cond.i1710, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.rl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload.i937 = load i32, ptr %i.rl, align 8, !tbaa !217
  %i.rm = and i32 %.sroa.0.0.copyload.i937, 2
  %.not13.i1729 = icmp eq i32 %i.rm, 0
  br i1 %.not13.i1729, label %.thread.i1713, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i1730

_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i1730: ; preds = %bb.fs
  %i.rn = add i64 %.sroa.019.1.lcssa.sink.i, -2305843009213693952
  %i.ro = icmp ult i64 %i.rn, -4611686018427387904
  %i.rp = shl i64 %.sroa.019.1.lcssa.sink.i, 2
  %i.rq = ashr exact i64 %i.rp, 2
  %i.rr = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  %spec.select.i1731 = select i1 %i.rr, i64 9223372036854775807, i64 -9223372036854775808
  %.0.i.i.i1732 = select i1 %i.ro, i64 %spec.select.i1731, i64 %i.rq
  br label %.critedge699

bb.ft:                                            ; preds = %bb.fr
  %i.rs = add i16 %.sroa.025.0.lcssa38.sink.i, -2
  %spec.select.i27.i1711 = icmp ult i16 %i.rs, 10
  %i.rt = icmp eq i16 %i.rj, 210
  %or.cond4.i1712 = and i1 %spec.select.i27.i1711, %i.rt
  br i1 %or.cond4.i1712, label %bb.fu, label %.thread.i1713

bb.fu:                                            ; preds = %bb.ft
  %i.ru = getelementptr inbounds nuw i8, ptr %i.pq, i64 453
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !309, !range !173, !noundef !174
  %i.rw = trunc nuw i8 %i.rv to i1
  br i1 %i.rw, label %bb.fv, label %.thread.i1713

bb.fv:                                            ; preds = %bb.fu
  %i.rx = getelementptr inbounds nuw i8, ptr %i.pq, i64 433
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !310, !range !173, !noundef !174
  %i.rz = trunc nuw i8 %i.ry to i1
  br i1 %i.rz, label %bb.fw, label %.thread.i1713

bb.fw:                                            ; preds = %bb.fv
  %i.sa = load ptr, ptr %1, align 8, !tbaa !311   ; 5 uses
  %.not.i1720 = icmp eq ptr %i.sa, null
  br i1 %.not.i1720, label %.thread.i1713, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !261 ; 3 uses
  %.not.i.i1721 = icmp eq ptr %i.sc, null
  br i1 %.not.i.i1721, label %.critedge.i1723, label %_ZNK4llvm5Value9hasOneUseEv.exit.i1722

_ZNK4llvm5Value9hasOneUseEv.exit.i1722:           ; preds = %bb.fx
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !262
  %i.sf = icmp eq ptr %i.se, null
  br i1 %i.sf, label %bb.fy, label %.critedge.i1723

bb.fy:                                            ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.i1722
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sc, i64 24
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !263
  %i.si = load i8, ptr %i.sh, align 8, !tbaa !213
  %i.sj = icmp eq i8 %i.si, 64
  br i1 %i.sj, label %.critedge699, label %.critedge.i1723

.critedge.i1723:                                  ; preds = %bb.fy, %_ZNK4llvm5Value9hasOneUseEv.exit.i1722, %bb.fx
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sa, i64 4
  %i.sl = load i32, ptr %i.sk, align 4            ; 2 uses
  %i.sm = and i32 %i.sl, 1073741824
  %.not.i.i.i1724 = icmp eq i32 %i.sm, 0
  br i1 %.not.i.i.i1724, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %.critedge.i1723
  %i.sn = getelementptr inbounds i8, ptr %i.sa, i64 -8
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !226
  br label %_ZNK4llvm4User10getOperandEj.exit.i1725

bb.ga:                                            ; preds = %.critedge.i1723
  %i.sp = and i32 %i.sl, 268435455
  %i.sq = zext nneg i32 %i.sp to i64
  %i.sr = sub nsw i64 0, %i.sq
  %i.ss = getelementptr inbounds [32 x i8], ptr %i.sa, i64 %i.sr
  br label %_ZNK4llvm4User10getOperandEj.exit.i1725

_ZNK4llvm4User10getOperandEj.exit.i1725:          ; preds = %bb.ga, %bb.fz
  %i.st = phi ptr [ %i.so, %bb.fz ], [ %i.ss, %bb.ga ]
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !230 ; 2 uses
  %i.sv = load i8, ptr %i.su, align 8, !tbaa !213
  %.not12.i1726 = icmp eq i8 %i.sv, 63
  br i1 %.not12.i1726, label %bb.gb, label %.thread.i1713

bb.gb:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit.i1725
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !261 ; 2 uses
  %.not.i28.i1727 = icmp eq ptr %i.sx, null
  br i1 %.not.i28.i1727, label %.thread.i1713, label %_ZNK4llvm5Value9hasOneUseEv.exit30.i1728

_ZNK4llvm5Value9hasOneUseEv.exit30.i1728:         ; preds = %bb.gb
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !262
  %i.ta = icmp eq ptr %i.sz, null
  br i1 %i.ta, label %.critedge699, label %.thread.i1713

.thread.i1713:                                    ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit30.i1728, %bb.gb, %_ZNK4llvm4User10getOperandEj.exit.i1725, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs
  %i.tb = sext i32 %.0.i932 to i64
  %i.tc = shl nsw i64 %i.tb, 2
  %i.td = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.019.1.lcssa.sink.i, i64 %i.tc) ; 2 uses
  %i.te = extractvalue { i64, i1 } %i.td, 1
  br i1 %i.te, label %bb.gc, label %bb.gf

bb.gc:                                            ; preds = %.thread.i1713
  %i.tf = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  br i1 %i.tf, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.tg = icmp sgt i32 %.0.i932, 0
  br i1 %i.tg, label %.critedge699, label %.thread.i.i39.i1816

bb.ge:                                            ; preds = %bb.gc
  %i.th = icmp ne i64 %.sroa.019.1.lcssa.sink.i, 0
  %i.ti = icmp slt i32 %.0.i932, 0
  %or.cond.i.i38.i1718 = and i1 %i.th, %i.ti
  br i1 %or.cond.i.i38.i1718, label %.critedge699, label %.thread.i.i39.i1816

bb.gf:                                            ; preds = %.thread.i1713
  %i.tj = extractvalue { i64, i1 } %i.td, 0
  %i.tk = ashr exact i64 %i.tj, 2
  br label %.critedge699

.critedge628:                                     ; preds = %_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread, %bb.fn, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit936, %_ZN4llvm15CostTableLookupILm83E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit, %.critedge624
  %i.tl = getelementptr inbounds nuw i8, ptr %i.pq, i64 360
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !175
  %i.tn = icmp sgt i32 %i.tm, 8
  br i1 %i.tn, label %.lr.ph.i.i938, label %.critedge632

.lr.ph.i.i938:                                    ; preds = %.critedge628, %bb.gj
  %.053.i.i939 = phi i64 [ %i.uq, %bb.gj ], [ 31, %.critedge628 ] ; 2 uses
  %.02952.i.i940.idx = phi i64 [ %.02952.i.i940.add1612, %bb.gj ], [ 0, %.critedge628 ] ; 6 uses
  %.02952.i.i940.ptr = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE13AVX512CostTbl, i64 %.02952.i.i940.idx ; 5 uses
  %i.to = load i16, ptr %.02952.i.i940.ptr, align 16, !tbaa !223
  %i.tp = zext i16 %i.to to i32
  %i.tq = icmp eq i32 %.61432, %i.tp
  %i.tr = getelementptr inbounds nuw i8, ptr %.02952.i.i940.ptr, i64 2
  %i.ts = load i16, ptr %i.tr, align 2
  %i.tt = icmp eq i16 %i.ts, %.sroa.025.0.lcssa38.sink.i
  %i.tu = select i1 %i.tq, i1 %i.tt, i1 false
  br i1 %i.tu, label %_ZN4llvm15CostTableLookupILm125E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread, label %bb.gg

bb.gg:                                            ; preds = %.lr.ph.i.i938
  %.02952.i.i940.add = add nuw nsw i64 %.02952.i.i940.idx, 20 ; 3 uses
  %.ptr1613 = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE13AVX512CostTbl, i64 %.02952.i.i940.add
  %i.tv = load i16, ptr %.ptr1613, align 4, !tbaa !223
  %i.tw = zext i16 %i.tv to i32
  %i.tx = icmp eq i32 %.61432, %i.tw
  %i.ty = getelementptr inbounds nuw i8, ptr %.02952.i.i940.ptr, i64 22
  %i.tz = load i16, ptr %i.ty, align 2
  %i.ua = icmp eq i16 %i.tz, %.sroa.025.0.lcssa38.sink.i
  %i.ub = select i1 %i.tx, i1 %i.ua, i1 false
  br i1 %i.ub, label %_ZN4llvm15CostTableLookupILm125E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %.02952.i.i940.add1610 = add nuw nsw i64 %.02952.i.i940.idx, 40 ; 2 uses
  %.ptr1614 = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE13AVX512CostTbl, i64 %.02952.i.i940.add1610
  %i.uc = load i16, ptr %.ptr1614, align 8, !tbaa !223
  %i.ud = zext i16 %i.uc to i32
  %i.ue = icmp eq i32 %.61432, %i.ud
  %i.uf = getelementptr inbounds nuw i8, ptr %.02952.i.i940.ptr, i64 42
  %i.ug = load i16, ptr %i.uf, align 2
  %i.uh = icmp eq i16 %i.ug, %.sroa.025.0.lcssa38.sink.i
  %i.ui = select i1 %i.ue, i1 %i.uh, i1 false
  br i1 %i.ui, label %_ZN4llvm15CostTableLookupILm125E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %.02952.i.i940.add1611 = add nuw nsw i64 %.02952.i.i940.idx, 60 ; 2 uses
  %.ptr1615.a = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE13AVX512CostTbl, i64 %.02952.i.i940.add1611
  %i.uj = load i16, ptr %.ptr1615.a, align 4, !tbaa !223
  %i.uk = zext i16 %i.uj to i32
  %i.ul = icmp eq i32 %.61432, %i.uk
  %i.um = getelementptr inbounds nuw i8, ptr %.02952.i.i940.ptr, i64 62
  %i.un = load i16, ptr %i.um, align 2
  %i.uo = icmp eq i16 %i.un, %.sroa.025.0.lcssa38.sink.i
  %i.up = select i1 %i.ul, i1 %i.uo, i1 false
  br i1 %i.up, label %_ZN4llvm15CostTableLookupILm125E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %.02952.i.i940.add1612 = add nuw nsw i64 %.02952.i.i940.idx, 80
  %i.uq = add nsw i64 %.053.i.i939, -1
  %i.ur = icmp samesign ugt i64 %.053.i.i939, 1
  br i1 %i.ur, label %.lr.ph.i.i938, label %._crit_edge.loopexit.i.i941, !llvm.loop !1

._crit_edge.loopexit.i.i941:                      ; preds = %bb.gj
  %i.us = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 157
  %i.ut = select i1 %i.ch, i1 %i.us, i1 false
  br i1 %i.ut, label %_ZN4llvm15CostTableLookupILm125E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread1501, label %.critedge632

_ZN4llvm15CostTableLookupILm125E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread: ; preds = %bb.gi, %bb.gh, %.lr.ph.i.i938
  %.028.i.i943.idx.ph = phi i64 [ %.02952.i.i940.idx, %.lr.ph.i.i938 ], [ %.02952.i.i940.add1610, %bb.gh ], [ %.02952.i.i940.add1611, %bb.gi ]
  %.028.i.i943.ptr1656 = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE13AVX512CostTbl, i64 %.028.i.i943.idx.ph
  br label %_ZN4llvm15CostTableLookupILm125E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread1501

_ZN4llvm15CostTableLookupILm125E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit: ; preds = %bb.gg
  %.ptr1613.le = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE13AVX512CostTbl, i64 %.02952.i.i940.add
  %.not.i.i944 = icmp eq i64 %.02952.i.i940.add, 2500
  br i1 %.not.i.i944, label %.critedge632, label %_ZN4llvm15CostTableLookupILm125E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread1501

_ZN4llvm15CostTableLookupILm125E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread1501: ; preds = %_ZN4llvm15CostTableLookupILm125E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread, %._crit_edge.loopexit.i.i941, %_ZN4llvm15CostTableLookupILm125E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit
  %..i.i9451505 = phi ptr [ %.ptr1613.le, %_ZN4llvm15CostTableLookupILm125E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit ], [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE13AVX512CostTbl, i64 2480), %._crit_edge.loopexit.i.i941 ], [ %.028.i.i943.ptr1656, %_ZN4llvm15CostTableLookupILm125E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread ] ; 5 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %..i.i9451505, i64 4
  switch i32 %2, label %.critedge632 [
    i32 0, label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit954
    i32 1, label %bb.gk
    i32 2, label %bb.gl
    i32 3, label %bb.gm
  ]

bb.gk:                                            ; preds = %_ZN4llvm15CostTableLookupILm125E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread1501
  %i.uv = getelementptr inbounds nuw i8, ptr %..i.i9451505, i64 8
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit954

bb.gl:                                            ; preds = %_ZN4llvm15CostTableLookupILm125E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread1501
  %i.uw = getelementptr inbounds nuw i8, ptr %..i.i9451505, i64 12
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit954

bb.gm:                                            ; preds = %_ZN4llvm15CostTableLookupILm125E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread1501
  %i.ux = getelementptr inbounds nuw i8, ptr %..i.i9451505, i64 16
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit954

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit954: ; preds = %_ZN4llvm15CostTableLookupILm125E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread1501, %bb.gk, %bb.gl, %bb.gm
  %.0.in.i949 = phi ptr [ %i.ux, %bb.gm ], [ %i.uw, %bb.gl ], [ %i.uv, %bb.gk ], [ %i.uu, %_ZN4llvm15CostTableLookupILm125E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread1501 ]
  %.0.i950 = load i32, ptr %.0.in.i949, align 4, !tbaa !217 ; 4 uses
  %.not.i951.not = icmp eq i32 %.0.i950, -1
  br i1 %.not.i951.not, label %.critedge632, label %bb.gn

bb.gn:                                            ; preds = %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit954
  %i.uy = load i16, ptr %..i.i9451505, align 4, !tbaa !223 ; 2 uses
  %i.uz = add i16 %i.uy, -295
  %or.cond.i1737 = icmp ult i16 %i.uz, 2
  br i1 %or.cond.i1737, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload.i955 = load i32, ptr %i.va, align 8, !tbaa !217
  %i.vb = and i32 %.sroa.0.0.copyload.i955, 2
  %.not13.i1756 = icmp eq i32 %i.vb, 0
  br i1 %.not13.i1756, label %.thread.i1740, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i1757

_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i1757: ; preds = %bb.go
  %i.vc = add i64 %.sroa.019.1.lcssa.sink.i, -2305843009213693952
  %i.vd = icmp ult i64 %i.vc, -4611686018427387904
  %i.ve = shl i64 %.sroa.019.1.lcssa.sink.i, 2
  %i.vf = ashr exact i64 %i.ve, 2
  %i.vg = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  %spec.select.i1758 = select i1 %i.vg, i64 9223372036854775807, i64 -9223372036854775808
  %.0.i.i.i1759 = select i1 %i.vd, i64 %spec.select.i1758, i64 %i.vf
  br label %.critedge699

bb.gp:                                            ; preds = %bb.gn
  %i.vh = add i16 %.sroa.025.0.lcssa38.sink.i, -2
  %spec.select.i27.i1738 = icmp ult i16 %i.vh, 10
  %i.vi = icmp eq i16 %i.uy, 210
  %or.cond4.i1739 = and i1 %spec.select.i27.i1738, %i.vi
  br i1 %or.cond4.i1739, label %bb.gq, label %.thread.i1740

bb.gq:                                            ; preds = %bb.gp
  %i.vj = getelementptr inbounds nuw i8, ptr %i.pq, i64 453
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !309, !range !173, !noundef !174
  %i.vl = trunc nuw i8 %i.vk to i1
  br i1 %i.vl, label %bb.gr, label %.thread.i1740

bb.gr:                                            ; preds = %bb.gq
  %i.vm = getelementptr inbounds nuw i8, ptr %i.pq, i64 433
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !310, !range !173, !noundef !174
  %i.vo = trunc nuw i8 %i.vn to i1
  br i1 %i.vo, label %bb.gs, label %.thread.i1740

bb.gs:                                            ; preds = %bb.gr
  %i.vp = load ptr, ptr %1, align 8, !tbaa !311   ; 5 uses
  %.not.i1747 = icmp eq ptr %i.vp, null
  br i1 %.not.i1747, label %.thread.i1740, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !261 ; 3 uses
  %.not.i.i1748 = icmp eq ptr %i.vr, null
  br i1 %.not.i.i1748, label %.critedge.i1750, label %_ZNK4llvm5Value9hasOneUseEv.exit.i1749

_ZNK4llvm5Value9hasOneUseEv.exit.i1749:           ; preds = %bb.gt
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !262
  %i.vu = icmp eq ptr %i.vt, null
  br i1 %i.vu, label %bb.gu, label %.critedge.i1750

bb.gu:                                            ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.i1749
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vr, i64 24
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !263
  %i.vx = load i8, ptr %i.vw, align 8, !tbaa !213
  %i.vy = icmp eq i8 %i.vx, 64
  br i1 %i.vy, label %.critedge699, label %.critedge.i1750

.critedge.i1750:                                  ; preds = %bb.gu, %_ZNK4llvm5Value9hasOneUseEv.exit.i1749, %bb.gt
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vp, i64 4
  %i.wa = load i32, ptr %i.vz, align 4            ; 2 uses
  %i.wb = and i32 %i.wa, 1073741824
  %.not.i.i.i1751 = icmp eq i32 %i.wb, 0
  br i1 %.not.i.i.i1751, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %.critedge.i1750
  %i.wc = getelementptr inbounds i8, ptr %i.vp, i64 -8
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !226
  br label %_ZNK4llvm4User10getOperandEj.exit.i1752

bb.gw:                                            ; preds = %.critedge.i1750
  %i.we = and i32 %i.wa, 268435455
  %i.wf = zext nneg i32 %i.we to i64
  %i.wg = sub nsw i64 0, %i.wf
  %i.wh = getelementptr inbounds [32 x i8], ptr %i.vp, i64 %i.wg
  br label %_ZNK4llvm4User10getOperandEj.exit.i1752

_ZNK4llvm4User10getOperandEj.exit.i1752:          ; preds = %bb.gw, %bb.gv
  %i.wi = phi ptr [ %i.wd, %bb.gv ], [ %i.wh, %bb.gw ]
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !230 ; 2 uses
  %i.wk = load i8, ptr %i.wj, align 8, !tbaa !213
  %.not12.i1753 = icmp eq i8 %i.wk, 63
  br i1 %.not12.i1753, label %bb.gx, label %.thread.i1740

bb.gx:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit.i1752
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wj, i64 16
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !261 ; 2 uses
  %.not.i28.i1754 = icmp eq ptr %i.wm, null
  br i1 %.not.i28.i1754, label %.thread.i1740, label %_ZNK4llvm5Value9hasOneUseEv.exit30.i1755

_ZNK4llvm5Value9hasOneUseEv.exit30.i1755:         ; preds = %bb.gx
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !262
  %i.wp = icmp eq ptr %i.wo, null
  br i1 %i.wp, label %.critedge699, label %.thread.i1740

.thread.i1740:                                    ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit30.i1755, %bb.gx, %_ZNK4llvm4User10getOperandEj.exit.i1752, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go
  %i.wq = sext i32 %.0.i950 to i64
  %i.wr = shl nsw i64 %i.wq, 2
  %i.ws = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.019.1.lcssa.sink.i, i64 %i.wr) ; 2 uses
  %i.wt = extractvalue { i64, i1 } %i.ws, 1
  br i1 %i.wt, label %bb.gy, label %bb.hb

bb.gy:                                            ; preds = %.thread.i1740
  %i.wu = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  br i1 %i.wu, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.wv = icmp sgt i32 %.0.i950, 0
  br i1 %i.wv, label %.critedge699, label %.thread.i.i39.i1816

bb.ha:                                            ; preds = %bb.gy
  %i.ww = icmp ne i64 %.sroa.019.1.lcssa.sink.i, 0
  %i.wx = icmp slt i32 %.0.i950, 0
  %or.cond.i.i38.i1745 = and i1 %i.ww, %i.wx
  br i1 %or.cond.i.i38.i1745, label %.critedge699, label %.thread.i.i39.i1816

bb.hb:                                            ; preds = %.thread.i1740
  %i.wy = extractvalue { i64, i1 } %i.ws, 0
  %i.wz = ashr exact i64 %i.wy, 2
  br label %.critedge699

.critedge632:                                     ; preds = %_ZN4llvm15CostTableLookupILm125E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread1501, %._crit_edge.loopexit.i.i941, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit954, %_ZN4llvm15CostTableLookupILm125E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit, %.critedge628
  %i.xa = getelementptr inbounds nuw i8, ptr %i.pq, i64 513
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !220, !range !173, !noundef !174
  %i.xc = trunc nuw i8 %i.xb to i1
  br i1 %i.xc, label %bb.hc, label %.critedge636

bb.hc:                                            ; preds = %.critedge632
  %i.xd = call noundef ptr @_ZN4llvm15CostTableLookupILm36E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE(ptr noundef nonnull align 4 dereferenceable(720) @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE10XOPCostTbl, i32 noundef %.61432, i16 %.sroa.025.0.lcssa38.sink.i) ; 6 uses
  %.not579 = icmp eq ptr %i.xd, null
  br i1 %.not579, label %.critedge636, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  switch i32 %2, label %.critedge636 [
    i32 0, label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit961
    i32 1, label %bb.he
    i32 2, label %bb.hf
    i32 3, label %bb.hg
  ]

bb.he:                                            ; preds = %bb.hd
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit961

bb.hf:                                            ; preds = %bb.hd
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xd, i64 12
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit961

bb.hg:                                            ; preds = %bb.hd
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit961

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit961: ; preds = %bb.hd, %bb.he, %bb.hf, %bb.hg
  %.0.in.i956 = phi ptr [ %i.xh, %bb.hg ], [ %i.xg, %bb.hf ], [ %i.xf, %bb.he ], [ %i.xe, %bb.hd ]
  %.0.i957 = load i32, ptr %.0.in.i956, align 4, !tbaa !217 ; 2 uses
  %.not.i958.not = icmp eq i32 %.0.i957, -1
  br i1 %.not.i958.not, label %.critedge636, label %bb.hh

bb.hh:                                            ; preds = %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit961
  %i.xi = load i16, ptr %i.xd, align 4, !tbaa !223
  %i.xj = zext i16 %i.xi to i32
  store i64 %.sroa.019.1.lcssa.sink.i, ptr %6, align 8
  %.sroa.30.0..sroa_idx1282 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sink.i, ptr %.sroa.30.0..sroa_idx1282, align 8
  %.sroa.41.0..sroa_idx1362 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 %.sroa.025.0.lcssa38.sink.i, ptr %.sroa.41.0..sroa_idx1362, align 8
  %i.xk = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload.i962 = load i32, ptr %i.xk, align 8, !tbaa !217
  %i.xl = call fastcc { i64, i32 } @"_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEENK3$_0clEijSt4pairINS_15InstructionCostENS_3MVTEENS_13FastMathFlagsE"(ptr nonnull %0, ptr nonnull %1, i32 noundef %i.xj, i32 noundef %.0.i957, ptr noundef nonnull byval(%"struct.std::pair") align 8 %6, i32 %.sroa.0.0.copyload.i962) ; 2 uses
  %.fca.0.extract248 = extractvalue { i64, i32 } %i.xl, 0
  %.fca.1.extract249 = extractvalue { i64, i32 } %i.xl, 1
  br label %.critedge699

.critedge636:                                     ; preds = %bb.hd, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit961, %bb.hc, %.critedge632
  %i.xm = load ptr, ptr %i.ci, align 8, !tbaa !24
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 360
  %i.xo = load i32, ptr %i.xn, align 8, !tbaa !175 ; 4 uses
  %i.xp = icmp sgt i32 %i.xo, 7
  br i1 %i.xp, label %.lr.ph.i.i963, label %.critedge640

.lr.ph.i.i963:                                    ; preds = %.critedge636, %bb.hl
  %.053.i.i964 = phi i64 [ %i.ys, %bb.hl ], [ 29, %.critedge636 ] ; 2 uses
  %.02952.i.idx.i = phi i64 [ %.02952.i.add4.i, %bb.hl ], [ 0, %.critedge636 ] ; 5 uses
  %.02952.i.ptr.i = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE11AVX2CostTbl, i64 %.02952.i.idx.i ; 6 uses
  %i.xq = load i16, ptr %.02952.i.ptr.i, align 16, !tbaa !223 ; 2 uses
  %i.xr = zext i16 %i.xq to i32
  %i.xs = icmp eq i32 %.61432, %i.xr
  %i.xt = getelementptr inbounds nuw i8, ptr %.02952.i.ptr.i, i64 2
  %i.xu = load i16, ptr %i.xt, align 2
  %i.xv = icmp eq i16 %i.xu, %.sroa.025.0.lcssa38.sink.i
  %i.xw = select i1 %i.xs, i1 %i.xv, i1 false
  br i1 %i.xw, label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.i, label %bb.hi

bb.hi:                                            ; preds = %.lr.ph.i.i963
  %.02952.i.add3.i = add nuw nsw i64 %.02952.i.idx.i, 20 ; 2 uses
  %.ptr7.i = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE11AVX2CostTbl, i64 %.02952.i.add3.i
  %i.xx = load i16, ptr %.ptr7.i, align 4, !tbaa !223 ; 2 uses
  %i.xy = zext i16 %i.xx to i32
  %i.xz = icmp eq i32 %.61432, %i.xy
  %i.ya = getelementptr inbounds nuw i8, ptr %.02952.i.ptr.i, i64 22
  %i.yb = load i16, ptr %i.ya, align 2
  %i.yc = icmp eq i16 %i.yb, %.sroa.025.0.lcssa38.sink.i
  %i.yd = select i1 %i.xz, i1 %i.yc, i1 false
  br i1 %i.yd, label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.thread.i965, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %.02952.i.add2.i = add nuw nsw i64 %.02952.i.idx.i, 40 ; 2 uses
  %.ptr6.i = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE11AVX2CostTbl, i64 %.02952.i.add2.i
  %i.ye = load i16, ptr %.ptr6.i, align 8, !tbaa !223 ; 2 uses
  %i.yf = zext i16 %i.ye to i32
  %i.yg = icmp eq i32 %.61432, %i.yf
  %i.yh = getelementptr inbounds nuw i8, ptr %.02952.i.ptr.i, i64 42
  %i.yi = load i16, ptr %i.yh, align 2
  %i.yj = icmp eq i16 %i.yi, %.sroa.025.0.lcssa38.sink.i
  %i.yk = select i1 %i.yg, i1 %i.yj, i1 false
  br i1 %i.yk, label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.thread.i965, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %.02952.i.add.i = add nuw nsw i64 %.02952.i.idx.i, 60 ; 2 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE11AVX2CostTbl, i64 %.02952.i.add.i
  %i.yl = load i16, ptr %.ptr.i, align 4, !tbaa !223 ; 2 uses
  %i.ym = zext i16 %i.yl to i32
  %i.yn = icmp eq i32 %.61432, %i.ym
  %i.yo = getelementptr inbounds nuw i8, ptr %.02952.i.ptr.i, i64 62
  %i.yp = load i16, ptr %i.yo, align 2
  %i.yq = icmp eq i16 %i.yp, %.sroa.025.0.lcssa38.sink.i
  %i.yr = select i1 %i.yn, i1 %i.yq, i1 false
  br i1 %i.yr, label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.thread.i965, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %.02952.i.add4.i = add nuw nsw i64 %.02952.i.idx.i, 80
  %i.ys = add nsw i64 %.053.i.i964, -1
  %i.yt = icmp samesign ugt i64 %.053.i.i964, 1
  br i1 %i.yt, label %.lr.ph.i.i963, label %.critedge640, !llvm.loop !1

_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.thread.i965: ; preds = %bb.hk, %bb.hj, %bb.hi
  %i.yu = phi i16 [ %i.yl, %bb.hk ], [ %i.ye, %bb.hj ], [ %i.xx, %bb.hi ]
  %.028.i.idx.ph.i966 = phi i64 [ %.02952.i.add.i, %bb.hk ], [ %.02952.i.add2.i, %bb.hj ], [ %.02952.i.add3.i, %bb.hi ]
  %.028.i.ptr10.i967 = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE11AVX2CostTbl, i64 %.028.i.idx.ph.i966
  br label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.i

_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.i: ; preds = %.lr.ph.i.i963, %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.thread.i965
  %i.yv = phi i16 [ %i.yu, %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.thread.i965 ], [ %i.xq, %.lr.ph.i.i963 ]
  %.ph = phi ptr [ %.028.i.ptr10.i967, %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.thread.i965 ], [ %.02952.i.ptr.i, %.lr.ph.i.i963 ] ; 4 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %.ph, i64 4
  switch i32 %2, label %.critedge640 [
    i32 0, label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit974
    i32 1, label %bb.hm
    i32 2, label %bb.hn
    i32 3, label %bb.ho
  ]

bb.hm:                                            ; preds = %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.i
  %i.yx = getelementptr inbounds nuw i8, ptr %.ph, i64 8
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit974

bb.hn:                                            ; preds = %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.i
  %i.yy = getelementptr inbounds nuw i8, ptr %.ph, i64 12
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit974

bb.ho:                                            ; preds = %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.i
  %i.yz = getelementptr inbounds nuw i8, ptr %.ph, i64 16
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit974

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit974: ; preds = %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.i, %bb.hm, %bb.hn, %bb.ho
  %.0.in.i969 = phi ptr [ %i.yz, %bb.ho ], [ %i.yy, %bb.hn ], [ %i.yx, %bb.hm ], [ %i.yw, %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.i ]
  %.0.i970 = load i32, ptr %.0.in.i969, align 4, !tbaa !217 ; 2 uses
  %.not.i971.not = icmp eq i32 %.0.i970, -1
  br i1 %.not.i971.not, label %.critedge640, label %bb.hp

bb.hp:                                            ; preds = %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit974
  %i.za = zext i16 %i.yv to i32
  store i64 %.sroa.019.1.lcssa.sink.i, ptr %7, align 8
  %.sroa.30.0..sroa_idx1284 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sink.i, ptr %.sroa.30.0..sroa_idx1284, align 8
  %.sroa.41.0..sroa_idx1364 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i16 %.sroa.025.0.lcssa38.sink.i, ptr %.sroa.41.0..sroa_idx1364, align 8
  %i.zb = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload.i975 = load i32, ptr %i.zb, align 8, !tbaa !217
  %i.zc = call fastcc { i64, i32 } @"_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEENK3$_0clEijSt4pairINS_15InstructionCostENS_3MVTEENS_13FastMathFlagsE"(ptr nonnull %0, ptr nonnull %1, i32 noundef %i.za, i32 noundef %.0.i970, ptr noundef nonnull byval(%"struct.std::pair") align 8 %7, i32 %.sroa.0.0.copyload.i975) ; 2 uses
  %.fca.0.extract239 = extractvalue { i64, i32 } %i.zc, 0
  %.fca.1.extract240 = extractvalue { i64, i32 } %i.zc, 1
  br label %.critedge699

.critedge640:                                     ; preds = %bb.hl, %_ZSt9__find_ifIPKN4llvm13CostTblEntryTI13CostKindCostsEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupIS2_EEPKNS1_IT_EENS0_8ArrayRefISB_EEiNS0_3MVTEEUlRS4_E_EEESA_SA_SA_T0_St26random_access_iterator_tag.exit.i, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit974, %.critedge636
  %i.zd = icmp sgt i32 %i.xo, 6
  br i1 %i.zd, label %.lr.ph.i.i976, label %.critedge644

.lr.ph.i.i976:                                    ; preds = %.critedge640, %bb.ht
  %.053.i.i977 = phi i64 [ %i.aag, %bb.ht ], [ 27, %.critedge640 ] ; 2 uses
  %.02952.i.i978.idx = phi i64 [ %.02952.i.i978.add1619, %bb.ht ], [ 0, %.critedge640 ] ; 6 uses
  %.02952.i.i978.ptr = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE11AVX1CostTbl, i64 %.02952.i.i978.idx ; 5 uses
  %i.ze = load i16, ptr %.02952.i.i978.ptr, align 16, !tbaa !223
  %i.zf = zext i16 %i.ze to i32
  %i.zg = icmp eq i32 %.61432, %i.zf
  %i.zh = getelementptr inbounds nuw i8, ptr %.02952.i.i978.ptr, i64 2
  %i.zi = load i16, ptr %i.zh, align 2
  %i.zj = icmp eq i16 %i.zi, %.sroa.025.0.lcssa38.sink.i
  %i.zk = select i1 %i.zg, i1 %i.zj, i1 false
  br i1 %i.zk, label %_ZN4llvm15CostTableLookupILm111E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread1658, label %bb.hq

bb.hq:                                            ; preds = %.lr.ph.i.i976
  %.02952.i.i978.add1617 = add nuw nsw i64 %.02952.i.i978.idx, 20 ; 2 uses
  %.ptr1621 = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE11AVX1CostTbl, i64 %.02952.i.i978.add1617
  %i.zl = load i16, ptr %.ptr1621, align 4, !tbaa !223
  %i.zm = zext i16 %i.zl to i32
  %i.zn = icmp eq i32 %.61432, %i.zm
  %i.zo = getelementptr inbounds nuw i8, ptr %.02952.i.i978.ptr, i64 22
  %i.zp = load i16, ptr %i.zo, align 2
  %i.zq = icmp eq i16 %i.zp, %.sroa.025.0.lcssa38.sink.i
  %i.zr = select i1 %i.zn, i1 %i.zq, i1 false
  br i1 %i.zr, label %_ZN4llvm15CostTableLookupILm111E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE.exit.thread1658, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
end_hunk_1
begin_hunk_2_@_ZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE:bb.a
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abs, i64 16
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1007

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1007: ; preds = %bb.ij, %bb.ik, %bb.il, %bb.im
  %.0.in.i1002 = phi ptr [ %i.abw, %bb.im ], [ %i.abv, %bb.il ], [ %i.abu, %bb.ik ], [ %i.abt, %bb.ij ]
  %.0.i1003 = load i32, ptr %.0.in.i1002, align 4, !tbaa !217 ; 2 uses
  %.not.i1004.not = icmp eq i32 %.0.i1003, -1
  br i1 %.not.i1004.not, label %.critedge652, label %bb.in

bb.in:                                            ; preds = %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1007
  %i.abx = load i16, ptr %i.abs, align 4, !tbaa !223
  %i.aby = zext i16 %i.abx to i32
  store i64 %.sroa.019.1.lcssa.sink.i, ptr %10, align 8
  %.sroa.30.0..sroa_idx1290 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.sink.i, ptr %.sroa.30.0..sroa_idx1290, align 8
  %.sroa.41.0..sroa_idx1370 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i16 %.sroa.025.0.lcssa38.sink.i, ptr %.sroa.41.0..sroa_idx1370, align 8
  %i.abz = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload.i1008 = load i32, ptr %i.abz, align 8, !tbaa !217
  %i.aca = call fastcc { i64, i32 } @"_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEENK3$_0clEijSt4pairINS_15InstructionCostENS_3MVTEENS_13FastMathFlagsE"(ptr nonnull %0, ptr nonnull %1, i32 noundef %i.aby, i32 noundef %.0.i1003, ptr noundef nonnull byval(%"struct.std::pair") align 8 %10, i32 %.sroa.0.0.copyload.i1008) ; 2 uses
  %.fca.0.extract212 = extractvalue { i64, i32 } %i.aca, 0
  %.fca.1.extract213 = extractvalue { i64, i32 } %i.aca, 1
  br label %.critedge699

.critedge652:                                     ; preds = %bb.ij, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1007, %.critedge648.thread, %.critedge648
  %i.acb = load ptr, ptr %i.ci, align 8, !tbaa !24
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 360
  %i.acd = load i32, ptr %i.acc, align 8, !tbaa !175
  %i.ace = icmp sgt i32 %i.acd, 3
  br i1 %i.ace, label %bb.io, label %.critedge656

bb.io:                                            ; preds = %.critedge652
  %i.acf = call noundef ptr @_ZN4llvm15CostTableLookupILm22E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE(ptr noundef nonnull align 4 dereferenceable(440) @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE12SSSE3CostTbl, i32 noundef %.61432, i16 %.sroa.025.0.lcssa38.sink.i) ; 6 uses
  %.not584 = icmp eq ptr %i.acf, null
  br i1 %.not584, label %.critedge656, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 4
  switch i32 %2, label %.critedge656 [
    i32 0, label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1014
    i32 1, label %bb.iq
    i32 2, label %bb.ir
    i32 3, label %bb.is
  ]

bb.iq:                                            ; preds = %bb.ip
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acf, i64 8
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1014

bb.ir:                                            ; preds = %bb.ip
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acf, i64 12
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1014

bb.is:                                            ; preds = %bb.ip
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1014

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1014: ; preds = %bb.ip, %bb.iq, %bb.ir, %bb.is
  %.0.in.i1009 = phi ptr [ %i.acj, %bb.is ], [ %i.aci, %bb.ir ], [ %i.ach, %bb.iq ], [ %i.acg, %bb.ip ]
  %.0.i1010 = load i32, ptr %.0.in.i1009, align 4, !tbaa !217 ; 2 uses
  %.not.i1011.not = icmp eq i32 %.0.i1010, -1
  br i1 %.not.i1011.not, label %.critedge656, label %bb.it

bb.it:                                            ; preds = %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1014
  %i.ack = load i16, ptr %i.acf, align 4, !tbaa !223
  %i.acl = zext i16 %i.ack to i32
  store i64 %.sroa.019.1.lcssa.sink.i, ptr %11, align 8
  %.sroa.30.0..sroa_idx1292 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.sink.i, ptr %.sroa.30.0..sroa_idx1292, align 8
  %.sroa.41.0..sroa_idx1372 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i16 %.sroa.025.0.lcssa38.sink.i, ptr %.sroa.41.0..sroa_idx1372, align 8
  %i.acm = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload.i1015 = load i32, ptr %i.acm, align 8, !tbaa !217
  %i.acn = call fastcc { i64, i32 } @"_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEENK3$_0clEijSt4pairINS_15InstructionCostENS_3MVTEENS_13FastMathFlagsE"(ptr nonnull %0, ptr nonnull %1, i32 noundef %i.acl, i32 noundef %.0.i1010, ptr noundef nonnull byval(%"struct.std::pair") align 8 %11, i32 %.sroa.0.0.copyload.i1015) ; 2 uses
  %.fca.0.extract203 = extractvalue { i64, i32 } %i.acn, 0
  %.fca.1.extract204 = extractvalue { i64, i32 } %i.acn, 1
  br label %.critedge699

.critedge656:                                     ; preds = %bb.ip, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1014, %bb.io, %.critedge652
  %i.aco = load ptr, ptr %i.ci, align 8, !tbaa !24
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 360
  %i.acq = load i32, ptr %i.acp, align 8, !tbaa !175
  %i.acr = icmp sgt i32 %i.acq, 1
  br i1 %i.acr, label %bb.iu, label %.critedge660

bb.iu:                                            ; preds = %.critedge656
  %i.acs = call noundef ptr @_ZN4llvm15CostTableLookupILm67E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE(ptr noundef nonnull align 4 dereferenceable(1340) @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE11SSE2CostTbl, i32 noundef %.61432, i16 %.sroa.025.0.lcssa38.sink.i) ; 6 uses
  %.not585 = icmp eq ptr %i.acs, null
  br i1 %.not585, label %.critedge660, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 4
  switch i32 %2, label %.critedge660 [
    i32 0, label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1021
    i32 1, label %bb.iw
    i32 2, label %bb.ix
    i32 3, label %bb.iy
  ]

bb.iw:                                            ; preds = %bb.iv
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acs, i64 8
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1021

bb.ix:                                            ; preds = %bb.iv
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acs, i64 12
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1021

bb.iy:                                            ; preds = %bb.iv
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acs, i64 16
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1021

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1021: ; preds = %bb.iv, %bb.iw, %bb.ix, %bb.iy
  %.0.in.i1016 = phi ptr [ %i.acw, %bb.iy ], [ %i.acv, %bb.ix ], [ %i.acu, %bb.iw ], [ %i.act, %bb.iv ]
  %.0.i1017 = load i32, ptr %.0.in.i1016, align 4, !tbaa !217 ; 2 uses
  %.not.i1018.not = icmp eq i32 %.0.i1017, -1
  br i1 %.not.i1018.not, label %.critedge660, label %bb.iz

bb.iz:                                            ; preds = %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1021
  %i.acx = load i16, ptr %i.acs, align 4, !tbaa !223
  %i.acy = zext i16 %i.acx to i32
  store i64 %.sroa.019.1.lcssa.sink.i, ptr %12, align 8
  %.sroa.30.0..sroa_idx1294 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.sink.i, ptr %.sroa.30.0..sroa_idx1294, align 8
  %.sroa.41.0..sroa_idx1374 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i16 %.sroa.025.0.lcssa38.sink.i, ptr %.sroa.41.0..sroa_idx1374, align 8
  %i.acz = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload.i1022 = load i32, ptr %i.acz, align 8, !tbaa !217
  %i.ada = call fastcc { i64, i32 } @"_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEENK3$_0clEijSt4pairINS_15InstructionCostENS_3MVTEENS_13FastMathFlagsE"(ptr nonnull %0, ptr nonnull %1, i32 noundef %i.acy, i32 noundef %.0.i1017, ptr noundef nonnull byval(%"struct.std::pair") align 8 %12, i32 %.sroa.0.0.copyload.i1022) ; 2 uses
  %.fca.0.extract194 = extractvalue { i64, i32 } %i.ada, 0
  %.fca.1.extract195 = extractvalue { i64, i32 } %i.ada, 1
  br label %.critedge699

.critedge660:                                     ; preds = %bb.iv, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1021, %bb.iu, %.critedge656
  %i.adb = load ptr, ptr %i.ci, align 8, !tbaa !24
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 360
  %i.add = load i32, ptr %i.adc, align 8, !tbaa !175
  %i.ade = icmp sgt i32 %i.add, 0
  br i1 %i.ade, label %bb.ja, label %.critedge664

bb.ja:                                            ; preds = %.critedge660
  %i.adf = call noundef ptr @_ZN4llvm15CostTableLookupILm4E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE(ptr noundef nonnull align 4 dereferenceable(80) @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE11SSE1CostTbl, i32 noundef %.61432, i16 %.sroa.025.0.lcssa38.sink.i) ; 6 uses
  %.not586 = icmp eq ptr %i.adf, null
  br i1 %.not586, label %.critedge664, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 4
  switch i32 %2, label %.critedge664 [
    i32 0, label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1028
    i32 1, label %bb.jc
    i32 2, label %bb.jd
    i32 3, label %bb.je
  ]

bb.jc:                                            ; preds = %bb.jb
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adf, i64 8
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1028

bb.jd:                                            ; preds = %bb.jb
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adf, i64 12
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1028

bb.je:                                            ; preds = %bb.jb
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adf, i64 16
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1028

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1028: ; preds = %bb.jb, %bb.jc, %bb.jd, %bb.je
  %.0.in.i1023 = phi ptr [ %i.adj, %bb.je ], [ %i.adi, %bb.jd ], [ %i.adh, %bb.jc ], [ %i.adg, %bb.jb ]
  %.0.i1024 = load i32, ptr %.0.in.i1023, align 4, !tbaa !217 ; 2 uses
  %.not.i1025.not = icmp eq i32 %.0.i1024, -1
  br i1 %.not.i1025.not, label %.critedge664, label %bb.jf

bb.jf:                                            ; preds = %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1028
  %i.adk = load i16, ptr %i.adf, align 4, !tbaa !223
  %i.adl = zext i16 %i.adk to i32
  store i64 %.sroa.019.1.lcssa.sink.i, ptr %13, align 8
  %.sroa.30.0..sroa_idx1296 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.sink.i, ptr %.sroa.30.0..sroa_idx1296, align 8
  %.sroa.41.0..sroa_idx1376 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i16 %.sroa.025.0.lcssa38.sink.i, ptr %.sroa.41.0..sroa_idx1376, align 8
  %i.adm = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload.i1029 = load i32, ptr %i.adm, align 8, !tbaa !217
  %i.adn = call fastcc { i64, i32 } @"_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEENK3$_0clEijSt4pairINS_15InstructionCostENS_3MVTEENS_13FastMathFlagsE"(ptr nonnull %0, ptr nonnull %1, i32 noundef %i.adl, i32 noundef %.0.i1024, ptr noundef nonnull byval(%"struct.std::pair") align 8 %13, i32 %.sroa.0.0.copyload.i1029) ; 2 uses
  %.fca.0.extract185 = extractvalue { i64, i32 } %i.adn, 0
  %.fca.1.extract186 = extractvalue { i64, i32 } %i.adn, 1
  br label %.critedge699

.critedge664:                                     ; preds = %bb.jb, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1028, %bb.ja, %.critedge660
  %i.ado = load ptr, ptr %i.ci, align 8, !tbaa !24 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 392
  %i.adq = load i8, ptr %i.adp, align 8, !tbaa !307, !range !173, !noundef !174
  %i.adr = trunc nuw i8 %i.adq to i1
  br i1 %i.adr, label %bb.jg, label %.critedge672

bb.jg:                                            ; preds = %.critedge664
  %i.ads = getelementptr inbounds nuw i8, ptr %i.ado, i64 522
  %i.adt = load i8, ptr %i.ads, align 2, !tbaa !176, !range !173, !noundef !174
  %i.adu = trunc nuw i8 %i.adt to i1
  br i1 %i.adu, label %bb.jh, label %.critedge668

bb.jh:                                            ; preds = %bb.jg
  %24 = icmp eq i32 %.61432, 211
  %25 = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 8
  %.not3.i = select i1 %24, i1 %25, i1 false
  %26 = icmp ult i32 %2, 4
  %or.cond1925 = and i1 %.not3.i, %26
  br i1 %or.cond1925, label %bb.ji, label %.critedge668

bb.ji:                                            ; preds = %bb.jh
  %27 = zext nneg i32 %2 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE, i64 %27
  %switch.load = load ptr, ptr %switch.gep, align 8
  %.0.i1033 = load i32, ptr %switch.load, align 4, !tbaa !217 ; 4 uses
  %.not.i1034.not = icmp eq i32 %.0.i1033, -1
  br i1 %.not.i1034.not, label %.critedge668, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %28 = sext i32 %.0.i1033 to i64
  %29 = shl nsw i64 %28, 2
  %30 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.019.1.lcssa.sink.i, i64 %29) ; 2 uses
  %31 = extractvalue { i64, i1 } %30, 1
  br i1 %31, label %bb.jk, label %bb.jm

bb.jk:                                            ; preds = %bb.jj
  %32 = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  br i1 %32, label %bb.jl, label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1038

bb.jl:                                            ; preds = %bb.jk
  %33 = icmp sgt i32 %.0.i1033, 0
  br i1 %33, label %.critedge699, label %.thread.i.i39.i1816

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1038: ; preds = %bb.jk
  %34 = icmp ne i64 %.sroa.019.1.lcssa.sink.i, 0
  %35 = icmp slt i32 %.0.i1033, 0
  %or.cond.i.i38.i1771 = and i1 %34, %35
  br i1 %or.cond.i.i38.i1771, label %.critedge699, label %.thread.i.i39.i1816

bb.jm:                                            ; preds = %bb.jj
  %.fca.0.extract176 = extractvalue { i64, i1 } %30, 0
  %36 = ashr exact i64 %.fca.0.extract176, 2
  br label %.critedge699

.critedge668:                                     ; preds = %bb.ji, %bb.jh, %bb.jg
  %i.adv = call noundef ptr @_ZN4llvm15CostTableLookupILm3E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE(ptr noundef nonnull align 4 dereferenceable(60) @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE12BMI32CostTbl, i32 noundef %.61432, i16 %.sroa.025.0.lcssa38.sink.i) ; 6 uses
  %.not588 = icmp eq ptr %i.adv, null
  br i1 %.not588, label %.critedge672, label %bb.jn

bb.jn:                                            ; preds = %.critedge668
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 4
  switch i32 %2, label %.critedge672 [
    i32 0, label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1045
    i32 1, label %bb.jo
    i32 2, label %bb.jp
    i32 3, label %bb.jq
  ]

bb.jo:                                            ; preds = %bb.jn
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adv, i64 8
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1045

bb.jp:                                            ; preds = %bb.jn
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adv, i64 12
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1045

bb.jq:                                            ; preds = %bb.jn
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adv, i64 16
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1045

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1045: ; preds = %bb.jn, %bb.jo, %bb.jp, %bb.jq
  %.0.in.i1040 = phi ptr [ %i.adz, %bb.jq ], [ %i.ady, %bb.jp ], [ %i.adx, %bb.jo ], [ %i.adw, %bb.jn ]
  %.0.i1041 = load i32, ptr %.0.in.i1040, align 4, !tbaa !217 ; 2 uses
  %.not.i1042.not = icmp eq i32 %.0.i1041, -1
  br i1 %.not.i1042.not, label %.critedge672, label %bb.jr

bb.jr:                                            ; preds = %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1045
  %i.aea = load i16, ptr %i.adv, align 4, !tbaa !223
  %i.aeb = zext i16 %i.aea to i32
  store i64 %.sroa.019.1.lcssa.sink.i, ptr %14, align 8
  %.sroa.30.0..sroa_idx1300 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.sink.i, ptr %.sroa.30.0..sroa_idx1300, align 8
  %.sroa.41.0..sroa_idx1380 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i16 %.sroa.025.0.lcssa38.sink.i, ptr %.sroa.41.0..sroa_idx1380, align 8
  %i.aec = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload.i1046 = load i32, ptr %i.aec, align 8, !tbaa !217
  %i.aed = call fastcc { i64, i32 } @"_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEENK3$_0clEijSt4pairINS_15InstructionCostENS_3MVTEENS_13FastMathFlagsE"(ptr nonnull %0, ptr nonnull %1, i32 noundef %i.aeb, i32 noundef %.0.i1041, ptr noundef nonnull byval(%"struct.std::pair") align 8 %14, i32 %.sroa.0.0.copyload.i1046) ; 2 uses
  %.fca.0.extract167 = extractvalue { i64, i32 } %i.aed, 0
  %.fca.1.extract168 = extractvalue { i64, i32 } %i.aed, 1
  br label %.critedge699

.critedge672:                                     ; preds = %bb.jn, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1045, %.critedge668, %.critedge664
  %i.aee = load ptr, ptr %i.ci, align 8, !tbaa !24 ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 450
  %i.aeg = load i8, ptr %i.aef, align 2, !tbaa !619, !range !173, !noundef !174
  %i.aeh = trunc nuw i8 %i.aeg to i1
  br i1 %i.aeh, label %bb.js, label %.critedge680

bb.js:                                            ; preds = %.critedge672
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aee, i64 522
  %i.aej = load i8, ptr %i.aei, align 2, !tbaa !176, !range !173, !noundef !174
  %i.aek = trunc nuw i8 %i.aej to i1
  br i1 %i.aek, label %bb.jt, label %.critedge676

bb.jt:                                            ; preds = %bb.js
  %37 = icmp eq i32 %.61432, 212
  %38 = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 8
  %.not3.i1048 = select i1 %37, i1 %38, i1 false
  %39 = icmp ult i32 %2, 4
  %or.cond1929 = and i1 %.not3.i1048, %39
  br i1 %or.cond1929, label %bb.ju, label %.critedge676

bb.ju:                                            ; preds = %bb.jt
  %40 = zext nneg i32 %2 to i64
  %switch.gep1927 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE.61, i64 %40
  %switch.load1928 = load ptr, ptr %switch.gep1927, align 8
  %.0.i1050 = load i32, ptr %switch.load1928, align 4, !tbaa !217 ; 4 uses
  %.not.i1051.not = icmp eq i32 %.0.i1050, -1
  br i1 %.not.i1051.not, label %.critedge676, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %41 = sext i32 %.0.i1050 to i64
  %42 = shl nsw i64 %41, 2
  %43 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.019.1.lcssa.sink.i, i64 %42) ; 2 uses
  %44 = extractvalue { i64, i1 } %43, 1
  br i1 %44, label %bb.jw, label %bb.jy

bb.jw:                                            ; preds = %bb.jv
  %45 = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  br i1 %45, label %bb.jx, label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1057

bb.jx:                                            ; preds = %bb.jw
  %46 = icmp sgt i32 %.0.i1050, 0
  br i1 %46, label %.critedge699, label %.thread.i.i39.i1816

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1057: ; preds = %bb.jw
  %47 = icmp ne i64 %.sroa.019.1.lcssa.sink.i, 0
  %48 = icmp slt i32 %.0.i1050, 0
  %or.cond.i.i38.i1793 = and i1 %47, %48
  br i1 %or.cond.i.i38.i1793, label %.critedge699, label %.thread.i.i39.i1816

bb.jy:                                            ; preds = %bb.jv
  %.fca.0.extract158 = extractvalue { i64, i1 } %43, 0
  %49 = ashr exact i64 %.fca.0.extract158, 2
  br label %.critedge699

.critedge676:                                     ; preds = %bb.ju, %bb.jt, %bb.js
  %i.ael = call noundef ptr @_ZN4llvm15CostTableLookupILm3E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE(ptr noundef nonnull align 4 dereferenceable(60) @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE14LZCNT32CostTbl, i32 noundef %.61432, i16 %.sroa.025.0.lcssa38.sink.i) ; 6 uses
  %.not590 = icmp eq ptr %i.ael, null
  br i1 %.not590, label %.critedge680, label %bb.jz

bb.jz:                                            ; preds = %.critedge676
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 4
  switch i32 %2, label %.critedge680 [
    i32 0, label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1064
    i32 1, label %bb.ka
    i32 2, label %bb.kb
    i32 3, label %bb.kc
  ]

bb.ka:                                            ; preds = %bb.jz
  %i.aen = getelementptr inbounds nuw i8, ptr %i.ael, i64 8
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1064

bb.kb:                                            ; preds = %bb.jz
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.ael, i64 12
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1064

bb.kc:                                            ; preds = %bb.jz
  %i.aep = getelementptr inbounds nuw i8, ptr %i.ael, i64 16
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1064

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1064: ; preds = %bb.jz, %bb.ka, %bb.kb, %bb.kc
  %.0.in.i1059 = phi ptr [ %i.aep, %bb.kc ], [ %i.aeo, %bb.kb ], [ %i.aen, %bb.ka ], [ %i.aem, %bb.jz ]
  %.0.i1060 = load i32, ptr %.0.in.i1059, align 4, !tbaa !217 ; 2 uses
  %.not.i1061.not = icmp eq i32 %.0.i1060, -1
  br i1 %.not.i1061.not, label %.critedge680, label %bb.kd

bb.kd:                                            ; preds = %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1064
  %i.aeq = load i16, ptr %i.ael, align 4, !tbaa !223
  %i.aer = zext i16 %i.aeq to i32
  store i64 %.sroa.019.1.lcssa.sink.i, ptr %15, align 8
  %.sroa.30.0..sroa_idx1304 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.sink.i, ptr %.sroa.30.0..sroa_idx1304, align 8
  %.sroa.41.0..sroa_idx1384 = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i16 %.sroa.025.0.lcssa38.sink.i, ptr %.sroa.41.0..sroa_idx1384, align 8
  %i.aes = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload.i1065 = load i32, ptr %i.aes, align 8, !tbaa !217
  %i.aet = call fastcc { i64, i32 } @"_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEENK3$_0clEijSt4pairINS_15InstructionCostENS_3MVTEENS_13FastMathFlagsE"(ptr nonnull %0, ptr nonnull %1, i32 noundef %i.aer, i32 noundef %.0.i1060, ptr noundef nonnull byval(%"struct.std::pair") align 8 %15, i32 %.sroa.0.0.copyload.i1065) ; 2 uses
  %.fca.0.extract149 = extractvalue { i64, i32 } %i.aet, 0
  %.fca.1.extract150 = extractvalue { i64, i32 } %i.aet, 1
  br label %.critedge699

.critedge680:                                     ; preds = %bb.jz, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1064, %.critedge676, %.critedge672
  %i.aeu = load ptr, ptr %i.ci, align 8, !tbaa !24 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 469
  %i.aew = load i8, ptr %i.aev, align 1, !tbaa !172, !range !173, !noundef !174
  %i.aex = trunc nuw i8 %i.aew to i1
  br i1 %i.aex, label %bb.ke, label %.critedge688

bb.ke:                                            ; preds = %.critedge680
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aeu, i64 522
  %i.aez = load i8, ptr %i.aey, align 2, !tbaa !176, !range !173, !noundef !174
  %i.afa = trunc nuw i8 %i.aez to i1
  br i1 %i.afa, label %bb.kf, label %.critedge684

bb.kf:                                            ; preds = %bb.ke
  %50 = icmp eq i32 %.61432, 213
  %51 = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 8
  %.not3.i1067 = select i1 %50, i1 %51, i1 false
  %52 = icmp ult i32 %2, 4
  %or.cond1933 = and i1 %.not3.i1067, %52
  br i1 %or.cond1933, label %bb.kg, label %.critedge684

bb.kg:                                            ; preds = %bb.kf
  %53 = zext nneg i32 %2 to i64
  %switch.gep1931 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE.62, i64 %53
  %switch.load1932 = load ptr, ptr %switch.gep1931, align 8
  %.0.i1067 = load i32, ptr %switch.load1932, align 4, !tbaa !217 ; 4 uses
  %.not.i1068.not = icmp eq i32 %.0.i1067, -1
  br i1 %.not.i1068.not, label %.critedge684, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %54 = sext i32 %.0.i1067 to i64
  %55 = shl nsw i64 %54, 2
  %56 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.019.1.lcssa.sink.i, i64 %55) ; 2 uses
  %57 = extractvalue { i64, i1 } %56, 1
  br i1 %57, label %bb.ki, label %bb.kk

bb.ki:                                            ; preds = %bb.kh
  %58 = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  br i1 %58, label %bb.kj, label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1076

bb.kj:                                            ; preds = %bb.ki
  %59 = icmp sgt i32 %.0.i1067, 0
  br i1 %59, label %.critedge699, label %.thread.i.i39.i1816

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1076: ; preds = %bb.ki
  %60 = icmp ne i64 %.sroa.019.1.lcssa.sink.i, 0
  %61 = icmp slt i32 %.0.i1067, 0
  %or.cond.i.i38.i1815 = and i1 %60, %61
  br i1 %or.cond.i.i38.i1815, label %.critedge699, label %.thread.i.i39.i1816

.thread.i.i39.i1816:                              ; preds = %bb.dr, %bb.ds, %bb.de, %bb.dd, %bb.cq, %bb.cp, %bb.bw, %bb.bv, %bb.bh, %bb.bg, %bb.el, %bb.em, %bb.ff, %bb.fg, %bb.gd, %bb.ge, %bb.gz, %bb.ha, %bb.jl, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1038, %bb.jx, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1057, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1076, %bb.kj
  br label %.critedge699

bb.kk:                                            ; preds = %bb.kh
  %.fca.0.extract140 = extractvalue { i64, i1 } %56, 0
  %62 = ashr exact i64 %.fca.0.extract140, 2
  br label %.critedge699

.critedge684:                                     ; preds = %bb.kg, %bb.kf, %bb.ke
  %i.afb = call noundef ptr @_ZN4llvm15CostTableLookupILm3E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE(ptr noundef nonnull align 4 dereferenceable(60) @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE15POPCNT32CostTbl, i32 noundef %.61432, i16 %.sroa.025.0.lcssa38.sink.i) ; 6 uses
  %.not592 = icmp eq ptr %i.afb, null
  br i1 %.not592, label %.critedge688, label %bb.kl

bb.kl:                                            ; preds = %.critedge684
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 4
  switch i32 %2, label %.critedge688 [
    i32 0, label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1083
    i32 1, label %bb.km
    i32 2, label %bb.kn
    i32 3, label %bb.ko
  ]

bb.km:                                            ; preds = %bb.kl
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1083

bb.kn:                                            ; preds = %bb.kl
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afb, i64 12
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1083

bb.ko:                                            ; preds = %bb.kl
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afb, i64 16
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1083

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1083: ; preds = %bb.kl, %bb.km, %bb.kn, %bb.ko
  %.0.in.i1078 = phi ptr [ %i.aff, %bb.ko ], [ %i.afe, %bb.kn ], [ %i.afd, %bb.km ], [ %i.afc, %bb.kl ]
  %.0.i1079 = load i32, ptr %.0.in.i1078, align 4, !tbaa !217 ; 2 uses
  %.not.i1080.not = icmp eq i32 %.0.i1079, -1
  br i1 %.not.i1080.not, label %.critedge688, label %bb.kp

bb.kp:                                            ; preds = %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1083
  %i.afg = load i16, ptr %i.afb, align 4, !tbaa !223
  %i.afh = zext i16 %i.afg to i32
  store i64 %.sroa.019.1.lcssa.sink.i, ptr %16, align 8
  %.sroa.30.0..sroa_idx1308 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.sink.i, ptr %.sroa.30.0..sroa_idx1308, align 8
  %.sroa.41.0..sroa_idx1388 = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i16 %.sroa.025.0.lcssa38.sink.i, ptr %.sroa.41.0..sroa_idx1388, align 8
  %i.afi = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload.i1084 = load i32, ptr %i.afi, align 8, !tbaa !217
  %i.afj = call fastcc { i64, i32 } @"_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEENK3$_0clEijSt4pairINS_15InstructionCostENS_3MVTEENS_13FastMathFlagsE"(ptr nonnull %0, ptr nonnull %1, i32 noundef %i.afh, i32 noundef %.0.i1079, ptr noundef nonnull byval(%"struct.std::pair") align 8 %16, i32 %.sroa.0.0.copyload.i1084) ; 2 uses
  %.fca.0.extract131 = extractvalue { i64, i32 } %i.afj, 0
  %.fca.1.extract132 = extractvalue { i64, i32 } %i.afj, 1
  br label %.critedge699

.critedge688:                                     ; preds = %bb.kl, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1083, %.critedge684, %.critedge680
  %i.afk = load ptr, ptr %i.ci, align 8, !tbaa !24
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 522
  %i.afm = load i8, ptr %i.afl, align 2, !tbaa !176, !range !173, !noundef !174
  %i.afn = trunc nuw i8 %i.afm to i1
  br i1 %i.afn, label %bb.kq, label %.critedge692

bb.kq:                                            ; preds = %.critedge688
  %i.afo = call noundef ptr @_ZN4llvm15CostTableLookupILm30E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE(ptr noundef nonnull align 4 dereferenceable(600) @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE10X64CostTbl, i32 noundef %.61432, i16 %.sroa.025.0.lcssa38.sink.i) ; 6 uses
  %.not593 = icmp eq ptr %i.afo, null
  br i1 %.not593, label %.critedge692, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 4
  switch i32 %2, label %.critedge692 [
    i32 0, label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1090
    i32 1, label %bb.ks
    i32 2, label %bb.kt
    i32 3, label %bb.ku
  ]

bb.ks:                                            ; preds = %bb.kr
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afo, i64 8
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1090

bb.kt:                                            ; preds = %bb.kr
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afo, i64 12
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1090

bb.ku:                                            ; preds = %bb.kr
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afo, i64 16
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1090

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1090: ; preds = %bb.kr, %bb.ks, %bb.kt, %bb.ku
  %.0.in.i1085 = phi ptr [ %i.afs, %bb.ku ], [ %i.afr, %bb.kt ], [ %i.afq, %bb.ks ], [ %i.afp, %bb.kr ]
  %.0.i1086 = load i32, ptr %.0.in.i1085, align 4, !tbaa !217 ; 2 uses
  %.not.i1087.not = icmp eq i32 %.0.i1086, -1
  br i1 %.not.i1087.not, label %.critedge692, label %bb.kv

bb.kv:                                            ; preds = %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1090
  %i.aft = load i16, ptr %i.afo, align 4, !tbaa !223
  %i.afu = zext i16 %i.aft to i32
  store i64 %.sroa.019.1.lcssa.sink.i, ptr %17, align 8
  %.sroa.30.0..sroa_idx1310 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.sink.i, ptr %.sroa.30.0..sroa_idx1310, align 8
  %.sroa.41.0..sroa_idx1390 = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i16 %.sroa.025.0.lcssa38.sink.i, ptr %.sroa.41.0..sroa_idx1390, align 8
  %i.afv = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload.i1091 = load i32, ptr %i.afv, align 8, !tbaa !217
  %i.afw = call fastcc { i64, i32 } @"_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEENK3$_0clEijSt4pairINS_15InstructionCostENS_3MVTEENS_13FastMathFlagsE"(ptr nonnull %0, ptr nonnull %1, i32 noundef %i.afu, i32 noundef %.0.i1086, ptr noundef nonnull byval(%"struct.std::pair") align 8 %17, i32 %.sroa.0.0.copyload.i1091) ; 2 uses
  %.fca.0.extract122 = extractvalue { i64, i32 } %i.afw, 0
  %.fca.1.extract123 = extractvalue { i64, i32 } %i.afw, 1
  br label %.critedge699

.critedge692:                                     ; preds = %bb.kr, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1090, %bb.kq, %.critedge688
  %i.afx = call noundef ptr @_ZN4llvm15CostTableLookupILm71E13CostKindCostsEEPKNS_13CostTblEntryTIT0_EERAT__S5_iNS_3MVTE(ptr noundef nonnull align 4 dereferenceable(1420) @_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEE10X86CostTbl, i32 noundef %.61432, i16 %.sroa.025.0.lcssa38.sink.i) ; 6 uses
  %.not594 = icmp eq ptr %i.afx, null
  br i1 %.not594, label %.critedge696, label %bb.kw

bb.kw:                                            ; preds = %.critedge692
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 4
  switch i32 %2, label %.critedge696 [
    i32 0, label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1097
    i32 1, label %bb.kx
    i32 2, label %bb.ky
    i32 3, label %bb.kz
  ]

bb.kx:                                            ; preds = %bb.kw
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afx, i64 8
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1097

bb.ky:                                            ; preds = %bb.kw
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afx, i64 12
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1097

bb.kz:                                            ; preds = %bb.kw
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afx, i64 16
  br label %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1097

_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1097: ; preds = %bb.kw, %bb.kx, %bb.ky, %bb.kz
  %.0.in.i1092 = phi ptr [ %i.agb, %bb.kz ], [ %i.aga, %bb.ky ], [ %i.afz, %bb.kx ], [ %i.afy, %bb.kw ]
  %.0.i1093 = load i32, ptr %.0.in.i1092, align 4, !tbaa !217 ; 2 uses
  %.not.i1094.not = icmp eq i32 %.0.i1093, -1
  br i1 %.not.i1094.not, label %.critedge696, label %bb.la

bb.la:                                            ; preds = %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1097
  %i.agc = load i16, ptr %i.afx, align 4, !tbaa !223
  %i.agd = zext i16 %i.agc to i32
  store i64 %.sroa.019.1.lcssa.sink.i, ptr %18, align 8
  %.sroa.30.0..sroa_idx1312 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.sink.i, ptr %.sroa.30.0..sroa_idx1312, align 8
  %.sroa.41.0..sroa_idx1392 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i16 %.sroa.025.0.lcssa38.sink.i, ptr %.sroa.41.0..sroa_idx1392, align 8
  %i.age = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload.i1098 = load i32, ptr %i.age, align 8, !tbaa !217
  %i.agf = call fastcc { i64, i32 } @"_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEENK3$_0clEijSt4pairINS_15InstructionCostENS_3MVTEENS_13FastMathFlagsE"(ptr nonnull %0, ptr nonnull %1, i32 noundef %i.agd, i32 noundef %.0.i1093, ptr noundef nonnull byval(%"struct.std::pair") align 8 %18, i32 %.sroa.0.0.copyload.i1098) ; 2 uses
  %.fca.0.extract113 = extractvalue { i64, i32 } %i.agf, 0
  %.fca.1.extract114 = extractvalue { i64, i32 } %i.agf, 1
  br label %.critedge699

.critedge696:                                     ; preds = %bb.kw, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1097, %.critedge692
  %i.agg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.agh = load i32, ptr %i.agg, align 8, !tbaa !253
  %.not.i.i1099 = icmp eq i32 %i.agh, 0
  %i.agi = and i32 %i.f, -2
  %or.cond55 = icmp eq i32 %i.agi, 190
  %or.cond697 = and i1 %or.cond55, %.not.i.i1099
  br i1 %or.cond697, label %_ZN4llvm15InstructionCostpLERKS0_.exit, label %bb.lb

_ZN4llvm15InstructionCostpLERKS0_.exit:           ; preds = %.critedge696
  %i.agj = call noundef ptr @_ZNK4llvm4Type18getWithNewBitWidthEj(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef 1) ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  %i.agk = call { i64, i32 } @_ZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 30, ptr noundef %i.d, i32 noundef %2, i64 0, i64 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef.62") align 8 %19, ptr noundef null) ; 2 uses
  %.fca.0.extract104 = extractvalue { i64, i32 } %i.agk, 0
  %.fca.1.extract105 = extractvalue { i64, i32 } %i.agk, 1
  %i.agl = icmp eq i32 %.fca.1.extract105, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %i.agm = call { i64, i32 } @_ZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 16, ptr noundef nonnull %i.d, i32 noundef %2, i64 0, i64 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef.62") align 8 %20, ptr noundef null) ; 2 uses
  %.fca.0.extract96 = extractvalue { i64, i32 } %i.agm, 0
  %.fca.1.extract97 = extractvalue { i64, i32 } %i.agm, 1
  %i.agn = icmp eq i32 %.fca.1.extract97, 1
  %.0.i1101 = call i64 @llvm.sadd.sat.i64(i64 %.fca.0.extract104, i64 %.fca.0.extract96)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %i.ago = call { i64, i32 } @_ZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 26, ptr noundef nonnull %i.d, i32 noundef %2, i64 0, i64 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef.62") align 8 %21, ptr noundef null) ; 2 uses
  %.fca.0.extract88 = extractvalue { i64, i32 } %i.ago, 0
  %.fca.1.extract89 = extractvalue { i64, i32 } %i.ago, 1
  %i.agp = icmp eq i32 %.fca.1.extract89, 1
  %.0.i1103 = call i64 @llvm.sadd.sat.i64(i64 %.0.i1101, i64 %.fca.0.extract88)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %i.agq = call { i64, i32 } @_ZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 27, ptr noundef nonnull %i.d, i32 noundef %2, i64 0, i64 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef.62") align 8 %22, ptr noundef null) ; 2 uses
  %.fca.0.extract80 = extractvalue { i64, i32 } %i.agq, 0
  %.fca.1.extract81 = extractvalue { i64, i32 } %i.agq, 1
  %i.agr = icmp eq i32 %.fca.1.extract81, 1
  %.0.i1105 = call i64 @llvm.sadd.sat.i64(i64 %.0.i1103, i64 %.fca.0.extract80)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  %i.ags = call { i64, i32 } @_ZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 29, ptr noundef nonnull %i.d, i32 noundef %2, i64 0, i64 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef.62") align 8 %23, ptr noundef null) ; 2 uses
  %.fca.0.extract72 = extractvalue { i64, i32 } %i.ags, 0
  %.fca.1.extract73 = extractvalue { i64, i32 } %i.ags, 1
  %i.agt = icmp eq i32 %.fca.1.extract73, 1
  %.0.i1107 = call i64 @llvm.sadd.sat.i64(i64 %.0.i1105, i64 %.fca.0.extract72)
  %i.agu = call { i64, i32 } @_ZNK4llvm10X86TTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 55, ptr noundef nonnull %i.d, ptr noundef %i.agj, i32 noundef 32, i32 noundef %2, i64 0, i64 0, ptr noundef null) ; 2 uses
  %.fca.0.extract64 = extractvalue { i64, i32 } %i.agu, 0
  %.fca.1.extract65 = extractvalue { i64, i32 } %i.agu, 1
  %i.agv = icmp eq i32 %.fca.1.extract65, 1
  %.0.i1109 = call i64 @llvm.sadd.sat.i64(i64 %.0.i1107, i64 %.fca.0.extract64)
  %i.agw = call { i64, i32 } @_ZNK4llvm10X86TTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 59, ptr noundef nonnull %i.d, ptr noundef %i.agj, i32 noundef 32, i32 noundef %2, i64 0, i64 0, ptr noundef null) ; 2 uses
  %.fca.0.extract56 = extractvalue { i64, i32 } %i.agw, 0
  %.fca.1.extract57 = extractvalue { i64, i32 } %i.agw, 1
  %i.agx = icmp eq i32 %.fca.1.extract57, 1
  %i.agy = select i1 %i.agx, i1 true, i1 %i.agv
  %i.agz = select i1 %i.agy, i1 true, i1 %i.agt
  %i.aha = select i1 %i.agz, i1 true, i1 %i.agr
  %i.ahb = select i1 %i.aha, i1 true, i1 %i.agp
  %i.ahc = select i1 %i.ahb, i1 true, i1 %i.agn
  %narrow1626 = select i1 %i.ahc, i1 true, i1 %i.agl
  %.sroa.44.8 = zext i1 %narrow1626 to i32
  %.0.i1111 = call i64 @llvm.sadd.sat.i64(i64 %.0.i1109, i64 %.fca.0.extract56)
  br label %.critedge699

bb.lb:                                            ; preds = %.critedge696, %bb.a
  %i.ahd = call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %2)
  br label %bb.lc

.critedge699:                                     ; preds = %bb.kk, %.thread.i.i39.i1816, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1076, %bb.kj, %bb.jy, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1057, %bb.jx, %bb.jm, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1038, %bb.jl, %bb.hb, %bb.ha, %bb.gz, %_ZNK4llvm5Value9hasOneUseEv.exit30.i1755, %bb.gu, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i1757, %bb.gf, %bb.ge, %bb.gd, %_ZNK4llvm5Value9hasOneUseEv.exit30.i1728, %bb.fy, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i1730, %bb.fh, %bb.fg, %bb.ff, %_ZNK4llvm5Value9hasOneUseEv.exit30.i1701, %bb.fa, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i1703, %bb.en, %bb.em, %bb.el, %_ZNK4llvm5Value9hasOneUseEv.exit30.i, %bb.eg, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i1677, %bb.dt, %bb.ds, %bb.dr, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i908, %bb.df, %bb.de, %bb.dd, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i868, %bb.cr, %bb.cq, %bb.cp, %_ZNK4llvm5Value9hasOneUseEv.exit30.i827, %bb.ck, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i829, %bb.bx, %bb.bw, %bb.bv, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i795, %bb.bi, %bb.bh, %bb.bg, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i, %bb.au, %bb.la, %bb.kv, %bb.kp, %bb.kd, %bb.jr, %bb.jf, %bb.iz, %bb.it, %bb.in, %bb.ii, %bb.hz, %bb.hp, %bb.hh, %_ZN4llvm15InstructionCostpLERKS0_.exit
  %.sroa.01409.0 = phi i64 [ %.sroa.019.1.lcssa.sink.i, %bb.au ], [ %.0.i1111, %_ZN4llvm15InstructionCostpLERKS0_.exit ], [ %.fca.0.extract113, %bb.la ], [ %.fca.0.extract122, %bb.kv ], [ %.fca.0.extract131, %bb.kp ], [ %49, %bb.jy ], [ %.fca.0.extract149, %bb.kd ], [ %36, %bb.jm ], [ %.fca.0.extract167, %bb.jr ], [ 9223372036854775807, %bb.gz ], [ %.fca.0.extract185, %bb.jf ], [ %.fca.0.extract194, %bb.iz ], [ %.fca.0.extract203, %bb.it ], [ %.fca.0.extract212, %bb.in ], [ %.fca.0.extract221, %bb.ii ], [ %.fca.0.extract230, %bb.hz ], [ %.fca.0.extract239, %bb.hp ], [ %.fca.0.extract248, %bb.hh ], [ 9223372036854775807, %bb.gd ], [ 9223372036854775807, %bb.ff ], [ 9223372036854775807, %bb.el ], [ %.0.i.i.i910, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i908 ], [ 9223372036854775807, %bb.ds ], [ 9223372036854775807, %bb.cp ], [ %i.ks, %bb.dt ], [ %62, %bb.kk ], [ %.0.i.i.i, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i ], [ 9223372036854775807, %bb.bh ], [ 9223372036854775807, %bb.bg ], [ %i.dr, %bb.bi ], [ %.0.i.i.i797, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i795 ], [ 9223372036854775807, %bb.bw ], [ 9223372036854775807, %bb.bv ], [ %i.fg, %bb.bx ], [ %.0.i.i.i831, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i829 ], [ 0, %_ZNK4llvm5Value9hasOneUseEv.exit30.i827 ], [ 0, %bb.ck ], [ %i.hr, %bb.cr ], [ 9223372036854775807, %bb.dr ], [ 9223372036854775807, %bb.cq ], [ %.0.i.i.i870, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i868 ], [ 9223372036854775807, %bb.de ], [ 9223372036854775807, %bb.dd ], [ %i.jf, %bb.df ], [ %.0.i.i.i1679, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i1677 ], [ 0, %_ZNK4llvm5Value9hasOneUseEv.exit30.i ], [ 0, %bb.eg ], [ %i.nd, %bb.en ], [ 9223372036854775807, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1076 ], [ 9223372036854775807, %bb.em ], [ %.0.i.i.i1705, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i1703 ], [ 0, %_ZNK4llvm5Value9hasOneUseEv.exit30.i1701 ], [ 0, %bb.fa ], [ %i.pp, %bb.fh ], [ -9223372036854775808, %.thread.i.i39.i1816 ], [ 9223372036854775807, %bb.fg ], [ %.0.i.i.i1732, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i1730 ], [ 0, %_ZNK4llvm5Value9hasOneUseEv.exit30.i1728 ], [ 0, %bb.fy ], [ %i.tk, %bb.gf ], [ 9223372036854775807, %bb.kj ], [ 9223372036854775807, %bb.ge ], [ %.0.i.i.i1759, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i1757 ], [ 0, %_ZNK4llvm5Value9hasOneUseEv.exit30.i1755 ], [ 0, %bb.gu ], [ %i.wz, %bb.hb ], [ 9223372036854775807, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1057 ], [ 9223372036854775807, %bb.ha ], [ 9223372036854775807, %bb.jl ], [ 9223372036854775807, %bb.jx ], [ 9223372036854775807, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1038 ]
  %.sroa.44.0 = phi i32 [ %.sink.i, %bb.au ], [ %.sroa.44.8, %_ZN4llvm15InstructionCostpLERKS0_.exit ], [ %.fca.1.extract114, %bb.la ], [ %.fca.1.extract123, %bb.kv ], [ %.fca.1.extract132, %bb.kp ], [ %.sink.i, %bb.jy ], [ %.fca.1.extract150, %bb.kd ], [ %.sink.i, %bb.jm ], [ %.fca.1.extract168, %bb.jr ], [ %.sink.i, %bb.gz ], [ %.fca.1.extract186, %bb.jf ], [ %.fca.1.extract195, %bb.iz ], [ %.fca.1.extract204, %bb.it ], [ %.fca.1.extract213, %bb.in ], [ %.fca.1.extract222, %bb.ii ], [ %.fca.1.extract231, %bb.hz ], [ %.fca.1.extract240, %bb.hp ], [ %.fca.1.extract249, %bb.hh ], [ %.sink.i, %bb.gd ], [ %.sink.i, %bb.ff ], [ %.sink.i, %bb.el ], [ %.sink.i, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i908 ], [ %.sink.i, %bb.ds ], [ %.sink.i, %bb.cp ], [ %.sink.i, %bb.dt ], [ %.sink.i, %bb.kk ], [ %.sink.i, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i ], [ %.sink.i, %bb.bh ], [ %.sink.i, %bb.bg ], [ %.sink.i, %bb.bi ], [ %.sink.i, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i795 ], [ %.sink.i, %bb.bw ], [ %.sink.i, %bb.bv ], [ %.sink.i, %bb.bx ], [ %.sink.i, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i829 ], [ 0, %_ZNK4llvm5Value9hasOneUseEv.exit30.i827 ], [ 0, %bb.ck ], [ %.sink.i, %bb.cr ], [ %.sink.i, %bb.dr ], [ %.sink.i, %bb.cq ], [ %.sink.i, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i868 ], [ %.sink.i, %bb.de ], [ %.sink.i, %bb.dd ], [ %.sink.i, %bb.df ], [ %.sink.i, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i1677 ], [ 0, %_ZNK4llvm5Value9hasOneUseEv.exit30.i ], [ 0, %bb.eg ], [ %.sink.i, %bb.en ], [ %.sink.i, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1076 ], [ %.sink.i, %bb.em ], [ %.sink.i, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i1703 ], [ 0, %_ZNK4llvm5Value9hasOneUseEv.exit30.i1701 ], [ 0, %bb.fa ], [ %.sink.i, %bb.fh ], [ %.sink.i, %.thread.i.i39.i1816 ], [ %.sink.i, %bb.fg ], [ %.sink.i, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i1730 ], [ 0, %_ZNK4llvm5Value9hasOneUseEv.exit30.i1728 ], [ 0, %bb.fy ], [ %.sink.i, %bb.gf ], [ %.sink.i, %bb.kj ], [ %.sink.i, %bb.ge ], [ %.sink.i, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i1757 ], [ 0, %_ZNK4llvm5Value9hasOneUseEv.exit30.i1755 ], [ 0, %bb.gu ], [ %.sink.i, %bb.hb ], [ %.sink.i, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1057 ], [ %.sink.i, %bb.ha ], [ %.sink.i, %bb.jl ], [ %.sink.i, %bb.jx ], [ %.sink.i, %_ZNK13CostKindCostsixEN4llvm19TargetTransformInfo14TargetCostKindE.exit1038 ]
  %i.ahe = insertvalue { i64, i32 } poison, i64 %.sroa.01409.0, 0
  %i.ahf = insertvalue { i64, i32 } %i.ahe, i32 %.sroa.44.0, 1
  br label %bb.lc

bb.lc:                                            ; preds = %.critedge699, %bb.lb, %bb.q
  %.fca.1.insert.merged = phi { i64, i32 } [ %i.ahd, %bb.lb ], [ %i.ahf, %.critedge699 ], [ %i.af, %bb.q ]
  ret { i64, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_8ap_matchINS_5APIntEEEEEbPT_RKT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !213     ; 2 uses
  %i.b = icmp eq i8 %i.a, 5
  br i1 %i.b, label %.critedge.thread.sink.split.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !231
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 254
  %spec.select.i.i = icmp ne i32 %i.g, 18
  %i.h = icmp ugt i8 %i.a, 22
  %or.cond.i = or i1 %i.h, %spec.select.i.i
  br i1 %or.cond.i, label %_ZNK4llvm12PatternMatch8ap_matchINS_5APIntEE5matchIKNS_5ValueEEEbPT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !625, !range !173, !noundef !174
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = tail call noundef ptr @_ZNK4llvm8Constant13getSplatValueEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %i.k) #23 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNK4llvm12PatternMatch8ap_matchINS_5APIntEE5matchIKNS_5ValueEEEbPT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.l, align 8, !tbaa !213
  %i.n = icmp eq i8 %i.m, 5
  br i1 %i.n, label %.critedge.thread.sink.split.i, label %_ZNK4llvm12PatternMatch8ap_matchINS_5APIntEE5matchIKNS_5ValueEEEbPT_.exit

.critedge.thread.sink.split.i:                    ; preds = %bb.d, %bb.a
  %.sink28.i = phi ptr [ %0, %bb.a ], [ %i.l, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sink28.i, i64 24
  %i.p = load ptr, ptr %1, align 8, !tbaa !626, !nonnull !174, !align !193
  store ptr %i.o, ptr %i.p, align 8, !tbaa !628
  br label %_ZNK4llvm12PatternMatch8ap_matchINS_5APIntEE5matchIKNS_5ValueEEEbPT_.exit

_ZNK4llvm12PatternMatch8ap_matchINS_5APIntEE5matchIKNS_5ValueEEEbPT_.exit: ; preds = %bb.b, %bb.c, %bb.d, %.critedge.thread.sink.split.i
  %.4.i = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.b ], [ true, %.critedge.thread.sink.split.i ]
  ret i1 %.4.i
}

declare noundef zeroext i1 @_ZNK4llvm8Constant14isAllOnesValueEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { i64, i32 } @"_ZZNK4llvm10X86TTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindEENK3$_0clEijSt4pairINS_15InstructionCostENS_3MVTEENS_13FastMathFlagsE"(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, i32 noundef range(i32 0, 65536) %0, i32 noundef %1, ptr nofree noundef readonly byval(%"struct.std::pair") align 8 captures(none) %2, i32 %3) unnamed_addr #9 align 2 {
bb.a:
  %.sroa.05.0.copyload = load i64, ptr %2, align 8, !tbaa !239 ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !241 ; 5 uses
  %i.a = add nsw i32 %0, -295
  %or.cond = icmp ult i32 %i.a, 2
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %3, 2
  %.not13 = icmp eq i32 %i.b, 0
  br i1 %.not13, label %.thread, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit

_ZN4llvmmlERKNS_15InstructionCostES2_.exit:       ; preds = %bb.b
  %i.c = add i64 %.sroa.05.0.copyload, -2305843009213693952
  %i.d = icmp ult i64 %i.c, -4611686018427387904
  %i.e = shl i64 %.sroa.05.0.copyload, 2
  %i.f = ashr exact i64 %i.e, 2
  %i.g = icmp sgt i64 %.sroa.05.0.copyload, 0
  %spec.select = select i1 %i.g, i64 9223372036854775807, i64 -9223372036854775808
  %.0.i.i = select i1 %i.d, i64 %spec.select, i64 %i.f
  br label %.critedge26

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i16, ptr %i.h, align 8, !tbaa !202
  %i.j = add i16 %i.i, -2
  %spec.select.i27 = icmp ult i16 %i.j, 10
  %i.k = icmp eq i32 %0, 210
  %or.cond4 = and i1 %i.k, %spec.select.i27
  br i1 %or.cond4, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 453
  %i.o = load i8, ptr %i.n, align 1, !tbaa !309, !range !173, !noundef !174
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 433
  %i.r = load i8, ptr %i.q, align 1, !tbaa !310, !range !173, !noundef !174
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %.8.val, align 8, !tbaa !311 ; 5 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !261  ; 3 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %.critedge, label %_ZNK4llvm5Value9hasOneUseEv.exit

_ZNK4llvm5Value9hasOneUseEv.exit:                 ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !262
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !263
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !213
  %i.ac = icmp eq i8 %i.ab, 64
  br i1 %i.ac, label %.critedge26, label %.critedge

.critedge:                                        ; preds = %bb.g, %_ZNK4llvm5Value9hasOneUseEv.exit, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = and i32 %i.ae, 1073741824
  %.not.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.ag = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !226
  br label %_ZNK4llvm4User10getOperandEj.exit

bb.j:                                             ; preds = %.critedge
  %i.ai = and i32 %i.ae, 268435455
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr inbounds [32 x i8], ptr %i.t, i64 %i.ak
  br label %_ZNK4llvm4User10getOperandEj.exit

_ZNK4llvm4User10getOperandEj.exit:                ; preds = %bb.i, %bb.j
  %i.am = phi ptr [ %i.ah, %bb.i ], [ %i.al, %bb.j ]
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !230 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !213
  %.not12 = icmp eq i8 %i.ao, 63
  br i1 %.not12, label %bb.k, label %.thread

bb.k:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !261 ; 2 uses
  %.not.i28 = icmp eq ptr %i.aq, null
  br i1 %.not.i28, label %.thread, label %_ZNK4llvm5Value9hasOneUseEv.exit30

_ZNK4llvm5Value9hasOneUseEv.exit30:               ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !262
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.critedge26, label %.thread

.thread:                                          ; preds = %bb.k, %bb.b, %_ZNK4llvm5Value9hasOneUseEv.exit30, %_ZNK4llvm4User10getOperandEj.exit, %bb.f, %bb.d, %bb.e, %bb.c
  %i.au = sext i32 %1 to i64
  %i.av = shl nsw i64 %i.au, 2
  %i.aw = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.05.0.copyload, i64 %i.av) ; 2 uses
  %i.ax = extractvalue { i64, i1 } %i.aw, 1
  br i1 %i.ax, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.thread
  %i.ay = icmp sgt i64 %.sroa.05.0.copyload, 0
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = icmp sgt i32 %1, 0
  br i1 %i.az, label %.critedge26, label %.thread.i.i39

bb.n:                                             ; preds = %bb.l
  %i.ba = icmp ne i64 %.sroa.05.0.copyload, 0
  %i.bb = icmp slt i32 %1, 0
  %or.cond.i.i38 = and i1 %i.bb, %i.ba
  br i1 %or.cond.i.i38, label %.critedge26, label %.thread.i.i39

.thread.i.i39:                                    ; preds = %bb.n, %bb.m
  br label %.critedge26

bb.o:                                             ; preds = %.thread
  %i.bc = extractvalue { i64, i1 } %i.aw, 0
  %i.bd = ashr exact i64 %i.bc, 2
  br label %.critedge26

.critedge26:                                      ; preds = %bb.o, %.thread.i.i39, %bb.n, %bb.m, %_ZNK4llvm5Value9hasOneUseEv.exit30, %bb.h, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit
  %.sroa.07.0 = phi i64 [ %.0.i.i, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit ], [ 0, %_ZNK4llvm5Value9hasOneUseEv.exit30 ], [ 0, %bb.h ], [ %i.bd, %bb.o ], [ -9223372036854775808, %.thread.i.i39 ], [ 9223372036854775807, %bb.n ], [ 9223372036854775807, %bb.m ]
  %.sroa.58.0 = phi i32 [ %.sroa.5.0.copyload, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit ], [ 0, %_ZNK4llvm5Value9hasOneUseEv.exit30 ], [ 0, %bb.h ], [ %.sroa.5.0.copyload, %bb.o ], [ %.sroa.5.0.copyload, %.thread.i.i39 ], [ %.sroa.5.0.copyload, %bb.n ], [ %.sroa.5.0.copyload, %bb.m ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.07.0, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.58.0, 1
  ret { i64, i32 } %.fca.1.insert
}

end_hunk_2
begin_hunk_3_@_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE30getTypeBasedIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE:bb.a
  store i64 %.0.i1.i, ptr %11, align 8, !tbaa !267
  br label %bb.jg

bb.db:                                            ; preds = %bb.c
  %i.ij = load ptr, ptr %i.o, align 8, !tbaa !251
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !188 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !194
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !195, !nonnull !174, !align !193
  %i.ip = tail call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.im, ptr noundef nonnull align 8 dereferenceable(912) %i.io, ptr noundef %i.n, i1 noundef zeroext true) ; 2 uses
  %i.iq = extractvalue { i16, ptr } %i.ip, 0
  %i.ir = extractvalue { i16, ptr } %i.ip, 1
  %i.is = load ptr, ptr %i.il, align 8, !tbaa !194
  %i.it = load ptr, ptr %i.in, align 8, !tbaa !195, !nonnull !174, !align !193
  %i.iu = tail call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.is, ptr noundef nonnull align 8 dereferenceable(912) %i.it, ptr noundef %i.ik, i1 noundef zeroext true) ; 2 uses
  %i.iv = extractvalue { i16, ptr } %i.iu, 0
  %i.iw = extractvalue { i16, ptr } %i.iu, 1
  %i.ix = load ptr, ptr %i.il, align 8, !tbaa !194 ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !284
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 104
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = tail call noundef zeroext i1 %i.ja(ptr noundef nonnull align 8 dereferenceable(518435) %i.ix, i16 %i.iq, ptr %i.ir, i16 %i.iv, ptr %i.iw) #23
  br i1 %i.jb, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  call void @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %32, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %32, i64 16, i1 false), !tbaa.struct !969
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br label %bb.jg

bb.dd:                                            ; preds = %bb.db
  %i.jc = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !186
  %i.je = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.jf = load i32, ptr %i.je, align 8
  %i.jg = and i32 %i.jf, 255
  %i.jh = icmp eq i32 %i.jg, 19
  %.sroa.2.0.insert.shift.i.i = select i1 %i.jh, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.jd to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.ji = tail call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef %i.ik, i64 %.sroa.0.0.insert.insert.i.i) #23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  store i64 0, ptr %34, align 8
  %.sroa.2727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i32 1, ptr %.sroa.2727.0..sroa_idx, align 8
  call void @_ZN4llvm23IntrinsicCostAttributesC1EjPNS_4TypeENS_8ArrayRefIS2_EENS_13FastMathFlagsEPKNS_13IntrinsicInstENS_15InstructionCostE(ptr noundef nonnull align 8 dereferenceable(144) %33, i32 noundef 386, ptr noundef %i.ji, ptr null, i64 0, i32 %.sroa.0.0.copyload.i, ptr noundef null, ptr noundef nonnull byval(%"class.llvm::InstructionCost") align 8 %34) #23
  %i.jj = call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE30getTypeBasedIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(144) %33, i32 noundef %2) ; 2 uses
  %.fca.0.extract720 = extractvalue { i64, i32 } %i.jj, 0
  %.fca.1.extract721 = extractvalue { i64, i32 } %i.jj, 1
  store i64 %.fca.0.extract720, ptr %11, align 8
  %.sroa.2723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i32 %.fca.1.extract721, ptr %.sroa.2723.0..sroa_idx, align 8
  %i.jk = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.jl = call { i64, i32 } @_ZNK4llvm10X86TTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 55, ptr noundef %i.ji, ptr noundef %i.jk, i32 noundef 36, i32 noundef %2, i64 0, i64 0, ptr noundef null) ; 2 uses
  %.fca.0.extract712 = extractvalue { i64, i32 } %i.jl, 0
  %.fca.1.extract713 = extractvalue { i64, i32 } %i.jl, 1
  %i.jm = icmp eq i32 %.fca.1.extract713, 1
  br i1 %i.jm, label %bb.de, label %_ZN4llvm15InstructionCostpLERKS0_.exit1241

bb.de:                                            ; preds = %bb.dd
  store i32 1, ptr %.sroa.2723.0..sroa_idx, align 8, !tbaa !266
  br label %_ZN4llvm15InstructionCostpLERKS0_.exit1241

_ZN4llvm15InstructionCostpLERKS0_.exit1241:       ; preds = %bb.dd, %bb.de
  %i.jn = load i64, ptr %11, align 8, !tbaa !267
  %.0.i1240 = call i64 @llvm.sadd.sat.i64(i64 %i.jn, i64 %.fca.0.extract712)
  store i64 %.0.i1240, ptr %11, align 8, !tbaa !267
  call void @_ZN4llvm23IntrinsicCostAttributesD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  br label %bb.jg

bb.df:                                            ; preds = %bb.c
  %i.jo = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 0, ptr %i.jo, align 8, !tbaa !266
  store i64 16, ptr %11, align 8, !tbaa !267
  br label %bb.jg

bb.dg:                                            ; preds = %bb.c
  br label %bb.eo

bb.dh:                                            ; preds = %bb.c
  br label %bb.eo

bb.di:                                            ; preds = %bb.c
  br label %bb.eo

bb.dj:                                            ; preds = %bb.c
  br label %bb.eo

bb.dk:                                            ; preds = %bb.c
  br label %bb.eo

bb.dl:                                            ; preds = %bb.c
  br label %bb.eo

bb.dm:                                            ; preds = %bb.c
  br label %bb.eo

bb.dn:                                            ; preds = %bb.c
  br label %bb.eo

bb.do:                                            ; preds = %bb.c
  br label %bb.eo

bb.dp:                                            ; preds = %bb.c
  br label %bb.eo

bb.dq:                                            ; preds = %bb.c
  br label %bb.eo

bb.dr:                                            ; preds = %bb.c
  br label %bb.eo

bb.ds:                                            ; preds = %bb.c
  br label %bb.eo

bb.dt:                                            ; preds = %bb.c
  br label %bb.eo

bb.du:                                            ; preds = %bb.c
  br label %bb.eo

bb.dv:                                            ; preds = %bb.c
  br label %bb.eo

bb.dw:                                            ; preds = %bb.c
  br label %bb.eo

bb.dx:                                            ; preds = %bb.c
  br label %bb.eo

bb.dy:                                            ; preds = %bb.c
  br label %bb.eo

bb.dz:                                            ; preds = %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  %i.jp = load ptr, ptr %i.o, align 8, !tbaa !251
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !188
  call void @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %35, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.jq)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  %i.jr = load ptr, ptr %i.a, align 8, !tbaa !188
  call void @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %36, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.jr)
  %i.js = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !266
  %i.ju = icmp eq i32 %i.jt, 0
  %i.jv = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.jw = load i32, ptr %i.jv, align 8
  %i.jx = icmp eq i32 %i.jw, 0
  %or.cond2259 = select i1 %i.ju, i1 %i.jx, i1 false
  br i1 %or.cond2259, label %.thread2173, label %bb.ea

.thread2173:                                      ; preds = %bb.dz
  %i.jy = icmp eq i32 %i.l, 185
  %i.jz = select i1 %i.jy, i64 242, i64 243
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !188
  br label %bb.eo

bb.ea:                                            ; preds = %bb.dz
  store i64 0, ptr %11, align 8
  %.sroa.2711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 1, ptr %.sroa.2711.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  br label %bb.jg

bb.eb:                                            ; preds = %bb.c
  br label %bb.eo

bb.ec:                                            ; preds = %bb.c
  br label %bb.eo

bb.ed:                                            ; preds = %bb.c
  br label %bb.eo

bb.ee:                                            ; preds = %bb.c
  br label %bb.eo

bb.ef:                                            ; preds = %bb.c
  br label %bb.eo

bb.eg:                                            ; preds = %bb.c
  br label %bb.eo

bb.eh:                                            ; preds = %bb.c
  br label %bb.eo

bb.ei:                                            ; preds = %bb.c
  br label %bb.eo

switch.lookup:                                    ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %switch.tableidx = add nsw i32 %i.l, -243       ; 2 uses
  %i.ka = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE30getTypeBasedIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE, i64 %i.ka
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.kb = zext nneg i32 %switch.tableidx to i64
  %switch.gep2468 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE30getTypeBasedIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE.63, i64 %i.kb
  %switch.load2469 = load i16, ptr %switch.gep2468, align 2
  %switch.ext2470 = zext i16 %switch.load2469 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  %i.kc = tail call { i64, i32 } @_ZNK4llvm10X86TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %switch.ext, ptr noundef %i.n, i32 noundef %2, i64 0, i64 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef.62") align 8 %37, ptr noundef null) ; 2 uses
  %.fca.0.extract699 = extractvalue { i64, i32 } %i.kc, 0
  %.fca.1.extract700 = extractvalue { i64, i32 } %i.kc, 1
  store i64 %.fca.0.extract699, ptr %11, align 8
  %.sroa.2702.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i32 %.fca.1.extract700, ptr %.sroa.2702.0..sroa_idx, align 8
  %i.kd = load ptr, ptr %i.a, align 8, !tbaa !188 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !192, !noalias !970, !nonnull !174, !align !193
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !194, !noalias !970
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !195, !noalias !970, !nonnull !174, !align !193
  %i.kj = tail call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.kg, ptr noundef nonnull align 8 dereferenceable(912) %i.ki, ptr noundef nonnull %i.kd, i1 noundef zeroext false), !noalias !970 ; 2 uses
  %i.kk = extractvalue { i16, ptr } %i.kj, 0
  %i.kl = extractvalue { i16, ptr } %i.kj, 1
  %i.km = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.ej

bb.ej:                                            ; preds = %bb.el, %switch.lookup
  %.sroa.025.0.i = phi i16 [ %i.kk, %switch.lookup ], [ %.sroa.0.0.copyload.i1244, %bb.el ] ; 6 uses
  %.sroa.1027.0.i = phi ptr [ %i.kl, %switch.lookup ], [ %.sroa.24.0.copyload.i, %bb.el ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !970
  %i.kn = load ptr, ptr %i.kf, align 8, !tbaa !194, !noalias !970
  call void @_ZNK4llvm18TargetLoweringBase17getTypeConversionERNS_11LLVMContextENS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.372") align 8 %8, ptr noundef nonnull align 8 dereferenceable(518435) %i.kn, ptr noundef nonnull align 8 dereferenceable(8) %i.ke, i16 %.sroa.025.0.i, ptr %.sroa.1027.0.i) #23, !noalias !970
  %i.ko = load i8, ptr %8, align 8, !tbaa !201, !noalias !970
  switch i8 %i.ko, label %_ZN4llvm15InstructionCostmLEl.exit.i [
    i8 9, label %bb.ek
    i8 0, label %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  ]

bb.ek:                                            ; preds = %bb.ej
  %.not.i1242 = icmp eq i16 %.sroa.025.0.i, 0
  br i1 %.not.i1242, label %.thread2180, label %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit

_ZN4llvm15InstructionCostmLEl.exit.i:             ; preds = %bb.ej
  %.sroa.0.0.copyload.i1244 = load i16, ptr %i.km, align 8, !tbaa !202, !noalias !970 ; 2 uses
  %.sroa.24.0.copyload.i = load ptr, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !188, !noalias !970 ; 2 uses
  %.not.i.i.i = icmp eq i16 %.sroa.025.0.i, %.sroa.0.0.copyload.i1244
  %i.kp = icmp eq ptr %.sroa.1027.0.i, %.sroa.24.0.copyload.i
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.kp, i1 false
  br i1 %.not4.i.i, label %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit, label %bb.el

bb.el:                                            ; preds = %_ZN4llvm15InstructionCostmLEl.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !970
  br label %bb.ej, !llvm.loop !0

.thread2180:                                      ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !970
  %i.kq = load ptr, ptr %i.kf, align 8, !tbaa !194
  br label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i

_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit: ; preds = %bb.ej, %_ZN4llvm15InstructionCostmLEl.exit.i, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !970
  %i.kr = load ptr, ptr %i.kf, align 8, !tbaa !194 ; 2 uses
  switch i16 %.sroa.025.0.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i [
    i16 1, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit
    i16 0, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread
  ]

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i: ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit, %.thread2180
  %.sroa.025.0.lcssa38.sink.i21782183 = phi i16 [ 8, %.thread2180 ], [ %.sroa.025.0.i, %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit ] ; 2 uses
  %i.ks = phi ptr [ %i.kq, %.thread2180 ], [ %i.kr, %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit ] ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 112
  %i.ku = zext i16 %.sroa.025.0.lcssa38.sink.i21782183 to i64
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.ku
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !247
  %.not.i1245 = icmp eq ptr %i.kw, null
  br i1 %.not.i1245, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit: ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i
  %i.kx = phi ptr [ %i.ks, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ], [ %i.kr, %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit ]
  %.sroa.025.0.lcssa38.sink.i2179 = phi i16 [ %.sroa.025.0.lcssa38.sink.i21782183, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ], [ %.sroa.025.0.i, %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit ]
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 6184
  %i.kz = zext i16 %.sroa.025.0.lcssa38.sink.i2179 to i64
  %i.la = getelementptr inbounds nuw [537 x i8], ptr %i.ky, i64 %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 %switch.ext2470
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !249
  %i.ld = and i8 %i.lc, -5
  %spec.select.i1247 = icmp eq i8 %i.ld, 0
  br i1 %spec.select.i1247, label %bb.jg, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread: ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit
  %i.le = load ptr, ptr %i.a, align 8, !tbaa !188 ; 3 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !192, !nonnull !174, !align !193
  %i.lg = call noundef ptr @_ZN4llvm4Type9getInt1TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.lf) #23 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.li = load i32, ptr %i.lh, align 8            ; 2 uses
  %i.lj = and i32 %i.li, 254
  %spec.select.i.i.i.i.i.i.i.i.not.i = icmp eq i32 %i.lj, 18
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i, label %bb.em, label %_ZNK4llvm4Type14getWithNewTypeEPS0_.exit

bb.em:                                            ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread
  %i.lk = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !186
  %i.lm = and i32 %i.li, 19
  %i.ln = icmp eq i32 %i.lm, 19
  %.sroa.2.0.insert.shift.i.i.i = select i1 %i.ln, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.ll to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.lo = call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef %i.lg, i64 %.sroa.0.0.insert.insert.i.i.i) #23
  br label %_ZNK4llvm4Type14getWithNewTypeEPS0_.exit

_ZNK4llvm4Type14getWithNewTypeEPS0_.exit:         ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread, %bb.em
  %spec.select.i = phi ptr [ %i.lo, %bb.em ], [ %i.lg, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread ]
  %i.lp = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.lq = call { i64, i32 } @_ZNK4llvm10X86TTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 59, ptr noundef %i.lp, ptr noundef %spec.select.i, i32 noundef 42, i32 noundef %2, i64 0, i64 4294967298, ptr noundef null) ; 2 uses
  %.fca.0.extract688 = extractvalue { i64, i32 } %i.lq, 0
  %.fca.1.extract689 = extractvalue { i64, i32 } %i.lq, 1
  %i.lr = icmp eq i32 %.fca.1.extract689, 1
  br i1 %i.lr, label %bb.en, label %_ZN4llvm15InstructionCostpLERKS0_.exit1249

bb.en:                                            ; preds = %_ZNK4llvm4Type14getWithNewTypeEPS0_.exit
  store i32 1, ptr %.sroa.2702.0..sroa_idx, align 8, !tbaa !266
  br label %_ZN4llvm15InstructionCostpLERKS0_.exit1249

_ZN4llvm15InstructionCostpLERKS0_.exit1249:       ; preds = %_ZNK4llvm4Type14getWithNewTypeEPS0_.exit, %bb.en
  %i.ls = load i64, ptr %11, align 8, !tbaa !267
  %.0.i1248 = call i64 @llvm.sadd.sat.i64(i64 %i.ls, i64 %.fca.0.extract688)
  store i64 %.0.i1248, ptr %11, align 8, !tbaa !267
  br label %bb.jg

bb.eo:                                            ; preds = %.thread2173, %bb.c, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.lt = phi ptr [ %i.n, %bb.ei ], [ %i.n, %bb.aa ], [ %i.n, %bb.ab ], [ %i.n, %bb.ac ], [ %i.n, %bb.ad ], [ %i.n, %bb.ae ], [ %i.n, %bb.af ], [ %i.n, %bb.ag ], [ %i.n, %bb.ah ], [ %i.n, %bb.ai ], [ %i.n, %bb.aj ], [ %i.n, %bb.ak ], [ %i.n, %bb.al ], [ %i.n, %bb.am ], [ %i.n, %bb.an ], [ %i.n, %bb.ao ], [ %i.n, %bb.ap ], [ %i.n, %bb.aq ], [ %i.n, %bb.ar ], [ %i.n, %bb.as ], [ %i.n, %bb.at ], [ %i.n, %bb.au ], [ %i.n, %bb.av ], [ %i.n, %bb.aw ], [ %i.n, %bb.ax ], [ %i.n, %bb.ay ], [ %i.n, %bb.az ], [ %i.n, %bb.ba ], [ %i.n, %bb.bb ], [ %i.n, %bb.bc ], [ %i.n, %bb.bd ], [ %i.n, %bb.be ], [ %i.n, %bb.bf ], [ %i.n, %bb.bg ], [ %i.n, %bb.bh ], [ %i.n, %bb.bi ], [ %i.n, %bb.bj ], [ %i.n, %bb.bk ], [ %i.n, %bb.bl ], [ %i.n, %bb.bm ], [ %i.n, %bb.bn ], [ %i.n, %bb.bo ], [ %i.n, %bb.bp ], [ %i.n, %bb.c ], [ %i.n, %bb.bq ], [ %i.n, %bb.dg ], [ %i.n, %bb.dh ], [ %i.n, %bb.di ], [ %i.n, %bb.dj ], [ %i.n, %bb.dk ], [ %i.n, %bb.dl ], [ %i.n, %bb.dm ], [ %i.n, %bb.dn ], [ %i.n, %bb.do ], [ %i.n, %bb.dp ], [ %i.n, %bb.dq ], [ %i.n, %bb.dr ], [ %i.n, %bb.ds ], [ %i.n, %bb.dt ], [ %i.n, %bb.du ], [ %i.n, %bb.dv ], [ %i.n, %bb.dw ], [ %i.n, %bb.dx ], [ %i.n, %bb.dy ], [ %.pre, %.thread2173 ], [ %i.n, %bb.eb ], [ %i.n, %bb.ec ], [ %i.n, %bb.ed ], [ %i.n, %bb.ee ], [ %i.n, %bb.ef ], [ %i.n, %bb.eg ], [ %i.n, %bb.eh ] ; 4 uses
  %.2 = phi i64 [ 205, %bb.ei ], [ 264, %bb.aa ], [ 265, %bb.ab ], [ 305, %bb.ac ], [ 306, %bb.ad ], [ 307, %bb.ae ], [ 266, %bb.af ], [ 267, %bb.ag ], [ 268, %bb.ah ], [ 269, %bb.ai ], [ 276, %bb.aj ], [ 270, %bb.ak ], [ 271, %bb.al ], [ 272, %bb.am ], [ 281, %bb.an ], [ 282, %bb.ao ], [ 283, %bb.ap ], [ 278, %bb.aq ], [ 280, %bb.ar ], [ 279, %bb.as ], [ 275, %bb.at ], [ 261, %bb.au ], [ 160, %bb.av ], [ 295, %bb.aw ], [ 296, %bb.ax ], [ 299, %bb.ay ], [ 300, %bb.az ], [ 301, %bb.ba ], [ 302, %bb.bb ], [ 158, %bb.bc ], [ 290, %bb.bd ], [ 284, %bb.be ], [ 285, %bb.bf ], [ 287, %bb.bg ], [ 286, %bb.bh ], [ 293, %bb.bi ], [ 294, %bb.bj ], [ 288, %bb.bk ], [ 289, %bb.bl ], [ 291, %bb.bm ], [ 292, %bb.bn ], [ 273, %bb.bo ], [ 155, %bb.bp ], [ 262, %bb.c ], [ 109, %bb.bq ], [ 196, %bb.dg ], [ 203, %bb.dh ], [ 204, %bb.di ], [ 188, %bb.dj ], [ 187, %bb.dk ], [ 190, %bb.dl ], [ 189, %bb.dm ], [ 85, %bb.dn ], [ 87, %bb.do ], [ 86, %bb.dp ], [ 88, %bb.dq ], [ 91, %bb.dr ], [ 92, %bb.ds ], [ 79, %bb.dt ], [ 81, %bb.du ], [ 80, %bb.dv ], [ 82, %bb.dw ], [ 83, %bb.dx ], [ 84, %bb.dy ], [ %i.jz, %.thread2173 ], [ 213, %bb.eb ], [ 212, %bb.ec ], [ 211, %bb.ed ], [ 210, %bb.ee ], [ 214, %bb.ef ], [ 192, %bb.eg ], [ 191, %bb.eh ] ; 2 uses
  %.01156 = phi i64 [ %i.ae, %bb.ei ], [ %i.ae, %bb.aa ], [ %i.ae, %bb.ab ], [ %i.ae, %bb.ac ], [ %i.ae, %bb.ad ], [ %i.ae, %bb.ae ], [ %i.ae, %bb.af ], [ %i.ae, %bb.ag ], [ %i.ae, %bb.ah ], [ %i.ae, %bb.ai ], [ %i.ae, %bb.aj ], [ %i.ae, %bb.ak ], [ %i.ae, %bb.al ], [ %i.ae, %bb.am ], [ %i.ae, %bb.an ], [ %i.ae, %bb.ao ], [ %i.ae, %bb.ap ], [ %i.ae, %bb.aq ], [ %i.ae, %bb.ar ], [ %i.ae, %bb.as ], [ %i.ae, %bb.at ], [ %i.ae, %bb.au ], [ %i.ae, %bb.av ], [ %i.ae, %bb.aw ], [ %i.ae, %bb.ax ], [ %i.ae, %bb.ay ], [ %i.ae, %bb.az ], [ %i.ae, %bb.ba ], [ %i.ae, %bb.bb ], [ %i.ae, %bb.bc ], [ %i.ae, %bb.bd ], [ %i.ae, %bb.be ], [ %i.ae, %bb.bf ], [ %i.ae, %bb.bg ], [ %i.ae, %bb.bh ], [ %i.ae, %bb.bi ], [ %i.ae, %bb.bj ], [ %i.ae, %bb.bk ], [ %i.ae, %bb.bl ], [ %i.ae, %bb.bm ], [ %i.ae, %bb.bn ], [ %i.ae, %bb.bo ], [ %i.ae, %bb.bp ], [ %i.ae, %bb.c ], [ %i.ae, %bb.bq ], [ %i.ae, %bb.dg ], [ %i.ae, %bb.dh ], [ %i.ae, %bb.di ], [ %i.ae, %bb.dj ], [ %i.ae, %bb.dk ], [ %i.ae, %bb.dl ], [ %i.ae, %bb.dm ], [ %i.ae, %bb.dn ], [ %i.ae, %bb.do ], [ %i.ae, %bb.dp ], [ %i.ae, %bb.dq ], [ %i.ae, %bb.dr ], [ %i.ae, %bb.ds ], [ %i.ae, %bb.dt ], [ %i.ae, %bb.du ], [ %i.ae, %bb.dv ], [ %i.ae, %bb.dw ], [ %i.ae, %bb.dx ], [ %i.ae, %bb.dy ], [ %i.ae, %.thread2173 ], [ 4, %bb.eb ], [ %i.ae, %bb.ec ], [ %i.ae, %bb.ed ], [ %i.ae, %bb.ee ], [ %i.ae, %bb.ef ], [ %i.ae, %bb.eg ], [ %i.ae, %bb.eh ]
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lv = load i32, ptr %i.lu, align 8
  %i.lw = and i32 %i.lv, 255
  %i.lx = icmp ne i32 %i.lw, 16
  %.not11752282 = icmp eq ptr %i.lt, null
  %.not1175 = or i1 %.not11752282, %i.lx
  br i1 %.not1175, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !187
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !188
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eo, %bb.ep
  %i.mb = phi ptr [ %i.ma, %bb.ep ], [ %i.lt, %bb.eo ] ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !192, !noalias !971, !nonnull !174, !align !193
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !194, !noalias !971
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !195, !noalias !971, !nonnull !174, !align !193
  %i.mh = call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.me, ptr noundef nonnull align 8 dereferenceable(912) %i.mg, ptr noundef nonnull %i.mb, i1 noundef zeroext false), !noalias !971 ; 2 uses
  %i.mi = extractvalue { i16, ptr } %i.mh, 0
  %i.mj = extractvalue { i16, ptr } %i.mh, 1
  %i.mk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.24.0..sroa_idx.i1251 = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.er

bb.er:                                            ; preds = %bb.ex, %bb.eq
  %.sroa.019.0.i1252 = phi i64 [ 4, %bb.eq ], [ %.sroa.019.1.i1263, %bb.ex ] ; 5 uses
  %.sroa.025.0.i1253 = phi i16 [ %i.mi, %bb.eq ], [ %.sroa.0.0.copyload.i1264, %bb.ex ] ; 7 uses
  %.sroa.1027.0.i1254 = phi ptr [ %i.mj, %bb.eq ], [ %.sroa.24.0.copyload.i1265, %bb.ex ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !971
  %i.ml = load ptr, ptr %i.md, align 8, !tbaa !194, !noalias !971
  call void @_ZNK4llvm18TargetLoweringBase17getTypeConversionERNS_11LLVMContextENS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.372") align 8 %7, ptr noundef nonnull align 8 dereferenceable(518435) %i.ml, ptr noundef nonnull align 8 dereferenceable(8) %i.mc, i16 %.sroa.025.0.i1253, ptr %.sroa.1027.0.i1254) #23, !noalias !971
  %i.mm = load i8, ptr %7, align 8, !tbaa !201, !noalias !971 ; 2 uses
  switch i8 %i.mm, label %bb.et [
    i8 9, label %bb.es
    i8 0, label %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit1269
  ]

bb.es:                                            ; preds = %bb.er
  %.not.i1259 = icmp eq i16 %.sroa.025.0.i1253, 0
  br i1 %.not.i1259, label %.thread2202, label %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit1269

bb.et:                                            ; preds = %bb.er
  %i.mn = and i8 %i.mm, -5
  %or.cond.i1261 = icmp eq i8 %i.mn, 2
  br i1 %or.cond.i1261, label %bb.eu, label %_ZN4llvm15InstructionCostmLEl.exit.i1262

bb.eu:                                            ; preds = %bb.et
  %i.mo = add i64 %.sroa.019.0.i1252, -1152921504606846976
  %i.mp = icmp ult i64 %i.mo, -2305843009213693952
  br i1 %i.mp, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.mq = icmp sgt i64 %.sroa.019.0.i1252, 0
  %spec.select28.i1268 = select i1 %i.mq, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN4llvm15InstructionCostmLEl.exit.i1262

bb.ew:                                            ; preds = %bb.eu
  %i.mr = shl nsw i64 %.sroa.019.0.i1252, 1
  br label %_ZN4llvm15InstructionCostmLEl.exit.i1262

_ZN4llvm15InstructionCostmLEl.exit.i1262:         ; preds = %bb.ew, %bb.ev, %bb.et
  %.sroa.019.1.i1263 = phi i64 [ %.sroa.019.0.i1252, %bb.et ], [ %i.mr, %bb.ew ], [ %spec.select28.i1268, %bb.ev ] ; 2 uses
  %.sroa.0.0.copyload.i1264 = load i16, ptr %i.mk, align 8, !tbaa !202, !noalias !971 ; 2 uses
  %.sroa.24.0.copyload.i1265 = load ptr, ptr %.sroa.24.0..sroa_idx.i1251, align 8, !tbaa !188, !noalias !971 ; 2 uses
  %.not.i.i.i1266 = icmp eq i16 %.sroa.025.0.i1253, %.sroa.0.0.copyload.i1264
  %i.ms = icmp eq ptr %.sroa.1027.0.i1254, %.sroa.24.0.copyload.i1265
  %.not4.i.i1267 = select i1 %.not.i.i.i1266, i1 %i.ms, i1 false
end_hunk_3
