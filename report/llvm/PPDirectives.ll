Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPDirectives?download=true
inline.NumInlined: 4804
inline.NumDeleted: 2029
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0
%"class.clang::FileMgr::MapEntryOptionalStorage.316" = type { %"class.clang::FileEntryRef" }
%"class.clang::FileEntryRef" = type { ptr }
%"class.llvm::SmallVector.685" = type { %"class.llvm::SmallVectorImpl.686", %"struct.llvm::SmallVectorStorage.689" }
%"class.llvm::SmallVectorImpl.686" = type { %"class.llvm::SmallVectorTemplateBase.687" }
%"class.llvm::SmallVectorTemplateBase.687" = type { %"class.llvm::SmallVectorTemplateCommon.688" }
%"class.llvm::SmallVectorTemplateCommon.688" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.689" = type { [256 x i8] }
%"class.llvm::sys::path::const_iterator" = type <{ %"class.llvm::StringRef", %"class.llvm::StringRef", i64, i32, [4 x i8] }>
%"class.llvm::sys::path::reverse_iterator" = type <{ %"class.llvm::StringRef", %"class.llvm::StringRef", i64, i32, [4 x i8] }>
%"class.llvm::SmallVector.106" = type { %"class.llvm::SmallVectorImpl.107", %"struct.llvm::SmallVectorStorage.110" }
%"class.llvm::SmallVectorImpl.107" = type { %"class.llvm::SmallVectorTemplateBase.108" }
%"class.llvm::SmallVectorTemplateBase.108" = type { %"class.llvm::SmallVectorTemplateCommon.109" }
%"class.llvm::SmallVectorTemplateCommon.109" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.110" = type { [256 x i8] }
%"class.llvm::SmallVector.120" = type { %"class.llvm::SmallVectorImpl.121", %"struct.llvm::SmallVectorStorage.124" }
%"struct.llvm::SmallVectorStorage.124" = type { [384 x i8] }
%"class.clang::VAOptDefinitionContext" = type { %"class.llvm::SmallVector.699", ptr }
%"class.llvm::SmallVector.699" = type { %"class.llvm::SmallVectorImpl.700", %"struct.llvm::SmallVectorStorage.703" }
%"class.llvm::SmallVectorImpl.700" = type { %"class.llvm::SmallVectorTemplateBase.701" }
%"class.llvm::SmallVectorTemplateBase.701" = type { %"class.llvm::SmallVectorTemplateCommon.702" }
%"class.llvm::SmallVectorTemplateCommon.702" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.703" = type { [32 x i8] }
%class.anon.765 = type { ptr, ptr }
%class.anon.766 = type { ptr, ptr }
%class.anon.770 = type { ptr, ptr, ptr, ptr }
%class.anon.771 = type { i8 }
%class.anon.773 = type { ptr, ptr, ptr, ptr, ptr }
%"class.std::optional.774" = type { %"struct.std::_Optional_base.775" }
%"struct.std::_Optional_base.775" = type { %"struct.std::_Optional_payload.777" }
%"struct.std::_Optional_payload.777" = type { %"struct.std::_Optional_payload.base.781", [7 x i8] }
%"struct.std::_Optional_payload.base.781" = type { %"struct.std::_Optional_payload_base.base.780" }
%"struct.std::_Optional_payload_base.base.780" = type <{ %"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage" = type { %"class.std::__cxx11::basic_string" }
%"class.llvm::DenseMap.142" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseMap.88" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseMap.99" = type { ptr, ptr, i32, i32 }
%"class.llvm::SmallString.934" = type { %"class.llvm::SmallVector.935" }
%"class.llvm::SmallVector.935" = type { %"class.llvm::SmallVectorImpl.565", %"struct.llvm::SmallVectorStorage.936" }
%"struct.llvm::SmallVectorStorage.936" = type { [40 x i8] }
%"class.llvm::SmallDenseMap" = type { i32, %union.anon.115 }
%union.anon.115 = type { %"struct.llvm::SmallDenseMap<clang::SourceLocation, llvm::detail::DenseSetEmpty, 32, llvm::DenseMapInfo<clang::SourceLocation, void>, llvm::detail::DenseSetPair<clang::SourceLocation>>::LargeRep", [112 x i8] }
%"struct.llvm::SmallDenseMap<clang::SourceLocation, llvm::detail::DenseSetEmpty, 32, llvm::DenseMapInfo<clang::SourceLocation, void>, llvm::detail::DenseSetPair<clang::SourceLocation>>::LargeRep" = type { ptr, ptr, i32 }

$_ZN5clang17DiagnosticBuilderD2Ev = comdat any

$_ZNK5clang13SourceManager18isInPredefinedFileENS_14SourceLocationE = comdat any

$_ZN5clang9FixItHint15CreateInsertionENS_14SourceLocationEN4llvm9StringRefEb = comdat any

$_ZN5clang9FixItHint17CreateReplacementENS_15CharSourceRangeEN4llvm9StringRefE = comdat any

$_ZNK5clang12Preprocessor26emitMacroExpansionWarningsERKNS_5TokenEb = comdat any

$_ZN5clang12Preprocessor18getMacroDefinitionEPKNS_14IdentifierInfoE = comdat any

$_ZNK5clang15MacroDefinition12getMacroInfoEv = comdat any

$_ZN5clang19StringLiteralParserD2Ev = comdat any

$_ZNK5clang17DiagnosticBuilderlsINS_9FixItHintEvEERKS0_OT_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_ = comdat any

$_ZNK4llvm9StringRef3strB5cxx11Ev = comdat any

$_ZN4llvm11SmallVectorINS_9StringRefELj16EEC2INS_3sys4path14const_iteratorEvEET_S7_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc = comdat any

$_ZNK5clang13SourceManager22isWrittenInBuiltinFileENS_14SourceLocationE = comdat any

$_ZNK5clang13SourceManager25isWrittenInModuleIncludesENS_14SourceLocationE = comdat any

$_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm = comdat any

$_ZN4llvm15SmallVectorImplIN5clang5TokenEE12emplace_backIJEEERS2_DpOT_ = comdat any

$_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE = comdat any

$_ZNK5clang12Preprocessor13ModuleDeclSeq14getPrimaryNameEv = comdat any

$_ZN5clang17DiagnosticStorageD2Ev = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN5clang17PPConditionalInfoELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E10destroyAllEv = comdat any

$_ZNK5clang12Preprocessor10MacroState17getFullModuleInfoERS0_PKNS_14IdentifierInfoE = comdat any

$_ZNK4llvm11PagedVectorIN5clang6SrcMgr9SLocEntryELm32EEixEm = comdat any

$_ZNK5clang13SourceManager16getDecomposedLocENS_14SourceLocationE = comdat any

$_ZN4llvm9StringMapIN5clang19FrameworkCacheEntryENS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE11try_emplaceIJEEESt4pairINS_17StringMapIterBaseIS2_Lb0EEEbENS_9StringRefEDpOT_ = comdat any

$_ZN4llvm9StringMapIPN5clang14IdentifierInfoENS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE11try_emplaceIJDnEEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_ = comdat any

$_ZN5clang20DiagStorageAllocator8AllocateEv = comdat any

$_ZN4llvm9SetVectorIPN5clang6ModuleENS_11SmallVectorIS3_Lj2EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj2EE6insertERKS3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN5clang9ModuleRefELb1EE15growAndPushBackERKS2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPN5clang6ModuleELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang6ModuleENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang6ModuleENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang6ModuleENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang6ModuleENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm8toStringB5cxx11ERKNS_6APSIntEj = comdat any

$_ZNK4llvm5APInt15getLimitedValueEm = comdat any

$_ZN4llvm15SmallVectorImplIN5clang5TokenEEaSEOS3_ = comdat any

$_ZNSt22_Optional_payload_baseIN5clang24LexEmbedParametersResultEE8_StorageIS1_Lb0EEC2IJS1_EEESt10in_place_tDpOT_ = comdat any

$_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE15growAndPushBackERKS2_ = comdat any

$_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE9push_backERKS2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE4growEm = comdat any

$_ZNSt6vectorIN4llvm9StringRefESaIS1_EE15_M_range_insertIPKS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EET_SB_St20forward_iterator_tag = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN5clang15CharSourceRangeELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang20CustomizableOptionalINS2_12FileEntryRefEEENS2_17DirectoryEntryRefEELb1EE15growAndPushBackES7_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN5clang13IdentifierLocELb1EE18growAndEmplaceBackIJNS1_14SourceLocationEPNS1_14IdentifierInfoEEEERS2_DpOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN5clang13IdentifierLocELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE18growAndEmplaceBackIJRKS1_EEERS1_DpOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPN5clang14IdentifierInfoELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN5clang14SourceLocationENS_6detail13DenseSetEmptyELj32ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E21eraseFromFilledBucketIZNSB_21eraseFromFilledBucketEPS9_EUlRS9_E_EEvSD_OT_ = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN5clang14SourceLocationENS_6detail13DenseSetEmptyELj32ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN5clang14SourceLocationENS_6detail13DenseSetEmptyELj32ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_ = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN5clang14SourceLocationENS_6detail13DenseSetEmptyELj32ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN5clang14SourceLocationENS_6detail13DenseSetEmptyELj32ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE18growAndEmplaceBackIJEEERS2_DpOT_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ifdef\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ifndef\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"elif\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"endif\00", align 1
@constinit = private unnamed_addr constant [6 x %"class.llvm::StringRef"] [%"class.llvm::StringRef" { ptr @.str.3, i64 2 }, %"class.llvm::StringRef" { ptr @.str.4, i64 5 }, %"class.llvm::StringRef" { ptr @.str.5, i64 6 }, %"class.llvm::StringRef" { ptr @.str.6, i64 4 }, %"class.llvm::StringRef" { ptr @.str.7, i64 4 }, %"class.llvm::StringRef" { ptr @.str.8, i64 5 }], align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"elifdef\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"elifndef\00", align 1
@constinit.11 = private unnamed_addr constant [2 x %"class.llvm::StringRef"] [%"class.llvm::StringRef" { ptr @.str.9, i64 7 }, %"class.llvm::StringRef" { ptr @.str.10, i64 8 }], align 8
@.str.12 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"lse\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"lifdef\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"__public_macro\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"__private_macro\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"clang::offset\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"if_empty\00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"a buffer to the contents could not be created\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"override\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"final\00", align 1
@_ZZL18isFeatureTestMacroN4llvm9StringRefEE13ReservedMacro = internal constant [29 x %"class.llvm::StringRef"] [%"class.llvm::StringRef" { ptr @.str.41, i64 14 }, %"class.llvm::StringRef" { ptr @.str.42, i64 11 }, %"class.llvm::StringRef" { ptr @.str.43, i64 24 }, %"class.llvm::StringRef" { ptr @.str.44, i64 39 }, %"class.llvm::StringRef" { ptr @.str.45, i64 23 }, %"class.llvm::StringRef" { ptr @.str.46, i64 17 }, %"class.llvm::StringRef" { ptr @.str.47, i64 15 }, %"class.llvm::StringRef" { ptr @.str.48, i64 19 }, %"class.llvm::StringRef" { ptr @.str.49, i64 23 }, %"class.llvm::StringRef" { ptr @.str.50, i64 14 }, %"class.llvm::StringRef" { ptr @.str.51, i64 23 }, %"class.llvm::StringRef" { ptr @.str.52, i64 17 }, %"class.llvm::StringRef" { ptr @.str.53, i64 28 }, %"class.llvm::StringRef" { ptr @.str.54, i64 24 }, %"class.llvm::StringRef" { ptr @.str.55, i64 22 }, %"class.llvm::StringRef" { ptr @.str.56, i64 23 }, %"class.llvm::StringRef" { ptr @.str.57, i64 11 }, %"class.llvm::StringRef" { ptr @.str.58, i64 14 }, %"class.llvm::StringRef" { ptr @.str.59, i64 14 }, %"class.llvm::StringRef" { ptr @.str.60, i64 14 }, %"class.llvm::StringRef" { ptr @.str.61, i64 19 }, %"class.llvm::StringRef" { ptr @.str.62, i64 15 }, %"class.llvm::StringRef" { ptr @.str.63, i64 10 }, %"class.llvm::StringRef" { ptr @.str.64, i64 12 }, %"class.llvm::StringRef" { ptr @.str.65, i64 12 }, %"class.llvm::StringRef" { ptr @.str.66, i64 13 }, %"class.llvm::StringRef" { ptr @.str.67, i64 22 }, %"class.llvm::StringRef" { ptr @.str.68, i64 31 }, %"class.llvm::StringRef" { ptr @.str.69, i64 20 }], align 16
@.str.41 = private unnamed_addr constant [15 x i8] c"_ATFILE_SOURCE\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"_BSD_SOURCE\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"_CRT_NONSTDC_NO_WARNINGS\00", align 1
@.str.44 = private unnamed_addr constant [40 x i8] c"_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"_CRT_SECURE_NO_WARNINGS\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"_FILE_OFFSET_BITS\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"_FORTIFY_SOURCE\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"_GLIBCXX_ASSERTIONS\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"_GLIBCXX_CONCEPT_CHECKS\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"_GLIBCXX_DEBUG\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"_GLIBCXX_DEBUG_PEDANTIC\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"_GLIBCXX_PARALLEL\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"_GLIBCXX_PARALLEL_ASSERTIONS\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"_GLIBCXX_SANITIZE_VECTOR\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"_GLIBCXX_USE_CXX11_ABI\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"_GLIBCXX_USE_DEPRECATED\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"_GNU_SOURCE\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"_ISOC11_SOURCE\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"_ISOC95_SOURCE\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"_ISOC99_SOURCE\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"_LARGEFILE64_SOURCE\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"_POSIX_C_SOURCE\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"_REENTRANT\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"_SVID_SOURCE\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"_THREAD_SAFE\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"_XOPEN_SOURCE\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"_XOPEN_SOURCE_EXTENDED\00", align 1
@.str.68 = private unnamed_addr constant [32 x i8] c"__STDCPP_WANT_MATH_SPEC_FUNCS__\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"__STDC_FORMAT_MACROS\00", align 1
@.str.71 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZN5clang8charinfo9InfoTableE = external local_unnamed_addr constant [256 x i16], align 16
@.str.77 = private unnamed_addr constant [6 x i8] c"boost\00", align 1
@.str.292 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.293 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.294 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.296 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@switch.table._ZN5clang12Preprocessor27HandleHeaderIncludeOrImportENS_14SourceLocationERNS_5TokenES3_S1_NS_6detail21SearchDirIteratorImplILb1EEEPKNS_9FileEntryE = private unnamed_addr constant [13 x i8] [i8 0, i8 3, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 1, i8 2], align 8
@"switch.table._ZZN5clang12Preprocessor18LexEmbedParametersERNS_5TokenEbENK3$_6clERN4llvm15SmallVectorImplIS1_EE" = private unnamed_addr constant [5 x i8] [i8 21, i8 poison, i8 23, i8 poison, i8 25], align 2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang12Preprocessor17AllocateMacroInfoENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(3344) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 15
  %i.e = and i64 %i.d, -16                        ; 2 uses
  %i.f = add i64 %i.e, 40                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load i64, ptr %i.g, align 8, !tbaa !31
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %i.f to ptr
  store ptr %i.j, ptr %i.a, align 8, !tbaa !30
  %i.k = inttoptr i64 %i.e to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef 40, i64 noundef 40, i8 4)
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.k, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  tail call void @_ZN5clang9MacroInfoC1ENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(38) %.0.i.i.i, i32 %1) #18
  ret ptr %.0.i.i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN5clang9MacroInfoC1ENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(38), i32) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang12Preprocessor25AllocateDefMacroDirectiveEPNS_9MacroInfoENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 15
  %i.e = and i64 %i.d, -16                        ; 2 uses
  %i.f = add i64 %i.e, 24                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load i64, ptr %i.g, align 8, !tbaa !31
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %i.f to ptr
  store ptr %i.j, ptr %i.a, align 8, !tbaa !30
  %i.k = inttoptr i64 %i.e to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef 24, i64 noundef 24, i8 4)
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.k, %bb.b ], [ %i.l, %bb.c ] ; 5 uses
  store ptr null, ptr %.0.i.i.i, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %2, ptr %i.m, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 12 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, -16
  %i.q = or disjoint i8 %i.p, 8
  store i8 %i.q, ptr %i.n, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store ptr %1, ptr %i.r, align 8, !tbaa !40
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang12Preprocessor27AllocateUndefMacroDirectiveENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(3344) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 15
  %i.e = and i64 %i.d, -16                        ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load i64, ptr %i.g, align 8, !tbaa !31
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %i.f to ptr
  store ptr %i.j, ptr %i.a, align 8, !tbaa !30
  %i.k = inttoptr i64 %i.e to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef 16, i64 noundef 16, i8 4)
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.k, %bb.b ], [ %i.l, %bb.c ] ; 4 uses
  store ptr null, ptr %.0.i.i.i, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %1, ptr %i.m, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 12 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, -16
  %i.q = or disjoint i8 %i.p, 9
  store i8 %i.q, ptr %i.n, align 4
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang12Preprocessor32AllocateVisibilityMacroDirectiveENS_14SourceLocationEb(ptr noundef nonnull align 8 dereferenceable(3344) %0, i32 %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 15
  %i.e = and i64 %i.d, -16                        ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load i64, ptr %i.g, align 8, !tbaa !31
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %i.f to ptr
  store ptr %i.j, ptr %i.a, align 8, !tbaa !30
  %i.k = inttoptr i64 %i.e to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef 16, i64 noundef 16, i8 4)
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.k, %bb.b ], [ %i.l, %bb.c ] ; 4 uses
  store ptr null, ptr %.0.i.i.i, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %1, ptr %i.m, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 12 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, -16
  %i.q = select i1 %2, i8 10, i8 2
