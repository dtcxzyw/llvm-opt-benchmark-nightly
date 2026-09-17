Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StackFrameLayoutAnalysisPass?download=true
inline.NumInlined: 1303
inline.NumDeleted: 783
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
%"class.llvm::ArrayRef.240" = type { ptr, i64 }
%"class.std::tuple.247" = type { %"struct.std::_Tuple_impl.248" }
%"struct.std::_Tuple_impl.248" = type { %"struct.std::_Tuple_impl.249", %"struct.std::_Head_base.255" }
%"struct.std::_Tuple_impl.249" = type { %"struct.std::_Tuple_impl.250", %"struct.std::_Head_base.253" }
%"struct.std::_Tuple_impl.250" = type { %"struct.std::_Head_base.251" }
%"struct.std::_Head_base.251" = type { %"class.llvm::support::detail::FormatFunctor.252" }
%"class.llvm::support::detail::FormatFunctor.252" = type { i32 }
%"struct.std::_Head_base.253" = type { %"class.llvm::support::detail::FormatFunctor.254" }
%"class.llvm::support::detail::FormatFunctor.254" = type { %"class.llvm::StringRef" }
%"struct.std::_Head_base.255" = type { %"class.llvm::support::detail::FormatFunctor.254" }
%"struct.std::array.256" = type { [3 x %"class.llvm::function_ref"] }
%"class.llvm::function_ref" = type { ptr, i64 }
%"class.llvm::formatv_object" = type { %"class.llvm::formatv_object_base.base", %"class.std::tuple.241", %"struct.std::array.244" }
%"class.std::tuple.241" = type { %"struct.std::_Tuple_impl.242" }
%"struct.std::_Tuple_impl.242" = type { %"struct.std::_Head_base.243" }
%"struct.std::_Head_base.243" = type { %"class.llvm::support::detail::FormatFunctor" }
%"class.llvm::support::detail::FormatFunctor" = type { ptr }
%"struct.std::array.244" = type { [1 x %"class.llvm::function_ref"] }
%"class.llvm::SmallVector.214" = type { %"class.llvm::SmallVectorImpl.215", %"struct.llvm::SmallVectorStorage.218" }
%"class.llvm::SmallVectorImpl.215" = type { %"class.llvm::SmallVectorTemplateBase.216" }
%"class.llvm::SmallVectorTemplateBase.216" = type { %"class.llvm::SmallVectorTemplateCommon.217" }
%"class.llvm::SmallVectorTemplateCommon.217" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.218" = type { [48 x i8] }
%"class.llvm::SmallDenseMap" = type { i32, %union.anon.186 }
%union.anon.186 = type { %"struct.llvm::SmallDenseMap<int, llvm::SetVector<const llvm::DILocalVariable *>>::LargeRep", [176 x i8] }
%"struct.llvm::SmallDenseMap<int, llvm::SetVector<const llvm::DILocalVariable *>>::LargeRep" = type { ptr, ptr, i32 }
%"class.llvm::MachineOptimizationRemarkAnalysis" = type { %"class.llvm::DiagnosticInfoMIROptimization" }
%"class.llvm::DiagnosticInfoMIROptimization" = type { %"class.llvm::DiagnosticInfoOptimizationBase", ptr }
%"class.llvm::DiagnosticInfoOptimizationBase" = type { %"class.llvm::DiagnosticInfoWithLocationBase", ptr, %"class.llvm::StringRef", %"class.std::optional.104", %"class.llvm::SmallVector.110", i8, i32 }
%"class.llvm::DiagnosticInfoWithLocationBase" = type { %"class.llvm::DiagnosticInfo.base", ptr, %"class.llvm::DiagnosticLocation" }
%"class.llvm::DiagnosticInfo.base" = type <{ ptr, i32, i8 }>
%"class.std::optional.104" = type { %"struct.std::_Optional_base.105" }
%"struct.std::_Optional_base.105" = type { %"struct.std::_Optional_payload.107" }
%"struct.std::_Optional_payload.107" = type { %"struct.std::_Optional_payload_base.base", [7 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<unsigned long>::_Storage", i8 }>
%"union.std::_Optional_payload_base<unsigned long>::_Storage" = type { i64 }
%"class.llvm::SmallVector.110" = type { %"class.llvm::SmallVectorImpl.111", %"struct.llvm::SmallVectorStorage.114" }
%"class.llvm::SmallVectorImpl.111" = type { %"class.llvm::SmallVectorTemplateBase.112" }
%"class.llvm::SmallVectorTemplateBase.112" = type { %"class.llvm::SmallVectorTemplateCommon.113" }
%"class.llvm::SmallVectorTemplateCommon.113" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.114" = type { [320 x i8] }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%class.anon.317 = type { ptr, ptr }
%"class.std::reference_wrapper" = type { ptr }
%"struct.(anonymous namespace)::StackFrameLayoutAnalysis::SlotData" = type <{ i32, i32, i32, [4 x i8], %"class.llvm::StackOffset", i32, i8, [3 x i8] }>
%"class.llvm::StackOffset" = type { i64, i64 }
%"class.llvm::DenseMap.187" = type { ptr, ptr, i32, i32 }

$_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev = comdat any

$_ZN4llvm33MachineOptimizationRemarkAnalysisD0Ev = comdat any

$_ZNK4llvm33MachineOptimizationRemarkAnalysis9isEnabledEv = comdat any

$_ZN4llvm13SmallDenseMapIiNS_9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEELj4ENS8_IivEENS_6detail12DenseMapPairIiSB_EEED2Ev = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEELj4ENS9_IivEENS_6detail12DenseMapPairIiSC_EEEEiSC_SD_SG_E24lookupOrInsertIntoBucketIiJEEESt4pairIPSG_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEELj4ENS9_IivEENS_6detail12DenseMapPairIiSC_EEEEiSC_SD_SG_E15LookupBucketForIiEEbRKT_RPSG_ = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEELj4ENS9_IivEENS_6detail12DenseMapPairIiSC_EEEEiSC_SD_SG_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEELj4ENS9_IivEENS_6detail12DenseMapPairIiSC_EEEEiSC_SD_SG_E8moveFromERSH_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPKNS_15DILocalVariableELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvmlsIRNS_33MachineOptimizationRemarkAnalysisEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS3_E4typeEEENS6_8ArgumentEE4typeE = comdat any

$_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIPKcEEEEvlS2_S3_ = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEELj4ENS9_IivEENS_6detail12DenseMapPairIiSC_EEEEiSC_SD_SG_E24lookupOrInsertIntoBucketIRKiJEEESt4pairIPSG_bEOT_DpOT0_ = comdat any

$_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIS3_EEEEvlS2_S3_ = comdat any

$_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIjEEEEvlS2_S3_ = comdat any

$_ZN4llvm15format_providerIjvE6formatERKjRNS_11raw_ostreamENS_9StringRefE = comdat any

$_ZN4llvm7support6detail15HelperFunctions15consumeHexStyleERNS_9StringRefE = comdat any

$_ZN4llvm9StringRef13consume_frontES0_ = comdat any

$_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE = comdat any

$_ZN4llvm4Pass14doFinalizationERNS_6ModuleE = comdat any

$_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv = comdat any

$_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv = comdat any

$_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv = comdat any

$_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv = comdat any

$_ZTVN4llvm33MachineOptimizationRemarkAnalysisE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZN12_GLOBAL__N_130StackFrameLayoutAnalysisLegacy2IDE = internal global i8 0, align 1
@_ZN4llvm30StackFrameLayoutAnalysisPassIDE = local_unnamed_addr constant ptr @_ZN12_GLOBAL__N_130StackFrameLayoutAnalysisLegacy2IDE, align 8
@_ZL48InitializeStackFrameLayoutAnalysisLegacyPassFlag = internal global %"struct.std::once_flag" zeroinitializer, align 4
@.str = private unnamed_addr constant [19 x i8] c"stack-frame-layout\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"StackLayout\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"\0AFunction: \00", align 1
@_ZTVN4llvm33MachineOptimizationRemarkAnalysisE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4llvm30DiagnosticInfoWithLocationBase6anchorEv, ptr @_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev, ptr @_ZN4llvm33MachineOptimizationRemarkAnalysisD0Ev, ptr @_ZNK4llvm30DiagnosticInfoOptimizationBase5printERNS_17DiagnosticPrinterE, ptr @_ZNK4llvm33MachineOptimizationRemarkAnalysis9isEnabledEv] }, comdat, align 8
@_ZTVN4llvm30DiagnosticInfoOptimizationBaseE = external unnamed_addr constant { [7 x ptr] }, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"\0AOffset: [SP{0}\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"ScalableOffset\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c" x vscale\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"], Type: \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c", Align: \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Align\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c", Size: \00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@_ZTVN4llvm18raw_string_ostreamE = external unnamed_addr constant { [15 x ptr] }, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"Spill\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Fixed\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"VariableSized\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"Protector\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"{0} @ {1}:{2}\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"DataLoc\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE = external global %"struct.llvm::AnalysisSetKey", align 8
@.str.38 = private unnamed_addr constant [19 x i8] c"Stack Frame Layout\00", align 1
@_ZTVN12_GLOBAL__N_130StackFrameLayoutAnalysisLegacyE = internal unnamed_addr constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr null, ptr @_ZN4llvm4PassD2Ev, ptr @_ZN12_GLOBAL__N_130StackFrameLayoutAnalysisLegacyD0Ev, ptr @_ZNK12_GLOBAL__N_130StackFrameLayoutAnalysisLegacy11getPassNameEv, ptr @_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE, ptr @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE, ptr @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE, ptr @_ZNK4llvm19MachineFunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE, ptr @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE, ptr @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv, ptr @_ZNK12_GLOBAL__N_130StackFrameLayoutAnalysisLegacy16getAnalysisUsageERN4llvm13AnalysisUsageE, ptr @_ZN4llvm4Pass13releaseMemoryEv, ptr @_ZN4llvm4Pass18getAsImmutablePassEv, ptr @_ZN4llvm4Pass18getAsPMDataManagerEv, ptr @_ZNK4llvm4Pass14verifyAnalysisEv, ptr @_ZN4llvm4Pass17dumpPassStructureEj, ptr @_ZN4llvm19MachineFunctionPass13runOnFunctionERNS_8FunctionE, ptr @_ZN4llvm19MachineFunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE, ptr @_ZN12_GLOBAL__N_130StackFrameLayoutAnalysisLegacy20runOnMachineFunctionERN4llvm15MachineFunctionE, ptr @_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv, ptr @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv, ptr @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv] }, align 8
@.str.39 = private unnamed_addr constant [28 x i8] c"Stack Frame Layout Analysis\00", align 1
@_ZN4llvm36MachineOptimizationRemarkEmitterPass2IDE = external global i8, align 1
@_ZN4llvm40MachineOptimizationRemarkEmitterAnalysis3KeyE = external global %"struct.llvm::AnalysisKey", align 8
@_ZSt15__once_callable = external thread_local local_unnamed_addr global ptr, align 8
@_ZSt11__once_call = external thread_local local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm28StackFrameLayoutAnalysisPass3runERNS_15MachineFunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(1065) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_15MachineFunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull @_ZN4llvm40MachineOptimizationRemarkEmitterAnalysis3KeyE, ptr noundef nonnull align 8 dereferenceable(1065) %2) #21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call fastcc void @_ZN12_GLOBAL__N_124StackFrameLayoutAnalysis3runERN4llvm15MachineFunctionE(ptr nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(1065) %2)
  %.ptr1.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i, ptr %0, align 8, !tbaa !99, !alias.scope !100
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.c, align 8, !tbaa !101, !alias.scope !100
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !102, !alias.scope !100
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.g, ptr %i.f, align 8, !tbaa !99, !alias.scope !100
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.h, align 8, !tbaa !101, !alias.scope !100
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.i, align 4, !tbaa !103, !alias.scope !100
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.j, align 8, !tbaa !102, !alias.scope !100
  store i32 1, ptr %i.d, align 4, !tbaa !103, !alias.scope !100, !noalias !104
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i, align 8, !tbaa !15, !alias.scope !100, !noalias !104
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_124StackFrameLayoutAnalysis3runERN4llvm15MachineFunctionE(ptr %.0.val, ptr noundef nonnull align 8 dereferenceable(1065) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"struct.llvm::DiagnosticInfoOptimizationBase::Argument", align 8 ; 14 uses
  %2 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.llvm::formatv_object.246", align 8 ; 19 uses
  %5 = alloca %"struct.llvm::DiagnosticInfoOptimizationBase::Argument", align 8 ; 11 uses
  %6 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.llvm::formatv_object", align 8 ; 11 uses
  %9 = alloca %"struct.llvm::DiagnosticInfoOptimizationBase::Argument", align 8 ; 8 uses
  %10 = alloca %"struct.llvm::DiagnosticInfoOptimizationBase::Argument", align 8 ; 8 uses
  %11 = alloca %"struct.llvm::DiagnosticInfoOptimizationBase::Argument", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"struct.llvm::DiagnosticInfoOptimizationBase::Argument", align 8 ; 8 uses
  %14 = alloca %"struct.llvm::DiagnosticInfoOptimizationBase::Argument", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %15 = alloca %"class.llvm::SmallVector.214", align 8 ; 9 uses
  %.sroa.5.i.i.i.i.i.i.i.i = alloca <{ i32, i32, [4 x i8] }>, align 8 ; 4 uses
  %16 = alloca %"class.llvm::SmallDenseMap", align 8 ; 15 uses
  %17 = alloca %"class.llvm::MachineOptimizationRemarkAnalysis", align 8 ; 29 uses
  %18 = alloca %"class.llvm::DiagnosticLocation", align 8 ; 4 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %i.d = tail call { ptr, i64 } @_ZNK4llvm15MachineFunction7getNameEv(ptr noundef nonnull align 8 dereferenceable(1065) %0) #21 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  %i.g = tail call noundef zeroext i1 @_ZN4llvm21isFunctionInPrintListENS_9StringRefE(ptr %i.e, i64 %i.f) #21
  br i1 %i.g, label %bb.b, label %bb.bl

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !279, !nonnull !21, !align !22
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.h) #21
  %i.j = tail call noundef ptr @_ZNK4llvm11LLVMContext17getDiagHandlerPtrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #21 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr nonnull @.str, i64 18) #21
  br i1 %i.n, label %bb.c, label %bb.bl

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.o = load ptr, ptr %0, align 8, !tbaa !279, !nonnull !21, !align !22
  %i.p = tail call noundef ptr @_ZNK4llvm8Function13getSubprogramEv(ptr noundef nonnull align 8 dereferenceable(140) %i.o) #21
  call void @_ZN4llvm18DiagnosticLocationC1EPKNS_12DISubprogramE(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef %i.p) #21
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !280  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !327
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !279, !nonnull !21, !align !22
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 22, ptr %i.v, align 8, !tbaa !328
  %i.w = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i8 2, ptr %i.w, align 4, !tbaa !329
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.u, ptr %i.x, align 8, !tbaa !330
  %i.y = getelementptr inbounds nuw i8, ptr %17, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false), !tbaa.struct !34
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 40
  store ptr @.str, ptr %i.z, align 8, !tbaa !44
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 48
  store ptr @.str.1, ptr %i.aa, align 8, !tbaa !45
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %17, i64 56
  store i64 11, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %17, i64 72
  store i8 0, ptr %i.ab, align 8, !tbaa !331
  %i.ac = getelementptr inbounds nuw i8, ptr %17, i64 80 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %17, i64 96 ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %17, i64 88 ; 2 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !48
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 92
  store i32 4, ptr %i.af, align 4, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %17, i64 416
  store i8 0, ptr %i.ag, align 8, !tbaa !332
  %i.ah = getelementptr inbounds nuw i8, ptr %17, i64 420
  store i32 -1, ptr %i.ah, align 4, !tbaa !333
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 424
  store ptr %i.r, ptr %i.ai, align 8, !tbaa !335
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm33MachineOptimizationRemarkAnalysisE, i64 16), ptr %17, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %i.aj = call { ptr, i64 } @_ZNK4llvm15MachineFunction7getNameEv(ptr noundef nonnull align 8 dereferenceable(1065) %0) #21 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = getelementptr inbounds nuw i8, ptr %20, i64 32
  store i8 3, ptr %i.am, align 8, !tbaa !338, !alias.scope !339
  %i.an = getelementptr inbounds nuw i8, ptr %20, i64 33
  store i8 5, ptr %i.an, align 1, !tbaa !340, !alias.scope !339
  store ptr @.str.2, ptr %20, align 8, !tbaa !50, !alias.scope !339
  %i.ao = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.ak, ptr %i.ao, align 8, !tbaa !50, !alias.scope !339
  %i.ap = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i64 %i.al, ptr %i.ap, align 8, !tbaa !50, !alias.scope !339
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(34) %20) #21
  %i.aq = load ptr, ptr %19, align 8, !tbaa !53
  %i.ar = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !54
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %17, ptr %i.aq, i64 %i.as) #21
  %i.at = load ptr, ptr %19, align 8, !tbaa !53   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !50
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !341 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 6 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !343
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !343
  %.not11.i = icmp eq ptr %i.bb, %i.bd
  br i1 %.not11.i, label %_ZN12_GLOBAL__N_124StackFrameLayoutAnalysis27emitStackFrameLayoutRemarksERN4llvm15MachineFunctionERNS1_33MachineOptimizationRemarkAnalysisE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !344, !nonnull !21, !align !22 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 136
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(344) %i.bf) #21, !inline_history !107 ; 3 uses
  %i.bk = load ptr, ptr %i.bc, align 8, !tbaa !346
  %i.bl = load ptr, ptr %i.ba, align 8, !tbaa !347
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 40                ; 2 uses
  %i.bq = and i64 %i.bp, 4294967295               ; 3 uses
  %.not12.i = icmp eq i64 %i.bq, 0
  br i1 %.not12.i, label %_ZNSt6vectorIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS2_EE7reserveEm.exit.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS2_EE13_M_deallocateEPS2_m.exit.i.i

