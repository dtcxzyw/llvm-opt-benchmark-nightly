Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopTermFold?download=true
inline.NumInlined: 1286
inline.NumDeleted: 908
begin_hunk_0
%"class.llvm::DenseMap.123" = type { ptr, ptr, i32, i32 }
%"class.llvm::SmallVector.125" = type { %"class.llvm::SmallVectorImpl.126", %"struct.llvm::SmallVectorStorage.129" }
%"class.llvm::SmallVectorImpl.126" = type { %"class.llvm::SmallVectorTemplateBase.127" }
%"class.llvm::SmallVectorTemplateBase.127" = type { %"class.llvm::SmallVectorTemplateCommon.128" }
%"class.llvm::SmallVectorTemplateCommon.128" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.129" = type { [48 x i8] }
%"class.llvm::DenseMap.130" = type { ptr, ptr, i32, i32 }
%"class.llvm::SmallPtrSet.132" = type { %"class.llvm::SmallPtrSetImpl.base.134", [2 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.134" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::DenseSet.135" = type { %"class.llvm::detail::DenseSetImpl.136" }
%"class.llvm::detail::DenseSetImpl.136" = type { %"class.llvm::DenseMap.137" }
%"class.llvm::DenseMap.137" = type { ptr, ptr, i32, i32 }
%"class.llvm::IRBuilder" = type { %"class.llvm::IRBuilderBase", %"class.llvm::InstSimplifyFolder", %"class.llvm::IRBuilderCallbackInserter" }
%"class.llvm::IRBuilderBase" = type { %"class.llvm::DebugLoc", ptr, %"class.llvm::ilist_iterator_w_bits", ptr, ptr, ptr, ptr, %"class.llvm::FastMathFlags", i8, i8, i8, %"class.llvm::ArrayRef" }
%"class.llvm::DebugLoc" = type { ptr }
%"class.llvm::ilist_iterator_w_bits" = type <{ ptr, i8, i8, [6 x i8] }>
%"class.llvm::FastMathFlags" = type { i32 }
%"class.llvm::ArrayRef" = type { ptr, i64 }
%"class.llvm::SmallVector.139" = type { %"class.llvm::SmallVectorImpl.140", %"struct.llvm::SmallVectorStorage.143" }
%"class.llvm::SmallVectorImpl.140" = type { %"class.llvm::SmallVectorTemplateBase.141" }
%"class.llvm::SmallVectorTemplateBase.141" = type { %"class.llvm::SmallVectorTemplateCommon.142" }
%"class.llvm::SmallVectorTemplateCommon.142" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.143" = type { [64 x i8] }
%"class.std::unique_ptr.99" = type { %"struct.std::__uniq_ptr_data.100" }
%"struct.std::__uniq_ptr_data.100" = type { %"class.std::__uniq_ptr_impl.101" }
%"class.std::__uniq_ptr_impl.101" = type { %"class.std::tuple.102" }
%"class.std::tuple.102" = type { %"struct.std::_Tuple_impl.103" }
%"struct.std::_Tuple_impl.103" = type { %"struct.std::_Head_base.106" }
%"struct.std::_Head_base.106" = type { ptr }
%"class.llvm::IRBuilder.151" = type { %"class.llvm::IRBuilderBase", %"class.llvm::ConstantFolder", %"class.llvm::IRBuilderDefaultInserter" }
%"class.llvm::ConstantFolder" = type { %"class.llvm::IRBuilderFolder" }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%class.anon.423 = type { ptr, ptr }
%"class.std::reference_wrapper" = type { ptr }
%"class.llvm::InsertPosition" = type { %"class.llvm::ilist_iterator_w_bits" }
%"class.llvm::SmallVector.194" = type { %"class.llvm::SmallVectorImpl.189", %"struct.llvm::SmallVectorStorage.195" }
%"class.llvm::SmallVectorImpl.189" = type { %"class.llvm::SmallVectorTemplateBase.190" }
%"class.llvm::SmallVectorTemplateBase.190" = type { %"class.llvm::SmallVectorTemplateCommon.191" }
%"class.llvm::SmallVectorTemplateCommon.191" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.195" = type { [32 x i8] }
%"class.llvm::SmallVector.188" = type { %"class.llvm::SmallVectorImpl.189", %"struct.llvm::SmallVectorStorage.192" }
%"struct.llvm::SmallVectorStorage.192" = type { [24 x i8] }
%"class.llvm::SmallVector.196" = type { %"class.llvm::SmallVectorImpl.197", %"struct.llvm::SmallVectorStorage.200" }
%"class.llvm::SmallVectorImpl.197" = type { %"class.llvm::SmallVectorTemplateBase.198" }
%"class.llvm::SmallVectorTemplateBase.198" = type { %"class.llvm::SmallVectorTemplateCommon.199" }
%"class.llvm::SmallVectorTemplateCommon.199" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.200" = type { [128 x i8] }
%"class.llvm::SmallPtrSet.201" = type { %"class.llvm::SmallPtrSetImpl.base.203", [8 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.203" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::InstructionCost" = type <{ i64, i32, [4 x i8] }>
%"struct.llvm::SCEVOperand" = type { i32, i32, ptr }
%"class.llvm::AnalysisManager" = type { %"class.llvm::DenseMap.382", %"class.llvm::DenseMap.384", %"class.llvm::DenseMap.386" }
%"class.llvm::DenseMap.382" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseMap.384" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseMap.386" = type { ptr, ptr, i32, i32 }
%"class.llvm::TargetLibraryInfo" = type { ptr, %"class.std::bitset" }
%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { [9 x i64] }

$_ZN4llvm12SCEVExpanderC2ERNS_15ScalarEvolutionEPKcb = comdat any

$_ZN4llvm13IRBuilderBase10CreateICmpENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE = comdat any

$_ZN4llvm12SCEVExpander5clearEv = comdat any

$_ZN4llvm12SCEVExpanderD2Ev = comdat any

$_ZNKSt14default_deleteIN4llvm16MemorySSAUpdaterEEclEPS1_ = comdat any

$_ZNSt8_Rb_treeIN4llvm11AssertingVHINS0_9MemoryPhiEEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E = comdat any

$_ZNK4llvm14SCEVAddRecExpr17getStepRecurrenceERNS_15ScalarEvolutionE = comdat any

$_ZN4llvm12SCEVExpander19isHighCostExpansionENS_8ArrayRefIPKNS_4SCEVEEEPNS_4LoopEjPKNS_19TargetTransformInfoEPKNS_11InstructionE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_11SCEVOperandELb1EE18growAndEmplaceBackIJiiRPKNS_4SCEVEEEERS1_DpOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_11SCEVOperandELb1EE15growAndPushBackES1_ = comdat any

$_ZNSt17_Function_handlerIFvPN4llvm11InstructionEEZNS0_12SCEVExpanderC1ERNS0_15ScalarEvolutionEPKcbEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_ = comdat any

$_ZNSt17_Function_handlerIFvPN4llvm11InstructionEEZNS0_12SCEVExpanderC1ERNS0_15ScalarEvolutionEPKcbEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E16shrink_and_clearEv = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_5ValueEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16shrink_and_clearEv = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16shrink_and_clearEv = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16shrink_and_clearEv = comdat any

$_ZN4llvm4Pass16doInitializationERNS_6ModuleE = comdat any

$_ZN4llvm4Pass14doFinalizationERNS_6ModuleE = comdat any

$_ZNK4llvm8LoopPass27getPotentialPassManagerTypeEv = comdat any

$_ZN4llvm8LoopPass16doInitializationEPNS_4LoopERNS_13LPPassManagerE = comdat any

$_ZN4llvm8LoopPass14doFinalizationEv = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm28TargetLibraryInfoWrapperPass6getTLIERKNS_8FunctionE = comdat any

$_ZN4llvm17PreservedAnalyses8preserveEPNS_11AnalysisKeyE = comdat any

$_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZL30InitializeLoopTermFoldPassFlag = internal global %"struct.std::once_flag" zeroinitializer, align 4
@.str = private unnamed_addr constant [19 x i8] c"lsr_fold_term_cond\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"lsr_fold_term_cond.replaced_term_cond\00", align 1
@_ZN4llvm24SCEVCheapExpansionBudgetE = external local_unnamed_addr global %"class.llvm::cl::opt", align 8
@_ZTVN4llvm18InstSimplifyFolderE = external unnamed_addr constant { [22 x ptr] }, align 8
@_ZTVN4llvm12TargetFolderE = external unnamed_addr constant { [22 x ptr] }, align 8
@_ZTVN4llvm25IRBuilderCallbackInserterE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4llvm24IRBuilderDefaultInserterE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4llvm14ConstantFolderE = external unnamed_addr constant { [22 x ptr] }, align 8
@_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE = external global %"struct.llvm::AnalysisSetKey", align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Loop Terminator Folding\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"loop-term-fold\00", align 1
@_ZN12_GLOBAL__N_112LoopTermFold2IDE = internal global i8 0, align 1
@_ZTVN12_GLOBAL__N_112LoopTermFoldE = internal unnamed_addr constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr null, ptr @_ZN4llvm4PassD2Ev, ptr @_ZN12_GLOBAL__N_112LoopTermFoldD0Ev, ptr @_ZNK4llvm4Pass11getPassNameEv, ptr @_ZN4llvm4Pass16doInitializationERNS_6ModuleE, ptr @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE, ptr @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE, ptr @_ZNK4llvm8LoopPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN4llvm8LoopPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE, ptr @_ZN4llvm8LoopPass18preparePassManagerERNS_7PMStackE, ptr @_ZNK4llvm8LoopPass27getPotentialPassManagerTypeEv, ptr @_ZNK12_GLOBAL__N_112LoopTermFold16getAnalysisUsageERN4llvm13AnalysisUsageE, ptr @_ZN4llvm4Pass13releaseMemoryEv, ptr @_ZN4llvm4Pass18getAsImmutablePassEv, ptr @_ZN4llvm4Pass18getAsPMDataManagerEv, ptr @_ZNK4llvm4Pass14verifyAnalysisEv, ptr @_ZN4llvm4Pass17dumpPassStructureEj, ptr @_ZN12_GLOBAL__N_112LoopTermFold9runOnLoopEPN4llvm4LoopERNS1_13LPPassManagerE, ptr @_ZN4llvm8LoopPass16doInitializationEPNS_4LoopERNS_13LPPassManagerE, ptr @_ZN4llvm8LoopPass14doFinalizationEv] }, align 8
@_ZN4llvm14LoopSimplifyIDE = external local_unnamed_addr constant ptr, align 8
@_ZN4llvm19LoopInfoWrapperPass2IDE = external global i8, align 1
@_ZN4llvm24DominatorTreeWrapperPass2IDE = external global i8, align 1
@_ZN4llvm26ScalarEvolutionWrapperPass2IDE = external global i8, align 1
@_ZN4llvm28TargetLibraryInfoWrapperPass2IDE = external global i8, align 1
@_ZN4llvm30TargetTransformInfoWrapperPass2IDE = external global i8, align 1
@_ZN4llvm20MemorySSAWrapperPass2IDE = external global i8, align 1
@_ZN4llvm17MemorySSAAnalysis3KeyE = external global %"struct.llvm::AnalysisKey", align 8
@_ZSt15__once_callable = external thread_local local_unnamed_addr global ptr, align 8
@_ZSt11__once_call = external thread_local local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16LoopTermFoldPass3runERNS_4LoopERNS_15AnalysisManagerIS1_JRNS_27LoopStandardAnalysisResultsEEEES5_RNS_10LPMUpdaterE(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4, ptr nofree noundef nonnull readnone align 1 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8, !nonnull !19, !align !20
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21, !nonnull !19, !align !20
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22, !nonnull !19, !align !20
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23, !nonnull !19, !align !20
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.k = tail call fastcc noundef zeroext i1 @_ZL11RunTermFoldPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERNS_8LoopInfoERKNS_19TargetTransformInfoERNS_17TargetLibraryInfoEPNS_9MemorySSAE(ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(1152) %i.b, ptr noundef nonnull align 8 dereferenceable(204) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef %i.j)
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.ptr1.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i, ptr %0, align 8, !tbaa !25, !alias.scope !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.l, align 8, !tbaa !32, !alias.scope !29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !33, !alias.scope !29
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.p, ptr %i.o, align 8, !tbaa !25, !alias.scope !29
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.q, align 8, !tbaa !32, !alias.scope !29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.r, align 4, !tbaa !34, !alias.scope !29
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.s, align 8, !tbaa !33, !alias.scope !29
  store i32 1, ptr %i.m, align 4, !tbaa !34, !alias.scope !29, !noalias !35
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i, align 8, !tbaa !38, !alias.scope !29, !noalias !35
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvm28getLoopPassPreservedAnalysesEv(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8 %0) #15
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !24
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN4llvm17PreservedAnalyses8preserveEPNS_11AnalysisKeyE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull @_ZN4llvm17MemorySSAAnalysis3KeyE) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL11RunTermFoldPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERNS_8LoopInfoERKNS_19TargetTransformInfoERNS_17TargetLibraryInfoEPNS_9MemorySSAE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(1152) %1, ptr noundef nonnull align 8 dereferenceable(204) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.llvm::InstSimplifyFolder", align 8 ; 11 uses
  %7 = alloca %"class.llvm::IRBuilderCallbackInserter", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %8 = alloca %"class.llvm::SCEVExpander", align 8 ; 8 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %"class.std::unique_ptr.99", align 8 ; 7 uses
  %10 = alloca %"class.llvm::SCEVExpander", align 8 ; 55 uses
  %11 = alloca %"class.llvm::IRBuilder.151", align 8 ; 19 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  store ptr null, ptr %9, align 8, !tbaa !39
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN4llvm16MemorySSAUpdaterESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN4llvm16MemorySSAUpdaterESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(624) ptr @_Znwm(i64 noundef 624) #16, !noalias !42 ; 20 uses
  store ptr %5, ptr %i.f, align 8, !tbaa !45, !noalias !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.h, ptr %i.g, align 8, !tbaa !71, !noalias !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 0, ptr %i.i, align 8, !tbaa !72, !noalias !42
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 16, ptr %i.j, align 4, !tbaa !73, !noalias !42
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 408
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 432
  store ptr %i.l, ptr %i.k, align 8, !tbaa !25, !noalias !42
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 416
  store i32 8, ptr %i.m, align 8, !tbaa !32, !noalias !42
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 420
  store i32 0, ptr %i.n, align 4, !tbaa !34, !noalias !42
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 424
  store i8 1, ptr %i.o, align 8, !tbaa !33, !noalias !42
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 512
  store ptr %i.q, ptr %i.p, align 8, !tbaa !71, !noalias !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 504
  store i32 0, ptr %i.r, align 8, !tbaa !72, !noalias !42
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 508
  store i32 8, ptr %i.s, align 4, !tbaa !73, !noalias !42
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 584 ; 3 uses
  store i32 0, ptr %i.t, align 8, !tbaa !74, !noalias !42
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 592
  store ptr null, ptr %i.u, align 8, !tbaa !75, !noalias !42
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 600
  store ptr %i.t, ptr %i.v, align 8, !tbaa !76, !noalias !42
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 608
  store ptr %i.t, ptr %i.w, align 8, !tbaa !77, !noalias !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 616
  store i64 0, ptr %i.x, align 8, !tbaa !78, !noalias !42
  store ptr %i.f, ptr %9, align 8, !tbaa !79
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN4llvm16MemorySSAUpdaterESt14default_deleteIS1_EEaSEOS4_.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !80, !noalias !82
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !85, !noalias !82
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !85, !noalias !82
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.c, label %_ZL21canFoldTermCondOfLoopPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERKNS_8LoopInfoERKNS_19TargetTransformInfoE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.ad = tail call noundef zeroext i1 @_ZNK4llvm4Loop18isLoopSimplifyFormEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #15, !noalias !82
  br i1 %i.ad, label %bb.d, label %_ZL21canFoldTermCondOfLoopPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERKNS_8LoopInfoERKNS_19TargetTransformInfoE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ae = tail call noundef zeroext i1 @_ZN4llvm15ScalarEvolution34hasLoopInvariantBackedgeTakenCountEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(1152) %1, ptr noundef nonnull %0) #15, !noalias !82
  br i1 %i.ae, label %bb.e, label %_ZL21canFoldTermCondOfLoopPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERKNS_8LoopInfoERKNS_19TargetTransformInfoE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.af = tail call noundef ptr @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE12getLoopLatchEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #15, !noalias !82 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !87, !noalias !82 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -24
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !90, !noalias !82
  %.not.i31 = icmp eq i8 %i.aj, 33
  br i1 %.not.i31, label %bb.f, label %_ZL21canFoldTermCondOfLoopPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERKNS_8LoopInfoERKNS_19TargetTransformInfoE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 -120
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !95, !noalias !82 ; 5 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !90, !noalias !82
  %.not21.i = icmp eq i8 %i.am, 85
  br i1 %.not21.i, label %bb.g, label %_ZL21canFoldTermCondOfLoopPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERKNS_8LoopInfoERKNS_19TargetTransformInfoE.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !100, !noalias !82 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_ZL21canFoldTermCondOfLoopPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERKNS_8LoopInfoERKNS_19TargetTransformInfoE.exit.thread, label %_ZNK4llvm5Value9hasOneUseEv.exit.i

_ZNK4llvm5Value9hasOneUseEv.exit.i:               ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !101, !noalias !82
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.h, label %_ZL21canFoldTermCondOfLoopPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERKNS_8LoopInfoERKNS_19TargetTransformInfoE.exit.thread

bb.h:                                             ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.i
  %i.as = getelementptr inbounds i8, ptr %i.al, i64 -64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !95, !noalias !82 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !tbaa !90, !noalias !82
  %i.av = add i8 %i.au, -62
  %i.aw = icmp ult i8 %i.av, -18
  br i1 %i.aw, label %_ZL21canFoldTermCondOfLoopPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERKNS_8LoopInfoERKNS_19TargetTransformInfoE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds i8, ptr %i.al, i64 -32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !95, !noalias !82
  %i.az = tail call noundef zeroext i1 @_ZNK4llvm4Loop15isLoopInvariantEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %i.ay) #15, !noalias !82
  br i1 %i.az, label %bb.j, label %_ZL21canFoldTermCondOfLoopPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERKNS_8LoopInfoERKNS_19TargetTransformInfoE.exit.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15, !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15, !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15, !noalias !82
  %i.ba = call noundef zeroext i1 @_ZN4llvm21matchSimpleRecurrenceEPKNS_14BinaryOperatorERPNS_7PHINodeERPNS_5ValueES8_(ptr noundef nonnull %i.at, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d) #15, !noalias !82
  br i1 %i.ba, label %bb.k, label %_ZL21canFoldTermCondOfLoopPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERKNS_8LoopInfoERKNS_19TargetTransformInfoE.exit.thread14

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !102, !noalias !82 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !104, !noalias !82
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !107, !noalias !82
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !110, !noalias !82
  %.not59.i = icmp eq ptr %i.bd, %i.bg
  br i1 %.not59.i, label %bb.l, label %_ZL21canFoldTermCondOfLoopPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERKNS_8LoopInfoERKNS_19TargetTransformInfoE.exit.thread14