end_hunk_0
begin_hunk_1_@_ZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_:bb.a
  store i8 1, ptr %.sroa.38.0..sroa_idx.i.i.i.i, align 1
  %i.fj = load i32, ptr %i.fc, align 8, !tbaa !45
  %i.fk = add i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fc, align 8, !tbaa !45
  br label %_ZNK5clang17DiagnosticBuilderlsINS_11SourceRangeEvEERKS0_OT_.exit

_ZNK5clang17DiagnosticBuilderlsINS_11SourceRangeEvEERKS0_OT_.exit: ; preds = %bb.t, %bb.u
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  %i.fl = load ptr, ptr %i.z, align 8, !tbaa !371
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  store i8 0, ptr %i.fm, align 8, !tbaa !387
  %i.fn = load ptr, ptr %i.ad, align 8, !tbaa !375 ; 2 uses
  %.not421 = icmp eq ptr %i.fn, null
  br i1 %.not421, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_ZNK5clang17DiagnosticBuilderlsINS_11SourceRangeEvEERKS0_OT_.exit
  call void @_ZN5clang5Lexer22resetExtendedTokenModeEv(ptr noundef nonnull align 8 dereferenceable(204) %i.fn) #18
  br label %bb.x

bb.w:                                             ; preds = %bb.q
  store i8 %i.ee, ptr %i.ed, align 1, !tbaa !304
  br label %.thread363

.thread363:                                       ; preds = %bb.w, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ak, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4335, i64 20, i1 false), !tbaa.struct !386
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4335)
  %.pre = load i16, ptr %i.af, align 8, !tbaa !44
  br label %_ZN4llvmeqENS_9StringRefES0_.exit142.thread359

bb.x:                                             ; preds = %_ZNK5clang17DiagnosticBuilderlsINS_11SourceRangeEvEERKS0_OT_.exit, %bb.v
  store i8 %i.ee, ptr %i.ed, align 1, !tbaa !304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ak, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4335, i64 20, i1 false), !tbaa.struct !386
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4335)
  br label %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy12beginLexPassEv.exit.backedge

_ZN4llvmeqENS_9StringRefES0_.exit142.thread359:   ; preds = %.thread363, %bb.l
  %i.fo = phi i16 [ %i.cp, %bb.l ], [ %.pre, %.thread363 ]
  switch i16 %i.fo, label %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy12beginLexPassEv.exit.backedge [
    i16 1, label %bb.y
    i16 68, label %bb.aa
  ]

bb.y:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit142.thread359
  %i.fp = load i32, ptr %i.ar, align 8, !tbaa !388
  %i.fq = icmp eq i32 %i.fp, 1
  br i1 %i.fq, label %bb.z, label %split.sink.split

bb.z:                                             ; preds = %bb.y
  store i32 %1, ptr %i.j, align 8, !tbaa !37
  store i32 %2, ptr %i.as, align 4, !tbaa !37
  store i8 %i.c, ptr %i.at, align 8, !tbaa !733
  store i8 %i.d, ptr %i.au, align 1, !tbaa !734
  store i32 %5, ptr %i.av, align 4, !tbaa !37
  store i8 1, ptr %i.k, align 8, !tbaa !722
  br label %split.sink.split

bb.aa:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit142.thread359
  %i.fr = load i16, ptr %i.ah, align 2, !tbaa !389
  %i.fs = trunc i16 %i.fr to i1
  br i1 %i.fs, label %.loopexit439.thread480, label %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy12beginLexPassEv.exit.backedge

.loopexit439.thread480:                           ; preds = %bb.aa
  %.pre446481 = load ptr, ptr %i.z, align 8, !tbaa !371
  br label %bb.ab

