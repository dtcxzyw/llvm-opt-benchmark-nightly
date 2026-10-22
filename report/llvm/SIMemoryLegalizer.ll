Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SIMemoryLegalizer?download=true
inline.NumInlined: 1859
inline.NumDeleted: 1059
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
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
%"class.llvm::StringMap" = type { %"class.llvm::StringMapImpl.base", [4 x i8] }
%"class.llvm::StringMapImpl.base" = type <{ ptr, i32, i32, i32 }>
%"struct.std::once_flag" = type { i32 }
%"struct.llvm::AnalysisSetKey" = type { [8 x i8] }
%"struct.llvm::AnalysisKey" = type { [8 x i8] }
%"class.llvm::PreservedAnalyses" = type { %"class.llvm::SmallPtrSet.0", %"class.llvm::SmallPtrSet.3" }
%"class.llvm::SmallPtrSet.0" = type { %"class.llvm::SmallPtrSetImpl.base.2", [2 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.2" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallPtrSet.3" = type { %"class.llvm::SmallPtrSetImpl.base.5", [2 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.5" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.(anonymous namespace)::SIMemoryLegalizer" = type { ptr, %"class.std::unique_ptr.201", %"class.std::__cxx11::list" }
%"class.std::unique_ptr.201" = type { %"struct.std::__uniq_ptr_data.202" }
%"struct.std::__uniq_ptr_data.202" = type { %"class.std::__uniq_ptr_impl.203" }
%"class.std::__uniq_ptr_impl.203" = type { %"class.std::tuple.204" }
%"class.std::tuple.204" = type { %"struct.std::_Tuple_impl.205" }
%"struct.std::_Tuple_impl.205" = type { %"struct.std::_Head_base.208" }
%"struct.std::_Head_base.208" = type { ptr }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<llvm::MachineInstrBundleIterator<llvm::MachineInstr>, std::allocator<llvm::MachineInstrBundleIterator<llvm::MachineInstr>>>::_List_impl" }
%"struct.std::__cxx11::_List_base<llvm::MachineInstrBundleIterator<llvm::MachineInstr>, std::allocator<llvm::MachineInstrBundleIterator<llvm::MachineInstr>>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"class.llvm::SmallString" = type { %"class.llvm::SmallVector.261" }
%"class.llvm::SmallVector.261" = type { %"class.llvm::SmallVectorImpl.262", %"struct.llvm::SmallVectorStorage.265" }
%"class.llvm::SmallVectorImpl.262" = type { %"class.llvm::SmallVectorTemplateBase.263" }
%"class.llvm::SmallVectorTemplateBase.263" = type { %"class.llvm::SmallVectorTemplateCommon.264" }
%"class.llvm::SmallVectorTemplateCommon.264" = type { %"class.llvm::SmallVectorBase.179" }
%"class.llvm::SmallVectorBase.179" = type { ptr, i64, i64 }
%"struct.llvm::SmallVectorStorage.265" = type { [128 x i8] }
%"class.llvm::raw_svector_ostream" = type { %"class.llvm::raw_pwrite_stream", ptr }
%"class.llvm::raw_pwrite_stream" = type { %"class.llvm::raw_ostream" }
%"class.llvm::raw_ostream" = type { ptr, i32, ptr, ptr, ptr, i8, i32 }
%"class.llvm::DiagnosticInfoUnsupported" = type { %"class.llvm::DiagnosticInfoWithLocationBase", ptr }
%"class.llvm::DiagnosticInfoWithLocationBase" = type { %"class.llvm::DiagnosticInfo.base", ptr, %"class.llvm::DiagnosticLocation" }
%"class.llvm::DiagnosticInfo.base" = type <{ ptr, i32, i8 }>
%"class.llvm::DiagnosticLocation" = type { ptr, i32, i32 }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon.628 }
%struct.anon.628 = type { ptr, i64 }
%"class.llvm::MMRAMetadata" = type { %"class.llvm::DenseSet.629" }
%"class.llvm::DenseSet.629" = type { %"class.llvm::detail::DenseSetImpl.630" }
%"class.llvm::detail::DenseSetImpl.630" = type { %"class.llvm::DenseMap.631" }
%"class.llvm::DenseMap.631" = type { ptr, ptr, i32, i32 }
%"class.llvm::detail::DenseSetImpl<std::pair<llvm::StringRef, llvm::StringRef>, llvm::DenseMap<std::pair<llvm::StringRef, llvm::StringRef>, llvm::detail::DenseSetEmpty, llvm::DenseMapInfo<std::pair<llvm::StringRef, llvm::StringRef>>, llvm::detail::DenseSetPair<std::pair<llvm::StringRef, llvm::StringRef>>>>::DenseSetIterator" = type { %"class.llvm::DenseMapIterator" }
%"class.llvm::DenseMapIterator" = type { ptr, ptr, ptr, ptr }
%"class.(anonymous namespace)::SIMemOpAccess" = type { ptr, ptr }
%"class.llvm::MachineInstrBundleIterator" = type { %"class.llvm::ilist_iterator" }
%"class.llvm::ilist_iterator" = type { ptr }
%"class.std::optional.509" = type { %"struct.std::_Optional_base.510" }
%"struct.std::_Optional_base.510" = type { %"struct.std::_Optional_payload.512" }
%"struct.std::_Optional_payload.512" = type { %"struct.std::_Optional_payload_base.base.514", [3 x i8] }
%"struct.std::_Optional_payload_base.base.514" = type { %"union.std::_Optional_payload_base<(anonymous namespace)::SIMemOpInfo>::_Storage", i8 }
%"union.std::_Optional_payload_base<(anonymous namespace)::SIMemOpInfo>::_Storage" = type { %"class.(anonymous namespace)::SIMemOpInfo" }
%"class.(anonymous namespace)::SIMemOpInfo" = type <{ i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, [2 x i8] }>
%class.anon.699 = type { ptr, ptr }
%"class.std::reference_wrapper" = type { ptr }
%"class.llvm::MachineOperand" = type { i32, %union.anon.504, ptr, %"union.llvm::MachineOperand::ContentsUnion" }
%union.anon.504 = type { i32 }
%"union.llvm::MachineOperand::ContentsUnion" = type { %"class.llvm::ArrayRef.505" }
%"class.llvm::ArrayRef.505" = type { ptr, i64 }
%"class.llvm::MIMetadata" = type { %"class.llvm::DebugLoc", ptr, ptr, ptr }
%"class.llvm::DebugLoc" = type { ptr }

$_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev = comdat any

$_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE = comdat any

$_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE = comdat any

$_ZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhh = comdat any

$_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE = comdat any

$_ZN4llvm4Pass14doFinalizationERNS_6ModuleE = comdat any

$_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv = comdat any

$_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv = comdat any

$_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv = comdat any

$_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE = comdat any

$_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv = comdat any

$_ZZN4llvm23isAtLeastOrStrongerThanENS_14AtomicOrderingES0_E6lookup = comdat any

$_ZZN4llvm14isStrongerThanENS_14AtomicOrderingES0_E6lookup = comdat any

$_ZTVN4llvm2cl11OptionValueIbEE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZL28AmdgcnSkipCacheInvalidations = internal global %"class.llvm::cl::opt" zeroinitializer, align 8
@.str = private unnamed_addr constant [32 x i8] c"amdgcn-skip-cache-invalidations\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Use this to skip inserting cache invalidating instructions.\00", align 1
@__dso_handle = external hidden global i8
@_ZN12_GLOBAL__N_17ASNamesE = internal global %"class.llvm::StringMap" zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@_ZL41InitializeSIMemoryLegalizerLegacyPassFlag = internal global %"struct.std::once_flag" zeroinitializer, align 4
@_ZN12_GLOBAL__N_123SIMemoryLegalizerLegacy2IDE = internal global i8 0, align 1
@_ZN4llvm19SIMemoryLegalizerIDE = local_unnamed_addr constant ptr @_ZN12_GLOBAL__N_123SIMemoryLegalizerLegacy2IDE, align 8
@_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl6OptionE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE = external global %"struct.llvm::AnalysisSetKey", align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"amdgpu-tg-split\00", align 1
@_ZTVN12_GLOBAL__N_118SIGfx6CacheControlE = internal unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr null, ptr @_ZNK12_GLOBAL__N_118SIGfx6CacheControl21enableLoadCacheBypassERKN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceE, ptr @_ZNK12_GLOBAL__N_118SIGfx6CacheControl22enableStoreCacheBypassERKN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceE, ptr @_ZNK12_GLOBAL__N_118SIGfx6CacheControl20enableRMWCacheBypassERKN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceE, ptr @_ZNK12_GLOBAL__N_118SIGfx6CacheControl30enableVolatileAndOrNonTemporalERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_17SIAtomicAddrSpaceENS_7SIMemOpEbbb, ptr @_ZNK12_GLOBAL__N_114SICacheControl13finalizeStoreERN4llvm12MachineInstrEb, ptr @_ZNK12_GLOBAL__N_114SICacheControl12finalizeLoadERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE, ptr @_ZNK12_GLOBAL__N_114SICacheControl23handleCooperativeAtomicERN4llvm12MachineInstrE, ptr @_ZNK12_GLOBAL__N_118SIGfx6CacheControl10insertWaitERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceENS_7SIMemOpEbNS_8PositionENS1_14AtomicOrderingEb, ptr @_ZNK12_GLOBAL__N_118SIGfx6CacheControl13insertAcquireERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceENS_8PositionE, ptr @_ZNK12_GLOBAL__N_118SIGfx6CacheControl15insertWritebackERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceENS_8PositionE, ptr @_ZNK12_GLOBAL__N_114SICacheControl17handleNonVolatileERN4llvm12MachineInstrE, ptr @_ZN12_GLOBAL__N_114SICacheControlD2Ev, ptr @_ZN12_GLOBAL__N_118SIGfx6CacheControlD0Ev] }, align 8
@_ZZN4llvm23isAtLeastOrStrongerThanENS_14AtomicOrderingES0_E6lookup = linkonce_odr local_unnamed_addr constant [8 x [8 x i8]] [[8 x i8] c"\01\00\00\00\00\00\00\00", [8 x i8] c"\01\01\00\00\00\00\00\00", [8 x i8] c"\01\01\01\00\00\00\00\00", [8 x i8] c"\01\01\01\01\00\00\00\00", [8 x i8] c"\01\01\01\01\01\00\00\00", [8 x i8] c"\01\01\01\00\00\01\00\00", [8 x i8] c"\01\01\01\01\01\01\01\00", [8 x i8] c"\01\01\01\01\01\01\01\01"], comdat, align 16
@_ZTVN12_GLOBAL__N_119SIGfx10CacheControlE = internal unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr null, ptr @_ZNK12_GLOBAL__N_119SIGfx10CacheControl21enableLoadCacheBypassERKN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceE, ptr @_ZNK12_GLOBAL__N_119SIGfx10CacheControl22enableStoreCacheBypassERKN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceE, ptr @_ZNK12_GLOBAL__N_119SIGfx10CacheControl20enableRMWCacheBypassERKN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceE, ptr @_ZNK12_GLOBAL__N_119SIGfx10CacheControl30enableVolatileAndOrNonTemporalERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_17SIAtomicAddrSpaceENS_7SIMemOpEbbb, ptr @_ZNK12_GLOBAL__N_114SICacheControl13finalizeStoreERN4llvm12MachineInstrEb, ptr @_ZNK12_GLOBAL__N_114SICacheControl12finalizeLoadERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE, ptr @_ZNK12_GLOBAL__N_114SICacheControl23handleCooperativeAtomicERN4llvm12MachineInstrE, ptr @_ZNK12_GLOBAL__N_119SIGfx10CacheControl10insertWaitERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceENS_7SIMemOpEbNS_8PositionENS1_14AtomicOrderingEb, ptr @_ZNK12_GLOBAL__N_119SIGfx10CacheControl13insertAcquireERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceENS_8PositionE, ptr @_ZNK12_GLOBAL__N_119SIGfx10CacheControl15insertWritebackERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceENS_8PositionE, ptr @_ZNK12_GLOBAL__N_114SICacheControl17handleNonVolatileERN4llvm12MachineInstrE, ptr @_ZN12_GLOBAL__N_114SICacheControlD2Ev, ptr @_ZN12_GLOBAL__N_119SIGfx10CacheControlD0Ev] }, align 8
@_ZTVN12_GLOBAL__N_119SIGfx12CacheControlE = internal unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr null, ptr @_ZNK12_GLOBAL__N_119SIGfx12CacheControl21enableLoadCacheBypassERKN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceE, ptr @_ZNK12_GLOBAL__N_119SIGfx12CacheControl22enableStoreCacheBypassERKN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceE, ptr @_ZNK12_GLOBAL__N_119SIGfx12CacheControl20enableRMWCacheBypassERKN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceE, ptr @_ZNK12_GLOBAL__N_119SIGfx12CacheControl30enableVolatileAndOrNonTemporalERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_17SIAtomicAddrSpaceENS_7SIMemOpEbbb, ptr @_ZNK12_GLOBAL__N_119SIGfx12CacheControl13finalizeStoreERN4llvm12MachineInstrEb, ptr @_ZNK12_GLOBAL__N_119SIGfx12CacheControl12finalizeLoadERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE, ptr @_ZNK12_GLOBAL__N_119SIGfx12CacheControl23handleCooperativeAtomicERN4llvm12MachineInstrE, ptr @_ZNK12_GLOBAL__N_119SIGfx12CacheControl10insertWaitERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceENS_7SIMemOpEbNS_8PositionENS1_14AtomicOrderingEb, ptr @_ZNK12_GLOBAL__N_119SIGfx12CacheControl13insertAcquireERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceENS_8PositionE, ptr @_ZNK12_GLOBAL__N_119SIGfx12CacheControl15insertWritebackERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceENS_8PositionE, ptr @_ZNK12_GLOBAL__N_119SIGfx12CacheControl17handleNonVolatileERN4llvm12MachineInstrE, ptr @_ZN12_GLOBAL__N_114SICacheControlD2Ev, ptr @_ZN12_GLOBAL__N_119SIGfx12CacheControlD0Ev] }, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"Unsupported atomic synchronization scope\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Unsupported atomic address space\00", align 1
@_ZTVN4llvm25DiagnosticInfoUnsupportedE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZZN4llvm14isStrongerThanENS_14AtomicOrderingES0_E6lookup = linkonce_odr local_unnamed_addr constant [8 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\01\00\00\00\00\00\00\00", [8 x i8] c"\01\01\00\00\00\00\00\00", [8 x i8] c"\01\01\01\00\00\00\00\00", [8 x i8] c"\01\01\01\01\00\00\00\00", [8 x i8] c"\01\01\01\00\00\00\00\00", [8 x i8] c"\01\01\01\01\01\01\00\00", [8 x i8] c"\01\01\01\01\01\01\01\00"], comdat, align 16
@.str.10 = private unnamed_addr constant [29 x i8] c"unknown amdgcn-av metadata '\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"unknown address space '\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"'; expected one of \00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTVN4llvm19raw_svector_ostreamE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.16 = private unnamed_addr constant [20 x i8] c"SI Memory Legalizer\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"si-memory-legalizer\00", align 1
@_ZTVN12_GLOBAL__N_123SIMemoryLegalizerLegacyE = internal unnamed_addr constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr null, ptr @_ZN4llvm4PassD2Ev, ptr @_ZN12_GLOBAL__N_123SIMemoryLegalizerLegacyD0Ev, ptr @_ZNK12_GLOBAL__N_123SIMemoryLegalizerLegacy11getPassNameEv, ptr @_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE, ptr @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE, ptr @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE, ptr @_ZNK4llvm19MachineFunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE, ptr @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE, ptr @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv, ptr @_ZNK12_GLOBAL__N_123SIMemoryLegalizerLegacy16getAnalysisUsageERN4llvm13AnalysisUsageE, ptr @_ZN4llvm4Pass13releaseMemoryEv, ptr @_ZN4llvm4Pass18getAsImmutablePassEv, ptr @_ZN4llvm4Pass18getAsPMDataManagerEv, ptr @_ZNK4llvm4Pass14verifyAnalysisEv, ptr @_ZN4llvm4Pass17dumpPassStructureEj, ptr @_ZN4llvm19MachineFunctionPass13runOnFunctionERNS_8FunctionE, ptr @_ZN4llvm19MachineFunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE, ptr @_ZN12_GLOBAL__N_123SIMemoryLegalizerLegacy20runOnMachineFunctionERN4llvm15MachineFunctionE, ptr @_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv, ptr @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv, ptr @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv] }, align 8
@_ZN4llvm28MachineModuleInfoWrapperPass2IDE = external global i8, align 1
@_ZTVN4llvm2cl11OptionValueIbEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm2cl6parserIbEE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZN4llvm25OuterAnalysisManagerProxyINS_15AnalysisManagerINS_6ModuleEJEEENS_15MachineFunctionEJEE3KeyE = external global %"struct.llvm::AnalysisKey", align 8
@_ZN4llvm21MachineModuleAnalysis3KeyE = external global %"struct.llvm::AnalysisKey", align 8
@_ZN4llvm11CFGAnalyses6SetKeyE = external global %"struct.llvm::AnalysisSetKey", align 8
@_ZSt15__once_callable = external thread_local local_unnamed_addr global ptr, align 8
@_ZSt11__once_call = external thread_local local_unnamed_addr global ptr, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_SIMemoryLegalizer.cpp, ptr null }]
@switch.table._ZNK12_GLOBAL__N_113SIMemOpAccess22constructFromMIWithMMOERKN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE = private unnamed_addr constant [6 x i8] [i8 7, i8 1, i8 8, i8 2, i8 poison, i8 4], align 4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !523  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #20, !inline_history !522 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.i) #20
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !524  ; 2 uses
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
define internal void @_ZN4llvm9StringMapIN12_GLOBAL__N_117SIAtomicAddrSpaceENS_15MallocAllocatorEED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(20) dereferenceable(20) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27
  %i.c = icmp eq i32 %i.b, 0
  %.pre13 = load ptr, ptr %0, align 8, !tbaa !28  ; 4 uses
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %.pre13, i64 %.idx
  %.not11 = icmp eq i32 %i.e, 0
  br i1 %.not11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.012 = phi ptr [ %i.k, %bb.d ], [ %.pre13, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.012, align 8, !tbaa !31  ; 3 uses
  %.not10 = icmp eq ptr %i.h, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34
  %i.j = add i64 %i.i, 17
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef %i.j, i64 noundef 8) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.k, %i.g
  br i1 %.not, label %.loopexit.loopexit, label %.lr.ph