bb.l:                                             ; preds = %bb.k
  %i.bh = call noundef zeroext i1 @_ZN4llvm14isAlmostDeadIVEPNS_7PHINodeEPNS_10BasicBlockEPNS_5ValueE(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.af, ptr noundef nonnull %i.al) #15, !noalias !82
  br i1 %i.bh, label %bb.m, label %_ZL21canFoldTermCondOfLoopPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERKNS_8LoopInfoERKNS_19TargetTransformInfoE.exit.thread14

bb.m:                                             ; preds = %bb.l
  %i.bi = call fastcc noundef i32 @"_ZZL21canFoldTermCondOfLoopPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERKNS_8LoopInfoERKNS_19TargetTransformInfoEENK3$_0clEv"(ptr nonnull align 8 dereferenceable(1152) %1, ptr nonnull %i.a), !noalias !82
  %i.bj = call noundef ptr @_ZN4llvm15ScalarEvolution21getBackedgeTakenCountEPKNS_4LoopENS0_13ExitCountKindE(ptr noundef nonnull align 8 dereferenceable(1152) %1, ptr noundef nonnull %0, i32 noundef 0) #15, !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15, !noalias !82
  call void @_ZN4llvm12SCEVExpanderC2ERNS_15ScalarEvolutionEPKcb(ptr noundef nonnull align 8 dereferenceable(752) %8, ptr noundef nonnull align 8 dereferenceable(1152) %1, ptr noundef nonnull @.str, i1 noundef zeroext true), !noalias !82
  %i.bk = call noundef ptr @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE16getLoopPreheaderEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #15, !noalias !82
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !87, !noalias !82
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -24
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !107, !noalias !82
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !110, !noalias !82
  %i.bq = call { ptr, ptr } @_ZN4llvm10BasicBlock4phisEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bp) #15, !noalias !82 ; 2 uses
  %i.br = extractvalue { ptr, ptr } %i.bq, 0      ; 2 uses
  %i.bs = extractvalue { ptr, ptr } %i.bq, 1      ; 2 uses
  %.not2325.i = icmp eq ptr %i.br, %i.bs
  br i1 %.not2325.i, label %_ZL21canFoldTermCondOfLoopPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERKNS_8LoopInfoERKNS_19TargetTransformInfoE.exit.thread21, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.critedge.i
  %i.bt = load ptr, ptr %i.b, align 8, !tbaa !102, !noalias !82
  %i.bu = icmp ne ptr %i.bt, null
  %i.bv = icmp ne ptr %.2.i, null
  %or.cond.i = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond.i, label %bb.ae, label %_ZL21canFoldTermCondOfLoopPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERKNS_8LoopInfoERKNS_19TargetTransformInfoE.exit.thread21