.loopexit439:                                     ; preds = %bb.f
  %i.ft = call noundef zeroext i1 @_ZN5clang5Lexer40LexDependencyDirectiveTokenWhileSkippingERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(204) %i.bo, ptr noundef nonnull align 8 dereferenceable(20) %12) #18 ; 0 uses
  %.pre444 = load i16, ptr %i.af, align 8, !tbaa !44
  %i.fu = icmp eq i16 %.pre444, 1
  %.pre446 = load ptr, ptr %i.z, align 8, !tbaa !371 ; 2 uses
  br i1 %i.fu, label %split, label %bb.ab

bb.ab:                                            ; preds = %.loopexit439.thread480, %.loopexit439
  %.pre446482 = phi ptr [ %.pre446481, %.loopexit439.thread480 ], [ %.pre446, %.loopexit439 ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.pre446482, i64 24
  store i8 1, ptr %i.fv, align 8, !tbaa !387
  %i.fw = load ptr, ptr %i.ad, align 8, !tbaa !375 ; 3 uses
  %.not422 = icmp eq ptr %i.fw, null
  br i1 %.not422, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 146
  store i8 0, ptr %i.fx, align 2, !tbaa !390
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 152
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !380
  %i.ga = load i32, ptr %i.aj, align 4, !tbaa !382
  %i.gb = zext i32 %i.ga to i64
  %i.gc = sub nsw i64 0, %i.gb
  %i.gd = getelementptr inbounds i8, ptr %i.fz, i64 %i.gc ; 4 uses
  %i.ge = load i16, ptr %i.al, align 8            ; 2 uses
  %i.gf = or i16 %i.ge, 32
  store i16 %i.gf, ptr %i.al, align 8
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef nonnull align 8 dereferenceable(20) %12) #18
  %.lobit.i = and i16 %i.ge, 32
  %i.gg = load i16, ptr %i.al, align 8
  %i.gh = and i16 %i.gg, -33
  %i.gi = or disjoint i16 %i.gh, %.lobit.i
  store i16 %i.gi, ptr %i.al, align 8
  %i.gj = load i16, ptr %i.af, align 8, !tbaa !44
  %.not423 = icmp eq i16 %i.gj, 6
  br i1 %.not423, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gk = load ptr, ptr %i.z, align 8, !tbaa !371
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  store i8 0, ptr %i.gl, align 8, !tbaa !387
  %i.gm = load ptr, ptr %i.ad, align 8, !tbaa !375 ; 2 uses
  %.not433 = icmp eq ptr %i.gm, null
  br i1 %.not433, label %.backedge441, label %bb.af, !llvm.loop !710

bb.af:                                            ; preds = %bb.ae
  call void @_ZN5clang5Lexer22resetExtendedTokenModeEv(ptr noundef nonnull align 8 dereferenceable(204) %i.gm) #18
  br label %.backedge441, !llvm.loop !710

bb.ag:                                            ; preds = %bb.ad
  %i.gn = load ptr, ptr %i.ai, align 8, !tbaa !381 ; 2 uses
  %i.go = load i32, ptr %i.aj, align 4, !tbaa !382 ; 2 uses
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = load i8, ptr %i.gn, align 1, !tbaa !302 ; 2 uses
  %i.gr = add i8 %i.gq, -97
  %or.cond = icmp ult i8 %i.gr, 26
  br i1 %or.cond, label %switch.early.test, label %bb.aj

switch.early.test:                                ; preds = %bb.ag
  switch i8 %i.gq, label %bb.ah [
    i8 105, label %bb.aj
    i8 101, label %bb.aj
  ]

bb.ah:                                            ; preds = %switch.early.test
  %i.gs = load ptr, ptr %i.z, align 8, !tbaa !371
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  store i8 0, ptr %i.gt, align 8, !tbaa !387
  %i.gu = load ptr, ptr %i.ad, align 8, !tbaa !375 ; 2 uses
  %.not432 = icmp eq ptr %i.gu, null
  br i1 %.not432, label %.backedge441, label %bb.ai, !llvm.loop !710

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5clang5Lexer22resetExtendedTokenModeEv(ptr noundef nonnull align 8 dereferenceable(204) %i.gu) #18
  br label %.backedge441, !llvm.loop !710

bb.aj:                                            ; preds = %switch.early.test, %switch.early.test, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.gv = load i16, ptr %i.ah, align 2, !tbaa !389
  %i.gw = and i16 %i.gv, 8
  %i.gx = icmp eq i16 %i.gw, 0
  %i.gy = icmp ult i32 %i.go, 20
  %or.cond419 = select i1 %i.gx, i1 %i.gy, i1 false
  br i1 %or.cond419, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.gz = load ptr, ptr %i.aw, align 8, !tbaa !311, !noalias !735, !nonnull !283, !align !284
  %i.ha = load ptr, ptr %i.ag, align 8, !tbaa !282, !noalias !735, !nonnull !283, !align !284
  call void @_ZN5clang5Lexer11getSpellingB5cxx11ERKNS_5TokenERKNS_13SourceManagerERKNS_11LangOptionsEPb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(20) %12, ptr noundef nonnull align 8 dereferenceable(776) %i.gz, ptr noundef nonnull align 8 dereferenceable(1136) %i.ha, ptr noundef null) #18
  %i.hb = load i64, ptr %i.ax, align 8, !tbaa !359 ; 3 uses
  %i.hc = icmp ult i64 %i.hb, 20                  ; 2 uses
  br i1 %i.hc, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hd = load ptr, ptr %i.z, align 8, !tbaa !371
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  store i8 0, ptr %i.he, align 8, !tbaa !387
  %i.hf = load ptr, ptr %i.ad, align 8, !tbaa !375 ; 2 uses
  %.not424 = icmp eq ptr %i.hf, null
  br i1 %.not424, label %bb.ao, label %bb.am, !llvm.loop !710

bb.am:                                            ; preds = %bb.al
  call void @_ZN5clang5Lexer22resetExtendedTokenModeEv(ptr noundef nonnull align 8 dereferenceable(204) %i.hf) #18
  br label %bb.ao, !llvm.loop !710

bb.an:                                            ; preds = %bb.ak
  %i.hg = load ptr, ptr %15, align 8, !tbaa !315
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.hg, i64 %i.hb, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %bb.am, %bb.an
  %.sroa.12.0.jt2 = phi i64 [ %i.hb, %bb.an ], [ 0, %bb.am ], [ 0, %bb.al ]
  %.sroa.0312.0.jt2 = phi ptr [ %i.a, %bb.an ], [ null, %bb.am ], [ null, %bb.al ]
  %i.hh = load ptr, ptr %15, align 8, !tbaa !315  ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.ay
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.jt2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.jt2: ; preds = %bb.ao
  %i.hj = load i64, ptr %i.ay, align 8, !tbaa !302
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt2: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br i1 %i.hc, label %bb.ap, label %.thread375.jt2

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt2, %bb.aj
  %.sroa.12.1 = phi i64 [ %.sroa.12.0.jt2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt2 ], [ %i.gp, %bb.aj ] ; 7 uses
  %.sroa.0312.1 = phi ptr [ %.sroa.0312.0.jt2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt2 ], [ %i.gn, %bb.aj ] ; 7 uses
  %.not.i153 = icmp samesign ult i64 %.sroa.12.1, 2 ; 2 uses
  br i1 %.not.i153, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread365, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %bb.ap
  %i.hl = load i16, ptr %.sroa.0312.1, align 1
  %i.hm = icmp ne i16 %i.hl, 26217
  %i.hn = zext i1 %i.hm to i32
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread365

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0312.1, i64 2 ; 3 uses
  switch i64 %.sroa.12.1, label %_ZN4llvmeqENS_9StringRefES0_.exit164.thread [
    i64 2, label %bb.aq
    i64 5, label %_ZN4llvmeqENS_9StringRefES0_.exit160
    i64 6, label %_ZN4llvmeqENS_9StringRefES0_.exit164
  ]

_ZN4llvmeqENS_9StringRefES0_.exit160:             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  %i.hq = load i16, ptr %i.hp, align 1
  %i.hr = xor i16 %i.hq, 25956
  %i.hs = getelementptr i8, ptr %i.hp, i64 2
  %i.ht = load i8, ptr %i.hs, align 1
  %i.hu = zext i8 %i.ht to i16
  %i.hv = xor i16 %i.hu, 102
  %i.hw = or i16 %i.hr, %i.hv
  %i.hx = icmp ne i16 %i.hw, 0
  %i.hy = zext i1 %i.hx to i32
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %bb.aq, label %_ZN4llvmeqENS_9StringRefES0_.exit164.thread

_ZN4llvmeqENS_9StringRefES0_.exit164:             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  %i.ia = load i32, ptr %i.hp, align 1
  %i.ib = icmp ne i32 %i.ia, 1717920878
  %i.ic = zext i1 %i.ib to i32
  %i.id = icmp eq i32 %i.ic, 0
  br i1 %i.id, label %bb.aq, label %_ZN4llvmeqENS_9StringRefES0_.exit164.thread

bb.aq:                                            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, %_ZN4llvmeqENS_9StringRefES0_.exit164, %_ZN4llvmeqENS_9StringRefES0_.exit160
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.ie = load i16, ptr %i.al, align 8            ; 2 uses
  %i.if = or i16 %i.ie, 32
  store i16 %i.if, ptr %i.al, align 8
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef nonnull align 8 dereferenceable(20) %10) #18
  %.lobit.i.i.i219 = and i16 %i.ie, 32
  %i.ig = load i16, ptr %i.al, align 8
  %i.ih = and i16 %i.ig, -33
  %i.ii = or disjoint i16 %i.ih, %.lobit.i.i.i219 ; 2 uses
  store i16 %i.ii, ptr %i.al, align 8
  %i.ij = load i16, ptr %i.az, align 8, !tbaa !44
  %.not1822.i220 = icmp eq i16 %i.ij, 2
  br i1 %.not1822.i220, label %_ZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EE.exit230, label %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i223"

"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i223": ; preds = %bb.aq, %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i223"
  %i.ik = phi i16 [ %i.io, %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i223" ], [ %i.ii, %bb.aq ] ; 2 uses
  %i.il = or i16 %i.ik, 32
  store i16 %i.il, ptr %i.al, align 8
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef nonnull align 8 dereferenceable(20) %10) #18
  %.lobit.i.i6.us.i224 = and i16 %i.ik, 32
  %i.im = load i16, ptr %i.al, align 8
  %i.in = and i16 %i.im, -33
  %i.io = or disjoint i16 %i.in, %.lobit.i.i6.us.i224 ; 2 uses
  store i16 %i.io, ptr %i.al, align 8
  %i.ip = load i16, ptr %i.az, align 8, !tbaa !44
  %.not.us.i225 = icmp eq i16 %i.ip, 2
  br i1 %.not.us.i225, label %_ZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EE.exit230, label %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i223", !llvm.loop !0

_ZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EE.exit230: ; preds = %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i223", %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.iq = load ptr, ptr %i.z, align 8, !tbaa !371 ; 3 uses
  %i.ir = load i32, ptr %12, align 8, !tbaa !48
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 64 ; 2 uses
  %.sroa.0.0.insert.ext.i165 = zext i32 %i.ir to i64
  %.sroa.6.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i165, 4294967296 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 72 ; 3 uses
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !45 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 76
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !46
  %.not.i.i168 = icmp ult i32 %i.iu, %i.iw
  br i1 %.not.i.i168, label %bb.as, label %bb.ar, !prof !32

