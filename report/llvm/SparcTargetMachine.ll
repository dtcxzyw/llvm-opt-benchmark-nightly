Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SparcTargetMachine?download=true
inline.NumInlined: 5555
inline.NumDeleted: 2371
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
@.str = private unnamed_addr constant [26 x i8] c"sparc-enable-branch-relax\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Relax out of range conditional branches\00", align 1
@__dso_handle = external hidden global i8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTVN4llvm18SparcTargetMachineE = unnamed_addr constant { [37 x ptr] } { [37 x ptr] [ptr null, ptr null, ptr @_ZN4llvm18SparcTargetMachineD1Ev, ptr @_ZN4llvm18SparcTargetMachineD0Ev, ptr @_ZNK4llvm18SparcTargetMachine16getSubtargetImplERKNS_8FunctionE, ptr @_ZNK4llvm18SparcTargetMachine18getObjFileLoweringEv, ptr @_ZNK4llvm18SparcTargetMachine25createMachineFunctionInfoERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEERKNS_8FunctionEPKNS_19TargetSubtargetInfoE, ptr @_ZNK4llvm13TargetMachine22createMachineSchedulerEPNS_19MachineSchedContextE, ptr @_ZNK4llvm13TargetMachine26createPostMachineSchedulerEPNS_19MachineSchedContextE, ptr @_ZNK4llvm13TargetMachine25createDefaultFuncInfoYAMLEv, ptr @_ZNK4llvm13TargetMachine21convertFuncInfoToYAMLERKNS_15MachineFunctionE, ptr @_ZNK4llvm13TargetMachine24parseMachineFunctionInfoERKNS_4yaml19MachineFunctionInfoERNS_25PerFunctionMIParsingStateERNS_12SMDiagnosticERNS_7SMRangeE, ptr @_ZNK4llvm13TargetMachine19isNoopAddrSpaceCastEjj, ptr @_ZNK4llvm13TargetMachine19getAssumedAddrSpaceEPKNS_5ValueE, ptr @_ZNK4llvm13TargetMachine22getPredicatedAddrSpaceEPKNS_5ValueE, ptr @_ZNK4llvm18SparcTargetMachine22getTargetTransformInfoERKNS_8FunctionE, ptr @_ZN4llvm13TargetMachine28registerPassBuilderCallbacksERNS_11PassBuilderE, ptr @_ZN4llvm13TargetMachine33registerEarlyDefaultAliasAnalysesERNS_9AAManagerE, ptr @_ZN4llvm13TargetMachine28registerDefaultAliasAnalysesERNS_9AAManagerE, ptr @_ZN4llvm24CodeGenTargetMachineImpl19addPassesToEmitFileERNS_6legacy15PassManagerBaseERNS_17raw_pwrite_streamEPS4_NS_15CodeGenFileTypeEbPNS_28MachineModuleInfoWrapperPassE, ptr @_ZN4llvm24CodeGenTargetMachineImpl17addPassesToEmitMCERNS_6legacy15PassManagerBaseERPNS_9MCContextERNS_17raw_pwrite_streamEb, ptr @_ZNK4llvm13TargetMachine31targetSchedulesPostRASchedulingEv, ptr @_ZNK4llvm13TargetMachine15getSjLjDataSizeEv, ptr @_ZNK4llvm13TargetMachine34getAddressSpaceForPseudoSourceKindEj, ptr @_ZN4llvm13TargetMachine11splitModuleERNS_6ModuleEjNS_12function_refIFvSt10unique_ptrIS1_St14default_deleteIS1_EEEEE, ptr @_ZN4llvm18SparcTargetMachine16createPassConfigERNS_6legacy15PassManagerBaseE, ptr @_ZN4llvm13TargetMachine20buildCodeGenPipelineERNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS2_JEEEJEEERS4_RNS_17raw_pwrite_streamEPS8_NS_15CodeGenFileTypeERKNS_19CGPassBuilderOptionERNS_9MCContextEPNS_28PassInstrumentationCallbacksE, ptr @_ZNK4llvm13TargetMachine22isMachineVerifierCleanEv, ptr @_ZN4llvm24CodeGenTargetMachineImpl13addAsmPrinterERNS_6legacy15PassManagerBaseERNS_17raw_pwrite_streamEPS4_NS_15CodeGenFileTypeERNS_9MCContextE, ptr @_ZN4llvm24CodeGenTargetMachineImpl16createMCStreamerERNS_17raw_pwrite_streamEPS1_NS_15CodeGenFileTypeERNS_9MCContextE, ptr @_ZNK4llvm13TargetMachine21usesPhysRegsForValuesEv, ptr @_ZNK4llvm13TargetMachine7useIPRAEv, ptr @_ZNK4llvm13TargetMachine27unqualifiedInlineAsmVariantEv, ptr @_ZNK4llvm13TargetMachine35registerMachineRegisterInfoCallbackERNS_15MachineFunctionE, ptr @_ZNK4llvm13TargetMachine28clearLinkerOptimizationHintsERKNS_15SmallPtrSetImplIPNS_12MachineInstrEEE, ptr @_ZNK4llvm13TargetMachine16canLowerCondLoopEv, ptr @_ZN4llvm24CodeGenTargetMachineImpl5resetEv] }, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"target-cpu\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"tune-cpu\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"target-features\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"use-soft-float\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"+soft-float\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c",+soft-float\00", align 1
@_ZTVN4llvm20SparcV8TargetMachineE = unnamed_addr constant { [38 x ptr] } { [38 x ptr] [ptr null, ptr null, ptr @_ZN4llvm18SparcTargetMachineD2Ev, ptr @_ZN4llvm20SparcV8TargetMachineD0Ev, ptr @_ZNK4llvm18SparcTargetMachine16getSubtargetImplERKNS_8FunctionE, ptr @_ZNK4llvm18SparcTargetMachine18getObjFileLoweringEv, ptr @_ZNK4llvm18SparcTargetMachine25createMachineFunctionInfoERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEERKNS_8FunctionEPKNS_19TargetSubtargetInfoE, ptr @_ZNK4llvm13TargetMachine22createMachineSchedulerEPNS_19MachineSchedContextE, ptr @_ZNK4llvm13TargetMachine26createPostMachineSchedulerEPNS_19MachineSchedContextE, ptr @_ZNK4llvm13TargetMachine25createDefaultFuncInfoYAMLEv, ptr @_ZNK4llvm13TargetMachine21convertFuncInfoToYAMLERKNS_15MachineFunctionE, ptr @_ZNK4llvm13TargetMachine24parseMachineFunctionInfoERKNS_4yaml19MachineFunctionInfoERNS_25PerFunctionMIParsingStateERNS_12SMDiagnosticERNS_7SMRangeE, ptr @_ZNK4llvm13TargetMachine19isNoopAddrSpaceCastEjj, ptr @_ZNK4llvm13TargetMachine19getAssumedAddrSpaceEPKNS_5ValueE, ptr @_ZNK4llvm13TargetMachine22getPredicatedAddrSpaceEPKNS_5ValueE, ptr @_ZNK4llvm18SparcTargetMachine22getTargetTransformInfoERKNS_8FunctionE, ptr @_ZN4llvm13TargetMachine28registerPassBuilderCallbacksERNS_11PassBuilderE, ptr @_ZN4llvm13TargetMachine33registerEarlyDefaultAliasAnalysesERNS_9AAManagerE, ptr @_ZN4llvm13TargetMachine28registerDefaultAliasAnalysesERNS_9AAManagerE, ptr @_ZN4llvm24CodeGenTargetMachineImpl19addPassesToEmitFileERNS_6legacy15PassManagerBaseERNS_17raw_pwrite_streamEPS4_NS_15CodeGenFileTypeEbPNS_28MachineModuleInfoWrapperPassE, ptr @_ZN4llvm24CodeGenTargetMachineImpl17addPassesToEmitMCERNS_6legacy15PassManagerBaseERPNS_9MCContextERNS_17raw_pwrite_streamEb, ptr @_ZNK4llvm13TargetMachine31targetSchedulesPostRASchedulingEv, ptr @_ZNK4llvm13TargetMachine15getSjLjDataSizeEv, ptr @_ZNK4llvm13TargetMachine34getAddressSpaceForPseudoSourceKindEj, ptr @_ZN4llvm13TargetMachine11splitModuleERNS_6ModuleEjNS_12function_refIFvSt10unique_ptrIS1_St14default_deleteIS1_EEEEE, ptr @_ZN4llvm18SparcTargetMachine16createPassConfigERNS_6legacy15PassManagerBaseE, ptr @_ZN4llvm13TargetMachine20buildCodeGenPipelineERNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS2_JEEEJEEERS4_RNS_17raw_pwrite_streamEPS8_NS_15CodeGenFileTypeERKNS_19CGPassBuilderOptionERNS_9MCContextEPNS_28PassInstrumentationCallbacksE, ptr @_ZNK4llvm13TargetMachine22isMachineVerifierCleanEv, ptr @_ZN4llvm24CodeGenTargetMachineImpl13addAsmPrinterERNS_6legacy15PassManagerBaseERNS_17raw_pwrite_streamEPS4_NS_15CodeGenFileTypeERNS_9MCContextE, ptr @_ZN4llvm24CodeGenTargetMachineImpl16createMCStreamerERNS_17raw_pwrite_streamEPS1_NS_15CodeGenFileTypeERNS_9MCContextE, ptr @_ZNK4llvm13TargetMachine21usesPhysRegsForValuesEv, ptr @_ZNK4llvm13TargetMachine7useIPRAEv, ptr @_ZNK4llvm13TargetMachine27unqualifiedInlineAsmVariantEv, ptr @_ZNK4llvm13TargetMachine35registerMachineRegisterInfoCallbackERNS_15MachineFunctionE, ptr @_ZNK4llvm13TargetMachine28clearLinkerOptimizationHintsERKNS_15SmallPtrSetImplIPNS_12MachineInstrEEE, ptr @_ZNK4llvm13TargetMachine16canLowerCondLoopEv, ptr @_ZN4llvm24CodeGenTargetMachineImpl5resetEv, ptr @_ZN4llvm20SparcV8TargetMachine6anchorEv] }, align 8
@_ZTVN4llvm20SparcV9TargetMachineE = unnamed_addr constant { [38 x ptr] } { [38 x ptr] [ptr null, ptr null, ptr @_ZN4llvm18SparcTargetMachineD2Ev, ptr @_ZN4llvm20SparcV9TargetMachineD0Ev, ptr @_ZNK4llvm18SparcTargetMachine16getSubtargetImplERKNS_8FunctionE, ptr @_ZNK4llvm18SparcTargetMachine18getObjFileLoweringEv, ptr @_ZNK4llvm18SparcTargetMachine25createMachineFunctionInfoERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEERKNS_8FunctionEPKNS_19TargetSubtargetInfoE, ptr @_ZNK4llvm13TargetMachine22createMachineSchedulerEPNS_19MachineSchedContextE, ptr @_ZNK4llvm13TargetMachine26createPostMachineSchedulerEPNS_19MachineSchedContextE, ptr @_ZNK4llvm13TargetMachine25createDefaultFuncInfoYAMLEv, ptr @_ZNK4llvm13TargetMachine21convertFuncInfoToYAMLERKNS_15MachineFunctionE, ptr @_ZNK4llvm13TargetMachine24parseMachineFunctionInfoERKNS_4yaml19MachineFunctionInfoERNS_25PerFunctionMIParsingStateERNS_12SMDiagnosticERNS_7SMRangeE, ptr @_ZNK4llvm13TargetMachine19isNoopAddrSpaceCastEjj, ptr @_ZNK4llvm13TargetMachine19getAssumedAddrSpaceEPKNS_5ValueE, ptr @_ZNK4llvm13TargetMachine22getPredicatedAddrSpaceEPKNS_5ValueE, ptr @_ZNK4llvm18SparcTargetMachine22getTargetTransformInfoERKNS_8FunctionE, ptr @_ZN4llvm13TargetMachine28registerPassBuilderCallbacksERNS_11PassBuilderE, ptr @_ZN4llvm13TargetMachine33registerEarlyDefaultAliasAnalysesERNS_9AAManagerE, ptr @_ZN4llvm13TargetMachine28registerDefaultAliasAnalysesERNS_9AAManagerE, ptr @_ZN4llvm24CodeGenTargetMachineImpl19addPassesToEmitFileERNS_6legacy15PassManagerBaseERNS_17raw_pwrite_streamEPS4_NS_15CodeGenFileTypeEbPNS_28MachineModuleInfoWrapperPassE, ptr @_ZN4llvm24CodeGenTargetMachineImpl17addPassesToEmitMCERNS_6legacy15PassManagerBaseERPNS_9MCContextERNS_17raw_pwrite_streamEb, ptr @_ZNK4llvm13TargetMachine31targetSchedulesPostRASchedulingEv, ptr @_ZNK4llvm13TargetMachine15getSjLjDataSizeEv, ptr @_ZNK4llvm13TargetMachine34getAddressSpaceForPseudoSourceKindEj, ptr @_ZN4llvm13TargetMachine11splitModuleERNS_6ModuleEjNS_12function_refIFvSt10unique_ptrIS1_St14default_deleteIS1_EEEEE, ptr @_ZN4llvm18SparcTargetMachine16createPassConfigERNS_6legacy15PassManagerBaseE, ptr @_ZN4llvm13TargetMachine20buildCodeGenPipelineERNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS2_JEEEJEEERS4_RNS_17raw_pwrite_streamEPS8_NS_15CodeGenFileTypeERKNS_19CGPassBuilderOptionERNS_9MCContextEPNS_28PassInstrumentationCallbacksE, ptr @_ZNK4llvm13TargetMachine22isMachineVerifierCleanEv, ptr @_ZN4llvm24CodeGenTargetMachineImpl13addAsmPrinterERNS_6legacy15PassManagerBaseERNS_17raw_pwrite_streamEPS4_NS_15CodeGenFileTypeERNS_9MCContextE, ptr @_ZN4llvm24CodeGenTargetMachineImpl16createMCStreamerERNS_17raw_pwrite_streamEPS1_NS_15CodeGenFileTypeERNS_9MCContextE, ptr @_ZNK4llvm13TargetMachine21usesPhysRegsForValuesEv, ptr @_ZNK4llvm13TargetMachine7useIPRAEv, ptr @_ZNK4llvm13TargetMachine27unqualifiedInlineAsmVariantEv, ptr @_ZNK4llvm13TargetMachine35registerMachineRegisterInfoCallbackERNS_15MachineFunctionE, ptr @_ZNK4llvm13TargetMachine28clearLinkerOptimizationHintsERKNS_15SmallPtrSetImplIPNS_12MachineInstrEEE, ptr @_ZNK4llvm13TargetMachine16canLowerCondLoopEv, ptr @_ZN4llvm24CodeGenTargetMachineImpl5resetEv, ptr @_ZN4llvm20SparcV9TargetMachine6anchorEv] }, align 8
@_ZTVN4llvm20SparcelTargetMachineE = unnamed_addr constant { [38 x ptr] } { [38 x ptr] [ptr null, ptr null, ptr @_ZN4llvm18SparcTargetMachineD2Ev, ptr @_ZN4llvm20SparcelTargetMachineD0Ev, ptr @_ZNK4llvm18SparcTargetMachine16getSubtargetImplERKNS_8FunctionE, ptr @_ZNK4llvm18SparcTargetMachine18getObjFileLoweringEv, ptr @_ZNK4llvm18SparcTargetMachine25createMachineFunctionInfoERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEERKNS_8FunctionEPKNS_19TargetSubtargetInfoE, ptr @_ZNK4llvm13TargetMachine22createMachineSchedulerEPNS_19MachineSchedContextE, ptr @_ZNK4llvm13TargetMachine26createPostMachineSchedulerEPNS_19MachineSchedContextE, ptr @_ZNK4llvm13TargetMachine25createDefaultFuncInfoYAMLEv, ptr @_ZNK4llvm13TargetMachine21convertFuncInfoToYAMLERKNS_15MachineFunctionE, ptr @_ZNK4llvm13TargetMachine24parseMachineFunctionInfoERKNS_4yaml19MachineFunctionInfoERNS_25PerFunctionMIParsingStateERNS_12SMDiagnosticERNS_7SMRangeE, ptr @_ZNK4llvm13TargetMachine19isNoopAddrSpaceCastEjj, ptr @_ZNK4llvm13TargetMachine19getAssumedAddrSpaceEPKNS_5ValueE, ptr @_ZNK4llvm13TargetMachine22getPredicatedAddrSpaceEPKNS_5ValueE, ptr @_ZNK4llvm18SparcTargetMachine22getTargetTransformInfoERKNS_8FunctionE, ptr @_ZN4llvm13TargetMachine28registerPassBuilderCallbacksERNS_11PassBuilderE, ptr @_ZN4llvm13TargetMachine33registerEarlyDefaultAliasAnalysesERNS_9AAManagerE, ptr @_ZN4llvm13TargetMachine28registerDefaultAliasAnalysesERNS_9AAManagerE, ptr @_ZN4llvm24CodeGenTargetMachineImpl19addPassesToEmitFileERNS_6legacy15PassManagerBaseERNS_17raw_pwrite_streamEPS4_NS_15CodeGenFileTypeEbPNS_28MachineModuleInfoWrapperPassE, ptr @_ZN4llvm24CodeGenTargetMachineImpl17addPassesToEmitMCERNS_6legacy15PassManagerBaseERPNS_9MCContextERNS_17raw_pwrite_streamEb, ptr @_ZNK4llvm13TargetMachine31targetSchedulesPostRASchedulingEv, ptr @_ZNK4llvm13TargetMachine15getSjLjDataSizeEv, ptr @_ZNK4llvm13TargetMachine34getAddressSpaceForPseudoSourceKindEj, ptr @_ZN4llvm13TargetMachine11splitModuleERNS_6ModuleEjNS_12function_refIFvSt10unique_ptrIS1_St14default_deleteIS1_EEEEE, ptr @_ZN4llvm18SparcTargetMachine16createPassConfigERNS_6legacy15PassManagerBaseE, ptr @_ZN4llvm13TargetMachine20buildCodeGenPipelineERNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS2_JEEEJEEERS4_RNS_17raw_pwrite_streamEPS8_NS_15CodeGenFileTypeERKNS_19CGPassBuilderOptionERNS_9MCContextEPNS_28PassInstrumentationCallbacksE, ptr @_ZNK4llvm13TargetMachine22isMachineVerifierCleanEv, ptr @_ZN4llvm24CodeGenTargetMachineImpl13addAsmPrinterERNS_6legacy15PassManagerBaseERNS_17raw_pwrite_streamEPS4_NS_15CodeGenFileTypeERNS_9MCContextE, ptr @_ZN4llvm24CodeGenTargetMachineImpl16createMCStreamerERNS_17raw_pwrite_streamEPS1_NS_15CodeGenFileTypeERNS_9MCContextE, ptr @_ZNK4llvm13TargetMachine21usesPhysRegsForValuesEv, ptr @_ZNK4llvm13TargetMachine7useIPRAEv, ptr @_ZNK4llvm13TargetMachine27unqualifiedInlineAsmVariantEv, ptr @_ZNK4llvm13TargetMachine35registerMachineRegisterInfoCallbackERNS_15MachineFunctionE, ptr @_ZNK4llvm13TargetMachine28clearLinkerOptimizationHintsERKNS_15SmallPtrSetImplIPNS_12MachineInstrEEE, ptr @_ZNK4llvm13TargetMachine16canLowerCondLoopEv, ptr @_ZN4llvm24CodeGenTargetMachineImpl5resetEv, ptr @_ZN4llvm20SparcelTargetMachine6anchorEv] }, align 8
@_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl6OptionE = external unnamed_addr constant { [13 x ptr] }, align 8
@.str.9 = private unnamed_addr constant [43 x i8] c"Target does not support the tiny CodeModel\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"Target does not support the kernel CodeModel\00", align 1
@_ZTVN12_GLOBAL__N_115SparcPassConfigE = internal unnamed_addr constant { [56 x ptr] } { [56 x ptr] [ptr null, ptr null, ptr @_ZN4llvm16TargetPassConfigD2Ev, ptr @_ZN12_GLOBAL__N_115SparcPassConfigD0Ev, ptr @_ZNK4llvm4Pass11getPassNameEv, ptr @_ZN4llvm4Pass16doInitializationERNS_6ModuleE, ptr @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE, ptr @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE, ptr @_ZNK4llvm10ModulePass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN4llvm10ModulePass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE, ptr @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE, ptr @_ZNK4llvm10ModulePass27getPotentialPassManagerTypeEv, ptr @_ZNK4llvm4Pass16getAnalysisUsageERNS_13AnalysisUsageE, ptr @_ZN4llvm4Pass13releaseMemoryEv, ptr @_ZN4llvm13ImmutablePass18getAsImmutablePassEv, ptr @_ZN4llvm4Pass18getAsPMDataManagerEv, ptr @_ZNK4llvm4Pass14verifyAnalysisEv, ptr @_ZN4llvm4Pass17dumpPassStructureEj, ptr @_ZN4llvm13ImmutablePass11runOnModuleERNS_6ModuleE, ptr @_ZN4llvm13ImmutablePass14initializePassEv, ptr @_ZN12_GLOBAL__N_115SparcPassConfig11addIRPassesEv, ptr @_ZN4llvm16TargetPassConfig17addCodeGenPrepareEv, ptr @_ZN4llvm16TargetPassConfig14addISelPrepareEv, ptr @_ZN12_GLOBAL__N_115SparcPassConfig15addInstSelectorEv, ptr @_ZN4llvm16TargetPassConfig15addIRTranslatorEv, ptr @_ZN4llvm16TargetPassConfig23addPreLegalizeMachineIREv, ptr @_ZN4llvm16TargetPassConfig20addLegalizeMachineIREv, ptr @_ZN4llvm16TargetPassConfig19addPreRegBankSelectEv, ptr @_ZN4llvm16TargetPassConfig16addRegBankSelectEv, ptr @_ZN4llvm16TargetPassConfig29addPreGlobalInstructionSelectEv, ptr @_ZN4llvm16TargetPassConfig26addGlobalInstructionSelectEv, ptr @_ZN4llvm16TargetPassConfig16addMachinePassesEv, ptr @_ZNK4llvm16TargetPassConfig38reportDiagnosticWhenGlobalISelFallbackEv, ptr @_ZNK4llvm16TargetPassConfig17isGISelCSEEnabledEv, ptr @_ZNK4llvm16TargetPassConfig12getCSEConfigEv, ptr @_ZN4llvm16TargetPassConfig10addPreISelEv, ptr @_ZN4llvm16TargetPassConfig25addMachineSSAOptimizationEv, ptr @_ZN4llvm16TargetPassConfig10addILPOptsEv, ptr @_ZN4llvm16TargetPassConfig14addPreRegAllocEv, ptr @_ZN4llvm16TargetPassConfig29createTargetRegisterAllocatorEb, ptr @_ZN4llvm16TargetPassConfig15addFastRegAllocEv, ptr @_ZN4llvm16TargetPassConfig20addOptimizedRegAllocEv, ptr @_ZN4llvm16TargetPassConfig13addPreRewriteEv, ptr @_ZN4llvm16TargetPassConfig26addPostFastRegAllocRewriteEv, ptr @_ZN4llvm16TargetPassConfig14addPostRewriteEv, ptr @_ZN4llvm16TargetPassConfig15addPostRegAllocEv, ptr @_ZN4llvm16TargetPassConfig26addMachineLateOptimizationEv, ptr @_ZN4llvm16TargetPassConfig12addPreSched2Ev, ptr @_ZN4llvm16TargetPassConfig11addGCPassesEv, ptr @_ZN4llvm16TargetPassConfig17addBlockPlacementEv, ptr @_ZN12_GLOBAL__N_115SparcPassConfig14addPreEmitPassEv, ptr @_ZN4llvm16TargetPassConfig17addPostBBSectionsEv, ptr @_ZN4llvm16TargetPassConfig15addPreEmitPass2Ev, ptr @_ZN4llvm16TargetPassConfig18createRegAllocPassEb, ptr @_ZN4llvm16TargetPassConfig26addRegAssignAndRewriteFastEv, ptr @_ZN4llvm16TargetPassConfig31addRegAssignAndRewriteOptimizedEv] }, align 8
@_ZN4llvm22BranchRelaxationPassIDE = external local_unnamed_addr constant ptr, align 8
@.str.12 = private unnamed_addr constant [39 x i8] c"buildCodeGenPipeline is not overridden\00", align 1
@_ZTVN4llvm2cl11OptionValueIbEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm2cl6parserIbEE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN4llvm24SparcELFTargetObjectFileE = external unnamed_addr constant { [38 x ptr] }, align 8
@.str.13 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTVN4llvm24SparcMachineFunctionInfoE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN4llvm12SparcTTIImplE = external unnamed_addr constant { [211 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_SparcTargetMachine.cpp, ptr null }]