_ZNSt12_Vector_baseIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS2_EE13_M_deallocateEPS2_m.exit.i.i: ; preds = %bb.d
  %i.br = mul nuw nsw i64 %i.bq, 40
  %i.bs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #23 ; 2 uses
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.bs, i64 %i.bq
  %.pre.i = load ptr, ptr %i.bc, align 8, !tbaa !346
  %.pre51.i = load ptr, ptr %i.ba, align 8, !tbaa !347
  %.pre52.i = ptrtoint ptr %.pre.i to i64
  %.pre53.i = ptrtoint ptr %.pre51.i to i64
  %.pre55.i = sub i64 %.pre52.i, %.pre53.i
  %.pre57.i = sdiv exact i64 %.pre55.i, 40
  br label %_ZNSt6vectorIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS2_EE7reserveEm.exit.i

_ZNSt6vectorIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS2_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS2_EE13_M_deallocateEPS2_m.exit.i.i, %bb.d
  %.pre-phi58.i = phi i64 [ %i.bp, %bb.d ], [ %.pre57.i, %_ZNSt12_Vector_baseIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS2_EE13_M_deallocateEPS2_m.exit.i.i ]
  %.sroa.06.0.i = phi ptr [ null, %bb.d ], [ %i.bs, %_ZNSt12_Vector_baseIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS2_EE13_M_deallocateEPS2_m.exit.i.i ] ; 4 uses
  %.sroa.19.0.i = phi ptr [ null, %bb.d ], [ %i.bt, %_ZNSt12_Vector_baseIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS2_EE13_M_deallocateEPS2_m.exit.i.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 5 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !365 ; 2 uses
  %i.bw = trunc i64 %.pre-phi58.i to i32          ; 2 uses
  %i.bx = sub i32 %i.bw, %i.bv
  %.not26.i = icmp eq i32 %i.bw, 0
  br i1 %.not26.i, label %_ZN4llvm4sortIRSt6vectorIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS4_EEEEvOT_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS2_EE7reserveEm.exit.i
  %i.by = sub i32 0, %i.bv
  %.not.i48.i = icmp eq ptr %i.bj, null
  %i.bz = getelementptr inbounds nuw i8, ptr %i.az, i64 72 ; 2 uses
  br label %bb.ad

._crit_edge.i:                                    ; preds = %_ZNSt6vectorIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS2_EE12emplace_backIJRKN4llvm16MachineFrameInfoENS6_11StackOffsetERiEEERS2_DpOT_.exit.i
  %.not.i.i.i.i44.i = icmp eq ptr %.sroa.06.3.i, %.sroa.11.3.i
  br i1 %.not.i.i.i.i44.i, label %_ZN4llvm4sortIRSt6vectorIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS4_EEEEvOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.ca = ptrtoint ptr %.sroa.11.3.i to i64
  %i.cb = ptrtoint ptr %.sroa.06.3.i to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = sdiv exact i64 %i.cc, 40
  %i.ce = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = shl nuw nsw i64 %i.ce, 1
  %i.cg = xor i64 %i.cf, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %.sroa.06.3.i, ptr %.sroa.11.3.i, i64 noundef %i.cg)
  %i.ch = icmp sgt i64 %i.cc, 640
  br i1 %i.ch, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.06.3.i, i64 640 ; 3 uses
  call fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %.sroa.06.3.i, ptr nonnull %i.ci)
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.ci, %.sroa.11.3.i
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZN4llvm4sortIRSt6vectorIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS4_EEEEvOT_.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i = phi ptr [ %i.dp, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i.i ], [ %i.ci, %bb.f ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i)
  %.sroa.05.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.0.06.i.i.i.i.i.i.i, align 8, !tbaa !33 ; 3 uses
  %.sroa.5.0..val3.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..val3.sroa_idx.i.i.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !56
  %.sroa.57.0..val3.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i.i.i, i64 16
  %.sroa.57.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.57.0..val3.sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !46 ; 2 uses
  %.sroa.6.0..val3.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i.i.i, i64 24
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..val3.sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !46 ; 2 uses
  %.sroa.7.0..val3.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i.i.i, i64 32
  %.sroa.7.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.7.0..val3.sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !50
  %.sroa.7.0.copyload.fr.i.i.i.i.i.i.i.i = freeze i32 %.sroa.7.0.copyload.i.i.i.i.i.i.i.i ; 2 uses
  %.sroa.8.0..val3.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i.i.i, i64 36
  %i.cj = load i32, ptr %.sroa.8.0..val3.sroa_idx.i.i.i.i.i.i.i.i, align 4
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.7.0.copyload.fr.i.i.i.i.i.i.i.i, 2
  %i.ck = add nsw i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i, %.sroa.57.0.copyload.i.i.i.i.i.i.i.i ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.06.i.i.i.i.i.i.i, i64 -8
  %.val.i.i.us14.i.i.i.i.i.i.i.i = load i32, ptr %i.cl, align 8, !tbaa !59
  %i.cm = icmp eq i32 %.val.i.i.us14.i.i.i.i.i.i.i.i, 2
  br i1 %i.cm, label %.lr.ph.preheader.i.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %.split.us.i.i.i.i.i.i.i.i
  %i.cn = getelementptr inbounds i8, ptr %.sroa.0.06.i.i.i.i.i.i.i, i64 -16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !60
  %i.cp = getelementptr inbounds i8, ptr %.sroa.0.06.i.i.i.i.i.i.i, i64 -24
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !61
  %i.cr = add nsw i64 %i.cq, %i.co
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.us.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %i.cs = phi i64 [ %i.dd, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.us.i.i.i.i.i.i.i.i ], [ %i.cr, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.011.0.us15.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.us16.i.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.us.i.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.0.0.us16.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.us15.i.i.i.i.i.i.i.i, i64 -40 ; 4 uses
  %i.ct = icmp slt i64 %i.cs, %i.ck
  br i1 %i.ct, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.us.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.us.i.i.i.i.i.i.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.us.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.cu = load i32, ptr %.sroa.0.0.us16.i.i.i.i.i.i.i.i, align 4, !tbaa !33, !noalias !366
  %i.cv = icmp sge i64 %i.ck, %i.cs
  %i.cw = icmp slt i32 %i.cu, %.sroa.05.0.copyload.i.i.i.i.i.i.i.i
  %spec.select.i.i.us.i.i.i.i.i.i.i.i = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %spec.select.i.i.us.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.us.i.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.us.i.i.i.i.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.us.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %.sroa.011.0.us15.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(37) %.sroa.0.0.us16.i.i.i.i.i.i.i.i, i64 37, i1 false), !tbaa.struct !62
  %i.cx = getelementptr inbounds i8, ptr %.sroa.011.0.us15.i.i.i.i.i.i.i.i, i64 -48
  %.val.i.i.us.i.i.i.i.i.i.i.i = load i32, ptr %i.cx, align 8, !tbaa !59
  %i.cy = icmp eq i32 %.val.i.i.us.i.i.i.i.i.i.i.i, 2
  %i.cz = getelementptr inbounds i8, ptr %.sroa.011.0.us15.i.i.i.i.i.i.i.i, i64 -64
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !61
  %i.db = getelementptr inbounds i8, ptr %.sroa.011.0.us15.i.i.i.i.i.i.i.i, i64 -56
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !60
  %i.dd = add nsw i64 %i.dc, %i.da
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i.i, !llvm.loop !0

