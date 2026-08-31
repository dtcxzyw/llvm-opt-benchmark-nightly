Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AIX?download=true
inline.NumInlined: 1519
inline.NumDeleted: 629
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0
$_ZNK5clang6driver10toolchains3AIX12isPICDefaultEv = comdat any

$_ZNK5clang6driver10toolchains3AIX12isPIEDefaultERKN4llvm3opt7ArgListE = comdat any

$_ZNK5clang6driver10toolchains3AIX18isPICDefaultForcedEv = comdat any

$_ZNK5clang6driver9ToolChain17SupportsProfilingEv = comdat any

$_ZNK5clang6driver9ToolChain12CheckObjCARCEv = comdat any

$_ZNK5clang6driver9ToolChain21getDefaultDebugFormatEv = comdat any

$_ZNK5clang6driver9ToolChain18UseDwarfDebugFlagsEv = comdat any

$_ZNK5clang6driver9ToolChain27GetGlobalDebugPathRemappingB5cxx11Ev = comdat any

$_ZNK5clang6driver10toolchains3AIX22GetDefaultDwarfVersionEv = comdat any

$_ZNK5clang6driver9ToolChain18getMaxDwarfVersionEv = comdat any

$_ZNK5clang6driver9ToolChain25GetDefaultStandaloneDebugEv = comdat any

$_ZNK5clang6driver9ToolChain34getDefaultDebugSimpleTemplateNamesEv = comdat any

$_ZNK5clang6driver10toolchains3AIX24getDefaultDebuggerTuningEv = comdat any

$_ZNK5clang6driver9ToolChain23supportsDebugInfoOptionEPKN4llvm3opt3ArgE = comdat any

$_ZNK5clang6driver9ToolChain19adjustDebugInfoKindERN4llvm14codegenoptions13DebugInfoKindERKNS2_3opt7ArgListE = comdat any

$_ZNK5clang6driver9ToolChain23SupportsEmbeddedBitcodeEv = comdat any

$_ZNK5clang6driver9ToolChain14getThreadModelB5cxx11Ev = comdat any

$_ZNK5clang6driver9ToolChain11isBareMetalEv = comdat any

$_ZNK5clang6driver9ToolChain18getMultiarchTripleB5cxx11ERKNS0_6DriverERKN4llvm6TripleENS5_9StringRefE = comdat any

$_ZNK5clang6driver9ToolChain16hasBlocksRuntimeEv = comdat any

$_ZNK5clang6driver9ToolChain16addOffloadRTLibsEjRKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE = comdat any

$_ZNK5clang6driver9ToolChain20getDefaultSanitizersEv = comdat any

$_ZNK5clang6driver9ToolChain19canSplitThinLTOUnitEv = comdat any

$_ZNK5clang6driver9ToolChain29getDefaultDenormalModeForTypeERKN4llvm3opt7ArgListERKNS0_9JobActionEPKNS2_12fltSemanticsE = comdat any

$_ZN5clang17DiagnosticStorageD2Ev = comdat any

$_ZN5clang6driver7Command12setBoundArchENS_9BoundArchE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang6driver7CommandESt14default_deleteIS4_EELb0EE4growEm = comdat any

$_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDES5_EEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_ = comdat any

$_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDES5_EEEPNS0_3ArgEDpT_ = comdat any

$_ZNSt8_Rb_treeIN4llvm9StringRefES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_ = comdat any

$_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE = comdat any

$_ZN5clang20DiagStorageAllocator8AllocateEv = comdat any

$_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDES5_S5_S5_EEEPNS0_3ArgEDpT_ = comdat any

$_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDES5_S5_S5_EEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE4growEm = comdat any

$_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDES5_S5_EEEPNS0_3ArgEDpT_ = comdat any

$_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDES5_S5_EEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_ = comdat any