@_ZN4llvm18SparcTargetMachineC1ERKNS_6TargetERKNS_6TripleENS_9StringRefES7_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESB_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEb = unnamed_addr alias void (ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i32, i1), ptr @_ZN4llvm18SparcTargetMachineC2ERKNS_6TargetERKNS_6TripleENS_9StringRefES7_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESB_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEb
@_ZN4llvm18SparcTargetMachineD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4llvm18SparcTargetMachineD2Ev
@_ZN4llvm20SparcV8TargetMachineC1ERKNS_6TargetERKNS_6TripleENS_9StringRefES7_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESB_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEb = unnamed_addr alias void (ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i32, i1), ptr @_ZN4llvm20SparcV8TargetMachineC2ERKNS_6TargetERKNS_6TripleENS_9StringRefES7_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESB_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEb
@_ZN4llvm20SparcV9TargetMachineC1ERKNS_6TargetERKNS_6TripleENS_9StringRefES7_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESB_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEb = unnamed_addr alias void (ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i32, i1), ptr @_ZN4llvm20SparcV9TargetMachineC2ERKNS_6TargetERKNS_6TripleENS_9StringRefES7_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESB_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEb
@_ZN4llvm20SparcelTargetMachineC1ERKNS_6TargetERKNS_6TripleENS_9StringRefES7_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESB_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEb = unnamed_addr alias void (ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i32, i1), ptr @_ZN4llvm20SparcelTargetMachineC2ERKNS_6TargetERKNS_6TripleENS_9StringRefES7_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESB_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEb

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @LLVMInitializeSparcTarget() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm17getTheSparcTargetEv() #16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr @_ZN4llvm21RegisterTargetMachineINS_20SparcV8TargetMachineEE9AllocatorERKNS_6TargetERKNS_6TripleENS_9StringRefES9_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESD_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEb, ptr %i.b, align 8, !tbaa !8
  %i.c = tail call noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm19getTheSparcV9TargetEv() #16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr @_ZN4llvm21RegisterTargetMachineINS_20SparcV9TargetMachineEE9AllocatorERKNS_6TargetERKNS_6TripleENS_9StringRefES9_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESD_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEb, ptr %i.d, align 8, !tbaa !8
  %i.e = tail call noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm19getTheSparcelTargetEv() #16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr @_ZN4llvm21RegisterTargetMachineINS_20SparcelTargetMachineEE9AllocatorERKNS_6TargetERKNS_6TripleENS_9StringRefES9_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESD_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEb, ptr %i.f, align 8, !tbaa !8
  %i.g = tail call noundef ptr @_ZN4llvm12PassRegistry15getPassRegistryEv() #16 ; 3 uses
  tail call void @_ZN4llvm29initializeSparcAsmPrinterPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %i.g) #16
  tail call void @_ZN4llvm37initializeSparcDAGToDAGISelLegacyPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %i.g) #16
  tail call void @_ZN4llvm30initializeErrataWorkaroundPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %i.g) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm17getTheSparcTargetEv() local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm19getTheSparcV9TargetEv() local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm19getTheSparcelTargetEv() local_unnamed_addr #2