.split.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.i.i.i.i.i.i.i.i, i64 -40 ; 3 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.011.0.i.i.i.i.i.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.de, align 8, !tbaa !59
  %i.df = icmp eq i32 %.val.i.i.i.i.i.i.i.i.i.i, 2
  %i.dg = getelementptr inbounds i8, ptr %.sroa.011.0.i.i.i.i.i.i.i.i, i64 -24
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !61
  %i.di = getelementptr inbounds i8, ptr %.sroa.011.0.i.i.i.i.i.i.i.i, i64 -16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !60
  %i.dk = add nsw i64 %i.dj, %i.dh                ; 2 uses
  %i.dl = icmp slt i64 %i.dk, %i.ck
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.df, i1 true, i1 %i.dl
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i.i.i
  %i.dm = load i32, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, align 8, !tbaa !33, !noalias !366
  %i.dn = icmp sge i64 %i.ck, %i.dk
  %i.do = icmp slt i32 %i.dm, %.sroa.05.0.copyload.i.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %.sroa.011.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(37) %.sroa.0.0.i.i.i.i.i.i.i.i, i64 37, i1 false), !tbaa.struct !62
  br label %.split.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.us.i.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.us.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i
  %.us-phi.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.06.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.us16.i.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.us.i.i.i.i.i.i.i.i ], [ %.sroa.011.0.us15.i.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.us.i.i.i.i.i.i.i.i ], [ %.sroa.011.0.i.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.8.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i = trunc i32 %i.cj to i8
  store i32 %.sroa.05.0.copyload.i.i.i.i.i.i.i.i, ptr %.us-phi.i.i.i.i.i.i.i.i, align 8, !tbaa !33
  %.sroa.5.0..val.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.us-phi.i.i.i.i.i.i.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..val.sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !56
  %.sroa.57.0..val.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.us-phi.i.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.57.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.57.0..val.sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !46
  %.sroa.6.0..val.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.us-phi.i.i.i.i.i.i.i.i, i64 24
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..val.sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !46
  %.sroa.7.0..val.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.us-phi.i.i.i.i.i.i.i.i, i64 32
  store i32 %.sroa.7.0.copyload.fr.i.i.i.i.i.i.i.i, ptr %.sroa.7.0..val.sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !50
  %.sroa.8.0..val.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.us-phi.i.i.i.i.i.i.i.i, i64 36
  store i8 %.sroa.8.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i, ptr %.sroa.8.0..val.sroa_idx.i.i.i.i.i.i.i.i, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i)
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dp, %.sroa.11.3.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm4sortIRSt6vectorIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS4_EEEEvOT_.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !110

