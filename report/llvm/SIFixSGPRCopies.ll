Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SIFixSGPRCopies?download=true
inline.NumInlined: 3383
inline.NumDeleted: 1577
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
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
%"struct.llvm::MCRegisterClassStorage" = type { [889 x %"class.llvm::MCRegisterClass"], [161388 x i16], [1500754 x i8], [432208 x i32], [767 x i16], [13651 x i32] }
%"class.llvm::MCRegisterClass" = type <{ i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, [3 x i8], i32, i32, [4 x i8], %"struct.llvm::LaneBitmask", i8, i8, i8, i8, i8, i8, [2 x i8], i32, i16, [2 x i8] }>
%"struct.llvm::LaneBitmask" = type { i64 }
%"struct.std::piecewise_construct_t" = type { i8 }
%"struct.llvm::AnalysisSetKey" = type { [8 x i8] }
%"struct.llvm::AnalysisKey" = type { [8 x i8] }
%class.anon.659 = type { ptr, ptr }
%"class.std::reference_wrapper" = type { ptr }
%"class.llvm::PreservedAnalyses" = type { %"class.llvm::SmallPtrSet.5", %"class.llvm::SmallPtrSet.8" }
%"class.llvm::SmallPtrSet.5" = type { %"class.llvm::SmallPtrSetImpl.base.7", [2 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.7" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallPtrSet.8" = type { %"class.llvm::SmallPtrSetImpl.base.10", [2 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.10" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.(anonymous namespace)::SIFixSGPRCopies" = type { ptr, %"class.llvm::SmallVector.107", %"class.llvm::SmallVector.107", %"class.llvm::SmallVector.107", %"class.llvm::SmallVector.107", i32, %"class.llvm::MapVector", %"class.llvm::DenseMap.119", %"class.llvm::DenseSet", ptr, ptr, ptr }
%"class.llvm::SmallVector.107" = type { %"class.llvm::SmallVectorImpl.108", %"struct.llvm::SmallVectorStorage.111" }
%"class.llvm::SmallVectorImpl.108" = type { %"class.llvm::SmallVectorTemplateBase.109" }
%"class.llvm::SmallVectorTemplateBase.109" = type { %"class.llvm::SmallVectorTemplateCommon.110" }
%"class.llvm::SmallVectorTemplateCommon.110" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.111" = type { [32 x i8] }
%"class.llvm::MapVector" = type { %"class.llvm::DenseMap.112", %"class.llvm::SmallVector.114" }
%"class.llvm::DenseMap.112" = type { ptr, ptr, i32, i32 }
%"class.llvm::SmallVector.114" = type { %"class.llvm::SmallVectorImpl.115" }
%"class.llvm::SmallVectorImpl.115" = type { %"class.llvm::SmallVectorTemplateBase.116" }
%"class.llvm::SmallVectorTemplateBase.116" = type { %"class.llvm::SmallVectorTemplateCommon.117" }
%"class.llvm::SmallVectorTemplateCommon.117" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::DenseMap.119" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseSet" = type { %"class.llvm::detail::DenseSetImpl" }
%"class.llvm::detail::DenseSetImpl" = type { %"class.llvm::DenseMap.121" }
%"class.llvm::DenseMap.121" = type { ptr, ptr, i32, i32 }
%"class.llvm::MachineOperand" = type { i32, %union.anon.356, ptr, %"union.llvm::MachineOperand::ContentsUnion" }
%union.anon.356 = type { i32 }
%"union.llvm::MachineOperand::ContentsUnion" = type { %"class.llvm::ArrayRef.357" }
%"class.llvm::ArrayRef.357" = type { ptr, i64 }
%"class.llvm::MIMetadata" = type { %"class.llvm::DebugLoc", ptr, ptr, ptr }
%"class.llvm::DebugLoc" = type { ptr }
%"class.std::tuple.619" = type { %"struct.std::_Tuple_impl.620" }
%"struct.std::_Tuple_impl.620" = type { %"struct.std::_Head_base.621" }
%"struct.std::_Head_base.621" = type { ptr }
%"class.std::tuple.494" = type { i8 }
%"class.std::map.590" = type { %"class.std::_Rb_tree.591" }
%"class.std::_Rb_tree.591" = type { %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, std::__cxx11::list<llvm::MachineInstr *>>, std::_Select1st<std::pair<const unsigned int, std::__cxx11::list<llvm::MachineInstr *>>>, std::less<unsigned int>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, std::__cxx11::list<llvm::MachineInstr *>>, std::_Select1st<std::pair<const unsigned int, std::__cxx11::list<llvm::MachineInstr *>>>, std::less<unsigned int>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.llvm::SmallVector.299" = type { %"class.llvm::SmallVectorImpl.108", %"struct.llvm::SmallVectorStorage.300" }
%"struct.llvm::SmallVectorStorage.300" = type { [64 x i8] }
%"class.llvm::SmallPtrSet.596" = type { %"class.llvm::SmallPtrSetImpl.base.598", [8 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.598" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%class.anon.607 = type { ptr, ptr, ptr, ptr }
%"struct.llvm::SIInstrWorklist" = type { %"class.llvm::SetVector", %"class.llvm::SetVector" }
%"class.llvm::SetVector" = type { %"class.llvm::DenseSet", %"class.llvm::SmallVector.450" }
%"class.llvm::SmallVector.450" = type { %"class.llvm::SmallVectorImpl.108" }
%class.anon.545 = type { i8 }
%class.anon.533 = type { i8 }
%class.anon.551 = type { i8 }
%"class.llvm::SmallVector.510" = type { %"class.llvm::SmallVectorImpl.215", %"struct.llvm::SmallVectorStorage.511" }
%"class.llvm::SmallVectorImpl.215" = type { %"class.llvm::SmallVectorTemplateBase.216" }
%"class.llvm::SmallVectorTemplateBase.216" = type { %"class.llvm::SmallVectorTemplateCommon.217" }
%"class.llvm::SmallVectorTemplateCommon.217" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.511" = type { [32 x i8] }
%"struct.std::pair.482" = type { i32, %"class.(anonymous namespace)::V2SCopyInfo" }
%"class.(anonymous namespace)::V2SCopyInfo" = type { ptr, %"class.llvm::SetVector", i32, i32, i32, i8, i32, i32, %"class.llvm::SetVector.452" }
%"class.llvm::SetVector.452" = type { %"class.llvm::DenseSet.453", %"class.llvm::SmallVector.457" }
%"class.llvm::DenseSet.453" = type { %"class.llvm::detail::DenseSetImpl.454" }
%"class.llvm::detail::DenseSetImpl.454" = type { %"class.llvm::DenseMap.455" }
%"class.llvm::DenseMap.455" = type { ptr, ptr, i32, i32 }
%"class.llvm::SmallVector.457" = type { %"class.llvm::SmallVectorImpl.215" }
%"class.llvm::APInt" = type <{ %union.anon.363, i32, [4 x i8] }>
%union.anon.363 = type { i64 }
%"class.std::tuple.491" = type { %"struct.std::_Tuple_impl.492" }
%"struct.std::_Tuple_impl.492" = type { %"struct.std::_Head_base.493" }
%"struct.std::_Head_base.493" = type { ptr }
%class.anon.588 = type { i8 }
%"class.llvm::SetVector.553" = type { %"class.llvm::DenseSet.554", %"class.llvm::SmallVector.558" }
%"class.llvm::DenseSet.554" = type { %"class.llvm::detail::DenseSetImpl.555" }
%"class.llvm::detail::DenseSetImpl.555" = type { %"class.llvm::DenseMap.556" }
%"class.llvm::DenseMap.556" = type { ptr, ptr, i32, i32 }
%"class.llvm::SmallVector.558" = type { %"class.llvm::SmallVectorImpl.559" }
%"class.llvm::SmallVectorImpl.559" = type { %"class.llvm::SmallVectorTemplateBase.560" }
%"class.llvm::SmallVectorTemplateBase.560" = type { %"class.llvm::SmallVectorTemplateCommon.561" }
%"class.llvm::SmallVectorTemplateCommon.561" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallPtrSet.563" = type { %"class.llvm::SmallPtrSetImpl.base.565", [4 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.565" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallSet" = type { %"class.llvm::SmallVector.515", %"class.std::set" }
%"class.llvm::SmallVector.515" = type { %"class.llvm::SmallVectorImpl.516", %"struct.llvm::SmallVectorStorage.519" }
%"class.llvm::SmallVectorImpl.516" = type { %"class.llvm::SmallVectorTemplateBase.517" }
%"class.llvm::SmallVectorTemplateBase.517" = type { %"class.llvm::SmallVectorTemplateCommon.518" }
%"class.llvm::SmallVectorTemplateCommon.518" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.519" = type { [32 x i8] }
%"class.std::set" = type { %"class.std::_Rb_tree.520" }
%"class.std::_Rb_tree.520" = type { %"struct.std::_Rb_tree<std::pair<llvm::Register, unsigned int>, std::pair<llvm::Register, unsigned int>, std::_Identity<std::pair<llvm::Register, unsigned int>>, std::less<std::pair<llvm::Register, unsigned int>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::pair<llvm::Register, unsigned int>, std::pair<llvm::Register, unsigned int>, std::_Identity<std::pair<llvm::Register, unsigned int>>, std::less<std::pair<llvm::Register, unsigned int>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::pair.525" = type { %"class.llvm::SmallSetIterator", i8, [7 x i8] }
%"class.llvm::SmallSetIterator" = type <{ %union.anon.527, i8, [7 x i8] }>
%union.anon.527 = type { %"struct.std::_Rb_tree_const_iterator" }
%"struct.std::_Rb_tree_const_iterator" = type { ptr }
%"struct.std::pair.529" = type { %"class.llvm::Register", i32 }
%"class.llvm::Register" = type { i32 }
%class.anon.629 = type { ptr, %"class.llvm::MachineInstrBundleIterator", %"class.llvm::MachineInstrBundleIterator" }
%"class.llvm::MachineInstrBundleIterator" = type { %"class.llvm::ilist_iterator.345" }
%"class.llvm::ilist_iterator.345" = type { ptr }
%"class.llvm::DenseSet.633" = type { %"class.llvm::detail::DenseSetImpl.634" }
%"class.llvm::detail::DenseSetImpl.634" = type { %"class.llvm::DenseMap.635" }
%"class.llvm::DenseMap.635" = type { ptr, ptr, i32, i32 }
%"class.llvm::SmallVector.313" = type { %"class.llvm::SmallVectorImpl.96", %"struct.llvm::SmallVectorStorage.314" }
%"class.llvm::SmallVectorImpl.96" = type { %"class.llvm::SmallVectorTemplateBase.97" }
%"class.llvm::SmallVectorTemplateBase.97" = type { %"class.llvm::SmallVectorTemplateCommon.98" }
%"class.llvm::SmallVectorTemplateCommon.98" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.314" = type { [32 x i8] }

$_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev = comdat any

$_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE = comdat any

$_ZN4llvm4Pass14doFinalizationERNS_6ModuleE = comdat any

$_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv = comdat any

$_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE = comdat any

$_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_9SetVectorIjNS_11SmallVectorIjLj0EEENS_8DenseSetIjNS_12DenseMapInfoIjvEEEELj0EEENS8_IS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SC_SF_E5clearEv = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_9SetVectorIjNS_11SmallVectorIjLj0EEENS_8DenseSetIjNS_12DenseMapInfoIjvEEEELj0EEENS8_IS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SC_SF_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSF_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_9SetVectorIjNS_11SmallVectorIjLj0EEENS_8DenseSetIjNS_12DenseMapInfoIjvEEEELj0EEENS8_IS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SC_SF_E15LookupBucketForIS3_EEbRKT_RPSF_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_9SetVectorIjNS_11SmallVectorIjLj0EEENS_8DenseSetIjNS_12DenseMapInfoIjvEEEELj0EEENS8_IS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SC_SF_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_9SetVectorIjNS_11SmallVectorIjLj0EEENS_8DenseSetIjNS_12DenseMapInfoIjvEEEELj0EEENS8_IS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SC_SF_E8moveFromERSG_ = comdat any

$_ZN4llvm8DenseMapIPNS_12MachineInstrENS_9SetVectorIjNS_11SmallVectorIjLj0EEENS_8DenseSetIjNS_12DenseMapInfoIjvEEEELj0EEENS7_IS2_vEENS_6detail12DenseMapPairIS2_SA_EEED2Ev = comdat any

$_ZN4llvm15SmallVectorImplIjEaSEOS1_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS7_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS6_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ = comdat any

$_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEEaSEOS3_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8copyFromERKS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E21eraseFromFilledBucketIZNS9_21eraseFromFilledBucketEPS7_EUlRS7_E_EEvSB_OT_ = comdat any

$_ZN4llvm8SmallSetISt4pairINS_8RegisterEjELj4ESt4lessIS3_EE10insertImplIS3_EES1_INS_16SmallSetIteratorIS3_Lj4ES5_EEbEOT_ = comdat any

$_ZNSt3setISt4pairIN4llvm8RegisterEjESt4lessIS3_ESaIS3_EE6insertISt13move_iteratorIPS3_EEEvT_SC_ = comdat any

$_ZNSt8_Rb_treeISt4pairIN4llvm8RegisterEjES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE16_M_insert_uniqueIS3_EES0_ISt17_Rb_tree_iteratorIS3_EbEOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_8RegisterEjELb1EE15growAndPushBackES3_ = comdat any

$_ZNSt8_Rb_treeISt4pairIN4llvm8RegisterEjES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E21eraseFromFilledBucketIZNSB_21eraseFromFilledBucketEPS9_EUlRS9_E_EEvSD_OT_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E21eraseFromFilledBucketIZNS8_21eraseFromFilledBucketEPS6_EUlRS6_E_EEvSA_OT_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8copyFromERKSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E21eraseFromFilledBucketIZNSC_21eraseFromFilledBucketEPSA_EUlRSA_E_EEvSE_OT_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx114listIPN4llvm12MachineInstrESaIS6_EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOjEESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx114listIPN4llvm12MachineInstrESaIS6_EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS1_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx114listIPN4llvm12MachineInstrESaIS6_EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_9SetVectorIjNS_11SmallVectorIjLj0EEENS_8DenseSetIjNS_12DenseMapInfoIjvEEEELj0EEENS8_IS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SC_SF_E16shrink_and_clearEv = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E16shrink_and_clearEv = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16shrink_and_clearEv = comdat any

$_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE = comdat any

$_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZTVN4llvm2cl11OptionValueIbEE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZL13EnableM0Merge = internal global %"class.llvm::cl::opt" zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"amdgpu-enable-merge-m0\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Merge and hoist M0 initializations\00", align 1
@__dso_handle = external hidden global i8
@_ZL39InitializeSIFixSGPRCopiesLegacyPassFlag = internal global %"struct.std::once_flag" zeroinitializer, align 4
@_ZN12_GLOBAL__N_121SIFixSGPRCopiesLegacy2IDE = internal global i8 0, align 1
@_ZN4llvm23SIFixSGPRCopiesLegacyIDE = local_unnamed_addr constant ptr @_ZN12_GLOBAL__N_121SIFixSGPRCopiesLegacy2IDE, align 8
@_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl6OptionE = external unnamed_addr constant { [13 x ptr] }, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"SI Fix SGPR copies\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"si-fix-sgpr-copies\00", align 1
@_ZTVN12_GLOBAL__N_121SIFixSGPRCopiesLegacyE = internal unnamed_addr constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr null, ptr @_ZN4llvm4PassD2Ev, ptr @_ZN12_GLOBAL__N_121SIFixSGPRCopiesLegacyD0Ev, ptr @_ZNK12_GLOBAL__N_121SIFixSGPRCopiesLegacy11getPassNameEv, ptr @_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE, ptr @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE, ptr @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE, ptr @_ZNK4llvm19MachineFunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE, ptr @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE, ptr @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv, ptr @_ZNK12_GLOBAL__N_121SIFixSGPRCopiesLegacy16getAnalysisUsageERN4llvm13AnalysisUsageE, ptr @_ZN4llvm4Pass13releaseMemoryEv, ptr @_ZN4llvm4Pass18getAsImmutablePassEv, ptr @_ZN4llvm4Pass18getAsPMDataManagerEv, ptr @_ZNK4llvm4Pass14verifyAnalysisEv, ptr @_ZN4llvm4Pass17dumpPassStructureEj, ptr @_ZN4llvm19MachineFunctionPass13runOnFunctionERNS_8FunctionE, ptr @_ZN4llvm19MachineFunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE, ptr @_ZN12_GLOBAL__N_121SIFixSGPRCopiesLegacy20runOnMachineFunctionERN4llvm15MachineFunctionE, ptr @_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv, ptr @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv, ptr @_ZNK12_GLOBAL__N_121SIFixSGPRCopiesLegacy20getClearedPropertiesEv] }, align 8
@_ZN4llvm31MachineDominatorTreeWrapperPass2IDE = external global i8, align 1
@_ZN4llvm28AMDGPUMCRegisterClassStorageE = external global %"struct.llvm::MCRegisterClassStorage", align 8
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE = external global %"struct.llvm::AnalysisSetKey", align 8
@_ZTVN4llvm2cl11OptionValueIbEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm2cl6parserIbEE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZSt15__once_callable = external thread_local local_unnamed_addr global ptr, align 8
@_ZSt11__once_call = external thread_local local_unnamed_addr global ptr, align 8
@_ZN4llvm28MachineDominatorTreeAnalysis3KeyE = external global %"struct.llvm::AnalysisKey", align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_SIFixSGPRCopies.cpp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !398  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #18, !inline_history !396 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !27, !range !28, !noundef !29
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.i) #18
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #18
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm35initializeSIFixSGPRCopiesLegacyPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %class.anon.659, align 8            ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store ptr @_ZL39initializeSIFixSGPRCopiesLegacyPassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !399
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !33
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !33
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL39InitializeSIFixSGPRCopiesLegacyPassFlag, ptr noundef nonnull @__once_proxy) #18 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #19
  unreachable

_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !33
  store ptr null, ptr %i.c, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL39initializeSIFixSGPRCopiesLegacyPassOnceRN4llvm12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #3 {
bb.a:
  tail call void @_ZN4llvm45initializeMachineDominatorTreeWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #18
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #20 ; 9 uses
  store ptr @.str.2, ptr %i.a, align 8, !tbaa !36
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 18, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.3, ptr %i.b, align 8, !tbaa !36
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 18, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN12_GLOBAL__N_121SIFixSGPRCopiesLegacy2IDE, ptr %i.c, align 8, !tbaa !402
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !403
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 0, ptr %i.e, align 1, !tbaa !404
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_121SIFixSGPRCopiesLegacyEEEPNS_4PassEv, ptr %i.f, align 8, !tbaa !405
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef nonnull ptr @_ZN4llvm31createSIFixSGPRCopiesLegacyPassEv() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #20 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_121SIFixSGPRCopiesLegacy2IDE, ptr %i.c, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN12_GLOBAL__N_121SIFixSGPRCopiesLegacyE, i64 16), ptr %i.a, align 8, !tbaa !22
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19SIFixSGPRCopiesPass3runERNS_15MachineFunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(1065) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.(anonymous namespace)::SIFixSGPRCopies", align 8 ; 26 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_15MachineFunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull @_ZN4llvm28MachineDominatorTreeAnalysis3KeyE, ptr noundef nonnull align 8 dereferenceable(1065) %2) #18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %i.b, ptr %4, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.d, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 4, ptr %i.f, align 4, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %i.h, ptr %i.g, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 0, ptr %i.i, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 68
  store i32 4, ptr %i.j, align 4, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 120
  store ptr %i.l, ptr %i.k, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i32 0, ptr %i.m, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 116
  store i32 4, ptr %i.n, align 4, !tbaa !71
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 168
  store ptr %i.p, ptr %i.o, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i32 0, ptr %i.q, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 164
  store i32 4, ptr %i.r, align 4, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 200
  store i32 0, ptr %i.s, align 8, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 248
  store ptr %i.v, ptr %i.u, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, i8 0, i64 56, i1 false)
  %i.x = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115SIFixSGPRCopies3runERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(320) %4, ptr noundef nonnull align 8 dereferenceable(1065) %2)
  br i1 %i.x, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.ptr1.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i, ptr %0, align 8, !tbaa !30, !alias.scope !410
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.y, align 8, !tbaa !73, !alias.scope !410
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.aa, align 8, !tbaa !27, !alias.scope !410
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !30, !alias.scope !410
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.ad, align 8, !tbaa !73, !alias.scope !410
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.ae, align 4, !tbaa !74, !alias.scope !410
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.af, align 8, !tbaa !27, !alias.scope !410
  store i32 1, ptr %i.z, align 4, !tbaa !74, !alias.scope !410, !noalias !411
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i, align 8, !tbaa !33, !alias.scope !410, !noalias !411
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvm39getMachineFunctionPassPreservedAnalysesEv(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8 %0) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call fastcc void @_ZN12_GLOBAL__N_115SIFixSGPRCopiesD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115SIFixSGPRCopies3runERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1065) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %3 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %4 = alloca %"class.std::tuple.619", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.494", align 1    ; 3 uses
  %6 = alloca %"class.std::map.590", align 8      ; 10 uses
  %7 = alloca %"class.llvm::SmallVector.299", align 8 ; 10 uses
  %8 = alloca %"class.llvm::SmallPtrSet.596", align 8 ; 16 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %9 = alloca %class.anon.607, align 8            ; 11 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MIMetadata", align 8 ; 9 uses
  %12 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %14 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %15 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %16 = alloca %"struct.llvm::SIInstrWorklist", align 8 ; 15 uses
  %17 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %18 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %19 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %20 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %21 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %22 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %23 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %24 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %25 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %26 = alloca %class.anon.545, align 1           ; 3 uses
  %27 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %28 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %29 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %30 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %31 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %32 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %33 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %34 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %35 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %36 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %37 = alloca %class.anon.533, align 1           ; 3 uses
  %38 = alloca %class.anon.533, align 1           ; 3 uses
  %39 = alloca %class.anon.533, align 1           ; 3 uses
  %40 = alloca %class.anon.533, align 1           ; 3 uses
  %41 = alloca %class.anon.533, align 1           ; 3 uses
  %42 = alloca %class.anon.533, align 1           ; 3 uses
  %43 = alloca %class.anon.533, align 1           ; 3 uses
  %44 = alloca %class.anon.533, align 1           ; 3 uses
  %45 = alloca %class.anon.551, align 1           ; 3 uses
  %46 = alloca %"class.llvm::SmallVector.510", align 8 ; 12 uses
  %47 = alloca %"struct.llvm::SIInstrWorklist", align 8 ; 28 uses
  %48 = alloca %"struct.std::pair.482", align 8   ; 17 uses
  %49 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %50 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %51 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %52 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %53 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %54 = alloca %"class.llvm::SmallVector.299", align 8 ; 10 uses
  %55 = alloca %"class.llvm::APInt", align 8      ; 11 uses
  %56 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.c = load i64, ptr %i.b, align 8, !tbaa !567
  %i.d = and i64 %i.c, 128
  %.not386.a = icmp eq i64 %i.d, 0                ; 2 uses
  br i1 %.not386.a, label %bb.b, label %bb.jx

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !568, !nonnull !29, !align !187 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !188
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 31 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !189
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1024
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 20 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !190
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 912
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 29 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #18
  %i.n = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  store ptr %i.n, ptr %54, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 7 uses
  store i32 0, ptr %i.o, align 8, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %54, i64 12 ; 2 uses
  store i32 8, ptr %i.p, align 4, !tbaa !71
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 4 uses
  %.sroa.0353.0493 = load ptr, ptr %i.q, align 8, !tbaa !569 ; 2 uses
  %.not387494 = icmp eq ptr %.sroa.0353.0493, %i.r
  br i1 %.not387494, label %._crit_edge498, label %.lr.ph497

.lr.ph497:                                        ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 76
  %i.az = getelementptr inbounds nuw i8, ptr %16, i64 60
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 20
  br label %bb.de

._crit_edge498:                                   ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #18
  %i.bb = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  store ptr %i.bb, ptr %46, align 8, !tbaa !32
  %i.bc = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 10 uses
  store i32 0, ptr %i.bc, align 8, !tbaa !70
  %i.bd = getelementptr inbounds nuw i8, ptr %46, i64 12 ; 3 uses
  store i32 8, ptr %i.bd, align 4, !tbaa !71
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 9 uses
  %.val133.i = load ptr, ptr %i.bf, align 8, !tbaa !32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 21 uses
  %.val141.i = load i32, ptr %i.bg, align 8, !tbaa !70 ; 2 uses
  %i.bh = zext i32 %.val141.i to i64
  %.idx.i = mul nuw nsw i64 %i.bh, 120
  %i.bi = getelementptr inbounds nuw i8, ptr %.val133.i, i64 %.idx.i
  %.not120.i = icmp eq i32 %.val141.i, 0
  br i1 %.not120.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i
  %.pre.i = load i32, ptr %i.bc, align 8, !tbaa !70
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %._crit_edge498
  %i.bj = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ 0, %._crit_edge498 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %47, i8 0, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %47, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %47, i64 40 ; 6 uses
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !32
  %i.bm = getelementptr inbounds nuw i8, ptr %47, i64 32 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %47, i64 64 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %47, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i8 0, i64 32, i1 false)
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !32
  %i.bp = getelementptr inbounds nuw i8, ptr %47, i64 72 ; 2 uses
  store i32 0, ptr %i.bp, align 8, !tbaa !70
  %i.bq = getelementptr inbounds nuw i8, ptr %47, i64 76
  store i32 0, ptr %i.bq, align 4, !tbaa !71
  %.not.i145150.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i145150.i, label %._crit_edge153.i, label %.lr.ph152.i