declare noundef ptr @_ZN4llvm12PassRegistry15getPassRegistryEv() local_unnamed_addr #2

declare void @_ZN4llvm29initializeSparcAsmPrinterPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #2

declare void @_ZN4llvm37initializeSparcDAGToDAGISelLegacyPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #2

declare void @_ZN4llvm30initializeErrataWorkaroundPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #16, !inline_history !18 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !19, !range !22, !noundef !23
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24
  tail call void @free(ptr noundef %i.i) #16
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #16
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18SparcTargetMachineC2ERKNS_6TargetERKNS_6TripleENS_9StringRefES7_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESB_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEb(ptr noundef nonnull align 8 dereferenceable(1760) %0, ptr noundef nonnull align 8 dereferenceable(264) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::StringRef") align 8 captures(none) %5, ptr noundef nonnull align 8 dereferenceable(440) %6, i64 %7, i64 %8, i32 noundef %9, i1 noundef zeroext %10) unnamed_addr #0 align 2 {
bb.a:
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @_ZNK4llvm6Triple17computeDataLayoutB5cxx11ENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr nonnull @.str.2, i64 0) #16
  %i.a = load ptr, ptr %11, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !31
  store ptr %3, ptr %12, align 8, !tbaa !32
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !33
  %.sroa.0.0.extract.trunc.i = trunc i64 %7 to i32
  %i.d = and i64 %7, 4294967296
  %.not.i = icmp eq i64 %i.d, 0
  %.0.i.i = select i1 %.not.i, i32 0, i32 %.sroa.0.0.extract.trunc.i ; 2 uses
  %i.e = and i64 %8, 4294967296
  %.not6.i = icmp eq i64 %i.e, 0
  br i1 %.not6.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.extract.trunc.i16 = trunc i64 %8 to i32 ; 2 uses
  switch i32 %.sroa.0.0.extract.trunc.i16, label %_ZL26getEffectiveSparcCodeModelSt8optionalIN4llvm9CodeModel5ModelEENS0_5Reloc5ModelEbb.exit [
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.9, i1 noundef zeroext false) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.10, i1 noundef zeroext false) #17
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !34
  %i.h = icmp ne i32 %i.g, 32                     ; 2 uses
  %brmerge.i = or i1 %10, %i.h
  %.mux.i = select i1 %i.h, i32 1, i32 4
  br i1 %brmerge.i, label %_ZL26getEffectiveSparcCodeModelSt8optionalIN4llvm9CodeModel5ModelEENS0_5Reloc5ModelEbb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp eq i32 %.0.i.i, 1
  %i.j = select i1 %i.i, i32 1, i32 3
  br label %_ZL26getEffectiveSparcCodeModelSt8optionalIN4llvm9CodeModel5ModelEENS0_5Reloc5ModelEbb.exit