.lr.ph.i:                                         ; preds = %bb.m, %.critedge.i
  %.030.i = phi ptr [ %.2.i, %.critedge.i ], [ null, %bb.m ] ; 10 uses
  %.01429.i = phi ptr [ %.216.i, %.critedge.i ], [ null, %bb.m ] ; 10 uses
  %.01728.i = phi i1 [ %.219.i, %.critedge.i ], [ false, %bb.m ] ; 10 uses
  %.sroa.05.026.i = phi ptr [ %spec.select.i.i.i1.i.i, %.critedge.i ], [ %i.br, %bb.m ] ; 10 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !102, !noalias !82
  %i.bx = icmp eq ptr %i.bw, %.sroa.05.026.i
  br i1 %i.bx, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.05.026.i, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !111, !noalias !82
  %i.ca = call noundef zeroext i1 @_ZNK4llvm15ScalarEvolution10isSCEVableEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(1152) %1, ptr noundef %i.bz) #15, !noalias !82
  br i1 %i.ca, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  %i.cb = call noundef ptr @_ZN4llvm15ScalarEvolution7getSCEVEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1152) %1, ptr noundef nonnull %.sroa.05.026.i) #15, !noalias !82 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load i16, ptr %i.cc, align 8, !tbaa !112, !noalias !82
  %i.ce = icmp ne i16 %i.cd, 8
  %.not6024.i = icmp eq ptr %i.cb, null
  %.not60.i = or i1 %.not6024.i, %i.ce
  br i1 %.not60.i, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !119, !noalias !82
  %i.ch = icmp eq i64 %i.cg, 2
  br i1 %i.ch, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  %i.cj = load i16, ptr %i.ci, align 4, !tbaa !122, !noalias !82
  %i.ck = trunc i16 %i.cj to i1
  br i1 %i.ck, label %bb.r, label %.critedge.i

