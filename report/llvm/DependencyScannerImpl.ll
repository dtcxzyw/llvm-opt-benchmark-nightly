Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DependencyScannerImpl?download=true
inline.NumInlined: 3690
inline.NumDeleted: 2175
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0

$_ZN5clang11PPCallbacks27releasePreservedDescendantsEN4llvm12function_refIFbPS0_EEERNS1_15SmallVectorImplIS3_EE = comdat any

$_ZN19AsyncModuleCompiles3addEN4llvm15unique_functionIFvvEEE = comdat any

$_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJN4llvm15unique_functionIFvvEEEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZNSt6thread24_M_thread_deps_never_runEv = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJN4llvm15unique_functionIFvvEEEEEEEED2Ev = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJN4llvm15unique_functionIFvvEEEEEEEED0Ev = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJN4llvm15unique_functionIFvvEEEEEEEE6_M_runEv = comdat any

$_ZZN4llvm6detail18UniqueFunctionBaseIvJEEC1IZN18AsyncModuleCompile17moduleLoadSkippedEPN5clang6ModuleEEUlvE_S8_EET_NS2_8CalledAsIT0_EEENUlPKS2_E_8__invokeESE_ = comdat any

$_ZN4llvm12function_refIFvvEE11callback_fnIZZN18AsyncModuleCompile17moduleLoadSkippedEPN5clang6ModuleEENKUlvE_clEvEUlvE_EEvl = comdat any

$_ZZZN18AsyncModuleCompile17moduleLoadSkippedEPN5clang6ModuleEENKUlvE_clEvENKUlvE_clEv = comdat any

$_ZZN4llvm6detail18UniqueFunctionBaseIvJEEC1IZN18AsyncModuleCompile17moduleLoadSkippedEPN5clang6ModuleEEUlvE_S8_EET_NS2_8CalledAsIT0_EEENUlPS2_SD_E_8__invokeESD_SD_ = comdat any

$_ZN5clang22CompilerInvocationBaseaSEOS0_ = comdat any

$_ZSt10_ConstructIN5clang16CompilerInstanceEJSt10shared_ptrINS0_18CompilerInvocationEES2_INS0_22PCHContainerOperationsEES2_INS0_11ModuleCacheEEEEvPT_DpOT0_ = comdat any

$_ZN5clang12dependencies22PrebuiltModuleASTAttrsC2ERKS1_ = comdat any

$_ZNSt8_Rb_treeIN4llvm9StringRefES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE7_M_copyILb0ENS7_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS1_ESC_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZTV31SingleTUWithAsyncModuleCompiles = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN5clang18CompilerInvocationESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN5clang12dependencies18ModuleDepCollectorESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTV18AsyncModuleCompile = comdat any