.lr.ph152.i:                                      ; preds = %._crit_edge.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.f

.lr.ph.i:                                         ; preds = %._crit_edge498, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i
  %.0121.i = phi ptr [ %i.cf, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i ], [ %.val133.i, %._crit_edge498 ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0121.i, i64 8
  %i.bv = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115SIFixSGPRCopies23needToBeConvertedToVALUEPNS_11V2SCopyInfoE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull %i.bu)
  br i1 %i.bv, label %bb.c, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.0121.i, i64 72
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !570 ; 2 uses
  %i.by = load i32, ptr %i.bc, align 8, !tbaa !70 ; 2 uses
  %i.bz = load i32, ptr %i.bd, align 4, !tbaa !71
  %.not.i.i = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !206

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %46, i32 noundef %i.bx)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %46, align 8, !tbaa !32
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ca
  store i32 %i.bx, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.bc, align 8, !tbaa !70
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.bc, align 8, !tbaa !70
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i: ; preds = %bb.e, %bb.d, %.lr.ph.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.0121.i, i64 120 ; 2 uses
  %.not.i = icmp eq ptr %i.cf, %i.bi
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

bb.f:                                             ; preds = %_ZN4llvm9MapVectorIjN12_GLOBAL__N_111V2SCopyInfoENS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEENS_11SmallVectorISt4pairIjS2_ELj0EEELj0EE5eraseERKj.exit.i, %.lr.ph152.i
  %i.cg = phi i32 [ %i.bj, %.lr.ph152.i ], [ %i.zk, %_ZN4llvm9MapVectorIjN12_GLOBAL__N_111V2SCopyInfoENS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEENS_11SmallVectorISt4pairIjS2_ELj0EEELj0EE5eraseERKj.exit.i ] ; 2 uses
  %i.ch = load ptr, ptr %46, align 8, !tbaa !32
  %i.ci = zext i32 %i.cg to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !207 ; 2 uses
  %i.cm = add i32 %i.cg, -1
  store i32 %i.cm, ptr %i.bc, align 8, !tbaa !70
  %i.cn = load ptr, ptr %i.be, align 8, !tbaa !208, !noalias !571 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_115SIFixSGPRCopies3runERN4llvm15MachineFunctionE:bb.a
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.ajw = phi ptr [ %i.ajv, %bb.cr ], [ %i.ajf, %bb.cq ]
  %i.ajx = load ptr, ptr %i.i, align 8, !tbaa !189
  %i.ajy = call noundef ptr @_ZN4llvm19MachineRegisterInfo17constrainRegClassENS_8RegisterEPKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(520) %i.ajx, i32 %i.ahf, ptr noundef %i.ajw, i32 noundef 0) #18 ; 0 uses
  br label %.loopexit.i

