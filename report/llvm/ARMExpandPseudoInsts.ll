Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMExpandPseudoInsts?download=true
inline.NumInlined: 3296
inline.NumDeleted: 824
loop-unroll.NumCompletelyUnrolled: 101
loop-unroll.NumUnrolled: 101
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::cl::opt" = type { %"class.llvm::cl::Option", %"class.llvm::cl::opt_storage", %"class.llvm::cl::parser", %"class.std::function" }
%"class.llvm::cl::Option" = type { ptr, i16, i16, i16, i16, %"class.llvm::StringRef", %"class.llvm::StringRef", %"class.llvm::StringRef", %"class.llvm::SmallVector", %"class.llvm::SmallPtrSet" }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [8 x i8] }
%"class.llvm::SmallPtrSet" = type { %"class.llvm::SmallPtrSetImpl.base", [1 x ptr] }
%"class.llvm::SmallPtrSetImpl.base" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallPtrSetImplBase.base" = type <{ ptr, i32, i32, i8 }>
%"class.llvm::cl::opt_storage" = type { i8, [7 x i8], %"struct.llvm::cl::OptionValue" }
%"struct.llvm::cl::OptionValue" = type { %"struct.llvm::cl::OptionValueBase.base", [6 x i8] }
%"struct.llvm::cl::OptionValueBase.base" = type { %"class.llvm::cl::OptionValueCopy.base" }
%"class.llvm::cl::OptionValueCopy.base" = type <{ %"struct.llvm::cl::GenericOptionValue", i8, i8 }>
%"struct.llvm::cl::GenericOptionValue" = type { ptr }
%"class.llvm::cl::parser" = type { %"class.llvm::cl::basic_parser" }
%"class.llvm::cl::basic_parser" = type { %"class.llvm::cl::basic_parser_impl" }
%"class.llvm::cl::basic_parser_impl" = type { ptr }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"struct.std::once_flag" = type { i32 }
%"struct.llvm::MCRegisterClassStorage" = type { [137 x %"class.llvm::MCRegisterClass"], [1345 x i16], [2692 x i8], [3020 x i32], [94 x i16], [755 x i32] }
%"class.llvm::MCRegisterClass" = type <{ i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, [3 x i8], i32, i32, [4 x i8], %"struct.llvm::LaneBitmask", i8, i8, i8, i8, i8, i8, [2 x i8], i32, i16, [2 x i8] }>
%"struct.llvm::LaneBitmask" = type { i64 }
%"struct.(anonymous namespace)::NEONLdStTableEntry" = type { i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%class.anon = type { ptr, ptr }
%"class.std::reference_wrapper" = type { ptr }
%"class.llvm::MachineInstrBundleIterator" = type { %"class.llvm::ilist_iterator.206" }
%"class.llvm::ilist_iterator.206" = type { ptr }
%"class.llvm::MachineOperand" = type { i32, %union.anon.210, ptr, %"union.llvm::MachineOperand::ContentsUnion" }
%union.anon.210 = type { i32 }
%"union.llvm::MachineOperand::ContentsUnion" = type { %"class.llvm::ArrayRef.211" }
%"class.llvm::ArrayRef.211" = type { ptr, i64 }
%"class.llvm::MIMetadata" = type { %"class.llvm::DebugLoc", ptr, ptr, ptr }
%"class.llvm::DebugLoc" = type { ptr }
%"class.llvm::MachineInstrBuilder" = type { ptr, ptr }
%"struct.std::array.231" = type { [2 x %"class.llvm::MachineOperand"] }
%"class.llvm::SmallVector.331" = type <{ %"class.llvm::SmallVectorImpl.191", %"struct.llvm::SmallVectorStorage.332", [4 x i8] }>
%"class.llvm::SmallVectorImpl.191" = type { %"class.llvm::SmallVectorTemplateBase.192" }
%"class.llvm::SmallVectorTemplateBase.192" = type { %"class.llvm::SmallVectorTemplateCommon.193" }
%"class.llvm::SmallVectorTemplateCommon.193" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.332" = type { [20 x i8] }
%"class.llvm::LivePhysRegs" = type { ptr, %"class.llvm::SparseSet" }
%"class.llvm::SparseSet" = type <{ %"class.llvm::SmallVector.333", %"class.std::unique_ptr.338", i32, [4 x i8] }>
%"class.llvm::SmallVector.333" = type { %"class.llvm::SmallVectorImpl.334", %"struct.llvm::SmallVectorStorage.337" }
%"class.llvm::SmallVectorImpl.334" = type { %"class.llvm::SmallVectorTemplateBase.335" }
%"class.llvm::SmallVectorTemplateBase.335" = type { %"class.llvm::SmallVectorTemplateCommon.336" }
%"class.llvm::SmallVectorTemplateCommon.336" = type { %"class.llvm::SmallVectorBase.242" }
%"class.llvm::SmallVectorBase.242" = type { ptr, i64, i64 }
%"struct.llvm::SmallVectorStorage.337" = type { [16 x i8] }
%"class.std::unique_ptr.338" = type { %"struct.std::__uniq_ptr_data.339" }
%"struct.std::__uniq_ptr_data.339" = type { %"class.std::__uniq_ptr_impl.340" }
%"class.std::__uniq_ptr_impl.340" = type { %"class.std::tuple.341" }
%"class.std::tuple.341" = type { %"struct.std::_Tuple_impl.342" }
%"struct.std::_Tuple_impl.342" = type { %"struct.std::_Head_base.345" }
%"struct.std::_Head_base.345" = type { ptr }
%"class.llvm::SmallVector.223" = type { %"class.llvm::SmallVectorImpl.191", %"struct.llvm::SmallVectorStorage.224" }
%"struct.llvm::SmallVectorStorage.224" = type { [64 x i8] }
%"class.llvm::MIBundleBuilder" = type { ptr, %"class.llvm::ilist_iterator.206", %"class.llvm::ilist_iterator.206" }
%"class.llvm::BitVector" = type <{ %"class.llvm::SmallVector.392", i32, [4 x i8] }>
%"class.llvm::SmallVector.392" = type { %"class.llvm::SmallVectorImpl.393", %"struct.llvm::SmallVectorStorage.396" }
%"class.llvm::SmallVectorImpl.393" = type { %"class.llvm::SmallVectorTemplateBase.394" }
%"class.llvm::SmallVectorTemplateBase.394" = type { %"class.llvm::SmallVectorTemplateCommon.395" }
%"class.llvm::SmallVectorTemplateCommon.395" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.396" = type { [48 x i8] }
%"class.llvm::SmallVector.398" = type { %"class.llvm::SmallVectorImpl.191", %"struct.llvm::SmallVectorStorage.399" }
%"struct.llvm::SmallVectorStorage.399" = type { [16 x i8] }
%"class.llvm::Register" = type { i32 }

$_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev = comdat any

$_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE = comdat any

$_ZN4llvm4Pass14doFinalizationERNS_6ModuleE = comdat any

$_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv = comdat any

$_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv = comdat any

$_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag = comdat any

$_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE = comdat any

$_ZN4llvm11getRegStateERKNS_14MachineOperandE = comdat any

$_ZNK4llvm19MachineInstrBuilder6addRegENS_8RegisterENS_8RegStateEj = comdat any

$_ZNK4llvm8Function21needsUnwindTableEntryEv = comdat any

$_ZNK4llvm19MachineInstrBuilder16addGlobalAddressEPKNS_11GlobalValueElj = comdat any

$_ZNK4llvm19MachineInstrBuilder17addExternalSymbolEPKcj = comdat any

$_ZNK4llvm12MachineInstr10getCFITypeEv = comdat any

$_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE = comdat any

$_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE = comdat any

$_ZN4llvm12LivePhysRegsC2ERKNS_18TargetRegisterInfoE = comdat any

$_ZN4llvm17MachineBasicBlock6rbeginEv = comdat any

$_ZN4llvm11SmallVectorIjLj16EEC2ERKS1_ = comdat any

$_ZN4llvm12LivePhysRegsD2Ev = comdat any

$_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescE = comdat any

$_ZN4llvm15MIBundleBuilder6appendEPNS_12MachineInstrE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj = comdat any

$_ZN4llvm25array_pod_sort_comparatorIjEEiPKvS2_ = comdat any

$_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE = comdat any

$_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv = comdat any

$_ZTVN4llvm2cl11OptionValueIbEE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZL15VerifyARMPseudo = internal global %"class.llvm::cl::opt" zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"verify-arm-pseudo-expand\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Verify machine code after expanding ARM pseudos\00", align 1
@__dso_handle = external hidden global i8
@_ZL33InitializeARMExpandPseudoPassFlag = internal global %"struct.std::once_flag" zeroinitializer, align 4
@_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl6OptionE = external unnamed_addr constant { [13 x ptr] }, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"ARM pseudo instruction expansion pass\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"arm-pseudo\00", align 1
@_ZN12_GLOBAL__N_115ARMExpandPseudo2IDE = internal global i8 0, align 1
@_ZTVN12_GLOBAL__N_115ARMExpandPseudoE = internal unnamed_addr constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr null, ptr @_ZN4llvm4PassD2Ev, ptr @_ZN12_GLOBAL__N_115ARMExpandPseudoD0Ev, ptr @_ZNK12_GLOBAL__N_115ARMExpandPseudo11getPassNameEv, ptr @_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE, ptr @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE, ptr @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE, ptr @_ZNK4llvm19MachineFunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE, ptr @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE, ptr @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv, ptr @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE, ptr @_ZN4llvm4Pass13releaseMemoryEv, ptr @_ZN4llvm4Pass18getAsImmutablePassEv, ptr @_ZN4llvm4Pass18getAsPMDataManagerEv, ptr @_ZNK4llvm4Pass14verifyAnalysisEv, ptr @_ZN4llvm4Pass17dumpPassStructureEj, ptr @_ZN4llvm19MachineFunctionPass13runOnFunctionERNS_8FunctionE, ptr @_ZN4llvm19MachineFunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE, ptr @_ZN12_GLOBAL__N_115ARMExpandPseudo20runOnMachineFunctionERN4llvm15MachineFunctionE, ptr @_ZNK12_GLOBAL__N_115ARMExpandPseudo21getRequiredPropertiesEv, ptr @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv, ptr @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv] }, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"After expanding ARM pseudo instructions.\00", align 1
@constinit = private unnamed_addr constant [5 x i32] [i32 74, i32 75, i32 76, i32 77, i32 86], align 4
@constinit.5 = private unnamed_addr constant [13 x i32] [i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86], align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"__aeabi_read_tp\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Allocation failed\00", align 1
@_ZN4llvm25ARMMCRegisterClassStorageE = external global %"struct.llvm::MCRegisterClassStorage", align 8
@.str.9 = private unnamed_addr constant [19 x i8] c".inst.w 0xeeb00a40\00", align 1
@_ZL13NEONLdStTable = internal constant [288 x %"struct.(anonymous namespace)::NEONLdStTableEntry"] [%"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2566, i16 2560, i8 1, i8 0, i8 0, i8 4, i8 1, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2567, i16 2561, i8 1, i8 1, i8 1, i8 4, i8 1, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2568, i16 2562, i8 1, i8 0, i8 0, i8 4, i8 1, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2569, i16 2563, i8 1, i8 1, i8 1, i8 4, i8 1, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2570, i16 2564, i8 1, i8 0, i8 0, i8 4, i8 1, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2571, i16 2565, i8 1, i8 1, i8 1, i8 4, i8 1, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2574, i16 2573, i8 1, i8 0, i8 0, i8 0, i8 4, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2575, i16 2577, i8 1, i8 1, i8 0, i8 0, i8 4, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2576, i16 2578, i8 1, i8 1, i8 1, i8 0, i8 4, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2580, i16 2579, i8 1, i8 0, i8 0, i8 0, i8 3, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2581, i16 2583, i8 1, i8 1, i8 0, i8 0, i8 3, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2582, i16 2584, i8 1, i8 1, i8 1, i8 0, i8 3, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2589, i16 2588, i8 1, i8 0, i8 0, i8 0, i8 4, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2590, i16 2592, i8 1, i8 1, i8 0, i8 0, i8 4, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2591, i16 2593, i8 1, i8 1, i8 1, i8 0, i8 4, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2595, i16 2594, i8 1, i8 0, i8 0, i8 0, i8 3, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2596, i16 2598, i8 1, i8 1, i8 0, i8 0, i8 3, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2597, i16 2599, i8 1, i8 1, i8 1, i8 0, i8 3, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2604, i16 2603, i8 1, i8 0, i8 0, i8 0, i8 4, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2605, i16 2607, i8 1, i8 1, i8 0, i8 0, i8 4, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2606, i16 2608, i8 1, i8 1, i8 1, i8 0, i8 4, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2610, i16 2609, i8 1, i8 0, i8 0, i8 0, i8 3, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2611, i16 2613, i8 1, i8 1, i8 0, i8 0, i8 3, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2612, i16 2614, i8 1, i8 1, i8 1, i8 0, i8 3, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2619, i16 2618, i8 1, i8 0, i8 0, i8 0, i8 4, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2620, i16 2622, i8 1, i8 1, i8 0, i8 0, i8 4, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2621, i16 2623, i8 1, i8 1, i8 1, i8 0, i8 4, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2625, i16 2624, i8 1, i8 0, i8 0, i8 0, i8 3, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2626, i16 2628, i8 1, i8 1, i8 0, i8 0, i8 3, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2627, i16 2629, i8 1, i8 1, i8 1, i8 0, i8 3, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2633, i16 2573, i8 1, i8 0, i8 0, i8 2, i8 4, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2634, i16 2577, i8 1, i8 1, i8 1, i8 2, i8 4, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2635, i16 2579, i8 1, i8 0, i8 0, i8 3, i8 3, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2636, i16 2583, i8 1, i8 1, i8 1, i8 3, i8 3, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2637, i16 2577, i8 1, i8 1, i8 1, i8 1, i8 4, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2638, i16 2583, i8 1, i8 1, i8 1, i8 1, i8 3, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2642, i16 2588, i8 1, i8 0, i8 0, i8 2, i8 4, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2643, i16 2592, i8 1, i8 1, i8 1, i8 2, i8 4, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2644, i16 2594, i8 1, i8 0, i8 0, i8 3, i8 3, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2645, i16 2598, i8 1, i8 1, i8 1, i8 3, i8 3, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2646, i16 2592, i8 1, i8 1, i8 1, i8 1, i8 4, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2647, i16 2598, i8 1, i8 1, i8 1, i8 1, i8 3, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2651, i16 2603, i8 1, i8 0, i8 0, i8 2, i8 4, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2652, i16 2607, i8 1, i8 1, i8 1, i8 2, i8 4, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2653, i16 2609, i8 1, i8 0, i8 0, i8 3, i8 3, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2654, i16 2613, i8 1, i8 1, i8 1, i8 3, i8 3, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2655, i16 2607, i8 1, i8 1, i8 1, i8 1, i8 4, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2656, i16 2613, i8 1, i8 1, i8 1, i8 1, i8 3, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2660, i16 2618, i8 1, i8 0, i8 0, i8 2, i8 4, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2661, i16 2622, i8 1, i8 1, i8 1, i8 2, i8 4, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2662, i16 2624, i8 1, i8 0, i8 0, i8 3, i8 3, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2663, i16 2628, i8 1, i8 1, i8 1, i8 3, i8 3, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2664, i16 2622, i8 1, i8 1, i8 1, i8 1, i8 4, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2665, i16 2628, i8 1, i8 1, i8 1, i8 1, i8 3, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2686, i16 2671, i8 1, i8 0, i8 0, i8 4, i8 2, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2687, i16 2671, i8 1, i8 0, i8 0, i8 5, i8 2, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2688, i16 2672, i8 1, i8 1, i8 0, i8 5, i8 2, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2689, i16 2673, i8 1, i8 1, i8 1, i8 5, i8 2, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2690, i16 2677, i8 1, i8 0, i8 0, i8 4, i8 2, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2691, i16 2677, i8 1, i8 0, i8 0, i8 5, i8 2, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2692, i16 2678, i8 1, i8 1, i8 0, i8 5, i8 2, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2693, i16 2679, i8 1, i8 1, i8 1, i8 5, i8 2, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2694, i16 2683, i8 1, i8 0, i8 0, i8 4, i8 2, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2695, i16 2683, i8 1, i8 0, i8 0, i8 5, i8 2, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2696, i16 2684, i8 1, i8 1, i8 0, i8 5, i8 2, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2697, i16 2685, i8 1, i8 1, i8 1, i8 5, i8 2, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2699, i16 2698, i8 1, i8 0, i8 0, i8 0, i8 2, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2700, i16 2701, i8 1, i8 1, i8 1, i8 0, i8 2, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2703, i16 2702, i8 1, i8 0, i8 0, i8 0, i8 2, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2704, i16 2705, i8 1, i8 1, i8 1, i8 0, i8 2, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2707, i16 2706, i8 1, i8 0, i8 0, i8 0, i8 2, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2708, i16 2709, i8 1, i8 1, i8 1, i8 0, i8 2, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2711, i16 2710, i8 1, i8 0, i8 0, i8 4, i8 2, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2712, i16 2713, i8 1, i8 1, i8 1, i8 4, i8 2, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2715, i16 2714, i8 1, i8 0, i8 0, i8 4, i8 2, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2716, i16 2717, i8 1, i8 1, i8 1, i8 4, i8 2, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2737, i16 2736, i8 1, i8 0, i8 0, i8 0, i8 4, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2738, i16 2740, i8 1, i8 1, i8 0, i8 0, i8 4, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2739, i16 2741, i8 1, i8 1, i8 1, i8 0, i8 4, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2743, i16 2742, i8 1, i8 0, i8 0, i8 0, i8 4, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2744, i16 2746, i8 1, i8 1, i8 0, i8 0, i8 4, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2745, i16 2747, i8 1, i8 1, i8 1, i8 0, i8 4, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2749, i16 2748, i8 1, i8 0, i8 0, i8 0, i8 4, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2750, i16 2752, i8 1, i8 1, i8 0, i8 0, i8 4, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2751, i16 2753, i8 1, i8 1, i8 1, i8 0, i8 4, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2755, i16 2754, i8 1, i8 0, i8 0, i8 0, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2756, i16 2757, i8 1, i8 1, i8 1, i8 0, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2759, i16 2758, i8 1, i8 0, i8 0, i8 0, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2760, i16 2761, i8 1, i8 1, i8 1, i8 0, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2763, i16 2762, i8 1, i8 0, i8 0, i8 0, i8 3, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2764, i16 2765, i8 1, i8 1, i8 1, i8 0, i8 3, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2767, i16 2766, i8 1, i8 0, i8 0, i8 4, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2768, i16 2766, i8 1, i8 0, i8 0, i8 5, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2769, i16 2770, i8 1, i8 1, i8 1, i8 5, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2772, i16 2771, i8 1, i8 0, i8 0, i8 4, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2773, i16 2771, i8 1, i8 0, i8 0, i8 5, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2774, i16 2775, i8 1, i8 1, i8 1, i8 5, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2777, i16 2776, i8 1, i8 0, i8 0, i8 4, i8 3, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2778, i16 2776, i8 1, i8 0, i8 0, i8 5, i8 3, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2779, i16 2780, i8 1, i8 1, i8 1, i8 5, i8 3, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2782, i16 2781, i8 1, i8 0, i8 0, i8 0, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2783, i16 2784, i8 1, i8 1, i8 1, i8 0, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2786, i16 2785, i8 1, i8 0, i8 0, i8 0, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2787, i16 2788, i8 1, i8 1, i8 1, i8 0, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2790, i16 2789, i8 1, i8 0, i8 0, i8 0, i8 3, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2791, i16 2792, i8 1, i8 1, i8 1, i8 0, i8 3, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2794, i16 2793, i8 1, i8 0, i8 0, i8 4, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2795, i16 2796, i8 1, i8 1, i8 1, i8 4, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2798, i16 2797, i8 1, i8 0, i8 0, i8 4, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2799, i16 2800, i8 1, i8 1, i8 1, i8 4, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2802, i16 2801, i8 1, i8 0, i8 0, i8 0, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2803, i16 2804, i8 1, i8 1, i8 1, i8 0, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2806, i16 2805, i8 1, i8 0, i8 0, i8 0, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2807, i16 2808, i8 1, i8 1, i8 1, i8 0, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2810, i16 2809, i8 1, i8 0, i8 0, i8 0, i8 3, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2811, i16 2812, i8 1, i8 1, i8 1, i8 0, i8 3, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2814, i16 2815, i8 1, i8 1, i8 1, i8 4, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2816, i16 2813, i8 1, i8 0, i8 0, i8 5, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2817, i16 2815, i8 1, i8 1, i8 1, i8 5, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2819, i16 2820, i8 1, i8 1, i8 1, i8 4, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2821, i16 2818, i8 1, i8 0, i8 0, i8 5, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2822, i16 2820, i8 1, i8 1, i8 1, i8 5, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2824, i16 2825, i8 1, i8 1, i8 1, i8 4, i8 3, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2826, i16 2823, i8 1, i8 0, i8 0, i8 5, i8 3, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2827, i16 2825, i8 1, i8 1, i8 1, i8 5, i8 3, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2829, i16 2828, i8 1, i8 0, i8 0, i8 0, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2830, i16 2831, i8 1, i8 1, i8 1, i8 0, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2833, i16 2832, i8 1, i8 0, i8 0, i8 0, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2834, i16 2835, i8 1, i8 1, i8 1, i8 0, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2837, i16 2836, i8 1, i8 0, i8 0, i8 0, i8 4, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2838, i16 2839, i8 1, i8 1, i8 1, i8 0, i8 4, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2841, i16 2840, i8 1, i8 0, i8 0, i8 4, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2842, i16 2840, i8 1, i8 0, i8 0, i8 5, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2843, i16 2844, i8 1, i8 1, i8 1, i8 5, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2846, i16 2845, i8 1, i8 0, i8 0, i8 4, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2847, i16 2845, i8 1, i8 0, i8 0, i8 5, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2848, i16 2849, i8 1, i8 1, i8 1, i8 5, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2851, i16 2850, i8 1, i8 0, i8 0, i8 4, i8 4, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2852, i16 2850, i8 1, i8 0, i8 0, i8 5, i8 4, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2853, i16 2854, i8 1, i8 1, i8 1, i8 5, i8 4, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2856, i16 2855, i8 1, i8 0, i8 0, i8 0, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2857, i16 2858, i8 1, i8 1, i8 1, i8 0, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2860, i16 2859, i8 1, i8 0, i8 0, i8 0, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2861, i16 2862, i8 1, i8 1, i8 1, i8 0, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2864, i16 2863, i8 1, i8 0, i8 0, i8 0, i8 4, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2865, i16 2866, i8 1, i8 1, i8 1, i8 0, i8 4, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2868, i16 2867, i8 1, i8 0, i8 0, i8 4, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2869, i16 2870, i8 1, i8 1, i8 1, i8 4, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2872, i16 2871, i8 1, i8 0, i8 0, i8 4, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2873, i16 2874, i8 1, i8 1, i8 1, i8 4, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2876, i16 2875, i8 1, i8 0, i8 0, i8 0, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2877, i16 2878, i8 1, i8 1, i8 1, i8 0, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2880, i16 2879, i8 1, i8 0, i8 0, i8 0, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2881, i16 2882, i8 1, i8 1, i8 1, i8 0, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2884, i16 2883, i8 1, i8 0, i8 0, i8 0, i8 4, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2885, i16 2886, i8 1, i8 1, i8 1, i8 0, i8 4, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2888, i16 2889, i8 1, i8 1, i8 1, i8 4, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2890, i16 2887, i8 1, i8 0, i8 0, i8 5, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2891, i16 2889, i8 1, i8 1, i8 1, i8 5, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2893, i16 2894, i8 1, i8 1, i8 1, i8 4, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2895, i16 2892, i8 1, i8 0, i8 0, i8 5, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2896, i16 2894, i8 1, i8 1, i8 1, i8 5, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2898, i16 2899, i8 1, i8 1, i8 1, i8 4, i8 4, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2900, i16 2897, i8 1, i8 0, i8 0, i8 5, i8 4, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 2901, i16 2899, i8 1, i8 1, i8 1, i8 5, i8 4, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3639, i16 3633, i8 0, i8 0, i8 0, i8 4, i8 1, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3640, i16 3634, i8 0, i8 1, i8 1, i8 4, i8 1, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3641, i16 3635, i8 0, i8 0, i8 0, i8 4, i8 1, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3642, i16 3636, i8 0, i8 1, i8 1, i8 4, i8 1, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3643, i16 3637, i8 0, i8 0, i8 0, i8 4, i8 1, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3644, i16 3638, i8 0, i8 1, i8 1, i8 4, i8 1, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3647, i16 3646, i8 0, i8 0, i8 0, i8 0, i8 4, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3648, i16 3650, i8 0, i8 1, i8 0, i8 0, i8 4, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3649, i16 3651, i8 0, i8 1, i8 1, i8 0, i8 4, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3653, i16 3652, i8 0, i8 0, i8 0, i8 0, i8 3, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3654, i16 3656, i8 0, i8 1, i8 0, i8 0, i8 3, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3655, i16 3657, i8 0, i8 1, i8 1, i8 0, i8 3, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3662, i16 3661, i8 0, i8 0, i8 0, i8 0, i8 4, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3663, i16 3665, i8 0, i8 1, i8 0, i8 0, i8 4, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3664, i16 3666, i8 0, i8 1, i8 1, i8 0, i8 4, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3668, i16 3667, i8 0, i8 0, i8 0, i8 0, i8 3, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3669, i16 3671, i8 0, i8 1, i8 0, i8 0, i8 3, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3670, i16 3672, i8 0, i8 1, i8 1, i8 0, i8 3, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3677, i16 3676, i8 0, i8 0, i8 0, i8 0, i8 4, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3678, i16 3680, i8 0, i8 1, i8 0, i8 0, i8 4, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3679, i16 3681, i8 0, i8 1, i8 1, i8 0, i8 4, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3683, i16 3682, i8 0, i8 0, i8 0, i8 0, i8 3, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3684, i16 3686, i8 0, i8 1, i8 0, i8 0, i8 3, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3685, i16 3687, i8 0, i8 1, i8 1, i8 0, i8 3, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3692, i16 3691, i8 0, i8 0, i8 0, i8 0, i8 4, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3693, i16 3695, i8 0, i8 1, i8 0, i8 0, i8 4, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3694, i16 3696, i8 0, i8 1, i8 1, i8 0, i8 4, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3698, i16 3697, i8 0, i8 0, i8 0, i8 0, i8 3, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3699, i16 3701, i8 0, i8 1, i8 0, i8 0, i8 3, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3700, i16 3702, i8 0, i8 1, i8 1, i8 0, i8 3, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3706, i16 3646, i8 0, i8 0, i8 0, i8 2, i8 4, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3707, i16 3650, i8 0, i8 1, i8 1, i8 2, i8 4, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3708, i16 3652, i8 0, i8 0, i8 0, i8 3, i8 3, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3709, i16 3656, i8 0, i8 1, i8 1, i8 3, i8 3, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3710, i16 3650, i8 0, i8 1, i8 1, i8 1, i8 4, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3711, i16 3656, i8 0, i8 1, i8 1, i8 1, i8 3, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3715, i16 3661, i8 0, i8 0, i8 0, i8 2, i8 4, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3716, i16 3665, i8 0, i8 1, i8 1, i8 2, i8 4, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3717, i16 3667, i8 0, i8 0, i8 0, i8 3, i8 3, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3718, i16 3671, i8 0, i8 1, i8 1, i8 3, i8 3, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3719, i16 3665, i8 0, i8 1, i8 1, i8 1, i8 4, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3720, i16 3671, i8 0, i8 1, i8 1, i8 1, i8 3, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3724, i16 3676, i8 0, i8 0, i8 0, i8 2, i8 4, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3725, i16 3680, i8 0, i8 1, i8 1, i8 2, i8 4, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3726, i16 3682, i8 0, i8 0, i8 0, i8 3, i8 3, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3727, i16 3686, i8 0, i8 1, i8 1, i8 3, i8 3, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3728, i16 3680, i8 0, i8 1, i8 1, i8 1, i8 4, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3729, i16 3686, i8 0, i8 1, i8 1, i8 1, i8 3, i8 1, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3733, i16 3691, i8 0, i8 0, i8 0, i8 2, i8 4, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3734, i16 3695, i8 0, i8 1, i8 1, i8 2, i8 4, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3735, i16 3697, i8 0, i8 0, i8 0, i8 3, i8 3, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3736, i16 3701, i8 0, i8 1, i8 1, i8 3, i8 3, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3737, i16 3695, i8 0, i8 1, i8 1, i8 1, i8 4, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3738, i16 3701, i8 0, i8 1, i8 1, i8 1, i8 3, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3742, i16 3741, i8 0, i8 0, i8 0, i8 0, i8 2, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3743, i16 3744, i8 0, i8 1, i8 1, i8 0, i8 2, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3746, i16 3745, i8 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3747, i16 3748, i8 0, i8 1, i8 1, i8 0, i8 2, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3750, i16 3749, i8 0, i8 0, i8 0, i8 0, i8 2, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3751, i16 3752, i8 0, i8 1, i8 1, i8 0, i8 2, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3754, i16 3753, i8 0, i8 0, i8 0, i8 4, i8 2, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3755, i16 3756, i8 0, i8 1, i8 1, i8 4, i8 2, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3758, i16 3757, i8 0, i8 0, i8 0, i8 4, i8 2, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3759, i16 3760, i8 0, i8 1, i8 1, i8 4, i8 2, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3780, i16 3779, i8 0, i8 0, i8 0, i8 0, i8 4, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3781, i16 3783, i8 0, i8 1, i8 0, i8 0, i8 4, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3782, i16 3784, i8 0, i8 1, i8 1, i8 0, i8 4, i8 4, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3786, i16 3785, i8 0, i8 0, i8 0, i8 0, i8 4, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3787, i16 3789, i8 0, i8 1, i8 0, i8 0, i8 4, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3788, i16 3790, i8 0, i8 1, i8 1, i8 0, i8 4, i8 2, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3792, i16 3791, i8 0, i8 0, i8 0, i8 0, i8 4, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3793, i16 3795, i8 0, i8 1, i8 0, i8 0, i8 4, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3794, i16 3796, i8 0, i8 1, i8 1, i8 0, i8 4, i8 8, i8 0 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3798, i16 3797, i8 0, i8 0, i8 0, i8 0, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3799, i16 3800, i8 0, i8 1, i8 1, i8 0, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3802, i16 3801, i8 0, i8 0, i8 0, i8 0, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3803, i16 3804, i8 0, i8 1, i8 1, i8 0, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3806, i16 3805, i8 0, i8 0, i8 0, i8 0, i8 3, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3807, i16 3808, i8 0, i8 1, i8 1, i8 0, i8 3, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3810, i16 3809, i8 0, i8 0, i8 0, i8 4, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3811, i16 3812, i8 0, i8 1, i8 1, i8 4, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3814, i16 3813, i8 0, i8 0, i8 0, i8 4, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3815, i16 3816, i8 0, i8 1, i8 1, i8 4, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3818, i16 3817, i8 0, i8 0, i8 0, i8 0, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3819, i16 3820, i8 0, i8 1, i8 1, i8 0, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3822, i16 3821, i8 0, i8 0, i8 0, i8 0, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3823, i16 3824, i8 0, i8 1, i8 1, i8 0, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3826, i16 3825, i8 0, i8 0, i8 0, i8 0, i8 3, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3827, i16 3828, i8 0, i8 1, i8 1, i8 0, i8 3, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3830, i16 3831, i8 0, i8 1, i8 1, i8 4, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3832, i16 3829, i8 0, i8 0, i8 0, i8 5, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3833, i16 3831, i8 0, i8 1, i8 1, i8 5, i8 3, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3835, i16 3836, i8 0, i8 1, i8 1, i8 4, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3837, i16 3834, i8 0, i8 0, i8 0, i8 5, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3838, i16 3836, i8 0, i8 1, i8 1, i8 5, i8 3, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3840, i16 3841, i8 0, i8 1, i8 1, i8 4, i8 3, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3842, i16 3839, i8 0, i8 0, i8 0, i8 5, i8 3, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3843, i16 3841, i8 0, i8 1, i8 1, i8 5, i8 3, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3845, i16 3844, i8 0, i8 0, i8 0, i8 0, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3846, i16 3847, i8 0, i8 1, i8 1, i8 0, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3849, i16 3848, i8 0, i8 0, i8 0, i8 0, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3850, i16 3851, i8 0, i8 1, i8 1, i8 0, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3853, i16 3852, i8 0, i8 0, i8 0, i8 0, i8 4, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3854, i16 3855, i8 0, i8 1, i8 1, i8 0, i8 4, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3857, i16 3856, i8 0, i8 0, i8 0, i8 4, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3858, i16 3859, i8 0, i8 1, i8 1, i8 4, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3861, i16 3860, i8 0, i8 0, i8 0, i8 4, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3862, i16 3863, i8 0, i8 1, i8 1, i8 4, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3865, i16 3864, i8 0, i8 0, i8 0, i8 0, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3866, i16 3867, i8 0, i8 1, i8 1, i8 0, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3869, i16 3868, i8 0, i8 0, i8 0, i8 0, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3870, i16 3871, i8 0, i8 1, i8 1, i8 0, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3873, i16 3872, i8 0, i8 0, i8 0, i8 0, i8 4, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3874, i16 3875, i8 0, i8 1, i8 1, i8 0, i8 4, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3877, i16 3878, i8 0, i8 1, i8 1, i8 4, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3879, i16 3876, i8 0, i8 0, i8 0, i8 5, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3880, i16 3878, i8 0, i8 1, i8 1, i8 5, i8 4, i8 4, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3882, i16 3883, i8 0, i8 1, i8 1, i8 4, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3884, i16 3881, i8 0, i8 0, i8 0, i8 5, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3885, i16 3883, i8 0, i8 1, i8 1, i8 5, i8 4, i8 2, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3887, i16 3888, i8 0, i8 1, i8 1, i8 4, i8 4, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3889, i16 3886, i8 0, i8 0, i8 0, i8 5, i8 4, i8 8, i8 1 }, %"struct.(anonymous namespace)::NEONLdStTableEntry" { i16 3890, i16 3888, i8 0, i8 1, i8 1, i8 5, i8 4, i8 8, i8 1 }], align 16
@_ZTVN4llvm2cl11OptionValueIbEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm2cl6parserIbEE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZSt15__once_callable = external thread_local local_unnamed_addr global ptr, align 8
@_ZSt11__once_call = external thread_local local_unnamed_addr global ptr, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ARMExpandPseudoInsts.cpp, ptr null }]
@switch.table._ZN12_GLOBAL__N_115ARMExpandPseudo8ExpandMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.30 = private unnamed_addr constant [3 x i8] c"\05\04\01", align 4
@switch.table._ZN12_GLOBAL__N_115ARMExpandPseudo8ExpandMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.31 = private unnamed_addr constant [3 x i8] c"\06\05\03", align 4
@switch.table._ZN12_GLOBAL__N_115ARMExpandPseudo8ExpandMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.32 = private unnamed_addr constant [3 x i8] c"\08\07\07", align 4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !425  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #20, !inline_history !423 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !426, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !427
  tail call void @free(ptr noundef %i.i) #20
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #20
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm29initializeARMExpandPseudoPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %class.anon, align 8                ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr @_ZL33initializeARMExpandPseudoPassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !428
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !22
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !22
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL33InitializeARMExpandPseudoPassFlag, ptr noundef nonnull @__once_proxy) #20 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #21
  unreachable

