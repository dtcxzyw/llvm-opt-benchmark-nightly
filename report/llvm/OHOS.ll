Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OHOS?download=true
inline.NumInlined: 1604
inline.NumDeleted: 685
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0
%"struct.std::_Optional_base.70" = type { %"struct.std::_Optional_payload.72" }
%"struct.std::_Optional_payload.72" = type { %"struct.std::_Optional_payload.base.76", [7 x i8] }
%"struct.std::_Optional_payload.base.76" = type { %"struct.std::_Optional_payload_base.base.75" }
%"struct.std::_Optional_payload_base.base.75" = type <{ %"union.std::_Optional_payload_base<clang::driver::Multilib>::_Storage", i8 }>
%"union.std::_Optional_payload_base<clang::driver::Multilib>::_Storage" = type { %"class.clang::driver::Multilib" }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage" = type { [512 x i8] }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.llvm::SmallString.201" = type { %"class.llvm::SmallVector.202" }
%"class.llvm::SmallVector.202" = type { %"class.llvm::SmallVectorImpl.106", %"struct.llvm::SmallVectorStorage.203" }
%"class.llvm::SmallVectorImpl.106" = type { %"class.llvm::SmallVectorTemplateBase.107" }
%"class.llvm::SmallVectorTemplateBase.107" = type { %"class.llvm::SmallVectorTemplateCommon.108" }
%"class.llvm::SmallVectorTemplateCommon.108" = type { %"class.llvm::SmallVectorBase.109" }
%"class.llvm::SmallVectorBase.109" = type { ptr, i64, i64 }
%"struct.llvm::SmallVectorStorage.203" = type { [128 x i8] }
%"class.clang::DiagnosticBuilder" = type <{ %"class.clang::StreamingDiagnostic", ptr, %"class.clang::SourceLocation", i32, %"class.std::__cxx11::basic_string", i8, i8, [6 x i8] }>
%"class.clang::StreamingDiagnostic" = type { ptr, ptr }
%"class.clang::SourceLocation" = type { i32 }
%"class.llvm::opt::OptSpecifier" = type { i32 }
%"struct.clang::BoundArch" = type <{ %"class.llvm::StringRef", i32, [4 x i8] }>
%"class.llvm::SmallString.269" = type { %"class.llvm::SmallVector.270" }
%"class.llvm::SmallVector.270" = type { %"class.llvm::SmallVectorImpl.106", %"struct.llvm::SmallVectorStorage.271" }
%"struct.llvm::SmallVectorStorage.271" = type { [256 x i8] }
%"class.llvm::Triple" = type { %"class.std::__cxx11::basic_string", i32, i32, i32, i32, i32, i32 }
%"class.clang::ObjCRuntime" = type <{ i32, %"class.llvm::VersionTuple" }>
%"class.llvm::VersionTuple" = type { i64, i64 }

$_ZN5clang6driver11MultilibSetaSERKS1_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE9push_backERKS6_ = comdat any

$_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_ = comdat any

$_ZN5clang17DiagnosticBuilderD2Ev = comdat any

$_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE = comdat any

$_ZNK5clang6driver10toolchains4OHOS14buildAssemblerEv = comdat any

$_ZNK5clang6driver10toolchains4OHOS11buildLinkerEv = comdat any

$_ZN5clang6driver10toolchains4OHOSD2Ev = comdat any

$_ZN5clang6driver10toolchains4OHOSD0Ev = comdat any

$_ZNK5clang6driver9ToolChain12getAuxTripleEv = comdat any

$_ZNK5clang6driver9ToolChain23getSanitizerRequirementENS_13SanitizerMaskENS_9BoundArchE = comdat any

$_ZNK5clang6driver10toolchains4OHOS20HasNativeLLVMSupportEv = comdat any

$_ZNK5clang6driver9ToolChain15IsBlocksDefaultEv = comdat any

$_ZNK5clang6driver9ToolChain26IsIntegratedBackendDefaultEv = comdat any

$_ZNK5clang6driver9ToolChain28IsIntegratedBackendSupportedEv = comdat any

$_ZNK5clang6driver9ToolChain31IsNonIntegratedBackendSupportedEv = comdat any

$_ZNK5clang6driver9ToolChain28parseInlineAsmUsingAsmParserEv = comdat any

$_ZNK5clang6driver10toolchains4OHOS18IsMathErrnoDefaultEv = comdat any

$_ZNK5clang6driver9ToolChain37IsEncodeExtendedBlockSignatureDefaultEv = comdat any

$_ZNK5clang6driver9ToolChain26IsObjCNonFragileABIDefaultEv = comdat any

$_ZNK5clang6driver9ToolChain20UseObjCMixedDispatchEv = comdat any

$_ZNK5clang6driver9ToolChain29GetDefaultStackProtectorLevelEb = comdat any

$_ZNK5clang6driver9ToolChain28GetDefaultTrivialAutoVarInitEv = comdat any

$_ZNK5clang6driver10toolchains4OHOS16getDefaultLinkerEv = comdat any