_ZNK4llvm8TypeSizecvmEv.exit171.i:                ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #18
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.agt, i64 72
  %.sroa.014.0.copyload.i = load ptr, ptr %i.ajz, align 8, !tbaa !277
  store ptr %.sroa.014.0.copyload.i, ptr %53, align 8, !tbaa !277
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aef, i8 0, i64 24, i1 false)
  %i.aka = load ptr, ptr %i.m, align 8, !tbaa !191
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 8
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !589
  %i.akd = getelementptr inbounds i8, ptr %i.akc, i64 -608
  %i.ake = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.agv, ptr noundef nonnull align 8 dereferenceable(80) %i.agt, ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull align 8 dereferenceable(32) %i.akd, i32 %i.agz) ; 2 uses
  %i.akf = extractvalue { ptr, ptr } %i.ake, 0    ; 2 uses
  %i.akg = extractvalue { ptr, ptr } %i.ake, 1    ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #18
  %i.akh = load ptr, ptr %i.k, align 8, !tbaa !190 ; 3 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 296
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !269
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akh, i64 40
  %i.akl = load i32, ptr %i.akk, align 8, !tbaa !270
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akh, i64 312
  %i.akn = load i32, ptr %i.akm, align 8, !tbaa !271
  %i.ako = mul i32 %i.akn, %i.akl
  %i.akp = load i16, ptr %i.ahu, align 4, !tbaa !274
  %i.akq = zext i16 %i.akp to i32
  %i.akr = add i32 %i.ako, %i.akq
  %i.aks = zext i32 %i.akr to i64
  %i.akt = getelementptr inbounds nuw [16 x i8], ptr %i.akj, i64 %i.aks
  %i.aku = load i32, ptr %i.akt, align 4, !tbaa !276
  %i.akv = lshr i32 %i.aku, 5                     ; 2 uses
  %.not162.i = icmp eq i32 %i.akv, 0
  br i1 %.not162.i, label %.loopexit.i, label %.lr.ph155.i