$_ZZN4llvm13hexDigitValueEcE3LUT = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [5 x i8] c"-a32\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-a64\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"-many\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"as\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"-bnso\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"-bM:SRE\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"-bnoentry\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"-bforceimprw\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"-bdbg:namedsects:ss\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"-bdbg:ldrinfo:xcoff_binary_id:0x\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"-b32\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"-bpT:0x10000000\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"-bpD:0x20000000\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"-b64\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"-bpT:0x100000000\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"-bpD:0x110000000\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"crti.o\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"crti_64.o\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"-bcdtors:mbr:0:s\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"libpath:\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"-rpath\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"-blibpath:\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"-Wl,\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"-Xlinker \00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"/usr/lib:/lib\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"/llvm-nm\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"CreateExportList\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"--export-symbols\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"-X\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"64\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"-bE:\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"-lomp\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"-liomp5\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"-lgomp\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"-lpthreads\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"-lm\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"-lc\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"-L\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"/lib/profiled\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"/usr/lib/profiled\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"-lpthread\00", align 1
@_ZTVN5clang6driver10toolchains3AIXE = hidden unnamed_addr constant { [103 x ptr] } { [103 x ptr] [ptr null, ptr null, ptr @_ZNK5clang6driver10toolchains3AIX14buildAssemblerEv, ptr @_ZNK5clang6driver10toolchains3AIX11buildLinkerEv, ptr @_ZNK5clang6driver9ToolChain18buildStaticLibToolEv, ptr @_ZNK5clang6driver9ToolChain7getToolENS0_6Action11ActionClassE, ptr @_ZNK5clang6driver9ToolChain23buildCompilerRTBasenameB5cxx11ERKN4llvm3opt7ArgListENS2_9StringRefENS1_8FileTypeEbb, ptr @_ZN5clang6driver9ToolChainD2Ev, ptr @_ZN5clang6driver10toolchains3AIXD0Ev, ptr @_ZNK5clang6driver9ToolChain12getAuxTripleEv, ptr @_ZNK5clang6driver9ToolChain16getInputFilenameB5cxx11ERKNS0_9InputInfoE, ptr @_ZNK5clang6driver9ToolChain23getSanitizerRequirementENS_13SanitizerMaskENS_9BoundArchE, ptr @_ZNK5clang6driver9ToolChain13TranslateArgsERKN4llvm3opt14DerivedArgListENS_9BoundArchENS0_6Action11OffloadKindE, ptr @_ZNK5clang6driver9ToolChain25TranslateOpenMPTargetArgsERKN4llvm3opt14DerivedArgListEbRNS2_15SmallVectorImplIPNS3_3ArgEEE, ptr @_ZNK5clang6driver9ToolChain18TranslateXarchArgsERKN4llvm3opt14DerivedArgListERPNS3_3ArgEPS4_PNS2_15SmallVectorImplIS8_EE, ptr @_ZNK5clang6driver9ToolChain18TranslateXarchArgsERKN4llvm3opt14DerivedArgListENS_9BoundArchENS0_6Action11OffloadKindEPNS2_15SmallVectorImplIPNS3_3ArgEEE, ptr @_ZNK5clang6driver9ToolChain10SelectToolERKNS0_9JobActionE, ptr @_ZNK5clang6driver9ToolChain16printVerboseInfoERN4llvm11raw_ostreamE, ptr @_ZNK5clang6driver9ToolChain16isCrossCompilingEv, ptr @_ZNK5clang6driver10toolchains3AIX20HasNativeLLVMSupportEv, ptr @_ZNK5clang6driver9ToolChain17getDefaultLTOModeEv, ptr @_ZNK5clang6driver9ToolChain10getLTOModeERKN4llvm3opt7ArgListENS0_6Action11OffloadKindE, ptr @_ZNK5clang6driver9ToolChain22LookupTypeForExtensionEN4llvm9StringRefE, ptr @_ZNK5clang6driver9ToolChain15IsBlocksDefaultEv, ptr @_ZNK5clang6driver9ToolChain28IsIntegratedAssemblerDefaultEv, ptr @_ZNK5clang6driver9ToolChain26IsIntegratedBackendDefaultEv, ptr @_ZNK5clang6driver9ToolChain28IsIntegratedBackendSupportedEv, ptr @_ZNK5clang6driver9ToolChain31IsNonIntegratedBackendSupportedEv, ptr @_ZNK5clang6driver9ToolChain15useIntegratedAsEv, ptr @_ZNK5clang6driver9ToolChain20useIntegratedBackendEv, ptr @_ZNK5clang6driver10toolchains3AIX28parseInlineAsmUsingAsmParserEv, ptr @_ZNK5clang6driver9ToolChain18IsMathErrnoDefaultEv, ptr @_ZNK5clang6driver9ToolChain37IsEncodeExtendedBlockSignatureDefaultEv, ptr @_ZNK5clang6driver9ToolChain26IsObjCNonFragileABIDefaultEv, ptr @_ZNK5clang6driver9ToolChain20UseObjCMixedDispatchEv, ptr @_ZNK5clang6driver9ToolChain19useRelaxRelocationsEv, ptr @_ZNK5clang6driver9ToolChain29GetDefaultStackProtectorLevelEb, ptr @_ZNK5clang6driver9ToolChain28GetDefaultTrivialAutoVarInitEv, ptr @_ZNK5clang6driver9ToolChain16getDefaultLinkerEv, ptr @_ZNK5clang6driver10toolchains3AIX24GetDefaultRuntimeLibTypeEv, ptr @_ZNK5clang6driver10toolchains3AIX23GetDefaultCXXStdlibTypeEv, ptr @_ZNK5clang6driver9ToolChain23GetDefaultUnwindLibTypeEv, ptr @_ZNK5clang6driver9ToolChain17getCompilerRTPathB5cxx11Ev, ptr @_ZNK5clang6driver9ToolChain13getCompilerRTB5cxx11ERKN4llvm3opt7ArgListENS2_9StringRefENS1_8FileTypeEb, ptr @_ZNK5clang6driver9ToolChain21addFortranRuntimeLibsERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver9ToolChain28addFortranRuntimeLibraryPathERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver10toolchains3AIX23getArchSpecificLibPathsB5cxx11Ev, ptr @_ZNK5clang6driver9ToolChain12getOSLibNameEv, ptr @_ZNK5clang6driver9ToolChain26getDefaultUnwindTableLevelERKN4llvm3opt7ArgListE, ptr @_ZNK5clang6driver9ToolChain30IsAArch64OutlineAtomicsDefaultERKN4llvm3opt7ArgListE, ptr @_ZNK5clang6driver10toolchains3AIX12isPICDefaultEv, ptr @_ZNK5clang6driver10toolchains3AIX12isPIEDefaultERKN4llvm3opt7ArgListE, ptr @_ZNK5clang6driver10toolchains3AIX18isPICDefaultForcedEv, ptr @_ZNK5clang6driver9ToolChain17SupportsProfilingEv, ptr @_ZNK5clang6driver9ToolChain12CheckObjCARCEv, ptr @_ZNK5clang6driver9ToolChain21getDefaultDebugFormatEv, ptr @_ZNK5clang6driver9ToolChain18UseDwarfDebugFlagsEv, ptr @_ZNK5clang6driver9ToolChain27GetGlobalDebugPathRemappingB5cxx11Ev, ptr @_ZNK5clang6driver10toolchains3AIX22GetDefaultDwarfVersionEv, ptr @_ZNK5clang6driver9ToolChain18getMaxDwarfVersionEv, ptr @_ZNK5clang6driver9ToolChain25GetDefaultStandaloneDebugEv, ptr @_ZNK5clang6driver9ToolChain34getDefaultDebugSimpleTemplateNamesEv, ptr @_ZNK5clang6driver10toolchains3AIX24getDefaultDebuggerTuningEv, ptr @_ZNK5clang6driver9ToolChain23supportsDebugInfoOptionEPKN4llvm3opt3ArgE, ptr @_ZNK5clang6driver9ToolChain19adjustDebugInfoKindERN4llvm14codegenoptions13DebugInfoKindERKNS2_3opt7ArgListE, ptr @_ZNK5clang6driver9ToolChain17GetExceptionModelERKN4llvm3opt7ArgListE, ptr @_ZNK5clang6driver9ToolChain23SupportsEmbeddedBitcodeEv, ptr @_ZNK5clang6driver9ToolChain14getThreadModelB5cxx11Ev, ptr @_ZNK5clang6driver9ToolChain22isThreadModelSupportedEN4llvm9StringRefE, ptr @_ZNK5clang6driver9ToolChain11isBareMetalEv, ptr @_ZNK5clang6driver9ToolChain18getMultiarchTripleB5cxx11ERKNS0_6DriverERKN4llvm6TripleENS5_9StringRefE, ptr @_ZNK5clang6driver9ToolChain17ComputeLLVMTripleB5cxx11ERKN4llvm3opt7ArgListENS_9BoundArchENS0_5types2IDE, ptr @_ZNK5clang6driver9ToolChain27ComputeEffectiveClangTripleB5cxx11ERKN4llvm3opt7ArgListENS_9BoundArchENS0_5types2IDE, ptr @_ZNK5clang6driver9ToolChain21getDefaultObjCRuntimeEb, ptr @_ZNK5clang6driver9ToolChain16hasBlocksRuntimeEv, ptr @_ZNK5clang6driver9ToolChain14computeSysRootB5cxx11Ev, ptr @_ZNK5clang6driver10toolchains3AIX25AddClangSystemIncludeArgsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver10toolchains3AIX21addClangTargetOptionsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEENS_9BoundArchENS0_6Action11OffloadKindE, ptr @_ZNK5clang6driver9ToolChain26addClangCC1ASTargetOptionsERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver9ToolChain22addClangWarningOptionsERN4llvm11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver9ToolChain17GetRuntimeLibTypeERKN4llvm3opt7ArgListE, ptr @_ZNK5clang6driver9ToolChain16GetCXXStdlibTypeERKN4llvm3opt7ArgListE, ptr @_ZNK5clang6driver9ToolChain16GetUnwindLibTypeERKN4llvm3opt7ArgListE, ptr @_ZNK5clang6driver9ToolChain14GetCStdlibTypeERKN4llvm3opt7ArgListE, ptr @_ZNK5clang6driver9ToolChain19detectLibcxxVersionB5cxx11EN4llvm9StringRefE, ptr @_ZNK5clang6driver10toolchains3AIX28AddClangCXXStdlibIncludeArgsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver10toolchains3AIX19AddCXXStdlibLibArgsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver10toolchains3AIX18AddFilePathLibArgsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver9ToolChain16AddCCKextLibArgsERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver9ToolChain26isFastMathRuntimeAvailableERKN4llvm3opt7ArgListERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK5clang6driver9ToolChain17getSystemGPUArchsB5cxx11ERKN4llvm3opt7ArgListE, ptr @_ZNK5clang6driver10toolchains3AIX16addProfileRTLibsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver9ToolChain18AddCudaIncludeArgsERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver9ToolChain17AddHIPIncludeArgsERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver9ToolChain18addSYCLIncludeArgsERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver9ToolChain19AddIAMCUIncludeArgsERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver9ToolChain18computeMSVCVersionEPKNS0_6DriverERKN4llvm3opt7ArgListE, ptr @_ZNK5clang6driver9ToolChain13getDeviceLibsERKN4llvm3opt7ArgListENS_9BoundArchENS0_6Action11OffloadKindE, ptr @_ZNK5clang6driver9ToolChain16addOffloadRTLibsEjRKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE, ptr @_ZNK5clang6driver9ToolChain22getSupportedSanitizersENS_9BoundArchENS0_6Action11OffloadKindE, ptr @_ZNK5clang6driver9ToolChain20getDefaultSanitizersEv, ptr @_ZNK5clang6driver9ToolChain19canSplitThinLTOUnitEv, ptr @_ZNK5clang6driver9ToolChain29getDefaultDenormalModeForTypeERKN4llvm3opt7ArgListERKNS0_9JobActionEPKNS2_12fltSemanticsE] }, align 8
@.str.50 = private unnamed_addr constant [9 x i8] c"/usr/lib\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"/lib\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"opt/IBM/openxlCSDK\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"openmp\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"ppc_wrappers\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"/usr/include\00", align 1
@.str.58 = private unnamed_addr constant [53 x i8] c"picking up libstdc++ headers is unimplemented on AIX\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"c++\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"v1\00", align 1
@.str.61 = private unnamed_addr constant [33 x i8] c"-D__LIBC_NO_CPP_MATH_OVERLOADS__\00", align 1
@.str.62 = private unnamed_addr constant [39 x i8] c"linking libstdc++ unimplemented on AIX\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"-lc++\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"-lc++experimental\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"-lc++abi\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"-msave-reg-params\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"-fxl-pragma-pack\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"-fno-sized-deallocation\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"-lcompiler_rt\00", align 1
@_ZTVN5clang6driver5tools3aix9AssemblerE = hidden unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr null, ptr @_ZN5clang6driver4ToolD2Ev, ptr @_ZN5clang6driver5tools3aix9AssemblerD0Ev, ptr @_ZNK5clang6driver4Tool22hasIntegratedAssemblerEv, ptr @_ZNK5clang6driver4Tool20hasIntegratedBackendEv, ptr @_ZNK5clang6driver4Tool9canEmitIREv, ptr @_ZNK5clang6driver5tools3aix9Assembler16hasIntegratedCPPEv, ptr @_ZNK5clang6driver4Tool9isLinkJobEv, ptr @_ZNK5clang6driver4Tool13isDsymutilJobEv, ptr @_ZNK5clang6driver4Tool18hasGoodDiagnosticsEv, ptr @_ZNK5clang6driver5tools3aix9Assembler12ConstructJobERNS0_11CompilationERKNS0_9JobActionERKNS0_9InputInfoERKN4llvm11SmallVectorIS9_Lj4EEERKNSC_3opt7ArgListEPKc, ptr @_ZNK5clang6driver4Tool27ConstructJobMultipleOutputsERNS0_11CompilationERKNS0_9JobActionERKN4llvm11SmallVectorINS0_9InputInfoELj4EEESC_RKNS7_3opt7ArgListEPKc] }, align 8
@_ZTVN5clang6driver5tools3aix6LinkerE = hidden unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr null, ptr @_ZN5clang6driver4ToolD2Ev, ptr @_ZN5clang6driver5tools3aix6LinkerD0Ev, ptr @_ZNK5clang6driver4Tool22hasIntegratedAssemblerEv, ptr @_ZNK5clang6driver4Tool20hasIntegratedBackendEv, ptr @_ZNK5clang6driver4Tool9canEmitIREv, ptr @_ZNK5clang6driver5tools3aix6Linker16hasIntegratedCPPEv, ptr @_ZNK5clang6driver5tools3aix6Linker9isLinkJobEv, ptr @_ZNK5clang6driver4Tool13isDsymutilJobEv, ptr @_ZNK5clang6driver4Tool18hasGoodDiagnosticsEv, ptr @_ZNK5clang6driver5tools3aix6Linker12ConstructJobERNS0_11CompilationERKNS0_9JobActionERKNS0_9InputInfoERKN4llvm11SmallVectorIS9_Lj4EEERKNSC_3opt7ArgListEPKc, ptr @_ZNK5clang6driver4Tool27ConstructJobMultipleOutputsERNS0_11CompilationERKNS0_9JobActionERKN4llvm11SmallVectorINS0_9InputInfoELj4EEESC_RKNS7_3opt7ArgListEPKc] }, align 8
@.str.73 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZZN4llvm13hexDigitValueEcE3LUT = linkonce_odr local_unnamed_addr constant [256 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], comdat, align 16
@.str.74 = private unnamed_addr constant [8 x i8] c"gcrt0.o\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"gcrt0_64.o\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"mcrt0.o\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"mcrt0_64.o\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"crt0.o\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"crt0_64.o\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"-mtocdata\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"-mno-tocdata\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"-mno-tocdata=\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"-mtocdata=\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.92 = private unnamed_addr constant [23 x i8] c"__llvm_profile_runtime\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"aix::Assembler\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"assembler\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"aix::Linker\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"linker\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"ld\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"posix\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