.loopexit.loopexit:                               ; preds = %bb.d
  %.pre = load ptr, ptr %0, align 8, !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b, %bb.a
  %i.l = phi ptr [ %.pre, %.loopexit.loopexit ], [ %.pre13, %bb.b ], [ %.pre13, %bb.a ]
  tail call void @free(ptr noundef %i.l) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm21SIMemoryLegalizerPass3runERNS_15MachineFunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(1065) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.(anonymous namespace)::SIMemoryLegalizer", align 8 ; 8 uses
  %5 = alloca %"class.llvm::PreservedAnalyses", align 8 ; 18 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_15MachineFunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull @_ZN4llvm25OuterAnalysisManagerProxyINS_15AnalysisManagerINS_6ModuleEJEEENS_15MachineFunctionEJEE3KeyE, ptr noundef nonnull align 8 dereferenceable(1065) %2) #20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %2, align 8, !tbaa !150, !nonnull !22, !align !151
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !545  ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !549  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !552, !noalias !553 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !554, !noalias !553 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.l = load i32, ptr %i.k, align 4, !tbaa !555, !noalias !553 ; 4 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.loopexit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = add i32 %i.l, -1                         ; 2 uses
  %i.o = mul i64 ptrtoint (ptr @_ZN4llvm21MachineModuleAnalysis3KeyE to i64), -4658895280553007687 ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = ptrtoint ptr %i.e to i64
  %i.s = mul i64 %i.r, -4658895280553007687       ; 2 uses
  %i.t = lshr i64 %i.s, 31
  %i.u = xor i64 %i.t, %i.s
  %i.v = shl i64 %i.q, 32
  %i.w = and i64 %i.u, 4294967295
  %i.x = or disjoint i64 %i.w, %i.v
  %i.y = mul i64 %i.x, -4658895280553007687       ; 2 uses
  %i.z = lshr i64 %i.y, 31
  %i.aa = xor i64 %i.z, %i.y
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.n, %i.ab                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !154, !noalias !556
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, !prof !557

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %bb.c
  %i.ak = phi i64 [ %i.au, %bb.c ], [ %i.ad, %bb.b ]
  %.017.i.i.i.i.i.i = phi i32 [ %i.at, %bb.c ], [ %i.ac, %bb.b ]
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.ak ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !560, !noalias !556
  %i.an = icmp eq ptr %i.am, @_ZN4llvm21MachineModuleAnalysis3KeyE
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !556
  %i.aq = icmp eq ptr %i.e, %i.ap
  %i.ar = select i1 %i.an, i1 %i.aq, i1 false
  br i1 %i.ar, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.loopexit.i.i.i, label %bb.c, !prof !561

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.as = add nuw i32 %.017.i.i.i.i.i.i, 1
  %i.at = and i32 %i.as, %i.n                     ; 3 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !154, !noalias !556
  %i.ay = and i32 %i.at, 31
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, !prof !562