_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !22
  store ptr null, ptr %i.c, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL33initializeARMExpandPseudoPassOnceRN4llvm12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #3 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #22 ; 9 uses
  store ptr @.str.2, ptr %i.a, align 8, !tbaa !25
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 37, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.3, ptr %i.b, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 10, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN12_GLOBAL__N_115ARMExpandPseudo2IDE, ptr %i.c, align 8, !tbaa !430
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !431
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 0, ptr %i.e, align 1, !tbaa !432
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_115ARMExpandPseudoEEEPNS_4PassEv, ptr %i.f, align 8, !tbaa !433
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef nonnull ptr @_ZN4llvm25createARMExpandPseudoPassEv() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #22 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_115ARMExpandPseudo2IDE, ptr %i.c, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN12_GLOBAL__N_115ARMExpandPseudoE, i64 16), ptr %i.a, align 8, !tbaa !13
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_115ARMExpandPseudoEEEPNS_4PassEv() #3 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #22 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_115ARMExpandPseudo2IDE, ptr %i.c, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN12_GLOBAL__N_115ARMExpandPseudoE, i64 16), ptr %i.a, align 8, !tbaa !13
  ret ptr %i.a
}

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115ARMExpandPseudoD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK12_GLOBAL__N_115ARMExpandPseudo11getPassNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.2, i64 37 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 %i.c(ptr noundef nonnull align 8 dereferenceable(56) %0) #20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.d, ptr %i.e, align 8
  %i.f = load ptr, ptr %0, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i64 %i.h(ptr noundef nonnull align 8 dereferenceable(56) %0) #20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.i, ptr %i.j, align 8
  %i.k = load ptr, ptr %0, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i64 %i.m(ptr noundef nonnull align 8 dereferenceable(56) %0) #20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.n, ptr %i.o, align 8
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #6

declare noundef ptr @_ZNK4llvm19MachineFunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