.lr.ph155.i:                                      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit171.i
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akg, i64 72
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akg, i64 44
  %i.aky = getelementptr inbounds nuw i8, ptr %i.agv, i64 32
  %i.akz = getelementptr inbounds nuw i8, ptr %i.agv, i64 40
  br label %bb.ct

bb.ct:                                            ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i, %.lr.ph155.i
  %.0122154.i = phi i32 [ 0, %.lr.ph155.i ], [ %i.amc, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i ] ; 3 uses
  %i.ala = load ptr, ptr %i.m, align 8, !tbaa !191
  %i.alb = load ptr, ptr %i.i, align 8, !tbaa !189
  %i.alc = load ptr, ptr %i.agw, align 8, !tbaa !247
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 32
  %i.ale = call noundef i32 @_ZN4llvm14SIRegisterInfo20getSubRegFromChannelEjj(i32 noundef %.0122154.i, i32 noundef 1) #18
  %i.alf = call noundef i32 @_ZNK4llvm11SIInstrInfo18buildExtractSubRegENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERNS_19MachineRegisterInfoERKNS_14MachineOperandEPKNS_15MCRegisterClassEjSB_(ptr noundef nonnull align 8 dereferenceable(840) %i.ala, ptr %i.akg, ptr noundef nonnull align 8 dereferenceable(520) %i.alb, ptr noundef nonnull align 8 dereferenceable(32) %i.ald, ptr noundef nonnull %i.ahl, i32 noundef %i.ale, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 1024)) #18
  %i.alg = load ptr, ptr %i.i, align 8, !tbaa !189
  %i.alh = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.alg, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 1536), ptr nonnull @.str.6, i64 0) #18 ; 3 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %i.akw, align 8, !tbaa !277
  %i.ali = load ptr, ptr %i.m, align 8, !tbaa !191
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 8
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !589
  %i.all = getelementptr inbounds i8, ptr %i.alk, i64 -343936
  %i.alm = load i32, ptr %i.akx, align 4, !tbaa !280
  %i.aln = and i32 %i.alm, 4
  %.not.i172.i = icmp eq i32 %i.aln, 0
  %i.alo = load ptr, ptr %i.aky, align 8, !tbaa !321 ; 4 uses
  %i.alp = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.alo, ptr noundef nonnull align 8 dereferenceable(32) %i.all, ptr %.sroa.04.0.copyload.i, i1 noundef zeroext false) #18 ; 10 uses
  br i1 %.not.i172.i, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i.i

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i.i: ; preds = %bb.ct
  %i.alq = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %i.agv, ptr nonnull align 8 dereferenceable(80) %i.akg, ptr noundef %i.alp) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  store ptr null, ptr %i.aeg, align 8, !tbaa !279, !alias.scope !596
  store i32 %i.alh, ptr %i.aeh, align 4, !tbaa !248, !alias.scope !596
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aei, i8 0, i64 16, i1 false), !alias.scope !596
  store i32 16777216, ptr %30, align 8, !alias.scope !596
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.alp, ptr noundef nonnull align 8 dereferenceable(1065) %i.alo, ptr noundef nonnull align 8 dereferenceable(32) %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i: ; preds = %bb.ct
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.akz, ptr noundef %i.alp) #18
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.akg, align 8
  %i.alr = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.als = inttoptr i64 %i.alr to ptr
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alp, i64 8
  store ptr %i.akg, ptr %i.alt, align 8, !tbaa !322
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i = load i64, ptr %i.alp, align 8
  %i.alu = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i, 7
  %i.alv = or disjoint i64 %i.alu, %i.alr
  store i64 %i.alv, ptr %i.alp, align 8
  %i.alw = getelementptr inbounds nuw i8, ptr %i.als, i64 8
  store ptr %i.alp, ptr %i.alw, align 8, !tbaa !322
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i = load i64, ptr %i.akg, align 8
  %i.alx = ptrtoint ptr %i.alp to i64
  %i.aly = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, 7
  %i.alz = or disjoint i64 %i.aly, %i.alx
  store i64 %i.alz, ptr %i.akg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  store ptr null, ptr %i.aej, align 8, !tbaa !279, !alias.scope !597
  store i32 %i.alh, ptr %i.aek, align 4, !tbaa !248, !alias.scope !597
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ael, i8 0, i64 16, i1 false), !alias.scope !597
  store i32 16777216, ptr %25, align 8, !alias.scope !597
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.alp, ptr noundef nonnull align 8 dereferenceable(1065) %i.alo, ptr noundef nonnull align 8 dereferenceable(32) %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i

_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  store ptr null, ptr %i.aem, align 8, !tbaa !279, !alias.scope !598
  store i32 %i.alf, ptr %i.aen, align 4, !tbaa !248, !alias.scope !598
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aeo, i8 0, i64 16, i1 false), !alias.scope !598
  store i32 0, ptr %29, align 8, !alias.scope !598
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.alp, ptr noundef nonnull align 8 dereferenceable(1065) %i.alo, ptr noundef nonnull align 8 dereferenceable(32) %29) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  store ptr null, ptr %i.aep, align 8, !tbaa !279, !alias.scope !599
  store i32 %i.alh, ptr %i.aeq, align 4, !tbaa !248, !alias.scope !599
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aer, i8 0, i64 16, i1 false), !alias.scope !599
  store i32 0, ptr %28, align 8, !alias.scope !599
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.akg, ptr noundef nonnull align 8 dereferenceable(1065) %i.akf, ptr noundef nonnull align 8 dereferenceable(32) %28) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  %i.ama = call noundef i32 @_ZN4llvm14SIRegisterInfo20getSubRegFromChannelEjj(i32 noundef %.0122154.i, i32 noundef 1) #18
  %i.amb = zext i32 %i.ama to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  store i32 1, ptr %27, align 8, !alias.scope !600
  store ptr null, ptr %i.aes, align 8, !tbaa !279, !alias.scope !600
  store i64 %i.amb, ptr %i.aet, align 8, !tbaa !248, !alias.scope !600
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.akg, ptr noundef nonnull align 8 dereferenceable(1065) %i.akf, ptr noundef nonnull align 8 dereferenceable(32) %27) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  %i.amc = add nuw nsw i32 %.0122154.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.amc, %i.akv
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.ct, !llvm.loop !504