$_ZNK5clang6driver10toolchains4OHOS24GetDefaultRuntimeLibTypeEv = comdat any

$_ZNK5clang6driver10toolchains4OHOS23GetDefaultCXXStdlibTypeEv = comdat any

$_ZNK5clang6driver10toolchains4OHOS23GetDefaultUnwindLibTypeEv = comdat any

$_ZNK5clang6driver9ToolChain30IsAArch64OutlineAtomicsDefaultERKN4llvm3opt7ArgListE = comdat any

$_ZNK5clang6driver10toolchains4OHOS12isPICDefaultEv = comdat any

$_ZNK5clang6driver10toolchains4OHOS12isPIEDefaultERKN4llvm3opt7ArgListE = comdat any

$_ZNK5clang6driver10toolchains4OHOS18isPICDefaultForcedEv = comdat any

$_ZNK5clang6driver9ToolChain17SupportsProfilingEv = comdat any

$_ZNK5clang6driver9ToolChain12CheckObjCARCEv = comdat any

$_ZNK5clang6driver9ToolChain21getDefaultDebugFormatEv = comdat any

$_ZNK5clang6driver9ToolChain18UseDwarfDebugFlagsEv = comdat any

$_ZNK5clang6driver9ToolChain27GetGlobalDebugPathRemappingB5cxx11Ev = comdat any

$_ZNK5clang6driver9ToolChain22GetDefaultDwarfVersionEv = comdat any

$_ZNK5clang6driver9ToolChain18getMaxDwarfVersionEv = comdat any

$_ZNK5clang6driver9ToolChain25GetDefaultStandaloneDebugEv = comdat any

$_ZNK5clang6driver9ToolChain34getDefaultDebugSimpleTemplateNamesEv = comdat any

$_ZNK5clang6driver9ToolChain24getDefaultDebuggerTuningEv = comdat any

$_ZNK5clang6driver9ToolChain23supportsDebugInfoOptionEPKN4llvm3opt3ArgE = comdat any

$_ZNK5clang6driver9ToolChain19adjustDebugInfoKindERN4llvm14codegenoptions13DebugInfoKindERKNS2_3opt7ArgListE = comdat any

$_ZNK5clang6driver9ToolChain23SupportsEmbeddedBitcodeEv = comdat any

$_ZNK5clang6driver9ToolChain14getThreadModelB5cxx11Ev = comdat any

$_ZNK5clang6driver9ToolChain11isBareMetalEv = comdat any

$_ZNK5clang6driver9ToolChain16hasBlocksRuntimeEv = comdat any

$_ZNK5clang6driver9ToolChain16addOffloadRTLibsEjRKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE = comdat any

$_ZNK5clang6driver9ToolChain20getDefaultSanitizersEv = comdat any

$_ZNK5clang6driver9ToolChain19canSplitThinLTOUnitEv = comdat any

$_ZNK5clang6driver9ToolChain29getDefaultDenormalModeForTypeERKN4llvm3opt7ArgListERKNS0_9JobActionEPKNS2_12fltSemanticsE = comdat any

$_ZN5clang6driver8MultilibD2Ev = comdat any

$_ZN5clang6driver11MultilibSetaSEOS1_ = comdat any

$_ZN5clang6driver11MultilibSetD2Ev = comdat any

$_ZN4llvm15SmallVectorImplIN5clang6driver11MultilibSet11FlagMatcherEEaSEOS5_ = comdat any

$_ZN4llvm15SmallVectorImplIN5clang6driver11MultilibSet11FlagMatcherEE12assignRemoteEOS5_ = comdat any

$_ZN5clang6driver11MultilibSet11FlagMatcheraSEOS2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN5clang6driver11MultilibSet11FlagMatcherELb0EE19moveElementsForGrowEPS4_ = comdat any

$_ZN4llvm15SmallVectorImplIN5clang6driver11custom_flag11DeclarationEEaSEOS5_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN5clang6driver11custom_flag11DeclarationELb0EE4growEm = comdat any

$_ZN4llvm11SmallVectorIN5clang6driver11custom_flag11ValueDetailELj1EED2Ev = comdat any

$_ZN4llvm11SmallVectorIN5clang6driver11MultilibSet11FlagMatcherELj1EED2Ev = comdat any

$_ZNSt6vectorIN5clang6driver8MultilibESaIS2_EEaSERKS4_ = comdat any

$_ZN5clang6driver8MultilibC2ERKS1_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_ = comdat any

$_ZN4llvm15SmallVectorImplIN5clang6driver11MultilibSet11FlagMatcherEEaSERKS5_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_ = comdat any

$_ZN4llvm15SmallVectorImplIN5clang6driver11custom_flag11DeclarationEEaSERKS5_ = comdat any

$_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_ = comdat any

$_ZN5clang17DiagnosticStorageD2Ev = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm15SmallVectorImplIN5clang6driver8MultilibEEaSERKS4_ = comdat any

$_ZN5clang6driver8MultilibC2EOS1_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE4growEm = comdat any