_ZL26getEffectiveSparcCodeModelSt8optionalIN4llvm9CodeModel5ModelEENS0_5Reloc5ModelEbb.exit: ; preds = %bb.b, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.j, %bb.f ], [ %.mux.i, %bb.e ], [ %.sroa.0.0.extract.trunc.i16, %bb.b ]
  call void @_ZN4llvm24CodeGenTargetMachineImplC2ERKNS_6TargetENS_9StringRefERKNS_6TripleES4_S4_RKNS_13TargetOptionsENS_5Reloc5ModelENS_9CodeModel5ModelENS_15CodeGenOptLevelE(ptr noundef nonnull align 8 dereferenceable(1728) %0, ptr noundef nonnull align 8 dereferenceable(264) %1, ptr %i.a, i64 %i.c, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %12, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %5, ptr noundef nonnull align 8 dereferenceable(440) %6, i32 noundef %.0.i.i, i32 noundef %.0.i, i32 noundef %9) #16
  %i.k = load ptr, ptr %11, align 8, !tbaa !27    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt10unique_ptrIN4llvm24SparcELFTargetObjectFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZL26getEffectiveSparcCodeModelSt8optionalIN4llvm9CodeModel5ModelEENS0_5Reloc5ModelEbb.exit
  %i.n = load i64, ptr %i.l, align 8, !tbaa !42
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #18
  br label %_ZNSt10unique_ptrIN4llvm24SparcELFTargetObjectFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm24SparcELFTargetObjectFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZL26getEffectiveSparcCodeModelSt8optionalIN4llvm9CodeModel5ModelEENS0_5Reloc5ModelEbb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  store ptr getelementptr inbounds nuw inrange(-16, 280) (i8, ptr @_ZTVN4llvm18SparcTargetMachineE, i64 16), ptr %0, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %i.q = call noalias noundef nonnull dereferenceable(1032) ptr @_Znwm(i64 noundef 1032) #19, !noalias !43 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 929
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1032) %i.q, i8 0, i64 1032, i1 false), !noalias !43
  store i8 1, ptr %i.r, align 1, !tbaa !46, !noalias !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 930
  store i8 1, ptr %i.s, align 2, !tbaa !58, !noalias !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 932
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 980
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(45) %i.t, i8 0, i64 45, i1 false), !noalias !43
  store i32 1, ptr %i.u, align 4, !tbaa !59, !noalias !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 984
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 1008
  store ptr %i.w, ptr %i.v, align 8, !tbaa !24, !noalias !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 992
  store i32 2, ptr %i.x, align 16, !tbaa !64, !noalias !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 1000
  store i8 1, ptr %i.y, align 8, !tbaa !19, !noalias !43
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4llvm24SparcELFTargetObjectFileE, i64 16), ptr %i.q, align 16, !tbaa !14, !noalias !43
  store ptr %i.q, ptr %i.p, align 8, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1752
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.z, i8 0, i64 16, i1 false)
  store i32 16, ptr %i.aa, align 8, !tbaa !68
  call void @_ZN4llvm24CodeGenTargetMachineImpl11initAsmInfoEv(ptr noundef nonnull align 8 dereferenceable(1728) %0) #16
  ret void
}