$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJN4llvm15unique_functionIFvvEEEEEEEEE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@_ZTV35SingleModuleWithAsyncModuleCompiles = unnamed_addr constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr null, ptr @_ZN5clang14FrontendAction22PrepareToExecuteActionERNS_16CompilerInstanceE, ptr @_ZN5clang26PreprocessorFrontendAction17CreateASTConsumerERNS_16CompilerInstanceEN4llvm9StringRefE, ptr @_ZN5clang14FrontendAction15BeginInvocationERNS_16CompilerInstanceE, ptr @_ZN35SingleModuleWithAsyncModuleCompiles21BeginSourceFileActionERN5clang16CompilerInstanceE, ptr @_ZN5clang20PreprocessOnlyAction13ExecuteActionEv, ptr @_ZN5clang14FrontendAction19EndSourceFileActionEv, ptr @_ZN5clang14FrontendAction22shouldEraseOutputFilesEv, ptr @_ZN5clang14FrontendActionD2Ev, ptr @_ZN35SingleModuleWithAsyncModuleCompilesD0Ev, ptr @_ZNK5clang14FrontendAction20isModelParsingActionEv, ptr @_ZNK5clang26PreprocessorFrontendAction20usesPreprocessorOnlyEv, ptr @_ZN5clang14FrontendAction22getTranslationUnitKindEv, ptr @_ZNK5clang14FrontendAction13hasPCHSupportEv, ptr @_ZNK5clang14FrontendAction17hasASTFileSupportEv, ptr @_ZNK5clang14FrontendAction12hasIRSupportEv, ptr @_ZNK5clang14FrontendAction24hasCodeCompletionSupportEv, ptr @_ZN5clang14FrontendAction13EndSourceFileEv] }, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVN12_GLOBAL__N_122PrebuiltModuleListenerE = internal unnamed_addr constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_122PrebuiltModuleListenerD2Ev, ptr @_ZN12_GLOBAL__N_122PrebuiltModuleListenerD0Ev, ptr @_ZN5clang17ASTReaderListener26ReadFullVersionInformationEN4llvm9StringRefE, ptr @_ZN5clang17ASTReaderListener14ReadModuleNameEN4llvm9StringRefE, ptr @_ZN5clang17ASTReaderListener17ReadModuleMapFileEN4llvm9StringRefE, ptr @_ZN5clang17ASTReaderListener19ReadLanguageOptionsERKNS_11LangOptionsEN4llvm9StringRefEbb, ptr @_ZN5clang17ASTReaderListener18ReadCodeGenOptionsERKNS_14CodeGenOptionsEN4llvm9StringRefEbb, ptr @_ZN5clang17ASTReaderListener17ReadTargetOptionsERKNS_13TargetOptionsEN4llvm9StringRefEbb, ptr @_ZN5clang17ASTReaderListener21ReadDiagnosticOptionsERNS_17DiagnosticOptionsEN4llvm9StringRefEb, ptr @_ZN5clang17ASTReaderListener21ReadFileSystemOptionsERKNS_17FileSystemOptionsEb, ptr @_ZN12_GLOBAL__N_122PrebuiltModuleListener23ReadHeaderSearchOptionsERKN5clang19HeaderSearchOptionsEN4llvm9StringRefES6_b, ptr @_ZN12_GLOBAL__N_122PrebuiltModuleListener21ReadHeaderSearchPathsERKN5clang19HeaderSearchOptionsEb, ptr @_ZN5clang17ASTReaderListener23ReadPreprocessorOptionsERKNS_19PreprocessorOptionsEN4llvm9StringRefEbbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN5clang17ASTReaderListener11ReadCounterERKNS_13serialization10ModuleFileEj, ptr @_ZN12_GLOBAL__N_122PrebuiltModuleListener15visitModuleFileEN5clang14ModuleFileNameENS1_13serialization10ModuleKindEb, ptr @_ZN12_GLOBAL__N_122PrebuiltModuleListener24needsInputFileVisitationEv, ptr @_ZN12_GLOBAL__N_122PrebuiltModuleListener30needsSystemInputFileVisitationEv, ptr @_ZN5clang17ASTReaderListener14visitInputFileEN4llvm9StringRefEbbb, ptr @_ZN12_GLOBAL__N_122PrebuiltModuleListener25visitInputFileAsRequestedEN4llvm9StringRefES2_bblb, ptr @_ZNK12_GLOBAL__N_122PrebuiltModuleListener21needsImportVisitationEv, ptr @_ZN12_GLOBAL__N_122PrebuiltModuleListener11visitImportEN4llvm9StringRefES2_, ptr @_ZN5clang17ASTReaderListener23readModuleFileExtensionERKNS_27ModuleFileExtensionMetadataE] }, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"unknown module format\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"clang-scan-deps\\ dependency\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN5clang18PPChainedCallbacksE = external unnamed_addr constant { [52 x ptr] }, align 8
@_ZTVN5clang18DiagnosticConsumerE = external unnamed_addr constant { [9 x ptr] }, align 8
@_ZTV31SingleTUWithAsyncModuleCompiles = linkonce_odr unnamed_addr constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr null, ptr @_ZN5clang14FrontendAction22PrepareToExecuteActionERNS_16CompilerInstanceE, ptr @_ZN5clang26PreprocessorFrontendAction17CreateASTConsumerERNS_16CompilerInstanceEN4llvm9StringRefE, ptr @_ZN5clang14FrontendAction15BeginInvocationERNS_16CompilerInstanceE, ptr @_ZN31SingleTUWithAsyncModuleCompiles21BeginSourceFileActionERN5clang16CompilerInstanceE, ptr @_ZN5clang20PreprocessOnlyAction13ExecuteActionEv, ptr @_ZN5clang14FrontendAction19EndSourceFileActionEv, ptr @_ZN5clang14FrontendAction22shouldEraseOutputFilesEv, ptr @_ZN5clang14FrontendActionD2Ev, ptr @_ZN31SingleTUWithAsyncModuleCompilesD0Ev, ptr @_ZNK5clang14FrontendAction20isModelParsingActionEv, ptr @_ZNK5clang26PreprocessorFrontendAction20usesPreprocessorOnlyEv, ptr @_ZN5clang14FrontendAction22getTranslationUnitKindEv, ptr @_ZNK5clang14FrontendAction13hasPCHSupportEv, ptr @_ZNK5clang14FrontendAction17hasASTFileSupportEv, ptr @_ZNK5clang14FrontendAction12hasIRSupportEv, ptr @_ZNK5clang14FrontendAction24hasCodeCompletionSupportEv, ptr @_ZN5clang14FrontendAction13EndSourceFileEv] }, comdat, align 8
@_ZTVN5clang26ReadPCHAndPreprocessActionE = external unnamed_addr constant { [19 x ptr] }, align 8
@.str.14 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1
@_ZTVN12_GLOBAL__N_134ScanningDependencyDirectivesGetterE = internal unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_134ScanningDependencyDirectivesGetter8cloneForERN5clang11FileManagerE, ptr @_ZN12_GLOBAL__N_134ScanningDependencyDirectivesGetterclEN5clang12FileEntryRefE, ptr @_ZN5clang26DependencyDirectivesGetterD2Ev, ptr @_ZN12_GLOBAL__N_134ScanningDependencyDirectivesGetterD0Ev] }, align 8
@_ZN5clang12dependencies34DependencyScanningWorkerFilesystem2IDE = external constant i8, align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5clang18CompilerInvocationESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5clang18CompilerInvocationESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5clang18CompilerInvocationESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5clang18CompilerInvocationESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5clang18CompilerInvocationESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN5clang12dependencies18ModuleDepCollectorESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5clang12dependencies18ModuleDepCollectorESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5clang12dependencies18ModuleDepCollectorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5clang12dependencies18ModuleDepCollectorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5clang12dependencies18ModuleDepCollectorESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTV18AsyncModuleCompile = linkonce_odr unnamed_addr constant { [52 x ptr] } { [52 x ptr] [ptr null, ptr null, ptr @_ZN5clang11PPCallbacksD2Ev, ptr @_ZN18AsyncModuleCompileD0Ev, ptr @_ZN5clang11PPCallbacks11FileChangedENS_14SourceLocationENS0_16FileChangeReasonENS_6SrcMgr18CharacteristicKindENS_6FileIDE, ptr @_ZN5clang11PPCallbacks16LexedFileChangedENS_6FileIDENS0_21LexedFileChangeReasonENS_6SrcMgr18CharacteristicKindES1_NS_14SourceLocationE, ptr @_ZN5clang11PPCallbacks11FileSkippedERKNS_12FileEntryRefERKNS_5TokenENS_6SrcMgr18CharacteristicKindE, ptr @_ZN5clang11PPCallbacks17EmbedFileNotFoundEN4llvm9StringRefE, ptr @_ZN5clang11PPCallbacks14EmbedDirectiveENS_14SourceLocationEN4llvm9StringRefEbNS_20CustomizableOptionalINS_12FileEntryRefEEERKNS_24LexEmbedParametersResultE, ptr @_ZN5clang11PPCallbacks12FileNotFoundEN4llvm9StringRefE, ptr @_ZN5clang11PPCallbacks18InclusionDirectiveENS_14SourceLocationERKNS_5TokenEN4llvm9StringRefEbNS_15CharSourceRangeENS_20CustomizableOptionalINS_12FileEntryRefEEES6_S6_PKNS_6ModuleEbNS_6SrcMgr18CharacteristicKindE, ptr @_ZN5clang11PPCallbacks16EnteredSubmoduleEPNS_6ModuleENS_14SourceLocationEb, ptr @_ZN5clang11PPCallbacks13LeftSubmoduleEPNS_6ModuleENS_14SourceLocationEb, ptr @_ZN5clang11PPCallbacks12moduleImportENS_14SourceLocationEN4llvm8ArrayRefINS_13IdentifierLocEEEPKNS_6ModuleE, ptr @_ZN18AsyncModuleCompile17moduleLoadSkippedEPN5clang6ModuleE, ptr @_ZN5clang11PPCallbacks13EndOfMainFileEv, ptr @_ZN5clang11PPCallbacks5IdentENS_14SourceLocationEN4llvm9StringRefE, ptr @_ZN5clang11PPCallbacks15PragmaDirectiveENS_14SourceLocationENS_20PragmaIntroducerKindE, ptr @_ZN5clang11PPCallbacks13PragmaCommentENS_14SourceLocationEPKNS_14IdentifierInfoEN4llvm9StringRefE, ptr @_ZN5clang11PPCallbacks10PragmaMarkENS_14SourceLocationEN4llvm9StringRefE, ptr @_ZN5clang11PPCallbacks20PragmaDetectMismatchENS_14SourceLocationEN4llvm9StringRefES3_, ptr @_ZN5clang11PPCallbacks11PragmaDebugENS_14SourceLocationEN4llvm9StringRefE, ptr @_ZN5clang11PPCallbacks13PragmaMessageENS_14SourceLocationEN4llvm9StringRefENS0_17PragmaMessageKindES3_, ptr @_ZN5clang11PPCallbacks20PragmaDiagnosticPushENS_14SourceLocationEN4llvm9StringRefE, ptr @_ZN5clang11PPCallbacks19PragmaDiagnosticPopENS_14SourceLocationEN4llvm9StringRefE, ptr @_ZN5clang11PPCallbacks16PragmaDiagnosticENS_14SourceLocationEN4llvm9StringRefENS_4diag8SeverityES3_, ptr @_ZN5clang11PPCallbacks21PragmaOpenCLExtensionENS_14SourceLocationEPKNS_14IdentifierInfoES1_j, ptr @_ZN5clang11PPCallbacks13PragmaWarningENS_14SourceLocationENS0_22PragmaWarningSpecifierEN4llvm8ArrayRefIiEE, ptr @_ZN5clang11PPCallbacks17PragmaWarningPushENS_14SourceLocationEi, ptr @_ZN5clang11PPCallbacks16PragmaWarningPopENS_14SourceLocationE, ptr @_ZN5clang11PPCallbacks21PragmaExecCharsetPushENS_14SourceLocationEN4llvm9StringRefE, ptr @_ZN5clang11PPCallbacks20PragmaExecCharsetPopENS_14SourceLocationE, ptr @_ZN5clang11PPCallbacks24PragmaAssumeNonNullBeginENS_14SourceLocationE, ptr @_ZN5clang11PPCallbacks22PragmaAssumeNonNullEndENS_14SourceLocationE, ptr @_ZN5clang11PPCallbacks12MacroExpandsERKNS_5TokenERKNS_15MacroDefinitionENS_11SourceRangeEPKNS_9MacroArgsE, ptr @_ZN5clang11PPCallbacks12MacroDefinedERKNS_5TokenEPKNS_14MacroDirectiveE, ptr @_ZN5clang11PPCallbacks14MacroUndefinedERKNS_5TokenERKNS_15MacroDefinitionEPKNS_14MacroDirectiveE, ptr @_ZN5clang11PPCallbacks7DefinedERKNS_5TokenERKNS_15MacroDefinitionENS_11SourceRangeE, ptr @_ZN5clang11PPCallbacks8HasEmbedENS_14SourceLocationEN4llvm9StringRefEbNS_20CustomizableOptionalINS_12FileEntryRefEEE, ptr @_ZN5clang11PPCallbacks10HasIncludeENS_14SourceLocationEN4llvm9StringRefEbNS_20CustomizableOptionalINS_12FileEntryRefEEENS_6SrcMgr18CharacteristicKindE, ptr @_ZN5clang11PPCallbacks18SourceRangeSkippedENS_11SourceRangeENS_14SourceLocationE, ptr @_ZN5clang11PPCallbacks2IfENS_14SourceLocationENS_11SourceRangeENS0_18ConditionValueKindE, ptr @_ZN5clang11PPCallbacks4ElifENS_14SourceLocationENS_11SourceRangeENS0_18ConditionValueKindES1_, ptr @_ZN5clang11PPCallbacks5IfdefENS_14SourceLocationERKNS_5TokenERKNS_15MacroDefinitionE, ptr @_ZN5clang11PPCallbacks7ElifdefENS_14SourceLocationERKNS_5TokenERKNS_15MacroDefinitionE, ptr @_ZN5clang11PPCallbacks7ElifdefENS_14SourceLocationENS_11SourceRangeES1_, ptr @_ZN5clang11PPCallbacks6IfndefENS_14SourceLocationERKNS_5TokenERKNS_15MacroDefinitionE, ptr @_ZN5clang11PPCallbacks8ElifndefENS_14SourceLocationERKNS_5TokenERKNS_15MacroDefinitionE, ptr @_ZN5clang11PPCallbacks8ElifndefENS_14SourceLocationENS_11SourceRangeES1_, ptr @_ZN5clang11PPCallbacks4ElseENS_14SourceLocationES1_, ptr @_ZN5clang11PPCallbacks5EndifENS_14SourceLocationES1_, ptr @_ZN5clang11PPCallbacks27releasePreservedDescendantsEN4llvm12function_refIFbPS0_EEERNS1_15SmallVectorImplIS3_EE] }, comdat, align 8
@_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJN4llvm15unique_functionIFvvEEEEEEEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJN4llvm15unique_functionIFvvEEEEEEEED2Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJN4llvm15unique_functionIFvvEEEEEEEED0Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJN4llvm15unique_functionIFvvEEEEEEEE6_M_runEv] }, comdat, align 8
@_ZTVN5clang33GenerateModuleFromModuleMapActionE = external unnamed_addr constant { [20 x ptr] }, align 8
@_ZTVN5clang20GenerateModuleActionE = external unnamed_addr constant { [20 x ptr] }, align 8