@_ZN5clang6driver10toolchains3AIXC1ERKNS0_6DriverERKN4llvm6TripleERKNS6_3opt7ArgListE = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN5clang6driver10toolchains3AIXC2ERKNS0_6DriverERKN4llvm6TripleERKNS6_3opt7ArgListE

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK5clang6driver5tools3aix9Assembler12ConstructJobERNS0_11CompilationERKNS0_9JobActionERKNS0_9InputInfoERKN4llvm11SmallVectorIS9_Lj4EEERKNSC_3opt7ArgListEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(552) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %4, ptr noundef nonnull align 8 dereferenceable(176) %5, ptr nofree readnone captures(none) %6) unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.std::unique_ptr.145", align 8 ; 9 uses
  %8 = alloca %"class.llvm::ArrayRef", align 8    ; 5 uses
  %9 = alloca %"class.llvm::ArrayRef", align 8    ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.llvm::SmallVector.80", align 8 ; 21 uses
  %11 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8, !nonnull !13, !align !14 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15, !nonnull !13, !align !14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.f, ptr %10, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 18 uses
  store i32 0, ptr %i.g, align 8, !tbaa !103
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 6 uses
  store i32 16, ptr %i.h, align 4, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = call noundef zeroext i1 @_ZNK4llvm6Triple11isArch32BitEv(ptr noundef nonnull align 8 dereferenceable(56) %i.i) #17
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !8, !nonnull !13, !align !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = call noundef zeroext i1 @_ZNK4llvm6Triple11isArch64BitEv(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #17 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !105
  %i.p = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %i.o, i32 noundef 2270) ; 3 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !152, !noalias !197, !nonnull !13, !align !14
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %11, ptr noundef nonnull align 8 dereferenceable(15256) %i.q, i32 0, i32 noundef 511) #17
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.r, align 8, !tbaa !200
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !201
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %11, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 936
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.t, ptr %12, align 8, !tbaa !205, !alias.scope !202
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !206, !noalias !202 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 944
  %i.w = load i64, ptr %i.v, align 8, !tbaa !207, !noalias !202 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !202
  store i64 %i.w, ptr %i.a, align 8, !tbaa !201, !noalias !202
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #17 ; 2 uses
  store ptr %i.y, ptr %12, align 8, !tbaa !206, !alias.scope !202
  %i.z = load i64, ptr %i.a, align 8, !tbaa !201, !noalias !202
  store i64 %i.z, ptr %i.t, align 8, !tbaa !208, !alias.scope !202
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %bb.b
  %i.aa = phi ptr [ %i.y, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  switch i64 %i.w, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNK5clang6driver6Driver15getTargetTripleB5cxx11Ev.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !208
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !208
  br label %_ZNK5clang6driver6Driver15getTargetTripleB5cxx11Ev.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %_ZNK5clang6driver6Driver15getTargetTripleB5cxx11Ev.exit

_ZNK5clang6driver6Driver15getTargetTripleB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !201, !noalias !202 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !207, !alias.scope !202
  %i.ae = load ptr, ptr %12, align 8, !tbaa !206, !alias.scope !202
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !202
  %i.ag = load ptr, ptr %12, align 8, !tbaa !206
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !207
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %11, ptr %i.ag, i64 %i.ah)
  %i.ai = load ptr, ptr %12, align 8, !tbaa !206  ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.t
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK5clang6driver6Driver15getTargetTripleB5cxx11Ev.exit
  %i.ak = load i64, ptr %i.t, align 8, !tbaa !208
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK5clang6driver6Driver15getTargetTripleB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.am = load i32, ptr %i.g, align 8, !tbaa !103 ; 3 uses
  %i.an = load i32, ptr %i.h, align 4, !tbaa !104
  %.not.i = icmp ult i32 %i.am, %i.an             ; 2 uses
  br i1 %i.j, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !209

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit

bb.i:                                             ; preds = %bb.g
  %i.ao = zext i32 %i.am to i64
  %i.ap = load ptr, ptr %10, align 8, !tbaa !102
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  store ptr @.str, ptr %i.aq, align 1
  %i.ar = load i32, ptr %i.g, align 8, !tbaa !103
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.g, align 8, !tbaa !103
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit

bb.j:                                             ; preds = %bb.f
  br i1 %.not.i, label %bb.l, label %bb.k, !prof !209

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.1)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit

bb.l:                                             ; preds = %bb.j
  %i.at = zext i32 %i.am to i64
  %i.au = load ptr, ptr %10, align 8, !tbaa !102
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  store ptr @.str.1, ptr %i.av, align 1
  %i.aw = load i32, ptr %i.g, align 8, !tbaa !103
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.g, align 8, !tbaa !103
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit: ; preds = %bb.l, %bb.k, %bb.i, %bb.h
  %i.ay = load i32, ptr %i.g, align 8, !tbaa !103 ; 2 uses
  %i.az = load i32, ptr %i.h, align 4, !tbaa !104
  %.not.i27 = icmp ult i32 %i.ay, %i.az
  br i1 %.not.i27, label %bb.n, label %bb.m, !prof !209

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.2)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit28

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit
  %i.ba = zext i32 %i.ay to i64
  %i.bb = load ptr, ptr %10, align 8, !tbaa !102
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  store ptr @.str.2, ptr %i.bc, align 1
  %i.bd = load i32, ptr %i.g, align 8, !tbaa !103
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.g, align 8, !tbaa !103
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit28

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit28: ; preds = %bb.m, %bb.n
  call void @_ZNK4llvm3opt7ArgList15AddAllArgValuesERNS_11SmallVectorIPKcLj16EEENS0_12OptSpecifierES7_S7_(ptr noundef nonnull align 8 dereferenceable(176) %5, ptr noundef nonnull align 8 dereferenceable(144) %10, i32 3622, i32 3706, i32 0) #17
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !210
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.o, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit32

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit28
  %i.bi = load i32, ptr %i.g, align 8, !tbaa !103 ; 2 uses
  %i.bj = load i32, ptr %i.h, align 4, !tbaa !104
  %.not.i29 = icmp ult i32 %i.bi, %i.bj
  br i1 %.not.i29, label %bb.q, label %bb.p, !prof !209

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.3)
  %.pre = load i32, ptr %i.g, align 8, !tbaa !103
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit30