bb.g:                                             ; preds = %bb.e
  call fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %.sroa.06.3.i, ptr %.sroa.11.3.i)
  br label %_ZN4llvm4sortIRSt6vectorIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS4_EEEEvOT_.exit.i

_ZN4llvm4sortIRSt6vectorIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS4_EEEEvOT_.exit.i: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i.i, %bb.g, %bb.f, %._crit_edge.i, %_ZNSt6vectorIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS2_EE7reserveEm.exit.i
  %.not.i.i.i.i44127.i = phi i1 [ true, %_ZNSt6vectorIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS2_EE7reserveEm.exit.i ], [ false, %bb.g ], [ true, %._crit_edge.i ], [ false, %bb.f ], [ false, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i.i ]
  %.sroa.19.1.lcssa126.i = phi ptr [ %.sroa.19.0.i, %_ZNSt6vectorIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS2_EE7reserveEm.exit.i ], [ %.sroa.19.3.i, %bb.g ], [ %.sroa.19.3.i, %._crit_edge.i ], [ %.sroa.19.3.i, %bb.f ], [ %.sroa.19.3.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i.i ]
  %.sroa.11.1.lcssa125.i = phi ptr [ %.sroa.06.0.i, %_ZNSt6vectorIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS2_EE7reserveEm.exit.i ], [ %.sroa.11.3.i, %bb.g ], [ %.sroa.06.3.i, %._crit_edge.i ], [ %.sroa.11.3.i, %bb.f ], [ %.sroa.11.3.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i.i ]
  %.sroa.06.1.lcssa124.i = phi ptr [ %.sroa.06.0.i, %_ZNSt6vectorIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS2_EE7reserveEm.exit.i ], [ %.sroa.06.3.i, %bb.g ], [ %.sroa.06.3.i, %._crit_edge.i ], [ %.sroa.06.3.i, %bb.f ], [ %.sroa.06.3.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.dq = getelementptr inbounds nuw i8, ptr %16, i64 200 ; 3 uses
  store i32 1, ptr %16, align 8, !alias.scope !367
  store i32 0, ptr %i.dq, align 8, !alias.scope !367
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !47, !noalias !368 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !48, !noalias !368 ; 2 uses
  %i.dv = zext i32 %i.du to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.dv, 5
  %i.dw = getelementptr i8, ptr %i.ds, i64 %.idx.i.i.i.i ; 5 uses
  %.not1.i.i.i.i.i.i.i = icmp eq i32 %i.du, 0
  br i1 %.not1.i.i.i.i.i.i.i, label %_ZN4llvm15MachineFunction29getInStackSlotVariableDbgInfoEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i45.i

.lr.ph.i.i.i.i.i.i45.i:                           ; preds = %_ZN4llvm4sortIRSt6vectorIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS4_EEEEvOT_.exit.i, %bb.h
  %.sroa.09.0.i.i.i.i = phi ptr [ %i.ea, %bb.h ], [ %i.ds, %_ZN4llvm4sortIRSt6vectorIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS4_EEEEvOT_.exit.i ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 4
  %i.dy = load i8, ptr %i.dx, align 4, !tbaa !370, !noalias !371
  %i.dz = icmp eq i8 %i.dy, 0
  br i1 %i.dz, label %_ZN4llvm15MachineFunction29getInStackSlotVariableDbgInfoEv.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i45.i
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i46.i = icmp eq ptr %i.ea, %i.dw
  br i1 %.not.i.i.i.i.i.i46.i, label %._crit_edge.i.i, label %.lr.ph.i.i.i.i.i.i45.i, !llvm.loop !117

_ZN4llvm15MachineFunction29getInStackSlotVariableDbgInfoEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i45.i, %_ZN4llvm4sortIRSt6vectorIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS4_EEEEvOT_.exit.i
  %.sroa.09.1.i.i.i.i = phi ptr [ %i.ds, %_ZN4llvm4sortIRSt6vectorIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESaIS4_EEEEvOT_.exit.i ], [ %.sroa.09.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i45.i ] ; 2 uses
  %.not2737.i.i = icmp eq ptr %.sroa.09.1.i.i.i.i, %i.dw
  br i1 %.not2737.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.h, %_ZN4llvm20filter_iterator_baseIPNS_15MachineFunction15VariableDbgInfoEZNS1_29getInStackSlotVariableDbgInfoEvEUlRT_E_St26bidirectional_iterator_tagEppEv.exit.i.i, %_ZN4llvm9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit.i.i, %bb.m, %_ZN4llvm15MachineFunction29getInStackSlotVariableDbgInfoEv.exit.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %.sroa.011.053.i.i = load ptr, ptr %i.q, align 8, !tbaa !280, !noalias !367 ; 2 uses
  %.not2854.i.i = icmp eq ptr %.sroa.011.053.i.i, %i.eb
  br i1 %.not2854.i.i, label %_ZN12_GLOBAL__N_124StackFrameLayoutAnalysis17genSlotDbgMappingERN4llvm15MachineFunctionE.exit.i, label %.lr.ph57.i.i

.lr.ph57.i.i:                                     ; preds = %._crit_edge.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.ef = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  br label %bb.n

.lr.ph.i.i:                                       ; preds = %_ZN4llvm15MachineFunction29getInStackSlotVariableDbgInfoEv.exit.i.i, %_ZN4llvm20filter_iterator_baseIPNS_15MachineFunction15VariableDbgInfoEZNS1_29getInStackSlotVariableDbgInfoEvEUlRT_E_St26bidirectional_iterator_tagEppEv.exit.i.i
  %.sroa.015.038.i.i = phi ptr [ %.sroa.015.1.i.i, %_ZN4llvm20filter_iterator_baseIPNS_15MachineFunction15VariableDbgInfoEZNS1_29getInStackSlotVariableDbgInfoEvEUlRT_E_St26bidirectional_iterator_tagEppEv.exit.i.i ], [ %.sroa.09.1.i.i.i.i, %_ZN4llvm15MachineFunction29getInStackSlotVariableDbgInfoEv.exit.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21, !noalias !367
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.015.038.i.i, i64 4
  %i.ej = load i8, ptr %i.ei, align 4, !tbaa !370
  %.not.i.i.i.i47.i = icmp eq i8 %i.ej, 0
  br i1 %.not.i.i.i.i47.i, label %_ZNK4llvm15MachineFunction15VariableDbgInfo12getStackSlotEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  call void @abort() #24
  unreachable

_ZNK4llvm15MachineFunction15VariableDbgInfo12getStackSlotEv.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ek = load i32, ptr %.sroa.015.038.i.i, align 4, !tbaa !33
  store i32 %i.ek, ptr %i.c, align 4, !tbaa !33, !noalias !367
  %i.el = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEELj4ENS9_IivEENS_6detail12DenseMapPairIiSC_EEEEiSC_SD_SG_E24lookupOrInsertIntoBucketIiJEEESt4pairIPSG_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.el, 0 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.015.038.i.i, i64 8 ; 2 uses
  %i.eo = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.em, ptr noundef nonnull align 8 dereferenceable(8) %i.en), !noalias !372
  %.fca.1.extract.i.i.i.i.i.i = extractvalue { ptr, i8 } %i.eo, 1
  %i.ep = trunc nuw i8 %.fca.1.extract.i.i.i.i.i.i to i1
  br i1 %i.ep, label %bb.j, label %_ZN4llvm9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit.i.i

bb.j:                                             ; preds = %_ZNK4llvm15MachineFunction15VariableDbgInfo12getStackSlotEv.exit.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 32 ; 2 uses
  %i.er = load ptr, ptr %i.en, align 8, !tbaa !65 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 40 ; 3 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !48 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 44
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !49
  %.not.i.i.i.i = icmp ult i32 %i.et, %i.ev
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k, !prof !66

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_15DILocalVariableELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noundef %i.er)
  br label %_ZN4llvm9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ew = zext i32 %i.et to i64
  %i.ex = load ptr, ptr %i.eq, align 8, !tbaa !47
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ew
  store ptr %i.er, ptr %i.ey, align 1
  %i.ez = load i32, ptr %i.es, align 8, !tbaa !48
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr %i.es, align 8, !tbaa !48
  br label %_ZN4llvm9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit.i.i

_ZN4llvm9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit.i.i: ; preds = %bb.l, %bb.k, %_ZNK4llvm15MachineFunction15VariableDbgInfo12getStackSlotEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21, !noalias !367
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.015.038.i.i, i64 32 ; 2 uses
  %.not1.i.i.i.i = icmp eq ptr %i.fb, %i.dw
  br i1 %.not1.i.i.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit.i.i, %bb.m
  %.sroa.015.1.i.i = phi ptr [ %i.ff, %bb.m ], [ %i.fb, %_ZN4llvm9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit.i.i ] ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 4
  %i.fd = load i8, ptr %i.fc, align 4, !tbaa !370
  %i.fe = icmp eq i8 %i.fd, 0
  br i1 %i.fe, label %_ZN4llvm20filter_iterator_baseIPNS_15MachineFunction15VariableDbgInfoEZNS1_29getInStackSlotVariableDbgInfoEvEUlRT_E_St26bidirectional_iterator_tagEppEv.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 32 ; 2 uses
  %.not.i.i36.i.i = icmp eq ptr %i.ff, %i.dw
  br i1 %.not.i.i36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !117

_ZN4llvm20filter_iterator_baseIPNS_15MachineFunction15VariableDbgInfoEZNS1_29getInStackSlotVariableDbgInfoEvEUlRT_E_St26bidirectional_iterator_tagEppEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.not27.i.i = icmp eq ptr %.sroa.015.1.i.i, %i.dw
  br i1 %.not27.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.n:                                             ; preds = %._crit_edge52.i.i, %.lr.ph57.i.i
  %.sroa.011.055.i.i = phi ptr [ %.sroa.011.053.i.i, %.lr.ph57.i.i ], [ %.sroa.011.0.i.i, %._crit_edge52.i.i ] ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.011.055.i.i, i64 56
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.011.055.i.i, i64 48 ; 2 uses
  %.sroa.08.047.i.i = load ptr, ptr %i.fg, align 8, !tbaa !373 ; 2 uses
  %.not2948.i.i = icmp eq ptr %.sroa.08.047.i.i, %i.fh
  br i1 %.not2948.i.i, label %._crit_edge52.i.i, label %.lr.ph51.i.i

._crit_edge52.i.i:                                ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, %bb.n
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.011.055.i.i, i64 8
  %.sroa.011.0.i.i = load ptr, ptr %i.fi, align 8, !tbaa !280 ; 2 uses
  %.not28.i.i = icmp eq ptr %.sroa.011.0.i.i, %i.eb
  br i1 %.not28.i.i, label %_ZN12_GLOBAL__N_124StackFrameLayoutAnalysis17genSlotDbgMappingERN4llvm15MachineFunctionE.exit.i, label %bb.n

.lr.ph51.i.i:                                     ; preds = %bb.n, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i
  %.sroa.08.049.i.i = phi ptr [ %.sroa.08.0.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i ], [ %.sroa.08.047.i.i, %bb.n ] ; 9 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.08.049.i.i, i64 64 ; 3 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !50 ; 4 uses
  %i.fl = icmp ugt i64 %i.fk, 7
  br i1 %i.fl, label %bb.o, label %._crit_edge46.i.i

bb.o:                                             ; preds = %.lr.ph51.i.i
  %i.fm = and i64 %i.fk, 7
  switch i64 %i.fm, label %._crit_edge46.i.i [
    i64 0, label %_ZNK4llvm12MachineInstr11memoperandsEv.exit.thread84.i.i
    i64 3, label %_ZNK4llvm12MachineInstr11memoperandsEv.exit.i.i
  ]

_ZNK4llvm12MachineInstr11memoperandsEv.exit.thread84.i.i: ; preds = %bb.o
  %i.fn = inttoptr i64 %i.fk to ptr
  store ptr %i.fn, ptr %i.fj, align 8, !tbaa !50
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.08.049.i.i, i64 72
  br label %.lr.ph45.preheader.i.i

_ZNK4llvm12MachineInstr11memoperandsEv.exit.i.i:  ; preds = %bb.o
  %i.fp = and i64 %i.fk, -8
  %i.fq = inttoptr i64 %i.fp to ptr               ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %i.fs = load i32, ptr %i.fq, align 8, !tbaa !375 ; 2 uses
  %i.ft = sext i32 %i.fs to i64
  %i.fu = shl nuw nsw i64 %i.ft, 3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fu
  %.not43.i.i = icmp eq i32 %i.fs, 0
  br i1 %.not43.i.i, label %._crit_edge46.i.i, label %.lr.ph45.preheader.i.i

.lr.ph45.preheader.i.i:                           ; preds = %_ZNK4llvm12MachineInstr11memoperandsEv.exit.i.i, %_ZNK4llvm12MachineInstr11memoperandsEv.exit.thread84.i.i
  %i.fw = phi ptr [ %i.fo, %_ZNK4llvm12MachineInstr11memoperandsEv.exit.thread84.i.i ], [ %i.fv, %_ZNK4llvm12MachineInstr11memoperandsEv.exit.i.i ]
  %.sroa.0.1.i88.i.i = phi ptr [ %i.fj, %_ZNK4llvm12MachineInstr11memoperandsEv.exit.thread84.i.i ], [ %i.fr, %_ZNK4llvm12MachineInstr11memoperandsEv.exit.i.i ]
  br label %.lr.ph45.i.i

._crit_edge46.i.i:                                ; preds = %_ZN4llvm16dyn_cast_or_nullINS_27FixedStackPseudoSourceValueEKNS_17PseudoSourceValueEEEDaPT0_.exit.thread.i.i, %_ZNK4llvm12MachineInstr11memoperandsEv.exit.i.i, %bb.o, %.lr.ph51.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.049.i.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.08.049.i.i, align 8
  %i.fx = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i37.i.i = icmp eq i64 %i.fx, 0
  br i1 %.not.i.i.i37.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %._crit_edge46.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.08.049.i.i, i64 44
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !385
  %i.ga = and i32 %i.fz, 8
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_:bb.a
  %i.ed = icmp sgt i64 %i.ec, 640
  br i1 %i.ed, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !464

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit, %.lr.ph.i8.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef range(i64 -230584300921369395, 230584300921369396) %2, ptr nofree noundef readonly byval(%"struct.(anonymous namespace)::StackFrameLayoutAnalysis::SlotData") align 8 captures(none) %3) unnamed_addr #10 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread53
  %.057 = phi i64 [ %i.ac, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread53 ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.057, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 3 uses
  %i.f = getelementptr inbounds [40 x i8], ptr %0, i64 %i.e ; 4 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [40 x i8], ptr %0, i64 %i.g ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val5.i.i = load i32, ptr %i.i, align 8, !tbaa !59
  %i.j = icmp ne i32 %.val5.i.i, 2                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !60
  %i.o = add nsw i64 %i.n, %i.l                   ; 2 uses
  %i.p = load i32, ptr %i.f, align 8, !tbaa !33, !noalias !499
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.val.i.i = load i32, ptr %i.q, align 8, !tbaa !59
  %i.r = icmp eq i32 %.val.i.i, 2                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !60
  %i.w = add nsw i64 %i.v, %i.t                   ; 2 uses
  %i.x = load i32, ptr %i.h, align 8, !tbaa !33, !noalias !500
  %i.y = and i1 %i.j, %i.r
  br i1 %i.y, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not15.i.i = or i1 %i.j, %i.r
  br i1 %.not15.i.i, label %bb.c, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread53

bb.c:                                             ; preds = %bb.b
  %i.z = icmp slt i64 %i.w, %i.o
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit: ; preds = %bb.c
  %i.aa = icmp sge i64 %i.o, %i.w
  %i.ab = icmp slt i32 %i.x, %i.p
  %spec.select.i.i = select i1 %i.aa, i1 %i.ab, i1 false
  %cond.fr = freeze i1 %spec.select.i.i
  br i1 %cond.fr, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread53

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread: ; preds = %bb.c, %.lr.ph, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread53

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread53: ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread
  %i.ac = phi i64 [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread ], [ %i.e, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit ], [ %i.e, %bb.b ] ; 4 uses
  %i.ad = getelementptr inbounds [40 x i8], ptr %0, i64 %i.ac
  %i.ae = getelementptr inbounds [40 x i8], ptr %0, i64 %.057
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %i.ae, ptr noundef nonnull align 8 dereferenceable(37) %i.ad, i64 37, i1 false), !tbaa.struct !62
  %i.af = icmp slt i64 %i.ac, %i.b
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !495