end_hunk_0
begin_hunk_1_@_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv:bb.a
bb.a:
  ret i64 0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef zeroext i1 @_ZNK4llvm15MachineFunction6verifyEPNS_4PassEPKcPNS_11raw_ostreamEb(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115ARMExpandPseudo8ExpandMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_(ptr nofree noundef nonnull readonly align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %14 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %15 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %16 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %17 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %18 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %19 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %20 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %21 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %22 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %23 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %24 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %25 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %26 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %27 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %28 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %29 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %30 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %31 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %32 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %33 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %34 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %35 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %36 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %37 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %38 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %39 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %40 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %41 = alloca %"class.llvm::MachineOperand", align 8 ; 8 uses
  %42 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %43 = alloca %"class.llvm::MachineOperand", align 8 ; 8 uses
  %44 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %45 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %46 = alloca %"class.llvm::MachineOperand", align 8 ; 8 uses
  %47 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %48 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %49 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %50 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %51 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %52 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %53 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %54 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %55 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %56 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %57 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %58 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %59 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %60 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %61 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %62 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %63 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %64 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %65 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %66 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %67 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %68 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %69 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %70 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %71 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %72 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %73 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %74 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %75 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %76 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %77 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %78 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %79 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %80 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %81 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %82 = alloca %"class.llvm::MachineInstrBundleIterator", align 8 ; 5 uses
  %83 = alloca %"class.llvm::MachineInstrBundleIterator", align 8 ; 10 uses
  %84 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %85 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %86 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %87 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %88 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %89 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %90 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %91 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %92 = alloca %"struct.std::array.231", align 8  ; 7 uses
  %93 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 8 uses
  %94 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %95 = alloca %"struct.std::array.231", align 8  ; 7 uses
  %96 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %97 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %98 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %99 = alloca %"struct.std::array.231", align 8  ; 7 uses
  %100 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %101 = alloca %"class.llvm::SmallVector.331", align 8 ; 9 uses
  %i.a = alloca [5 x i32], align 4                ; 4 uses
  %102 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %103 = alloca %"struct.std::array.231", align 8 ; 7 uses
  %104 = alloca %"class.llvm::DebugLoc", align 8  ; 7 uses
  %105 = alloca %"class.llvm::LivePhysRegs", align 8 ; 9 uses
  %106 = alloca %"class.llvm::SmallVector.223", align 8 ; 12 uses
  %i.b = alloca [13 x i32], align 4               ; 4 uses
  %107 = alloca %"class.llvm::SmallVector.223", align 8 ; 6 uses
  %108 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %109 = alloca %"struct.std::array.231", align 8 ; 7 uses
  %110 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %111 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %112 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %113 = alloca %"struct.std::array.231", align 8 ; 7 uses
  %114 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %115 = alloca %"struct.std::array.231", align 8 ; 7 uses
  %116 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %117 = alloca %"struct.std::array.231", align 8 ; 7 uses
  %118 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %119 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %120 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %121 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %122 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %123 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %124 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %125 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %126 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %127 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %128 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %129 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %130 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %131 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %132 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %133 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %134 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %135 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %136 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %137 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %138 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %139 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %140 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %141 = alloca %"struct.std::array.231", align 8 ; 7 uses
  %142 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %143 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %144 = alloca %"struct.std::array.231", align 8 ; 7 uses
  %145 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %146 = alloca %"struct.std::array.231", align 8 ; 7 uses
  %147 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %148 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %149 = alloca %"struct.std::array.231", align 8 ; 7 uses
  %150 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %151 = alloca %"struct.std::array.231", align 8 ; 7 uses
  %152 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %153 = alloca %"struct.std::array.231", align 8 ; 7 uses
  %154 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %155 = alloca %"struct.std::array.231", align 8 ; 7 uses
  %156 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %157 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %158 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %159 = alloca %"struct.std::array.231", align 8 ; 7 uses
  %160 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %161 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %162 = alloca %"struct.std::array.231", align 8 ; 7 uses
  %163 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %164 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %165 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %166 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %167 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %168 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %169 = alloca %"struct.std::array.231", align 8 ; 7 uses
  %170 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %171 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 8 uses
  %172 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %173 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 7 uses
  %174 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %175 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %176 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %177 = alloca %"struct.std::array.231", align 8 ; 7 uses
  %178 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %179 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %180 = alloca %"struct.std::array.231", align 8 ; 7 uses
  %181 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %182 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %183 = alloca %"class.llvm::MIBundleBuilder", align 8 ; 7 uses
  %184 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %185 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %186 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %187 = alloca %"struct.std::array.231", align 8 ; 7 uses
  store ptr %2, ptr %83, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !188  ; 24 uses
  switch i32 %i.d, label %bb.et [
    i32 2221, label %bb.b
    i32 2222, label %bb.b
    i32 354, label %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit
    i32 353, label %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit
    i32 463, label %bb.j
    i32 464, label %bb.j
    i32 465, label %bb.j
    i32 782, label %bb.af
    i32 777, label %bb.al
    i32 597, label %bb.aq
    i32 599, label %bb.aq
    i32 596, label %bb.aq
    i32 735, label %bb.ar
    i32 397, label %bb.ar
    i32 398, label %bb.as
    i32 399, label %bb.at
    i32 731, label %bb.au
    i32 395, label %bb.au
    i32 730, label %bb.av
    i32 394, label %bb.av
    i32 745, label %bb.aw
    i32 414, label %bb.aw
    i32 445, label %bb.es
    i32 386, label %bb.es
    i32 698, label %bb.eo
    i32 345, label %bb.em
    i32 362, label %bb.ax
    i32 391, label %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit837
    i32 339, label %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit837
    i32 426, label %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit840
    i32 812, label %bb.be
    i32 466, label %bb.be
    i32 795, label %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit852
    i32 722, label %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit852
    i32 378, label %bb.bq
    i32 379, label %bb.bq
    i32 380, label %bb.bq
    i32 792, label %bb.bq
    i32 711, label %bb.bq
    i32 793, label %bb.bq
    i32 402, label %bb.bx
    i32 403, label %bb.bx
    i32 740, label %bb.bx
    i32 405, label %bb.ca
    i32 396, label %bb.ca
    i32 742, label %bb.ca
    i32 732, label %bb.ca
    i32 800, label %bb.cb
    i32 797, label %bb.cc
    i32 453, label %bb.ce
    i32 2905, label %bb.cf
    i32 3894, label %bb.cg
    i32 2749, label %bb.cj
    i32 2737, label %bb.cj
    i32 2743, label %bb.cj
    i32 2750, label %bb.cj
    i32 2738, label %bb.cj
    i32 2744, label %bb.cj
    i32 2751, label %bb.cj
    i32 2739, label %bb.cj
    i32 2745, label %bb.cj
    i32 2810, label %bb.cj
    i32 2802, label %bb.cj
    i32 2806, label %bb.cj
    i32 2625, label %bb.cj
    i32 2626, label %bb.cj
    i32 2627, label %bb.cj
    i32 2580, label %bb.cj
    i32 2581, label %bb.cj
    i32 2582, label %bb.cj
    i32 2595, label %bb.cj
    i32 2596, label %bb.cj
    i32 2597, label %bb.cj
    i32 2610, label %bb.cj
    i32 2611, label %bb.cj
    i32 2612, label %bb.cj
    i32 2811, label %bb.cj
    i32 2803, label %bb.cj
    i32 2807, label %bb.cj
    i32 2824, label %bb.cj
    i32 2814, label %bb.cj
    i32 2819, label %bb.cj
    i32 2826, label %bb.cj
    i32 2816, label %bb.cj
    i32 2821, label %bb.cj
    i32 2827, label %bb.cj
    i32 2817, label %bb.cj
    i32 2822, label %bb.cj
    i32 2884, label %bb.cj
    i32 2876, label %bb.cj
    i32 2880, label %bb.cj
    i32 2619, label %bb.cj
    i32 2620, label %bb.cj
    i32 2621, label %bb.cj
    i32 2574, label %bb.cj
    i32 2575, label %bb.cj
    i32 2576, label %bb.cj
    i32 2589, label %bb.cj
    i32 2590, label %bb.cj
    i32 2591, label %bb.cj
    i32 2604, label %bb.cj
    i32 2605, label %bb.cj
    i32 2606, label %bb.cj
    i32 2660, label %bb.cj
    i32 2661, label %bb.cj
    i32 2664, label %bb.cj
    i32 2662, label %bb.cj
    i32 2663, label %bb.cj
    i32 2665, label %bb.cj
    i32 2633, label %bb.cj
    i32 2634, label %bb.cj
    i32 2637, label %bb.cj
    i32 2635, label %bb.cj
    i32 2636, label %bb.cj
    i32 2638, label %bb.cj
    i32 2642, label %bb.cj
    i32 2643, label %bb.cj
    i32 2646, label %bb.cj
    i32 2644, label %bb.cj
    i32 2645, label %bb.cj
    i32 2647, label %bb.cj
    i32 2651, label %bb.cj
    i32 2652, label %bb.cj
    i32 2655, label %bb.cj
    i32 2653, label %bb.cj
    i32 2654, label %bb.cj
    i32 2656, label %bb.cj
    i32 2885, label %bb.cj
    i32 2877, label %bb.cj
    i32 2881, label %bb.cj
    i32 2898, label %bb.cj
    i32 2888, label %bb.cj
    i32 2893, label %bb.cj
    i32 2900, label %bb.cj
    i32 2890, label %bb.cj
    i32 2895, label %bb.cj
    i32 2901, label %bb.cj
    i32 2891, label %bb.cj
    i32 2896, label %bb.cj
    i32 2763, label %bb.cj
    i32 2755, label %bb.cj
    i32 2759, label %bb.cj
    i32 2764, label %bb.cj
    i32 2756, label %bb.cj
    i32 2760, label %bb.cj
    i32 2837, label %bb.cj
    i32 2829, label %bb.cj
    i32 2833, label %bb.cj
    i32 2838, label %bb.cj
    i32 2830, label %bb.cj
    i32 2834, label %bb.cj
    i32 2694, label %bb.cj
    i32 2695, label %bb.cj
    i32 2686, label %bb.cj
    i32 2687, label %bb.cj
    i32 2690, label %bb.cj
    i32 2691, label %bb.cj
    i32 2696, label %bb.cj
    i32 2697, label %bb.cj
    i32 2688, label %bb.cj
    i32 2689, label %bb.cj
    i32 2692, label %bb.cj
    i32 2693, label %bb.cj
    i32 2777, label %bb.cj
    i32 2778, label %bb.cj
    i32 2767, label %bb.cj
    i32 2768, label %bb.cj
    i32 2772, label %bb.cj
    i32 2773, label %bb.cj
    i32 2779, label %bb.cj
    i32 2769, label %bb.cj
    i32 2774, label %bb.cj
    i32 2851, label %bb.cj
    i32 2852, label %bb.cj
    i32 2841, label %bb.cj
    i32 2842, label %bb.cj
    i32 2846, label %bb.cj
    i32 2847, label %bb.cj
    i32 2853, label %bb.cj
    i32 2843, label %bb.cj
    i32 2848, label %bb.cj
    i32 3792, label %bb.cv
    i32 3780, label %bb.cv
    i32 3786, label %bb.cv
    i32 3793, label %bb.cv
    i32 3781, label %bb.cv
    i32 3787, label %bb.cv
    i32 3794, label %bb.cv
    i32 3782, label %bb.cv
    i32 3788, label %bb.cv
    i32 3826, label %bb.cv
    i32 3818, label %bb.cv
    i32 3822, label %bb.cv
    i32 3698, label %bb.cv
    i32 3699, label %bb.cv
    i32 3700, label %bb.cv
    i32 3653, label %bb.cv
    i32 3654, label %bb.cv
    i32 3655, label %bb.cv
    i32 3668, label %bb.cv
    i32 3669, label %bb.cv
    i32 3670, label %bb.cv
    i32 3683, label %bb.cv
    i32 3684, label %bb.cv
    i32 3685, label %bb.cv
    i32 3827, label %bb.cv
    i32 3819, label %bb.cv
    i32 3823, label %bb.cv
    i32 3840, label %bb.cv
    i32 3830, label %bb.cv
    i32 3835, label %bb.cv
    i32 3842, label %bb.cv
    i32 3832, label %bb.cv
    i32 3837, label %bb.cv
    i32 3843, label %bb.cv
    i32 3833, label %bb.cv
    i32 3838, label %bb.cv
    i32 3873, label %bb.cv
    i32 3865, label %bb.cv
    i32 3869, label %bb.cv
    i32 3692, label %bb.cv
    i32 3693, label %bb.cv
    i32 3694, label %bb.cv
    i32 3647, label %bb.cv
    i32 3648, label %bb.cv
    i32 3649, label %bb.cv
    i32 3662, label %bb.cv
    i32 3663, label %bb.cv
    i32 3664, label %bb.cv
    i32 3677, label %bb.cv
    i32 3678, label %bb.cv
    i32 3679, label %bb.cv
    i32 3874, label %bb.cv
    i32 3866, label %bb.cv
    i32 3870, label %bb.cv
    i32 3733, label %bb.cv
    i32 3737, label %bb.cv
    i32 3735, label %bb.cv
    i32 3738, label %bb.cv
    i32 3706, label %bb.cv
    i32 3710, label %bb.cv
    i32 3708, label %bb.cv
    i32 3711, label %bb.cv
    i32 3715, label %bb.cv
    i32 3719, label %bb.cv
    i32 3717, label %bb.cv
    i32 3720, label %bb.cv
    i32 3724, label %bb.cv
    i32 3728, label %bb.cv
    i32 3726, label %bb.cv
    i32 3729, label %bb.cv
    i32 3736, label %bb.cv
    i32 3709, label %bb.cv
    i32 3718, label %bb.cv
    i32 3727, label %bb.cv
    i32 3734, label %bb.cv
    i32 3707, label %bb.cv
    i32 3716, label %bb.cv
    i32 3725, label %bb.cv
    i32 3887, label %bb.cv
    i32 3877, label %bb.cv
    i32 3882, label %bb.cv
    i32 3889, label %bb.cv
    i32 3879, label %bb.cv
    i32 3884, label %bb.cv
    i32 3890, label %bb.cv
    i32 3880, label %bb.cv
    i32 3885, label %bb.cv
    i32 2570, label %bb.di
    i32 2566, label %bb.di
    i32 2568, label %bb.di
    i32 2571, label %bb.di
    i32 2567, label %bb.di
    i32 2569, label %bb.di
    i32 2707, label %bb.di
    i32 2699, label %bb.di
    i32 2703, label %bb.di
    i32 2711, label %bb.di
    i32 2715, label %bb.di
    i32 2708, label %bb.di
    i32 2700, label %bb.di
    i32 2704, label %bb.di
    i32 2712, label %bb.di
    i32 2716, label %bb.di
    i32 2790, label %bb.di
    i32 2782, label %bb.di
    i32 2786, label %bb.di
    i32 2794, label %bb.di
    i32 2798, label %bb.di
    i32 2791, label %bb.di
    i32 2783, label %bb.di
    i32 2787, label %bb.di
    i32 2795, label %bb.di
    i32 2799, label %bb.di
    i32 2864, label %bb.di
    i32 2856, label %bb.di
    i32 2860, label %bb.di
    i32 2868, label %bb.di
    i32 2872, label %bb.di
    i32 2865, label %bb.di
    i32 2857, label %bb.di
    i32 2861, label %bb.di
    i32 2869, label %bb.di
    i32 2873, label %bb.di
    i32 3643, label %bb.di
    i32 3639, label %bb.di
    i32 3641, label %bb.di
    i32 3644, label %bb.di
    i32 3640, label %bb.di
    i32 3642, label %bb.di
    i32 3750, label %bb.di
    i32 3742, label %bb.di
    i32 3746, label %bb.di
    i32 3754, label %bb.di
    i32 3758, label %bb.di
    i32 3751, label %bb.di
    i32 3743, label %bb.di
    i32 3747, label %bb.di
    i32 3755, label %bb.di
    i32 3759, label %bb.di
    i32 3806, label %bb.di
    i32 3798, label %bb.di
    i32 3802, label %bb.di
    i32 3810, label %bb.di
    i32 3814, label %bb.di
    i32 3807, label %bb.di
    i32 3799, label %bb.di
    i32 3803, label %bb.di
    i32 3811, label %bb.di
    i32 3815, label %bb.di
    i32 3853, label %bb.di
    i32 3845, label %bb.di
    i32 3849, label %bb.di
    i32 3857, label %bb.di
    i32 3861, label %bb.di
    i32 3854, label %bb.di
    i32 3846, label %bb.di
    i32 3850, label %bb.di
    i32 3858, label %bb.di
    i32 3862, label %bb.di
    i32 3956, label %bb.ea
    i32 3958, label %bb.eb
    i32 3962, label %bb.ec
    i32 3964, label %bb.ed
    i32 407, label %bb.ee
    i32 408, label %bb.ee
    i32 409, label %bb.ee
    i32 410, label %bb.ee
    i32 789, label %bb.ef
    i32 787, label %bb.eg
    i32 788, label %bb.eh
    i32 358, label %bb.ei
    i32 355, label %bb.ej
    i32 356, label %bb.ek
    i32 357, label %bb.el
    i32 779, label %bb.em
    i32 733, label %switch.lookup.a
    i32 734, label %188
    i32 729, label %189
    i32 736, label %190
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 30 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !189  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !190  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 100
  %i.j = load i32, ptr %i.i, align 4, !tbaa !190
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %i.d, 2221
  %.neg1351 = select i1 %i.l, i64 -2217, i64 -2218
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #20
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.0398.0.copyload = load ptr, ptr %i.m, align 8, !tbaa !191
  store ptr %.sroa.0398.0.copyload, ptr %84, align 8, !tbaa !191
  %i.n = getelementptr inbounds nuw i8, ptr %84, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !159
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !195
  %i.s = getelementptr inbounds [32 x i8], ptr %i.r, i64 %.neg1351
  %i.t = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull align 8 dereferenceable(32) %i.s) ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.t, 0        ; 6 uses
  %i.v = extractvalue { ptr, ptr } %i.t, 1        ; 6 uses
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !189
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.v, ptr noundef nonnull align 8 dereferenceable(1065) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.w) #20
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.v, ptr noundef nonnull align 8 dereferenceable(1065) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.y) #20
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.v, ptr noundef nonnull align 8 dereferenceable(1065) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.aa) #20
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.v, ptr noundef nonnull align 8 dereferenceable(1065) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.ac) #20
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #20
  store i32 1, ptr %81, align 8, !alias.scope !712
  %i.ag = getelementptr inbounds nuw i8, ptr %81, i64 8
  store ptr null, ptr %i.ag, align 8, !tbaa !198, !alias.scope !712
  %i.ah = getelementptr inbounds nuw i8, ptr %81, i64 16
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !190, !alias.scope !712
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.v, ptr noundef nonnull align 8 dereferenceable(1065) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %81) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #20
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 160
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.v, ptr noundef nonnull align 8 dereferenceable(1065) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.aj) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #20
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !190
  %i.am = icmp eq i32 %i.h, %i.al
  %i.an = icmp eq i32 %i.d, 2221                  ; 3 uses
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.neg1350 = select i1 %i.an, i64 -2215, i64 -2216
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #20
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.0395.0.copyload = load ptr, ptr %i.ao, align 8, !tbaa !191
  store ptr %.sroa.0395.0.copyload, ptr %85, align 8, !tbaa !191
  %i.ap = getelementptr inbounds nuw i8, ptr %85, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !159
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !195
  %i.au = getelementptr inbounds [32 x i8], ptr %i.at, i64 %.neg1350
  %i.av = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %85, ptr noundef nonnull align 8 dereferenceable(32) %i.au) ; 2 uses
  %i.aw = extractvalue { ptr, ptr } %i.av, 0      ; 6 uses
  %i.ax = extractvalue { ptr, ptr } %i.av, 1      ; 6 uses
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !189
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ax, ptr noundef nonnull align 8 dereferenceable(1065) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.ay) #20
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ax, ptr noundef nonnull align 8 dereferenceable(1065) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.ba) #20
  %i.bb = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ax, ptr noundef nonnull align 8 dereferenceable(1065) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.bc) #20
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ax, ptr noundef nonnull align 8 dereferenceable(1065) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.be) #20
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #20
  store i32 1, ptr %80, align 8, !alias.scope !713
  %i.bi = getelementptr inbounds nuw i8, ptr %80, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !198, !alias.scope !713
  %i.bj = getelementptr inbounds nuw i8, ptr %80, i64 16
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !190, !alias.scope !713
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ax, ptr noundef nonnull align 8 dereferenceable(1065) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %80) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #20
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 160
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ax, ptr noundef nonnull align 8 dereferenceable(1065) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.bl) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #20
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bm = select i1 %i.an, i32 2219, i32 2220     ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !190
  %i.bp = icmp eq i32 %i.h, %i.bo
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #20
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.0391.0.copyload = load ptr, ptr %i.bq, align 8, !tbaa !191
  store ptr %.sroa.0391.0.copyload, ptr %86, align 8, !tbaa !191
  %i.br = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i8 0, i64 24, i1 false)
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !159
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !195
  %i.bw = zext nneg i32 %i.bm to i64
  %i.bx = sub nsw i64 0, %i.bw
  %i.by = getelementptr inbounds [32 x i8], ptr %i.bv, i64 %i.bx
  %i.bz = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %86, ptr noundef nonnull align 8 dereferenceable(32) %i.by) ; 2 uses
  %i.ca = extractvalue { ptr, ptr } %i.bz, 0      ; 6 uses
  %i.cb = extractvalue { ptr, ptr } %i.bz, 1      ; 6 uses
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !189
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, ptr noundef nonnull align 8 dereferenceable(1065) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %i.cc) #20
  %i.cd = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, ptr noundef nonnull align 8 dereferenceable(1065) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %i.ce) #20
  %i.cf = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, ptr noundef nonnull align 8 dereferenceable(1065) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %i.cg) #20
  %i.ch = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 96
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, ptr noundef nonnull align 8 dereferenceable(1065) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %i.ci) #20
  %i.cj = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 144
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #20
  store i32 1, ptr %79, align 8, !alias.scope !714
  %i.cm = getelementptr inbounds nuw i8, ptr %79, i64 8
  store ptr null, ptr %i.cm, align 8, !tbaa !198, !alias.scope !714
  %i.cn = getelementptr inbounds nuw i8, ptr %79, i64 16
  store i64 %i.cl, ptr %i.cn, align 8, !tbaa !190, !alias.scope !714
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, ptr noundef nonnull align 8 dereferenceable(1065) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %79) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #20
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 160
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, ptr noundef nonnull align 8 dereferenceable(1065) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %i.cp) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.neg1349 = select i1 %i.an, i64 -3147, i64 -3152
  %i.cr = tail call noundef zeroext i16 @_ZN4llvm11getRegStateERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(32) %i.cq)
  %i.cs = and i16 %i.cr, 1015                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #20
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %.sroa.0386.0.copyload = load ptr, ptr %i.ct, align 8, !tbaa !191
  store ptr %.sroa.0386.0.copyload, ptr %88, align 8, !tbaa !191
  %i.cu = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i8 0, i64 24, i1 false)
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !159
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !195
  %i.cz = getelementptr inbounds [32 x i8], ptr %i.cy, i64 %.neg1349
  %i.da = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull align 8 dereferenceable(32) %i.cz) ; 2 uses
  %i.db = extractvalue { ptr, ptr } %i.da, 0
  store ptr %i.db, ptr %87, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %87, i64 8
  %i.dd = extractvalue { ptr, ptr } %i.da, 1
  store ptr %i.dd, ptr %i.dc, align 8
  %i.de = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.df = call noundef zeroext i1 @_ZNK4llvm14MachineOperand11isRenamableEv(ptr noundef nonnull align 8 dereferenceable(32) %i.de) #20
  %i.dg = select i1 %i.df, i16 514, i16 2
  %i.dh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4llvm19MachineInstrBuilder6addRegENS_8RegisterENS_8RegStateEj(ptr noundef nonnull align 8 dereferenceable(16) %87, i32 %i.h, i16 noundef zeroext %i.dg, i32 noundef 0)
  %i.di = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 36
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !190
  %i.dl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4llvm19MachineInstrBuilder6addRegENS_8RegisterENS_8RegStateEj(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i32 %i.dk, i16 noundef zeroext %i.cs, i32 noundef 0)
  %i.dm = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 36
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !190
  %i.dp = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4llvm19MachineInstrBuilder6addRegENS_8RegisterENS_8RegStateEj(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i32 %i.do, i16 noundef zeroext %i.cs, i32 noundef 0) ; 3 uses
  %i.dq = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 144
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !190
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !201
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_115ARMExpandPseudo8ExpandMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_:bb.a
  %i.aak = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #20 ; 0 uses
  br label %bb.et