declare void @_ZNK4llvm6Triple17computeDataLayoutB5cxx11ENS_9StringRefE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(56), ptr, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvm24CodeGenTargetMachineImplC2ERKNS_6TargetENS_9StringRefERKNS_6TripleES4_S4_RKNS_13TargetOptionsENS_5Reloc5ModelENS_9CodeModel5ModelENS_15CodeGenOptLevelE(ptr noundef nonnull align 8 dereferenceable(1728), ptr noundef nonnull align 8 dereferenceable(264), ptr, i64, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef byval(%"class.llvm::StringRef") align 8, ptr noundef byval(%"class.llvm::StringRef") align 8, ptr noundef nonnull align 8 dereferenceable(440), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

declare void @_ZN4llvm24CodeGenTargetMachineImpl11initAsmInfoEv(ptr noundef nonnull align 8 dereferenceable(1728)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvm13TargetMachineD2Ev(ptr noundef nonnull align 8 dead_on_return(1728) dereferenceable(1728)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18SparcTargetMachineD0Ev(ptr noundef nonnull align 8 dereferenceable(1760) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm18SparcTargetMachineD1Ev(ptr noundef nonnull align 8 dead_on_return(1760) dereferenceable(1760) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1760) #18
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm18SparcTargetMachine16getSubtargetImplERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(1760) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.llvm::Attribute", align 8   ; 4 uses
  %6 = alloca %"class.llvm::Attribute", align 8   ; 5 uses
  %7 = alloca %"class.llvm::Attribute", align 8   ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %11 = alloca %"class.llvm::Attribute", align 8  ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.g = tail call ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr nonnull @.str.3, i64 10) #16 ; 2 uses
  store ptr %i.g, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.h = tail call ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr nonnull @.str.4, i64 8) #16
  store ptr %i.h, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.i = tail call ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr nonnull @.str.5, i64 15) #16
  store ptr %i.i, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call { ptr, i64 } @_ZNK4llvm9Attribute16getValueAsStringEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #16 ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 3 uses
  %i.l = extractvalue { ptr, i64 } %i.j, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %.not.i = icmp eq ptr %i.k, null
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.m, ptr %8, align 8, !tbaa !74, !alias.scope !71
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !31, !alias.scope !71
  store i8 0, ptr %i.m, align 8, !tbaa !42, !alias.scope !71
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16, !noalias !71
  store i64 %i.l, ptr %i.f, align 8, !tbaa !33, !noalias !71
  %i.o = icmp ugt i64 %i.l, 15
  br i1 %i.o, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) #16 ; 2 uses
  store ptr %i.p, ptr %8, align 8, !tbaa !27, !alias.scope !71
  %i.q = load i64, ptr %i.f, align 8, !tbaa !33, !noalias !71
  store i64 %i.q, ptr %i.m, align 8, !tbaa !42, !alias.scope !71
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e, %bb.d
  %i.r = phi ptr [ %i.p, %bb.e ], [ %i.m, %bb.d ] ; 2 uses
  switch i64 %i.l, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.s = load i8, ptr %i.k, align 1, !tbaa !42
  store i8 %i.s, ptr %i.r, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %i.k, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.t = load i64, ptr %i.f, align 8, !tbaa !33, !noalias !71 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !31, !alias.scope !71
  %i.v = load ptr, ptr %8, align 8, !tbaa !27, !alias.scope !71
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16, !noalias !71
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.h:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.y, ptr %8, align 8, !tbaa !74
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !27   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i64 %i.ab, ptr %i.e, align 8, !tbaa !33
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %bb.i, label %._crit_edge.i.i