bb.r:                                             ; preds = %bb.q
  %i.cl = call i64 @_ZNK4llvm14SCEVAddRecExpr17getStepRecurrenceERNS_15ScalarEvolutionE(ptr noundef nonnull align 8 dereferenceable(64) %i.cb, ptr noundef nonnull align 8 dereferenceable(1152) %1), !noalias !82
  %i.cm = and i64 %i.cl, -8
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = call noundef zeroext i1 @_ZN4llvm15ScalarEvolution14isKnownNonZeroEPKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(1152) %1, ptr noundef %i.cn) #15, !noalias !82
  br i1 %i.co, label %bb.s, label %.critedge.i

bb.s:                                             ; preds = %bb.r
  %i.cp = call noundef ptr @_ZNK4llvm14SCEVAddRecExpr14getPostIncExprERNS_15ScalarEvolutionE(ptr noundef nonnull align 8 dereferenceable(64) %i.cb, ptr noundef nonnull align 8 dereferenceable(1152) %1) #15, !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15, !noalias !82
  %i.cq = call noundef ptr @_ZNK4llvm14SCEVAddRecExpr19evaluateAtIterationEPKNS_4SCEVERNS_15ScalarEvolutionE(ptr noundef nonnull align 8 dereferenceable(64) %i.cp, ptr noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(1152) %1) #15, !noalias !82 ; 2 uses
  store ptr %i.cq, ptr %i.e, align 8, !tbaa !123, !noalias !82
  %i.cr = call noundef zeroext i1 @_ZNK4llvm12SCEVExpander14isSafeToExpandEPKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(752) %8, ptr noundef %i.cq) #15, !noalias !82
  br i1 %i.cr, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.cs = call noundef zeroext i1 @_ZN4llvm12SCEVExpander19isHighCostExpansionENS_8ArrayRefIPKNS_4SCEVEEEPNS_4LoopEjPKNS_19TargetTransformInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(752) %8, ptr nonnull %i.e, i64 1, ptr noundef nonnull %0, i32 noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.bn), !noalias !82
  br i1 %i.cs, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = load ptr, ptr %i.ag, align 8, !tbaa !87, !noalias !82
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -24
  %i.cv = call noundef zeroext i1 @_ZN4llvm29mustExecuteUBIfPoisonOnPathToEPNS_11InstructionES1_PNS_13DominatorTreeE(ptr noundef nonnull %.sroa.05.026.i, ptr noundef nonnull %i.cu, ptr noundef nonnull align 8 dereferenceable(204) %2) #15, !noalias !82
  br i1 %i.cv, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.05.026.i, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !noalias !82
  %i.cy = and i32 %i.cx, 268435455                ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.cy, 0
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.sroa.05.026.i, i64 -8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !124, !noalias !82 ; 2 uses
  br i1 %.not11.i.i.i, label %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.05.026.i, i64 76
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !125, !noalias !82
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %.pre.i.i, i64 %i.db
  %i.dd = zext nneg i32 %i.cy to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.x ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.i.i.i
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !110, !noalias !82
  %i.dg = icmp eq ptr %i.df, %i.af
  br i1 %i.dg, label %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.dd
  br i1 %.not.i.i.i, label %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i, label %bb.w, !llvm.loop !138