._crit_edge:                                      ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread53, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.ac, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread53 ] ; 5 uses
  %i.ag = and i64 %2, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ai = add nsw i64 %2, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = shl nsw i64 %.0.lcssa, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds [40 x i8], ptr %0, i64 %i.am
  %i.ao = getelementptr inbounds [40 x i8], ptr %0, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %i.ao, ptr noundef nonnull align 8 dereferenceable(37) %i.an, i64 37, i1 false), !tbaa.struct !62
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.049.0.copyload = load i32, ptr %3, align 8, !tbaa !33 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !46 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !46 ; 2 uses
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.550.0.copyload = load i32, ptr %.sroa.550.0..sroa_idx, align 8, !tbaa !50
  %.val.i.i.fr.i = freeze i32 %.sroa.550.0.copyload ; 2 uses
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ap = load i32, ptr %.sroa.651.0..sroa_idx, align 4
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SD_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.09.in5.i = add nsw i64 %.1, -1
  %.096.i = sdiv i64 %.09.in5.i, 2                ; 2 uses
  %i.ar = icmp eq i32 %.val.i.i.fr.i, 2
  %i.as = add nsw i64 %.sroa.4.0.copyload, %.sroa.3.0.copyload ; 4 uses
  br i1 %i.ar, label %.lr.ph.split.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.us.i
  %.098.us.i = phi i64 [ %.09.us.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.us.i ], [ %.096.i, %.lr.ph.i ] ; 5 uses
  %.07.us.i = phi i64 [ %.098.us.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.us.i ], [ %.1, %.lr.ph.i ] ; 3 uses
  %i.at = getelementptr inbounds [40 x i8], ptr %0, i64 %.098.us.i ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %.val5.i.i.us.i = load i32, ptr %i.au, align 8, !tbaa !59
  %.not.i = icmp eq i32 %.val5.i.i.us.i, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !61
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !60
  %i.az = add nsw i64 %i.ay, %i.aw                ; 2 uses
  %i.ba = load i32, ptr %i.at, align 8, !tbaa !33, !noalias !501
  br i1 %.not.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SD_T1_RT2_.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.i
  %i.bb = icmp slt i64 %i.as, %i.az
  br i1 %i.bb, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.us.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.us.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.us.i: ; preds = %bb.g
  %i.bc = icmp sge i64 %i.az, %i.as
  %i.bd = icmp slt i32 %.sroa.049.0.copyload, %i.ba
  %spec.select.i.i.us.i = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %spec.select.i.i.us.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SD_T1_RT2_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.us.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.us.i, %bb.g
  %i.be = getelementptr inbounds [40 x i8], ptr %0, i64 %.07.us.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %i.be, ptr noundef nonnull align 8 dereferenceable(37) %i.at, i64 37, i1 false), !tbaa.struct !62
  %.09.in.us.i = add nsw i64 %.098.us.i, -1
  %.09.us.i = sdiv i64 %.09.in.us.i, 2
  %i.bf = icmp sgt i64 %.098.us.i, %1
  br i1 %i.bf, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SD_T1_RT2_.exit, !llvm.loop !498