bb.au:                                            ; preds = %bb.a, %bb.a
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !161
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  %i.aao = load i8, ptr %i.aan, align 8, !tbaa !765, !range !18, !noundef !19
  %i.aap = trunc nuw i8 %i.aao to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %129) #20
  %i.aaq = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.0260.0.copyload = load ptr, ptr %i.aaq, align 8, !tbaa !191
  store ptr %.sroa.0260.0.copyload, ptr %129, align 8, !tbaa !191
  %i.aar = getelementptr inbounds nuw i8, ptr %129, i64 8
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aar, i8 0, i64 24, i1 false)
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !159
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 8
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !195
  %.neg1338 = select i1 %i.aap, i64 -4203, i64 -1006
  %i.aaw = getelementptr inbounds [32 x i8], ptr %i.aav, i64 %.neg1338
  %i.aax = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !189
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 36
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !190
  %i.abb = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %129, ptr noundef nonnull align 8 dereferenceable(32) %i.aaw, i32 %i.aba) ; 2 uses
  %i.abc = extractvalue { ptr, ptr } %i.abb, 0    ; 4 uses
  %i.abd = extractvalue { ptr, ptr } %i.abb, 1    ; 4 uses
  %i.abe = load ptr, ptr %i.aax, align 8, !tbaa !189
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 80
  %i.abg = load i64, ptr %i.abf, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #20
  store i32 1, ptr %59, align 8, !alias.scope !797
  %i.abh = getelementptr inbounds nuw i8, ptr %59, i64 8
  store ptr null, ptr %i.abh, align 8, !tbaa !198, !alias.scope !797
  %i.abi = getelementptr inbounds nuw i8, ptr %59, i64 16
  store i64 %i.abg, ptr %i.abi, align 8, !tbaa !190, !alias.scope !797
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.abd, ptr noundef nonnull align 8 dereferenceable(1065) %i.abc, ptr noundef nonnull align 8 dereferenceable(32) %59) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #20
  %i.abj = load ptr, ptr %i.aax, align 8, !tbaa !189
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 112
  %i.abl = load i64, ptr %i.abk, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #20
  store i32 1, ptr %58, align 8, !alias.scope !798
  %i.abm = getelementptr inbounds nuw i8, ptr %58, i64 8
  store ptr null, ptr %i.abm, align 8, !tbaa !198, !alias.scope !798
  %i.abn = getelementptr inbounds nuw i8, ptr %58, i64 16
  store i64 %i.abl, ptr %i.abn, align 8, !tbaa !190, !alias.scope !798
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.abd, ptr noundef nonnull align 8 dereferenceable(1065) %i.abc, ptr noundef nonnull align 8 dereferenceable(32) %58) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #20
  %i.abo = load ptr, ptr %i.aax, align 8, !tbaa !189
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 128
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.abd, ptr noundef nonnull align 8 dereferenceable(1065) %i.abc, ptr noundef nonnull align 8 dereferenceable(32) %i.abp) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #20
  %i.abq = load ptr, ptr %i.aax, align 8, !tbaa !189
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %130, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.abr, i64 32, i1 false), !tbaa.struct !370
  %i.abs = load i32, ptr %130, align 8, !alias.scope !799
  %i.abt = or i32 %i.abs, 33554432
  store i32 %i.abt, ptr %130, align 8, !alias.scope !799
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.abd, ptr noundef nonnull align 8 dereferenceable(1065) %i.abc, ptr noundef nonnull align 8 dereferenceable(32) %130) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #20
  %i.abu = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #20 ; 0 uses
  br label %bb.et

bb.av:                                            ; preds = %bb.a, %bb.a
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !161
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  %i.aby = load i8, ptr %i.abx, align 8, !tbaa !765, !range !18, !noundef !19
  %i.abz = trunc nuw i8 %i.aby to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %131) #20
  %i.aca = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.0255.0.copyload = load ptr, ptr %i.aca, align 8, !tbaa !191
  store ptr %.sroa.0255.0.copyload, ptr %131, align 8, !tbaa !191
  %i.acb = getelementptr inbounds nuw i8, ptr %131, i64 8
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.acb, i8 0, i64 24, i1 false)
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !159
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !195
  %.neg1337 = select i1 %i.abz, i64 -4202, i64 -1005
  %i.acg = getelementptr inbounds [32 x i8], ptr %i.acf, i64 %.neg1337
  %i.ach = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !189
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 36
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !190
  %i.acl = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %131, ptr noundef nonnull align 8 dereferenceable(32) %i.acg, i32 %i.ack) ; 2 uses
  %i.acm = extractvalue { ptr, ptr } %i.acl, 0    ; 5 uses
  %i.acn = extractvalue { ptr, ptr } %i.acl, 1    ; 5 uses
  %i.aco = load ptr, ptr %i.ach, align 8, !tbaa !189
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 80
  %i.acq = load i64, ptr %i.acp, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #20
  store i32 1, ptr %57, align 8, !alias.scope !800
  %i.acr = getelementptr inbounds nuw i8, ptr %57, i64 8
  store ptr null, ptr %i.acr, align 8, !tbaa !198, !alias.scope !800
  %i.acs = getelementptr inbounds nuw i8, ptr %57, i64 16
  store i64 %i.acq, ptr %i.acs, align 8, !tbaa !190, !alias.scope !800
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.acn, ptr noundef nonnull align 8 dereferenceable(1065) %i.acm, ptr noundef nonnull align 8 dereferenceable(32) %57) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #20
  %i.act = load ptr, ptr %i.ach, align 8, !tbaa !189
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 112
  %i.acv = load i64, ptr %i.acu, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #20
  store i32 1, ptr %56, align 8, !alias.scope !801
  %i.acw = getelementptr inbounds nuw i8, ptr %56, i64 8
  store ptr null, ptr %i.acw, align 8, !tbaa !198, !alias.scope !801
  %i.acx = getelementptr inbounds nuw i8, ptr %56, i64 16
  store i64 %i.acv, ptr %i.acx, align 8, !tbaa !190, !alias.scope !801
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.acn, ptr noundef nonnull align 8 dereferenceable(1065) %i.acm, ptr noundef nonnull align 8 dereferenceable(32) %56) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20
  %i.acy = load ptr, ptr %i.ach, align 8, !tbaa !189
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 128
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.acn, ptr noundef nonnull align 8 dereferenceable(1065) %i.acm, ptr noundef nonnull align 8 dereferenceable(32) %i.acz) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %132) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %132, i8 0, i64 32, i1 false), !alias.scope !802
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.acn, ptr noundef nonnull align 8 dereferenceable(1065) %i.acm, ptr noundef nonnull align 8 dereferenceable(32) %132) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %133) #20
  %i.ada = load ptr, ptr %i.ach, align 8, !tbaa !189
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %133, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.adb, i64 32, i1 false), !tbaa.struct !370
  %i.adc = load i32, ptr %133, align 8, !alias.scope !803
  %i.add = or i32 %i.adc, 33554432
  store i32 %i.add, ptr %133, align 8, !alias.scope !803
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.acn, ptr noundef nonnull align 8 dereferenceable(1065) %i.acm, ptr noundef nonnull align 8 dereferenceable(32) %133) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #20
  %i.ade = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #20 ; 0 uses
  br label %bb.et

bb.aw:                                            ; preds = %bb.a, %bb.a
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !161
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 8
  %i.adi = load i8, ptr %i.adh, align 8, !tbaa !765, !range !18, !noundef !19
  %i.adj = trunc nuw i8 %i.adi to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %134) #20
  %i.adk = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.0250.0.copyload = load ptr, ptr %i.adk, align 8, !tbaa !191
  store ptr %.sroa.0250.0.copyload, ptr %134, align 8, !tbaa !191
  %i.adl = getelementptr inbounds nuw i8, ptr %134, i64 8
  %i.adm = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.adl, i8 0, i64 24, i1 false)
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !159
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 8
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !195
  %.neg1336 = select i1 %i.adj, i64 -4217, i64 -1863
  %i.adq = getelementptr inbounds [32 x i8], ptr %i.adp, i64 %.neg1336
  %i.adr = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !189
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 36
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !190
  %i.adv = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %134, ptr noundef nonnull align 8 dereferenceable(32) %i.adq, i32 %i.adu) ; 2 uses
  %i.adw = extractvalue { ptr, ptr } %i.adv, 0    ; 5 uses
  %i.adx = extractvalue { ptr, ptr } %i.adv, 1    ; 5 uses
  %i.ady = load ptr, ptr %i.adr, align 8, !tbaa !189
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 80
  %i.aea = load i64, ptr %i.adz, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #20
  store i32 1, ptr %55, align 8, !alias.scope !804
  %i.aeb = getelementptr inbounds nuw i8, ptr %55, i64 8
  store ptr null, ptr %i.aeb, align 8, !tbaa !198, !alias.scope !804
  %i.aec = getelementptr inbounds nuw i8, ptr %55, i64 16
  store i64 %i.aea, ptr %i.aec, align 8, !tbaa !190, !alias.scope !804
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.adx, ptr noundef nonnull align 8 dereferenceable(1065) %i.adw, ptr noundef nonnull align 8 dereferenceable(32) %55) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #20
  %i.aed = load ptr, ptr %i.adr, align 8, !tbaa !189
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 112
  %i.aef = load i64, ptr %i.aee, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #20
  store i32 1, ptr %54, align 8, !alias.scope !805
  %i.aeg = getelementptr inbounds nuw i8, ptr %54, i64 8
  store ptr null, ptr %i.aeg, align 8, !tbaa !198, !alias.scope !805
  %i.aeh = getelementptr inbounds nuw i8, ptr %54, i64 16
  store i64 %i.aef, ptr %i.aeh, align 8, !tbaa !190, !alias.scope !805
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.adx, ptr noundef nonnull align 8 dereferenceable(1065) %i.adw, ptr noundef nonnull align 8 dereferenceable(32) %54) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #20
  %i.aei = load ptr, ptr %i.adr, align 8, !tbaa !189
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 128
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.adx, ptr noundef nonnull align 8 dereferenceable(1065) %i.adw, ptr noundef nonnull align 8 dereferenceable(32) %i.aej) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %135, i8 0, i64 32, i1 false), !alias.scope !806
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.adx, ptr noundef nonnull align 8 dereferenceable(1065) %i.adw, ptr noundef nonnull align 8 dereferenceable(32) %135) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %136) #20
  %i.aek = load ptr, ptr %i.adr, align 8, !tbaa !189
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %136, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ael, i64 32, i1 false), !tbaa.struct !370
  %i.aem = load i32, ptr %136, align 8, !alias.scope !807
  %i.aen = or i32 %i.aem, 33554432
  store i32 %i.aen, ptr %136, align 8, !alias.scope !807
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.adx, ptr noundef nonnull align 8 dereferenceable(1065) %i.adw, ptr noundef nonnull align 8 dereferenceable(32) %136) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #20
  %i.aeo = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #20 ; 0 uses
  br label %bb.et

188:                                              ; preds = %bb.a
  br label %switch.lookup.a

189:                                              ; preds = %bb.a
  br label %switch.lookup.a

190:                                              ; preds = %bb.a
  br label %switch.lookup.a

switch.lookup.a:                                  ; preds = %bb.a, %190, %189, %188
  %.0728.neg = phi i64 [ -4260, %190 ], [ -4192, %188 ], [ -4059, %189 ], [ -4190, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #20
  %i.aep = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.0245.0.copyload = load ptr, ptr %i.aep, align 8, !tbaa !191
  store ptr %.sroa.0245.0.copyload, ptr %137, align 8, !tbaa !191
  %i.aeq = getelementptr inbounds nuw i8, ptr %137, i64 8
  %i.aer = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aeq, i8 0, i64 24, i1 false)
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !159
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 8
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !195
  %i.aev = getelementptr inbounds [32 x i8], ptr %i.aeu, i64 %.0728.neg
  %i.aew = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.aex = load ptr, ptr %i.aew, align 8, !tbaa !189
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 36
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !190
  %i.afa = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %137, ptr noundef nonnull align 8 dereferenceable(32) %i.aev, i32 %i.aez) ; 2 uses
  %i.afb = extractvalue { ptr, ptr } %i.afa, 0    ; 6 uses
  %i.afc = extractvalue { ptr, ptr } %i.afa, 1    ; 6 uses
  %i.afd = load ptr, ptr %i.aew, align 8, !tbaa !189
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 64
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.afc, ptr noundef nonnull align 8 dereferenceable(1065) %i.afb, ptr noundef nonnull align 8 dereferenceable(32) %i.afe) #20
  %i.aff = load ptr, ptr %i.aew, align 8, !tbaa !189
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 112
  %i.afh = load i64, ptr %i.afg, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #20
  store i32 1, ptr %53, align 8, !alias.scope !808
  %i.afi = getelementptr inbounds nuw i8, ptr %53, i64 8
  store ptr null, ptr %i.afi, align 8, !tbaa !198, !alias.scope !808
  %i.afj = getelementptr inbounds nuw i8, ptr %53, i64 16
  store i64 %i.afh, ptr %i.afj, align 8, !tbaa !190, !alias.scope !808
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.afc, ptr noundef nonnull align 8 dereferenceable(1065) %i.afb, ptr noundef nonnull align 8 dereferenceable(32) %53) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #20
  %i.afk = load ptr, ptr %i.aew, align 8, !tbaa !189
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 144
  %i.afm = load i64, ptr %i.afl, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #20
  store i32 1, ptr %52, align 8, !alias.scope !809
  %i.afn = getelementptr inbounds nuw i8, ptr %52, i64 8
  store ptr null, ptr %i.afn, align 8, !tbaa !198, !alias.scope !809
  %i.afo = getelementptr inbounds nuw i8, ptr %52, i64 16
  store i64 %i.afm, ptr %i.afo, align 8, !tbaa !190, !alias.scope !809
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.afc, ptr noundef nonnull align 8 dereferenceable(1065) %i.afb, ptr noundef nonnull align 8 dereferenceable(32) %52) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #20
  %i.afp = load ptr, ptr %i.aew, align 8, !tbaa !189
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 160
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.afc, ptr noundef nonnull align 8 dereferenceable(1065) %i.afb, ptr noundef nonnull align 8 dereferenceable(32) %i.afq) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %138, i8 0, i64 32, i1 false), !alias.scope !810
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.afc, ptr noundef nonnull align 8 dereferenceable(1065) %i.afb, ptr noundef nonnull align 8 dereferenceable(32) %138) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %139) #20
  %i.afr = load ptr, ptr %i.aew, align 8, !tbaa !189
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %139, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.afs, i64 32, i1 false), !tbaa.struct !370
  %i.aft = load i32, ptr %139, align 8, !alias.scope !811
  %i.afu = or i32 %i.aft, 33554432
  store i32 %i.afu, ptr %139, align 8, !alias.scope !811
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.afc, ptr noundef nonnull align 8 dereferenceable(1065) %i.afb, ptr noundef nonnull align 8 dereferenceable(32) %139) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #20
  %i.afv = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #20 ; 0 uses
  br label %bb.et

bb.ax:                                            ; preds = %bb.a
  %i.afw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !371
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 32
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !361 ; 5 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !159
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 72
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !820, !nonnull !19, !align !150 ; 8 uses
  %i.age = tail call noundef zeroext i1 @_ZNK4llvm19ARMBaseRegisterInfo14hasBasePointerERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(320) %i.agd, ptr noundef nonnull align 8 dereferenceable(1065) %i.afz) #20
  br i1 %i.age, label %bb.ay, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread

bb.ay:                                            ; preds = %bb.ax
  %i.agf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !161
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 24
  %i.agi = load i32, ptr %i.agh, align 8, !tbaa !821
  %i.agj = load ptr, ptr %i.agd, align 8, !tbaa !13
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 664
  %i.agl = load ptr, ptr %i.agk, align 8
  %i.agm = tail call i32 %i.agl(ptr noundef nonnull align 8 dereferenceable(320) %i.agd, ptr noundef nonnull align 8 dereferenceable(1065) %i.afz) #20 ; 3 uses
  %i.agn = load ptr, ptr %i.agf, align 8, !tbaa !161 ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 8
  %i.agp = load i8, ptr %i.ago, align 8, !tbaa !765, !range !18, !noundef !19
  %i.agq = trunc nuw i8 %i.agp to i1              ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agn, i64 9
  %i.ags = load i8, ptr %i.agr, align 1, !range !18
  %i.agt = trunc nuw i8 %i.ags to i1
  %i.agu = select i1 %i.agq, i1 %i.agt, i1 false
  %i.agv = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.agw = sub nsw i32 0, %i.agi                  ; 3 uses
  %i.agx = load ptr, ptr %i.aga, align 8, !tbaa !159 ; 3 uses
  br i1 %i.agu, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @_ZN4llvm22emitT2RegPlusImmediateERNS_17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_iNS_5ARMCC9CondCodesES9_RKNS_16ARMBaseInstrInfoEj(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef nonnull align 8 dereferenceable(8) %i.agv, i32 80, i32 %i.agm, i32 noundef %i.agw, i32 noundef 14, i32 0, ptr noundef nonnull align 8 dereferenceable(272) %i.agx, i32 noundef 0) #20
  br label %bb.bd