_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i: ; preds = %bb.x, %bb.w, %bb.v
  %i.dh = phi i64 [ 4294967295, %bb.v ], [ %indvars.iv.i.i.i, %bb.w ], [ 4294967295, %bb.x ]
  %i.di = getelementptr inbounds nuw [32 x i8], ptr %.pre.i.i, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !95, !noalias !82 ; 5 uses
  %i.dk = load ptr, ptr %i.ag, align 8, !tbaa !87, !noalias !82
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -24
end_hunk_0
begin_hunk_1_@_ZL11RunTermFoldPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERNS_8LoopInfoERKNS_19TargetTransformInfoERNS_17TargetLibraryInfoEPNS_9MemorySSAE:bb.a
  %i.fz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm12TargetFolderE, i64 16), ptr %i.fz, align 8, !tbaa !268
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.fy, ptr %i.ga, align 8, !tbaa !210
  %i.gb = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.fy, ptr %i.gb, align 8, !tbaa !210
  %i.gc = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gc, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.gd, align 8, !tbaa !270
  %i.ge = getelementptr inbounds nuw i8, ptr %6, i64 81
  store i8 1, ptr %i.ge, align 1, !tbaa !271
  %i.gf = getelementptr inbounds nuw i8, ptr %6, i64 82
  store i8 0, ptr %i.gf, align 2, !tbaa !272
  %i.gg = ptrtoint ptr %10 to i64                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm25IRBuilderCallbackInserterE, i64 16), ptr %7, align 8, !tbaa !268
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr @_ZNSt17_Function_handlerIFvPN4llvm11InstructionEEZNS0_12SCEVExpanderC1ERNS0_15ScalarEvolutionEPKcbEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_, ptr %i.gi, align 8, !tbaa !273
  %i.gj = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.gg, ptr %i.gh, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !274
  store ptr @_ZNSt17_Function_handlerIFvPN4llvm11InstructionEEZNS0_12SCEVExpanderC1ERNS0_15ScalarEvolutionEPKcbEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.gj, align 8, !tbaa !275
  %i.gk = getelementptr inbounds nuw i8, ptr %10, i64 544 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %10, i64 632 ; 2 uses
  store ptr null, ptr %i.fv, align 8, !tbaa !276
  %i.gm = getelementptr inbounds nuw i8, ptr %10, i64 488
  store ptr %i.fx, ptr %i.gm, align 8, !tbaa !277
  %i.gn = getelementptr inbounds nuw i8, ptr %10, i64 496
  store ptr %i.gk, ptr %i.gn, align 8, !tbaa !278
  %i.go = getelementptr inbounds nuw i8, ptr %10, i64 504
  store ptr %i.gl, ptr %i.go, align 8, !tbaa !279
  %i.gp = getelementptr inbounds nuw i8, ptr %10, i64 512
  store ptr null, ptr %i.gp, align 8, !tbaa !280
  %i.gq = getelementptr inbounds nuw i8, ptr %10, i64 520
  store i32 0, ptr %i.gq, align 8, !tbaa !281
  %i.gr = getelementptr inbounds nuw i8, ptr %10, i64 524
  store i8 0, ptr %i.gr, align 4, !tbaa !282
  %i.gs = getelementptr inbounds nuw i8, ptr %10, i64 525
  store i8 2, ptr %i.gs, align 1, !tbaa !283
  %i.gt = getelementptr inbounds nuw i8, ptr %10, i64 526
  store i8 7, ptr %i.gt, align 2, !tbaa !284
  %i.gu = getelementptr inbounds nuw i8, ptr %10, i64 528
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i8 0, i64 16, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %10, i64 464
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.gv, i8 0, i64 18, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm18InstSimplifyFolderE, i64 16), ptr %i.gk, align 8, !tbaa !268
  %i.gw = getelementptr inbounds nuw i8, ptr %10, i64 552
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm12TargetFolderE, i64 16), ptr %i.gw, align 8, !tbaa !268
  %i.gx = getelementptr inbounds nuw i8, ptr %10, i64 560
  store ptr %i.fy, ptr %i.gx, align 8, !tbaa !210
  %i.gy = getelementptr inbounds nuw i8, ptr %10, i64 568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gy, ptr noundef nonnull align 8 dereferenceable(64) %i.gb, i64 64, i1 false), !tbaa.struct !285
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm25IRBuilderCallbackInserterE, i64 16), ptr %i.gl, align 8, !tbaa !268
  %i.gz = getelementptr inbounds nuw i8, ptr %10, i64 640
  %i.ha = getelementptr inbounds nuw i8, ptr %10, i64 648
  store i64 0, ptr %i.ha, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %10, i64 664
  %i.hc = getelementptr inbounds nuw i8, ptr %10, i64 656
  store i64 %i.gg, ptr %i.gz, align 8, !tbaa !293
  store ptr @_ZNSt17_Function_handlerIFvPN4llvm11InstructionEEZNS0_12SCEVExpanderC1ERNS0_15ScalarEvolutionEPKcbEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_, ptr %i.hb, align 8, !tbaa !273
  store ptr @_ZNSt17_Function_handlerIFvPN4llvm11InstructionEEZNS0_12SCEVExpanderC1ERNS0_15ScalarEvolutionEPKcbEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.hc, align 8, !tbaa !275
  call void @_ZN4llvm25IRBuilderCallbackInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #15
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.fz) #15
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %6) #15
  %i.hd = getelementptr inbounds nuw i8, ptr %10, i64 672
  %i.he = getelementptr inbounds nuw i8, ptr %10, i64 688
  store ptr %i.he, ptr %i.hd, align 8, !tbaa !71
  %i.hf = getelementptr inbounds nuw i8, ptr %10, i64 680
  store i32 0, ptr %i.hf, align 8, !tbaa !72
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 684
  store i32 8, ptr %i.hg, align 4, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.hh = ptrtoint ptr %.216.i to i64
  %i.hi = and i64 %i.hh, -7
  %i.hj = getelementptr inbounds nuw i8, ptr %.2.i, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !111
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !87
  %i.hn = call noundef ptr @_ZN4llvm12SCEVExpander13expandCodeForENS_8SCEVUseTIPKNS_4SCEVEEEPNS_4TypeENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(752) %10, i64 %i.hi, ptr noundef %i.hk, ptr nonnull %i.hm, i64 0) #15
  %i.ho = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !87 ; 9 uses
  %i.hq = getelementptr inbounds i8, ptr %i.hp, i64 -120 ; 3 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.hs = getelementptr inbounds i8, ptr %i.hp, i64 -24 ; 2 uses
  %i.ht = getelementptr inbounds i8, ptr %i.hp, i64 -16
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !111
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !295, !nonnull !19, !align !20
  %i.hw = getelementptr inbounds nuw i8, ptr %11, i64 88 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 3 uses
  store ptr null, ptr %11, align 8, !tbaa !276
  %i.hy = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.hv, ptr %i.hy, align 8, !tbaa !277
  %i.hz = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %i.hw, ptr %i.hz, align 8, !tbaa !278
  %i.ia = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %i.hx, ptr %i.ia, align 8, !tbaa !279
  %i.ib = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr null, ptr %i.ib, align 8, !tbaa !280
  %i.ic = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i32 0, ptr %i.ic, align 8, !tbaa !281
  %i.id = getelementptr inbounds nuw i8, ptr %11, i64 68
  store i8 0, ptr %i.id, align 4, !tbaa !282
  %i.ie = getelementptr inbounds nuw i8, ptr %11, i64 69
  store i8 2, ptr %i.ie, align 1, !tbaa !283
  %i.if = getelementptr inbounds nuw i8, ptr %11, i64 70
  store i8 7, ptr %i.if, align 2, !tbaa !284
  %i.ig = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.ih = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ig, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.hw, align 8, !tbaa !268
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.hx, align 8, !tbaa !268
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !104
  store ptr %i.ij, ptr %i.ih, align 8, !tbaa !299
  %i.ik = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.hp, ptr %i.ik, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.il = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.hs) #15
  %i.im = load i64, ptr %i.il, align 8, !tbaa !300
  store i64 %i.im, ptr %11, align 8, !tbaa !300
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.in = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.io = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.io, align 1, !tbaa !301
  store ptr @.str.1, ptr %12, align 8, !tbaa !274
  store i8 3, ptr %i.in, align 8, !tbaa !304
  %i.ip = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateICmpENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %11, i32 noundef 32, ptr noundef %i.eu, ptr noundef %i.hn, ptr noundef nonnull align 8 dereferenceable(34) %12) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %i.iq = getelementptr inbounds i8, ptr %i.hp, i64 -88
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !95
  %i.is = load ptr, ptr %i.be, align 8, !tbaa !107
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !110
  %i.iu = icmp eq ptr %i.ir, %i.it
  br i1 %i.iu, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN4llvm10CondBrInst14swapSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(72) %i.hs) #15
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.iv = getelementptr inbounds i8, ptr %i.hp, i64 -104 ; 3 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !305 ; 3 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i41, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ix = getelementptr inbounds i8, ptr %i.hp, i64 -112 ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !101 ; 3 uses
  store ptr %i.iy, ptr %i.iw, align 8, !tbaa !124
  %.not2.i.i.i.i = icmp eq ptr %i.iy, null
  br i1 %.not2.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store ptr %i.iw, ptr %i.iz, align 8, !tbaa !305
  store ptr null, ptr %i.ix, align 8, !tbaa !101
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  store ptr null, ptr %i.iv, align 8, !tbaa !305
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i.i:        ; preds = %bb.an, %bb.ak
  store ptr %i.ip, ptr %i.hq, align 8, !tbaa !95
  %.not.i.i.i42 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i42, label %_ZN4llvm10CondBrInst12setConditionEPNS_5ValueE.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i
  %i.ja = load i8, ptr %i.ip, align 8, !tbaa !90
  %i.jb = icmp ugt i8 %i.ja, 10
  br i1 %i.jb, label %bb.ap, label %_ZN4llvm10CondBrInst12setConditionEPNS_5ValueE.exit