bb.i:                                             ; preds = %bb.h
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #16 ; 2 uses
  store ptr %i.ad, ptr %8, align 8, !tbaa !27
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !33
  store i64 %i.ae, ptr %i.y, align 8, !tbaa !42
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.i, %bb.h
  %i.af = phi ptr [ %i.ad, %bb.i ], [ %i.y, %bb.h ] ; 2 uses
  switch i64 %i.ab, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !42
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.z, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.j, %bb.k
  %i.ah = load i64, ptr %i.e, align 8, !tbaa !33  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !31
  %i.aj = load ptr, ptr %8, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.al = load ptr, ptr %6, align 8, !tbaa !75
  %.not45 = icmp eq ptr %i.al, null
  br i1 %.not45, label %bb.r, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.am = call { ptr, i64 } @_ZNK4llvm9Attribute16getValueAsStringEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #16 ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0      ; 3 uses
  %i.ao = extractvalue { ptr, i64 } %i.am, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %.not.i8 = icmp eq ptr %i.an, null
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.ap, ptr %9, align 8, !tbaa !74, !alias.scope !78
  br i1 %.not.i8, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !31, !alias.scope !78
  store i8 0, ptr %i.ap, align 8, !tbaa !42, !alias.scope !78
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit11

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16, !noalias !78
  store i64 %i.ao, ptr %i.d, align 8, !tbaa !33, !noalias !78
  %i.ar = icmp ugt i64 %i.ao, 15
  br i1 %i.ar, label %bb.o, label %._crit_edge.i.i.i9

bb.o:                                             ; preds = %bb.n
  %i.as = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #16 ; 2 uses
  store ptr %i.as, ptr %9, align 8, !tbaa !27, !alias.scope !78
  %i.at = load i64, ptr %i.d, align 8, !tbaa !33, !noalias !78
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !42, !alias.scope !78
  br label %._crit_edge.i.i.i9

end_hunk_0