.lr.ph.split.split.i:                             ; preds = %.lr.ph.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.i
  %.098.i = phi i64 [ %.09.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.i ], [ %.096.i, %.lr.ph.i ] ; 5 uses
  %.07.i = phi i64 [ %.098.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.i ], [ %.1, %.lr.ph.i ] ; 2 uses
  %i.bg = getelementptr inbounds [40 x i8], ptr %0, i64 %.098.i ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %.val5.i.i.i = load i32, ptr %i.bh, align 8, !tbaa !59
  %i.bi = icmp ne i32 %.val5.i.i.i, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !61
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !60
  %i.bn = add nsw i64 %i.bm, %i.bk                ; 2 uses
  %i.bo = icmp slt i64 %i.as, %i.bn
  %or.cond.i = select i1 %i.bi, i1 true, i1 %i.bo
  br i1 %or.cond.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.i: ; preds = %.lr.ph.split.split.i
  %i.bp = load i32, ptr %i.bg, align 8, !tbaa !33, !noalias !501
  %i.bq = icmp sge i64 %i.bn, %i.as
  %i.br = icmp slt i32 %.sroa.049.0.copyload, %i.bp
  %spec.select.i.i.i = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %spec.select.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SD_T1_RT2_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.i, %.lr.ph.split.split.i
  %i.bs = getelementptr inbounds [40 x i8], ptr %0, i64 %.07.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %i.bs, ptr noundef nonnull align 8 dereferenceable(37) %i.bg, i64 37, i1 false), !tbaa.struct !62
  %.09.in.i = add nsw i64 %.098.i, -1
  %.09.i = sdiv i64 %.09.in.i, 2
  %i.bt = icmp sgt i64 %.098.i, %1
  br i1 %i.bt, label %.lr.ph.split.split.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SD_T1_RT2_.exit, !llvm.loop !498

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SD_T1_RT2_.exit: ; preds = %.lr.ph.split.us.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.us.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.us.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.i, %bb.f
  %.0.lcssa.i = phi i64 [ %.1, %bb.f ], [ %.098.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.i ], [ %.07.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.i ], [ %.098.us.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.us.i ], [ %.07.us.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.us.i ], [ %.07.us.i, %.lr.ph.split.us.i ]
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.8.sroa.0.0.extract.trunc = trunc i32 %i.ap to i8
  %i.bu = getelementptr inbounds [40 x i8], ptr %0, i64 %.0.lcssa.i ; 6 uses
  store i32 %.sroa.049.0.copyload, ptr %i.bu, align 8, !tbaa !33
  %.sroa.5.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx40, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.2.0..sroa_idx, i64 12, i1 false)
  %.sroa.541.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %.sroa.3.0.copyload, ptr %.sroa.541.0..sroa_idx42, align 8, !tbaa !46
  %.sroa.6.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store i64 %.sroa.4.0.copyload, ptr %.sroa.6.0..sroa_idx44, align 8, !tbaa !46
  %.sroa.7.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store i32 %.val.i.i.fr.i, ptr %.sroa.7.0..sroa_idx46, align 8, !tbaa !50
  %.sroa.8.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.bu, i64 36
  store i8 %.sroa.8.sroa.0.0.extract.trunc, ptr %.sroa.8.0..sroa_idx48, align 4, !tbaa !55
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #10 {
bb.a:
  %.sroa.5.i = alloca <{ i32, i32, [4 x i8] }>, align 8 ; 6 uses
  %2 = alloca %"struct.(anonymous namespace)::StackFrameLayoutAnalysis::SlotData", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.024 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.not25 = icmp eq ptr %.sroa.0.024, %1
  br i1 %.not25, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.0.027 = phi ptr [ %.sroa.0.024, %.lr.ph ], [ %.sroa.0.0, %bb.i ] ; 8 uses
  %.pn26 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.027, %bb.i ] ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn26, i64 72
  %.val5.i.i = load i32, ptr %i.f, align 8, !tbaa !59
  %.sroa.7.0.copyload.fr.i18 = freeze i32 %.val5.i.i ; 3 uses
  %i.g = icmp ne i32 %.sroa.7.0.copyload.fr.i18, 2 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pn26, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !61   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.pn26, i64 64
  %i.k = load i64, ptr %i.j, align 8, !tbaa !60   ; 2 uses
  %i.l = add nsw i64 %i.k, %i.i                   ; 6 uses
  %i.m = load i32, ptr %.sroa.0.027, align 4, !tbaa !33, !noalias !509 ; 4 uses
  %.val.i.i = load i32, ptr %i.b, align 8, !tbaa !59
  %i.n = icmp eq i32 %.val.i.i, 2                 ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !61
  %i.p = load i64, ptr %i.d, align 8, !tbaa !60
  %i.q = add nsw i64 %i.p, %i.o                   ; 2 uses
  %i.r = load i32, ptr %0, align 8, !tbaa !33, !noalias !510
  %i.s = and i1 %i.g, %i.n
  br i1 %i.s, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not15.i.i = or i1 %i.g, %i.n
  br i1 %.not15.i.i, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.5.0..val3.sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %.pn26, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..val3.sroa_idx.i17, i64 12, i1 false), !tbaa.struct !56
  %.sroa.8.0..val3.sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %.pn26, i64 76
  %i.t = load i32, ptr %.sroa.8.0..val3.sroa_idx.i19, align 4
  br label %.split.us.i

