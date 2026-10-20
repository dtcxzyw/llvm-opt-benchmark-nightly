Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BPFISelDAGToDAG?download=true
inline.NumInlined: 1085
inline.NumDeleted: 631
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::once_flag" = type { i32 }
%"struct.std::piecewise_construct_t" = type { i8 }
%class.anon = type { ptr, ptr }
%"class.std::reference_wrapper" = type { ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.6" }
%"struct.std::_Head_base.6" = type { ptr }
%union.anon.359 = type { i64 }
%"class.llvm::SDLoc" = type <{ %"class.llvm::DebugLoc", i32, [4 x i8] }>
%"class.llvm::DebugLoc" = type { ptr }
%"class.llvm::SDValue" = type <{ ptr, i32, [4 x i8] }>
%"struct.llvm::EVT" = type { %"class.llvm::MVT", ptr }
%"class.llvm::MVT" = type { i16 }
%"class.std::tuple.386" = type { %"struct.std::_Tuple_impl.387" }
%"struct.std::_Tuple_impl.387" = type { %"struct.std::_Head_base.388" }
%"struct.std::_Head_base.388" = type { ptr }
%"class.std::tuple.389" = type { i8 }
%"class.std::vector.221" = type { %"struct.std::_Vector_base.222" }
%"struct.std::_Vector_base.222" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN4llvm22SelectionDAGISelLegacyD2Ev = comdat any

$_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE = comdat any

$_ZN4llvm4Pass14doFinalizationERNS_6ModuleE = comdat any

$_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv = comdat any

$_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv = comdat any

$_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv = comdat any

$_ZN4llvm16SelectionDAGISel21emitFunctionEntryCodeEv = comdat any

$_ZN4llvm16SelectionDAGISel18PostprocessISelDAGEv = comdat any

$_ZN4llvm16SelectionDAGISel18getPatternForIndexEj = comdat any

$_ZN4llvm16SelectionDAGISel22getIncludePathForIndexEj = comdat any

$_ZNK4llvm16SelectionDAGISel30CheckNodePredicateWithOperandsENS_7SDValueEjNS_8ArrayRefIS1_EE = comdat any

$_ZNK4llvm16SelectionDAGISel21getValueTypeForHwModeEj = comdat any

$_ZNK4llvm16SelectionDAGISel28ComplexPatternFuncMutatesDAGEv = comdat any

$_ZNSt8_Rb_treeIPKvSt4pairIKS1_St6vectorIhSaIhEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E = comdat any

$_ZNSt6vectorIhSaIhEEaSERKS1_ = comdat any

$_ZNSt8_Rb_treeIPKvSt4pairIKS1_St6vectorIhSaIhEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS1_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIPKvSt4pairIKS1_St6vectorIhSaIhEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS3_ = comdat any

$_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZZN4llvm14isStrongerThanENS_14AtomicOrderingES0_E6lookup = comdat any

$_ZZN4llvm23isAtLeastOrStrongerThanENS_14AtomicOrderingES0_E6lookup = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZL39InitializeBPFDAGToDAGISelLegacyPassFlag = internal global %"struct.std::once_flag" zeroinitializer, align 4
@.str = private unnamed_addr constant [43 x i8] c"BPF DAG->DAG Pattern Instruction Selection\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"bpf-isel\00", align 1
@_ZN12_GLOBAL__N_121BPFDAGToDAGISelLegacy2IDE = internal global i8 0, align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"target-specific codegen-only pass\00", align 1
@_ZTVN12_GLOBAL__N_121BPFDAGToDAGISelLegacyE = internal unnamed_addr constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr null, ptr @_ZN4llvm22SelectionDAGISelLegacyD2Ev, ptr @_ZN12_GLOBAL__N_121BPFDAGToDAGISelLegacyD0Ev, ptr @_ZNK4llvm4Pass11getPassNameEv, ptr @_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE, ptr @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE, ptr @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE, ptr @_ZNK4llvm19MachineFunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE, ptr @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE, ptr @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv, ptr @_ZNK4llvm22SelectionDAGISelLegacy16getAnalysisUsageERNS_13AnalysisUsageE, ptr @_ZN4llvm4Pass13releaseMemoryEv, ptr @_ZN4llvm4Pass18getAsImmutablePassEv, ptr @_ZN4llvm4Pass18getAsPMDataManagerEv, ptr @_ZNK4llvm4Pass14verifyAnalysisEv, ptr @_ZN4llvm4Pass17dumpPassStructureEj, ptr @_ZN4llvm19MachineFunctionPass13runOnFunctionERNS_8FunctionE, ptr @_ZN4llvm19MachineFunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE, ptr @_ZN4llvm22SelectionDAGISelLegacy20runOnMachineFunctionERNS_15MachineFunctionE, ptr @_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv, ptr @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv, ptr @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv] }, align 8
@_ZTVN4llvm22SelectionDAGISelLegacyE = external unnamed_addr constant { [24 x ptr] }, align 8
@_ZTVN12_GLOBAL__N_115BPFDAGToDAGISelE = internal unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_115BPFDAGToDAGISelD2Ev, ptr @_ZN12_GLOBAL__N_115BPFDAGToDAGISelD0Ev, ptr @_ZN12_GLOBAL__N_115BPFDAGToDAGISel20runOnMachineFunctionERN4llvm15MachineFunctionE, ptr @_ZN4llvm16SelectionDAGISel21emitFunctionEntryCodeEv, ptr @_ZN12_GLOBAL__N_115BPFDAGToDAGISel17PreprocessISelDAGEv, ptr @_ZN4llvm16SelectionDAGISel18PostprocessISelDAGEv, ptr @_ZN12_GLOBAL__N_115BPFDAGToDAGISel6SelectEPN4llvm6SDNodeE, ptr @_ZN12_GLOBAL__N_115BPFDAGToDAGISel28SelectInlineAsmMemoryOperandERKN4llvm7SDValueENS1_9InlineAsm14ConstraintCodeERSt6vectorIS2_SaIS2_EE, ptr @_ZNK4llvm16SelectionDAGISel18IsProfitableToFoldENS_7SDValueEPNS_6SDNodeES3_, ptr @_ZN4llvm16SelectionDAGISel18getPatternForIndexEj, ptr @_ZN4llvm16SelectionDAGISel22getIncludePathForIndexEj, ptr @_ZNK12_GLOBAL__N_115BPFDAGToDAGISel21CheckPatternPredicateEj, ptr @_ZNK12_GLOBAL__N_115BPFDAGToDAGISel18CheckNodePredicateEN4llvm7SDValueEj, ptr @_ZNK4llvm16SelectionDAGISel30CheckNodePredicateWithOperandsENS_7SDValueEjNS_8ArrayRefIS1_EE, ptr @_ZN12_GLOBAL__N_115BPFDAGToDAGISel19CheckComplexPatternEPN4llvm6SDNodeES3_NS1_7SDValueEjRNS1_15SmallVectorImplISt4pairIS4_S3_EEE, ptr @_ZN12_GLOBAL__N_115BPFDAGToDAGISel14RunSDNodeXFormEN4llvm7SDValueEj, ptr @_ZNK4llvm16SelectionDAGISel21getValueTypeForHwModeEj, ptr @_ZNK4llvm16SelectionDAGISel28ComplexPatternFuncMutatesDAGEv] }, align 8
@.str.3 = private unnamed_addr constant [99 x i8] c"Cannot implicitly convert a scalable size to a fixed-width size in `TypeSize::operator ScalarTy()`\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZZN12_GLOBAL__N_115BPFDAGToDAGISel10SelectCodeEPN4llvm6SDNodeEE12MatcherTable = internal constant [4435 x i8] c":\C6\02=\01\0A\01\03\00\8F\01\0F9\0C\00BI\08\00\130\1F\04U/\0B/\0D,u\02\99\91\B3\F3\01\09\03\192/\22\1F\04U/\0B/\0C\00\0C1,u\02\99\91\B3\FB\01\09\03\19\0C2,u\02\99\91\B3\F7\01\09\03\19\0C3,u\02\99\91\B3\F0\01\09\03\19\00\00<\07\1F\04U/\0B\00\0F/\0D-u\02\99\A6\00\01\B3\FB\01\09\03\19$/\0C\00\0F2-u\02\99\91\A6\00\05\B3\F7\01\09\03\1E\0F3-u\02\99\91\A6\00\05\B3\F0\01\09\03\1E\00\00\00}T\04U/\0B\00(/\0C\00\0B1(u\02\99\B3\F8\01\09\03\14\0B2(u\02\99\B3\F4\01\09\03\14\0B3(u\02\99\B3\ED\01\09\03\14\00\0B/\0Du\02\99\B3\F1\01\09\03\14@/\0C\00\133&u\02\99\85\01\AC\08\00\07\02!\B3\EE\01\09\03\1E\132&u\02\99\85\01\AC\08\00\07\02!\B3\F5\01\09\03\1E\131&u\02\99\85\01\AC\08\00\07\02!\B3\F9\01\09\03\1E\00\001L\04U/\0B\00\0C/\0D&u\02\99\B3\F9\01\09\03\14\1C/\0C\00\0B2&u\02\99\B3\F5\01\09\03\14\0B3&u\02\99\B3\EE\01\09\03\14\00\00\00\8D\011\00\01\00\17m\9C!\04\109\0C\00\1A9\0C\00\01\1F\99\91\92\B9\BB\01\08\02\15%m\95!\04U\05\00\11\119\0C\000\1F\99\92\9E\07\B4\B4\01\03\08\01\0D\0A\99\9E\07\B4\B7\01\03\08\01\05\00%m\96!\04U\05\00\11\119\0C\000\1F\99\92\9E\07\B4\B5\01\03\08\01\0D\0A\99\9E\07\B4\B8\01\03\08\01\05\00%m\97!\04U\05\00\11\119\0C\000\1F\99\92\9E\07\B4\B6\01\03\08\01\0D\0A\99\9E\07\B4\B9\01\03\08\01\05\00\00}e\01\0A\01\03\00 T\04U/\09\00\0C/\0E'u\02\99\B3\F1\01\09\03\14\0B5'u\02\99\B3\F2\01\09\03\14\00VL\04U\00\0D1/\0E'u\02\99\B3\F9\01\09\03\14\0D2/\0E'u\02\99\B3\F5\01\09\03\14\0D3/\0E'u\02\99\B3\EE\01\09\03\14\0C15'u\02\99\B3\FA\01\09\03\14\0C25'u\02\99\B3\F6\01\09\03\14\0C35'u\02\99\B3\EF\01\09\03\14\00\00\A5\03<\01\0A\01\03T/#B\9B\02\08\00+/\1B\00\0C1(u\01\99\B4\B0\01\09\08\02\0C\0C2(u\01\99\B4\AC\01\09\08\02\0C\0C3(u\01\99\B4\A6\01\09\08\02\0C\00+/\1F\00\0C1+u\01\99\B4\B3\01\09\08\02\0C\0C2+u\01\99\B4\AF\01\09\08\02\0C\0C3+u\01\99\B4\A9\01\09\08\02\0C\00\0C/ u\01\99\B4\AA\01\09\08\02\0C+/\1C\00\0C3(u\01\99\B4\A6\01\09\08\02\0C\0C2(u\01\99\B4\AC\01\09\08\02\0C\0C1(u\01\99\B4\B0\01\09\08\02\0C\00C/\1B\00\143&u\01\99\AA\A7\01\09\07\02\0C\85\01\B9\0C\00\08\02$\142&u\01\99\AA\AD\01\09\07\02\0C\85\01\B9\0C\00\08\02$\141&u\01\99\AA\B1\01\09\07\02\0C\85\01\B9\0C\00\08\02$\00C/\1C\00\143&u\01\99\AA\A7\01\09\07\02\0C\85\01\B9\0C\00\08\02$\142&u\01\99\AA\AD\01\09\07\02\0C\85\01\B9\0C\00\08\02$\141&u\01\99\AA\B1\01\09\07\02\0C\85\01\B9\0C\00\08\02$\00\00}\07\00\0D/ &u\01\99\B4\B1\01\09\07\02\0C\1E/\1B\00\0C2&u\01\99\B4\AD\01\09\07\02\0C\0C3&u\01\99\B4\A7\01\09\07\02\0C\00\1E/\1C\00\0C3&u\01\99\B4\A7\01\09\07\02\0C\0C2&u\01\99\B4\AD\01\09\07\02\0C\00./\1F\00\143+u\01\99\AA\A9\01\09\08\02\0C\85\01\B9\08\00\07\02$\142+u\01\99\AA\AF\01\09\08\02\0C\85\01\B9\08\00\07\02$\00\00\00\D9\01d\01\0A\01\03T\005/!B\1F\08/\09\00\0D/\0A'u\01\99\B4\AA\01\09\08\02\0C\0C4'u\01\99\B4\AB\01\09\08\02\0C\00\0E\071/\0A'u\01\99\B4\B1\01\09\07\02\0C\00\11/\0F2/\0A<'u\01\99\B4\AD\01\09\07\02\0C\11/\102/\0A<'u\01\99\B4\AD\01\09\07\02\0C\11/\0F3/\0A<'u\01\99\B4\A7\01\09\07\02\0C\11/\103/\0A<'u\01\99\B4\A7\01\09\07\02\0C\10/!14<'u\01\99\B4\B2\01\09\07\02\0C\10/\0F24<'u\01\99\B4\AE\01\09\07\02\0C\10/\1024<'u\01\99\B4\AE\01\09\07\02\0C\10/\0F34<'u\01\99\B4\A8\01\09\07\02\0C\10/\1034<'u\01\99\B4\A8\01\09\07\02\0C\00\B2\01i\01\0A\01\03T\04Bb\08\00\0C1(u\01\99\B4\01\02\09\08\03\08R/\09\00\0B(u\01\99\B4\00\02\09\08\03\08\0C6&u\01\99\B4\00\02\09\08\03\08\0C4&u\01\99\B4\07\02\09\08\03\08\0C5&u\01\99\B4\07\02\09\08\03\08\0C7&u\01\99\B4\07\02\09\08\03\08\0D/\08&u\01\99\B4\07\02\09\08\03\08\00\00E\071\00\0C6&u\01\99\B4\02\02\09\07\03\08\0C4&u\01\99\B4\08\02\09\07\03\08\0C5&u\01\99\B4\08\02\09\07\03\08\0C7&u\01\99\B4\08\02\09\07\03\08\0D/\08&u\01\99\B4\08\02\09\07\03\08\00\00\A3\01k\01\0A\01\03T\04BE\071\00\0C6&u\01\99\B4\04\02\09\07\03\08\0C4&u\01\99\B4\0A\02\09\07\03\08\0C5&u\01\99\B4\0A\02\09\07\03\08\0C7&u\01\99\B4\0A\02\09\07\03\08\0D/\08&u\01\99\B4\0A\02\09\07\03\08\00S\08/\09\00\1D6\00\0C/\1Du\01\99\B4\03\02\09\08\03\08\0C/\1Eu\01\99\B4\09\02\09\08\03\08\00\0B4u\01\99\B4\09\02\09\08\03\08\0B5u\01\99\B4\09\02\09\08\03\08\0B7u\01\99\B4\09\02\09\08\03\08\0C/\08u\01\99\B4\09\02\09\08\03\08\00\00\A3\01m\01\0A\01\03T\04BE\071\00\0C6&u\01\99\B4\10\02\09\07\03\08\0C4&u\01\99\B4\0C\02\09\07\03\08\0C5&u\01\99\B4\0C\02\09\07\03\08\0C7&u\01\99\B4\0C\02\09\07\03\08\0D/\08&u\01\99\B4\0C\02\09\07\03\08\00S\08/\09\00\1D6\00\0C/\1Du\01\99\B4\0F\02\09\08\03\08\0C/\1Eu\01\99\B4\0B\02\09\08\03\08\00\0B4u\01\99\B4\0B\02\09\08\03\08\0B5u\01\99\B4\0B\02\09\08\03\08\0B7u\01\99\B4\0B\02\09\08\03\08\0C/\08u\01\99\B4\0B\02\09\08\03\08\00\00\A3\01n\01\0A\01\03T\04BE\071\00\0C6&u\01\99\B4\16\02\09\07\03\08\0C4&u\01\99\B4\0E\02\09\07\03\08\0C5&u\01\99\B4\0E\02\09\07\03\08\0C7&u\01\99\B4\0E\02\09\07\03\08\0D/\08&u\01\99\B4\0E\02\09\07\03\08\00S\08/\09\00\1D6\00\0C/\1Du\01\99\B4\15\02\09\08\03\08\0C/\1Eu\01\99\B4\0D\02\09\08\03\08\00\0B4u\01\99\B4\0D\02\09\08\03\08\0B5u\01\99\B4\0D\02\09\08\03\08\0B7u\01\99\B4\0D\02\09\08\03\08\0C/\08u\01\99\B4\0D\02\09\08\03\08\00\00#h\01\0A\01\03T\04B\0C\071&u\01\99\B4\06\02\09\07\03\08\0C\08/\09u\01\99\B4\05\02\09\08\03\08\00(f\01\0A\01\03T\04\05B\0E\071&u\01\99\9F\0D\B4k\01\0B\07\03\11\0E\08/\09u\01\99\9F\01\B4j\01\0B\08\03\11\00\CD\01j\01\0A\01\03T\04Bc\071\00\126&u\01\99\AC\D1\01\07\01\05\B4\02\02\09\07\03#\124&u\01\99\AC\D1\01\07\01\05\B4\08\02\09\07\03#\125&u\01\99\AC\D1\01\07\01\05\B4\08\02\09\07\03#\127&u\01\99\AC\D1\01\07\01\05\B4\08\02\09\07\03#\13/\08&u\01\99\AC\D1\01\07\01\05\B4\08\02\09\07\03#\00_\08/\09\00\116u\01\99\AC\D2\01\08\01\05\B4\00\02\09\08\03#\114u\01\99\AC\D2\01\08\01\05\B4\07\02\09\08\03#\115u\01\99\AC\D2\01\08\01\05\B4\07\02\09\08\03#\117u\01\99\AC\D2\01\08\01\05\B4\07\02\09\08\03#\12/\08u\01\99\AC\D2\01\08\01\05\B4\07\02\09\08\03#\00\00\FA\05\19\02\01\03\00\F9\02T\04\00\AC\01\109\0C\000\1A9\0C\00=\00\0F/\11\1B9\07\00\01\1F\99\92\B8w\01\03\0E\0F/\12\1B9\07\00\01\1F\99\92\B8\99\01\03\0E\0F/\13\1B9\07\00\01\1F\99\92\B8\95\01\03\0E\0F/\14\1B9\07\00\01\1F\99\92\B8}\01\03\0E\0F/\15\1B9\07\00\01\1F\99\92\B8\89\01\03\0E\0F/\16\1B9\07\00\01\1F\99\92\B8\85\01\03\0E\0F/\17\1B9\07\00\01\1F\99\92\B8\A1\01\03\0E\0F/\18\1B9\07\00\01\1F\99\92\B8\9D\01\03\0E\0F/\19\1B9\07\00\01\1F\99\92\B8\91\01\03\0E\0F/\1A\1B9\07\00\01\1F\99\92\B8\8D\01\03\0E\00\9D\01\119\0C\00=\00\0E/\11\1B9\07\00\01\1F\99\B8y\01\03\0B\0E/\12\1B9\07\00\01\1F\99\B8\9B\01\03\0B\0E/\13\1B9\07\00\01\1F\99\B8\97\01\03\0B\0E/\14\1B9\07\00\01\1F\99\B8\7F\01\03\0B\0E/\15\1B9\07\00\01\1F\99\B8\8B\01\03\0B\0E/\16\1B9\07\00\01\1F\99\B8\87\01\03\0B\0E/\17\1B9\07\00\01\1F\99\B8\A3\01\03\0B\0E/\18\1B9\07\00\01\1F\99\B8\9F\01\03\0B\0E/\19\1B9\07\00\01\1F\99\B8\93\01\03\0B\0E/\1A\1B9\07\00\01\1F\99\B8\8F\01\03\0B\00\16\109\0C\000\1A9\08\00\1B9\07\00\01\1F\99\92\B8\81\01\03\0E\10\119\08\00\1B9\07\00\01\1F\99\B8\83\01\03\0B\00\F9\02L\04\00\AC\01\109\0C\000\1A9\0C\00<\00\0F/\11\1B9\07\00\01\1F\99\92\B8x\01\03\0E\0F/\12\1B9\07\00\01\1F\99\92\B8\9A\01\03\0E\0F/\13\1B9\07\00\01\1F\99\92\B8\96\01\03\0E\0F/\14\1B9\07\00\01\1F\99\92\B8~\01\03\0E\0F/\15\1B9\07\00\01\1F\99\92\B8\8A\01\03\0E\0F/\16\1B9\07\00\01\1F\99\92\B8\86\01\03\0E\0F/\17\1B9\07\00\01\1F\99\92\B8\A2\01\03\0E\0F/\18\1B9\07\00\01\1F\99\92\B8\9E\01\03\0E\0F/\19\1B9\07\00\01\1F\99\92\B8\92\01\03\0E\0F/\1A\1B9\07\00\01\1F\99\92\B8\8E\01\03\0E\00\9D\01\119\0C\00<\00\0E/\11\1B9\07\00\01\1F\99\B8z\01\03\0B\0E/\12\1B9\07\00\01\1F\99\B8\9C\01\03\0B\0E/\13\1B9\07\00\01\1F\99\B8\98\01\03\0B\0E/\14\1B9\07\00\01\1F\99\B8\80\01\03\0B\0E/\15\1B9\07\00\01\1F\99\B8\8C\01\03\0B\0E/\16\1B9\07\00\01\1F\99\B8\88\01\03\0B\0E/\17\1B9\07\00\01\1F\99\B8\A4\01\03\0B\0E/\18\1B9\07\00\01\1F\99\B8\A0\01\03\0B\0E/\19\1B9\07\00\01\1F\99\B8\94\01\03\0B\0E/\1A\1B9\07\00\01\1F\99\B8\90\01\03\0B\00\16\109\0C\000\1A9\08\00\1B9\07\00\01\1F\99\92\B8\82\01\03\0E\10\119\08\00\1B9\07\00\01\1F\99\B8\84\01\03\0B\00\00\84\01\C8\00\00K\0E9\D2\00\02\1F=\00 m0T\00\08%\08\B6g\01\08\01\00\08%\09\B6d\01\08\01\00\08%\0A\B6\BC\01\08\01\00\00 m T\00\08%\08\B6h\01\08\01\00\08%\09\B6e\01\08\01\00\08%\0A\B6\BD\01\08\01\00\00\005\02\03\00\1E\0F9\0C\00B\0A\080\1F=\91\B6\E9\01\08\02\04\0A\070\1F<\91\B6\EA\01\07\02\04\00\08T=\B6\EB\01\08\02\01\08L<\B6\EC\01\07\02\01\00\00\93\01\1E\02\02\00GS\03\00$\0F9\0C\000\199\0C\00\01=\1F\05\06B\08\08\91\92\B6W\01\08\05\1C\08\07\91\92\B6Z\01\07\05\1C\00\1D\04\109\0C\00=\1F\05\06B\07\08\92\B6S\01\08\05\17\07\07\92\B6V\01\07\05\17\00\00GK\03\00$\0F9\0C\000\199\0C\00\01<\1F\05\06B\08\07\91\92\B6X\01\07\05\1C\08\08\91\92\B6Y\01\08\05\1C\00\1D\04\109\0C\00<\1F\05\06B\07\07\92\B6T\01\07\05\17\07\08\92\B6U\01\08\05\17\00\00\00?;\00\00\0A\01=v\00\B6M\01\08\02\061\02\03\00\1C\0F9\0C\00\00\0A0\1F=\91\B6\\\01\08\02\04\0A0\1F<\91\B6]\01\07\02\04\00\07=\B6^\01\08\02\01\07<\B6_\01\07\02\01\00\00?\C2\00\00\0A\01=v\00\B6M\01\08\02\061\02\03\00\1C\0F9\0C\00\00\0A0\1F=\91\B6\D4\01\08\02\04\0A0\1F<\91\B6\D5\01\07\02\04\00\07=\B6\D6\01\08\02\01\07<\B6\D7\01\07\02\01\00\00\14M\01\01\03\0F9%\00\199%\00\01\1F\99\B4K\01\05\08\02\06\15N\01\01\0B\03\0F9%\00\199%\00\01\1F\99\B4L\01\07\08\02\06\16\1C\02\01\03\04\05\119\0C\00\1B9\0C\00\01\1F\99\93\94\B8P\01\04&J<\00\00\15l\00\03B\06\08\B6\D2\01\08\01\00\06\07\B6\D1\01\07\01\00\001\02\03\00\1C\0F9\0C\00\00\0A0\1F=\91\B6\FC\01\08\02\04\0A0\1F<\91\B6\FD\01\07\02\04\00\07=\B6\FE\01\08\02\01\07<\B6\FF\01\07\02\01\00\00M\C1\00\00\18}\FF\FF\FF\FF\0F\02=\86 \AC\DD\01\08\02\01\86 \B6\E9\01\08\02\0C1\02\03\00\1C\0F9\0C\00\00\0A0\1F=\91\B6`\01\08\02\04\0A0\1F<\91\B6a\01\07\02\04\00\07=\B6b\01\08\02\01\07<\B6c\01\07\02\01\00\005\C6\00\02\03\00\1E\0F9\0C\00B\0A\080\1F=\91\B6\DD\01\08\02\04\0A\070\1F<\91\B6\DE\01\07\02\04\00\08T=\B6\DF\01\08\02\01\08L<\B6\E0\01\07\02\01\001\C3\00\02\03\00\1C\0F9\0C\00\00\0A0\1F=\91\B6\11\02\08\02\04\0A0\1F<\91\B6\12\02\07\02\04\00\07=\B6\13\02\08\02\01\07<\B6\14\02\07\02\01\005\C7\00\02\03\00\1E\0F9\0C\00B\0A\080\1F=\91\B6\E5\01\08\02\04\0A\070\1F<\91\B6\E6\01\07\02\04\00\08T=\B6\E7\01\08\02\01\08L<\B6\E8\01\07\02\01\001=\00\02\03\00\1C\0F9\0C\00\00\0A0\1F=\91\B6\CD\01\08\02\04\0A0\1F<\91\B6\CE\01\07\02\04\00\07=\B6\CF\01\08\02\01\07<\B6\D0\01\07\02\01\001?\00\02\03\00\1C\0F9\0C\00\00\0A0\1F=\91\B6p\01\08\02\04\0A0\1F<\91\B6q\01\07\02\04\00\07=\B6r\01\08\02\01\07<\B6s\01\07\02\01\001A\00\02\03\00\1C\0F9\0C\00\00\0A0\1F=\91\B6\BF\01\08\02\04\0A0\1F<\91\B6\C0\01\07\02\04\00\07=\B6\C1\01\08\02\01\07<\B6\C2\01\07\02\01\005>\00\02\03\00\1E\0F9\0C\00\00\0B0\1F=)\91\B6\D9\01\08\02\04\0B0\1F<)\91\B6\DA\01\07\02\04\00\08=)\B6\DB\01\08\02\01\08<)\B6\DC\01\07\02\01\005@\00\02\03\00\1E\0F9\0C\00\00\0B0\1F=)\91\B6\E1\01\08\02\04\0B0\1F<)\91\B6\E2\01\07\02\04\00\08=)\B6\E3\01\08\02\01\08<)\B6\E4\01\07\02\01\00\1A \02\02\0E:\08+\00\1F=\B6\BA\01\08\01\00\08*\00\1F=\B6\BA\01\08\01\00\004\1A\02\01\0B\03\00%\0F:\08'\00\1F\99\B3t\01'\01\02\08,\00\1F\99\B3t\01'\01\02\09\0C\00\1F\99\91\B3t\01'\01\05\00\08T\99\B3u\01'\01\02\00\22\0C\00\01B\13\08\00\080\90\B6\C9\01\08\01\02\07\90\B6\BA\01\08\01\02\00\08\070\90\B6\CA\01\07\01\02\00\0B@\01\01\03T%\0B\99\B8\A5\01\01\02?\EC\00\02\0F\00\17s\05\1FB\07\08*\B6\C7\01\08\01\00\07\07*\B6\C6\01\07\01\00\00\17s\06\1FB\07\08*\B6\C3\01\08\01\00\07\07*\B6\C5\01\07\01\00\00\0As\07\1F*\B6\C4\01\08\01\00\00\10\F9\00\01\02S=\A6\01\00\A6\02\00\B6[\01\08\03\0B\0D?\01\01\03\0F9\07\00\1F\99\B8{\01\01\02\08\1D\02\01\0B\99\B3\D8\01\13\00\1F\D2\00\02=\00\08%\08\B6i\01\08\01\00\08%\09\B6f\01\08\01\00\08%\0A\B6\BE\01\08\01\00\00\07\E4\00\02\B6\C8\01\08\01\00\09\E6\00\02\85\01\B6\08\00\07\02\01*\E3\00\02\00\0D*\AC\C8\01\08\01\00\B6\C4\01\08\01\02\18%\0C\AC\C8\01\08\01\00\86 \AC\DD\01\08\02\06\86 \B6\E5\01\08\02\15\00\0E\E5\00\02\AC\0A\00\08\00\85\01\B6\09\00\08\03\03\00", align 16
@_ZZN12_GLOBAL__N_115BPFDAGToDAGISel10SelectCodeEPN4llvm6SDNodeEE12OperandLists = internal constant [42 x i8] c"\00\00\01\01\00\02\01\02\03\04\02\01\02\03\01\04\03\04\05\03\01\03\04\00\01\05\03\04\00\05\06\03\04\01\05\03\04\05\01\02\05\06", align 16
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZZN4llvm14isStrongerThanENS_14AtomicOrderingES0_E6lookup = linkonce_odr local_unnamed_addr constant [8 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\01\00\00\00\00\00\00\00", [8 x i8] c"\01\01\00\00\00\00\00\00", [8 x i8] c"\01\01\01\00\00\00\00\00", [8 x i8] c"\01\01\01\01\00\00\00\00", [8 x i8] c"\01\01\01\00\00\00\00\00", [8 x i8] c"\01\01\01\01\01\01\00\00", [8 x i8] c"\01\01\01\01\01\01\01\00"], comdat, align 16
@_ZZN4llvm23isAtLeastOrStrongerThanENS_14AtomicOrderingES0_E6lookup = linkonce_odr local_unnamed_addr constant [8 x [8 x i8]] [[8 x i8] c"\01\00\00\00\00\00\00\00", [8 x i8] c"\01\01\00\00\00\00\00\00", [8 x i8] c"\01\01\01\00\00\00\00\00", [8 x i8] c"\01\01\01\01\00\00\00\00", [8 x i8] c"\01\01\01\01\01\00\00\00", [8 x i8] c"\01\01\01\00\00\01\00\00", [8 x i8] c"\01\01\01\01\01\01\01\00", [8 x i8] c"\01\01\01\01\01\01\01\01"], comdat, align 16
@_ZSt15__once_callable = external thread_local local_unnamed_addr global ptr, align 8
@_ZSt11__once_call = external thread_local local_unnamed_addr global ptr, align 8

@_ZN4llvm19BPFISelDAGToDAGPassC1ERNS_16BPFTargetMachineE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm19BPFISelDAGToDAGPassC2ERNS_16BPFTargetMachineE

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm35initializeBPFDAGToDAGISelLegacyPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %class.anon, align 8                ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store ptr @_ZL39initializeBPFDAGToDAGISelLegacyPassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !321
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !9
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !9
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL39InitializeBPFDAGToDAGISelLegacyPassFlag, ptr noundef nonnull @__once_proxy) #15 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #16
  unreachable

_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !9
  store ptr null, ptr %i.c, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL39initializeBPFDAGToDAGISelLegacyPassOnceRN4llvm12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #17 ; 9 uses
  store ptr @.str, ptr %i.a, align 8, !tbaa !12
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 42, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.1, ptr %i.b, align 8, !tbaa !12
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 8, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN12_GLOBAL__N_121BPFDAGToDAGISelLegacy2IDE, ptr %i.c, align 8, !tbaa !323
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !324
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 0, ptr %i.e, align 1, !tbaa !325
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_121BPFDAGToDAGISelLegacyEEEPNS_4PassEv, ptr %i.f, align 8, !tbaa !326
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN4llvm16createBPFISelDagERNS_16BPFTargetMachineE(ptr noundef nonnull align 8 dereferenceable(521040) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.b = tail call noalias noundef nonnull dereferenceable(1008) ptr @_Znwm(i64 noundef 1008) #17, !noalias !330 ; 9 uses
  tail call void @_ZN4llvm16SelectionDAGISelC2ERNS_13TargetMachineENS_15CodeGenOptLevelE(ptr noundef nonnull align 8 dereferenceable(1008) %i.b, ptr noundef nonnull align 8 dereferenceable(521040) %0, i32 noundef 2) #15, !noalias !330
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN12_GLOBAL__N_115BPFDAGToDAGISelE, i64 16), ptr %i.b, align 8, !tbaa !18, !noalias !330
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 952
  store ptr null, ptr %i.c, align 8, !tbaa !87, !noalias !330
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 968 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !88, !noalias !330
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 976
  store ptr null, ptr %i.e, align 8, !tbaa !89, !noalias !330
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 984
  store ptr %i.d, ptr %i.f, align 8, !tbaa !90, !noalias !330
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 992
  store ptr %i.d, ptr %i.g, align 8, !tbaa !91, !noalias !330
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1000
  store i64 0, ptr %i.h, align 8, !tbaa !92, !noalias !330
  store ptr %i.b, ptr %1, align 8, !tbaa !332
  call void @_ZN4llvm22SelectionDAGISelLegacyC2ERcSt10unique_ptrINS_16SelectionDAGISelESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12_GLOBAL__N_121BPFDAGToDAGISelLegacy2IDE, ptr nofree noundef nonnull align 8 dereferenceable(8) %1) #15
  %i.i = load ptr, ptr %1, align 8, !tbaa !94     ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_121BPFDAGToDAGISelLegacyC2ERN4llvm16BPFTargetMachineE.exit, label %_ZNKSt14default_deleteIN4llvm16SelectionDAGISelEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm16SelectionDAGISelEEclEPS1_.exit.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(952) %i.i) #15, !inline_history !329
  br label %_ZN12_GLOBAL__N_121BPFDAGToDAGISelLegacyC2ERN4llvm16BPFTargetMachineE.exit

_ZN12_GLOBAL__N_121BPFDAGToDAGISelLegacyC2ERN4llvm16BPFTargetMachineE.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm16SelectionDAGISelEEclEPS1_.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN12_GLOBAL__N_121BPFDAGToDAGISelLegacyE, i64 16), ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19BPFISelDAGToDAGPassC2ERNS_16BPFTargetMachineE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(521040) %1) unnamed_addr #0 align 2 {
_ZNSt10unique_ptrIN12_GLOBAL__N_115BPFDAGToDAGISelESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(1008) ptr @_Znwm(i64 noundef 1008) #17, !noalias !335 ; 9 uses
  tail call void @_ZN4llvm16SelectionDAGISelC2ERNS_13TargetMachineENS_15CodeGenOptLevelE(ptr noundef nonnull align 8 dereferenceable(1008) %i.a, ptr noundef nonnull align 8 dereferenceable(521040) %1, i32 noundef 2) #15, !noalias !335
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN12_GLOBAL__N_115BPFDAGToDAGISelE, i64 16), ptr %i.a, align 8, !tbaa !18, !noalias !335
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 952
  store ptr null, ptr %i.b, align 8, !tbaa !87, !noalias !335
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 968 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !88, !noalias !335
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 976
  store ptr null, ptr %i.d, align 8, !tbaa !89, !noalias !335
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 984
  store ptr %i.c, ptr %i.e, align 8, !tbaa !90, !noalias !335
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  store ptr %i.c, ptr %i.f, align 8, !tbaa !91, !noalias !335
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1000
  store i64 0, ptr %i.g, align 8, !tbaa !92, !noalias !335
  %i.h = ptrtoint ptr %i.a to i64
  store i64 %i.h, ptr %0, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_121BPFDAGToDAGISelLegacyEEEPNS_4PassEv() #3 {