$_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE = comdat any

$_ZN5clang20DiagStorageAllocator8AllocateEv = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [16 x i8] c"arm-liteos-ohos\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"arm-linux-ohos\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"riscv32-linux-ohos\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"riscv64-linux-ohos\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"mipsel-linux-ohos\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"i686-linux-ohos\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"x86_64-linux-ohos\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"aarch64-linux-ohos\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"loongarch64-linux-ohos\00", align 1
@_ZTVN5clang6driver10toolchains4OHOSE = hidden unnamed_addr constant { [108 x ptr] } { [108 x ptr] [ptr null, ptr null, ptr @_ZNK5clang6driver10toolchains4OHOS14buildAssemblerEv, ptr @_ZNK5clang6driver10toolchains4OHOS11buildLinkerEv, ptr @_ZNK5clang6driver9ToolChain18buildStaticLibToolEv, ptr @_ZNK5clang6driver10toolchains11Generic_GCC7getToolENS0_6Action11ActionClassE, ptr @_ZNK5clang6driver9ToolChain23buildCompilerRTBasenameB5cxx11ERKN4llvm3opt7ArgListENS2_9StringRefENS1_8FileTypeEbb, ptr @_ZN5clang6driver10toolchains4OHOSD2Ev, ptr @_ZN5clang6driver10toolchains4OHOSD0Ev, ptr @_ZNK5clang6driver9ToolChain12getAuxTripleEv, ptr @_ZNK5clang6driver9ToolChain16getInputFilenameB5cxx11ERKNS0_9InputInfoE, ptr @_ZNK5clang6driver9ToolChain23getSanitizerRequirementENS_13SanitizerMaskENS_9BoundArchE, ptr @_ZNK5clang6driver10toolchains11Generic_GCC13TranslateArgsERKN4llvm3opt14DerivedArgListENS_9BoundArchENS0_6Action11OffloadKindE, ptr @_ZNK5clang6driver9ToolChain25TranslateOpenMPTargetArgsERKN4llvm3opt14DerivedArgListEbRNS2_15SmallVectorImplIPNS3_3ArgEEE, ptr @_ZNK5clang6driver9ToolChain18TranslateXarchArgsERKN4llvm3opt14DerivedArgListERPNS3_3ArgEPS4_PNS2_15SmallVectorImplIS8_EE, ptr @_ZNK5clang6driver9ToolChain18TranslateXarchArgsERKN4llvm3opt14DerivedArgListENS_9BoundArchENS0_6Action11OffloadKindEPNS2_15SmallVectorImplIPNS3_3ArgEEE, ptr @_ZNK5clang6driver9ToolChain10SelectToolERKNS0_9JobActionE, ptr @_ZNK5clang6driver10toolchains11Generic_GCC16printVerboseInfoERN4llvm11raw_ostreamE, ptr @_ZNK5clang6driver9ToolChain16isCrossCompilingEv, ptr @_ZNK5clang6driver10toolchains4OHOS20HasNativeLLVMSupportEv, ptr @_ZNK5clang6driver9ToolChain17getDefaultLTOModeEv, ptr @_ZNK5clang6driver9ToolChain10getLTOModeERKN4llvm3opt7ArgListENS0_6Action11OffloadKindE, ptr @_ZNK5clang6driver9ToolChain22LookupTypeForExtensionEN4llvm9StringRefE, ptr @_ZNK5clang6driver9ToolChain15IsBlocksDefaultEv, ptr @_ZNK5clang6driver10toolchains11Generic_GCC28IsIntegratedAssemblerDefaultEv, ptr @_ZNK5clang6driver9ToolChain26IsIntegratedBackendDefaultEv, ptr @_ZNK5clang6driver9ToolChain28IsIntegratedBackendSupportedEv, ptr @_ZNK5clang6driver9ToolChain31IsNonIntegratedBackendSupportedEv, ptr @_ZNK5clang6driver9ToolChain15useIntegratedAsEv, ptr @_ZNK5clang6driver9ToolChain20useIntegratedBackendEv, ptr @_ZNK5clang6driver9ToolChain28parseInlineAsmUsingAsmParserEv, ptr @_ZNK5clang6driver10toolchains4OHOS18IsMathErrnoDefaultEv, ptr @_ZNK5clang6driver9ToolChain37IsEncodeExtendedBlockSignatureDefaultEv, ptr @_ZNK5clang6driver9ToolChain26IsObjCNonFragileABIDefaultEv, ptr @_ZNK5clang6driver9ToolChain20UseObjCMixedDispatchEv, ptr @_ZNK5clang6driver9ToolChain19useRelaxRelocationsEv, ptr @_ZNK5clang6driver9ToolChain29GetDefaultStackProtectorLevelEb, ptr @_ZNK5clang6driver9ToolChain28GetDefaultTrivialAutoVarInitEv, ptr @_ZNK5clang6driver10toolchains4OHOS16getDefaultLinkerEv, ptr @_ZNK5clang6driver10toolchains4OHOS24GetDefaultRuntimeLibTypeEv, ptr @_ZNK5clang6driver10toolchains4OHOS23GetDefaultCXXStdlibTypeEv, ptr @_ZNK5clang6driver10toolchains4OHOS23GetDefaultUnwindLibTypeEv, ptr @_ZNK5clang6driver9ToolChain17getCompilerRTPathB5cxx11Ev, ptr @_ZNK5clang6driver10toolchains4OHOS13getCompilerRTB5cxx11ERKN4llvm3opt7ArgListENS3_9StringRefENS0_9ToolChain8FileTypeEb, ptr @_ZNK5clang6driver9ToolChain21addFortranRuntimeLibsERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver9ToolChain28addFortranRuntimeLibraryPathERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver10toolchains4OHOS23getArchSpecificLibPathsB5cxx11Ev, ptr @_ZNK5clang6driver9ToolChain12getOSLibNameEv, ptr @_ZNK5clang6driver10toolchains11Generic_GCC26getDefaultUnwindTableLevelERKN4llvm3opt7ArgListE, ptr @_ZNK5clang6driver9ToolChain30IsAArch64OutlineAtomicsDefaultERKN4llvm3opt7ArgListE, ptr @_ZNK5clang6driver10toolchains4OHOS12isPICDefaultEv, ptr @_ZNK5clang6driver10toolchains4OHOS12isPIEDefaultERKN4llvm3opt7ArgListE, ptr @_ZNK5clang6driver10toolchains4OHOS18isPICDefaultForcedEv, ptr @_ZNK5clang6driver9ToolChain17SupportsProfilingEv, ptr @_ZNK5clang6driver9ToolChain12CheckObjCARCEv, ptr @_ZNK5clang6driver9ToolChain21getDefaultDebugFormatEv, ptr @_ZNK5clang6driver9ToolChain18UseDwarfDebugFlagsEv, ptr @_ZNK5clang6driver9ToolChain27GetGlobalDebugPathRemappingB5cxx11Ev, ptr @_ZNK5clang6driver9ToolChain22GetDefaultDwarfVersionEv, ptr @_ZNK5clang6driver9ToolChain18getMaxDwarfVersionEv, ptr @_ZNK5clang6driver9ToolChain25GetDefaultStandaloneDebugEv, ptr @_ZNK5clang6driver9ToolChain34getDefaultDebugSimpleTemplateNamesEv, ptr @_ZNK5clang6driver9ToolChain24getDefaultDebuggerTuningEv, ptr @_ZNK5clang6driver9ToolChain23supportsDebugInfoOptionEPKN4llvm3opt3ArgE, ptr @_ZNK5clang6driver9ToolChain19adjustDebugInfoKindERN4llvm14codegenoptions13DebugInfoKindERKNS2_3opt7ArgListE, ptr @_ZNK5clang6driver9ToolChain17GetExceptionModelERKN4llvm3opt7ArgListE, ptr @_ZNK5clang6driver9ToolChain23SupportsEmbeddedBitcodeEv, ptr @_ZNK5clang6driver9ToolChain14getThreadModelB5cxx11Ev, ptr @_ZNK5clang6driver9ToolChain22isThreadModelSupportedEN4llvm9StringRefE, ptr @_ZNK5clang6driver9ToolChain11isBareMetalEv, ptr @_ZNK5clang6driver10toolchains4OHOS18getMultiarchTripleB5cxx11ERKNS0_6DriverERKN4llvm6TripleENS6_9StringRefE, ptr @_ZNK5clang6driver9ToolChain17ComputeLLVMTripleB5cxx11ERKN4llvm3opt7ArgListENS_9BoundArchENS0_5types2IDE, ptr @_ZNK5clang6driver9ToolChain27ComputeEffectiveClangTripleB5cxx11ERKN4llvm3opt7ArgListENS_9BoundArchENS0_5types2IDE, ptr @_ZNK5clang6driver9ToolChain21getDefaultObjCRuntimeEb, ptr @_ZNK5clang6driver9ToolChain16hasBlocksRuntimeEv, ptr @_ZNK5clang6driver10toolchains4OHOS14computeSysRootB5cxx11Ev, ptr @_ZNK5clang6driver10toolchains4OHOS25AddClangSystemIncludeArgsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver10toolchains11Generic_ELF21addClangTargetOptionsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEENS_9BoundArchENS0_6Action11OffloadKindE, ptr @_ZNK5clang6driver9ToolChain26addClangCC1ASTargetOptionsERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver9ToolChain22addClangWarningOptionsERN4llvm11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver10toolchains4OHOS17GetRuntimeLibTypeERKN4llvm3opt7ArgListE, ptr @_ZNK5clang6driver10toolchains4OHOS16GetCXXStdlibTypeERKN4llvm3opt7ArgListE, ptr @_ZNK5clang6driver10toolchains4OHOS16GetUnwindLibTypeERKN4llvm3opt7ArgListE, ptr @_ZNK5clang6driver9ToolChain14GetCStdlibTypeERKN4llvm3opt7ArgListE, ptr @_ZNK5clang6driver9ToolChain19detectLibcxxVersionB5cxx11EN4llvm9StringRefE, ptr @_ZNK5clang6driver10toolchains4OHOS28AddClangCXXStdlibIncludeArgsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver10toolchains4OHOS19AddCXXStdlibLibArgsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver9ToolChain18AddFilePathLibArgsERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver9ToolChain16AddCCKextLibArgsERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver9ToolChain26isFastMathRuntimeAvailableERKN4llvm3opt7ArgListERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK5clang6driver9ToolChain17getSystemGPUArchsB5cxx11ERKN4llvm3opt7ArgListE, ptr @_ZNK5clang6driver10toolchains4OHOS16addProfileRTLibsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver9ToolChain18AddCudaIncludeArgsERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver9ToolChain17AddHIPIncludeArgsERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver10toolchains11Generic_GCC18addSYCLIncludeArgsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver9ToolChain19AddIAMCUIncludeArgsERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver9ToolChain18computeMSVCVersionEPKNS0_6DriverERKN4llvm3opt7ArgListE, ptr @_ZNK5clang6driver9ToolChain13getDeviceLibsERKN4llvm3opt7ArgListENS_9BoundArchENS0_6Action11OffloadKindE, ptr @_ZNK5clang6driver9ToolChain16addOffloadRTLibsEjRKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver10toolchains4OHOS22getSupportedSanitizersENS_9BoundArchENS0_6Action11OffloadKindE, ptr @_ZNK5clang6driver9ToolChain20getDefaultSanitizersEv, ptr @_ZNK5clang6driver9ToolChain19canSplitThinLTOUnitEv, ptr @_ZNK5clang6driver9ToolChain29getDefaultDenormalModeForTypeERKN4llvm3opt7ArgListERKNS0_9JobActionEPKNS2_12fltSemanticsE, ptr @_ZNK5clang6driver10toolchains11Generic_GCC21addLibCxxIncludePathsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver10toolchains11Generic_GCC24addLibStdCxxIncludePathsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEE, ptr @_ZN5clang6driver10toolchains11Generic_ELF6anchorEv, ptr @_ZNK5clang6driver10toolchains4OHOS16getDynamicLinkerB5cxx11ERKN4llvm3opt7ArgListE, ptr @_ZNK5clang6driver10toolchains4OHOS12addExtraOptsERN4llvm11SmallVectorIPKcLj16EEE] }, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"usr\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"lib\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"OHOS\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"/usr/include/\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"/include\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"/usr/include\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"c++\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"-lc++\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"-lc++abi\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"-lunwind\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"sysroot\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"armeb\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"hf\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"/lib/ld-musl-\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c".so.1\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c".o\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c".a\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c".so\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"clang_rt.\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"now\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"relro\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"max-page-size=16384\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"max-page-size=4096\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"--hash-style=both\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"--enable-new-dtags\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.45 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"-mcpu=cortex-a7\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"-mfpu=neon-vfpv4\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"-mfloat-abi=soft\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"-mfloat-abi=softfp\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"-mfloat-abi=hard\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"/a7_soft\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"/a7_softfp_neon-vfpv4\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"/a7_hard_neon-vfpv4\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"__llvm_profile_runtime\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"GNU::Assembler\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"assembler\00", align 1
@_ZTVN5clang6driver5tools8gnutools9AssemblerE = external hidden unnamed_addr constant { [13 x ptr] }, align 8
@.str.60 = private unnamed_addr constant [12 x i8] c"GNU::Linker\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"linker\00", align 1
@_ZTVN5clang6driver5tools8gnutools6LinkerE = external hidden unnamed_addr constant { [13 x ptr] }, align 8
@.str.62 = private unnamed_addr constant [7 x i8] c"ld.lld\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"posix\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