bb.d:                                             ; preds = %bb.c
  %i.u = icmp slt i64 %i.q, %i.l
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit: ; preds = %bb.d
  %i.v = icmp sge i64 %i.l, %i.q
  %i.w = icmp slt i32 %i.r, %i.m
  %spec.select.i.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %spec.select.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread, label %bb.h

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread: ; preds = %bb.d, %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.027, i64 40, i1 false), !tbaa.struct !62
  %i.x = ptrtoint ptr %.sroa.0.027 to i64
  %i.y = sub i64 %i.x, %i.e                       ; 4 uses
  %i.z = icmp sgt i64 %i.y, 40
  br i1 %i.z, label %bb.e, label %bb.f, !prof !66

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn26, i64 80
  %.neg37 = udiv exact i64 %i.y, 40
  %.neg37.neg = sub nsw i64 0, %.neg37
  %i.ab = getelementptr inbounds [40 x i8], ptr %i.aa, i64 %.neg37.neg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.y, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread
  %i.ac = icmp eq i64 %i.y, 40
  br i1 %i.ac, label %bb.g, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn26, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(37) %0, i64 37, i1 false), !tbaa.struct !62
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %0, ptr noundef nonnull align 8 dereferenceable(37) %2, i64 37, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.i

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.5.0..val3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn26, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..val3.sroa_idx.i, i64 12, i1 false), !tbaa.struct !56
  %.sroa.8.0..val3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn26, i64 76
  %i.ae = load i32, ptr %.sroa.8.0..val3.sroa_idx.i, align 4 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.7.0.copyload.fr.i18, 2
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %.thread, %bb.h
  %i.af = phi i32 [ %i.t, %.thread ], [ %i.ae, %bb.h ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.pn26, i64 32
  %.val.i.i.us14.i = load i32, ptr %i.ag, align 8, !tbaa !59
  %i.ah = icmp eq i32 %.val.i.i.us14.i, 2
  br i1 %i.ah, label %.lr.ph.preheader.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

.lr.ph.preheader.i:                               ; preds = %.split.us.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn26, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !60
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn26, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !61
  %i.am = add nsw i64 %i.al, %i.aj
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.us.i, %.lr.ph.preheader.i
  %i.an = phi i64 [ %i.ay, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.us.i ], [ %i.am, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.011.0.us15.i = phi ptr [ %.sroa.0.0.us16.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.us.i ], [ %.sroa.0.027, %.lr.ph.preheader.i ] ; 6 uses
  %.sroa.0.0.us16.i = getelementptr inbounds i8, ptr %.sroa.011.0.us15.i, i64 -40 ; 4 uses
  %i.ao = icmp slt i64 %i.an, %i.l
  br i1 %i.ao, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.us.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.us.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.us.i: ; preds = %.lr.ph.i
  %i.ap = load i32, ptr %.sroa.0.0.us16.i, align 4, !tbaa !33, !noalias !511
  %i.aq = icmp sge i64 %i.l, %i.an
  %i.ar = icmp slt i32 %i.ap, %i.m
  %spec.select.i.i.us.i = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %spec.select.i.i.us.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.us.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.us.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.us.i, %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %.sroa.011.0.us15.i, ptr noundef nonnull align 8 dereferenceable(37) %.sroa.0.0.us16.i, i64 37, i1 false), !tbaa.struct !62
  %i.as = getelementptr inbounds i8, ptr %.sroa.011.0.us15.i, i64 -48
  %.val.i.i.us.i = load i32, ptr %i.as, align 8, !tbaa !59
  %i.at = icmp eq i32 %.val.i.i.us.i, 2
  %i.au = getelementptr inbounds i8, ptr %.sroa.011.0.us15.i, i64 -64
  %i.av = load i64, ptr %i.au, align 8, !tbaa !61
  %i.aw = getelementptr inbounds i8, ptr %.sroa.011.0.us15.i, i64 -56
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !60
  %i.ay = add nsw i64 %i.ax, %i.av
  br i1 %i.at, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit, !llvm.loop !0

.split.i:                                         ; preds = %bb.h, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i
  %.sroa.011.0.i = phi ptr [ %.sroa.0.0.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i ], [ %.sroa.0.027, %bb.h ] ; 6 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.011.0.i, i64 -40 ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.011.0.i, i64 -8
  %.val.i.i.i = load i32, ptr %i.az, align 8, !tbaa !59
  %i.ba = icmp eq i32 %.val.i.i.i, 2
  %i.bb = getelementptr inbounds i8, ptr %.sroa.011.0.i, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !61
  %i.bd = getelementptr inbounds i8, ptr %.sroa.011.0.i, i64 -16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !60
  %i.bf = add nsw i64 %i.be, %i.bc                ; 2 uses
  %i.bg = icmp slt i64 %i.bf, %i.l
  %or.cond.i = select i1 %i.ba, i1 true, i1 %i.bg
  br i1 %or.cond.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i: ; preds = %.split.i
  %i.bh = load i32, ptr %.sroa.0.0.i, align 8, !tbaa !33, !noalias !511
  %i.bi = icmp sge i64 %i.l, %i.bf
  %i.bj = icmp slt i32 %i.bh, %i.m
  %spec.select.i.i.i = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %spec.select.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i, %.split.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %.sroa.011.0.i, ptr noundef nonnull align 8 dereferenceable(37) %.sroa.0.0.i, i64 37, i1 false), !tbaa.struct !62
  br label %.split.i, !llvm.loop !0

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.us.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.us.i, %.split.us.i
  %i.bk = phi i32 [ %i.af, %.split.us.i ], [ %i.af, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.us.i ], [ %i.af, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.us.i ], [ %i.ae, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i ]
  %.sroa.7.0.copyload.fr.i21 = phi i32 [ 2, %.split.us.i ], [ 2, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.us.i ], [ 2, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.us.i ], [ %.sroa.7.0.copyload.fr.i18, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i ]
  %.us-phi.i = phi ptr [ %.sroa.0.027, %.split.us.i ], [ %.sroa.011.0.us15.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.us.i ], [ %.sroa.0.0.us16.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.us.i ], [ %.sroa.011.0.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i ] ; 6 uses
  %.sroa.8.sroa.0.0.extract.trunc.i = trunc i32 %i.bk to i8
  store i32 %i.m, ptr %.us-phi.i, align 8, !tbaa !33
  %.sroa.5.0..val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..val.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i, i64 12, i1 false), !tbaa.struct !56
  %.sroa.57.0..val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 16
  store i64 %i.i, ptr %.sroa.57.0..val.sroa_idx.i, align 8, !tbaa !46
  %.sroa.6.0..val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 24
  store i64 %i.k, ptr %.sroa.6.0..val.sroa_idx.i, align 8, !tbaa !46
  %.sroa.7.0..val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 32
  store i32 %.sroa.7.0.copyload.fr.i21, ptr %.sroa.7.0..val.sroa_idx.i, align 8, !tbaa !50
  %.sroa.8.0..val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 36
  store i8 %.sroa.8.sroa.0.0.extract.trunc.i, ptr %.sroa.8.0..val.sroa_idx.i, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_124StackFrameLayoutAnalysis8SlotDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 40 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !508