bb.a:
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.2, i1 noundef zeroext true) #16
  unreachable
}

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvm22SelectionDAGISelLegacyC2ERcSt10unique_ptrINS_16SelectionDAGISelESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 1 dereferenceable(1), ptr nofree noundef align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm22SelectionDAGISelLegacyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN4llvm22SelectionDAGISelLegacyE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm16SelectionDAGISelESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm16SelectionDAGISelEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm16SelectionDAGISelEEclEPS1_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(952) %i.b) #15, !inline_history !336
  br label %_ZNSt10unique_ptrIN4llvm16SelectionDAGISelESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm16SelectionDAGISelESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm16SelectionDAGISelEEclEPS1_.exit.i
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #15
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_121BPFDAGToDAGISelLegacyD0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #6 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN4llvm22SelectionDAGISelLegacyE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4llvm22SelectionDAGISelLegacyD2Ev.exit, label %_ZNKSt14default_deleteIN4llvm16SelectionDAGISelEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm16SelectionDAGISelEEclEPS1_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(952) %i.b) #15, !inline_history !337
  br label %_ZN4llvm22SelectionDAGISelLegacyD2Ev.exit

_ZN4llvm22SelectionDAGISelLegacyD2Ev.exit:        ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm16SelectionDAGISelEEclEPS1_.exit.i.i
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(64) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #18
  ret void
}