bb.ba:                                            ; preds = %bb.ay
  br i1 %i.agq, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN4llvm25emitThumbRegPlusImmediateERNS_17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_iRKNS_15TargetInstrInfoERKNS_19ARMBaseRegisterInfoEj(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef nonnull align 8 dereferenceable(8) %i.agv, i32 80, i32 %i.agm, i32 noundef %i.agw, ptr noundef nonnull align 8 dereferenceable(112) %i.agx, ptr noundef nonnull align 8 dereferenceable(320) %i.agd, i32 noundef 0) #20
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  call void @_ZN4llvm23emitARMRegPlusImmediateERNS_17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_iNS_5ARMCC9CondCodesES9_RKNS_16ARMBaseInstrInfoEj(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef nonnull align 8 dereferenceable(8) %i.agv, i32 80, i32 %i.agm, i32 noundef %i.agw, i32 noundef 14, i32 0, ptr noundef nonnull align 8 dereferenceable(272) %i.agx, i32 noundef 0) #20
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc, %bb.az
  %i.agy = load ptr, ptr %i.agd, align 8, !tbaa !13
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 536
  %i.aha = load ptr, ptr %i.agz, align 8
  %i.ahb = call noundef zeroext i1 %i.aha(ptr noundef nonnull align 8 dereferenceable(316) %i.agd, ptr noundef nonnull align 8 dereferenceable(1065) %i.afz) #20, !inline_history !561
  br i1 %i.ahb, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit: ; preds = %bb.bd
  %i.ahc = load ptr, ptr %i.agd, align 8, !tbaa !13
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 528
  %i.ahe = load ptr, ptr %i.ahd, align 8
  %i.ahf = call noundef zeroext i1 %i.ahe(ptr noundef nonnull align 8 dereferenceable(316) %i.agd, ptr noundef nonnull align 8 dereferenceable(1065) %i.afz) #20, !inline_history !561
  br i1 %i.ahf, label %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit834, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit834: ; preds = %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.afz, i64 48
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !822
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 64
  %.sroa.0.0.copyload.i831 = load i8, ptr %i.ahi, align 8, !tbaa !190
  %i.ahj = load ptr, ptr %i.agf, align 8, !tbaa !161
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 8
  %i.ahl = load i8, ptr %i.ahk, align 8, !tbaa !765, !range !18, !noundef !19
  %i.ahm = trunc nuw i8 %i.ahl to i1
  %.sroa.0223.0.copyload = load ptr, ptr %83, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #20
  %i.ahn = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.0222.0.copyload = load ptr, ptr %i.ahn, align 8, !tbaa !191
  store ptr %.sroa.0222.0.copyload, ptr %140, align 8, !tbaa !191
  %i.aho = getelementptr inbounds nuw i8, ptr %140, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aho, i8 0, i64 24, i1 false)
  %i.ahp = load ptr, ptr %i.aga, align 8, !tbaa !159
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 8
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !195
  %.neg1335 = select i1 %i.ahm, i64 -4072, i64 -839
  %i.ahs = getelementptr inbounds [32 x i8], ptr %i.ahr, i64 %.neg1335
  %i.aht = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %.sroa.0223.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %140, ptr noundef nonnull align 8 dereferenceable(32) %i.ahs, i32 80) ; 2 uses
  %i.ahu = extractvalue { ptr, ptr } %i.aht, 0    ; 5 uses
  %i.ahv = extractvalue { ptr, ptr } %i.aht, 1    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #20
  %i.ahw = getelementptr inbounds nuw i8, ptr %51, i64 8
  store ptr null, ptr %i.ahw, align 8, !tbaa !198, !alias.scope !823
  %i.ahx = getelementptr inbounds nuw i8, ptr %51, i64 4
  store i32 80, ptr %i.ahx, align 4, !tbaa !190, !alias.scope !823
  %i.ahy = getelementptr inbounds nuw i8, ptr %51, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ahy, i8 0, i64 16, i1 false), !alias.scope !823
  store i32 67108864, ptr %51, align 8, !alias.scope !823
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ahv, ptr noundef nonnull align 8 dereferenceable(1065) %i.ahu, ptr noundef nonnull align 8 dereferenceable(32) %51) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #20
  %i.ahz = zext nneg i8 %.sroa.0.0.copyload.i831 to i64
  %notmask = shl nsw i64 -1, %i.ahz
  %i.aia = xor i64 %notmask, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #20
  store i32 1, ptr %50, align 8, !alias.scope !824
  %i.aib = getelementptr inbounds nuw i8, ptr %50, i64 8
  store ptr null, ptr %i.aib, align 8, !tbaa !198, !alias.scope !824
  %i.aic = getelementptr inbounds nuw i8, ptr %50, i64 16
  store i64 %i.aia, ptr %i.aic, align 8, !tbaa !190, !alias.scope !824
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ahv, ptr noundef nonnull align 8 dereferenceable(1065) %i.ahu, ptr noundef nonnull align 8 dereferenceable(32) %50) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #20
  store i32 1, ptr %141, align 8, !alias.scope !825
  %i.aid = getelementptr inbounds nuw i8, ptr %141, i64 8
  store ptr null, ptr %i.aid, align 8, !tbaa !198, !alias.scope !825
  %i.aie = getelementptr inbounds nuw i8, ptr %141, i64 16
  store i64 14, ptr %i.aie, align 8, !tbaa !190, !alias.scope !825
  %i.aif = getelementptr inbounds nuw i8, ptr %141, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aif, i8 0, i64 32, i1 false), !alias.scope !826
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ahv, ptr noundef nonnull align 8 dereferenceable(1065) %i.ahu, ptr noundef nonnull align 8 dereferenceable(32) %141) #20
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ahv, ptr noundef nonnull align 8 dereferenceable(1065) %i.ahu, ptr noundef nonnull align 8 dereferenceable(32) %i.aif) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %142) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %142, i8 0, i64 32, i1 false), !alias.scope !827
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ahv, ptr noundef nonnull align 8 dereferenceable(1065) %i.ahu, ptr noundef nonnull align 8 dereferenceable(32) %142) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #20
  br label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread: ; preds = %bb.bd, %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit, %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit834, %bb.ax
  %i.aig = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #20 ; 0 uses
  br label %bb.et

_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit837: ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %143) #20
  %i.aih = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.0219.0.copyload = load ptr, ptr %i.aih, align 8, !tbaa !191
  store ptr %.sroa.0219.0.copyload, ptr %143, align 8, !tbaa !191
  %i.aii = getelementptr inbounds nuw i8, ptr %143, i64 8
  %i.aij = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aii, i8 0, i64 24, i1 false)
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !159
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 8
  %i.aim = load ptr, ptr %i.ail, align 8, !tbaa !195
  %i.ain = getelementptr inbounds i8, ptr %i.aim, i64 -32288
  %i.aio = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !189
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 4
  %i.air = load i32, ptr %i.aiq, align 4, !tbaa !190
  %i.ais = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %143, ptr noundef nonnull align 8 dereferenceable(32) %i.ain, i32 %i.air) ; 2 uses
  %i.ait = extractvalue { ptr, ptr } %i.ais, 0    ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_115ARMExpandPseudo8ExpandMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_:bb.a
  %i.axm = load ptr, ptr %i.axl, align 8, !tbaa !189 ; 3 uses
  %i.axn = load i32, ptr %i.axm, align 8
  %i.axo = and i32 %i.axn, 83886080
  %i.axp = icmp eq i32 %i.axo, 83886080
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axm, i64 4
  %i.axr = load i32, ptr %i.axq, align 4, !tbaa !190 ; 3 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axm, i64 32
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.axk, ptr noundef nonnull align 8 dereferenceable(1065) %i.axi, ptr noundef nonnull align 8 dereferenceable(32) %i.axs) #20
  %i.axt = load ptr, ptr %i.axl, align 8, !tbaa !189
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axt, i64 64
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.axk, ptr noundef nonnull align 8 dereferenceable(1065) %i.axi, ptr noundef nonnull align 8 dereferenceable(32) %i.axu) #20
  %i.axv = load ptr, ptr %i.axl, align 8, !tbaa !189
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 96
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.axk, ptr noundef nonnull align 8 dereferenceable(1065) %i.axi, ptr noundef nonnull align 8 dereferenceable(32) %i.axw) #20
  %i.axx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !160
  %i.axz = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.axy, i32 %i.axr, i32 noundef 1) #20
  %i.aya = load ptr, ptr %i.axx, align 8, !tbaa !160
  %i.ayb = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.aya, i32 %i.axr, i32 noundef 2) #20
  %i.ayc = select i1 %i.axp, i16 16, i16 0        ; 2 uses
  %i.ayd = or disjoint i16 %i.ayc, 2              ; 2 uses
  %i.aye = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4llvm19MachineInstrBuilder6addRegENS_8RegisterENS_8RegStateEj(ptr noundef nonnull align 8 dereferenceable(16) %171, i32 %i.axz, i16 noundef zeroext %i.ayd, i32 noundef 0)
  %i.ayf = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4llvm19MachineInstrBuilder6addRegENS_8RegisterENS_8RegStateEj(ptr noundef nonnull align 8 dereferenceable(16) %i.aye, i32 %i.ayb, i16 noundef zeroext %i.ayd, i32 noundef 0) ; 0 uses
  %i.ayg = or disjoint i16 %i.ayc, 6
  %i.ayh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4llvm19MachineInstrBuilder6addRegENS_8RegisterENS_8RegStateEj(ptr noundef nonnull align 8 dereferenceable(16) %171, i32 %i.axr, i16 noundef zeroext %i.ayg, i32 noundef 0) ; 0 uses
  %i.ayi = load ptr, ptr %i.axj, align 8, !tbaa !201
  %i.ayj = load ptr, ptr %171, align 8, !tbaa !202
  call void @_ZN4llvm12MachineInstr15copyImplicitOpsERNS_15MachineFunctionERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ayi, ptr noundef nonnull align 8 dereferenceable(1065) %i.ayj, ptr noundef nonnull align 8 dereferenceable(80) %2) #20
  %i.ayk = load ptr, ptr %i.axj, align 8, !tbaa !201
  %i.ayl = load ptr, ptr %171, align 8, !tbaa !202
  call void @_ZN4llvm12MachineInstr12cloneMemRefsERNS_15MachineFunctionERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ayk, ptr noundef nonnull align 8 dereferenceable(1065) %i.ayl, ptr noundef nonnull align 8 dereferenceable(80) %2) #20
  %i.aym = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #20
  br label %bb.et

bb.cg:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %173) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %174) #20
  %i.ayn = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.073.0.copyload = load ptr, ptr %i.ayn, align 8, !tbaa !191
  store ptr %.sroa.073.0.copyload, ptr %174, align 8, !tbaa !191
  %i.ayo = getelementptr inbounds nuw i8, ptr %174, i64 8
  %i.ayp = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ayo, i8 0, i64 24, i1 false)
  %i.ayq = load ptr, ptr %i.ayp, align 8, !tbaa !159
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 8
  %i.ays = load ptr, ptr %i.ayr, align 8, !tbaa !195
  %i.ayt = getelementptr inbounds i8, ptr %i.ays, i64 -124544
  %i.ayu = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %174, ptr noundef nonnull align 8 dereferenceable(32) %i.ayt) ; 2 uses
  %i.ayv = extractvalue { ptr, ptr } %i.ayu, 0    ; 4 uses
  store ptr %i.ayv, ptr %173, align 8
  %i.ayw = getelementptr inbounds nuw i8, ptr %173, i64 8 ; 4 uses
  %i.ayx = extractvalue { ptr, ptr } %i.ayu, 1    ; 4 uses
  store ptr %i.ayx, ptr %i.ayw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #20
  %i.ayy = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ayz = load ptr, ptr %i.ayy, align 8, !tbaa !189 ; 3 uses
  %i.aza = load i32, ptr %i.ayz, align 8          ; 2 uses
  %i.azb = lshr i32 %i.aza, 26
  %i.azc = lshr i32 %i.aza, 24
  %.lobit.i = and i32 %i.azc, 1
  %i.azd = xor i32 %.lobit.i, 1
  %i.aze = and i32 %i.azd, %i.azb
  %.not1324 = icmp eq i32 %i.aze, 0               ; 2 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %i.ayz, i64 4
  %i.azg = load i32, ptr %i.azf, align 4, !tbaa !190 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %175) #20
  %i.azh = getelementptr inbounds nuw i8, ptr %i.ayz, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %175, ptr noundef nonnull align 8 dereferenceable(32) %i.azh, i64 32, i1 false), !tbaa.struct !370
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ayx, ptr noundef nonnull align 8 dereferenceable(1065) %i.ayv, ptr noundef nonnull align 8 dereferenceable(32) %175) #20
  %i.azi = load ptr, ptr %i.ayy, align 8, !tbaa !189
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azi, i64 64
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ayx, ptr noundef nonnull align 8 dereferenceable(1065) %i.ayv, ptr noundef nonnull align 8 dereferenceable(32) %i.azj) #20
  %i.azk = load ptr, ptr %i.ayy, align 8, !tbaa !189
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 96
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ayx, ptr noundef nonnull align 8 dereferenceable(1065) %i.ayv, ptr noundef nonnull align 8 dereferenceable(32) %i.azl) #20
  %i.azm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.azn = load ptr, ptr %i.azm, align 8, !tbaa !160
  %i.azo = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.azn, i32 %i.azg, i32 noundef 1) #20
  %i.azp = load ptr, ptr %i.azm, align 8, !tbaa !160
  %i.azq = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.azp, i32 %i.azg, i32 noundef 2) #20
  %i.azr = select i1 %.not1324, i16 0, i16 8      ; 2 uses
  %i.azs = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4llvm19MachineInstrBuilder6addRegENS_8RegisterENS_8RegStateEj(ptr noundef nonnull align 8 dereferenceable(16) %173, i32 %i.azo, i16 noundef zeroext %i.azr, i32 noundef 0)
  %i.azt = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4llvm19MachineInstrBuilder6addRegENS_8RegisterENS_8RegStateEj(ptr noundef nonnull align 8 dereferenceable(16) %i.azs, i32 %i.azq, i16 noundef zeroext %i.azr, i32 noundef 0) ; 0 uses
  br i1 %.not1324, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.azu = load ptr, ptr %i.ayw, align 8, !tbaa !201
  %i.azv = load ptr, ptr %i.azm, align 8, !tbaa !160
  %i.azw = call noundef zeroext i1 @_ZN4llvm12MachineInstr17addRegisterKilledENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %i.azu, i32 %i.azg, ptr noundef %i.azv, i1 noundef zeroext true) #20 ; 0 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.azx = load ptr, ptr %i.ayw, align 8, !tbaa !201
  %i.azy = load ptr, ptr %173, align 8, !tbaa !202
  call void @_ZN4llvm12MachineInstr15copyImplicitOpsERNS_15MachineFunctionERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.azx, ptr noundef nonnull align 8 dereferenceable(1065) %i.azy, ptr noundef nonnull align 8 dereferenceable(80) %2) #20
  %i.azz = load ptr, ptr %i.ayw, align 8, !tbaa !201
  %i.baa = load ptr, ptr %173, align 8, !tbaa !202
  call void @_ZN4llvm12MachineInstr12cloneMemRefsERNS_15MachineFunctionERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.azz, ptr noundef nonnull align 8 dereferenceable(1065) %i.baa, ptr noundef nonnull align 8 dereferenceable(80) %2) #20
  %i.bab = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %175) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #20
  br label %bb.et

bb.cj:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.bac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bad = load ptr, ptr %i.bac, align 8, !tbaa !371 ; 2 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %bb.cj
  %.04.i.i.i.i.i = phi i64 [ 288, %bb.cj ], [ %.1.i.i.i.i.i, %bb.ck ] ; 2 uses
  %.0113.i.i.i.i.i = phi ptr [ @_ZL13NEONLdStTable, %bb.cj ], [ %.112.i.i.i.i.i, %bb.ck ] ; 2 uses
  %i.bae = lshr i64 %.04.i.i.i.i.i, 1             ; 3 uses
  %i.baf = getelementptr inbounds nuw [12 x i8], ptr %.0113.i.i.i.i.i, i64 %i.bae ; 2 uses
  %.val.i.i.i.i.i = load i16, ptr %i.baf, align 2, !tbaa !879
  %i.bag = zext i16 %.val.i.i.i.i.i to i32
  %i.bah = icmp samesign ugt i32 %i.d, %i.bag     ; 2 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %i.baf, i64 12
  %i.baj = xor i64 %i.bae, -1
  %i.bak = add nsw i64 %.04.i.i.i.i.i, %i.baj
  %.112.i.i.i.i.i = select i1 %i.bah, ptr %i.bai, ptr %.0113.i.i.i.i.i ; 9 uses
  %.1.i.i.i.i.i = select i1 %i.bah, i64 %i.bak, i64 %i.bae ; 2 uses
  %i.bal = icmp sgt i64 %.1.i.i.i.i.i, 0
  br i1 %i.bal, label %bb.ck, label %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i, !llvm.loop !648

_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i: ; preds = %bb.ck
  %.not.i.i = icmp ne ptr %.112.i.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL13NEONLdStTable, i64 3456)
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.bam = load i16, ptr %.112.i.i.i.i.i, align 2, !tbaa !879
  %i.ban = zext i16 %i.bam to i32
  %i.bao = icmp eq i32 %i.d, %i.ban
  tail call void @llvm.assume(i1 %i.bao)
  %i.bap = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i.i, i64 7
  %i.baq = load i8, ptr %i.bap, align 1, !tbaa !880 ; 5 uses
  %i.bar = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i.i, i64 8
  %i.bas = load i8, ptr %i.bar, align 2, !tbaa !881 ; 3 uses
  %i.bat = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.036.0.copyload.i = load ptr, ptr %i.bat, align 8, !tbaa !191
  %i.bau = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bav = load ptr, ptr %i.bau, align 8, !tbaa !159
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bav, i64 8
  %i.bax = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i.i, i64 2
  %i.bay = load i16, ptr %i.bax, align 2, !tbaa !882 ; 3 uses
  %i.baz = load ptr, ptr %i.baw, align 8, !tbaa !195
  %i.bba = zext i16 %i.bay to i64
  %i.bbb = sub nsw i64 0, %i.bba
  %i.bbc = getelementptr inbounds [32 x i8], ptr %i.baz, i64 %i.bbb
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bad, i64 32
  %i.bbe = load ptr, ptr %i.bbd, align 8, !tbaa !361 ; 16 uses
  %i.bbf = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.bbe, ptr noundef nonnull align 8 dereferenceable(32) %i.bbc, ptr %.sroa.036.0.copyload.i, i1 noundef zeroext false) #20 ; 21 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bad, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bbg, ptr noundef %i.bbf) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.bbh = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.bbi = inttoptr i64 %i.bbh to ptr
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbf, i64 8
  store ptr %2, ptr %i.bbj, align 8, !tbaa !173
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i = load i64, ptr %i.bbf, align 8
  %i.bbk = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i, 7
  %i.bbl = or disjoint i64 %i.bbk, %i.bbh
  store i64 %i.bbl, ptr %i.bbf, align 8
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbi, i64 8
  store ptr %i.bbf, ptr %i.bbm, align 8, !tbaa !173
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.bbn = ptrtoint ptr %i.bbf to i64
  %i.bbo = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, 7
  %i.bbp = or disjoint i64 %i.bbo, %i.bbn
  store i64 %i.bbp, ptr %2, align 8
  %i.bbq = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 8 uses
  %i.bbr = load ptr, ptr %i.bbq, align 8, !tbaa !189 ; 2 uses
  %i.bbs = load i32, ptr %i.bbr, align 8
  %i.bbt = and i32 %i.bbs, 83886080
  %.not44.not.not.i = icmp eq i32 %i.bbt, 83886080 ; 3 uses
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbr, i64 4
  %i.bbv = load i32, ptr %i.bbu, align 4, !tbaa !190 ; 6 uses
  switch i16 %i.bay, label %bb.cl [
    i16 2683, label %.critedge.i
    i16 2671, label %.critedge.i
    i16 2677, label %.critedge.i
    i16 2684, label %.critedge.i
    i16 2672, label %.critedge.i
    i16 2678, label %.critedge.i
    i16 2685, label %.critedge.i
    i16 2673, label %.critedge.i
    i16 2679, label %.critedge.i
  ]

bb.cl:                                            ; preds = %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i
  %i.bbw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bbx = load ptr, ptr %i.bbw, align 8, !tbaa !160 ; 4 uses
  %or.cond.i.i = icmp ult i8 %i.baq, 2
  br i1 %or.cond.i.i, label %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %switch.tableidx1420 = add i8 %i.baq, -2        ; 4 uses
  %i.bby = icmp ult i8 %switch.tableidx1420, 3
  br i1 %i.bby, label %switch.lookup1421, label %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i

switch.lookup1421:                                ; preds = %bb.cm
  %i.bbz = zext nneg i8 %switch.tableidx1420 to i64
  %switch.gep1422 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_115ARMExpandPseudo8ExpandMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.30, i64 %i.bbz
  %switch.load1423 = load i8, ptr %switch.gep1422, align 1
  %switch.ext = zext i8 %switch.load1423 to i32
  %i.bca = zext nneg i8 %switch.tableidx1420 to i64
  %switch.gep1424 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_115ARMExpandPseudo8ExpandMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.31, i64 %i.bca
  %switch.load1425 = load i8, ptr %switch.gep1424, align 1
  %switch.ext1426 = zext i8 %switch.load1425 to i32
  %narrow1474 = sub nuw nsw i8 9, %i.baq
  %switch.offset = zext nneg i8 %narrow1474 to i32
  %i.bcb = zext nneg i8 %switch.tableidx1420 to i64
  %switch.gep1427 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_115ARMExpandPseudo8ExpandMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.32, i64 %i.bcb
  %switch.load1428 = load i8, ptr %switch.gep1427, align 1
  %switch.ext1429 = zext i8 %switch.load1428 to i32
  br label %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i