bb.ar:                                            ; preds = %_ZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EE.exit230
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang17PPConditionalInfoELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.is, i64 %.sroa.6.0.insert.insert.i)
  br label %_ZN5clang17PreprocessorLexer20pushConditionalLevelENS_14SourceLocationEbbb.exit169

bb.as:                                            ; preds = %_ZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EE.exit230
  %i.ix = zext i32 %i.iu to i64
  %i.iy = load ptr, ptr %i.is, align 8, !tbaa !47
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.ix
  store i64 %.sroa.6.0.insert.insert.i, ptr %i.iz, align 1
  %i.ja = load i32, ptr %i.it, align 8, !tbaa !45
  %i.jb = add i32 %i.ja, 1
  store i32 %i.jb, ptr %i.it, align 8, !tbaa !45
  br label %_ZN5clang17PreprocessorLexer20pushConditionalLevelENS_14SourceLocationEbbb.exit169

_ZN4llvmeqENS_9StringRefES0_.exit164.thread:      ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, %_ZN4llvmeqENS_9StringRefES0_.exit160, %_ZN4llvmeqENS_9StringRefES0_.exit164
  call void @_ZNK5clang12Preprocessor22SuggestTypoedDirectiveERKNS_5TokenEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef nonnull align 8 dereferenceable(20) %12, ptr nonnull %.sroa.0312.1, i64 %.sroa.12.1)
  br label %_ZN5clang17PreprocessorLexer20pushConditionalLevelENS_14SourceLocationEbbb.exit169

_ZNK4llvm9StringRef11starts_withES0_.exit.thread365: ; preds = %bb.ap, %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.jc = load i8, ptr %.sroa.0312.1, align 1, !tbaa !302
  %i.jd = icmp eq i8 %i.jc, 101
  br i1 %i.jd, label %bb.at, label %bb.ct

bb.at:                                            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread365
  %i.je = icmp ne i64 %.sroa.12.1, 0              ; 2 uses
  %.sroa.speculated4.i170.neg = sext i1 %i.je to i64
  %.sroa.speculated4.i170.sroa.sel.idx.sroa.sel.idx = zext i1 %i.je to i64
  %.sroa.speculated4.i170.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0312.1, i64 %.sroa.speculated4.i170.sroa.sel.idx.sroa.sel.idx ; 9 uses
  %i.jf = add nsw i64 %.sroa.12.1, %.sroa.speculated4.i170.neg ; 3 uses
  switch i64 %i.jf, label %_ZN4llvmeqENS_9StringRefES0_.exit202.thread396 [
    i64 4, label %_ZN4llvmeqENS_9StringRefES0_.exit176
    i64 3, label %_ZN4llvmeqENS_9StringRefES0_.exit182
    i64 6, label %_ZN4llvmeqENS_9StringRefES0_.exit198
    i64 7, label %_ZN4llvmeqENS_9StringRefES0_.exit198.a
  ]

_ZN4llvmeqENS_9StringRefES0_.exit176:             ; preds = %bb.at
  %i.jg = load i32, ptr %.sroa.speculated4.i170.sroa.sel.idx.sroa.sel, align 1
  %i.jh = icmp ne i32 %i.jg, 1718183022
  %i.ji = zext i1 %i.jh to i32
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %_ZN4llvmeqENS_9StringRefES0_.exit176.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit202.thread396

_ZN4llvmeqENS_9StringRefES0_.exit176.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit176
  %i.jk = load ptr, ptr %i.z, align 8, !tbaa !371 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 72 ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !45 ; 3 uses
  %.not.i.i177 = icmp eq i32 %i.jm, 0
  br i1 %.not.i.i177, label %_ZN5clang17PreprocessorLexer19popConditionalLevelERNS_17PPConditionalInfoE.exit.thread, label %_ZN5clang17PreprocessorLexer19popConditionalLevelERNS_17PPConditionalInfoE.exit

_ZN5clang17PreprocessorLexer19popConditionalLevelERNS_17PPConditionalInfoE.exit: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit176.thread
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 64
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !47
  %i.jp = zext i32 %i.jm to i64
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %i.jp
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.jr, align 4 ; 2 uses
  %i.js = add i32 %i.jm, -1
  store i32 %i.js, ptr %i.jl, align 8, !tbaa !45
  %i.jt = and i64 %.sroa.0.0.copyload.i.i, 4294967296
  %.not429 = icmp eq i64 %i.jt, 0
  br i1 %.not429, label %bb.au, label %_ZN5clang17PreprocessorLexer19popConditionalLevelERNS_17PPConditionalInfoE.exit.thread

bb.au:                                            ; preds = %_ZN5clang17PreprocessorLexer19popConditionalLevelERNS_17PPConditionalInfoE.exit
  %i.ju = load ptr, ptr %i.ac, align 8, !tbaa !727 ; 2 uses
  %.not.i178 = icmp eq ptr %i.ju, null
  br i1 %.not.i178, label %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jv = load ptr, ptr %i.ae, align 8, !tbaa !729 ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !37
  %.not2.i = icmp eq i32 %i.jw, 0
  br i1 %.not2.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.jx = ptrtoint ptr %i.gd to i64
  %i.jy = ptrtoint ptr %i.ju to i64
  %i.jz = sub i64 %i.jx, %i.jy
  %i.ka = trunc i64 %i.jz to i32
  store i32 %i.ka, ptr %i.jv, align 4, !tbaa !37
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  br label %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit

_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit: ; preds = %bb.au, %bb.ax
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jk, i64 26
  store i8 0, ptr %i.kb, align 2, !tbaa !723
  %i.kc = call i32 @_ZN5clang12Preprocessor19CheckEndOfDirectiveEN4llvm9StringRefEbPNS1_15SmallVectorImplINS_5TokenEEE(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr nonnull @.str.8, i64 5, i1 noundef zeroext false, ptr noundef null) ; 2 uses
  %i.kd = load ptr, ptr %i.z, align 8, !tbaa !371
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 26
  store i8 1, ptr %i.ke, align 2, !tbaa !723
  %i.kf = load ptr, ptr %i.bc, align 8, !tbaa !391 ; 3 uses
  %.not430 = icmp eq ptr %i.kf, null
  br i1 %.not430, label %._crit_edge, label %bb.ay

bb.ay:                                            ; preds = %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit
  %i.kg = load i32, ptr %12, align 8, !tbaa !48
  %.sroa.0298.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.kh = load ptr, ptr %i.kf, align 8, !tbaa !321
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 384
  %i.kj = load ptr, ptr %i.ki, align 8
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, i32 %i.kg, i32 %.sroa.0298.0.extract.trunc) #18
  br label %._crit_edge

_ZN5clang17PreprocessorLexer19popConditionalLevelERNS_17PPConditionalInfoE.exit.thread: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit176.thread, %_ZN5clang17PreprocessorLexer19popConditionalLevelERNS_17PPConditionalInfoE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.kk = load i16, ptr %i.al, align 8            ; 2 uses
  %i.kl = or i16 %i.kk, 32
  store i16 %i.kl, ptr %i.al, align 8
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef nonnull align 8 dereferenceable(20) %9) #18
  %.lobit.i.i.i231 = and i16 %i.kk, 32
  %i.km = load i16, ptr %i.al, align 8
  %i.kn = and i16 %i.km, -33
  %i.ko = or disjoint i16 %i.kn, %.lobit.i.i.i231 ; 2 uses
  store i16 %i.ko, ptr %i.al, align 8
  %i.kp = load i16, ptr %i.bi, align 8, !tbaa !44
  %.not1822.i232 = icmp eq i16 %i.kp, 2
  br i1 %.not1822.i232, label %.loopexit, label %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i235"

"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i235": ; preds = %_ZN5clang17PreprocessorLexer19popConditionalLevelERNS_17PPConditionalInfoE.exit.thread, %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i235"
  %i.kq = phi i16 [ %i.ku, %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i235" ], [ %i.ko, %_ZN5clang17PreprocessorLexer19popConditionalLevelERNS_17PPConditionalInfoE.exit.thread ] ; 2 uses
  %i.kr = or i16 %i.kq, 32
  store i16 %i.kr, ptr %i.al, align 8
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef nonnull align 8 dereferenceable(20) %9) #18
  %.lobit.i.i6.us.i236 = and i16 %i.kq, 32
  %i.ks = load i16, ptr %i.al, align 8
  %i.kt = and i16 %i.ks, -33
  %i.ku = or disjoint i16 %i.kt, %.lobit.i.i6.us.i236 ; 2 uses
  store i16 %i.ku, ptr %i.al, align 8
  %i.kv = load i16, ptr %i.bi, align 8, !tbaa !44
  %.not.us.i237 = icmp eq i16 %i.kv, 2
  br i1 %.not.us.i237, label %.loopexit, label %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i235", !llvm.loop !0

.loopexit:                                        ; preds = %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i235", %_ZN5clang17PreprocessorLexer19popConditionalLevelERNS_17PPConditionalInfoE.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %_ZN5clang17PreprocessorLexer20pushConditionalLevelENS_14SourceLocationEbbb.exit169

_ZN4llvmeqENS_9StringRefES0_.exit182:             ; preds = %bb.at
  %bcmp.i181 = call i32 @bcmp(ptr nonnull %.sroa.speculated4.i170.sroa.sel.idx.sroa.sel, ptr nonnull @.str.16, i64 %i.jf)
  %i.kw = icmp eq i32 %bcmp.i181, 0
  br i1 %i.kw, label %_ZN4llvmeqENS_9StringRefES0_.exit182.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit189

_ZN4llvmeqENS_9StringRefES0_.exit182.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit182
  %i.kx = load ptr, ptr %i.z, align 8, !tbaa !371 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 64
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !47
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 72
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !45
  %i.lc = zext i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.lc ; 5 uses
  %i.le = getelementptr inbounds i8, ptr %i.ld, i64 -4 ; 2 uses
  %i.lf = load i8, ptr %i.le, align 4, !tbaa !737, !range !314, !noundef !283
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit185, label %bb.az

bb.az:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit182.thread
  %i.lh = load ptr, ptr %i.ac, align 8, !tbaa !727 ; 2 uses
  %.not.i183 = icmp eq ptr %i.lh, null
  br i1 %.not.i183, label %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit185, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.li = load ptr, ptr %i.ae, align 8, !tbaa !729 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !37
  %.not2.i184 = icmp eq i32 %i.lj, 0
  br i1 %.not2.i184, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.lk = ptrtoint ptr %i.gd to i64
  %i.ll = ptrtoint ptr %i.lh to i64
  %i.lm = sub i64 %i.lk, %i.ll
  %i.ln = trunc i64 %i.lm to i32
  store i32 %i.ln, ptr %i.li, align 4, !tbaa !37
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  br label %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit185