declare { ptr, i64 } @_ZNK4llvm4Pass11getPassNameEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 %i.c(ptr noundef nonnull align 8 dereferenceable(56) %0) #15
end_hunk_0
begin_hunk_1_@_ZNK12_GLOBAL__N_115BPFDAGToDAGISel18CheckNodePredicateEN4llvm7SDValueEj:bb.a
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  %i.aa = load i16, ptr %i.z, align 4             ; 2 uses
  %i.ab = lshr i16 %i.aa, 8
  %i.ac = and i16 %i.ab, 15                       ; 4 uses
  %i.ad = lshr i16 %i.aa, 12                      ; 4 uses
  %i.ae = icmp eq i16 %i.ac, 4
  %i.af = icmp eq i16 %i.ad, 5
  %or.cond.i.i.i = and i1 %i.af, %i.ae
  br i1 %or.cond.i.i.i, label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp eq i16 %i.ac, 5
  %i.ah = icmp eq i16 %i.ad, 4
  %or.cond3.i.i.i = and i1 %i.ah, %i.ag
  br i1 %or.cond3.i.i.i, label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = zext nneg i16 %i.ac to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm14isStrongerThanENS_14AtomicOrderingES0_E6lookup, i64 %i.ai
  %i.ak = zext nneg i16 %i.ad to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !474, !range !267, !noundef !110
  %i.an = trunc nuw i8 %i.am to i1
  %.v.i.i = select i1 %i.an, i16 %i.ac, i16 %i.ad
  %i.ao = icmp eq i16 %.v.i.i, 4
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.l:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i.i63 = load i64, ptr %i.ap, align 8
  %i.aq = and i64 %.0.copyload.i.i.i.i.i.i.i63, -5
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.at = load i16, ptr %i.as, align 4            ; 2 uses
  %i.au = lshr i16 %i.at, 8
  %i.av = and i16 %i.au, 15                       ; 4 uses
  %i.aw = lshr i16 %i.at, 12                      ; 4 uses
  %i.ax = icmp eq i16 %i.av, 4
  %i.ay = icmp eq i16 %i.aw, 5
  %or.cond.i.i.i64 = and i1 %i.ay, %i.ax
  br i1 %or.cond.i.i.i64, label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = icmp eq i16 %i.av, 5
  %i.ba = icmp eq i16 %i.aw, 4
  %or.cond3.i.i.i65 = and i1 %i.ba, %i.az
  br i1 %or.cond3.i.i.i65, label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = zext nneg i16 %i.av to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm14isStrongerThanENS_14AtomicOrderingES0_E6lookup, i64 %i.bb
  %i.bd = zext nneg i16 %i.aw to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !474, !range !267, !noundef !110
  %i.bg = trunc nuw i8 %i.bf to i1
  %.v.i.i66 = select i1 %i.bg, i16 %i.av, i16 %i.aw
  %i.bh = icmp eq i16 %.v.i.i66, 5
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.o:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i.i69 = load i64, ptr %i.bi, align 8
  %i.bj = and i64 %.0.copyload.i.i.i.i.i.i.i69, -5
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 36
  %i.bm = load i16, ptr %i.bl, align 4            ; 2 uses
  %i.bn = lshr i16 %i.bm, 8
  %i.bo = and i16 %i.bn, 15                       ; 4 uses
  %i.bp = lshr i16 %i.bm, 12                      ; 4 uses
  %i.bq = icmp eq i16 %i.bo, 4
  %i.br = icmp eq i16 %i.bp, 5
  %or.cond.i.i.i70 = and i1 %i.br, %i.bq
  br i1 %or.cond.i.i.i70, label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = icmp eq i16 %i.bo, 5
  %i.bt = icmp eq i16 %i.bp, 4
  %or.cond3.i.i.i71 = and i1 %i.bt, %i.bs
  br i1 %or.cond3.i.i.i71, label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = zext nneg i16 %i.bo to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm14isStrongerThanENS_14AtomicOrderingES0_E6lookup, i64 %i.bu
  %i.bw = zext nneg i16 %i.bp to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !474, !range !267, !noundef !110
  %i.bz = trunc nuw i8 %i.by to i1
  %.v.i.i72 = select i1 %i.bz, i16 %i.bo, i16 %i.bp
  %i.ca = icmp eq i16 %.v.i.i72, 2
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.r:                                             ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i.i75 = load i64, ptr %i.cb, align 8
  %i.cc = and i64 %.0.copyload.i.i.i.i.i.i.i75, -5
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 36
  %i.cf = load i16, ptr %i.ce, align 4            ; 2 uses
  %i.cg = lshr i16 %i.cf, 8
  %i.ch = and i16 %i.cg, 15                       ; 4 uses
  %i.ci = lshr i16 %i.cf, 12                      ; 4 uses
  %i.cj = icmp eq i16 %i.ch, 4
  %i.ck = icmp eq i16 %i.ci, 5
  %or.cond.i.i.i76 = and i1 %i.ck, %i.cj
  br i1 %or.cond.i.i.i76, label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = icmp eq i16 %i.ch, 5
  %i.cm = icmp eq i16 %i.ci, 4
  %or.cond3.i.i.i77 = and i1 %i.cm, %i.cl
  br i1 %or.cond3.i.i.i77, label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = zext nneg i16 %i.ch to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm14isStrongerThanENS_14AtomicOrderingES0_E6lookup, i64 %i.cn
  %i.cp = zext nneg i16 %i.ci to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !474, !range !267, !noundef !110
  %i.cs = trunc nuw i8 %i.cr to i1
  %.v.i.i78 = select i1 %i.cs, i16 %i.ch, i16 %i.ci
  %i.ct = icmp eq i16 %.v.i.i78, 6
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.u:                                             ; preds = %bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i.i81 = load i64, ptr %i.cu, align 8
  %i.cv = and i64 %.0.copyload.i.i.i.i.i.i.i81, -5
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 36
  %i.cy = load i16, ptr %i.cx, align 4            ; 2 uses
  %i.cz = lshr i16 %i.cy, 8
  %i.da = and i16 %i.cz, 15                       ; 4 uses
  %i.db = lshr i16 %i.cy, 12                      ; 4 uses
  %i.dc = icmp eq i16 %i.da, 4
  %i.dd = icmp eq i16 %i.db, 5
  %or.cond.i.i.i82 = and i1 %i.dd, %i.dc
  br i1 %or.cond.i.i.i82, label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.de = icmp eq i16 %i.da, 5
  %i.df = icmp eq i16 %i.db, 4
  %or.cond3.i.i.i83 = and i1 %i.df, %i.de
  br i1 %or.cond3.i.i.i83, label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dg = zext nneg i16 %i.da to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm14isStrongerThanENS_14AtomicOrderingES0_E6lookup, i64 %i.dg
  %i.di = zext nneg i16 %i.db to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !474, !range !267, !noundef !110
  %i.dl = trunc nuw i8 %i.dk to i1
  %.v.i.i84 = select i1 %i.dl, i16 %i.da, i16 %i.db
  %i.dm = icmp eq i16 %.v.i.i84, 7
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.x:                                             ; preds = %bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.0.0.copyload.i87 = load i16, ptr %i.dn, align 8, !tbaa !141
  %.sroa.21.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.21.0.copyload.i89 = load ptr, ptr %.sroa.21.0..sroa_idx.i88, align 8, !tbaa !143
  %.not.i92 = icmp eq i16 %.sroa.0.0.copyload.i87, 8
  %i.do = icmp eq ptr %.sroa.21.0.copyload.i89, null
  %.not186 = select i1 %.not.i92, i1 %i.do, i1 false
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.y:                                             ; preds = %bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i.i93 = load i64, ptr %i.dp, align 8
  %i.dq = and i64 %.0.copyload.i.i.i.i.i.i.i93, -5
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 36
  %i.dt = load i16, ptr %i.ds, align 4            ; 2 uses
  %i.du = lshr i16 %i.dt, 8
  %i.dv = and i16 %i.du, 15                       ; 4 uses
  %i.dw = lshr i16 %i.dt, 12                      ; 4 uses
  %i.dx = icmp eq i16 %i.dv, 4
  %i.dy = icmp eq i16 %i.dw, 5
  %or.cond.i.i.i94 = and i1 %i.dy, %i.dx
  br i1 %or.cond.i.i.i94, label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit98, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = icmp eq i16 %i.dv, 5
  %i.ea = icmp eq i16 %i.dw, 4
  %or.cond3.i.i.i95 = and i1 %i.ea, %i.dz
  br i1 %or.cond3.i.i.i95, label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit98, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eb = zext nneg i16 %i.dv to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm14isStrongerThanENS_14AtomicOrderingES0_E6lookup, i64 %i.eb
  %i.ed = zext nneg i16 %i.dw to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !474, !range !267, !noundef !110
  %i.eg = trunc nuw i8 %i.ef to i1
  %.v.i.i96 = select i1 %i.eg, i16 %i.dv, i16 %i.dw
  %i.eh = zext nneg i16 %.v.i.i96 to i64
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit98