@_ZN5clang6driver10toolchains4OHOSC1ERKNS0_6DriverERKN4llvm6TripleERKNS6_3opt7ArgListE = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN5clang6driver10toolchains4OHOSC2ERKNS0_6DriverERKN4llvm6TripleERKNS6_3opt7ArgListE

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK5clang6driver10toolchains4OHOS18getMultiarchTripleB5cxx11ERKN4llvm6TripleE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !31
  switch i32 %i.i, label %bb.b [
    i32 1, label %._crit_edge.i.i
    i32 38, label %._crit_edge.i.i
    i32 27, label %._crit_edge.i.i3
    i32 28, label %._crit_edge.i.i5
    i32 17, label %._crit_edge.i.i7
    i32 40, label %._crit_edge.i.i9
    i32 41, label %._crit_edge.i.i11
    i32 3, label %._crit_edge.i.i13
    i32 14, label %._crit_edge.i.i15
  ]

._crit_edge.i.i:                                  ; preds = %bb.a, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !215
  %i.l = icmp eq i32 %i.k, 41                     ; 2 uses
  %i.m = select i1 %i.l, ptr @.str, ptr @.str.1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !32
  %i.o = select i1 %i.l, i64 15, i64 14           ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.n, ptr noundef nonnull align 1 dereferenceable(14) %i.m, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  store i8 0, ptr %i.q, align 1, !tbaa !34
  br label %bb.f