.loopexit.i.i.i.i.i:                              ; preds = %bb.c, %bb.b, %bb.a
  %i.bb = zext i32 %i.l to i64                    ; 2 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.bb
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.i.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i.i = zext i32 %i.l to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.i.i.i
end_hunk_0
begin_hunk_1_@_ZNK12_GLOBAL__N_118SIGfx6CacheControl30enableVolatileAndOrNonTemporalERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_17SIAtomicAddrSpaceENS_7SIMemOpEbbb:bb.a
  %.not.i28.not = icmp eq ptr %i.v, null          ; 2 uses
  br i1 %i.t, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i28.not, label %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit29, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !381
  %i.y = or i64 %i.x, 2
  store i64 %i.y, ptr %i.w, align 8, !tbaa !381
  br label %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit29

bb.j:                                             ; preds = %bb.g
  br i1 %.not.i28.not, label %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit29, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !381
  %i.ab = or i64 %i.aa, 3
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !381
  br label %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit29

_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit29: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit
  %.0 = phi i1 [ %i.o, %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit ], [ true, %bb.i ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.j ], [ true, %bb.k ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_114SICacheControl13finalizeStoreERN4llvm12MachineInstrEb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i1 zeroext %2) unnamed_addr #10 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_114SICacheControl12finalizeLoadERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #10 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_114SICacheControl23handleCooperativeAtomicERN4llvm12MachineInstrE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #11 align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_118SIGfx6CacheControl10insertWaitERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceENS_7SIMemOpEbNS_8PositionENS1_14AtomicOrderingEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i32 noundef %2, i32 noundef %3, i32 %4, i1 noundef zeroext %5, i32 noundef %6, i32 noundef %7, i1 zeroext %8) unnamed_addr #3 align 2 {