bb.ap:                                            ; preds = %bb.ao
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ip, i64 16 ; 3 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !124 ; 3 uses
  %i.je = getelementptr inbounds i8, ptr %i.hp, i64 -112 ; 2 uses
  store ptr %i.jd, ptr %i.je, align 8, !tbaa !101
  %.not.i.i.i.i.i = icmp eq ptr %i.jd, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store ptr %i.je, ptr %i.jf, align 8, !tbaa !305
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i:        ; preds = %bb.aq, %bb.ap
  store ptr %i.jc, ptr %i.iv, align 8, !tbaa !305
  store ptr %i.hq, ptr %i.jc, align 8, !tbaa !124
  br label %_ZN4llvm10CondBrInst12setConditionEPNS_5ValueE.exit

_ZN4llvm10CondBrInst12setConditionEPNS_5ValueE.exit: ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i, %bb.ao, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i
  call void @_ZN4llvm12SCEVExpander5clearEv(ptr noundef nonnull align 8 dereferenceable(752) %10)
  %i.jg = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.hr) #15 ; 0 uses
  %i.jh = load ptr, ptr %i.be, align 8, !tbaa !107
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !110
  %i.jj = load ptr, ptr %9, align 8, !tbaa !79
  %i.jk = call noundef zeroext i1 @_ZN4llvm14DeleteDeadPHIsEPNS_10BasicBlockEPKNS_17TargetLibraryInfoEPNS_16MemorySSAUpdaterEPNS_15SmallPtrSetImplIPNS_7PHINodeEEE(ptr noundef %i.ji, ptr noundef nonnull %4, ptr noundef %i.jj, ptr noundef null) #15 ; 0 uses
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hx) #15
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hw) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @_ZN4llvm12SCEVExpanderD2Ev(ptr noundef nonnull align 8 dead_on_return(752) dereferenceable(752) %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.ar

bb.ar:                                            ; preds = %_ZL21canFoldTermCondOfLoopPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERKNS_8LoopInfoERKNS_19TargetTransformInfoE.exit.thread21, %_ZL21canFoldTermCondOfLoopPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERKNS_8LoopInfoERKNS_19TargetTransformInfoE.exit.thread14, %_ZL21canFoldTermCondOfLoopPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERKNS_8LoopInfoERKNS_19TargetTransformInfoE.exit.thread, %_ZN4llvm10CondBrInst12setConditionEPNS_5ValueE.exit
  %13 = phi i1 [ false, %_ZL21canFoldTermCondOfLoopPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERKNS_8LoopInfoERKNS_19TargetTransformInfoE.exit.thread ], [ false, %_ZL21canFoldTermCondOfLoopPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERKNS_8LoopInfoERKNS_19TargetTransformInfoE.exit.thread21 ], [ true, %_ZN4llvm10CondBrInst12setConditionEPNS_5ValueE.exit ], [ false, %_ZL21canFoldTermCondOfLoopPN4llvm4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeERKNS_8LoopInfoERKNS_19TargetTransformInfoE.exit.thread14 ]
  %14 = load ptr, ptr %9, align 8, !tbaa !79      ; 2 uses
  %.not.i43 = icmp eq ptr %14, null
  br i1 %.not.i43, label %_ZNSt10unique_ptrIN4llvm16MemorySSAUpdaterESt14default_deleteIS1_EED2Ev.exit44, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZNKSt14default_deleteIN4llvm16MemorySSAUpdaterEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %14)
  br label %_ZNSt10unique_ptrIN4llvm16MemorySSAUpdaterESt14default_deleteIS1_EED2Ev.exit44