@_ZN5clang12dependencies29DiagnosticsEngineWithDiagOptsC1EN4llvm8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_18IntrusiveRefCntPtrINS2_3vfs10FileSystemEEERNS_18DiagnosticConsumerE = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr), ptr @_ZN5clang12dependencies29DiagnosticsEngineWithDiagOptsC2EN4llvm8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_18IntrusiveRefCntPtrINS2_3vfs10FileSystemEEERNS_18DiagnosticConsumerE

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang12dependencies19canonicalizeDefinesERNS_19PreprocessorOptionsE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(352) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.llvm::StringRef", align 8   ; 8 uses
  %2 = alloca %"struct.std::pair.714", align 8    ; 9 uses
  %3 = alloca %"class.std::vector.0", align 8     ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 40                  ; 3 uses
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not81 = icmp eq ptr %i.b, %i.c
  br i1 %.not81, label %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt4pairIN4llvm9StringRefEmESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseISt4pairIN4llvm9StringRefEmESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.c
  %i.i = mul nuw nsw i64 %i.g, 24
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #22 ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.g
  %.pre = load ptr, ptr %0, align 8, !tbaa !13
  %.pre126 = load ptr, ptr %i.a, align 8, !tbaa !13
  br label %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE7reserveEm.exit

_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseISt4pairIN4llvm9StringRefEmESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.l = phi ptr [ %.pre126, %_ZNSt12_Vector_baseISt4pairIN4llvm9StringRefEmESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.b, %bb.c ] ; 2 uses
  %i.m = phi ptr [ %.pre, %_ZNSt12_Vector_baseISt4pairIN4llvm9StringRefEmESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.c, %bb.c ] ; 2 uses
  %.sroa.30.1 = phi ptr [ %i.k, %_ZNSt12_Vector_baseISt4pairIN4llvm9StringRefEmESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ null, %bb.c ] ; 2 uses
  %.sroa.16.1 = phi ptr [ %i.j, %_ZNSt12_Vector_baseISt4pairIN4llvm9StringRefEmESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ null, %bb.c ] ; 4 uses
  %.not82102 = icmp eq ptr %i.m, %i.l
  br i1 %.not82102, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE7reserveEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE12emplace_backIJRS2_RmEEERS3_DpOT_.exit
  %.sroa.055.0107 = phi ptr [ %.sroa.16.1, %.lr.ph ], [ %.sroa.055.2, %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE12emplace_backIJRS2_RmEEERS3_DpOT_.exit ] ; 7 uses
  %.sroa.16.0106 = phi ptr [ %.sroa.16.1, %.lr.ph ], [ %.sroa.16.2, %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE12emplace_backIJRS2_RmEEERS3_DpOT_.exit ] ; 8 uses
  %.sroa.30.0105 = phi ptr [ %.sroa.30.1, %.lr.ph ], [ %.sroa.30.2, %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE12emplace_backIJRS2_RmEEERS3_DpOT_.exit ] ; 3 uses
  %.0104 = phi i64 [ 0, %.lr.ph ], [ %i.bg, %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE12emplace_backIJRS2_RmEEERS3_DpOT_.exit ] ; 3 uses
  %.sroa.050.0103 = phi ptr [ %i.m, %.lr.ph ], [ %i.bh, %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE12emplace_backIJRS2_RmEEERS3_DpOT_.exit ] ; 3 uses
  %i.p = load ptr, ptr %.sroa.050.0103, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.050.0103, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %i.p, ptr %1, align 8, !noalias !20
  store i64 %i.r, ptr %i.n, align 8, !noalias !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !20
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.s = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull @.str.1, i64 1, i64 noundef 0) #23, !noalias !26 ; 3 uses
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false), !alias.scope !23, !noalias !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !27, !noalias !20
  %.pre.i = load i64, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !tbaa !30, !noalias !20
  br label %_ZNK4llvm9StringRef5splitES0_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.n, align 8, !tbaa !30, !noalias !26 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.s, i64 %i.u) ; 2 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !32, !noalias !26 ; 2 uses
  %i.w = add nuw i64 %i.s, 1
  %.sroa.speculated4.i.i.i = call i64 @llvm.umin.i64(i64 %i.u, i64 %i.w) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.speculated4.i.i.i
  %i.y = sub i64 %i.u, %.sroa.speculated4.i.i.i
  store ptr %i.v, ptr %2, align 8, !tbaa !28, !alias.scope !23, !noalias !20
  store i64 %.sroa.speculated.i.i.i, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !tbaa !29, !alias.scope !23, !noalias !20
  store ptr %i.x, ptr %i.o, align 8, !tbaa !28, !alias.scope !23, !noalias !20
  store i64 %i.y, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !29, !alias.scope !23, !noalias !20
  br label %_ZNK4llvm9StringRef5splitES0_.exit.i