bb.a:
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !358    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !466  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.e = icmp eq i32 %6, 1                        ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !376
  %i.i = and i32 %i.h, 8
  %.not34.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.k, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %i.a, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !363  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !376
  %i.n = and i32 %i.m, 8
  %.not3.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !3

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %bb.b, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %i.a, %bb.b ], [ %i.a, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.k, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !363
  store ptr %i.p, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !463, !nonnull !22, !align !151 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 766
  %i.t = load i8, ptr %i.s, align 2, !tbaa !465, !range !21, !noundef !22
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.w = load i8, ptr %i.v, align 1, !tbaa !355, !range !21, !noundef !22
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = and i32 %3, 13
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = icmp eq i32 %2, 3
  %or.cond = and i1 %i.aa, %i.z
  %spec.store.select = select i1 %or.cond, i32 5, i32 %2
  %i.ab = and i32 %3, 29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.080 = phi i32 [ %i.ab, %bb.e ], [ %3, %bb.d ], [ %3, %bb.c ] ; 3 uses
  %.0 = phi i32 [ %spec.store.select, %bb.e ], [ %2, %bb.d ], [ %2, %bb.c ] ; 3 uses
  %i.ac = and i32 %.080, 5
  %.not = icmp ne i32 %i.ac, 0
  %.0.off = add i32 %.0, -5
  %switch = icmp ult i32 %.0.off, 2               ; 2 uses
  %or.cond45 = and i1 %.not, %switch              ; 2 uses
  %i.ad = and i32 %.080, 2
  %.not42 = icmp eq i32 %i.ad, 0                  ; 2 uses
  %.0.off46 = add i32 %.0, -1
  %switch47 = icmp ult i32 %.0.off46, 2
  %or.cond48 = or i1 %.not42, %switch47
  %not.or.cond48 = xor i1 %or.cond48, true
  %i.ae = and i32 %.080, 8
  %.not43 = icmp ne i32 %i.ae, 0
  %or.cond51 = and i1 %.not43, %switch
  %spec.select53 = or i1 %or.cond51, %not.or.cond48
  %spec.select52 = and i1 %5, %spec.select53      ; 2 uses
  %or.cond3 = or i1 %or.cond45, %spec.select52    ; 3 uses
  br i1 %or.cond3, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br i1 %or.cond45, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call noundef i32 @_ZN4llvm6AMDGPU15getVmcntBitMaskERKNS0_10IsaVersionE(ptr noundef nonnull align 4 dereferenceable(12) %i.af) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ah = phi i32 [ %i.ag, %bb.h ], [ 0, %bb.g ]
  %i.ai = tail call noundef i32 @_ZN4llvm6AMDGPU16getExpcntBitMaskERKNS0_10IsaVersionE(ptr noundef nonnull align 4 dereferenceable(12) %i.af) #20
  br i1 %spec.select52, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = tail call noundef i32 @_ZN4llvm6AMDGPU17getLgkmcntBitMaskERKNS0_10IsaVersionE(ptr noundef nonnull align 4 dereferenceable(12) %i.af) #20
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %bb.j, %bb.i
  %i.ak = phi i32 [ %i.aj, %bb.j ], [ 0, %bb.i ]
  %i.al = tail call noundef i32 @_ZN4llvm6AMDGPU13encodeWaitcntERKNS0_10IsaVersionEjjj(ptr noundef nonnull align 4 dereferenceable(12) %i.af, i32 noundef %i.ah, i32 noundef %i.ai, i32 noundef %i.ak) #20
  %.sroa.09.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.08.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !467
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !347
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !468
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -172576
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !508 ; 2 uses
  %i.at = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr %.sroa.08.0.copyload, i1 noundef zeroext false) #20 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef %i.at) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.09.0.copyload, align 8
  %i.av = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %.sroa.09.0.copyload, ptr %i.ax, align 8, !tbaa !363
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.at, align 8
  %i.ay = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.az = or disjoint i64 %i.ay, %i.av
  store i64 %i.az, ptr %i.at, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.at, ptr %i.ba, align 8, !tbaa !363
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %.sroa.09.0.copyload, align 8
  %i.bb = ptrtoint ptr %i.at to i64
  %i.bc = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.bd = or disjoint i64 %i.bc, %i.bb
  store i64 %i.bd, ptr %.sroa.09.0.copyload, align 8
  %i.be = zext i32 %i.al to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store i32 1, ptr %9, align 8, !alias.scope !797
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.bf, align 8, !tbaa !511, !alias.scope !797
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !381, !alias.scope !797
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.at, ptr noundef nonnull align 8 dereferenceable(1065) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !463
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  %i.bh = phi ptr [ %i.r, %bb.f ], [ %.pre, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 882
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !512, !range !21, !noundef !22
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm23isAtLeastOrStrongerThanENS_14AtomicOrderingES0_E6lookup, i64 %10
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 5
  %13 = load i8, ptr %12, align 1, !tbaa !387, !range !21, !noundef !22
  %14 = trunc nuw i8 %13 to i1
  %15 = icmp eq i32 %.0, 3
  %or.cond5 = and i1 %15, %14
  %or.cond5.not = xor i1 %or.cond5, true
  %brmerge = or i1 %.not42, %or.cond5.not
  br i1 %brmerge, label %bb.m, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit63

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit63: ; preds = %bb.l
  %.sroa.07.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.06.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !467
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !347
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !468
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -172544
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !508
  %i.bs = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.06.0.copyload, i1 noundef zeroext false) #20 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef %i.bs) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i55 = load i64, ptr %.sroa.07.0.copyload, align 8
  %i.bu = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i55, -8 ; 2 uses
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %.sroa.07.0.copyload, ptr %i.bw, align 8, !tbaa !363
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i56 = load i64, ptr %i.bs, align 8
  %i.bx = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i56, 7
  %i.by = or disjoint i64 %i.bx, %i.bu
  store i64 %i.by, ptr %i.bs, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bs, ptr %i.bz, align 8, !tbaa !363
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i57 = load i64, ptr %.sroa.07.0.copyload, align 8
  %i.ca = ptrtoint ptr %i.bs to i64
  %i.cb = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i57, 7
  %i.cc = or disjoint i64 %i.cb, %i.ca
  store i64 %i.cc, ptr %.sroa.07.0.copyload, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit63, %bb.k
  %.1 = phi i1 [ true, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit63 ], [ %or.cond3, %bb.k ], [ %or.cond3, %bb.l ]
  br i1 %i.e, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i64 = load ptr, ptr %1, align 8
  %.0.copyload.i.i.i.i.i.i.i.i.i65 = load i64, ptr %.sroa.0.0.copyload.i.i64, align 8
  %i.cd = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i65, -8
  %i.ce = inttoptr i64 %i.cd to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i = load i64, ptr %i.ce, align 8
  %i.cf = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i, 4
  %.not.i5.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i5.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i67, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i67: ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 44
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !376
  %i.ci = and i32 %i.ch, 4
  %.not45.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not45.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i68

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i68: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i67, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i68
  %.sroa.0.06.i.i.i = phi ptr [ %i.ck, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i68 ], [ %i.ce, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i67 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i = load i64, ptr %.sroa.0.06.i.i.i, align 8
  %i.cj = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i, -8
  %i.ck = inttoptr i64 %i.cj to ptr               ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 44
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !376
  %i.cn = and i32 %i.cm, 4
  %.not4.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i68, !llvm.loop !4

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i68, %bb.n, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i67
  %.sroa.0.1.i.i.i66 = phi ptr [ %i.ce, %bb.n ], [ %i.ce, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i67 ], [ %i.ck, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i68 ]
  store ptr %.sroa.0.1.i.i.i66, ptr %1, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit, %bb.m
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_118SIGfx6CacheControl13insertAcquireERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceENS_8PositionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %8 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %9 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %10 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %11 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !354, !range !21, !noundef !22
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !358    ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !466  ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 7 uses
  %i.h = icmp eq i32 %4, 1                        ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8
  %i.i = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !376
  %i.l = and i32 %i.k, 8
  %.not34.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.n, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %i.d, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !363  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !376
  %i.q = and i32 %i.p, 8
  %.not3.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !3

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %bb.c, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %i.d, %bb.c ], [ %i.d, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.n, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !363  ; 2 uses
  store ptr %i.s, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %bb.b
  %.sroa.020.0.copyload = phi ptr [ %i.s, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %i.d, %bb.b ] ; 15 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !463, !nonnull !22, !align !151 ; 7 uses
  %i.v = getelementptr i8, ptr %i.u, i64 496
  %.val55 = load i32, ptr %i.v, align 8, !tbaa !343
  %i.w = icmp slt i32 %.val55, 6
  br i1 %i.w, label %_ZL24canUseBUFFER_WBINVL1_VOLRKN4llvm12GCNSubtargetE.exit.thread, label %_ZL24canUseBUFFER_WBINVL1_VOLRKN4llvm12GCNSubtargetE.exit

_ZL24canUseBUFFER_WBINVL1_VOLRKN4llvm12GCNSubtargetE.exit: ; preds = %bb.d
  %i.x = getelementptr i8, ptr %i.u, i64 352
  %.val = load ptr, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.z = load i32, ptr %i.y, align 4, !tbaa !804
  %.fr97 = freeze i32 %i.z
  %i.aa = add i32 %.fr97, -33
  %spec.select.i = icmp ult i32 %i.aa, -2
  %spec.select = select i1 %spec.select.i, i64 3084, i64 3082
  br label %_ZL24canUseBUFFER_WBINVL1_VOLRKN4llvm12GCNSubtargetE.exit.thread

_ZL24canUseBUFFER_WBINVL1_VOLRKN4llvm12GCNSubtargetE.exit.thread: ; preds = %_ZL24canUseBUFFER_WBINVL1_VOLRKN4llvm12GCNSubtargetE.exit, %bb.d
  %i.ab = phi i64 [ 3082, %bb.d ], [ %spec.select, %_ZL24canUseBUFFER_WBINVL1_VOLRKN4llvm12GCNSubtargetE.exit ] ; 3 uses
  %i.ac = trunc i32 %3 to i1
  br i1 %i.ac, label %bb.e, label %bb.p

bb.e:                                             ; preds = %_ZL24canUseBUFFER_WBINVL1_VOLRKN4llvm12GCNSubtargetE.exit.thread
  switch i32 %2, label %bb.o [
    i32 6, label %bb.f
    i32 5, label %bb.i
    i32 3, label %bb.j
    i32 2, label %bb.p
    i32 1, label %bb.p
  ]

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 767
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !464, !range !21, !noundef !22
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, label %bb.g

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %bb.f
  %.sroa.019.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !467
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !347
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !468
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -35168
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !508 ; 2 uses
  %i.an = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr %.sroa.019.0.copyload, i1 noundef zeroext false) #20 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef %i.an) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.020.0.copyload, align 8
  %i.ap = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %.sroa.020.0.copyload, ptr %i.ar, align 8, !tbaa !363
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.an, align 8
  %i.as = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.at = or disjoint i64 %i.as, %i.ap
  store i64 %i.at, ptr %i.an, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.an, ptr %i.au, align 8, !tbaa !363
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %.sroa.020.0.copyload, align 8
  %i.av = ptrtoint ptr %i.an to i64
  %i.aw = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.ax = or disjoint i64 %i.aw, %i.av
  store i64 %i.ax, ptr %.sroa.020.0.copyload, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i32 1, ptr %7, align 8, !alias.scope !805
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ay, align 8, !tbaa !511, !alias.scope !805
end_hunk_1
begin_hunk_2_@_ZNK12_GLOBAL__N_119SIGfx10CacheControl22enableStoreCacheBypassERKN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceE:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_119SIGfx10CacheControl20enableRMWCacheBypassERKN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i32 %2, i32 %3) unnamed_addr #10 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_119SIGfx10CacheControl30enableVolatileAndOrNonTemporalERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_17SIAtomicAddrSpaceENS_7SIMemOpEbbb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 zeroext %6) unnamed_addr #3 align 2 {
bb.a:
  br i1 %4, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %3, 1
  br i1 %i.a, label %bb.c, label %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val30 = load ptr, ptr %i.b, align 8, !tbaa !347
  %i.c = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %.val30, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.04.0.copyload, i8 noundef zeroext 7) #24 ; 2 uses
  %.not.i.not = icmp eq ptr %i.c, null
  br i1 %.not.i.not, label %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !381
  %i.f = or i64 %i.e, 5
  store i64 %i.f, ptr %i.d, align 8, !tbaa !381
  br label %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit

_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit: ; preds = %bb.d, %bb.c, %bb.b
  %.026 = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ true, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !463, !nonnull !22, !align !151
  %i.i = tail call noundef zeroext i1 @_ZN4llvm6AMDGPU7isGFX11ERKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(320) %i.h) #20
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val29 = load ptr, ptr %i.j, align 8, !tbaa !347
  %i.k = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %.val29, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.03.0.copyload, i8 noundef zeroext 7) #24 ; 2 uses
  %.not.i31 = icmp ne ptr %i.k, null              ; 2 uses
  br i1 %.not.i31, label %bb.f, label %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit32

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !381
  %i.n = or i64 %i.m, 4
  store i64 %i.n, ptr %i.l, align 8, !tbaa !381
  br label %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit32

_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit32: ; preds = %bb.e, %bb.f
  %i.o = or i1 %.026, %.not.i31
  br label %bb.g

bb.g:                                             ; preds = %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit32, %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit
  %.1 = phi i1 [ %i.o, %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit32 ], [ %.026, %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit ]
  %i.p = tail call noundef zeroext i1 @_ZNK12_GLOBAL__N_119SIGfx10CacheControl10insertWaitERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceENS_7SIMemOpEbNS_8PositionENS1_14AtomicOrderingEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 6, i32 noundef %2, i32 noundef %3, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, i1 zeroext poison)
  %i.q = or i1 %.1, %i.p
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  br i1 %5, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.r = icmp eq i32 %3, 2
  %.sroa.01.0.copyload.pre39 = load ptr, ptr %1, align 8 ; 3 uses
  br i1 %i.r, label %bb.j, label %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit34

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val28 = load ptr, ptr %i.s, align 8, !tbaa !347
  %i.t = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %.val28, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.01.0.copyload.pre39, i8 noundef zeroext 7) #24 ; 2 uses
  %.not.i33.not = icmp eq ptr %i.t, null
  br i1 %.not.i33.not, label %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit34, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !381
  %i.w = or i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !381
  %.sroa.01.0.copyload.pre = load ptr, ptr %1, align 8
  br label %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit34

_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit34: ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.copyload = phi ptr [ %.sroa.01.0.copyload.pre39, %bb.i ], [ %.sroa.01.0.copyload.pre39, %bb.j ], [ %.sroa.01.0.copyload.pre, %bb.k ]
  %.2 = phi i1 [ false, %bb.i ], [ false, %bb.j ], [ true, %bb.k ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val27 = load ptr, ptr %i.x, align 8, !tbaa !347
  %i.y = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %.val27, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.01.0.copyload, i8 noundef zeroext 7) #24 ; 2 uses
  %.not.i35 = icmp ne ptr %i.y, null              ; 2 uses
  br i1 %.not.i35, label %bb.l, label %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit36

bb.l:                                             ; preds = %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit34
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !381
  %i.ab = or i64 %i.aa, 2
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !381
  br label %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit36

_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit36: ; preds = %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit34, %bb.l
  %i.ac = or i1 %.2, %.not.i35                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !463, !nonnull !22, !align !151
  %i.af = tail call noundef zeroext i1 @_ZN4llvm6AMDGPU7isGFX11ERKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(320) %i.ae) #20
  br i1 %i.af, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit36
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8
  %.val = load ptr, ptr %i.x, align 8, !tbaa !347
  %i.ag = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %.val, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.0.copyload, i8 noundef zeroext 7) #24 ; 2 uses
  %.not.i37 = icmp ne ptr %i.ag, null             ; 2 uses
  br i1 %.not.i37, label %bb.n, label %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit38

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !381
  %i.aj = or i64 %i.ai, 4
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !381
  br label %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit38

_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit38: ; preds = %bb.m, %bb.n
  %i.ak = or i1 %i.ac, %.not.i37
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit36, %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit38, %bb.g
  %.0 = phi i1 [ %i.q, %bb.g ], [ %i.ac, %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit36 ], [ %i.ak, %_ZNK12_GLOBAL__N_114SICacheControl14enableCPolBitsEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit38 ], [ false, %bb.h ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_119SIGfx10CacheControl10insertWaitERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceENS_7SIMemOpEbNS_8PositionENS1_14AtomicOrderingEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i32 noundef %6, i32 noundef %7, i1 zeroext %8) unnamed_addr #3 align 2 {