_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit185: ; preds = %bb.bc, %bb.az, %_ZN4llvmeqENS_9StringRefES0_.exit182.thread
  %i.lo = getelementptr inbounds i8, ptr %i.ld, i64 -2 ; 2 uses
  %i.lp = load i8, ptr %i.lo, align 2, !tbaa !738, !range !314, !noundef !283
  %i.lq = trunc nuw i8 %i.lp to i1
  br i1 %i.lq, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit185
  %i.lr = load ptr, ptr %i.an, align 8, !tbaa !281, !noalias !739
  %i.ls = load i32, ptr %12, align 8, !tbaa !48, !noalias !739
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %16, ptr noundef nonnull align 8 dereferenceable(15256) %i.lr, i32 %i.ls, i32 noundef 1298) #18
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %16) #18
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit185
  store i8 1, ptr %i.lo, align 2, !tbaa !738
  %i.lt = load i8, ptr %i.le, align 4, !tbaa !737, !range !314, !noundef !283
  %i.lu = trunc nuw i8 %i.lt to i1
  br i1 %i.lu, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lv = getelementptr inbounds i8, ptr %i.ld, i64 -3
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !740, !range !314, !noundef !283
  %i.lx = trunc nuw i8 %i.lw to i1
  br i1 %i.lx, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ly = getelementptr inbounds i8, ptr %i.ld, i64 -3
  store i8 1, ptr %i.ly, align 1, !tbaa !740
  %i.lz = load ptr, ptr %i.z, align 8, !tbaa !371
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 26
  store i8 0, ptr %i.ma, align 2, !tbaa !723
  %i.mb = call i32 @_ZN5clang12Preprocessor19CheckEndOfDirectiveEN4llvm9StringRefEbPNS1_15SmallVectorImplINS_5TokenEEE(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr nonnull @.str.7, i64 4, i1 noundef zeroext false, ptr noundef null) ; 2 uses
  %i.mc = load ptr, ptr %i.z, align 8, !tbaa !371
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 26
  store i8 1, ptr %i.md, align 2, !tbaa !723
  %i.me = load ptr, ptr %i.bc, align 8, !tbaa !391 ; 3 uses
  %.not427 = icmp eq ptr %i.me, null
  br i1 %.not427, label %._crit_edge, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mf = getelementptr inbounds i8, ptr %i.ld, i64 -8
  %i.mg = load i32, ptr %12, align 8, !tbaa !48
  %.sroa.058.0.copyload = load i32, ptr %i.mf, align 4, !tbaa !37
  %i.mh = load ptr, ptr %i.me, align 8, !tbaa !321
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 376
  %i.mj = load ptr, ptr %i.mi, align 8
  call void %i.mj(ptr noundef nonnull align 8 dereferenceable(8) %i.me, i32 %i.mg, i32 %.sroa.058.0.copyload) #18
  br label %._crit_edge

bb.bi:                                            ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.mk = load i16, ptr %i.al, align 8            ; 2 uses
  %i.ml = or i16 %i.mk, 32
  store i16 %i.ml, ptr %i.al, align 8
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef nonnull align 8 dereferenceable(20) %8) #18
  %.lobit.i.i.i243 = and i16 %i.mk, 32
  %i.mm = load i16, ptr %i.al, align 8
  %i.mn = and i16 %i.mm, -33
  %i.mo = or disjoint i16 %i.mn, %.lobit.i.i.i243 ; 2 uses
  store i16 %i.mo, ptr %i.al, align 8
  %i.mp = load i16, ptr %i.bh, align 8, !tbaa !44
  %.not1822.i244 = icmp eq i16 %i.mp, 2
  br i1 %.not1822.i244, label %.loopexit438, label %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i247"

"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i247": ; preds = %bb.bi, %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i247"
  %i.mq = phi i16 [ %i.mu, %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i247" ], [ %i.mo, %bb.bi ] ; 2 uses
  %i.mr = or i16 %i.mq, 32
  store i16 %i.mr, ptr %i.al, align 8
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef nonnull align 8 dereferenceable(20) %8) #18
  %.lobit.i.i6.us.i248 = and i16 %i.mq, 32
  %i.ms = load i16, ptr %i.al, align 8
  %i.mt = and i16 %i.ms, -33
  %i.mu = or disjoint i16 %i.mt, %.lobit.i.i6.us.i248 ; 2 uses
  store i16 %i.mu, ptr %i.al, align 8
  %i.mv = load i16, ptr %i.bh, align 8, !tbaa !44
  %.not.us.i249 = icmp eq i16 %i.mv, 2
  br i1 %.not.us.i249, label %.loopexit438, label %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i247", !llvm.loop !0

.loopexit438:                                     ; preds = %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i247", %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %_ZN5clang17PreprocessorLexer20pushConditionalLevelENS_14SourceLocationEbbb.exit169

_ZN4llvmeqENS_9StringRefES0_.exit189:             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit182
  %i.mw = load i16, ptr %.sroa.speculated4.i170.sroa.sel.idx.sroa.sel, align 1
  %i.mx = xor i16 %i.mw, 26988
  %i.my = getelementptr i8, ptr %.sroa.speculated4.i170.sroa.sel.idx.sroa.sel, i64 2
  %i.mz = load i8, ptr %i.my, align 1
  %i.na = zext i8 %i.mz to i16
  %i.nb = xor i16 %i.na, 102
  %i.nc = or i16 %i.mx, %i.nb
  %i.nd = icmp ne i16 %i.nc, 0
  %i.ne = zext i1 %i.nd to i32
  %i.nf = icmp eq i32 %i.ne, 0
  br i1 %i.nf, label %_ZN4llvmeqENS_9StringRefES0_.exit189.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit202.thread396

_ZN4llvmeqENS_9StringRefES0_.exit189.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit189
  %i.ng = load ptr, ptr %i.z, align 8, !tbaa !371 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 64
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !47
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 72
  %i.nk = load i32, ptr %i.nj, align 8, !tbaa !45
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %i.nl ; 5 uses
  %i.nn = getelementptr inbounds i8, ptr %i.nm, i64 -8
  %i.no = getelementptr inbounds i8, ptr %i.nm, i64 -4 ; 2 uses
  %i.np = load i8, ptr %i.no, align 4, !tbaa !737, !range !314, !noundef !283
  %i.nq = trunc nuw i8 %i.np to i1
  br i1 %i.nq, label %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit192, label %bb.bj

bb.bj:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit189.thread
  %i.nr = load ptr, ptr %i.ac, align 8, !tbaa !727 ; 2 uses
  %.not.i190 = icmp eq ptr %i.nr, null
  br i1 %.not.i190, label %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit192, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ns = load ptr, ptr %i.ae, align 8, !tbaa !729 ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !37
  %.not2.i191 = icmp eq i32 %i.nt, 0
  br i1 %.not2.i191, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.nu = ptrtoint ptr %i.gd to i64
  %i.nv = ptrtoint ptr %i.nr to i64
  %i.nw = sub i64 %i.nu, %i.nv
  %i.nx = trunc i64 %i.nw to i32
  store i32 %i.nx, ptr %i.ns, align 4, !tbaa !37
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  br label %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit192

_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit192: ; preds = %bb.bm, %bb.bj, %_ZN4llvmeqENS_9StringRefES0_.exit189.thread
  %i.ny = getelementptr inbounds i8, ptr %i.nm, i64 -2
  %i.nz = load i8, ptr %i.ny, align 2, !tbaa !738, !range !314, !noundef !283
  %i.oa = trunc nuw i8 %i.nz to i1
  br i1 %i.oa, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit192
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.ob = load ptr, ptr %i.an, align 8, !tbaa !281, !noalias !741
  %i.oc = load i32, ptr %12, align 8, !tbaa !48, !noalias !741
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %17, ptr noundef nonnull align 8 dereferenceable(15256) %i.ob, i32 %i.oc, i32 noundef 1296) #18
  %i.od = load ptr, ptr %17, align 8, !tbaa !288  ; 2 uses
  %.not.i.i.i193 = icmp eq ptr %i.od, null
  br i1 %.not.i.i.i193, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i194, label %_ZNK5clang17DiagnosticBuilderlsI10PPElifDiagvEERKS0_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i194: ; preds = %bb.bn
  %i.oe = load ptr, ptr %i.ba, align 8, !tbaa !289
  %i.of = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.oe) ; 2 uses
  store ptr %i.of, ptr %17, align 8, !tbaa !288
  br label %_ZNK5clang17DiagnosticBuilderlsI10PPElifDiagvEERKS0_OT_.exit

_ZNK5clang17DiagnosticBuilderlsI10PPElifDiagvEERKS0_OT_.exit: ; preds = %bb.bn, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i194
  %i.og = phi ptr [ %i.of, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i194 ], [ %i.od, %bb.bn ] ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 1
  %i.oi = load i8, ptr %i.og, align 8, !tbaa !301
  %i.oj = zext i8 %i.oi to i64
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.oj
  store i8 2, ptr %i.ok, align 1, !tbaa !302
  %i.ol = load ptr, ptr %17, align 8, !tbaa !288  ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.on = load i8, ptr %i.ol, align 8, !tbaa !301 ; 2 uses
  %i.oo = add i8 %i.on, 1
  store i8 %i.oo, ptr %i.ol, align 8, !tbaa !301
  %i.op = zext i8 %i.on to i64
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %i.op
  store i64 0, ptr %i.oq, align 8, !tbaa !303
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNK5clang17DiagnosticBuilderlsI10PPElifDiagvEERKS0_OT_.exit, %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit192
  %i.or = load i8, ptr %i.no, align 4, !tbaa !737, !range !314, !noundef !283
  %i.os = trunc nuw i8 %i.or to i1
  br i1 %i.os, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ot = getelementptr inbounds i8, ptr %i.nm, i64 -3
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !740, !range !314, !noundef !283
  %i.ov = trunc nuw i8 %i.ou to i1
  br i1 %i.ov, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.ow = load i16, ptr %i.al, align 8            ; 2 uses
  %i.ox = or i16 %i.ow, 32
  store i16 %i.ox, ptr %i.al, align 8
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef nonnull align 8 dereferenceable(20) %7) #18
  %.lobit.i.i.i255 = and i16 %i.ow, 32
  %i.oy = load i16, ptr %i.al, align 8
  %i.oz = and i16 %i.oy, -33
  %i.pa = or disjoint i16 %i.oz, %.lobit.i.i.i255 ; 2 uses
  store i16 %i.pa, ptr %i.al, align 8
  %i.pb = load i16, ptr %i.bg, align 8, !tbaa !44
  %.not1822.i256 = icmp eq i16 %i.pb, 2
  br i1 %.not1822.i256, label %_ZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EE.exit266, label %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i259"