_ZNSt10unique_ptrIN4llvm16MemorySSAUpdaterESt14default_deleteIS1_EED2Ev.exit44: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  ret i1 %13
}

declare void @_ZN4llvm28getLoopPassPreservedAnalysesEv(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm26initializeLoopTermFoldPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %class.anon.423, align 8            ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store ptr @_ZL30initializeLoopTermFoldPassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !306
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !38
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !38
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL30InitializeLoopTermFoldPassFlag, ptr noundef nonnull @__once_proxy) #15 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #18
  unreachable

_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !38
  store ptr null, ptr %i.c, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL30initializeLoopTermFoldPassOnceRN4llvm12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #0 {
bb.a:
  tail call void @_ZN4llvm44initializeTargetTransformInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #15
  tail call void @_ZN4llvm38initializeDominatorTreeWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #15
  tail call void @_ZN4llvm40initializeScalarEvolutionWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #15
  tail call void @_ZN4llvm33initializeLoopInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #15
  tail call void @_ZN4llvm26initializeLoopSimplifyPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #15
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #16 ; 9 uses
  store ptr @.str.3, ptr %i.a, align 8, !tbaa !308
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 23, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !309
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.4, ptr %i.b, align 8, !tbaa !308
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 14, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !309
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN12_GLOBAL__N_112LoopTermFold2IDE, ptr %i.c, align 8, !tbaa !310
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !313
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 0, ptr %i.e, align 1, !tbaa !314
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_112LoopTermFoldEEEPNS_4PassEv, ptr %i.f, align 8, !tbaa !315
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef nonnull ptr @_ZN4llvm22createLoopTermFoldPassEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %class.anon.423, align 8            ; 5 uses
  %1 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !316
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_112LoopTermFold2IDE, ptr %i.c, align 8, !tbaa !320
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !321
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN12_GLOBAL__N_112LoopTermFoldE, i64 16), ptr %i.a, align 8, !tbaa !268
  %i.e = tail call noundef ptr @_ZN4llvm12PassRegistry15getPassRegistryEv() #15, !inline_history !322
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store ptr %i.e, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  store ptr @_ZL30initializeLoopTermFoldPassOnceRN4llvm12PassRegistryE, ptr %0, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !306
  %i.g = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %0, ptr %i.g, align 8, !tbaa !38
  %i.h = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.h, align 8, !tbaa !38
  %i.i = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL30InitializeLoopTermFoldPassFlag, ptr noundef nonnull @__once_proxy) #15, !inline_history !323 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_112LoopTermFoldC2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.i) #18, !inline_history !323
  unreachable