.loopexit.i:                                      ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i, %_ZNK4llvm8TypeSizecvmEv.exit171.i, %bb.cs, %bb.cp
  %i.amd = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.agt) #18 ; 0 uses
  %i.ame = load ptr, ptr %i.adh, align 8, !tbaa !32 ; 2 uses
  %i.amf = icmp eq ptr %i.ame, %i.adi
  br i1 %i.amf, label %_ZN4llvm11SmallVectorIjLj0EED2Ev.exit.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %.loopexit.i
  call void @free(ptr noundef %i.ame) #18
  br label %_ZN4llvm11SmallVectorIjLj0EED2Ev.exit.i.i.i.i

_ZN4llvm11SmallVectorIjLj0EED2Ev.exit.i.i.i.i:    ; preds = %bb.cu, %.loopexit.i
  %i.amg = load i32, ptr %i.aeu, align 4, !tbaa !216 ; 2 uses
  %i.amh = icmp eq i32 %i.amg, 0
  br i1 %i.amh, label %_ZN4llvm9SetVectorIjNS_11SmallVectorIjLj0EEENS_8DenseSetIjNS_12DenseMapInfoIjvEEEELj0EED2Ev.exit.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %_ZN4llvm11SmallVectorIjLj0EED2Ev.exit.i.i.i.i
  %i.ami = load ptr, ptr %i.adg, align 8, !tbaa !217
  %i.amj = zext i32 %i.amg to i64                 ; 2 uses
  %i.amk = add nuw nsw i64 %i.amj, 31
  %i.aml = lshr i64 %i.amk, 5
  %i.amm = add nuw nsw i64 %i.aml, %i.amj
  %i.amn = shl nuw nsw i64 %i.amm, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ami, i64 noundef %i.amn, i64 noundef 4) #18
  br label %_ZN4llvm9SetVectorIjNS_11SmallVectorIjLj0EEENS_8DenseSetIjNS_12DenseMapInfoIjvEEEELj0EED2Ev.exit.i.i.i

_ZN4llvm9SetVectorIjNS_11SmallVectorIjLj0EEENS_8DenseSetIjNS_12DenseMapInfoIjvEEEELj0EED2Ev.exit.i.i.i: ; preds = %bb.cv, %_ZN4llvm11SmallVectorIjLj0EED2Ev.exit.i.i.i.i
  %i.amo = load ptr, ptr %i.adc, align 8, !tbaa !32 ; 2 uses
  %i.amp = icmp eq ptr %i.amo, %i.add
  br i1 %i.amp, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj0EED2Ev.exit.i.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %_ZN4llvm9SetVectorIjNS_11SmallVectorIjLj0EEENS_8DenseSetIjNS_12DenseMapInfoIjvEEEELj0EED2Ev.exit.i.i.i
  call void @free(ptr noundef %i.amo) #18
  br label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj0EED2Ev.exit.i.i.i.i

_ZN4llvm11SmallVectorIPNS_12MachineInstrELj0EED2Ev.exit.i.i.i.i: ; preds = %bb.cw, %_ZN4llvm9SetVectorIjNS_11SmallVectorIjLj0EEENS_8DenseSetIjNS_12DenseMapInfoIjvEEEELj0EED2Ev.exit.i.i.i
  %i.amq = load i32, ptr %i.aev, align 4, !tbaa !218 ; 2 uses
  %i.amr = icmp eq i32 %i.amq, 0
  br i1 %i.amr, label %_ZNSt4pairIjN12_GLOBAL__N_111V2SCopyInfoEED2Ev.exit.i, label %bb.cx

bb.cx:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj0EED2Ev.exit.i.i.i.i
  %i.ams = load ptr, ptr %i.adb, align 8, !tbaa !219
  %i.amt = zext i32 %i.amq to i64                 ; 2 uses
  %i.amu = shl nuw nsw i64 %i.amt, 3
  %i.amv = add nuw nsw i64 %i.amt, 31
  %i.amw = lshr i64 %i.amv, 3
  %i.amx = and i64 %i.amw, 1073741820
  %i.amy = add nuw nsw i64 %i.amx, %i.amu
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ams, i64 noundef %i.amy, i64 noundef 8) #18
  br label %_ZNSt4pairIjN12_GLOBAL__N_111V2SCopyInfoEED2Ev.exit.i

_ZNSt4pairIjN12_GLOBAL__N_111V2SCopyInfoEED2Ev.exit.i: ; preds = %bb.cx, %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj0EED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18
  %i.amz = getelementptr inbounds nuw i8, ptr %.0124157.i, i64 120 ; 2 uses
  %.not129.i = icmp eq ptr %i.amz, %i.acz
  br i1 %.not129.i, label %._crit_edge159.i, label %bb.cm

_ZN12_GLOBAL__N_115SIFixSGPRCopies20lowerVGPR2SGPRCopiesERN4llvm15MachineFunctionE.exit: ; preds = %_ZN4llvm15SIInstrWorklistD2Ev.exit.i, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  %.sroa.0125.0144.i = load ptr, ptr %i.q, align 8, !tbaa !569 ; 2 uses
  %.not145.i = icmp eq ptr %.sroa.0125.0144.i, %i.r
  br i1 %.not145.i, label %_ZN12_GLOBAL__N_115SIFixSGPRCopies12fixSCCCopiesERN4llvm15MachineFunctionE.exit, label %.lr.ph148.i

.lr.ph148.i:                                      ; preds = %_ZN12_GLOBAL__N_115SIFixSGPRCopies20lowerVGPR2SGPRCopiesERN4llvm15MachineFunctionE.exit
  %i.ana = load ptr, ptr %i.e, align 8, !tbaa !568, !nonnull !29, !align !187
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 384
  %i.anc = load i8, ptr %i.anb, align 8, !tbaa !603
  %i.and = icmp eq i8 %i.anc, 5                   ; 3 uses
  %.neg.i = select i1 %i.and, i64 -4604, i64 -4606
  %i.ane = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.anf = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.ang = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.anh = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ani = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.anj = getelementptr inbounds nuw i8, ptr %18, i64 16
  %.sroa.01.0.copyload.i = select i1 %i.and, i32 4, i32 2
  %i.ank = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.anl = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.anm = getelementptr inbounds nuw i8, ptr %17, i64 16
  %.neg134.i = select i1 %i.and, i64 -5109, i64 -5110
  %i.ann = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ano = getelementptr inbounds nuw i8, ptr %24, i64 4
  %i.anp = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.anq = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.anr = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ans = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ant = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.anu = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.anv = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.anw = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.anx = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.any = getelementptr inbounds nuw i8, ptr %20, i64 16
  br label %bb.cy

bb.cy:                                            ; preds = %._crit_edge.i189, %.lr.ph148.i
  %.sroa.0125.0146.i = phi ptr [ %.sroa.0125.0144.i, %.lr.ph148.i ], [ %.sroa.0125.0.i, %._crit_edge.i189 ] ; 3 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %.sroa.0125.0146.i, i64 56
  %i.aoa = getelementptr inbounds nuw i8, ptr %.sroa.0125.0146.i, i64 48 ; 2 uses
  %.sroa.0121.0141.i = load ptr, ptr %i.anz, align 8, !tbaa !322 ; 2 uses
  %.not131142.i = icmp eq ptr %.sroa.0121.0141.i, %i.aoa
  br i1 %.not131142.i, label %._crit_edge.i189, label %.lr.ph.i186

._crit_edge.i189:                                 ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, %bb.cy
  %i.aob = getelementptr inbounds nuw i8, ptr %.sroa.0125.0146.i, i64 8
  %.sroa.0125.0.i = load ptr, ptr %i.aob, align 8, !tbaa !569 ; 2 uses
  %.not.i190 = icmp eq ptr %.sroa.0125.0.i, %i.r
  br i1 %.not.i190, label %_ZN12_GLOBAL__N_115SIFixSGPRCopies12fixSCCCopiesERN4llvm15MachineFunctionE.exit, label %bb.cy

.lr.ph.i186:                                      ; preds = %bb.cy, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %.sroa.0121.0143.i = phi ptr [ %.sroa.0121.0.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ %.sroa.0121.0141.i, %bb.cy ] ; 19 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %.sroa.0121.0143.i, i64 52
  %i.aod = load i32, ptr %i.aoc, align 4, !tbaa !323
  %i.aoe = icmp eq i32 %i.aod, 20
  br i1 %i.aoe, label %bb.cz, label %bb.dd