_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit98:  ; preds = %bb.y, %bb.z, %bb.aa
  %.0.i.i.i97 = phi i64 [ %i.eh, %bb.aa ], [ 6, %bb.z ], [ 6, %bb.y ]
  %4 = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm23isAtLeastOrStrongerThanENS_14AtomicOrderingES0_E6lookup, i64 %.0.i.i.i97
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %6 = load i8, ptr %5, align 4, !tbaa !474, !range !267, !noundef !110
  %i.ei = trunc nuw i8 %6 to i1
  %.9 = xor i1 %i.ei, true
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.ab:                                            ; preds = %bb.a
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ek = load i16, ptr %i.ej, align 8
  %i.el = and i16 %i.ek, 896
  %.not44 = icmp eq i16 %i.el, 0
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.ac:                                            ; preds = %bb.a
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.en = load i16, ptr %i.em, align 8
  %i.eo = and i16 %i.en, 1024
  %i.ep = icmp ne i16 %i.eo, 0
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.ad:                                            ; preds = %bb.a
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.er = load i16, ptr %i.eq, align 8
  %i.es = and i16 %i.er, 1024
  %.not184 = icmp eq i16 %i.es, 0
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.ae:                                            ; preds = %bb.a
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i.i99 = load i64, ptr %i.et, align 8
  %i.eu = and i64 %.0.copyload.i.i.i.i.i.i.i99, -5
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 36
  %i.ex = load i16, ptr %i.ew, align 4            ; 2 uses
  %i.ey = lshr i16 %i.ex, 8
  %i.ez = and i16 %i.ey, 15                       ; 4 uses
  %i.fa = lshr i16 %i.ex, 12                      ; 4 uses
  %i.fb = icmp eq i16 %i.ez, 4
  %i.fc = icmp eq i16 %i.fa, 5
  %or.cond.i.i.i100 = and i1 %i.fc, %i.fb
  br i1 %or.cond.i.i.i100, label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit104, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fd = icmp eq i16 %i.ez, 5
  %i.fe = icmp eq i16 %i.fa, 4
  %or.cond3.i.i.i101 = and i1 %i.fe, %i.fd
  br i1 %or.cond3.i.i.i101, label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit104, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ff = zext nneg i16 %i.ez to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm14isStrongerThanENS_14AtomicOrderingES0_E6lookup, i64 %i.ff
  %i.fh = zext nneg i16 %i.fa to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !474, !range !267, !noundef !110
  %i.fk = trunc nuw i8 %i.fj to i1
  %.v.i.i102 = select i1 %i.fk, i16 %i.ez, i16 %i.fa
  %7 = zext nneg i16 %.v.i.i102 to i64
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit104