_ZN12_GLOBAL__N_112LoopTermFoldC2Ev.exit:         ; preds = %bb.a
  store ptr null, ptr %i.g, align 8, !tbaa !38
  store ptr null, ptr %i.h, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef ptr @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE16getLoopPreheaderEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #1

declare noundef ptr @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE12getLoopLatchEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #1

declare void @_ZN4llvm11Instruction25dropPoisonGeneratingFlagsEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12SCEVExpanderC2ERNS_15ScalarEvolutionEPKcb(ptr noundef nonnull align 8 dereferenceable(752) %0, ptr noundef nonnull align 8 dereferenceable(1152) %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 {
_ZNSt14_Function_baseD2Ev.exit:
  %4 = alloca %"class.llvm::InstSimplifyFolder", align 8 ; 9 uses
  %5 = alloca %"class.llvm::IRBuilderCallbackInserter", align 8 ; 6 uses
  %i.a = zext i1 %3 to i8
  store ptr %1, ptr %0, align 8, !tbaa !141
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !142, !nonnull !19, !align !20
  store ptr %i.d, ptr %i.b, align 8, !tbaa !210
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !211
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.a, ptr %i.f, align 8, !tbaa !262
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i8 0, i64 72, i1 false)
  store ptr %i.i, ptr %i.h, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 16, ptr %i.j, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.k, align 4, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.l, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.o, ptr %i.n, align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 0, ptr %i.p, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 292
  store i32 2, ptr %i.q, align 4, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.t, ptr %i.s, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 2, ptr %i.u, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i32 0, ptr %i.v, align 4, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i8 1, ptr %i.w, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i8 0, i64 40, i1 false)
  store i8 1, ptr %i.y, align 8, !tbaa !263
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 449
  store i8 0, ptr %i.z, align 1, !tbaa !264
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 450
  store i8 0, ptr %i.aa, align 2, !tbaa !265
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ac = load ptr, ptr %1, align 8, !tbaa !266, !nonnull !19, !align !20
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.ac) #15
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !267, !nonnull !19, !align !20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm18InstSimplifyFolderE, i64 16), ptr %4, align 8, !tbaa !268
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm12TargetFolderE, i64 16), ptr %i.af, align 8, !tbaa !268
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !210
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !210
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.aj, align 8, !tbaa !270
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 81
  store i8 1, ptr %i.ak, align 1, !tbaa !271
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 82
  store i8 0, ptr %i.al, align 2, !tbaa !272
  %i.am = ptrtoint ptr %0 to i64                  ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm25IRBuilderCallbackInserterE, i64 16), ptr %5, align 8, !tbaa !268
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr @_ZNSt17_Function_handlerIFvPN4llvm11InstructionEEZNS0_12SCEVExpanderC1ERNS0_15ScalarEvolutionEPKcbEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_, ptr %i.ao, align 8, !tbaa !273
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24
end_hunk_1