_ZNK4llvm9StringRef5splitES0_.exit.i:             ; preds = %bb.f, %bb.e
  %i.z = phi i64 [ %.pre.i, %bb.e ], [ %.sroa.speculated.i.i.i, %bb.f ]
  %i.aa = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.2, i64 2, i64 noundef 0) #23, !noalias !20
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.z) ; 2 uses
  %i.ab = load i64, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !tbaa !30, !noalias !20 ; 3 uses
  %.sroa.speculated4.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ab, i64 %.sroa.speculated.i.i) ; 2 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !32, !noalias !20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.speculated4.i.i.i.i ; 3 uses
  %i.ae = sub i64 %i.ab, %.sroa.speculated4.i.i.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !20
  %.not25.not.i = icmp ugt i64 %i.ab, %.sroa.speculated.i.i
  br i1 %.not25.not.i, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %_ZNK4llvm9StringRef5splitES0_.exit.i, %bb.i
  %.026.i = phi i64 [ %i.ao, %bb.i ], [ 0, %_ZNK4llvm9StringRef5splitES0_.exit.i ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.026.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !33, !noalias !20 ; 3 uses
  switch i8 %i.ag, label %bb.h [
    i8 40, label %bb.g
    i8 32, label %bb.g
    i8 9, label %bb.g
    i8 95, label %bb.i
  ]

bb.g:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.ah = icmp eq i64 %.026.i, 0
  br i1 %i.ah, label %.critedge, label %._crit_edge.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.ai = and i8 %i.ag, -33
  %i.aj = add i8 %i.ai, -65
  %i.ak = icmp ult i8 %i.aj, 26
  %i.al = add i8 %i.ag, -48
  %i.am = icmp ult i8 %i.al, 10
  %i.an = or i1 %i.am, %i.ak
  br i1 %i.an, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.ao = add nuw i64 %.026.i, 1                  ; 2 uses
  %.not.i = icmp eq i64 %i.ao, %i.ae
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !34

._crit_edge.i:                                    ; preds = %bb.i, %bb.g
  %.sink.i = phi i64 [ %.026.i, %bb.g ], [ %i.ae, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.not.i20 = icmp eq ptr %.sroa.16.0106, %.sroa.30.0105
  br i1 %.not.i20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  store ptr %i.ad, ptr %.sroa.16.0106, align 8, !tbaa !28
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.16.0106, i64 8
  store i64 %.sink.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.16.0106, i64 16
  store i64 %.0104, ptr %i.ap, align 8, !tbaa !36
  br label %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE12emplace_backIJRS2_RmEEERS3_DpOT_.exit

bb.k:                                             ; preds = %._crit_edge.i
  %i.aq = ptrtoint ptr %.sroa.16.0106 to i64
  %i.ar = ptrtoint ptr %.sroa.055.0107 to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 4 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.at, label %bb.l, label %_ZNKSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #21
  unreachable

_ZNKSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.au = sdiv exact i64 %i.as, 24                ; 3 uses
  %.sroa.speculated.i.i.i21 = call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i21, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = call i64 @llvm.umin.i64(i64 %i.av, i64 384307168202282325)
  %i.ay = select i1 %i.aw, i64 384307168202282325, i64 %i.ax ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ay, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.az = mul nuw nsw i64 %i.ay, 24
  %i.ba = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #22 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.as ; 3 uses
  store ptr %i.ad, ptr %i.bb, align 8, !tbaa !28
  %.sroa.6.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %.sink.i, ptr %.sroa.6.0..sroa_idx47, align 8, !tbaa !29
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.0104, ptr %i.bc, align 8, !tbaa !36
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.055.0107, %.sroa.16.0106
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %i.ba, %_ZNKSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.sroa.055.0107, %_ZNKSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !alias.scope !38
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, %.sroa.16.0106
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !42

_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ba, %_ZNKSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.be, %.lr.ph.i.i.i.i.i ]
  %.not.i24.i.i = icmp eq ptr %.sroa.055.0107, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE17_M_realloc_insertIJRS2_RmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.055.0107, i64 noundef %i.as) #24
  br label %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE17_M_realloc_insertIJRS2_RmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE17_M_realloc_insertIJRS2_RmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.ay
  br label %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE12emplace_backIJRS2_RmEEERS3_DpOT_.exit