bb.cz:                                            ; preds = %.lr.ph.i186
  %i.aof = getelementptr inbounds nuw i8, ptr %.sroa.0121.0143.i, i64 32
  %i.aog = load ptr, ptr %i.aof, align 8, !tbaa !247 ; 2 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aog, i64 36
  %i.aoi = load i32, ptr %i.aoh, align 4, !tbaa !248 ; 2 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aog, i64 4
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !248 ; 2 uses
  %i.aol = icmp eq i32 %i.aoi, 19
  br i1 %i.aol, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.aom = load ptr, ptr %i.i, align 8, !tbaa !189
  %i.aon = load ptr, ptr %i.k, align 8, !tbaa !190
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 329
  %i.aop = load i8, ptr %i.aoo, align 1, !tbaa !613, !range !28, !noundef !29
  %i.aoq = trunc nuw i8 %i.aop to i1
  %i.aor = select i1 %i.aoq, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 1728), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 3840)
  %i.aos = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.aom, ptr noundef nonnull %i.aor, ptr nonnull @.str.6, i64 0) #18 ; 2 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %.sroa.0121.0143.i, i64 24 ; 2 uses
  %i.aou = load ptr, ptr %i.aot, align 8, !tbaa !246 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i192 = load i64, ptr %.sroa.0121.0143.i, align 8
  %i.aov = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i192, 4
  %.not.i.i.i.i.i193 = icmp eq i64 %i.aov, 0
  br i1 %.not.i.i.i.i.i193, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %bb.da
  %i.aow = getelementptr inbounds nuw i8, ptr %.sroa.0121.0143.i, i64 44
  %i.aox = load i32, ptr %i.aow, align 4, !tbaa !280
  %i.aoy = and i32 %i.aox, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.aoy, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.apa, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %.sroa.0121.0143.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.aoz = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.apa = load ptr, ptr %i.aoz, align 8, !tbaa !322 ; 3 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 44
  %i.apc = load i32, ptr %i.apb, align 4, !tbaa !280
  %i.apd = and i32 %i.apc, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.apd, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !505

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %bb.da
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %.sroa.0121.0143.i, %bb.da ], [ %.sroa.0121.0143.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.apa, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ]
  %i.ape = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 8
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !322 ; 4 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %.sroa.0121.0143.i, i64 72
  %.sroa.016.0.copyload.i = load ptr, ptr %i.apg, align 8, !tbaa !277
  %i.aph = load ptr, ptr %i.m, align 8, !tbaa !191
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 8
  %i.apj = load ptr, ptr %i.api, align 8, !tbaa !589
  %i.apk = getelementptr inbounds [32 x i8], ptr %i.apj, i64 %.neg134.i
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aou, i64 32
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !321 ; 4 uses
  %i.apn = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.apm, ptr noundef nonnull align 8 dereferenceable(32) %i.apk, ptr %.sroa.016.0.copyload.i, i1 noundef zeroext false) #18 ; 15 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %i.aou, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.apo, ptr noundef %i.apn) #18
  %.0.copyload.i.i.i.i.i.i.i.i.i.i44.i = load i64, ptr %i.apf, align 8
  %i.app = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i44.i, -8 ; 2 uses
  %i.apq = inttoptr i64 %i.app to ptr
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apn, i64 8
  store ptr %i.apf, ptr %i.apr, align 8, !tbaa !322
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i194 = load i64, ptr %i.apn, align 8
  %i.aps = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i194, 7
  %i.apt = or disjoint i64 %i.aps, %i.app
  store i64 %i.apt, ptr %i.apn, align 8
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apq, i64 8
  store ptr %i.apn, ptr %i.apu, align 8, !tbaa !322
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i195 = load i64, ptr %i.apf, align 8
  %i.apv = ptrtoint ptr %i.apn to i64
  %i.apw = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i195, 7
  %i.apx = or disjoint i64 %i.apw, %i.apv
  store i64 %i.apx, ptr %i.apf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  store ptr null, ptr %i.ann, align 8, !tbaa !279, !alias.scope !614
  store i32 %i.aos, ptr %i.ano, align 4, !tbaa !248, !alias.scope !614
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.anp, i8 0, i64 16, i1 false), !alias.scope !614
  store i32 16777216, ptr %24, align 8, !alias.scope !614
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.apn, ptr noundef nonnull align 8 dereferenceable(1065) %i.apm, ptr noundef nonnull align 8 dereferenceable(32) %24) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  store i32 1, ptr %23, align 8, !alias.scope !615
  store ptr null, ptr %i.anq, align 8, !tbaa !279, !alias.scope !615
  store i64 -1, ptr %i.anr, align 8, !tbaa !248, !alias.scope !615
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.apn, ptr noundef nonnull align 8 dereferenceable(1065) %i.apm, ptr noundef nonnull align 8 dereferenceable(32) %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  store i32 1, ptr %22, align 8, !alias.scope !616
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ans, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.apn, ptr noundef nonnull align 8 dereferenceable(1065) %i.apm, ptr noundef nonnull align 8 dereferenceable(32) %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  %i.apy = load ptr, ptr %i.aot, align 8, !tbaa !246 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i47.i = load i64, ptr %i.apn, align 8
  %i.apz = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i47.i, 4
  %.not.i.i.i.i48.i = icmp eq i64 %i.apz, 0
  br i1 %.not.i.i.i.i48.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i52.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i49.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i52.i: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apn, i64 44
  %i.aqb = load i32, ptr %i.aqa, align 4, !tbaa !280
  %i.aqc = and i32 %i.aqb, 8
  %.not34.i.i.i.i53.i = icmp eq i32 %i.aqc, 0
  br i1 %.not34.i.i.i.i53.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i49.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i54.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i54.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i52.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i54.i
  %.sroa.0.05.i.i.i.i55.i = phi ptr [ %i.aqe, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i54.i ], [ %i.apn, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i52.i ]
  %i.aqd = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i55.i, i64 8
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !322 ; 3 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 44
  %i.aqg = load i32, ptr %i.aqf, align 4, !tbaa !280
  %i.aqh = and i32 %i.aqg, 8
  %.not3.i.i.i.i56.i = icmp eq i32 %i.aqh, 0
  br i1 %.not3.i.i.i.i56.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i49.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i54.i, !llvm.loop !505

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i49.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i54.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i52.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i
  %.sroa.0.1.i.i.i.i50.i = phi ptr [ %i.apn, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i ], [ %i.apn, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i52.i ], [ %i.aqe, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i54.i ]
  %i.aqi = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i50.i, i64 8
  %i.aqj = load ptr, ptr %i.aqi, align 8, !tbaa !322 ; 4 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.apn, i64 72
  %.sroa.011.0.copyload.i = load ptr, ptr %i.aqk, align 8, !tbaa !277
  %i.aql = load ptr, ptr %i.m, align 8, !tbaa !191
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 8
  %i.aqn = load ptr, ptr %i.aqm, align 8, !tbaa !589
  %i.aqo = getelementptr inbounds i8, ptr %i.aqn, i64 -640
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.apy, i64 32
  %i.aqq = load ptr, ptr %i.aqp, align 8, !tbaa !321 ; 3 uses
  %i.aqr = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.aqq, ptr noundef nonnull align 8 dereferenceable(32) %i.aqo, ptr %.sroa.011.0.copyload.i, i1 noundef zeroext false) #18 ; 9 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.apy, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.aqs, ptr noundef %i.aqr) #18
  %.0.copyload.i.i.i.i.i.i.i.i.i.i59.i = load i64, ptr %i.aqj, align 8
  %i.aqt = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i59.i, -8 ; 2 uses
  %i.aqu = inttoptr i64 %i.aqt to ptr
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqr, i64 8
  store ptr %i.aqj, ptr %i.aqv, align 8, !tbaa !322
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i60.i = load i64, ptr %i.aqr, align 8
  %i.aqw = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i60.i, 7
  %i.aqx = or disjoint i64 %i.aqw, %i.aqt
  store i64 %i.aqx, ptr %i.aqr, align 8
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqu, i64 8
  store ptr %i.aqr, ptr %i.aqy, align 8, !tbaa !322
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i61.i = load i64, ptr %i.aqj, align 8
  %i.aqz = ptrtoint ptr %i.aqr to i64
  %i.ara = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i61.i, 7
  %i.arb = or disjoint i64 %i.ara, %i.aqz
  store i64 %i.arb, ptr %i.aqj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  store ptr null, ptr %i.ant, align 8, !tbaa !279, !alias.scope !617
  store i32 %i.aok, ptr %i.anu, align 4, !tbaa !248, !alias.scope !617
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.anv, i8 0, i64 16, i1 false), !alias.scope !617
  store i32 16777216, ptr %21, align 8, !alias.scope !617
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aqr, ptr noundef nonnull align 8 dereferenceable(1065) %i.aqq, ptr noundef nonnull align 8 dereferenceable(32) %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  store ptr null, ptr %i.anw, align 8, !tbaa !279, !alias.scope !618
  store i32 %i.aos, ptr %i.anx, align 4, !tbaa !248, !alias.scope !618
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.any, i8 0, i64 16, i1 false), !alias.scope !618
  store i32 0, ptr %20, align 8, !alias.scope !618
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aqr, ptr noundef nonnull align 8 dereferenceable(1065) %i.aqq, ptr noundef nonnull align 8 dereferenceable(32) %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %.sink.split.i