_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i: ; preds = %bb.cm, %switch.lookup1421, %bb.cl
  %.sink106.i.i = phi i32 [ 1, %bb.cl ], [ %switch.ext, %switch.lookup1421 ], [ 2, %bb.cm ]
  %.sink105.i.i = phi i32 [ 2, %bb.cl ], [ %switch.ext1426, %switch.lookup1421 ], [ 4, %bb.cm ]
  %.sink104.i.i = phi i32 [ 3, %bb.cl ], [ %switch.offset, %switch.lookup1421 ], [ 6, %bb.cm ]
  %.sink103.i.i = phi i32 [ 4, %bb.cl ], [ %switch.ext1429, %switch.lookup1421 ], [ 8, %bb.cm ]
  %i.bcc = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.bbx, i32 %i.bbv, i32 noundef %.sink106.i.i) #20
  %i.bcd = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.bbx, i32 %i.bbv, i32 noundef %.sink105.i.i) #20
  %i.bce = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.bbx, i32 %i.bbv, i32 noundef %.sink104.i.i) #20
  %i.bcf = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.bbx, i32 %i.bbv, i32 noundef %.sink103.i.i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %i.bcg = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr null, ptr %i.bcg, align 8, !tbaa !198, !alias.scope !883
  %i.bch = select i1 %.not44.not.not.i, i32 83886080, i32 16777216 ; 4 uses
  %i.bci = getelementptr inbounds nuw i8, ptr %29, i64 4
  store i32 %i.bcc, ptr %i.bci, align 4, !tbaa !190, !alias.scope !883
  %i.bcj = getelementptr inbounds nuw i8, ptr %29, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bcj, i8 0, i64 16, i1 false), !alias.scope !883
  store i32 %i.bch, ptr %29, align 8, !alias.scope !883
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bbf, ptr noundef nonnull align 8 dereferenceable(1065) %i.bbe, ptr noundef nonnull align 8 dereferenceable(32) %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  %i.bck = icmp ugt i8 %i.bas, 1
  br i1 %i.bck, label %bb.cn, label %.thread43.i

.critedge.i:                                      ; preds = %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i, %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i, %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i, %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i, %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i, %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i, %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i, %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i, %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i
  %i.bcl = icmp eq i8 %i.baq, 4
  %.096.i = select i1 %i.bcl, i32 1, i32 2
  %i.bcm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bcn = load ptr, ptr %i.bcm, align 8, !tbaa !160
  %i.bco = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.bcn, i32 %i.bbv, i32 noundef %.096.i) #20
  %i.bcp = load ptr, ptr %i.bcm, align 8, !tbaa !160
  %i.bcq = tail call i32 @_ZNK4llvm14MCRegisterInfo19getMatchingSuperRegENS_10MCRegisterEjPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(240) %i.bcp, i32 %i.bco, i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 3968)) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %i.bcr = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr null, ptr %i.bcr, align 8, !tbaa !198, !alias.scope !884
  %i.bcs = select i1 %.not44.not.not.i, i32 83886080, i32 16777216
  %i.bct = getelementptr inbounds nuw i8, ptr %28, i64 4
  store i32 %i.bcq, ptr %i.bct, align 4, !tbaa !190, !alias.scope !884
  %i.bcu = getelementptr inbounds nuw i8, ptr %28, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bcu, i8 0, i64 16, i1 false), !alias.scope !884
  store i32 %i.bcs, ptr %28, align 8, !alias.scope !884
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bbf, ptr noundef nonnull align 8 dereferenceable(1065) %i.bbe, ptr noundef nonnull align 8 dereferenceable(32) %28) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %.thread43.i

bb.cn:                                            ; preds = %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i
  %i.bcv = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i.i, i64 10
  %i.bcw = load i8, ptr %i.bcv, align 2, !tbaa !885, !range !18, !noundef !19
  %i.bcx = trunc nuw i8 %i.bcw to i1
  br i1 %i.bcx, label %bb.co, label %.thread43.i

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.bcy = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr null, ptr %i.bcy, align 8, !tbaa !198, !alias.scope !886
  %i.bcz = getelementptr inbounds nuw i8, ptr %27, i64 4
  store i32 %i.bcd, ptr %i.bcz, align 4, !tbaa !190, !alias.scope !886
  %i.bda = getelementptr inbounds nuw i8, ptr %27, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bda, i8 0, i64 16, i1 false), !alias.scope !886
  store i32 %i.bch, ptr %27, align 8, !alias.scope !886
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bbf, ptr noundef nonnull align 8 dereferenceable(1065) %i.bbe, ptr noundef nonnull align 8 dereferenceable(32) %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  %.not45.i = icmp eq i8 %i.bas, 2
  br i1 %.not45.i, label %.thread43.i, label %.thread49.i

.thread49.i:                                      ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  %i.bdb = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr null, ptr %i.bdb, align 8, !tbaa !198, !alias.scope !887
  %i.bdc = getelementptr inbounds nuw i8, ptr %26, i64 4
  store i32 %i.bce, ptr %i.bdc, align 4, !tbaa !190, !alias.scope !887
  %i.bdd = getelementptr inbounds nuw i8, ptr %26, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdd, i8 0, i64 16, i1 false), !alias.scope !887
  store i32 %i.bch, ptr %26, align 8, !alias.scope !887
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bbf, ptr noundef nonnull align 8 dereferenceable(1065) %i.bbe, ptr noundef nonnull align 8 dereferenceable(32) %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  %i.bde = icmp ugt i8 %i.bas, 3
  br i1 %i.bde, label %.thread50.i, label %.thread43.i

.thread50.i:                                      ; preds = %.thread49.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  %i.bdf = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr null, ptr %i.bdf, align 8, !tbaa !198, !alias.scope !888
  %i.bdg = getelementptr inbounds nuw i8, ptr %25, i64 4
  store i32 %i.bcf, ptr %i.bdg, align 4, !tbaa !190, !alias.scope !888
  %i.bdh = getelementptr inbounds nuw i8, ptr %25, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdh, i8 0, i64 16, i1 false), !alias.scope !888
  store i32 %i.bch, ptr %25, align 8, !alias.scope !888
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bbf, ptr noundef nonnull align 8 dereferenceable(1065) %i.bbe, ptr noundef nonnull align 8 dereferenceable(32) %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  br label %.thread43.i

.thread43.i:                                      ; preds = %.thread50.i, %.thread49.i, %bb.co, %bb.cn, %.critedge.i, %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i
  %i.bdi = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i.i, i64 5
  %i.bdj = load i8, ptr %i.bdi, align 1, !tbaa !889, !range !18, !noundef !19
  %i.bdk = trunc nuw i8 %i.bdj to i1
  br i1 %i.bdk, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.thread43.i
  %i.bdl = load ptr, ptr %i.bbq, align 8, !tbaa !189
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdl, i64 32
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bbf, ptr noundef nonnull align 8 dereferenceable(1065) %i.bbe, ptr noundef nonnull align 8 dereferenceable(32) %i.bdm) #20
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.thread43.i
  %.095.i = phi i32 [ 2, %bb.cp ], [ 1, %.thread43.i ] ; 3 uses
  %i.bdn = load ptr, ptr %i.bbq, align 8, !tbaa !189
  %i.bdo = zext nneg i32 %.095.i to i64           ; 2 uses
  %i.bdp = getelementptr inbounds nuw [32 x i8], ptr %i.bdn, i64 %i.bdo
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bbf, ptr noundef nonnull align 8 dereferenceable(1065) %i.bbe, ptr noundef nonnull align 8 dereferenceable(32) %i.bdp) #20
  %i.bdq = add nuw nsw i32 %.095.i, 2             ; 2 uses
  %i.bdr = load ptr, ptr %i.bbq, align 8, !tbaa !189
  %i.bds = getelementptr inbounds nuw [32 x i8], ptr %i.bdr, i64 %i.bdo
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bds, i64 32
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bbf, ptr noundef nonnull align 8 dereferenceable(1065) %i.bbe, ptr noundef nonnull align 8 dereferenceable(32) %i.bdt) #20
  %i.bdu = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i.i, i64 6
  %i.bdv = load i8, ptr %i.bdu, align 2, !tbaa !890, !range !18, !noundef !19
  %i.bdw = trunc nuw i8 %i.bdv to i1
  br i1 %i.bdw, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  %i.bdx = add nuw nsw i32 %.095.i, 3             ; 12 uses
  switch i16 %i.bay, label %bb.cs [
    i16 2622, label %bb.ct
    i16 2577, label %bb.ct
    i16 2592, label %bb.ct
    i16 2607, label %bb.ct
    i16 2628, label %bb.ct
    i16 2583, label %bb.ct
    i16 2598, label %bb.ct
    i16 2613, label %bb.ct
    i16 2684, label %bb.ct
    i16 2672, label %bb.ct
    i16 2678, label %bb.ct
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.bdy = load ptr, ptr %i.bbq, align 8, !tbaa !189
  %i.bdz = zext nneg i32 %i.bdq to i64
  %i.bea = getelementptr inbounds nuw [32 x i8], ptr %i.bdy, i64 %i.bdz
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bbf, ptr noundef nonnull align 8 dereferenceable(1065) %i.bbe, ptr noundef nonnull align 8 dereferenceable(32) %i.bea) #20
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cq
  %.1.i = phi i32 [ %i.bdq, %bb.cq ], [ %i.bdx, %bb.cr ], [ %i.bdx, %bb.cr ], [ %i.bdx, %bb.cr ], [ %i.bdx, %bb.cr ], [ %i.bdx, %bb.cr ], [ %i.bdx, %bb.cr ], [ %i.bdx, %bb.cr ], [ %i.bdx, %bb.cr ], [ %i.bdx, %bb.cr ], [ %i.bdx, %bb.cr ], [ %i.bdx, %bb.cr ], [ %i.bdx, %bb.cs ] ; 2 uses
  %i.beb = add i8 %i.baq, -1
  %i.bec = icmp ult i8 %i.beb, 5                  ; 2 uses
  %i.bed = zext i1 %i.bec to i32
  %.2.i = add nuw nsw i32 %.1.i, %i.bed
  %i.bee = load ptr, ptr %i.bbq, align 8, !tbaa !189
  %i.bef = zext nneg i32 %.2.i to i64             ; 2 uses
  %i.beg = getelementptr inbounds nuw [32 x i8], ptr %i.bee, i64 %i.bef
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bbf, ptr noundef nonnull align 8 dereferenceable(1065) %i.bbe, ptr noundef nonnull align 8 dereferenceable(32) %i.beg) #20
  %i.beh = load ptr, ptr %i.bbq, align 8, !tbaa !189
  %i.bei = getelementptr inbounds nuw [32 x i8], ptr %i.beh, i64 %i.bef
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bei, i64 32
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bbf, ptr noundef nonnull align 8 dereferenceable(1065) %i.bbe, ptr noundef nonnull align 8 dereferenceable(32) %i.bej) #20
  br i1 %i.bec, label %bb.cu, label %_ZN12_GLOBAL__N_115ARMExpandPseudo9ExpandVLDERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  %i.bek = load ptr, ptr %i.bbq, align 8, !tbaa !189
  %i.bel = zext nneg i32 %.1.i to i64
  %i.bem = getelementptr inbounds nuw [32 x i8], ptr %i.bek, i64 %i.bel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %i.bem, i64 32, i1 false), !tbaa.struct !370
  %i.ben = load i32, ptr %30, align 8
  %i.beo = or i32 %i.ben, 33554432
  store i32 %i.beo, ptr %30, align 8
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bbf, ptr noundef nonnull align 8 dereferenceable(1065) %i.bbe, ptr noundef nonnull align 8 dereferenceable(32) %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  br label %_ZN12_GLOBAL__N_115ARMExpandPseudo9ExpandVLDERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit

_ZN12_GLOBAL__N_115ARMExpandPseudo9ExpandVLDERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit: ; preds = %bb.ct, %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.bep = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr null, ptr %i.bep, align 8, !tbaa !198, !alias.scope !891
  %i.beq = select i1 %.not44.not.not.i, i32 117440512, i32 50331648
  %i.ber = getelementptr inbounds nuw i8, ptr %24, i64 4
  store i32 %i.bbv, ptr %i.ber, align 4, !tbaa !190, !alias.scope !891
  %i.bes = getelementptr inbounds nuw i8, ptr %24, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bes, i8 0, i64 16, i1 false), !alias.scope !891
  store i32 %i.beq, ptr %24, align 8, !alias.scope !891
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bbf, ptr noundef nonnull align 8 dereferenceable(1065) %i.bbe, ptr noundef nonnull align 8 dereferenceable(32) %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @_ZN4llvm12MachineInstr15copyImplicitOpsERNS_15MachineFunctionERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.bbf, ptr noundef nonnull align 8 dereferenceable(1065) %i.bbe, ptr noundef nonnull align 8 dereferenceable(80) %2) #20
  call void @_ZN4llvm12MachineInstr12cloneMemRefsERNS_15MachineFunctionERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.bbf, ptr noundef nonnull align 8 dereferenceable(1065) %i.bbe, ptr noundef nonnull align 8 dereferenceable(80) %2) #20
  %i.bet = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #20 ; 0 uses
  br label %bb.et

bb.cv:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.beu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bev = load ptr, ptr %i.beu, align 8, !tbaa !371 ; 2 uses
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %bb.cv
  %.04.i.i.i.i.i862 = phi i64 [ 288, %bb.cv ], [ %.1.i.i.i.i.i868, %bb.cw ] ; 2 uses
  %.0113.i.i.i.i.i863 = phi ptr [ @_ZL13NEONLdStTable, %bb.cv ], [ %.112.i.i.i.i.i867, %bb.cw ] ; 2 uses
  %i.bew = lshr i64 %.04.i.i.i.i.i862, 1          ; 3 uses
  %i.bex = getelementptr inbounds nuw [12 x i8], ptr %.0113.i.i.i.i.i863, i64 %i.bew ; 2 uses
  %.val.i.i.i.i.i866 = load i16, ptr %i.bex, align 2, !tbaa !879
  %i.bey = zext i16 %.val.i.i.i.i.i866 to i32
  %i.bez = icmp samesign ugt i32 %i.d, %i.bey     ; 2 uses
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bex, i64 12
  %i.bfb = xor i64 %i.bew, -1
  %i.bfc = add nsw i64 %.04.i.i.i.i.i862, %i.bfb
  %.112.i.i.i.i.i867 = select i1 %i.bez, ptr %i.bfa, ptr %.0113.i.i.i.i.i863 ; 9 uses
  %.1.i.i.i.i.i868 = select i1 %i.bez, i64 %i.bfc, i64 %i.bew ; 2 uses
  %i.bfd = icmp sgt i64 %.1.i.i.i.i.i868, 0
  br i1 %i.bfd, label %bb.cw, label %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i869, !llvm.loop !648

_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i869: ; preds = %bb.cw
  %.not.i.i870 = icmp ne ptr %.112.i.i.i.i.i867, getelementptr inbounds nuw (i8, ptr @_ZL13NEONLdStTable, i64 3456)
  tail call void @llvm.assume(i1 %.not.i.i870)
  %i.bfe = load i16, ptr %.112.i.i.i.i.i867, align 2, !tbaa !879
  %i.bff = zext i16 %i.bfe to i32
  %i.bfg = icmp eq i32 %i.d, %i.bff
  tail call void @llvm.assume(i1 %i.bfg)
  %i.bfh = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i.i867, i64 7
  %i.bfi = load i8, ptr %i.bfh, align 1, !tbaa !880 ; 3 uses
  %i.bfj = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i.i867, i64 8
  %i.bfk = load i8, ptr %i.bfj, align 2, !tbaa !881 ; 3 uses
  %i.bfl = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.023.0.copyload.i = load ptr, ptr %i.bfl, align 8, !tbaa !191
  %i.bfm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bfn = load ptr, ptr %i.bfm, align 8, !tbaa !159
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfn, i64 8
  %i.bfp = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i.i867, i64 2
  %i.bfq = load i16, ptr %i.bfp, align 2, !tbaa !882 ; 2 uses
  %i.bfr = load ptr, ptr %i.bfo, align 8, !tbaa !195
  %i.bfs = zext i16 %i.bfq to i64
  %i.bft = sub nsw i64 0, %i.bfs
  %i.bfu = getelementptr inbounds [32 x i8], ptr %i.bfr, i64 %i.bft
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bev, i64 32
  %i.bfw = load ptr, ptr %i.bfv, align 8, !tbaa !361 ; 14 uses
  %i.bfx = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.bfw, ptr noundef nonnull align 8 dereferenceable(32) %i.bfu, ptr %.sroa.023.0.copyload.i, i1 noundef zeroext false) #20 ; 20 uses
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bev, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bfy, ptr noundef %i.bfx) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i871 = load i64, ptr %2, align 8
  %i.bfz = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i871, -8 ; 2 uses
  %i.bga = inttoptr i64 %i.bfz to ptr
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bfx, i64 8
  store ptr %2, ptr %i.bgb, align 8, !tbaa !173
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i872 = load i64, ptr %i.bfx, align 8
  %i.bgc = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i872, 7
  %i.bgd = or disjoint i64 %i.bgc, %i.bfz
  store i64 %i.bgd, ptr %i.bfx, align 8
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bga, i64 8
  store ptr %i.bfx, ptr %i.bge, align 8, !tbaa !173
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i873 = load i64, ptr %2, align 8
  %i.bgf = ptrtoint ptr %i.bfx to i64
  %i.bgg = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i873, 7
  %i.bgh = or disjoint i64 %i.bgg, %i.bgf
  store i64 %i.bgh, ptr %2, align 8
  %i.bgi = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i.i867, i64 5
  %i.bgj = load i8, ptr %i.bgi, align 1, !tbaa !889, !range !18, !noundef !19
  %i.bgk = trunc nuw i8 %i.bgj to i1
  br i1 %i.bgk, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i869
  %i.bgl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bgm = load ptr, ptr %i.bgl, align 8, !tbaa !189
  tail call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bfx, ptr noundef nonnull align 8 dereferenceable(1065) %i.bfw, ptr noundef nonnull align 8 dereferenceable(32) %i.bgm) #20
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i869
  %.0.i = phi i32 [ 1, %bb.cx ], [ 0, %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i869 ] ; 3 uses
  %i.bgn = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.bgo = load ptr, ptr %i.bgn, align 8, !tbaa !189
  %i.bgp = zext nneg i32 %.0.i to i64             ; 2 uses
  %i.bgq = getelementptr inbounds nuw [32 x i8], ptr %i.bgo, i64 %i.bgp
  tail call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bfx, ptr noundef nonnull align 8 dereferenceable(1065) %i.bfw, ptr noundef nonnull align 8 dereferenceable(32) %i.bgq) #20
  %i.bgr = or disjoint i32 %.0.i, 2               ; 2 uses
  %i.bgs = load ptr, ptr %i.bgn, align 8, !tbaa !189
  %i.bgt = getelementptr inbounds nuw [32 x i8], ptr %i.bgs, i64 %i.bgp
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgt, i64 32
  tail call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bfx, ptr noundef nonnull align 8 dereferenceable(1065) %i.bfw, ptr noundef nonnull align 8 dereferenceable(32) %i.bgu) #20
  %i.bgv = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i.i867, i64 6
  %i.bgw = load i8, ptr %i.bgv, align 2, !tbaa !890, !range !18, !noundef !19
  %i.bgx = trunc nuw i8 %i.bgw to i1
  br i1 %i.bgx, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.bgy = add nuw nsw i32 %.0.i, 3               ; 9 uses
  switch i16 %i.bfq, label %bb.da [
    i16 3695, label %bb.db
    i16 3650, label %bb.db
    i16 3665, label %bb.db
    i16 3680, label %bb.db
    i16 3701, label %bb.db
    i16 3656, label %bb.db
    i16 3671, label %bb.db
    i16 3686, label %bb.db
  ]

bb.da:                                            ; preds = %bb.cz
  %i.bgz = load ptr, ptr %i.bgn, align 8, !tbaa !189
  %i.bha = zext nneg i32 %i.bgr to i64
  %i.bhb = getelementptr inbounds nuw [32 x i8], ptr %i.bgz, i64 %i.bha
  tail call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bfx, ptr noundef nonnull align 8 dereferenceable(1065) %i.bfw, ptr noundef nonnull align 8 dereferenceable(32) %i.bhb) #20
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cy
  %.1.i874 = phi i32 [ %i.bgr, %bb.cy ], [ %i.bgy, %bb.cz ], [ %i.bgy, %bb.cz ], [ %i.bgy, %bb.cz ], [ %i.bgy, %bb.cz ], [ %i.bgy, %bb.cz ], [ %i.bgy, %bb.cz ], [ %i.bgy, %bb.cz ], [ %i.bgy, %bb.cz ], [ %i.bgy, %bb.da ]
  %i.bhc = load ptr, ptr %i.bgn, align 8, !tbaa !189
  %i.bhd = zext nneg i32 %.1.i874 to i64          ; 3 uses
  %i.bhe = getelementptr inbounds nuw [32 x i8], ptr %i.bhc, i64 %i.bhd ; 2 uses
  %i.bhf = load i32, ptr %i.bhe, align 8          ; 3 uses
  %i.bhg = lshr i32 %i.bhf, 26
  %i.bhh = lshr i32 %i.bhf, 24
  %.lobit.i.i = and i32 %i.bhh, 1
  %i.bhi = xor i32 %.lobit.i.i, 1
  %i.bhj = and i32 %i.bhi, %i.bhg
  %.not39.i = icmp eq i32 %i.bhj, 0
  %i.bhk = and i32 %i.bhf, 268435456              ; 5 uses
  %i.bhl = icmp ne i32 %i.bhk, 0                  ; 2 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhe, i64 4
  %i.bhn = load i32, ptr %i.bhm, align 4, !tbaa !190 ; 6 uses
  %i.bho = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bhp = load ptr, ptr %i.bho, align 8, !tbaa !160 ; 4 uses
  %or.cond.i.i875 = icmp ult i8 %i.bfi, 2
  br i1 %or.cond.i.i875, label %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i876, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %switch.tableidx1430 = add i8 %i.bfi, -2        ; 4 uses
  %i.bhq = icmp ult i8 %switch.tableidx1430, 3
  br i1 %i.bhq, label %switch.lookup1431, label %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i876