._crit_edge.i.i3:                                 ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store i64 18, ptr %i.g, align 8, !tbaa !35
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) #14 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !36
  %i.t = load i64, ptr %i.g, align 8, !tbaa !35   ; 3 uses
  store i64 %i.t, ptr %i.r, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.s, ptr noundef nonnull align 1 dereferenceable(18) @.str.2, i64 18, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !33
  %i.v = load ptr, ptr %0, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  br label %bb.f

._crit_edge.i.i5:                                 ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store i64 18, ptr %i.f, align 8, !tbaa !35
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) #14 ; 2 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !36
  %i.z = load i64, ptr %i.f, align 8, !tbaa !35   ; 3 uses
  store i64 %i.z, ptr %i.x, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.y, ptr noundef nonnull align 1 dereferenceable(18) @.str.3, i64 18, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !33
  %i.ab = load ptr, ptr %0, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %bb.f

._crit_edge.i.i7:                                 ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store i64 17, ptr %i.e, align 8, !tbaa !35
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #14 ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !36
  %i.af = load i64, ptr %i.e, align 8, !tbaa !35  ; 3 uses
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ae, ptr noundef nonnull align 1 dereferenceable(17) @.str.4, i64 17, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !33
  %i.ah = load ptr, ptr %0, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.f

._crit_edge.i.i9:                                 ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.aj, ptr noundef nonnull align 1 dereferenceable(15) @.str.5, i64 15, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 15, ptr %i.ak, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %i.al, align 1, !tbaa !34
  br label %bb.f