_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE12emplace_backIJRS2_RmEEERS3_DpOT_.exit: ; preds = %bb.j, %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE17_M_realloc_insertIJRS2_RmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %.sroa.30.2 = phi ptr [ %i.bf, %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE17_M_realloc_insertIJRS2_RmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.30.0105, %bb.j ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE17_M_realloc_insertIJRS2_RmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.16.0106, %bb.j ]
  %.sroa.055.2 = phi ptr [ %i.ba, %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE17_M_realloc_insertIJRS2_RmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.055.0107, %bb.j ] ; 2 uses
  %.sroa.16.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 24 ; 2 uses
  %i.bg = add i64 %.0104, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.050.0103, i64 40 ; 2 uses
  %.not82 = icmp eq ptr %i.bh, %i.l
  br i1 %.not82, label %.critedge18, label %bb.d

.critedge:                                        ; preds = %bb.g, %_ZNK4llvm9StringRef5splitES0_.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.z

.critedge18:                                      ; preds = %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE12emplace_backIJRS2_RmEEERS3_DpOT_.exit, %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE7reserveEm.exit
  %.sroa.30.0.lcssa = phi ptr [ %.sroa.30.1, %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE7reserveEm.exit ], [ %.sroa.30.2, %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE12emplace_backIJRS2_RmEEERS3_DpOT_.exit ]
  %.sroa.16.0.lcssa = phi ptr [ %.sroa.16.1, %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE7reserveEm.exit ], [ %.sroa.16.2, %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE12emplace_backIJRS2_RmEEERS3_DpOT_.exit ] ; 10 uses
  %.sroa.055.0.lcssa = phi ptr [ %.sroa.16.1, %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE7reserveEm.exit ], [ %.sroa.055.2, %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE12emplace_backIJRS2_RmEEERS3_DpOT_.exit ] ; 15 uses
  call void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SF_T0_(ptr %.sroa.055.0.lcssa, ptr %.sroa.16.0.lcssa)
  %i.bi = ptrtoint ptr %.sroa.16.0.lcssa to i64   ; 2 uses
  %i.bj = ptrtoint ptr %.sroa.055.0.lcssa to i64  ; 6 uses
  %i.bk = icmp eq ptr %.sroa.16.0.lcssa, %.sroa.055.0.lcssa
  %i.bl = getelementptr inbounds i8, ptr %.sroa.16.0.lcssa, i64 -24 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.bl, %.sroa.055.0.lcssa
  %or.cond.i.i.i = select i1 %i.bk, i1 true, i1 %.not9.i.i.i
  br i1 %or.cond.i.i.i, label %"_ZSt6uniqueISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS6_SaIS6_EEEEEZN5clang12dependencies19canonicalizeDefinesERNSD_19PreprocessorOptionsEE3$_0ET_SI_SI_T0_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge18, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.thread6.i.i.i"
  %i.bm = phi ptr [ %i.bt, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.thread6.i.i.i" ], [ %i.bl, %.critedge18 ] ; 2 uses
  %.sroa.03.010.i.i.i = phi ptr [ %i.bm, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.thread6.i.i.i" ], [ %.sroa.16.0.lcssa, %.critedge18 ] ; 8 uses
  %i.bn = getelementptr inbounds i8, ptr %.sroa.03.010.i.i.i, i64 -24
  %i.bo = getelementptr inbounds i8, ptr %.sroa.03.010.i.i.i, i64 -48
  %.val.i.i.i.i = load ptr, ptr %i.bn, align 8, !tbaa !28, !noalias !43
  %i.bp = getelementptr i8, ptr %.sroa.03.010.i.i.i, i64 -16
  %.val1.i.i.i.i = load i64, ptr %i.bp, align 8, !tbaa !29, !noalias !43 ; 3 uses
  %.val2.i.i.i.i = load ptr, ptr %i.bo, align 8, !tbaa !28, !noalias !43
  %i.bq = getelementptr i8, ptr %.sroa.03.010.i.i.i, i64 -40
  %.val3.i.i.i.i = load i64, ptr %i.bq, align 8, !tbaa !29, !noalias !43
  %.not.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i, %.val3.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.thread6.i.i.i"

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.br = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.br, label %"_ZSt15__adjacent_findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS6_SaIS6_EEEEENS1_5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNSF_19PreprocessorOptionsEE3$_0EEET_SL_SL_T0_.exit.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.i.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.i.i.i": ; preds = %bb.n
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr readonly %.val.i.i.i.i, ptr readonly %.val2.i.i.i.i, i64 %.val1.i.i.i.i), !noalias !43
  %i.bs = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bs, label %"_ZSt15__adjacent_findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS6_SaIS6_EEEEENS1_5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNSF_19PreprocessorOptionsEE3$_0EEET_SL_SL_T0_.exit.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.thread6.i.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.thread6.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.i.i.i", %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds i8, ptr %i.bm, i64 -24 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.bt, %.sroa.055.0.lcssa
  br i1 %.not.i.i.i22, label %"_ZSt6uniqueISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS6_SaIS6_EEEEEZN5clang12dependencies19canonicalizeDefinesERNSD_19PreprocessorOptionsEE3$_0ET_SI_SI_T0_.exit", label %.lr.ph.i.i.i, !llvm.loop !50

"_ZSt15__adjacent_findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS6_SaIS6_EEEEENS1_5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNSF_19PreprocessorOptionsEE3$_0EEET_SL_SL_T0_.exit.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.i.i.i", %bb.n
  %i.bu = icmp eq ptr %.sroa.03.010.i.i.i, %.sroa.055.0.lcssa
  br i1 %i.bu, label %"_ZSt6uniqueISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS6_SaIS6_EEEEEZN5clang12dependencies19canonicalizeDefinesERNSD_19PreprocessorOptionsEE3$_0ET_SI_SI_T0_.exit", label %bb.o

bb.o:                                             ; preds = %"_ZSt15__adjacent_findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS6_SaIS6_EEEEENS1_5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNSF_19PreprocessorOptionsEE3$_0EEET_SL_SL_T0_.exit.i.i"
  %i.bv = getelementptr inbounds i8, ptr %.sroa.03.010.i.i.i, i64 -48 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.bv, %.sroa.055.0.lcssa
  br i1 %.not16.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.thread.i.i"
  %.sroa.03.0.i = phi ptr [ %i.bx, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.thread.i.i" ], [ %i.bv, %bb.o ] ; 3 uses
  %.sroa.05.017.i.i = phi ptr [ %.sroa.05.1.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.thread.i.i" ], [ %.sroa.03.010.i.i.i, %bb.o ] ; 6 uses
  %i.bw = getelementptr inbounds i8, ptr %.sroa.05.017.i.i, i64 -24 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %.sroa.03.0.i, i64 -24 ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.bw, align 8, !tbaa !28, !noalias !51
  %i.by = getelementptr i8, ptr %.sroa.05.017.i.i, i64 -16
  %.val1.i.i.i = load i64, ptr %i.by, align 8, !tbaa !29, !noalias !51 ; 3 uses
  %.val2.i.i.i = load ptr, ptr %i.bx, align 8, !tbaa !28, !noalias !51
  %i.bz = getelementptr i8, ptr %.sroa.03.0.i, i64 -16
  %.val3.i.i.i = load i64, ptr %i.bz, align 8, !tbaa !29, !noalias !51
  %.not.i.i.i.i.i23 = icmp eq i64 %.val1.i.i.i, %.val3.i.i.i
  br i1 %.not.i.i.i.i.i23, label %bb.p, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.thread13.i.i"

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.ca = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ca, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.thread.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.i.i": ; preds = %bb.p
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr readonly %.val.i.i.i, ptr readonly %.val2.i.i.i, i64 %.val1.i.i.i), !noalias !51
  %i.cb = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cb, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.thread.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.thread13.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.thread13.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.i.i", %.lr.ph.i.i
  %i.cc = getelementptr inbounds i8, ptr %.sroa.05.017.i.i, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 16, i1 false), !tbaa.struct !27, !noalias !51
  %i.cd = getelementptr inbounds i8, ptr %.sroa.03.0.i, i64 -8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !29, !noalias !51
  %i.cf = getelementptr inbounds i8, ptr %.sroa.05.017.i.i, i64 -32
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !36, !noalias !51
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.thread13.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.i.i", %bb.p
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.i.i" ], [ %i.bw, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.thread13.i.i" ], [ %.sroa.05.017.i.i, %bb.p ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.bx, %.sroa.055.0.lcssa
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !52

._crit_edge.i.i:                                  ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.thread.i.i", %bb.o
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.03.010.i.i.i, %bb.o ], [ %.sroa.05.1.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.thread.i.i" ]
  %i.cg = getelementptr inbounds i8, ptr %.sroa.05.0.lcssa.i.i, i64 -24
  %i.ch = ptrtoint ptr %i.cg to i64
  br label %"_ZSt6uniqueISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS6_SaIS6_EEEEEZN5clang12dependencies19canonicalizeDefinesERNSD_19PreprocessorOptionsEE3$_0ET_SI_SI_T0_.exit"

"_ZSt6uniqueISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS6_SaIS6_EEEEEZN5clang12dependencies19canonicalizeDefinesERNSD_19PreprocessorOptionsEE3$_0ET_SI_SI_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.thread6.i.i.i", %.critedge18, %"_ZSt15__adjacent_findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS6_SaIS6_EEEEENS1_5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNSF_19PreprocessorOptionsEE3$_0EEET_SL_SL_T0_.exit.i.i", %._crit_edge.i.i
  %storemerge.in.i.i = phi i64 [ %i.ch, %._crit_edge.i.i ], [ %i.bj, %"_ZSt15__adjacent_findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS6_SaIS6_EEEEENS1_5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNSF_19PreprocessorOptionsEE3$_0EEET_SL_SL_T0_.exit.i.i" ], [ %i.bj, %.critedge18 ], [ %i.bj, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang12dependencies19canonicalizeDefinesERNS2_19PreprocessorOptionsEE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorISE_SaISE_EEEEESK_EEbT_T0_.exit.thread6.i.i.i" ] ; 3 uses
  %i.ci = inttoptr i64 %storemerge.in.i.i to ptr  ; 2 uses
  %i.cj = sub i64 %storemerge.in.i.i, %i.bj
  %i.ck = getelementptr inbounds i8, ptr %.sroa.055.0.lcssa, i64 %i.cj ; 2 uses
  %.not.i.i24 = icmp eq ptr %.sroa.055.0.lcssa, %i.ci
  br i1 %.not.i.i24, label %_ZNSt6vectorISt4pairIN4llvm9StringRefEmESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit, label %bb.q

bb.q:                                             ; preds = %"_ZSt6uniqueISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS6_SaIS6_EEEEEZN5clang12dependencies19canonicalizeDefinesERNSD_19PreprocessorOptionsEE3$_0ET_SI_SI_T0_.exit"
  %.not11.i.i = icmp eq ptr %.sroa.16.0.lcssa, %i.ci
  br i1 %.not11.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = sub i64 %i.bi, %storemerge.in.i.i       ; 4 uses
  %i.cm = icmp sgt i64 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.r
  %i.cn = udiv exact i64 %i.cl, 24
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.ct, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cn, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
end_hunk_0