"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i259": ; preds = %bb.bq, %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i259"
  %i.pc = phi i16 [ %i.pg, %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i259" ], [ %i.pa, %bb.bq ] ; 2 uses
  %i.pd = or i16 %i.pc, 32
  store i16 %i.pd, ptr %i.al, align 8
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef nonnull align 8 dereferenceable(20) %7) #18
  %.lobit.i.i6.us.i260 = and i16 %i.pc, 32
  %i.pe = load i16, ptr %i.al, align 8
  %i.pf = and i16 %i.pe, -33
  %i.pg = or disjoint i16 %i.pf, %.lobit.i.i6.us.i260 ; 2 uses
  store i16 %i.pg, ptr %i.al, align 8
  %i.ph = load i16, ptr %i.bg, align 8, !tbaa !44
  %.not.us.i261 = icmp eq i16 %i.ph, 2
  br i1 %.not.us.i261, label %_ZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EE.exit266, label %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i259", !llvm.loop !0

_ZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EE.exit266: ; preds = %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i259", %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZN5clang17PreprocessorLexer20pushConditionalLevelENS_14SourceLocationEbbb.exit169

bb.br:                                            ; preds = %bb.bp
  %i.pi = load ptr, ptr %i.z, align 8, !tbaa !371
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 26
  store i8 0, ptr %i.pj, align 2, !tbaa !723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8, !tbaa !392
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @_ZN5clang12Preprocessor27EvaluateDirectiveExpressionERPNS_14IdentifierInfoEb(ptr dead_on_unwind nonnull writable sret(%"struct.clang::Preprocessor::DirectiveEvalResult") align 8 %18, ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext true) #18
  %i.pk = load ptr, ptr %i.z, align 8, !tbaa !371 ; 2 uses
  %.not135 = icmp eq ptr %i.pk, null
  br i1 %.not135, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.pl = load i8, ptr %i.bb, align 8, !tbaa !399, !range !314, !noundef !283
  %i.pm = trunc nuw i8 %i.pl to i1                ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pk, i64 26
  store i8 1, ptr %i.pn, align 2, !tbaa !723
  %i.po = load ptr, ptr %i.bc, align 8, !tbaa !391 ; 3 uses
  %.not426 = icmp eq ptr %i.po, null
  br i1 %.not426, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.pp = load i32, ptr %12, align 8, !tbaa !48
  %.sroa.044.0.copyload = load i64, ptr %i.bd, align 4
  %i.pq = select i1 %i.pm, i32 2, i32 1
  %.sroa.043.0.copyload = load i32, ptr %i.nn, align 4, !tbaa !37
  %i.pr = load ptr, ptr %i.po, align 8, !tbaa !321
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 320
  %i.pt = load ptr, ptr %i.ps, align 8
  call void %i.pt(ptr noundef nonnull align 8 dereferenceable(8) %i.po, i32 %i.pp, i64 %.sroa.044.0.copyload, i32 noundef %i.pq, i32 %.sroa.043.0.copyload) #18
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  br i1 %i.pm, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.pu = load i8, ptr %i.be, align 8, !tbaa !400, !range !314, !noundef !283
  %i.pv = trunc nuw i8 %i.pu to i1
  store i8 0, ptr %i.be, align 8, !tbaa !400
  %i.pw = load i32, ptr %i.bf, align 8
  %i.px = icmp ugt i32 %i.pw, 64
  %or.cond.i.i.i.i.jt2 = select i1 %i.pv, i1 %i.px, i1 false
  br i1 %or.cond.i.i.i.i.jt2, label %bb.by, label %_ZN5clang12Preprocessor19DirectiveEvalResultD2Ev.exit.jt2

bb.bw:                                            ; preds = %bb.bu
  %i.py = getelementptr inbounds i8, ptr %i.nm, i64 -3
  store i8 1, ptr %i.py, align 1, !tbaa !740
  %i.pz = load i8, ptr %i.be, align 8, !tbaa !400, !range !314, !noundef !283
  %i.qa = trunc nuw i8 %i.pz to i1
  store i8 0, ptr %i.be, align 8, !tbaa !400
  %i.qb = load i32, ptr %i.bf, align 8
  %i.qc = icmp ugt i32 %i.qb, 64
  %or.cond.i.i.i.i.jt3 = select i1 %i.qa, i1 %i.qc, i1 false
  br i1 %or.cond.i.i.i.i.jt3, label %bb.bz, label %_ZN5clang12Preprocessor19DirectiveEvalResultD2Ev.exit.jt3

bb.bx:                                            ; preds = %bb.br
  %i.qd = load i8, ptr %i.be, align 8, !tbaa !400, !range !314, !noundef !283
  %i.qe = trunc nuw i8 %i.qd to i1
  store i8 0, ptr %i.be, align 8, !tbaa !400
  %i.qf = load i32, ptr %i.bf, align 8
  %i.qg = icmp ugt i32 %i.qf, 64
  %or.cond.i.i.i.i.jt1 = select i1 %i.qe, i1 %i.qg, i1 false
  br i1 %or.cond.i.i.i.i.jt1, label %bb.ca, label %bb.cv

bb.by:                                            ; preds = %bb.bv
  %i.qh = load ptr, ptr %18, align 8, !tbaa !302  ; 2 uses
  %i.qi = icmp eq ptr %i.qh, null
  br i1 %i.qi, label %_ZN5clang12Preprocessor19DirectiveEvalResultD2Ev.exit.jt2, label %bb.cb

bb.bz:                                            ; preds = %bb.bw
  %i.qj = load ptr, ptr %18, align 8, !tbaa !302  ; 2 uses
  %i.qk = icmp eq ptr %i.qj, null
  br i1 %i.qk, label %_ZN5clang12Preprocessor19DirectiveEvalResultD2Ev.exit.jt3, label %bb.cc

bb.ca:                                            ; preds = %bb.bx
  %i.ql = load ptr, ptr %18, align 8, !tbaa !302  ; 2 uses
  %i.qm = icmp eq ptr %i.ql, null
  br i1 %i.qm, label %bb.cv, label %bb.cd

bb.cb:                                            ; preds = %bb.by
  call void @_ZdaPv(ptr noundef nonnull %i.qh) #20
  br label %_ZN5clang12Preprocessor19DirectiveEvalResultD2Ev.exit.jt2

bb.cc:                                            ; preds = %bb.bz
  call void @_ZdaPv(ptr noundef nonnull %i.qj) #20
  br label %_ZN5clang12Preprocessor19DirectiveEvalResultD2Ev.exit.jt3

bb.cd:                                            ; preds = %bb.ca
  call void @_ZdaPv(ptr noundef nonnull %i.ql) #20
  br label %bb.cv

_ZN5clang12Preprocessor19DirectiveEvalResultD2Ev.exit.jt2: ; preds = %bb.bv, %bb.cb, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %_ZN5clang17PreprocessorLexer20pushConditionalLevelENS_14SourceLocationEbbb.exit169

_ZN5clang12Preprocessor19DirectiveEvalResultD2Ev.exit.jt3: ; preds = %bb.bw, %bb.cc, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %._crit_edge

_ZN4llvmeqENS_9StringRefES0_.exit198:             ; preds = %bb.at
  %23 = load i32, ptr %.sroa.speculated4.i170.sroa.sel.idx.sroa.sel, align 1
  %24 = xor i32 %23, 1684433260
  %25 = getelementptr i8, ptr %.sroa.speculated4.i170.sroa.sel.idx.sroa.sel, i64 4
  %26 = load i16, ptr %25, align 1
  %27 = zext i16 %26 to i32
  %28 = xor i32 %27, 26213
  %29 = or i32 %24, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %.thread399, label %_ZN4llvmeqENS_9StringRefES0_.exit202.thread396

_ZN4llvmeqENS_9StringRefES0_.exit198.a:           ; preds = %bb.at
  %33 = load i32, ptr %.sroa.speculated4.i170.sroa.sel.idx.sroa.sel, align 1
  %34 = xor i32 %33, 1852205420
  %35 = getelementptr i8, ptr %.sroa.speculated4.i170.sroa.sel.idx.sroa.sel, i64 3
  %36 = load i32, ptr %35, align 1
  %37 = xor i32 %36, 1717920878
  %38 = or i32 %34, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  %i.qn = icmp eq i32 %40, 0
  br i1 %i.qn, label %_ZN4llvmeqENS_9StringRefES0_.exit206, label %_ZN4llvmeqENS_9StringRefES0_.exit202.thread396

.thread399:                                       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit198
  br i1 %.not.i153, label %_ZN4llvmeqENS_9StringRefES0_.exit206, label %_ZN4llvmeqENS_9StringRefES0_.exit202

_ZN4llvmeqENS_9StringRefES0_.exit202:             ; preds = %.thread399
  %bcmp.i201 = call i32 @bcmp(ptr nonnull %.sroa.speculated4.i170.sroa.sel.idx.sroa.sel, ptr nonnull @.str.18, i64 %i.jf)
  %i.qo = icmp eq i32 %bcmp.i201, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit206

_ZN4llvmeqENS_9StringRefES0_.exit206:             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit198.a, %.thread399, %_ZN4llvmeqENS_9StringRefES0_.exit202
  %.0.i204 = phi i1 [ %i.qo, %_ZN4llvmeqENS_9StringRefES0_.exit202 ], [ true, %.thread399 ], [ false, %_ZN4llvmeqENS_9StringRefES0_.exit198.a ] ; 5 uses
  %i.qp = load ptr, ptr %i.z, align 8, !tbaa !371 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 64
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !47
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qp, i64 72
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !45
  %i.qu = zext i32 %i.qt to i64
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %i.qu ; 4 uses
  %.sroa.0282.0.copyload = load i32, ptr %12, align 8, !tbaa !37
  %i.qw = getelementptr inbounds i8, ptr %i.qv, i64 -4 ; 2 uses
  %i.qx = load i8, ptr %i.qw, align 4, !tbaa !737, !range !314, !noundef !283
  %i.qy = trunc nuw i8 %i.qx to i1
  br i1 %i.qy, label %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit209, label %bb.ce

bb.ce:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit206
  %i.qz = load ptr, ptr %i.ac, align 8, !tbaa !727 ; 2 uses
  %.not.i207 = icmp eq ptr %i.qz, null
  br i1 %.not.i207, label %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit209, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ra = load ptr, ptr %i.ae, align 8, !tbaa !729 ; 2 uses
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !37
  %.not2.i208 = icmp eq i32 %i.rb, 0
  br i1 %.not2.i208, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.rc = ptrtoint ptr %i.gd to i64
  %i.rd = ptrtoint ptr %i.qz to i64
  %i.re = sub i64 %i.rc, %i.rd
  %i.rf = trunc i64 %i.re to i32
  store i32 %i.rf, ptr %i.ra, align 4, !tbaa !37
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  br label %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit209