switch.lookup1431:                                ; preds = %bb.dc
  %i.bhr = zext nneg i8 %switch.tableidx1430 to i64
  %switch.gep1432 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_115ARMExpandPseudo8ExpandMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.30, i64 %i.bhr
  %switch.load1433 = load i8, ptr %switch.gep1432, align 1
  %switch.ext1434 = zext i8 %switch.load1433 to i32
  %i.bhs = zext nneg i8 %switch.tableidx1430 to i64
  %switch.gep1435 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_115ARMExpandPseudo8ExpandMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.31, i64 %i.bhs
  %switch.load1436 = load i8, ptr %switch.gep1435, align 1
  %switch.ext1437 = zext i8 %switch.load1436 to i32
  %narrow1473 = sub nuw nsw i8 9, %i.bfi
  %switch.offset1440 = zext nneg i8 %narrow1473 to i32
  %i.bht = zext nneg i8 %switch.tableidx1430 to i64
  %switch.gep1441 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_115ARMExpandPseudo8ExpandMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.32, i64 %i.bht
  %switch.load1442 = load i8, ptr %switch.gep1441, align 1
  %switch.ext1443 = zext i8 %switch.load1442 to i32
  br label %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i876

_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i876: ; preds = %bb.dc, %switch.lookup1431, %bb.db
  %.sink106.i.i877 = phi i32 [ 1, %bb.db ], [ %switch.ext1434, %switch.lookup1431 ], [ 2, %bb.dc ]
  %.sink105.i.i878 = phi i32 [ 2, %bb.db ], [ %switch.ext1437, %switch.lookup1431 ], [ 4, %bb.dc ]
  %.sink104.i.i879 = phi i32 [ 3, %bb.db ], [ %switch.offset1440, %switch.lookup1431 ], [ 6, %bb.dc ]
  %.sink103.i.i880 = phi i32 [ 4, %bb.db ], [ %switch.ext1443, %switch.lookup1431 ], [ 8, %bb.dc ]
  %i.bhu = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.bhp, i32 %i.bhn, i32 noundef %.sink106.i.i877) #20
  %i.bhv = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.bhp, i32 %i.bhn, i32 noundef %.sink105.i.i878) #20
  %i.bhw = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.bhp, i32 %i.bhn, i32 noundef %.sink104.i.i879) #20
  %i.bhx = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.bhp, i32 %i.bhn, i32 noundef %.sink103.i.i880) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  %i.bhy = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr null, ptr %i.bhy, align 8, !tbaa !198, !alias.scope !892
  %i.bhz = getelementptr inbounds nuw i8, ptr %23, i64 4
  store i32 %i.bhu, ptr %i.bhz, align 4, !tbaa !190, !alias.scope !892
  %i.bia = getelementptr inbounds nuw i8, ptr %23, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bia, i8 0, i64 16, i1 false), !alias.scope !892
  store i32 %i.bhk, ptr %23, align 8, !alias.scope !892
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bfx, ptr noundef nonnull align 8 dereferenceable(1065) %i.bfw, ptr noundef nonnull align 8 dereferenceable(32) %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  %i.bib = icmp ugt i8 %i.bfk, 1
  br i1 %i.bib, label %bb.dd, label %.thread38.i

bb.dd:                                            ; preds = %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i876
  %i.bic = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i.i867, i64 10
  %i.bid = load i8, ptr %i.bic, align 2, !tbaa !885, !range !18, !noundef !19
  %i.bie = trunc nuw i8 %i.bid to i1
  br i1 %i.bie, label %bb.de, label %.thread38.i

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.bif = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr null, ptr %i.bif, align 8, !tbaa !198, !alias.scope !893
  %i.big = getelementptr inbounds nuw i8, ptr %22, i64 4
  store i32 %i.bhv, ptr %i.big, align 4, !tbaa !190, !alias.scope !893
  %i.bih = getelementptr inbounds nuw i8, ptr %22, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bih, i8 0, i64 16, i1 false), !alias.scope !893
  store i32 %i.bhk, ptr %22, align 8, !alias.scope !893
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bfx, ptr noundef nonnull align 8 dereferenceable(1065) %i.bfw, ptr noundef nonnull align 8 dereferenceable(32) %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  %.not40.i = icmp eq i8 %i.bfk, 2
  br i1 %.not40.i, label %.thread38.i, label %.thread45.i

.thread45.i:                                      ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.bii = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr null, ptr %i.bii, align 8, !tbaa !198, !alias.scope !894
  %i.bij = getelementptr inbounds nuw i8, ptr %21, i64 4
  store i32 %i.bhw, ptr %i.bij, align 4, !tbaa !190, !alias.scope !894
  %i.bik = getelementptr inbounds nuw i8, ptr %21, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bik, i8 0, i64 16, i1 false), !alias.scope !894
  store i32 %i.bhk, ptr %21, align 8, !alias.scope !894
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bfx, ptr noundef nonnull align 8 dereferenceable(1065) %i.bfw, ptr noundef nonnull align 8 dereferenceable(32) %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %i.bil = icmp ugt i8 %i.bfk, 3
  br i1 %i.bil, label %.thread46.i, label %.thread38.i

.thread46.i:                                      ; preds = %.thread45.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.bim = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr null, ptr %i.bim, align 8, !tbaa !198, !alias.scope !895
  %i.bin = getelementptr inbounds nuw i8, ptr %20, i64 4
  store i32 %i.bhx, ptr %i.bin, align 4, !tbaa !190, !alias.scope !895
  %i.bio = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bio, i8 0, i64 16, i1 false), !alias.scope !895
  store i32 %i.bhk, ptr %20, align 8, !alias.scope !895
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bfx, ptr noundef nonnull align 8 dereferenceable(1065) %i.bfw, ptr noundef nonnull align 8 dereferenceable(32) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %.thread38.i

.thread38.i:                                      ; preds = %.thread46.i, %.thread45.i, %bb.de, %bb.dd, %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i876
  %i.bip = load ptr, ptr %i.bgn, align 8, !tbaa !189
  %i.biq = getelementptr inbounds nuw [32 x i8], ptr %i.bip, i64 %i.bhd
  %i.bir = getelementptr inbounds nuw i8, ptr %i.biq, i64 32
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bfx, ptr noundef nonnull align 8 dereferenceable(1065) %i.bfw, ptr noundef nonnull align 8 dereferenceable(32) %i.bir) #20
  %i.bis = load ptr, ptr %i.bgn, align 8, !tbaa !189
  %i.bit = getelementptr inbounds nuw [32 x i8], ptr %i.bis, i64 %i.bhd
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bit, i64 64
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bfx, ptr noundef nonnull align 8 dereferenceable(1065) %i.bfw, ptr noundef nonnull align 8 dereferenceable(32) %i.biu) #20
  %or.cond.i = or i1 %i.bhl, %.not39.i
  br i1 %or.cond.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %.thread38.i
  %i.biv = load ptr, ptr %i.bho, align 8, !tbaa !160
  %i.biw = call noundef zeroext i1 @_ZN4llvm12MachineInstr17addRegisterKilledENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %i.bfx, i32 %i.bhn, ptr noundef %i.biv, i1 noundef zeroext true) #20 ; 0 uses
  br label %_ZN12_GLOBAL__N_115ARMExpandPseudo9ExpandVSTERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit

bb.dg:                                            ; preds = %.thread38.i
  br i1 %i.bhl, label %_ZN12_GLOBAL__N_115ARMExpandPseudo9ExpandVSTERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.bix = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr null, ptr %i.bix, align 8, !tbaa !198, !alias.scope !896
  %i.biy = getelementptr inbounds nuw i8, ptr %19, i64 4
  store i32 %i.bhn, ptr %i.biy, align 4, !tbaa !190, !alias.scope !896
  %i.biz = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.biz, i8 0, i64 16, i1 false), !alias.scope !896
  store i32 33554432, ptr %19, align 8, !alias.scope !896
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bfx, ptr noundef nonnull align 8 dereferenceable(1065) %i.bfw, ptr noundef nonnull align 8 dereferenceable(32) %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %_ZN12_GLOBAL__N_115ARMExpandPseudo9ExpandVSTERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit

_ZN12_GLOBAL__N_115ARMExpandPseudo9ExpandVSTERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit: ; preds = %bb.df, %bb.dg, %bb.dh
  call void @_ZN4llvm12MachineInstr15copyImplicitOpsERNS_15MachineFunctionERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.bfx, ptr noundef nonnull align 8 dereferenceable(1065) %i.bfw, ptr noundef nonnull align 8 dereferenceable(80) %2) #20
  call void @_ZN4llvm12MachineInstr12cloneMemRefsERNS_15MachineFunctionERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.bfx, ptr noundef nonnull align 8 dereferenceable(1065) %i.bfw, ptr noundef nonnull align 8 dereferenceable(80) %2) #20
  %i.bja = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #20 ; 0 uses
  br label %bb.et

bb.di:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.bjb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bjc = load ptr, ptr %i.bjb, align 8, !tbaa !371 ; 2 uses
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dj, %bb.di
  %.04.i.i.i.i.i881 = phi i64 [ 288, %bb.di ], [ %.1.i.i.i.i.i887, %bb.dj ] ; 2 uses
  %.0113.i.i.i.i.i882 = phi ptr [ @_ZL13NEONLdStTable, %bb.di ], [ %.112.i.i.i.i.i886, %bb.dj ] ; 2 uses
  %i.bjd = lshr i64 %.04.i.i.i.i.i881, 1          ; 3 uses
  %i.bje = getelementptr inbounds nuw [12 x i8], ptr %.0113.i.i.i.i.i882, i64 %i.bjd ; 2 uses
  %.val.i.i.i.i.i885 = load i16, ptr %i.bje, align 2, !tbaa !879
  %i.bjf = zext i16 %.val.i.i.i.i.i885 to i32
  %i.bjg = icmp samesign ugt i32 %i.d, %i.bjf     ; 2 uses
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bje, i64 12
  %i.bji = xor i64 %i.bjd, -1
  %i.bjj = add nsw i64 %.04.i.i.i.i.i881, %i.bji
  %.112.i.i.i.i.i886 = select i1 %i.bjg, ptr %i.bjh, ptr %.0113.i.i.i.i.i882 ; 10 uses
  %.1.i.i.i.i.i887 = select i1 %i.bjg, i64 %i.bjj, i64 %i.bjd ; 2 uses
  %i.bjk = icmp sgt i64 %.1.i.i.i.i.i887, 0
  br i1 %i.bjk, label %bb.dj, label %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i888, !llvm.loop !648

_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i888: ; preds = %bb.dj
  %.not.i.i889 = icmp ne ptr %.112.i.i.i.i.i886, getelementptr inbounds nuw (i8, ptr @_ZL13NEONLdStTable, i64 3456)
  tail call void @llvm.assume(i1 %.not.i.i889)
  %i.bjl = load i16, ptr %.112.i.i.i.i.i886, align 2, !tbaa !879
  %i.bjm = zext i16 %i.bjl to i32
  %i.bjn = icmp eq i32 %i.d, %i.bjm
  tail call void @llvm.assume(i1 %i.bjn)
  %i.bjo = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i.i886, i64 7
  %i.bjp = load i8, ptr %i.bjo, align 1, !tbaa !880 ; 2 uses
  %i.bjq = zext i8 %i.bjp to i32
  %i.bjr = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i.i886, i64 8
  %i.bjs = load i8, ptr %i.bjr, align 2, !tbaa !881 ; 6 uses
  %i.bjt = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i.i886, i64 9
  %i.bju = load i8, ptr %i.bjt, align 1, !tbaa !897
  %i.bjv = zext i8 %i.bju to i32                  ; 2 uses
  %i.bjw = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.032.0.copyload.i = load ptr, ptr %i.bjw, align 8, !tbaa !191
  %i.bjx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bjy = load ptr, ptr %i.bjx, align 8, !tbaa !159
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjy, i64 8
  %i.bka = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i.i886, i64 2
  %i.bkb = load i16, ptr %i.bka, align 2, !tbaa !882
  %i.bkc = load ptr, ptr %i.bjz, align 8, !tbaa !195
  %i.bkd = zext i16 %i.bkb to i64
  %i.bke = sub nsw i64 0, %i.bkd
  %i.bkf = getelementptr inbounds [32 x i8], ptr %i.bkc, i64 %i.bke
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bjc, i64 32
  %i.bkh = load ptr, ptr %i.bkg, align 8, !tbaa !361 ; 20 uses
  %i.bki = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.bkh, ptr noundef nonnull align 8 dereferenceable(32) %i.bkf, ptr %.sroa.032.0.copyload.i, i1 noundef zeroext false) #20 ; 25 uses
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bjc, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bkj, ptr noundef %i.bki) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i890 = load i64, ptr %2, align 8
  %i.bkk = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i890, -8 ; 2 uses
  %i.bkl = inttoptr i64 %i.bkk to ptr
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bki, i64 8
  store ptr %2, ptr %i.bkm, align 8, !tbaa !173
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i891 = load i64, ptr %i.bki, align 8
  %i.bkn = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i891, 7
  %i.bko = or disjoint i64 %i.bkn, %i.bkk
  store i64 %i.bko, ptr %i.bki, align 8
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bkl, i64 8
  store ptr %i.bki, ptr %i.bkp, align 8, !tbaa !173
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i892 = load i64, ptr %2, align 8
  %i.bkq = ptrtoint ptr %i.bki to i64
  %i.bkr = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i892, 7
  %i.bks = or disjoint i64 %i.bkr, %i.bkq
  store i64 %i.bks, ptr %2, align 8
  %i.bkt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bku = load ptr, ptr %i.bkt, align 8, !tbaa !898
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bku, i64 4
  %i.bkw = load i16, ptr %i.bkv, align 4, !tbaa !900
  %i.bkx = zext i16 %i.bkw to i64
  %i.bky = add nuw nsw i64 %i.bkx, 4294967293
  %i.bkz = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 8 uses
  %i.bla = load ptr, ptr %i.bkz, align 8, !tbaa !189 ; 3 uses
  %i.blb = and i64 %i.bky, 4294967295
  %i.blc = getelementptr inbounds nuw [32 x i8], ptr %i.bla, i64 %i.blb
  %i.bld = getelementptr inbounds nuw i8, ptr %i.blc, i64 16
  %i.ble = load i64, ptr %i.bld, align 8, !tbaa !190
  %i.blf = trunc i64 %i.ble to i32                ; 2 uses
  %i.blg = icmp eq i8 %i.bjp, 4                   ; 2 uses
  %.not.i893 = icmp uge i32 %i.blf, %i.bjv        ; 2 uses
  %spec.select83.i = select i1 %.not.i893, i32 5, i32 4
  %i.blh = select i1 %i.blg, i1 %.not.i893, i1 false
  %spec.select.i894 = select i1 %i.blh, i32 %i.bjv, i32 0
  %.075.i = sub nuw i32 %i.blf, %spec.select.i894
  %.0.i895 = select i1 %i.blg, i32 %spec.select83.i, i32 %i.bjq ; 6 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i.i886, i64 4
  %i.blj = load i8, ptr %i.bli, align 2, !tbaa !901, !range !18, !noundef !19
  %i.blk = trunc nuw i8 %i.blj to i1              ; 3 uses
  br i1 %i.blk, label %bb.dk, label %.thread57.i

bb.dk:                                            ; preds = %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i888
  %i.bll = load i32, ptr %i.bla, align 8
  %i.blm = and i32 %i.bll, 83886080
  %i.bln = icmp eq i32 %i.blm, 83886080           ; 5 uses
  %i.blo = getelementptr inbounds nuw i8, ptr %i.bla, i64 4
  %i.blp = load i32, ptr %i.blo, align 4, !tbaa !190 ; 8 uses
  %i.blq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.blr = load ptr, ptr %i.blq, align 8, !tbaa !160 ; 4 uses
  %or.cond.i.i899 = icmp samesign ult i32 %.0.i895, 2
  br i1 %or.cond.i.i899, label %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i900, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %trunc.i = trunc nuw i32 %.0.i895 to i8
  %switch.tableidx1444 = add i8 %trunc.i, -2      ; 4 uses
  %i.bls = icmp ult i8 %switch.tableidx1444, 3
  br i1 %i.bls, label %switch.lookup1445, label %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i900

switch.lookup1445:                                ; preds = %bb.dl
  %i.blt = zext nneg i8 %switch.tableidx1444 to i64
  %switch.gep1446 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_115ARMExpandPseudo8ExpandMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.30, i64 %i.blt
  %switch.load1447 = load i8, ptr %switch.gep1446, align 1
  %switch.ext1448 = zext i8 %switch.load1447 to i32
  %i.blu = zext nneg i8 %switch.tableidx1444 to i64
  %switch.gep1449 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_115ARMExpandPseudo8ExpandMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.31, i64 %i.blu
  %switch.load1450 = load i8, ptr %switch.gep1449, align 1
  %switch.ext1451 = zext i8 %switch.load1450 to i32
  %narrow = sub nsw i32 9, %.0.i895
  %switch.offset1454 = and i32 %narrow, 255
  %i.blv = zext nneg i8 %switch.tableidx1444 to i64
  %switch.gep1455 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_115ARMExpandPseudo8ExpandMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.32, i64 %i.blv
  %switch.load1456 = load i8, ptr %switch.gep1455, align 1
  %switch.ext1457 = zext i8 %switch.load1456 to i32
  br label %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i900

_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i900: ; preds = %bb.dl, %switch.lookup1445, %bb.dk
  %.sink106.i.i901 = phi i32 [ 1, %bb.dk ], [ %switch.ext1448, %switch.lookup1445 ], [ 2, %bb.dl ]
  %.sink105.i.i902 = phi i32 [ 2, %bb.dk ], [ %switch.ext1451, %switch.lookup1445 ], [ 4, %bb.dl ]
  %.sink104.i.i903 = phi i32 [ 3, %bb.dk ], [ %switch.offset1454, %switch.lookup1445 ], [ 6, %bb.dl ]
  %.sink103.i.i904 = phi i32 [ 4, %bb.dk ], [ %switch.ext1457, %switch.lookup1445 ], [ 8, %bb.dl ]
  %i.blw = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.blr, i32 %i.blp, i32 noundef %.sink106.i.i901) #20 ; 5 uses
  %i.blx = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.blr, i32 %i.blp, i32 noundef %.sink105.i.i902) #20 ; 5 uses
  %i.bly = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.blr, i32 %i.blp, i32 noundef %.sink104.i.i903) #20 ; 5 uses
  %i.blz = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.blr, i32 %i.blp, i32 noundef %.sink103.i.i904) #20 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.bma = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr null, ptr %i.bma, align 8, !tbaa !198, !alias.scope !902
  %i.bmb = select i1 %i.bln, i32 83886080, i32 16777216 ; 4 uses
  %i.bmc = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i32 %i.blw, ptr %i.bmc, align 4, !tbaa !190, !alias.scope !902
  %i.bmd = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bmd, i8 0, i64 16, i1 false), !alias.scope !902
  store i32 %i.bmb, ptr %17, align 8, !alias.scope !902
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bki, ptr noundef nonnull align 8 dereferenceable(1065) %i.bkh, ptr noundef nonnull align 8 dereferenceable(32) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.bme = icmp ugt i8 %i.bjs, 1
  br i1 %i.bme, label %bb.dm, label %.thread57.i