._crit_edge.i.i11:                                ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i64 17, ptr %i.d, align 8, !tbaa !35
  %i.an = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #14 ; 2 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !36
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !35  ; 3 uses
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.an, ptr noundef nonnull align 1 dereferenceable(17) @.str.6, i64 17, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !33
  %i.aq = load ptr, ptr %0, align 8, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 0, ptr %i.ar, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %bb.f

._crit_edge.i.i13:                                ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i64 18, ptr %i.c, align 8, !tbaa !35
  %i.at = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #14 ; 2 uses
  store ptr %i.at, ptr %0, align 8, !tbaa !36
  %i.au = load i64, ptr %i.c, align 8, !tbaa !35  ; 3 uses
  store i64 %i.au, ptr %i.as, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.at, ptr noundef nonnull align 1 dereferenceable(18) @.str.7, i64 18, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !33
  %i.aw = load ptr, ptr %0, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.f

._crit_edge.i.i15:                                ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ay, ptr %0, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 22, ptr %i.b, align 8, !tbaa !35
  %i.az = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #14 ; 2 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !36
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !35  ; 3 uses
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.az, ptr noundef nonnull align 1 dereferenceable(22) @.str.8, i64 22, i1 false)
end_hunk_0
begin_hunk_1_@_ZNK5clang6driver10toolchains4OHOS16getDynamicLinkerB5cxx11ERKN4llvm3opt7ArgListE:bb.a
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.be) #14
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !33, !alias.scope !288
  %i.bg = add i64 %i.bf, -4611686018427387891
  %i.bh = icmp ult i64 %i.bg, 13
  br i1 %i.bh, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.q
  %i.bi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.31, i64 noundef 13) #14 ; 0 uses
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !33, !alias.scope !288
  %i.bk = sub i64 4611686018427387903, %i.bj
  %i.bl = icmp ult i64 %i.bk, %i.bb
  br i1 %i.bl, label %bb.s, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #17
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.ba, i64 noundef %i.bb) #14 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.bn = load i64, ptr %i.bd, align 8, !tbaa !33, !noalias !289
  %i.bo = add i64 %i.bn, -4611686018427387899
  %i.bp = icmp ult i64 %i.bo, 5
  br i1 %i.bp, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.t:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #17, !noalias !289
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.bq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.32, i64 noundef 5) #14, !noalias !289 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.br, ptr %0, align 8, !tbaa !32, !alias.scope !289
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !36 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 5 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !33 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 16
  call void @llvm.assume(i1 %i.bx)
  %i.by = add nuw nsw i64 %i.bw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.br, ptr noundef nonnull align 8 dereferenceable(1) %i.bt, i64 %i.by, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.bs, ptr %0, align 8, !tbaa !36, !alias.scope !289
  %i.bz = load i64, ptr %i.bt, align 8, !tbaa !34
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !34, !alias.scope !289
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.pre.i6 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !33
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  %i.ca = phi i64 [ %i.bw, %bb.u ], [ %.pre.i6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !33, !alias.scope !289
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !36
  store i64 0, ptr %i.cb, align 8, !tbaa !33
  store i8 0, ptr %i.bt, align 8, !tbaa !34
  %i.cd = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bc
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.cf = load i64, ptr %i.bc, align 8, !tbaa !34
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.ch = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.d
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.cj = load i64, ptr %i.d, align 8, !tbaa !34
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

declare { ptr, i64 } @_ZNK4llvm6Triple11getArchNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

declare noundef i32 @_ZN5clang6driver5tools3arm14getARMFloatABIERKNS0_9ToolChainERKN4llvm3opt7ArgListE(ptr noundef nonnull align 8 dereferenceable(2568), ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK5clang6driver10toolchains4OHOS13getCompilerRTB5cxx11ERKN4llvm3opt7ArgListENS3_9StringRefENS0_9ToolChain8FileTypeEb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(5328) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr %3, i64 %4, i32 noundef %5, i1 zeroext %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.llvm::SmallString.201", align 8 ; 12 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 9 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !139, !nonnull !56, !align !140 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.g = load i64, ptr %i.f, align 8, !tbaa !33   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  store ptr %i.h, ptr %7, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i64 0, ptr %i.i, align 8, !tbaa !141
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 128, ptr %i.j, align 8, !tbaa !65
  %i.k = icmp ugt i64 %i.g, 128
  br i1 %i.k, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(152) %7, ptr noundef nonnull %i.h, i64 noundef %i.g, i64 noundef 1) #14
  %.pre8.pre.i.i.i = load i64, ptr %i.i, align 8, !tbaa !141
  %.pre = load ptr, ptr %7, align 8, !tbaa !64
  br label %bb.b

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp samesign eq i64 %i.g, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i
  %i.l = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i ], [ %i.h, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ]
  %.pre8.i.i4.i = phi i64 [ %.pre8.pre.i.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.pre8.i.i4.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.e, i64 %i.g, i1 false)
  %.pre.i.i.i = load i64, ptr %i.i, align 8, !tbaa !141
  br label %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit

_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit: ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i, %bb.b
  %i.n = phi i64 [ 0, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ], [ %.pre.i.i.i, %bb.b ]
  %i.o = add i64 %i.n, %i.g
  store i64 %i.o, ptr %i.i, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.q, align 1, !tbaa !54
  store ptr @.str.11, ptr %8, align 8, !tbaa !34
  store i8 3, ptr %i.p, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZNK5clang6driver10toolchains4OHOS18getMultiarchTripleB5cxx11ERKN4llvm6TripleE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(56) %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 4, ptr %i.s, align 8, !tbaa !53
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.t, align 1, !tbaa !54
  store ptr %10, ptr %9, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 5136
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 4, ptr %i.v, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.w, align 1, !tbaa !54
  store ptr %i.u, ptr %11, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i16 257, ptr %i.x, align 8
  call void @_ZN4llvm3sys4path6appendERNS_15SmallVectorImplIcEERKNS_5TwineES7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr noundef nonnull align 8 dereferenceable(34) %11, ptr noundef nonnull align 8 dereferenceable(34) %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.y = load ptr, ptr %10, align 8, !tbaa !36    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !34
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %switch.selectcmp = icmp eq i32 %5, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.34, ptr @.str.33
  %switch.selectcmp6 = icmp eq i32 %5, 2
  %switch.select7 = select i1 %switch.selectcmp6, ptr @.str.35, ptr %switch.select ; 2 uses
  %i.ad = icmp eq i32 %5, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr @.str.36, ptr %15, align 8
  br label %_ZN4llvmplERKNS_5TwineES2_.exit23

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr @.str.11, ptr %15, align 8, !alias.scope !302
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @.str.36, ptr %i.ae, align 8, !alias.scope !302
  br label %_ZN4llvmplERKNS_5TwineES2_.exit23

_ZN4llvmplERKNS_5TwineES2_.exit23:                ; preds = %bb.c, %bb.d
  %.014.i.i12 = phi i8 [ 3, %bb.c ], [ 2, %bb.d ]
  %.sink = phi i8 [ 1, %bb.c ], [ 3, %bb.d ]
  %.sroa.05.0.i.i13 = phi ptr [ @.str.36, %bb.c ], [ %15, %bb.d ]
  %.sroa.756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 3, ptr %.sroa.756.0..sroa_idx, align 8, !tbaa !303
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 %.sink, ptr %.sroa.11.0..sroa_idx, align 1, !tbaa !303
  store ptr %.sroa.05.0.i.i13, ptr %14, align 8, !alias.scope !304
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %3, ptr %i.af, align 8, !alias.scope !304
  %.sroa.2.0..sroa_idx.i.i.i22 = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i.i.i22, align 8, !tbaa !34, !alias.scope !304
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 %.014.i.i12, ptr %i.ag, align 8, !tbaa !53, !alias.scope !304
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 5, ptr %i.ah, align 1, !tbaa !54, !alias.scope !304
  %i.ai = load i8, ptr %switch.select7, align 1, !tbaa !34
  %.not.i24 = icmp eq i8 %i.ai, 0
  br i1 %.not.i24, label %bb.e, label %_ZN4llvm5TwineC2EPKc.exit26