_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit104: ; preds = %bb.ae, %bb.af, %bb.ag
  %.0.i.i.i103 = phi i64 [ %7, %bb.ag ], [ 6, %bb.af ], [ 6, %bb.ae ]
  %8 = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm23isAtLeastOrStrongerThanENS_14AtomicOrderingES0_E6lookup, i64 %.0.i.i.i103
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 5
  %10 = load i8, ptr %9, align 1, !tbaa !474, !range !267, !noundef !110
  %11 = trunc nuw i8 %10 to i1
  %.13 = xor i1 %11, true
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.ah:                                            ; preds = %bb.a
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fm = load i16, ptr %i.fl, align 8
  %i.fn = and i16 %i.fm, 3072
  %.not43 = icmp eq i16 %i.fn, 1024
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.ai:                                            ; preds = %bb.a
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fp = load i16, ptr %i.fo, align 8
  %i.fq = and i16 %i.fp, 3072
  %.not42 = icmp eq i16 %i.fq, 3072
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.aj:                                            ; preds = %bb.a
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !135 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !137
  %i.fw = icmp ult i32 %i.fv, 65
  %i.fx = load ptr, ptr %i.ft, align 8
  %spec.select.i.i.i = select i1 %i.fw, ptr %i.ft, ptr %i.fx
  %.0.i.i.i105 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !138
  %i.fy = icmp eq i64 %.0.i.i.i105, 17
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.ak:                                            ; preds = %bb.a
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !135 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !137
  %i.ge = icmp ult i32 %i.gd, 65
  %i.gf = load ptr, ptr %i.gb, align 8
  %spec.select.i.i.i106 = select i1 %i.ge, ptr %i.gb, ptr %i.gf
  %.0.i.i.i107 = load i64, ptr %spec.select.i.i.i106, align 8, !tbaa !138
  %i.gg = icmp eq i64 %.0.i.i.i107, 10
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.al:                                            ; preds = %bb.a
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !135 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !137
  %i.gm = icmp ult i32 %i.gl, 65
  %i.gn = load ptr, ptr %i.gj, align 8
  %spec.select.i.i.i108 = select i1 %i.gm, ptr %i.gj, ptr %i.gn
  %.0.i.i.i109 = load i64, ptr %spec.select.i.i.i108, align 8, !tbaa !138
  %i.go = icmp eq i64 %.0.i.i.i109, 11
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.am:                                            ; preds = %bb.a
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !135 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !137
  %i.gu = icmp ult i32 %i.gt, 65
  %i.gv = load ptr, ptr %i.gr, align 8
  %spec.select.i.i.i110 = select i1 %i.gu, ptr %i.gr, ptr %i.gv
  %.0.i.i.i111 = load i64, ptr %spec.select.i.i.i110, align 8, !tbaa !138
  %i.gw = icmp eq i64 %.0.i.i.i111, 22
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.an:                                            ; preds = %bb.a
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !135 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !137
  %i.hc = icmp ult i32 %i.hb, 65
  %i.hd = load ptr, ptr %i.gz, align 8
  %spec.select.i.i.i112 = select i1 %i.hc, ptr %i.gz, ptr %i.hd
  %.0.i.i.i113 = load i64, ptr %spec.select.i.i.i112, align 8, !tbaa !138
  %i.he = icmp eq i64 %.0.i.i.i113, 18
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.ao:                                            ; preds = %bb.a
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !135 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !137
  %i.hk = icmp ult i32 %i.hj, 65
  %i.hl = load ptr, ptr %i.hh, align 8
  %spec.select.i.i.i114 = select i1 %i.hk, ptr %i.hh, ptr %i.hl
  %.0.i.i.i115 = load i64, ptr %spec.select.i.i.i114, align 8, !tbaa !138
  %i.hm = icmp eq i64 %.0.i.i.i115, 19
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.ap:                                            ; preds = %bb.a
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !135 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !137
  %i.hs = icmp ult i32 %i.hr, 65
  %i.ht = load ptr, ptr %i.hp, align 8
  %spec.select.i.i.i116 = select i1 %i.hs, ptr %i.hp, ptr %i.ht
  %.0.i.i.i117 = load i64, ptr %spec.select.i.i.i116, align 8, !tbaa !138
  %i.hu = icmp eq i64 %.0.i.i.i117, 12
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.aq:                                            ; preds = %bb.a
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !135 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 32
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !137
  %i.ia = icmp ult i32 %i.hz, 65
  %i.ib = load ptr, ptr %i.hx, align 8
  %spec.select.i.i.i118 = select i1 %i.ia, ptr %i.hx, ptr %i.ib
  %.0.i.i.i119 = load i64, ptr %spec.select.i.i.i118, align 8, !tbaa !138
  %i.ic = icmp eq i64 %.0.i.i.i119, 13
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.ar:                                            ; preds = %bb.a
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !135 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !137
  %i.ii = icmp ult i32 %i.ih, 65
  %i.ij = load ptr, ptr %i.if, align 8
  %spec.select.i.i.i120 = select i1 %i.ii, ptr %i.if, ptr %i.ij
  %.0.i.i.i121 = load i64, ptr %spec.select.i.i.i120, align 8, !tbaa !138
  %i.ik = icmp eq i64 %.0.i.i.i121, 20
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.as:                                            ; preds = %bb.a
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !135 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !137
  %i.iq = icmp ult i32 %i.ip, 65
  %i.ir = load ptr, ptr %i.in, align 8
  %spec.select.i.i.i122 = select i1 %i.iq, ptr %i.in, ptr %i.ir
  %.0.i.i.i123 = load i64, ptr %spec.select.i.i.i122, align 8, !tbaa !138
  %i.is = icmp eq i64 %.0.i.i.i123, 21
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.at:                                            ; preds = %bb.a
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.iu = load i16, ptr %i.it, align 8
  %i.iv = and i16 %i.iu, 3072
  %.not41 = icmp eq i16 %i.iv, 3072
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.au:                                            ; preds = %bb.a
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ix = load i16, ptr %i.iw, align 8
  %i.iy = and i16 %i.ix, 3072
  %.not40 = icmp eq i16 %i.iy, 1024
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.av:                                            ; preds = %bb.a
  %i.iz = tail call noundef zeroext i1 @_ZNK4llvm6SDNode16hasAnyUseOfValueEj(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef 0) #15
  %i.ja = xor i1 %i.iz, true
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.aw:                                            ; preds = %bb.a
  %i.jb = tail call noundef zeroext i1 @_ZNK4llvm6SDNode16hasAnyUseOfValueEj(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef 0) #15
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.ax:                                            ; preds = %bb.a
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jd = load i16, ptr %i.jc, align 8
  %i.je = and i16 %i.jd, 3072
  %.not39 = icmp eq i16 %i.je, 2048
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.ay:                                            ; preds = %bb.a
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jg = load i16, ptr %i.jf, align 8
  %i.jh = and i16 %i.jg, 3072
  %.not38 = icmp eq i16 %i.jh, 0
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.az:                                            ; preds = %bb.a
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jj = load i16, ptr %i.ji, align 8
  %i.jk = and i16 %i.jj, 3072
  %.not37 = icmp eq i16 %i.jk, 0
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.ba:                                            ; preds = %bb.a
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !135 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 24 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !137
  %i.jq = icmp ult i32 %i.jp, 65
  %i.jr = load ptr, ptr %i.jn, align 8
  %spec.select.i.i.i124 = select i1 %i.jq, ptr %i.jn, ptr %i.jr
  %.0.i.i.i125 = load i64, ptr %spec.select.i.i.i124, align 8, !tbaa !138
  %i.js = icmp ult i64 %.0.i.i.i125, 4294967296
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