bb.dm:                                            ; preds = %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i900
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.bmf = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr null, ptr %i.bmf, align 8, !tbaa !198, !alias.scope !903
  %i.bmg = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 %i.blx, ptr %i.bmg, align 4, !tbaa !190, !alias.scope !903
  %i.bmh = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bmh, i8 0, i64 16, i1 false), !alias.scope !903
  store i32 %i.bmb, ptr %16, align 8, !alias.scope !903
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bki, ptr noundef nonnull align 8 dereferenceable(1065) %i.bkh, ptr noundef nonnull align 8 dereferenceable(32) %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %.not61.i = icmp eq i8 %i.bjs, 2
  br i1 %.not61.i, label %.thread57.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.bmi = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr null, ptr %i.bmi, align 8, !tbaa !198, !alias.scope !904
  %i.bmj = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 %i.bly, ptr %i.bmj, align 4, !tbaa !190, !alias.scope !904
  %i.bmk = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bmk, i8 0, i64 16, i1 false), !alias.scope !904
  store i32 %i.bmb, ptr %15, align 8, !alias.scope !904
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bki, ptr noundef nonnull align 8 dereferenceable(1065) %i.bkh, ptr noundef nonnull align 8 dereferenceable(32) %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.bml = icmp ugt i8 %i.bjs, 3
  br i1 %i.bml, label %bb.do, label %.thread57.i

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.bmm = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.bmm, align 8, !tbaa !198, !alias.scope !905
  %i.bmn = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %i.blz, ptr %i.bmn, align 4, !tbaa !190, !alias.scope !905
  %i.bmo = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bmo, i8 0, i64 16, i1 false), !alias.scope !905
  store i32 %i.bmb, ptr %14, align 8, !alias.scope !905
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bki, ptr noundef nonnull align 8 dereferenceable(1065) %i.bkh, ptr noundef nonnull align 8 dereferenceable(32) %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %.thread57.i

.thread57.i:                                      ; preds = %bb.do, %bb.dn, %bb.dm, %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i900, %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i888
  %.sroa.011.0.i = phi i32 [ %i.blz, %bb.do ], [ %i.blz, %bb.dn ], [ 0, %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i888 ], [ %i.blz, %bb.dm ], [ %i.blz, %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i900 ]
  %.sroa.013.0.i = phi i32 [ %i.bly, %bb.do ], [ %i.bly, %bb.dn ], [ 0, %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i888 ], [ %i.bly, %bb.dm ], [ %i.bly, %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i900 ]
  %.sroa.015.0.i = phi i32 [ %i.blx, %bb.do ], [ %i.blx, %bb.dn ], [ 0, %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i888 ], [ %i.blx, %bb.dm ], [ %i.blx, %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i900 ]
  %.sroa.017.0.i = phi i32 [ %i.blw, %bb.do ], [ %i.blw, %bb.dn ], [ 0, %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i888 ], [ %i.blw, %bb.dm ], [ %i.blw, %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i900 ]
  %.077.shrunk.i = phi i1 [ %i.bln, %bb.do ], [ %i.bln, %bb.dn ], [ false, %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i888 ], [ %i.bln, %bb.dm ], [ %i.bln, %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i900 ]
  %.076.i = phi i32 [ %i.blp, %bb.do ], [ %i.blp, %bb.dn ], [ 0, %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i888 ], [ %i.blp, %bb.dm ], [ %i.blp, %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i900 ]
  %.074.i = phi i32 [ 1, %bb.do ], [ 1, %bb.dn ], [ 0, %_ZN4llvm11lower_boundIRA288_KN12_GLOBAL__N_118NEONLdStTableEntryERjEEDaOT_OT0_.exit.i.i888 ], [ 1, %bb.dm ], [ 1, %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit.i900 ] ; 3 uses
  %i.bmp = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i.i886, i64 5
  %i.bmq = load i8, ptr %i.bmp, align 1, !tbaa !889, !range !18, !noundef !19
  %i.bmr = trunc nuw i8 %i.bmq to i1
  %.pre66.i = load ptr, ptr %i.bkz, align 8, !tbaa !189 ; 2 uses
  br i1 %i.bmr, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %.thread57.i
  %i.bms = add nuw nsw i32 %.074.i, 1
  %i.bmt = zext nneg i32 %.074.i to i64
  %i.bmu = getelementptr inbounds nuw [32 x i8], ptr %.pre66.i, i64 %i.bmt
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bki, ptr noundef nonnull align 8 dereferenceable(1065) %i.bkh, ptr noundef nonnull align 8 dereferenceable(32) %i.bmu) #20
  %.pre.i = load ptr, ptr %i.bkz, align 8, !tbaa !189
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %.thread57.i
  %i.bmv = phi ptr [ %.pre.i, %bb.dp ], [ %.pre66.i, %.thread57.i ]
  %.1.i896 = phi i32 [ %i.bms, %bb.dp ], [ %.074.i, %.thread57.i ] ; 3 uses
  %i.bmw = zext nneg i32 %.1.i896 to i64          ; 2 uses
  %i.bmx = getelementptr inbounds nuw [32 x i8], ptr %i.bmv, i64 %i.bmw
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bki, ptr noundef nonnull align 8 dereferenceable(1065) %i.bkh, ptr noundef nonnull align 8 dereferenceable(32) %i.bmx) #20
  %i.bmy = add nuw nsw i32 %.1.i896, 2            ; 2 uses
  %i.bmz = load ptr, ptr %i.bkz, align 8, !tbaa !189
  %i.bna = getelementptr inbounds nuw [32 x i8], ptr %i.bmz, i64 %i.bmw
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bna, i64 32
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bki, ptr noundef nonnull align 8 dereferenceable(1065) %i.bkh, ptr noundef nonnull align 8 dereferenceable(32) %i.bnb) #20
  %i.bnc = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i.i886, i64 6
  %i.bnd = load i8, ptr %i.bnc, align 2, !tbaa !890, !range !18, !noundef !19
  %i.bne = trunc nuw i8 %i.bnd to i1
  br i1 %i.bne, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.bnf = add nuw nsw i32 %.1.i896, 3
  %i.bng = load ptr, ptr %i.bkz, align 8, !tbaa !189
  %i.bnh = zext nneg i32 %i.bmy to i64
  %i.bni = getelementptr inbounds nuw [32 x i8], ptr %i.bng, i64 %i.bnh
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bki, ptr noundef nonnull align 8 dereferenceable(1065) %i.bkh, ptr noundef nonnull align 8 dereferenceable(32) %i.bni) #20
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.2.i897 = phi i32 [ %i.bnf, %bb.dr ], [ %i.bmy, %bb.dq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.bnj = load ptr, ptr %i.bkz, align 8, !tbaa !189
  %i.bnk = zext nneg i32 %.2.i897 to i64          ; 3 uses
  %i.bnl = getelementptr inbounds nuw [32 x i8], ptr %i.bnj, i64 %i.bnk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.bnl, i64 32, i1 false), !tbaa.struct !370
  br i1 %i.blk, label %bb.dv, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.bnm = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.bnn = load i32, ptr %i.bnm, align 4, !tbaa !190 ; 4 uses
  %i.bno = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bnp = load ptr, ptr %i.bno, align 8, !tbaa !160 ; 4 uses
  %or.cond.i88.i = icmp samesign ult i32 %.0.i895, 2
  br i1 %or.cond.i88.i, label %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit93.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %trunc62.i = trunc nuw i32 %.0.i895 to i8
  %switch.tableidx1458 = add i8 %trunc62.i, -2    ; 4 uses
  %i.bnq = icmp ult i8 %switch.tableidx1458, 3
  br i1 %i.bnq, label %switch.lookup1459, label %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit93.i

switch.lookup1459:                                ; preds = %bb.du
  %i.bnr = zext nneg i8 %switch.tableidx1458 to i64
  %switch.gep1460 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_115ARMExpandPseudo8ExpandMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.30, i64 %i.bnr
  %switch.load1461 = load i8, ptr %switch.gep1460, align 1
  %switch.ext1462 = zext i8 %switch.load1461 to i32
  %i.bns = zext nneg i8 %switch.tableidx1458 to i64
  %switch.gep1463 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_115ARMExpandPseudo8ExpandMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.31, i64 %i.bns
  %switch.load1464 = load i8, ptr %switch.gep1463, align 1
  %switch.ext1465 = zext i8 %switch.load1464 to i32
  %narrow1472 = sub nsw i32 9, %.0.i895
  %switch.offset1468 = and i32 %narrow1472, 255
  %i.bnt = zext nneg i8 %switch.tableidx1458 to i64
  %switch.gep1469 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_115ARMExpandPseudo8ExpandMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.32, i64 %i.bnt
  %switch.load1470 = load i8, ptr %switch.gep1469, align 1
  %switch.ext1471 = zext i8 %switch.load1470 to i32
  br label %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit93.i

_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit93.i: ; preds = %bb.du, %switch.lookup1459, %bb.dt
  %.sink106.i89.i = phi i32 [ 1, %bb.dt ], [ %switch.ext1462, %switch.lookup1459 ], [ 2, %bb.du ]
  %.sink105.i90.i = phi i32 [ 2, %bb.dt ], [ %switch.ext1465, %switch.lookup1459 ], [ 4, %bb.du ]
  %.sink104.i91.i = phi i32 [ 3, %bb.dt ], [ %switch.offset1468, %switch.lookup1459 ], [ 6, %bb.du ]
  %.sink103.i92.i = phi i32 [ 4, %bb.dt ], [ %switch.ext1471, %switch.lookup1459 ], [ 8, %bb.du ]
  %i.bnu = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.bnp, i32 %i.bnn, i32 noundef %.sink106.i89.i) #20
  %i.bnv = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.bnp, i32 %i.bnn, i32 noundef %.sink105.i90.i) #20
  %i.bnw = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.bnp, i32 %i.bnn, i32 noundef %.sink104.i91.i) #20
  %i.bnx = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.bnp, i32 %i.bnn, i32 noundef %.sink103.i92.i) #20
  br label %bb.dv

bb.dv:                                            ; preds = %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit93.i, %bb.ds
  %.sroa.011.1.i = phi i32 [ %.sroa.011.0.i, %bb.ds ], [ %i.bnx, %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit93.i ]
  %.sroa.013.1.i = phi i32 [ %.sroa.013.0.i, %bb.ds ], [ %i.bnw, %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit93.i ]
  %.sroa.015.1.i = phi i32 [ %.sroa.015.0.i, %bb.ds ], [ %i.bnv, %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit93.i ]
  %.sroa.017.1.i = phi i32 [ %.sroa.017.0.i, %bb.ds ], [ %i.bnu, %_ZL11GetDSubRegsjN12_GLOBAL__N_114NEONRegSpacingEPKN4llvm18TargetRegisterInfoERNS1_10MCRegisterES6_S6_S6_.exit93.i ]
  %i.bny = load i32, ptr %18, align 8             ; 4 uses
  %i.bnz = and i32 %i.bny, 268435456
  %i.boa = lshr i32 %i.bny, 26
  %i.bob = lshr i32 %i.bny, 24
  %.lobit.i.i898 = and i32 %i.bob, 1
  %i.boc = xor i32 %.lobit.i.i898, 1
  %i.bod = and i32 %i.boc, %i.boa
  %.not64.i = icmp eq i32 %i.bod, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.boe = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %i.boe, align 8, !tbaa !198, !alias.scope !906
  %i.bof = select i1 %.not64.i, i32 0, i32 67108864
  %i.bog = or disjoint i32 %i.bof, %i.bnz         ; 4 uses
  %i.boh = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 %.sroa.017.1.i, ptr %i.boh, align 4, !tbaa !190, !alias.scope !906
  %i.boi = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.boi, i8 0, i64 16, i1 false), !alias.scope !906
  store i32 %i.bog, ptr %13, align 8, !alias.scope !906
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bki, ptr noundef nonnull align 8 dereferenceable(1065) %i.bkh, ptr noundef nonnull align 8 dereferenceable(32) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.boj = icmp ugt i8 %i.bjs, 1
  br i1 %i.boj, label %bb.dw, label %.thread60.i

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.bok = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.bok, align 8, !tbaa !198, !alias.scope !907
  %i.bol = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %.sroa.015.1.i, ptr %i.bol, align 4, !tbaa !190, !alias.scope !907
  %i.bom = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bom, i8 0, i64 16, i1 false), !alias.scope !907
  store i32 %i.bog, ptr %12, align 8, !alias.scope !907
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bki, ptr noundef nonnull align 8 dereferenceable(1065) %i.bkh, ptr noundef nonnull align 8 dereferenceable(32) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %.not65.i = icmp eq i8 %i.bjs, 2
  br i1 %.not65.i, label %.thread60.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.bon = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.bon, align 8, !tbaa !198, !alias.scope !908
  %i.boo = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %.sroa.013.1.i, ptr %i.boo, align 4, !tbaa !190, !alias.scope !908
  %i.bop = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bop, i8 0, i64 16, i1 false), !alias.scope !908
  store i32 %i.bog, ptr %11, align 8, !alias.scope !908
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bki, ptr noundef nonnull align 8 dereferenceable(1065) %i.bkh, ptr noundef nonnull align 8 dereferenceable(32) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.boq = icmp ugt i8 %i.bjs, 3
  br i1 %i.boq, label %bb.dy, label %.thread60.i

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.bor = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.bor, align 8, !tbaa !198, !alias.scope !909
  %i.bos = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %.sroa.011.1.i, ptr %i.bos, align 4, !tbaa !190, !alias.scope !909
  %i.bot = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bot, i8 0, i64 16, i1 false), !alias.scope !909
  store i32 %i.bog, ptr %10, align 8, !alias.scope !909
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bki, ptr noundef nonnull align 8 dereferenceable(1065) %i.bkh, ptr noundef nonnull align 8 dereferenceable(32) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %.thread60.i

.thread60.i:                                      ; preds = %bb.dy, %bb.dx, %bb.dw, %bb.dv
  %i.bou = zext i32 %.075.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store i32 1, ptr %9, align 8, !alias.scope !910
  %i.bov = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.bov, align 8, !tbaa !198, !alias.scope !910
  %i.bow = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.bou, ptr %i.bow, align 8, !tbaa !190, !alias.scope !910
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bki, ptr noundef nonnull align 8 dereferenceable(1065) %i.bkh, ptr noundef nonnull align 8 dereferenceable(32) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.box = load ptr, ptr %i.bkz, align 8, !tbaa !189
  %i.boy = getelementptr inbounds nuw [32 x i8], ptr %i.box, i64 %i.bnk
  %i.boz = getelementptr inbounds nuw i8, ptr %i.boy, i64 64
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bki, ptr noundef nonnull align 8 dereferenceable(1065) %i.bkh, ptr noundef nonnull align 8 dereferenceable(32) %i.boz) #20
  %i.bpa = load ptr, ptr %i.bkz, align 8, !tbaa !189
  %i.bpb = getelementptr inbounds nuw [32 x i8], ptr %i.bpa, i64 %i.bnk
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bpb, i64 96
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bki, ptr noundef nonnull align 8 dereferenceable(1065) %i.bkh, ptr noundef nonnull align 8 dereferenceable(32) %i.bpc) #20
  %i.bpd = or i32 %i.bny, 33554432
  store i32 %i.bpd, ptr %18, align 8
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bki, ptr noundef nonnull align 8 dereferenceable(1065) %i.bkh, ptr noundef nonnull align 8 dereferenceable(32) %18) #20
  br i1 %i.blk, label %bb.dz, label %_ZN12_GLOBAL__N_115ARMExpandPseudo12ExpandLaneOpERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit

bb.dz:                                            ; preds = %.thread60.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.bpe = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.bpe, align 8, !tbaa !198, !alias.scope !911
  %i.bpf = select i1 %.077.shrunk.i, i32 117440512, i32 50331648
  %i.bpg = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %.076.i, ptr %i.bpg, align 4, !tbaa !190, !alias.scope !911
  %i.bph = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bph, i8 0, i64 16, i1 false), !alias.scope !911
  store i32 %i.bpf, ptr %8, align 8, !alias.scope !911
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bki, ptr noundef nonnull align 8 dereferenceable(1065) %i.bkh, ptr noundef nonnull align 8 dereferenceable(32) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %_ZN12_GLOBAL__N_115ARMExpandPseudo12ExpandLaneOpERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit

_ZN12_GLOBAL__N_115ARMExpandPseudo12ExpandLaneOpERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit: ; preds = %.thread60.i, %bb.dz
  call void @_ZN4llvm12MachineInstr15copyImplicitOpsERNS_15MachineFunctionERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.bki, ptr noundef nonnull align 8 dereferenceable(1065) %i.bkh, ptr noundef nonnull align 8 dereferenceable(80) %2) #20
  call void @_ZN4llvm12MachineInstr12cloneMemRefsERNS_15MachineFunctionERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.bki, ptr noundef nonnull align 8 dereferenceable(1065) %i.bkh, ptr noundef nonnull align 8 dereferenceable(80) %2) #20
  %i.bpi = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.et

bb.ea:                                            ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMExpandPseudo10ExpandVTBLERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nonnull %2, i32 noundef 3955, i1 noundef zeroext false)
  br label %bb.et

bb.eb:                                            ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMExpandPseudo10ExpandVTBLERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nonnull %2, i32 noundef 3957, i1 noundef zeroext false)
  br label %bb.et

bb.ec:                                            ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMExpandPseudo10ExpandVTBLERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nonnull %2, i32 noundef 3961, i1 noundef zeroext true)
  br label %bb.et

bb.ed:                                            ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMExpandPseudo10ExpandVTBLERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nonnull %2, i32 noundef 3963, i1 noundef zeroext true)
  br label %bb.et

bb.ee:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMExpandPseudo20ExpandMQQPRLoadStoreERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nonnull %2)
  br label %bb.et

bb.ef:                                            ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMExpandPseudo14ExpandCMP_SWAPERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjjjRS6_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nonnull %2, i32 noundef 4157, i32 noundef 4367, i32 noundef 4528, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.et

bb.eg:                                            ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMExpandPseudo14ExpandCMP_SWAPERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjjjRS6_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nonnull %2, i32 noundef 4159, i32 noundef 4369, i32 noundef 4529, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.et

bb.eh:                                            ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMExpandPseudo14ExpandCMP_SWAPERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjjjRS6_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nonnull %2, i32 noundef 4156, i32 noundef 4366, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.et

bb.ei:                                            ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMExpandPseudo14ExpandCMP_SWAPERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjjjRS6_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nonnull %2, i32 noundef 970, i32 noundef 2039, i32 noundef 2109, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.et

bb.ej:                                            ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMExpandPseudo14ExpandCMP_SWAPERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjjjRS6_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nonnull %2, i32 noundef 972, i32 noundef 2041, i32 noundef 2111, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.et

bb.ek:                                            ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMExpandPseudo14ExpandCMP_SWAPERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjjjRS6_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nonnull %2, i32 noundef 969, i32 noundef 2038, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.et

bb.el:                                            ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMExpandPseudo17ExpandCMP_SWAP_64ERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.et

bb.em:                                            ; preds = %bb.a, %bb.a
  %i.bpj = icmp eq i32 %i.d, 779
  %i.bpk = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bpl = load ptr, ptr %i.bpk, align 8, !tbaa !189
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bpl, i64 4
  %i.bpn = load i32, ptr %i.bpm, align 4, !tbaa !190 ; 2 uses
  %i.bpo = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.bpp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  br i1 %i.bpj, label %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit907, label %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit910

_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit907: ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %176) #20
  %.sroa.045.0.copyload = load ptr, ptr %i.bpo, align 8, !tbaa !191
  store ptr %.sroa.045.0.copyload, ptr %176, align 8, !tbaa !191
  %i.bpq = getelementptr inbounds nuw i8, ptr %176, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bpq, i8 0, i64 24, i1 false)
  %i.bpr = load ptr, ptr %i.bpp, align 8, !tbaa !159
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bpr, i64 8
  %i.bpt = load ptr, ptr %i.bps, align 8, !tbaa !195
  %i.bpu = getelementptr inbounds i8, ptr %i.bpt, i64 -144064
  %i.bpv = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %176, ptr noundef nonnull align 8 dereferenceable(32) %i.bpu) ; 2 uses
  %i.bpw = extractvalue { ptr, ptr } %i.bpv, 0    ; 3 uses
  %i.bpx = extractvalue { ptr, ptr } %i.bpv, 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %177) #20
end_hunk_3