bb.db:                                            ; preds = %bb.cz
  %i.arc = icmp eq i32 %i.aok, 19
  br i1 %i.arc, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.ard = load ptr, ptr %i.i, align 8, !tbaa !189
  %i.are = load ptr, ptr %i.k, align 8, !tbaa !190
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 329
  %i.arg = load i8, ptr %i.arf, align 1, !tbaa !613, !range !28, !noundef !29
  %i.arh = trunc nuw i8 %i.arg to i1
  %i.ari = select i1 %i.arh, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 1408), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 3776)
  %i.arj = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.ard, ptr noundef nonnull %i.ari, ptr nonnull @.str.6, i64 0) #18
  %i.ark = getelementptr inbounds nuw i8, ptr %.sroa.0121.0143.i, i64 24
  %i.arl = load ptr, ptr %i.ark, align 8, !tbaa !246 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i70.i = load i64, ptr %.sroa.0121.0143.i, align 8
  %i.arm = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i70.i, 4
  %.not.i.i.i.i71.i = icmp eq i64 %i.arm, 0
  br i1 %.not.i.i.i.i71.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i75.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i72.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i75.i: ; preds = %bb.dc
  %i.arn = getelementptr inbounds nuw i8, ptr %.sroa.0121.0143.i, i64 44
  %i.aro = load i32, ptr %i.arn, align 4, !tbaa !280
  %i.arp = and i32 %i.aro, 8
  %.not34.i.i.i.i76.i = icmp eq i32 %i.arp, 0
  br i1 %.not34.i.i.i.i76.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i72.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i77.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i77.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i75.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i77.i
  %.sroa.0.05.i.i.i.i78.i = phi ptr [ %i.arr, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i77.i ], [ %.sroa.0121.0143.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i75.i ]
  %i.arq = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i78.i, i64 8
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !322 ; 3 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 44
  %i.art = load i32, ptr %i.ars, align 4, !tbaa !280
  %i.aru = and i32 %i.art, 8
  %.not3.i.i.i.i79.i = icmp eq i32 %i.aru, 0
  br i1 %.not3.i.i.i.i79.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i72.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i77.i, !llvm.loop !505

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i72.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i77.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i75.i, %bb.dc
  %.sroa.0.1.i.i.i.i73.i = phi ptr [ %.sroa.0121.0143.i, %bb.dc ], [ %.sroa.0121.0143.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i75.i ], [ %i.arr, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i77.i ]
  %i.arv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i73.i, i64 8
  %i.arw = load ptr, ptr %i.arv, align 8, !tbaa !322 ; 4 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %.sroa.0121.0143.i, i64 72
  %.sroa.04.0.copyload.i191 = load ptr, ptr %i.arx, align 8, !tbaa !277
  %i.ary = load ptr, ptr %i.m, align 8, !tbaa !191
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 8
  %i.asa = load ptr, ptr %i.arz, align 8, !tbaa !589
  %i.asb = getelementptr inbounds [32 x i8], ptr %i.asa, i64 %.neg.i
  %i.asc = getelementptr inbounds nuw i8, ptr %i.arl, i64 32
  %i.asd = load ptr, ptr %i.asc, align 8, !tbaa !321 ; 4 uses
  %i.ase = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.asd, ptr noundef nonnull align 8 dereferenceable(32) %i.asb, ptr %.sroa.04.0.copyload.i191, i1 noundef zeroext false) #18 ; 10 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %i.arl, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.asf, ptr noundef %i.ase) #18
  %.0.copyload.i.i.i.i.i.i.i.i.i.i81.i = load i64, ptr %i.arw, align 8
  %i.asg = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i81.i, -8 ; 2 uses
  %i.ash = inttoptr i64 %i.asg to ptr
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ase, i64 8
  store ptr %i.arw, ptr %i.asi, align 8, !tbaa !322
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i82.i = load i64, ptr %i.ase, align 8
  %i.asj = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i82.i, 7
  %i.ask = or disjoint i64 %i.asj, %i.asg
  store i64 %i.ask, ptr %i.ase, align 8
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ash, i64 8
  store ptr %i.ase, ptr %i.asl, align 8, !tbaa !322
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i83.i = load i64, ptr %i.arw, align 8
  %i.asm = ptrtoint ptr %i.ase to i64
  %i.asn = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i83.i, 7
  %i.aso = or disjoint i64 %i.asn, %i.asm
  store i64 %i.aso, ptr %i.arw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  store ptr null, ptr %i.ane, align 8, !tbaa !279, !alias.scope !619
  store i32 %i.arj, ptr %i.anf, align 4, !tbaa !248, !alias.scope !619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ang, i8 0, i64 16, i1 false), !alias.scope !619
  store i32 16777216, ptr %19, align 8, !alias.scope !619
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ase, ptr noundef nonnull align 8 dereferenceable(1065) %i.asd, ptr noundef nonnull align 8 dereferenceable(32) %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  store ptr null, ptr %i.anh, align 8, !tbaa !279, !alias.scope !620
  store i32 %i.aoi, ptr %i.ani, align 4, !tbaa !248, !alias.scope !620
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.anj, i8 0, i64 16, i1 false), !alias.scope !620
  store i32 0, ptr %18, align 8, !alias.scope !620
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ase, ptr noundef nonnull align 8 dereferenceable(1065) %i.asd, ptr noundef nonnull align 8 dereferenceable(32) %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  store ptr null, ptr %i.ank, align 8, !tbaa !279, !alias.scope !621
  store i32 %.sroa.01.0.copyload.i, ptr %i.anl, align 4, !tbaa !248, !alias.scope !621
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.anm, i8 0, i64 16, i1 false), !alias.scope !621
  store i32 0, ptr %17, align 8, !alias.scope !621
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ase, ptr noundef nonnull align 8 dereferenceable(1065) %i.asd, ptr noundef nonnull align 8 dereferenceable(32) %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i72.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i49.i
  %.sroa.0121.2.ph.i = phi ptr [ %i.ase, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i72.i ], [ %i.aqr, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i49.i ]
  %i.asp = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0121.0143.i) #18 ; 0 uses
  br label %bb.dd

bb.dd:                                            ; preds = %.sink.split.i, %bb.db, %.lr.ph.i186
  %.sroa.0121.2.i = phi ptr [ %.sroa.0121.0143.i, %.lr.ph.i186 ], [ %.sroa.0121.0143.i, %bb.db ], [ %.sroa.0121.2.ph.i, %.sink.split.i ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0121.2.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0121.2.i, align 8
  %i.asq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i187 = icmp eq i64 %i.asq, 0
  br i1 %.not.i.i.i.i187, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %bb.dd
  %i.asr = getelementptr inbounds nuw i8, ptr %.sroa.0121.2.i, i64 44
  %i.ass = load i32, ptr %i.asr, align 4, !tbaa !280
  %i.ast = and i32 %i.ass, 8
  %.not34.i.i.i.i = icmp eq i32 %i.ast, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.asv, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %.sroa.0121.2.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.asu = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.asv = load ptr, ptr %i.asu, align 8, !tbaa !322 ; 3 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 44
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !280
  %i.asy = and i32 %i.asx, 8
  %.not3.i.i.i.i = icmp eq i32 %i.asy, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !505

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %bb.dd
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.0121.2.i, %bb.dd ], [ %.sroa.0121.2.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.asv, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.asz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %.sroa.0121.0.i = load ptr, ptr %i.asz, align 8, !tbaa !322 ; 2 uses
  %.not131.i188 = icmp eq ptr %.sroa.0121.0.i, %i.aoa
  br i1 %.not131.i188, label %._crit_edge.i189, label %.lr.ph.i186, !llvm.loop !522

_ZN12_GLOBAL__N_115SIFixSGPRCopies12fixSCCCopiesERN4llvm15MachineFunctionE.exit: ; preds = %._crit_edge.i189, %_ZN12_GLOBAL__N_115SIFixSGPRCopies20lowerVGPR2SGPRCopiesERN4llvm15MachineFunctionE.exit
  %i.ata = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !32 ; 2 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.atd = load i32, ptr %i.atc, align 8, !tbaa !70 ; 2 uses
  %i.ate = zext i32 %i.atd to i64
  %.idx539.a = shl nuw nsw i64 %i.ate, 3
  %i.atf = getelementptr inbounds nuw i8, ptr %i.atb, i64 %.idx539.a
  %.not523 = icmp eq i32 %i.atd, 0
  br i1 %.not523, label %._crit_edge526, label %.lr.ph525

bb.de:                                            ; preds = %.lr.ph497, %._crit_edge
  %.sroa.0353.0495 = phi ptr [ %.sroa.0353.0493, %.lr.ph497 ], [ %.sroa.0353.0, %._crit_edge ] ; 4 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %.sroa.0353.0495, i64 56
  %i.ath = getelementptr inbounds nuw i8, ptr %.sroa.0353.0495, i64 48 ; 2 uses
  %.sroa.0350.0488 = load ptr, ptr %i.atg, align 8, !tbaa !322 ; 2 uses
  %.not389489 = icmp eq ptr %.sroa.0350.0488, %i.ath
  br i1 %.not389489, label %._crit_edge, label %.lr.ph492

._crit_edge:                                      ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %bb.de
  %i.ati = getelementptr inbounds nuw i8, ptr %.sroa.0353.0495, i64 8
  %.sroa.0353.0 = load ptr, ptr %i.ati, align 8, !tbaa !569 ; 2 uses
  %.not387.a = icmp eq ptr %.sroa.0353.0, %i.r
  br i1 %.not387.a, label %._crit_edge498, label %bb.de

.lr.ph492:                                        ; preds = %bb.de, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %.sroa.0350.0490 = phi ptr [ %.sroa.0350.0, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.0350.0488, %bb.de ] ; 60 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %.sroa.0350.0490, i64 52 ; 6 uses
  %i.atk = load i32, ptr %i.atj, align 4, !tbaa !323 ; 2 uses
  switch i32 %i.atk, label %bb.df [
    i32 20, label %bb.dk
    i32 11477, label %bb.ew
    i32 4577, label %bb.ew
    i32 4576, label %bb.ew
    i32 4578, label %bb.ew
    i32 9, label %bb.ew
    i32 0, label %bb.ew
    i32 19, label %bb.ew
    i32 11430, label %bb.fv
  ]

bb.df:                                            ; preds = %.lr.ph492
  %i.atl = getelementptr inbounds nuw i8, ptr %.sroa.0350.0490, i64 16
  %i.atm = load ptr, ptr %i.atl, align 8, !tbaa !324
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atm, i64 24
  %i.ato = load i64, ptr %i.atn, align 8, !tbaa !326
  %i.atp = and i64 %i.ato, 576460752303423488
  %.not395.a = icmp eq i64 %i.atp, 0
  br i1 %.not395.a, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.atq = call noundef signext i16 @_ZN4llvm6AMDGPU18getNamedOperandIdxEjNS0_6OpNameE(i32 noundef %i.atk, i8 noundef zeroext 85) #21
  %.not396 = icmp eq i16 %i.atq, -1
  br i1 %.not396, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.atr = load i32, ptr %i.o, align 8, !tbaa !70 ; 2 uses
  %i.ats = load i32, ptr %i.p, align 4, !tbaa !71
  %.not.i196 = icmp ult i32 %i.atr, %i.ats
  br i1 %.not.i196, label %bb.dj, label %bb.di, !prof !206

bb.di:                                            ; preds = %bb.dh
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull %.sroa.0350.0490)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