bb.a:
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !358    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !466  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 3 uses
  %i.e = icmp eq i32 %6, 1                        ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !376
  %i.i = and i32 %i.h, 8
  %.not34.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.k, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %i.a, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !363  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !376
  %i.n = and i32 %i.m, 8
  %.not3.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !3

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %bb.b, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %i.a, %bb.b ], [ %i.a, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.k, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !363
  store ptr %i.p, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %bb.a
  %i.q = and i32 %3, 5
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %2, label %bb.h [
    i32 6, label %bb.e
    i32 5, label %bb.e
    i32 3, label %bb.f
    i32 2, label %bb.i
    i32 1, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %.not61 = trunc i32 %4 to i1
  %i.r = and i32 %4, 2
  %.not62 = icmp ne i32 %i.r, 0
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !463, !nonnull !22, !align !151
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 641
  %i.v = load i8, ptr %i.u, align 1, !tbaa !518, !range !21, !noundef !22
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %12, label %bb.g

12:                                               ; preds = %bb.f
  %13 = zext i32 %7 to i64
  %14 = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm23isAtLeastOrStrongerThanENS_14AtomicOrderingES0_E6lookup, i64 %13
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 5
  %16 = load i8, ptr %15, align 1, !tbaa !387, !range !21, !noundef !22
  %17 = trunc nuw i8 %16 to i1
  br i1 %17, label %bb.g, label %bb.i

bb.g:                                             ; preds = %12, %bb.f
  %.not59 = trunc i32 %4 to i1
  %i.x = and i32 %4, 2
  %.not60 = icmp ne i32 %i.x, 0
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.e, %12, %bb.d, %bb.d, %bb.c
  %.056 = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ %.not62, %bb.e ], [ %.not60, %bb.g ], [ false, %12 ], [ false, %bb.d ]
  %.255 = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ %.not61, %bb.e ], [ %.not59, %bb.g ], [ false, %12 ], [ false, %bb.d ] ; 2 uses
  %i.y = and i32 %3, 2
  %.not63 = icmp eq i32 %i.y, 0                   ; 2 uses
  %.off = add i32 %2, -1
  %switch = icmp ult i32 %.off, 2
  %or.cond66 = or i1 %switch, %.not63
  %not.or.cond66 = xor i1 %or.cond66, true
  %i.z = and i32 %3, 8
  %.not64 = icmp ne i32 %i.z, 0
  %.off67 = add i32 %2, -5
  %switch68 = icmp ult i32 %.off67, 2
  %or.cond69 = and i1 %switch68, %.not64
  %spec.select71 = or i1 %or.cond69, %not.or.cond66
  %spec.select72 = and i1 %5, %spec.select71      ; 2 uses
  %or.cond = or i1 %spec.select72, %.255          ; 3 uses
  br i1 %or.cond, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br i1 %.255, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = tail call noundef i32 @_ZN4llvm6AMDGPU15getVmcntBitMaskERKNS0_10IsaVersionE(ptr noundef nonnull align 4 dereferenceable(12) %i.aa) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ac = phi i32 [ %i.ab, %bb.k ], [ 0, %bb.j ]
  %i.ad = tail call noundef i32 @_ZN4llvm6AMDGPU16getExpcntBitMaskERKNS0_10IsaVersionE(ptr noundef nonnull align 4 dereferenceable(12) %i.aa) #20
  br i1 %spec.select72, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = tail call noundef i32 @_ZN4llvm6AMDGPU17getLgkmcntBitMaskERKNS0_10IsaVersionE(ptr noundef nonnull align 4 dereferenceable(12) %i.aa) #20
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %bb.m, %bb.l
  %i.af = phi i32 [ %i.ae, %bb.m ], [ 0, %bb.l ]
  %i.ag = tail call noundef i32 @_ZN4llvm6AMDGPU13encodeWaitcntERKNS0_10IsaVersionEjjj(ptr noundef nonnull align 4 dereferenceable(12) %i.aa, i32 noundef %i.ac, i32 noundef %i.ad, i32 noundef %i.af) #20
  %.sroa.09.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.08.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !467
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !347
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !468
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -172576
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !508 ; 2 uses
  %i.ao = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr %.sroa.08.0.copyload, i1 noundef zeroext false) #20 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef %i.ao) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.09.0.copyload, align 8
  %i.aq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %.sroa.09.0.copyload, ptr %i.as, align 8, !tbaa !363
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.ao, align 8
  %i.at = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.au = or disjoint i64 %i.at, %i.aq
  store i64 %i.au, ptr %i.ao, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ao, ptr %i.av, align 8, !tbaa !363
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %.sroa.09.0.copyload, align 8
  %i.aw = ptrtoint ptr %i.ao to i64
  %i.ax = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.ay = or disjoint i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %.sroa.09.0.copyload, align 8
  %i.az = zext i32 %i.ag to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store i32 1, ptr %11, align 8, !alias.scope !820
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.ba, align 8, !tbaa !511, !alias.scope !820
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !381, !alias.scope !820
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ao, ptr noundef nonnull align 8 dereferenceable(1065) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !463, !nonnull !22, !align !151
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 882
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !512, !range !21, !noundef !22
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %18 = zext i32 %7 to i64
  %19 = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm23isAtLeastOrStrongerThanENS_14AtomicOrderingES0_E6lookup, i64 %18
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 5
  %21 = load i8, ptr %20, align 1, !tbaa !387, !range !21, !noundef !22
  %22 = trunc nuw i8 %21 to i1
  %23 = icmp eq i32 %2, 3
  %or.cond3 = and i1 %23, %22
  %or.cond3.not = xor i1 %or.cond3, true
  %brmerge = or i1 %.not63, %or.cond3.not
  br i1 %brmerge, label %bb.p, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit82

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit82: ; preds = %bb.o
  %.sroa.07.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.06.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !467
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !347
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !468
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -172544
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !508
  %i.bo = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr %.sroa.06.0.copyload, i1 noundef zeroext false) #20 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef %i.bo) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i74 = load i64, ptr %.sroa.07.0.copyload, align 8
  %i.bq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i74, -8 ; 2 uses
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %.sroa.07.0.copyload, ptr %i.bs, align 8, !tbaa !363
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i75 = load i64, ptr %i.bo, align 8
  %i.bt = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i75, 7
  %i.bu = or disjoint i64 %i.bt, %i.bq
  store i64 %i.bu, ptr %i.bo, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bo, ptr %i.bv, align 8, !tbaa !363
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i76 = load i64, ptr %.sroa.07.0.copyload, align 8
  %i.bw = ptrtoint ptr %i.bo to i64
  %i.bx = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i76, 7
  %i.by = or disjoint i64 %i.bx, %i.bw
  store i64 %i.by, ptr %.sroa.07.0.copyload, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit82, %bb.n
  %.1 = phi i1 [ true, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit82 ], [ %or.cond, %bb.n ], [ %or.cond, %bb.o ]
  br i1 %.056, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit92, label %bb.q

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit92: ; preds = %bb.p
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !467
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !347
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !468
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -172512
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !508 ; 3 uses
  %i.cg = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr %.sroa.0.0.copyload, i1 noundef zeroext false) #20 ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef %i.cg) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i84 = load i64, ptr %.sroa.04.0.copyload, align 8
  %i.ci = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i84, -8 ; 2 uses
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %.sroa.04.0.copyload, ptr %i.ck, align 8, !tbaa !363
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i85 = load i64, ptr %i.cg, align 8
  %i.cl = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i85, 7
  %i.cm = or disjoint i64 %i.cl, %i.ci
  store i64 %i.cm, ptr %i.cg, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.cg, ptr %i.cn, align 8, !tbaa !363
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i86 = load i64, ptr %.sroa.04.0.copyload, align 8
  %i.co = ptrtoint ptr %i.cg to i64
  %i.cp = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i86, 7
  %i.cq = or disjoint i64 %i.cp, %i.co
  store i64 %i.cq, ptr %.sroa.04.0.copyload, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.cr, align 8, !tbaa !511, !alias.scope !821
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 20, ptr %i.cs, align 4, !tbaa !381, !alias.scope !821
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false), !alias.scope !821
  store i32 268435456, ptr %10, align 8, !alias.scope !821
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cg, ptr noundef nonnull align 8 dereferenceable(1065) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store i32 1, ptr %9, align 8, !alias.scope !822
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cg, ptr noundef nonnull align 8 dereferenceable(1065) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.q