_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit209: ; preds = %bb.ch, %bb.ce, %_ZN4llvmeqENS_9StringRefES0_.exit206
  %i.rg = load ptr, ptr %i.ag, align 8, !tbaa !282, !nonnull !283, !align !284
  %i.rh = load i64, ptr %i.rg, align 8            ; 3 uses
  %i.ri = and i64 %i.rh, 4096
  %.not132 = icmp eq i64 %i.ri, 0
  br i1 %.not132, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit209
  %i.rj = and i64 %i.rh, 131072
  %.not134 = icmp eq i64 %i.rj, 0
  %i.rk = select i1 %.not134, i32 1223, i32 1354
  br label %bb.ck

bb.cj:                                            ; preds = %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit209
  %i.rl = and i64 %i.rh, 8
  %.not133 = icmp eq i64 %i.rl, 0
  %i.rm = select i1 %.not133, i32 1215, i32 1334
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.0127 = phi i32 [ %i.rk, %bb.ci ], [ %i.rm, %bb.cj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  %i.rn = load ptr, ptr %i.an, align 8, !tbaa !281, !noalias !742
  %i.ro = load i32, ptr %12, align 8, !tbaa !48, !noalias !742
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %19, ptr noundef nonnull align 8 dereferenceable(15256) %i.rn, i32 %i.ro, i32 noundef %.0127) #18
  %i.rp = load ptr, ptr %19, align 8, !tbaa !288  ; 2 uses
  %.not.i.i.i210 = icmp eq ptr %i.rp, null
  br i1 %.not.i.i.i210, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i211, label %_ZNK5clang17DiagnosticBuilderlsI10PPElifDiagvEERKS0_OT_.exit212

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i211: ; preds = %bb.ck
  %i.rq = load ptr, ptr %i.bj, align 8, !tbaa !289
  %i.rr = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.rq) ; 2 uses
  store ptr %i.rr, ptr %19, align 8, !tbaa !288
  br label %_ZNK5clang17DiagnosticBuilderlsI10PPElifDiagvEERKS0_OT_.exit212

_ZNK5clang17DiagnosticBuilderlsI10PPElifDiagvEERKS0_OT_.exit212: ; preds = %bb.ck, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i211
  %i.rs = phi ptr [ %i.rr, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i211 ], [ %i.rp, %bb.ck ] ; 2 uses
  %i.rt = select i1 %.0.i204, i64 1, i64 2        ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 1
  %i.rv = load i8, ptr %i.rs, align 8, !tbaa !301
  %i.rw = zext i8 %i.rv to i64
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.rw
  store i8 2, ptr %i.rx, align 1, !tbaa !302
  %i.ry = load ptr, ptr %19, align 8, !tbaa !288  ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  %i.sa = load i8, ptr %i.ry, align 8, !tbaa !301 ; 2 uses
  %i.sb = add i8 %i.sa, 1
  store i8 %i.sb, ptr %i.ry, align 8, !tbaa !301
  %i.sc = zext i8 %i.sa to i64
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %i.sc
  store i64 %i.rt, ptr %i.sd, align 8, !tbaa !303
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  %i.se = getelementptr inbounds i8, ptr %i.qv, i64 -2
  %i.sf = load i8, ptr %i.se, align 2, !tbaa !738, !range !314, !noundef !283
  %i.sg = trunc nuw i8 %i.sf to i1
  br i1 %i.sg, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %_ZNK5clang17DiagnosticBuilderlsI10PPElifDiagvEERKS0_OT_.exit212
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.sh = load ptr, ptr %i.an, align 8, !tbaa !281, !noalias !743
  %i.si = load i32, ptr %12, align 8, !tbaa !48, !noalias !743
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %20, ptr noundef nonnull align 8 dereferenceable(15256) %i.sh, i32 %i.si, i32 noundef 1296) #18
  %i.sj = load ptr, ptr %20, align 8, !tbaa !288  ; 2 uses
  %.not.i.i.i213 = icmp eq ptr %i.sj, null
  br i1 %.not.i.i.i213, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i214, label %_ZNK5clang17DiagnosticBuilderlsI10PPElifDiagvEERKS0_OT_.exit215

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i214: ; preds = %bb.cl
  %i.sk = load ptr, ptr %i.bk, align 8, !tbaa !289
  %i.sl = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.sk) ; 2 uses
  store ptr %i.sl, ptr %20, align 8, !tbaa !288
  br label %_ZNK5clang17DiagnosticBuilderlsI10PPElifDiagvEERKS0_OT_.exit215

_ZNK5clang17DiagnosticBuilderlsI10PPElifDiagvEERKS0_OT_.exit215: ; preds = %bb.cl, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i214
  %i.sm = phi ptr [ %i.sl, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i214 ], [ %i.sj, %bb.cl ] ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 1
  %i.so = load i8, ptr %i.sm, align 8, !tbaa !301
  %i.sp = zext i8 %i.so to i64
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 %i.sp
  store i8 2, ptr %i.sq, align 1, !tbaa !302
  %i.sr = load ptr, ptr %20, align 8, !tbaa !288  ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %i.st = load i8, ptr %i.sr, align 8, !tbaa !301 ; 2 uses
  %i.su = add i8 %i.st, 1
  store i8 %i.su, ptr %i.sr, align 8, !tbaa !301
  %i.sv = zext i8 %i.st to i64
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.sv
  store i64 %i.rt, ptr %i.sw, align 8, !tbaa !303
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNK5clang17DiagnosticBuilderlsI10PPElifDiagvEERKS0_OT_.exit215, %_ZNK5clang17DiagnosticBuilderlsI10PPElifDiagvEERKS0_OT_.exit212
  %i.sx = load i8, ptr %i.qw, align 4, !tbaa !737, !range !314, !noundef !283
  %i.sy = trunc nuw i8 %i.sx to i1
  br i1 %i.sy, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.sz = getelementptr inbounds i8, ptr %i.qv, i64 -3
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !740, !range !314, !noundef !283
  %i.tb = trunc nuw i8 %i.ta to i1
  br i1 %i.tb, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn, %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.tc = load i16, ptr %i.al, align 8            ; 2 uses
  %i.td = or i16 %i.tc, 32
  store i16 %i.td, ptr %i.al, align 8
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef nonnull align 8 dereferenceable(20) %6) #18
  %.lobit.i.i.i267 = and i16 %i.tc, 32
  %i.te = load i16, ptr %i.al, align 8
  %i.tf = and i16 %i.te, -33
  %i.tg = or disjoint i16 %i.tf, %.lobit.i.i.i267 ; 2 uses
  store i16 %i.tg, ptr %i.al, align 8
  %i.th = load i16, ptr %i.bn, align 8, !tbaa !44
  %.not1822.i268 = icmp eq i16 %i.th, 2
  br i1 %.not1822.i268, label %_ZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EE.exit278, label %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i271"

"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i271": ; preds = %bb.co, %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i271"
  %i.ti = phi i16 [ %i.tm, %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i271" ], [ %i.tg, %bb.co ] ; 2 uses
  %i.tj = or i16 %i.ti, 32
  store i16 %i.tj, ptr %i.al, align 8
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef nonnull align 8 dereferenceable(20) %6) #18
  %.lobit.i.i6.us.i272 = and i16 %i.ti, 32
  %i.tk = load i16, ptr %i.al, align 8
  %i.tl = and i16 %i.tk, -33
  %i.tm = or disjoint i16 %i.tl, %.lobit.i.i6.us.i272 ; 2 uses
  store i16 %i.tm, ptr %i.al, align 8
  %i.tn = load i16, ptr %i.bn, align 8, !tbaa !44
  %.not.us.i273 = icmp eq i16 %i.tn, 2
  br i1 %.not.us.i273, label %_ZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EE.exit278, label %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i271", !llvm.loop !0

_ZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EE.exit278: ; preds = %"_ZZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EEENK3$_0clEv.exit10.us.i271", %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZN5clang17PreprocessorLexer20pushConditionalLevelENS_14SourceLocationEbbb.exit169

bb.cp:                                            ; preds = %bb.cn
  %i.to = load ptr, ptr %i.z, align 8, !tbaa !371
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 26
  store i8 0, ptr %i.tp, align 2, !tbaa !723
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  call void @_ZN5clang12Preprocessor13ReadMacroNameERNS_5TokenENS_8MacroUseEPb(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef nonnull align 8 dereferenceable(20) %21, i32 noundef 0, ptr noundef null)
  %i.tq = load ptr, ptr %i.z, align 8, !tbaa !371
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 26
  store i8 1, ptr %i.tr, align 2, !tbaa !723
  %i.ts = load i16, ptr %i.bl, align 8, !tbaa !44
  %i.tt = icmp eq i16 %i.ts, 2
  br i1 %i.tt, label %.thread400, label %bb.cq, !llvm.loop !710

.thread400:                                       ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %.thread375.jt2

bb.cq:                                            ; preds = %bb.cp
  call void @_ZNK5clang12Preprocessor26emitMacroExpansionWarningsERKNS_5TokenEb(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef nonnull align 8 dereferenceable(20) %21, i1 noundef zeroext false)
  %i.tu = select i1 %.0.i204, ptr @.str.9, ptr @.str.10
  %i.tv = select i1 %.0.i204, i64 7, i64 8
  %i.tw = call i32 @_ZN5clang12Preprocessor19CheckEndOfDirectiveEN4llvm9StringRefEbPNS1_15SmallVectorImplINS_5TokenEEE(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr nonnull %i.tu, i64 %i.tv, i1 noundef zeroext false, ptr noundef null) ; 0 uses
  %i.tx = load i16, ptr %i.bl, align 8, !tbaa !44 ; 2 uses
  %i.ty = add i16 %i.tx, -7
  %i.tz = icmp ult i16 %i.ty, 13
  %i.ua = icmp eq i16 %i.tx, 1
  %or.cond.i217 = or i1 %i.ua, %i.tz
  %i.ub = load ptr, ptr %i.bm, align 8
  %.0.i218 = select i1 %or.cond.i217, ptr null, ptr %i.ub
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  call void @_ZN5clang12Preprocessor18getMacroDefinitionEPKNS_14IdentifierInfoE(ptr dead_on_unwind nonnull writable sret(%"class.clang::MacroDefinition") align 8 %22, ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef %.0.i218)
  %i.uc = call noundef ptr @_ZNK5clang15MacroDefinition12getMacroInfoEv(ptr noundef nonnull align 8 dereferenceable(24) %22)
  %i.ud = load ptr, ptr %i.bc, align 8, !tbaa !391 ; 3 uses
  %.not425 = icmp eq ptr %i.ud, null
  br i1 %.not425, label %bb.cr, label %.sink.split

.sink.split:                                      ; preds = %bb.cq
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !321
  %. = select i1 %.0.i204, i64 336, i64 360
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 %.
  %i.ug = load ptr, ptr %i.uf, align 8
  call void %i.ug(ptr noundef nonnull align 8 dereferenceable(8) %i.ud, i32 %.sroa.0282.0.copyload, ptr noundef nonnull align 8 dereferenceable(20) %21, ptr noundef nonnull align 8 dereferenceable(24) %22) #18
  br label %bb.cr