bb.bb:                                            ; preds = %bb.a
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ju = load i16, ptr %i.jt, align 8
  %i.jv = and i16 %i.ju, 896
  %.not = icmp eq i16 %i.jv, 0
  br label %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit

_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit:    ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit104, %bb.ad, %bb.ac, %bb.ab, %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit98, %bb.x, %bb.h, %bb.g, %bb.f, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %.22 = phi i1 [ %i.p, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ], [ %.not192, %bb.f ], [ %.not190, %bb.g ], [ %.not188, %bb.h ], [ %.not, %bb.bb ], [ false, %bb.i ], [ false, %bb.l ], [ false, %bb.o ], [ true, %bb.r ], [ %.not186, %bb.x ], [ %.9, %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit98 ], [ %.not44, %bb.ab ], [ %i.ep, %bb.ac ], [ %.not184, %bb.ad ], [ %.13, %_ZNK4llvm9MemSDNode17getMergedOrderingEv.exit104 ], [ %.not43, %bb.ah ], [ %.not42, %bb.ai ], [ %i.fy, %bb.aj ], [ %i.gg, %bb.ak ], [ %i.go, %bb.al ], [ %i.gw, %bb.am ], [ %i.he, %bb.an ], [ %i.hm, %bb.ao ], [ %i.hu, %bb.ap ], [ %i.ic, %bb.aq ], [ %i.ik, %bb.ar ], [ %i.is, %bb.as ], [ %.not41, %bb.at ], [ %.not40, %bb.au ], [ %i.ja, %bb.av ], [ %i.jb, %bb.aw ], [ %.not39, %bb.ax ], [ %.not38, %bb.ay ], [ %.not37, %bb.az ], [ %i.js, %bb.ba ], [ %i.ao, %bb.k ], [ false, %bb.j ], [ %i.bh, %bb.n ], [ false, %bb.m ], [ %i.ca, %bb.q ], [ false, %bb.p ], [ %i.ct, %bb.t ], [ true, %bb.s ], [ %i.dm, %bb.w ], [ false, %bb.v ], [ false, %bb.u ]
  ret i1 %.22
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm16SelectionDAGISel30CheckNodePredicateWithOperandsENS_7SDValueEjNS_8ArrayRefIS1_EE(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr %1, i32 %2, i32 noundef %3, ptr %4, i64 %5) unnamed_addr #0 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_115BPFDAGToDAGISel19CheckComplexPatternEPN4llvm6SDNodeES3_NS1_7SDValueEjRNS1_15SmallVectorImplISt4pairIS4_S3_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1008) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr %3, i32 %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(16) %6) unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !475
  %i.c = zext i32 %i.b to i64                     ; 10 uses
  %i.d = icmp eq i32 %5, 0
  %i.e = add nuw nsw i64 %i.c, 2                  ; 3 uses
  %i.f = and i64 %i.e, 4294967295                 ; 11 uses
  %i.g = icmp eq i64 %i.f, %i.c                   ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ult i64 %i.f, %i.c
  br i1 %i.h, label %.sink.split.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !476
  %i.k = zext i32 %i.j to i64
  %i.l = icmp samesign ugt i64 %i.f, %i.k
  br i1 %i.l, label %bb.e, label %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.m, i64 noundef %i.f, i64 noundef 24) #15
  %.pre.i.i = load i32, ptr %i.a, align 8, !tbaa !475
  %.pre13.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %.pre-phi.i.i = phi i64 [ %i.c, %bb.d ], [ %.pre13.i.i, %bb.e ]
  %.pre-phi.fr.i.i = freeze i64 %.pre-phi.i.i     ; 3 uses
  %.not11.i.i = icmp samesign eq i64 %i.f, %.pre-phi.fr.i.i
  br i1 %.not11.i.i, label %.sink.split.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i
  %i.n = load ptr, ptr %6, align 8, !tbaa !477
  %i.o = getelementptr [24 x i8], ptr %i.n, i64 %.pre-phi.fr.i.i
  %reass.add.i = sub i64 %i.f, %.pre-phi.fr.i.i
  %reass.mul.i = mul i64 %reass.add.i, 24         ; 2 uses
  %i.p = add i64 %reass.mul.i, -24
  %i.q = urem i64 %i.p, 24
  %i.r = sub i64 %reass.mul.i, %i.q
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.r, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i, %bb.c
  %i.s = trunc i64 %i.e to i32
  store i32 %i.s, ptr %i.a, align 8, !tbaa !475
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit

_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit: ; preds = %bb.b, %.sink.split.i.i
  %i.t = load ptr, ptr %6, align 8, !tbaa !477    ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.c
  %i.v = add nuw nsw i64 %i.c, 1
  %i.w = and i64 %i.v, 4294967295
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.w
  %i.y = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115BPFDAGToDAGISel10SelectAddrEN4llvm7SDValueERS2_S3_(ptr noundef nonnull align 8 dereferenceable(1008) %0, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(12) %i.u, ptr noundef nonnull align 8 dereferenceable(12) %i.x)
  br label %bb.p

bb.f:                                             ; preds = %bb.a
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit32, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp samesign ult i64 %i.f, %i.c
  br i1 %i.z, label %.sink.split.i.i29, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !476
  %i.ac = zext i32 %i.ab to i64
  %i.ad = icmp samesign ugt i64 %i.f, %i.ac
  br i1 %i.ad, label %bb.i, label %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i22

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.ae, i64 noundef %i.f, i64 noundef 24) #15
  %.pre.i.i30 = load i32, ptr %i.a, align 8, !tbaa !475
  %.pre13.i.i31 = zext i32 %.pre.i.i30 to i64
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i22

_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i22: ; preds = %bb.i, %bb.h
  %.pre-phi.i.i23 = phi i64 [ %i.c, %bb.h ], [ %.pre13.i.i31, %bb.i ]
  %.pre-phi.fr.i.i24 = freeze i64 %.pre-phi.i.i23 ; 3 uses
  %.not11.i.i25 = icmp samesign eq i64 %i.f, %.pre-phi.fr.i.i24
  br i1 %.not11.i.i25, label %.sink.split.i.i29, label %.lr.ph.preheader.i.i26