bb.q:                                             ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit92, %bb.p
  %.2 = phi i1 [ true, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit92 ], [ %.1, %bb.p ]
  br i1 %i.e, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.copyload.i.i93 = load ptr, ptr %1, align 8
  %.0.copyload.i.i.i.i.i.i.i.i.i94 = load i64, ptr %.sroa.0.0.copyload.i.i93, align 8
  %i.cv = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i94, -8
  %i.cw = inttoptr i64 %i.cv to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cw) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i = load i64, ptr %i.cw, align 8
  %i.cx = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i, 4
  %.not.i5.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i5.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i96, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i96: ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 44
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !376
  %i.da = and i32 %i.cz, 4
  %.not45.i.i.i = icmp eq i32 %i.da, 0
  br i1 %.not45.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i97

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i97: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i96, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i97
  %.sroa.0.06.i.i.i = phi ptr [ %i.dc, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i97 ], [ %i.cw, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i96 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i = load i64, ptr %.sroa.0.06.i.i.i, align 8
  %i.db = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i, -8
  %i.dc = inttoptr i64 %i.db to ptr               ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 44
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !376
  %i.df = and i32 %i.de, 4
  %.not4.i.i.i = icmp eq i32 %i.df, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i97, !llvm.loop !4

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i97, %bb.r, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i96
  %.sroa.0.1.i.i.i95 = phi ptr [ %i.cw, %bb.r ], [ %i.cw, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i96 ], [ %i.dc, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i97 ]
  store ptr %.sroa.0.1.i.i.i95, ptr %1, align 8
  br label %bb.s

bb.s:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit, %bb.q
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_119SIGfx10CacheControl13insertAcquireERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceENS_8PositionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !354, !range !21, !noundef !22
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !358    ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !466  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 3 uses
  %i.h = icmp eq i32 %4, 1                        ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8
  %i.i = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !376
  %i.l = and i32 %i.k, 8
  %.not34.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.n, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %i.d, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !363  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !376
  %i.q = and i32 %i.p, 8
  %.not3.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !3

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %bb.c, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %i.d, %bb.c ], [ %i.d, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.n, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !363  ; 2 uses
  store ptr %i.s, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %bb.b
  %.sroa.010.0.copyload = phi ptr [ %i.s, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %i.d, %bb.b ] ; 5 uses
  %i.t = trunc i32 %3 to i1
  br i1 %i.t, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  switch i32 %2, label %bb.g [
    i32 6, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit39
    i32 5, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit39
    i32 3, label %bb.f
    i32 2, label %bb.h
    i32 1, label %bb.h
  ]

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit39: ; preds = %bb.e, %bb.e
  %.sroa.09.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !467
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !347
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !468
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -35136
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !508
  %i.ab = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr %.sroa.09.0.copyload, i1 noundef zeroext false) #20 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef %i.ab) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.010.0.copyload, align 8
  %i.ad = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK12_GLOBAL__N_119SIGfx12CacheControl13finalizeStoreERN4llvm12MachineInstrEb:bb.a
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i42.i = load i64, ptr %i.ef, align 8
  %i.ej = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i42.i, 7
  %i.ek = or disjoint i64 %i.ej, %i.eg
  store i64 %i.ek, ptr %i.ef, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %i.ef, ptr %i.el, align 8, !tbaa !363
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i43.i = load i64, ptr %1, align 8
  %i.em = ptrtoint ptr %i.ef to i64
  %i.en = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i43.i, 7
  %i.eo = or disjoint i64 %i.en, %i.em
  store i64 %i.eo, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i32 1, ptr %4, align 8, !alias.scope !843
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ef, ptr noundef nonnull align 8 dereferenceable(1065) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.sroa.0.0.copyload.i = load ptr, ptr %i.by, align 8, !tbaa !467
  %i.eq = load ptr, ptr %i.bk, align 8, !tbaa !347
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !468
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -173152
  %i.eu = load ptr, ptr %i.cc, align 8, !tbaa !508 ; 2 uses
  %i.ev = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %i.et, ptr %.sroa.0.0.copyload.i, i1 noundef zeroext false) #20 ; 7 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef %i.ev) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i51.i = load i64, ptr %1, align 8
  %i.ew = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i51.i, -8 ; 2 uses
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store ptr %1, ptr %i.ey, align 8, !tbaa !363
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i52.i = load i64, ptr %i.ev, align 8
  %i.ez = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i52.i, 7
  %i.fa = or disjoint i64 %i.ez, %i.ew
  store i64 %i.fa, ptr %i.ev, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %i.ev, ptr %i.fb, align 8, !tbaa !363
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i53.i = load i64, ptr %1, align 8
  %i.fc = ptrtoint ptr %i.ev to i64
  %i.fd = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i53.i, 7
  %i.fe = or disjoint i64 %i.fd, %i.fc
  store i64 %i.fe, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i32 1, ptr %3, align 8, !alias.scope !844
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ev, ptr noundef nonnull align 8 dereferenceable(1065) %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %_ZNK12_GLOBAL__N_119SIGfx12CacheControl33insertWaitsBeforeSystemScopeStoreEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit, %bb.l, %bb.j
  %.1.in = phi i1 [ %.024, %bb.j ], [ %.024, %bb.k ], [ true, %_ZNK12_GLOBAL__N_119SIGfx12CacheControl33insertWaitsBeforeSystemScopeStoreEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit ], [ %.024, %bb.l ]
  ret i1 %.1.in
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_119SIGfx12CacheControl12finalizeLoadERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !358    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !375
  switch i32 %i.c, label %_ZN4llvm11SIInstrInfo13isLoadMonitorEj.exit [
    i32 4012, label %bb.b
    i32 4013, label %bb.b
    i32 4014, label %bb.b
    i32 4015, label %bb.b
    i32 4010, label %bb.b
    i32 4011, label %bb.b
    i32 3681, label %bb.b
    i32 3683, label %bb.b
    i32 3679, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !347
  %i.f = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i8 noundef zeroext 7) #24
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !381  ; 2 uses
  %i.i = and i64 %i.h, 24
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNK12_GLOBAL__N_119SIGfx12CacheControl8setScopeEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_6AMDGPU4CPol4CPolE.exit, label %_ZN4llvm11SIInstrInfo13isLoadMonitorEj.exit

_ZNK12_GLOBAL__N_119SIGfx12CacheControl8setScopeEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_6AMDGPU4CPol4CPolE.exit: ; preds = %bb.b
  %i.k = or disjoint i64 %i.h, 8
  store i64 %i.k, ptr %i.g, align 8, !tbaa !381
  br label %_ZN4llvm11SIInstrInfo13isLoadMonitorEj.exit

_ZN4llvm11SIInstrInfo13isLoadMonitorEj.exit:      ; preds = %bb.a, %_ZNK12_GLOBAL__N_119SIGfx12CacheControl8setScopeEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_6AMDGPU4CPol4CPolE.exit, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ true, %_ZNK12_GLOBAL__N_119SIGfx12CacheControl8setScopeEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_6AMDGPU4CPol4CPolE.exit ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_119SIGfx12CacheControl23handleCooperativeAtomicERN4llvm12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !463, !nonnull !22, !align !151
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 759
  %i.d = load i8, ptr %i.c, align 1, !tbaa !519, !range !21, !noundef !22
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZNK12_GLOBAL__N_119SIGfx12CacheControl8setScopeEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_6AMDGPU4CPol4CPolE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !347
  %i.h = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext 7) #24
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !381  ; 2 uses
  %i.k = and i64 %i.j, 16
  %or.cond.not = icmp eq i64 %i.k, 0
  br i1 %or.cond.not, label %bb.c, label %_ZNK12_GLOBAL__N_119SIGfx12CacheControl8setScopeEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_6AMDGPU4CPol4CPolE.exit

bb.c:                                             ; preds = %bb.b
  %i.l = and i64 %i.j, -25
  %i.m = or disjoint i64 %i.l, 16
  store i64 %i.m, ptr %i.i, align 8, !tbaa !381
  br label %_ZNK12_GLOBAL__N_119SIGfx12CacheControl8setScopeEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_6AMDGPU4CPol4CPolE.exit