.loopexit:                                        ; preds = %bb.i, %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvm12MachineInstr18collectDebugValuesERNS_15SmallVectorImplIPS0_EE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef ptr @_ZNK4llvm12MachineInstr16getDebugVariableEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEELj4ENS9_IivEENS_6detail12DenseMapPairIiSC_EEEEiSC_SD_SG_E24lookupOrInsertIntoBucketIiJEEESt4pairIPSG_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !516 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !516 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !516 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !516
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !33     ; 2 uses
  %i.n = mul i32 %i.m, 37
  %.024.i = and i32 %i.n, %i.l                    ; 3 uses
  %i.o = zext i32 %.024.i to i64                  ; 2 uses
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %.sink2.i.i.i, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !33
  %i.t = and i32 %.024.i, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !67

bb.c:                                             ; preds = %.lr.ph.i
  %i.w = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.w, %i.l                      ; 3 uses
  %i.x = zext i32 %.0.i to i64                    ; 2 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %.sink2.i.i.i, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !33
  %i.ac = and i32 %.0.i, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit, !prof !68, !llvm.loop !1

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.af = phi ptr [ %i.y, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !33
  %i.ah = icmp eq i32 %i.m, %i.ag
  br i1 %i.ah, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEELj4ENS9_IivEENS_6detail12DenseMapPairIiSC_EEEEiSC_SD_SG_E15LookupBucketForIiEEbRKT_RPSG_.exit, label %bb.c, !prof !66

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa29.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.y, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa29.sink.i.ph, ptr %i.a, align 8, !tbaa !87
  %i.ai = shl i32 %i.b, 1
  %i.aj = and i32 %i.ai, -4
  %i.ak = add i32 %i.aj, 4
  %i.al = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.ak, %i.al
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEELj4ENS9_IivEENS_6detail12DenseMapPairIiSC_EEEEiSC_SD_SG_E22findBucketForInsertionIiEEPSG_RKT_SK_.exit, label %bb.d, !prof !66

bb.d:                                             ; preds = %.loopexit
  %i.am = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEELj4ENS9_IivEENS_6detail12DenseMapPairIiSC_EEEEiSC_SD_SG_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.am)
  %i.an = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEELj4ENS9_IivEENS_6detail12DenseMapPairIiSC_EEEEiSC_SD_SG_E15LookupBucketForIiEEbRKT_RPSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !87
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEELj4ENS9_IivEENS_6detail12DenseMapPairIiSC_EEEEiSC_SD_SG_E22findBucketForInsertionIiEEPSG_RKT_SK_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEELj4ENS9_IivEENS_6detail12DenseMapPairIiSC_EEEEiSC_SD_SG_E22findBucketForInsertionIiEEPSG_RKT_SK_.exit: ; preds = %.loopexit, %bb.d
  %i.ao = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.ap = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aq = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa29.sink.i.ph, %.loopexit ] ; 8 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ar = select i1 %.not.i.i.i.i, ptr %i.ap, ptr %i.j
  %i.as = select i1 %.not.i.i.i.i, ptr %i.ao, ptr %i.d
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 48                ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !33
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !33
  %i.be = load i32, ptr %0, align 8               ; 2 uses
  %i.bf = and i32 %i.be, -2
  %i.bg = add i32 %i.bf, 2
  %i.bh = and i32 %i.be, 1
  %i.bi = or disjoint i32 %i.bg, %i.bh
  store i32 %i.bi, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = load i32, ptr %1, align 4, !tbaa !33
  store i32 %i.bj, ptr %i.aq, align 4, !tbaa !33
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false)
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !47
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i32 0, ptr %i.bn, align 8, !tbaa !48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 44
  store i32 0, ptr %i.bo, align 4, !tbaa !49
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEELj4ENS9_IivEENS_6detail12DenseMapPairIiSC_EEEEiSC_SD_SG_E15LookupBucketForIiEEbRKT_RPSG_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEELj4ENS9_IivEENS_6detail12DenseMapPairIiSC_EEEEiSC_SD_SG_E15LookupBucketForIiEEbRKT_RPSG_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEELj4ENS9_IivEENS_6detail12DenseMapPairIiSC_EEEEiSC_SD_SG_E22findBucketForInsertionIiEEPSG_RKT_SK_.exit
  %.sroa.0.0 = phi ptr [ %i.aq, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEELj4ENS9_IivEENS_6detail12DenseMapPairIiSC_EEEEiSC_SD_SG_E22findBucketForInsertionIiEEPSG_RKT_SK_.exit ], [ %i.af, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEELj4ENS9_IivEENS_6detail12DenseMapPairIiSC_EEEEiSC_SD_SG_E22findBucketForInsertionIiEEPSG_RKT_SK_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_9SetVectorIPKNS_15DILocalVariableENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEELj4ENS9_IivEENS_6detail12DenseMapPairIiSC_EEEEiSC_SD_SG_E15LookupBucketForIiEEbRKT_RPSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !521
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !521
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !521
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !521
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load i32, ptr %1, align 4, !tbaa !33     ; 2 uses
  %i.m = mul i32 %i.l, 37
  %.024 = and i32 %i.m, %i.k                      ; 3 uses
  %i.n = zext i32 %.024 to i64                    ; 2 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %.sink2.i.i, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !33
  %i.s = and i32 %.024, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !67

bb.c:                                             ; preds = %.lr.ph
  %i.v = add nuw i32 %.025, 1
  %.0 = and i32 %i.v, %i.k                        ; 3 uses
  %i.w = zext i32 %.0 to i64                      ; 2 uses
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %.sink2.i.i, i64 %i.w ; 2 uses
  %i.y = lshr i64 %i.w, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !33
  %i.ab = and i32 %.0, 31
end_hunk_1