bb.e:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(40) %14, i64 40, i1 false), !tbaa.struct !305
  br label %_ZN4llvmplERKNS_5TwineES2_.exit41

_ZN4llvm5TwineC2EPKc.exit26:                      ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit23
  store ptr %14, ptr %13, align 8, !alias.scope !306
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %switch.select7, ptr %i.aj, align 8, !alias.scope !306
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 2, ptr %i.ak, align 8, !tbaa !53, !alias.scope !306
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 3, ptr %i.al, align 1, !tbaa !54, !alias.scope !306
  br label %_ZN4llvmplERKNS_5TwineES2_.exit41

_ZN4llvmplERKNS_5TwineES2_.exit41:                ; preds = %bb.e, %_ZN4llvm5TwineC2EPKc.exit26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  %i.am = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i16 257, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i16 257, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  %i.ao = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i16 257, ptr %i.ao, align 8
  call void @_ZN4llvm3sys4path6appendERNS_15SmallVectorImplIcEERKNS_5TwineES7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(34) %13, ptr noundef nonnull align 8 dereferenceable(34) %16, ptr noundef nonnull align 8 dereferenceable(34) %17, ptr noundef nonnull align 8 dereferenceable(34) %18) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  %i.ap = load ptr, ptr %7, align 8, !tbaa !64    ; 3 uses
  %i.aq = load i64, ptr %i.i, align 8, !tbaa !141 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !32
  %i.as = icmp eq ptr %i.ap, null
  %i.at = icmp ne i64 %i.aq, 0
  %or.cond.i.i.i = and i1 %i.as, %i.at
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit41
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.45) #17
  unreachable

bb.g:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.aq, ptr %i.a, align 8, !tbaa !35
  %i.au = icmp ugt i64 %i.aq, 15
  br i1 %i.au, label %bb.h, label %._crit_edge.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.av = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #14 ; 2 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !36
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !35
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !34
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.h, %bb.g
  %i.ax = phi ptr [ %i.av, %bb.h ], [ %i.ar, %bb.g ] ; 2 uses
  switch i64 %i.aq, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ay = load i8, ptr %i.ap, align 1, !tbaa !34
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.ap, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.i, %bb.j
  %i.az = load i64, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !33
  %i.bb = load ptr, ptr %0, align 8, !tbaa !36
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 0, ptr %i.bc, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.bd = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.h
  br i1 %i.be, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  call void @free(ptr noundef %i.bd) #14
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK5clang6driver10toolchains4OHOS12addExtraOptsERN4llvm11SmallVectorIPKcLj16EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5328) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 24 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 8 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !49
  %.not.i = icmp ult i32 %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !61

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.37)
  %.pre = load i32, ptr %i.a, align 8, !tbaa !48
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = load ptr, ptr %1, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  store ptr @.str.37, ptr %i.g, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !48
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %i.a, align 8, !tbaa !48
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit: ; preds = %bb.b, %bb.c
  %i.j = phi i32 [ %.pre, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !49
  %.not.i9 = icmp ult i32 %i.j, %i.k
  br i1 %.not.i9, label %bb.e, label %bb.d, !prof !61

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.38)
  %.pre23 = load i32, ptr %i.a, align 8, !tbaa !48
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit10

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit
  %i.l = zext i32 %i.j to i64
  %i.m = load ptr, ptr %1, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  store ptr @.str.38, ptr %i.n, align 1
  %i.o = load i32, ptr %i.a, align 8, !tbaa !48
  %i.p = add i32 %i.o, 1                          ; 2 uses
  store i32 %i.p, ptr %i.a, align 8, !tbaa !48
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit10

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit10: ; preds = %bb.d, %bb.e
  %i.q = phi i32 [ %.pre23, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !49
  %.not.i11 = icmp ult i32 %i.q, %i.r
  br i1 %.not.i11, label %bb.g, label %bb.f, !prof !61

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit10
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.37)
  %.pre24 = load i32, ptr %i.a, align 8, !tbaa !48
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit12

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit10
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %1, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr @.str.37, ptr %i.u, align 1
  %i.v = load i32, ptr %i.a, align 8, !tbaa !48
  %i.w = add i32 %i.v, 1                          ; 2 uses
  store i32 %i.w, ptr %i.a, align 8, !tbaa !48
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit12

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit12: ; preds = %bb.f, %bb.g
  %i.x = phi i32 [ %.pre24, %bb.f ], [ %i.w, %bb.g ] ; 2 uses
  %i.y = load i32, ptr %i.c, align 4, !tbaa !49
  %.not.i13 = icmp ult i32 %i.x, %i.y
  br i1 %.not.i13, label %bb.i, label %bb.h, !prof !61

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit12
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.39)
  %.pre25 = load i32, ptr %i.a, align 8, !tbaa !48
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit14

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit12
  %i.z = zext i32 %i.x to i64
  %i.aa = load ptr, ptr %1, align 8, !tbaa !47
end_hunk_1