_ZNK12_GLOBAL__N_119SIGfx12CacheControl8setScopeEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_6AMDGPU4CPol4CPolE.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_119SIGfx12CacheControl10insertWaitERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceENS_7SIMemOpEbNS_8PositionENS1_14AtomicOrderingEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8) unnamed_addr #3 align 2 {
bb.a:
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !358    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !466  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 5 uses
  %i.e = icmp eq i32 %6, 1                        ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !376
  %i.i = and i32 %i.h, 8
  %.not34.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.k, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %i.a, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !363  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !376
  %i.n = and i32 %i.m, 8
  %.not3.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !3

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %bb.b, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %i.a, %bb.b ], [ %i.a, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.k, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !363  ; 2 uses
  store ptr %i.p, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %bb.a
  %.sroa.09.0.copyload = phi ptr [ %i.p, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %i.a, %bb.a ] ; 7 uses
  %i.q = and i32 %3, 5
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %.thread151, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %2, label %bb.g [
    i32 6, label %.split
    i32 5, label %.split
    i32 4, label %.split
    i32 3, label %bb.e
    i32 2, label %.thread151.thread
    i32 1, label %.thread151.thread
  ]

.split:                                           ; preds = %bb.d, %bb.d, %bb.d
  %i.r = and i32 %4, 1
  %.not57.not = icmp eq i32 %i.r, 0
  %i.s = and i32 %4, 2
  %.not58 = icmp ne i32 %i.s, 0                   ; 2 uses
  %i.t = and i32 %3, 2
  %.not59143 = icmp ne i32 %i.t, 0
  %spec.select61147 = and i1 %.not59143, %5       ; 2 uses
  br i1 %.not57.not, label %bb.k, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !463, !nonnull !22, !align !151 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 641
  %i.x = load i8, ptr %i.w, align 1, !tbaa !518, !range !21, !noundef !22
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %14, label %bb.h

14:                                               ; preds = %bb.e
  %15 = getelementptr inbounds nuw i8, ptr %i.v, i64 759
  %16 = load i8, ptr %15, align 1, !tbaa !519, !range !21, !noundef !22
  %17 = trunc nuw i8 %16 to i1
  br i1 %17, label %bb.h, label %bb.f

bb.f:                                             ; preds = %14
  %18 = zext i32 %7 to i64
  %19 = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm23isAtLeastOrStrongerThanENS_14AtomicOrderingES0_E6lookup, i64 %18
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 5
  %21 = load i8, ptr %20, align 1, !tbaa !387, !range !21, !noundef !22
  %22 = trunc nuw i8 %21 to i1
  br i1 %22, label %bb.h, label %.thread151

bb.g:                                             ; preds = %bb.d
  unreachable

.thread151:                                       ; preds = %bb.f, %bb.c
  %i.z = and i32 %3, 2
  %.not59135 = icmp ne i32 %i.z, 0
  %.off136 = add i32 %2, -3
  %switch137 = icmp ult i32 %.off136, 4
  %or.cond138 = and i1 %switch137, %.not59135
  %spec.select61139 = and i1 %5, %or.cond138
  br i1 %spec.select61139, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit101, label %.thread151.thread

bb.h:                                             ; preds = %bb.e, %14, %bb.f
  %i.aa = and i32 %4, 1
  %.not55.not = icmp eq i32 %i.aa, 0
  %i.ab = and i32 %4, 2
  %.not56 = icmp ne i32 %i.ab, 0                  ; 2 uses
  %i.ac = and i32 %3, 2
  %.not59 = icmp ne i32 %i.ac, 0
  %spec.select61 = and i1 %.not59, %5             ; 2 uses
  br i1 %.not55.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.split, %bb.h
  %spec.select61150 = phi i1 [ %spec.select61147, %.split ], [ %spec.select61, %bb.h ] ; 2 uses
  %.054148 = phi i1 [ %.not58, %.split ], [ %.not56, %bb.h ]
  br i1 %8, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit81, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !463, !nonnull !22, !align !151
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 776
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !520, !range !21, !noundef !22
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit71, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit81

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit71: ; preds = %bb.j
  %.sroa.08.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !467
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !347
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !468
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -172672
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !508 ; 2 uses
  %i.ap = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr %.sroa.08.0.copyload, i1 noundef zeroext false) #20 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef %i.ap) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.09.0.copyload, align 8
  %i.ar = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %.sroa.09.0.copyload, ptr %i.at, align 8, !tbaa !363
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.ap, align 8
  %i.au = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.av = or disjoint i64 %i.au, %i.ar
  store i64 %i.av, ptr %i.ap, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.ap, ptr %i.aw, align 8, !tbaa !363
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %.sroa.09.0.copyload, align 8
  %i.ax = ptrtoint ptr %i.ap to i64
  %i.ay = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.az = or disjoint i64 %i.ay, %i.ax
  store i64 %i.az, ptr %.sroa.09.0.copyload, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  store i32 1, ptr %13, align 8, !alias.scope !855
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef nonnull align 8 dereferenceable(1065) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %.sroa.07.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.06.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !467
  %i.bb = load ptr, ptr %i.ai, align 8, !tbaa !347
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !468
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -173056
  %i.bf = load ptr, ptr %i.an, align 8, !tbaa !508 ; 2 uses
  %i.bg = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr %.sroa.06.0.copyload, i1 noundef zeroext false) #20 ; 7 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef %i.bg) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i63 = load i64, ptr %.sroa.07.0.copyload, align 8
  %i.bh = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i63, -8 ; 2 uses
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %.sroa.07.0.copyload, ptr %i.bj, align 8, !tbaa !363
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i64 = load i64, ptr %i.bg, align 8
  %i.bk = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i64, 7
  %i.bl = or disjoint i64 %i.bk, %i.bh
  store i64 %i.bl, ptr %i.bg, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bg, ptr %i.bm, align 8, !tbaa !363
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i65 = load i64, ptr %.sroa.07.0.copyload, align 8
  %i.bn = ptrtoint ptr %i.bg to i64
  %i.bo = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i65, 7
  %i.bp = or disjoint i64 %i.bo, %i.bn
  store i64 %i.bp, ptr %.sroa.07.0.copyload, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store i32 1, ptr %12, align 8, !alias.scope !856
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bg, ptr noundef nonnull align 8 dereferenceable(1065) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %.sroa.05.0.copyload.pre = load ptr, ptr %1, align 8
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit81

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit81: ; preds = %bb.i, %bb.j, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit71
  %.sroa.05.0.copyload = phi ptr [ %.sroa.09.0.copyload, %bb.i ], [ %.sroa.09.0.copyload, %bb.j ], [ %.sroa.05.0.copyload.pre, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit71 ] ; 4 uses
  %.sroa.04.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !467
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !347
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !468
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -172992
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !508 ; 2 uses
  %i.by = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr %.sroa.04.0.copyload, i1 noundef zeroext false) #20 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef %i.by) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i73 = load i64, ptr %.sroa.05.0.copyload, align 8
  %i.ca = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i73, -8 ; 2 uses
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %.sroa.05.0.copyload, ptr %i.cc, align 8, !tbaa !363
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i74 = load i64, ptr %i.by, align 8
  %i.cd = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i74, 7
  %i.ce = or disjoint i64 %i.cd, %i.ca
  store i64 %i.ce, ptr %i.by, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.by, ptr %i.cf, align 8, !tbaa !363
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i75 = load i64, ptr %.sroa.05.0.copyload, align 8
  %i.cg = ptrtoint ptr %i.by to i64
  %i.ch = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i75, 7
  %i.ci = or disjoint i64 %i.ch, %i.cg
  store i64 %i.ci, ptr %.sroa.05.0.copyload, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store i32 1, ptr %11, align 8, !alias.scope !857
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.by, ptr noundef nonnull align 8 dereferenceable(1065) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br i1 %.054148, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit81._ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit91_crit_edge, label %bb.l

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit81._ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit91_crit_edge: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit81
  %.sroa.03.0.copyload.pre = load ptr, ptr %1, align 8
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit91

bb.k:                                             ; preds = %.split, %bb.h
  %spec.select61142 = phi i1 [ %spec.select61147, %.split ], [ %spec.select61, %bb.h ] ; 2 uses
  %.054140 = phi i1 [ %.not58, %.split ], [ %.not56, %bb.h ]
  br i1 %.054140, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit91, label %bb.l

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit91: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit81._ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit91_crit_edge, %bb.k
  %.sroa.03.0.copyload = phi ptr [ %.sroa.03.0.copyload.pre, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit81._ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit91_crit_edge ], [ %.sroa.09.0.copyload, %bb.k ] ; 4 uses
  %spec.select61142156 = phi i1 [ %spec.select61150, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit81._ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit91_crit_edge ], [ %spec.select61142, %bb.k ]
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !467
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !347
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !468
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -173152
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !508 ; 2 uses
  %i.cr = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %i.co, ptr %.sroa.02.0.copyload, i1 noundef zeroext false) #20 ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef %i.cr) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i83 = load i64, ptr %.sroa.03.0.copyload, align 8
  %i.ct = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i83, -8 ; 2 uses
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %.sroa.03.0.copyload, ptr %i.cv, align 8, !tbaa !363
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i84 = load i64, ptr %i.cr, align 8
  %i.cw = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i84, 7
  %i.cx = or disjoint i64 %i.cw, %i.ct
  store i64 %i.cx, ptr %i.cr, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cr, ptr %i.cy, align 8, !tbaa !363
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i85 = load i64, ptr %.sroa.03.0.copyload, align 8
  %i.cz = ptrtoint ptr %i.cr to i64
  %i.da = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i85, 7
  %i.db = or disjoint i64 %i.da, %i.cz
  store i64 %i.db, ptr %.sroa.03.0.copyload, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store i32 1, ptr %10, align 8, !alias.scope !858
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cr, ptr noundef nonnull align 8 dereferenceable(1065) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br i1 %spec.select61142156, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit101, label %.thread151.thread

bb.l:                                             ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit81, %bb.k
  %spec.select61142155 = phi i1 [ %spec.select61150, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit81 ], [ %spec.select61142, %bb.k ]
  %.1 = phi i1 [ true, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit81 ], [ false, %bb.k ]
  br i1 %spec.select61142155, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit101, label %.thread151.thread

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit101: ; preds = %bb.l, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit91, %.thread151
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !467
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !347
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !468
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -172736
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !508 ; 2 uses
  %i.dk = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.dj, ptr noundef nonnull align 8 dereferenceable(32) %i.dh, ptr %.sroa.0.0.copyload, i1 noundef zeroext false) #20 ; 7 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef %i.dk) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i93 = load i64, ptr %.sroa.01.0.copyload, align 8
  %i.dm = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i93, -8 ; 2 uses
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %.sroa.01.0.copyload, ptr %i.do, align 8, !tbaa !363
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i94 = load i64, ptr %i.dk, align 8
  %i.dp = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i94, 7
  %i.dq = or disjoint i64 %i.dp, %i.dm
end_hunk_3