bb.cr:                                            ; preds = %.sink.split, %bb.cq
  %i.uh = icmp eq ptr %i.uc, null
  %i.ui = xor i1 %.0.i204, %i.uh
  br i1 %i.ui, label %bb.cs, label %.thread403

.thread403:                                       ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %_ZN5clang17PreprocessorLexer20pushConditionalLevelENS_14SourceLocationEbbb.exit169

bb.cs:                                            ; preds = %bb.cr
  %i.uj = getelementptr inbounds i8, ptr %i.qv, i64 -3
  store i8 1, ptr %i.uj, align 1, !tbaa !740
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %._crit_edge

_ZN4llvmeqENS_9StringRefES0_.exit202.thread396:   ; preds = %bb.at, %_ZN4llvmeqENS_9StringRefES0_.exit189, %_ZN4llvmeqENS_9StringRefES0_.exit176, %_ZN4llvmeqENS_9StringRefES0_.exit198, %_ZN4llvmeqENS_9StringRefES0_.exit198.a
  call void @_ZNK5clang12Preprocessor22SuggestTypoedDirectiveERKNS_5TokenEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef nonnull align 8 dereferenceable(20) %12, ptr nonnull %.sroa.0312.1, i64 %.sroa.12.1)
  br label %_ZN5clang17PreprocessorLexer20pushConditionalLevelENS_14SourceLocationEbbb.exit169

bb.ct:                                            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread365
  call void @_ZNK5clang12Preprocessor22SuggestTypoedDirectiveERKNS_5TokenEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef nonnull align 8 dereferenceable(20) %12, ptr nonnull %.sroa.0312.1, i64 %.sroa.12.1)
  br label %_ZN5clang17PreprocessorLexer20pushConditionalLevelENS_14SourceLocationEbbb.exit169

_ZN5clang17PreprocessorLexer20pushConditionalLevelENS_14SourceLocationEbbb.exit169: ; preds = %_ZN5clang12Preprocessor19DirectiveEvalResultD2Ev.exit.jt2, %_ZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EE.exit278, %.thread403, %_ZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EE.exit266, %_ZN4llvmeqENS_9StringRefES0_.exit202.thread396, %.loopexit, %.loopexit438, %_ZN4llvmeqENS_9StringRefES0_.exit164.thread, %bb.ar, %bb.as, %bb.ct
  %i.uk = load ptr, ptr %i.z, align 8, !tbaa !371
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 24
  store i8 0, ptr %i.ul, align 8, !tbaa !387
  %i.um = load ptr, ptr %i.ad, align 8, !tbaa !375 ; 2 uses
  %.not431 = icmp eq ptr %i.um, null
  br i1 %.not431, label %.thread375.jt2, label %bb.cu

bb.cu:                                            ; preds = %_ZN5clang17PreprocessorLexer20pushConditionalLevelENS_14SourceLocationEbbb.exit169
  call void @_ZN5clang5Lexer22resetExtendedTokenModeEv(ptr noundef nonnull align 8 dereferenceable(204) %i.um) #18
  br label %.thread375.jt2

.thread375.jt2:                                   ; preds = %.thread400, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt2, %_ZN5clang17PreprocessorLexer20pushConditionalLevelENS_14SourceLocationEbbb.exit169, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.backedge441

._crit_edge:                                      ; preds = %bb.bg, %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit, %bb.ay, %bb.bh, %bb.cs, %_ZN5clang12Preprocessor19DirectiveEvalResultD2Ev.exit.jt3
  %.sroa.0340.6.jt3 = phi i32 [ %i.kc, %bb.ay ], [ 0, %bb.cs ], [ %i.mb, %bb.bh ], [ 0, %_ZN5clang12Preprocessor19DirectiveEvalResultD2Ev.exit.jt3 ], [ %i.mb, %bb.bg ], [ %i.kc, %_ZZN5clang12Preprocessor28SkipExcludedConditionalBlockENS_14SourceLocationES1_bbS1_EN20SkippingRangeStateTy10endLexPassEPKc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %split.sink.split

bb.cv:                                            ; preds = %bb.bx, %bb.cd, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.loopexit440

.backedge441:                                     ; preds = %bb.af, %bb.ae, %bb.ai, %bb.ah, %.thread375.jt2
  br label %bb.f, !llvm.loop !710

split.sink.split:                                 ; preds = %bb.y, %bb.z, %._crit_edge
  %.sroa.0340.9.ph = phi i32 [ %.sroa.0340.6.jt3, %._crit_edge ], [ 0, %bb.z ], [ 0, %bb.y ]
  %.pre446478 = load ptr, ptr %i.z, align 8, !tbaa !371
  br label %split

split:                                            ; preds = %.loopexit439, %split.sink.split
  %i.un = phi ptr [ %.pre446478, %split.sink.split ], [ %.pre446, %.loopexit439 ] ; 3 uses
  %.sroa.0340.9 = phi i32 [ %.sroa.0340.9.ph, %split.sink.split ], [ 0, %.loopexit439 ] ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 26
  store i8 0, ptr %i.uo, align 2, !tbaa !723
  %i.up = load ptr, ptr %i.bc, align 8, !tbaa !391 ; 3 uses
  %.not434 = icmp eq ptr %i.up, null
  br i1 %.not434, label %.loopexit440, label %bb.cw

bb.cw:                                            ; preds = %split
  %i.uq = load i16, ptr %i.af, align 8, !tbaa !44
  %.not435 = icmp eq i16 %i.uq, 1
  br i1 %.not435, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.ur = load i32, ptr %i.ar, align 8, !tbaa !388
  %i.us = icmp eq i32 %i.ur, 1
  br i1 %i.us, label %.loopexit440, label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.not436 = icmp eq i32 %.sroa.0340.9, 0
  br i1 %.not436, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.ut = load ptr, ptr %i.un, align 8, !tbaa !321
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 32
  %i.uv = load ptr, ptr %i.uu, align 8
  %i.uw = call i32 %i.uv(ptr noundef nonnull align 8 dereferenceable(112) %i.un) #18
  br label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cz
  %.sroa.017.0 = phi i32 [ %i.uw, %bb.cz ], [ %.sroa.0340.9, %bb.cy ]
  %i.ux = load i32, ptr %12, align 8, !tbaa !48
  %.sroa.2.0.insert.ext = zext i32 %.sroa.017.0 to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %1 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  %i.uy = load ptr, ptr %i.up, align 8, !tbaa !321
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 304
  %i.va = load ptr, ptr %i.uz, align 8
  call void %i.va(ptr noundef nonnull align 8 dereferenceable(8) %i.up, i64 %.sroa.0.0.insert.insert, i32 %i.ux) #18
  br label %.loopexit440

.loopexit440:                                     ; preds = %bb.cv, %split, %bb.cx, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  store i8 %i.f, ptr %i.e, align 8, !tbaa !304
  ret void
}

declare noundef zeroext i1 @_ZN5clang5Lexer40LexDependencyDirectiveTokenWhileSkippingERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(204), ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5clang5Lexer3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(204), ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #2

declare noundef ptr @_ZNK5clang12Preprocessor20LookUpIdentifierInfoERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344), ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5clang12Preprocessor29HandleModuleContextualKeywordERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344), ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #2

declare void @_ZN5clang5Lexer22resetExtendedTokenModeEv(ptr noundef nonnull align 8 dereferenceable(204)) local_unnamed_addr #2

declare void @_ZN5clang12Preprocessor27EvaluateDirectiveExpressionERPNS_14IdentifierInfoEb(ptr dead_on_unwind writable sret(%"struct.clang::Preprocessor::DirectiveEvalResult") align 8, ptr noundef nonnull align 8 dereferenceable(3344), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang12Preprocessor26emitMacroExpansionWarningsERKNS_5TokenEb(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i16, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = add i16 %i.b, -7
  %i.d = icmp ult i16 %i.c, 13
  %i.e = icmp eq i16 %i.b, 1
  %or.cond.i = or i1 %i.e, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.0.i = select i1 %or.cond.i, ptr null, ptr %i.g
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = and i64 %i.h, 1099511627776
  %.not30 = icmp eq i64 %i.i, 0
  br i1 %.not30, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5clang12Preprocessor27emitMacroDeprecationWarningERKNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) #18
  %.pre = load i64, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i64 [ %.pre, %bb.b ], [ %i.h, %bb.a ]
  %i.k = and i64 %i.j, 2199023255552
  %.not31 = icmp eq i64 %i.k, 0
  br i1 %.not31, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !311, !nonnull !283, !align !284
  %i.n = load i32, ptr %1, align 8, !tbaa !48
  %i.o = tail call noundef zeroext i1 @_ZNK5clang13SourceManager12isInMainFileENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(776) %i.m, i32 %i.n) #18
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNK5clang12Preprocessor28emitRestrictExpansionWarningERKNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br i1 %2, label %_ZN4llvmeqENS_9StringRefES0_.exit21.thread28, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !307  ; 5 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !309  ; 4 uses
  %i.s = and i64 %i.r, 4294967295
  %.not.i = icmp eq i64 %i.s, 8
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread25

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load i64, ptr %i.t, align 1
  %i.v = icmp ne i64 %i.u, 6436850368004902473
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread25

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !282, !nonnull !283, !align !284
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = and i64 %i.ab, 140737488355328
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread25, label %bb.h

bb.h:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  tail call void @_ZNK5clang12Preprocessor25emitRestrictInfNaNWarningERKNS_5TokenEj(ptr noundef nonnull align 8 dereferenceable(3344) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef 0) #18
  %.pre32 = load ptr, ptr %i.p, align 8, !tbaa !307 ; 2 uses
  %.pre33 = load i64, ptr %.pre32, align 8, !tbaa !309
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread25

_ZN4llvmeqENS_9StringRefES0_.exit.thread25:       ; preds = %bb.g, %bb.h, %_ZN4llvmeqENS_9StringRefES0_.exit.thread, %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.ad = phi i64 [ %i.r, %bb.g ], [ %.pre33, %bb.h ], [ %i.r, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ], [ %i.r, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  %i.ae = phi ptr [ %i.q, %bb.g ], [ %.pre32, %bb.h ], [ %i.q, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ], [ %i.q, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  %i.af = and i64 %i.ad, 4294967295
  %.not.i18 = icmp eq i64 %i.af, 3
  br i1 %.not.i18, label %_ZN4llvmeqENS_9StringRefES0_.exit21, label %_ZN4llvmeqENS_9StringRefES0_.exit21.thread28

_ZN4llvmeqENS_9StringRefES0_.exit21:              ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread25
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 1
  %i.ai = xor i16 %i.ah, 16718
  %i.aj = getelementptr i8, ptr %i.ag, i64 2
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i16
  %i.am = xor i16 %i.al, 78
  %i.an = or i16 %i.ai, %i.am
  %i.ao = icmp ne i16 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZN4llvmeqENS_9StringRefES0_.exit21.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit21.thread28

_ZN4llvmeqENS_9StringRefES0_.exit21.thread:       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit21
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_1