bb.q:                                             ; preds = %bb.o
  %i.bk = zext i32 %i.bi to i64
  %i.bl = load ptr, ptr %10, align 8, !tbaa !102
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk
  store ptr @.str.3, ptr %i.bm, align 1
  %i.bn = load i32, ptr %i.g, align 8, !tbaa !103
  %i.bo = add i32 %i.bn, 1                        ; 2 uses
  store i32 %i.bo, ptr %i.g, align 8, !tbaa !103
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit30

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit30: ; preds = %bb.p, %bb.q
  %i.bp = phi i32 [ %.pre, %bb.p ], [ %i.bo, %bb.q ] ; 2 uses
  %i.bq = load ptr, ptr %3, align 8, !tbaa !208   ; 2 uses
  %i.br = load i32, ptr %i.h, align 4, !tbaa !104
  %.not.i31 = icmp ult i32 %i.bp, %i.br
  br i1 %.not.i31, label %bb.s, label %bb.r, !prof !209

bb.r:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit30
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.bq)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit32

bb.s:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit30
  %i.bs = zext i32 %i.bp to i64
  %i.bt = load ptr, ptr %10, align 8, !tbaa !102
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bs
  store ptr %i.bq, ptr %i.bu, align 1
  %i.bv = load i32, ptr %i.g, align 8, !tbaa !103
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.g, align 8, !tbaa !103
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit32

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit32: ; preds = %bb.s, %bb.r, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit28
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.by = load ptr, ptr %4, align 8, !tbaa !102   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !210
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %bb.t, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit34