bb.dj:                                            ; preds = %bb.dh
  %i.att = zext i32 %i.atr to i64
  %i.atu = load ptr, ptr %54, align 8, !tbaa !32
  %i.atv = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %i.att
  store ptr %.sroa.0350.0490, ptr %i.atv, align 1
  %i.atw = load i32, ptr %i.o, align 8, !tbaa !70
  %i.atx = add i32 %i.atw, 1
  store i32 %i.atx, ptr %i.o, align 8, !tbaa !70
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

bb.dk:                                            ; preds = %.lr.ph492
  %i.aty = load ptr, ptr %i.k, align 8, !tbaa !190 ; 2 uses
  %i.atz = load ptr, ptr %i.i, align 8, !tbaa !189 ; 2 uses
  %i.aua = getelementptr i8, ptr %.sroa.0350.0490, i64 32 ; 6 uses
  %.val183 = load ptr, ptr %i.aua, align 8, !tbaa !247 ; 2 uses
  %i.aub = getelementptr i8, ptr %.val183, i64 4
  %.val183.val = load i32, ptr %i.aub, align 4, !tbaa !248 ; 3 uses
  %i.auc = getelementptr i8, ptr %.val183, i64 36
  %.val183.val184 = load i32, ptr %i.auc, align 4, !tbaa !248 ; 3 uses
  %i.aud = icmp slt i32 %.val183.val184, 0
  br i1 %i.aud, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.aue = getelementptr inbounds nuw i8, ptr %i.atz, i64 48
  %i.auf = and i32 %.val183.val184, 2147483647
  %i.aug = zext nneg i32 %i.auf to i64
  %i.auh = load ptr, ptr %i.aue, align 8, !tbaa !32
  %i.aui = getelementptr inbounds nuw [16 x i8], ptr %i.auh, i64 %i.aug
  %.0.copyload.i.i.i.i.i.i.i197 = load i64, ptr %i.aui, align 8
  %i.auj = and i64 %.0.copyload.i.i.i.i.i.i.i197, -5
  %i.auk = inttoptr i64 %i.auj to ptr
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dk
  %i.aul = call noundef ptr @_ZNK4llvm21AMDGPUGenRegisterInfo19getPhysRegBaseClassENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.aty, i32 %.val183.val184) #18
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.aum = phi ptr [ %i.auk, %bb.dl ], [ %i.aul, %bb.dm ] ; 3 uses
  %i.aun = icmp slt i32 %.val183.val, 0
  br i1 %i.aun, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.auo = getelementptr inbounds nuw i8, ptr %i.atz, i64 48
  %i.aup = and i32 %.val183.val, 2147483647
  %i.auq = zext nneg i32 %i.aup to i64
  %i.aur = load ptr, ptr %i.auo, align 8, !tbaa !32
  %i.aus = getelementptr inbounds nuw [16 x i8], ptr %i.aur, i64 %i.auq
  %.0.copyload.i.i.i.i.i.i9.i = load i64, ptr %i.aus, align 8
  %i.aut = and i64 %.0.copyload.i.i.i.i.i.i9.i, -5
  %i.auu = inttoptr i64 %i.aut to ptr
  br label %_ZL17getCopyRegClassesRKN4llvm12MachineInstrERKNS_14SIRegisterInfoERKNS_19MachineRegisterInfoE.exit

bb.dp:                                            ; preds = %bb.dn
  %i.auv = call noundef ptr @_ZNK4llvm21AMDGPUGenRegisterInfo19getPhysRegBaseClassENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.aty, i32 %.val183.val) #18
  br label %_ZL17getCopyRegClassesRKN4llvm12MachineInstrERKNS_14SIRegisterInfoERKNS_19MachineRegisterInfoE.exit

_ZL17getCopyRegClassesRKN4llvm12MachineInstrERKNS_14SIRegisterInfoERKNS_19MachineRegisterInfoE.exit: ; preds = %bb.do, %bb.dp
  %i.auw = phi ptr [ %i.auu, %bb.do ], [ %i.auv, %bb.dp ] ; 3 uses
  %.not.i198 = icmp eq ptr %i.auw, getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 64)
  br i1 %.not.i198, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit200, label %bb.dq

bb.dq:                                            ; preds = %_ZL17getCopyRegClassesRKN4llvm12MachineInstrERKNS_14SIRegisterInfoERKNS_19MachineRegisterInfoE.exit
  %i.aux = getelementptr inbounds nuw i8, ptr %i.aum, i64 50
  %i.auy = load i8, ptr %i.aux, align 2, !tbaa !327
  %i.auz = and i8 %i.auy, 28
  %i.ava = icmp eq i8 %i.auz, 16
  br i1 %i.ava, label %_ZL16isSGPRToVGPRCopyPKN4llvm15MCRegisterClassES2_RKNS_14SIRegisterInfoE.exit, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit200

_ZL16isSGPRToVGPRCopyPKN4llvm15MCRegisterClassES2_RKNS_14SIRegisterInfoE.exit: ; preds = %bb.dq
  %i.avb = getelementptr inbounds nuw i8, ptr %i.auw, i64 50
  %i.avc = load i8, ptr %i.avb, align 2, !tbaa !327
  %i.avd = and i8 %i.avc, 12
  %.not393.a = icmp eq i8 %i.avd, 0
  br i1 %.not393.a, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit200, label %bb.dr

bb.dr:                                            ; preds = %_ZL16isSGPRToVGPRCopyPKN4llvm15MCRegisterClassES2_RKNS_14SIRegisterInfoE.exit
  %i.ave = load ptr, ptr %i.k, align 8, !tbaa !190
  %i.avf = load ptr, ptr %i.m, align 8, !tbaa !191
  %i.avg = call fastcc noundef zeroext i1 @_ZL25tryChangeVGPRtoSGPRinCopyRN4llvm12MachineInstrEPKNS_14SIRegisterInfoEPKNS_11SIInstrInfoE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0350.0490, ptr noundef %i.ave, ptr noundef %i.avf)
  br i1 %i.avg, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.avh = load i32, ptr %i.ao, align 8, !tbaa !70 ; 2 uses
  %i.avi = load i32, ptr %i.ap, align 4, !tbaa !71
  %.not.i199 = icmp ult i32 %i.avh, %i.avi
  br i1 %.not.i199, label %bb.du, label %bb.dt, !prof !206

bb.dt:                                            ; preds = %bb.ds
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull %.sroa.0350.0490)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit200

bb.du:                                            ; preds = %bb.ds
  %i.avj = zext i32 %i.avh to i64
end_hunk_1