.lr.ph.preheader.i.i26:                           ; preds = %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i22
  %i.af = load ptr, ptr %6, align 8, !tbaa !477
  %i.ag = getelementptr [24 x i8], ptr %i.af, i64 %.pre-phi.fr.i.i24
  %reass.add.i27 = sub i64 %i.f, %.pre-phi.fr.i.i24
  %reass.mul.i28 = mul i64 %reass.add.i27, 24     ; 2 uses
  %i.ah = add i64 %reass.mul.i28, -24
  %i.ai = urem i64 %i.ah, 24
  %i.aj = sub i64 %reass.mul.i28, %i.ai
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %i.aj, i1 false)
  br label %.sink.split.i.i29

.sink.split.i.i29:                                ; preds = %.lr.ph.preheader.i.i26, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i22, %bb.g
  %i.ak = trunc i64 %i.e to i32
  store i32 %i.ak, ptr %i.a, align 8, !tbaa !475
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit32

_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit32: ; preds = %bb.f, %.sink.split.i.i29
  %i.al = load ptr, ptr %6, align 8, !tbaa !477   ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.c ; 2 uses
  %i.an = add nuw nsw i64 %i.c, 1
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ao ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !124
  store i64 %i.ar, ptr %7, align 8, !tbaa !124
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.au = load i32, ptr %i.at, align 4, !tbaa !125
  store i32 %i.au, ptr %i.as, align 8, !tbaa !127
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !112
  %i.ax = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG24isBaseWithConstantOffsetENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.aw, ptr %3, i32 %4) #15
  br i1 %i.ax, label %bb.j, label %_ZN12_GLOBAL__N_115BPFDAGToDAGISel12SelectFIAddrEN4llvm7SDValueERS2_S3_.exit

bb.j:                                             ; preds = %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit32
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !128 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !131
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 88 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !135 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !137 ; 3 uses
  %i.bh = icmp ult i32 %i.bg, 65
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !138
  %i.bj = icmp eq i32 %i.bg, 0
  %i.bk = sub nuw nsw i32 64, %i.bg
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = shl i64 %i.bi, %i.bl
  %i.bn = ashr exact i64 %i.bm, %i.bl
  %.0.i.i.i.i.i = select i1 %i.bj, i64 0, i64 %i.bn
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !138
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !14
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i64 [ %.0.i.i.i.i.i, %bb.k ], [ %i.bp, %bb.l ]
  %i.bq = add i64 %.0.i.i.i.i, 32768
  %i.br = icmp ult i64 %i.bq, 65536
  br i1 %i.br, label %bb.m, label %_ZN12_GLOBAL__N_115BPFDAGToDAGISel12SelectFIAddrEN4llvm7SDValueERS2_S3_.exit

bb.m:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i
  %i.bs = load ptr, ptr %i.az, align 8, !tbaa !131 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !123
  switch i32 %i.bu, label %_ZN12_GLOBAL__N_115BPFDAGToDAGISel12SelectFIAddrEN4llvm7SDValueERS2_S3_.exit [
    i32 41, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit.i
    i32 16, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit.i: ; preds = %bb.m, %bb.m
  %i.bv = load ptr, ptr %i.av, align 8, !tbaa !112
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !269
  %i.by = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %i.bv, i32 noundef %i.bx, i16 8, ptr null, i1 noundef zeroext true) #15 ; 2 uses
  %.fca.0.extract2.i = extractvalue { ptr, i32 } %i.by, 0
  %.fca.1.extract3.i = extractvalue { ptr, i32 } %i.by, 1
  store ptr %.fca.0.extract2.i, ptr %i.am, align 8, !tbaa !132
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %.fca.1.extract3.i, ptr %.sroa.47.0..sroa_idx.i, align 8, !tbaa !145
  %i.bz = load ptr, ptr %i.av, align 8, !tbaa !112
  %i.ca = load ptr, ptr %i.bc, align 8, !tbaa !135 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !137 ; 3 uses
  %i.ce = icmp ult i32 %i.cd, 65
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit.i
  %i.cf = load i64, ptr %i.cb, align 8, !tbaa !138
  %i.cg = icmp eq i32 %i.cd, 0
end_hunk_1