bb.t:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit32
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !208 ; 2 uses
  %i.cd = load i32, ptr %i.g, align 8, !tbaa !103 ; 2 uses
  %i.ce = load i32, ptr %i.h, align 4, !tbaa !104
  %.not.i33 = icmp ult i32 %i.cd, %i.ce
end_hunk_0
begin_hunk_1_@_ZN5clang17DiagnosticBuilderD2Ev:bb.a
  %i.i = tail call noundef zeroext i1 @_ZN5clang17DiagnosticsEngine14EmitDiagnosticERKNS_17DiagnosticBuilderEb(ptr noundef nonnull align 8 dereferenceable(15256) %i.e, ptr noundef nonnull align 8 dereferenceable(66) %0, i1 noundef zeroext %i.h) #17 ; 0 uses
  store ptr null, ptr %i.d, align 8, !tbaa !258
  store i8 0, ptr %i.a, align 8, !tbaa !251
  store i8 0, ptr %i.f, align 1, !tbaa !259
  br label %_ZN5clang17DiagnosticBuilder4EmitEv.exit

_ZN5clang17DiagnosticBuilder4EmitEv.exit:         ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !206  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5clang17DiagnosticBuilder4EmitEv.exit
  %i.n = load i64, ptr %i.l, align 8, !tbaa !208
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5clang17DiagnosticBuilder4EmitEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.p = load ptr, ptr %0, align 8, !tbaa !260    ; 6 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZN5clang19StreamingDiagnosticD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !261  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZN5clang19StreamingDiagnosticD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = icmp uge ptr %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 14848 ; 2 uses
  %i.u = icmp ule ptr %i.p, %i.t
  %or.cond.i.i.i.i = select i1 %i.s, i1 %i.u, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 14976 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !262  ; 2 uses
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !262
  %i.y = zext i32 %i.w to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.y
  store ptr %i.p, ptr %i.z, align 8, !tbaa !264
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.p) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 928) #18
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit

_ZN5clang19StreamingDiagnosticD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c, %bb.e, %bb.f
  ret void
}

declare void @_ZNK4llvm3opt7ArgList15AddAllArgValuesERNS_11SmallVectorIPKcLj16EEENS0_12OptSpecifierES7_S7_(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef nonnull align 8 dereferenceable(144), i32, i32, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(34) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallString.226", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !265
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !267
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 256, ptr %i.c, align 8, !tbaa !268
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.e = load i8, ptr %i.d, align 1, !tbaa !218
  %.not.i.i = icmp eq i8 %i.e, 1
  br i1 %.not.i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !215
  switch i8 %i.g, label %bb.g [
    i8 1, label %_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit
    i8 3, label %bb.c
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !208    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #17
  br label %_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.e:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %1, align 8, !tbaa !208    ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !206
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !207
  br label %_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.n = load ptr, ptr %1, align 8, !tbaa !208
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !208
  br label %_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.g:                                             ; preds = %bb.b, %bb.a
  call void @_ZNK4llvm5Twine8toVectorERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #17
  %i.q = load ptr, ptr %2, align 8, !tbaa !265
  %i.r = load i64, ptr %i.b, align 8, !tbaa !267
  br label %_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.3.0.i = phi i64 [ %i.r, %bb.g ], [ %i.p, %bb.f ], [ 0, %bb.b ], [ %i.m, %bb.e ], [ 0, %bb.c ], [ %i.i, %bb.d ]
  %.sroa.0.0.i = phi ptr [ %i.q, %bb.g ], [ %i.n, %bb.f ], [ null, %bb.b ], [ %i.k, %bb.e ], [ null, %bb.c ], [ %i.h, %bb.d ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !229
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr %.sroa.0.0.i, i64 %.sroa.3.0.i) #17
  %i.w = load ptr, ptr %2, align 8, !tbaa !265    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.a
  br i1 %i.x, label %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit
  call void @free(ptr noundef %i.w) #17
  br label %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit

_ZN4llvm11SmallVectorIcLj256EED2Ev.exit:          ; preds = %_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret ptr %i.v
}

declare void @_ZNK5clang6driver9ToolChain14GetProgramPathB5cxx11EPKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(2568), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK5clang6driver5tools3aix6Linker12ConstructJobERNS0_11CompilationERKNS0_9JobActionERKNS0_9InputInfoERKN4llvm11SmallVectorIS9_Lj4EEERKNSC_3opt7ArgListEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(552) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(176) %4, ptr noundef nonnull align 8 dereferenceable(176) %5, ptr nofree readnone captures(none) %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 18 uses
  %7 = alloca %"class.std::unique_ptr.145", align 8 ; 9 uses
  %8 = alloca %"class.llvm::ArrayRef", align 8    ; 5 uses
  %9 = alloca %"class.llvm::ArrayRef", align 8    ; 5 uses
  %10 = alloca %"class.std::unique_ptr.145", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %11 = alloca %"class.llvm::ArrayRef", align 8   ; 5 uses
  %12 = alloca %"class.llvm::ArrayRef", align 8   ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %13 = alloca %"class.llvm::SmallVector.80", align 8 ; 78 uses
  %14 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %17 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %20 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::vector.56", align 8   ; 8 uses
  %27 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::vector.56", align 8   ; 8 uses
  %30 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::vector.56", align 8   ; 8 uses
  %33 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %36 = alloca %"class.std::vector.56", align 8   ; 8 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %39 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %40 = alloca %"class.llvm::SmallVector.80", align 8 ; 18 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %42 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %43 = alloca %"class.std::vector.164", align 8  ; 9 uses
  %44 = alloca [3 x %"class.std::optional.177"], align 8 ; 24 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %46 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %47 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %48 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %49 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %50 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %51 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8, !nonnull !13, !align !14 ; 18 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15, !nonnull !13, !align !14 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.i, ptr %13, align 8, !tbaa !102
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 91 uses
  store i32 0, ptr %i.j, align 8, !tbaa !103
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 30 uses
  store i32 16, ptr %i.k, align 4, !tbaa !104
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  %i.m = call noundef zeroext i1 @_ZNK4llvm6Triple11isArch32BitEv(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #17 ; 6 uses
  %i.n = call noundef zeroext i1 @_ZNK4llvm6Triple11isArch64BitEv(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #17 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !105
  %i.q = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %i.p, i32 noundef 2270) ; 3 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !152, !noalias !269, !nonnull !13, !align !14
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %14, ptr noundef nonnull align 8 dereferenceable(15256) %i.r, i32 0, i32 noundef 511) #17
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.s, align 8, !tbaa !200
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !201
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %14, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 936
  %i.u = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.u, ptr %15, align 8, !tbaa !205, !alias.scope !272
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !206, !noalias !272 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 944
  %i.x = load i64, ptr %i.w, align 8, !tbaa !207, !noalias !272 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17, !noalias !272
  store i64 %i.x, ptr %i.d, align 8, !tbaa !201, !noalias !272
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.z = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #17 ; 2 uses
  store ptr %i.z, ptr %15, align 8, !tbaa !206, !alias.scope !272
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !201, !noalias !272
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !208, !alias.scope !272
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %bb.b
  %i.ab = phi ptr [ %i.z, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  switch i64 %i.x, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNK5clang6driver6Driver15getTargetTripleB5cxx11Ev.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !208
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !208
  br label %_ZNK5clang6driver6Driver15getTargetTripleB5cxx11Ev.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %_ZNK5clang6driver6Driver15getTargetTripleB5cxx11Ev.exit

_ZNK5clang6driver6Driver15getTargetTripleB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !201, !noalias !272 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !207, !alias.scope !272
  %i.af = load ptr, ptr %15, align 8, !tbaa !206, !alias.scope !272
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17, !noalias !272
  %i.ah = load ptr, ptr %15, align 8, !tbaa !206
  %i.ai = load i64, ptr %i.ae, align 8, !tbaa !207
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %14, ptr %i.ah, i64 %i.ai)
  %i.aj = load ptr, ptr %15, align 8, !tbaa !206  ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.u
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK5clang6driver6Driver15getTargetTripleB5cxx11Ev.exit
  %i.al = load i64, ptr %i.u, align 8, !tbaa !208
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK5clang6driver6Driver15getTargetTripleB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.an = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %5, i32 noundef 3512)
  %.not515 = icmp eq ptr %i.an, null
  br i1 %.not515, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load i32, ptr %i.j, align 8, !tbaa !103 ; 2 uses
  %i.ap = load i32, ptr %i.k, align 4, !tbaa !104
  %.not.i = icmp ult i32 %i.ao, %i.ap
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !209

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.5)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit

bb.i:                                             ; preds = %bb.g
  %i.aq = zext i32 %i.ao to i64
  %i.ar = load ptr, ptr %13, align 8, !tbaa !102
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  store ptr @.str.5, ptr %i.as, align 1
  %i.at = load i32, ptr %i.j, align 8, !tbaa !103
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.j, align 8, !tbaa !103
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit: ; preds = %bb.i, %bb.h, %bb.f
  %i.av = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %5, i32 noundef 3470)
  %.not516 = icmp eq ptr %i.av, null
  br i1 %.not516, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit155, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit
  %i.aw = load i32, ptr %i.j, align 8, !tbaa !103 ; 2 uses
  %i.ax = load i32, ptr %i.k, align 4, !tbaa !104
  %.not.i152 = icmp ult i32 %i.aw, %i.ax
  br i1 %.not.i152, label %bb.l, label %bb.k, !prof !209

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.6)
  %.pre = load i32, ptr %i.j, align 8, !tbaa !103
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit153

bb.l:                                             ; preds = %bb.j
  %i.ay = zext i32 %i.aw to i64
  %i.az = load ptr, ptr %13, align 8, !tbaa !102
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ay
  store ptr @.str.6, ptr %i.ba, align 1
  %i.bb = load i32, ptr %i.j, align 8, !tbaa !103
  %i.bc = add i32 %i.bb, 1                        ; 2 uses
  store i32 %i.bc, ptr %i.j, align 8, !tbaa !103
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit153

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit153: ; preds = %bb.k, %bb.l
  %i.bd = phi i32 [ %.pre, %bb.k ], [ %i.bc, %bb.l ] ; 2 uses
  %i.be = load i32, ptr %i.k, align 4, !tbaa !104
  %.not.i154 = icmp ult i32 %i.bd, %i.be
  br i1 %.not.i154, label %bb.n, label %bb.m, !prof !209

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit153
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.7)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit155

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit153
  %i.bf = zext i32 %i.bd to i64
  %i.bg = load ptr, ptr %13, align 8, !tbaa !102
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  store ptr @.str.7, ptr %i.bh, align 1
  %i.bi = load i32, ptr %i.j, align 8, !tbaa !103
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.j, align 8, !tbaa !103
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit155

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit155: ; preds = %bb.n, %bb.m, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit
  %i.bk = call noundef zeroext i1 @_ZNK4llvm3opt7ArgList7hasFlagENS0_12OptSpecifierES2_b(ptr noundef nonnull align 8 dereferenceable(176) %5, i32 3171, i32 2955, i1 noundef zeroext false) #17
  br i1 %i.bk, label %bb.o, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit157

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit155
  %i.bl = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %5, i32 noundef 3470)
  %.not517 = icmp eq ptr %i.bl, null
  br i1 %.not517, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !152, !noalias !275, !nonnull !13, !align !14
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %16, ptr noundef nonnull align 8 dereferenceable(15256) %i.bm, i32 0, i32 noundef 531) #17
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %16) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bn = load i32, ptr %i.j, align 8, !tbaa !103 ; 2 uses
  %i.bo = load i32, ptr %i.k, align 4, !tbaa !104
  %.not.i156 = icmp ult i32 %i.bn, %i.bo
  br i1 %.not.i156, label %bb.s, label %bb.r, !prof !209

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.8)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit157

bb.s:                                             ; preds = %bb.q
  %i.bp = zext i32 %i.bn to i64
  %i.bq = load ptr, ptr %13, align 8, !tbaa !102
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  store ptr @.str.8, ptr %i.br, align 1
  %i.bs = load i32, ptr %i.j, align 8, !tbaa !103
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.j, align 8, !tbaa !103
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit157

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit157: ; preds = %bb.s, %bb.r, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit155
  %i.bu = call { i64, i64 } @_ZNK4llvm6Triple12getOSVersionEv(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #17
  %i.bv = extractvalue { i64, i64 } %i.bu, 0
  %i.bw = and i64 %i.bv, 4294967295
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %.critedge, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit157
  %i.by = call { i64, i64 } @_ZNK4llvm6Triple12getOSVersionEv(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #17
  %i.bz = extractvalue { i64, i64 } %i.by, 0      ; 2 uses
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = icmp ult i32 %i.ca, 7
  %i.cc = and i64 %i.bz, 9223372032559808511
  %or.cond532 = icmp eq i64 %i.cc, 7
  %or.cond777 = or i1 %i.cb, %or.cond532
  br i1 %or.cond777, label %_ZN4llvmgeERKNS_12VersionTupleES2_.exit, label %.critedge
end_hunk_1
