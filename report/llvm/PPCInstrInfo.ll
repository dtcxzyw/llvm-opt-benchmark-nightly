Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCInstrInfo?download=true
inline.NumInlined: 4654
inline.NumDeleted: 1537
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0
$_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E24lookupOrInsertIntoBucketIS2_JjEEESt4pairIPS7_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE15growAndPushBackERKS1_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_14MachineOperandENS_3PPC9PredicateEELb1EE15growAndPushBackES6_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_14MachineOperandEjELb1EE15growAndPushBackES4_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPKNS_14MachineOperandELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm8SmallSetINS_8RegisterELj4ESt4lessIS1_EE10insertImplIS1_EESt4pairINS_16SmallSetIteratorIS1_Lj4ES3_EEbEOT_ = comdat any

$_ZNSt3setIN4llvm8RegisterESt4lessIS1_ESaIS1_EE6insertISt13move_iteratorIPS1_EEEvT_SA_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIRKjJSB_EEESt4pairIPS6_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ = comdat any

$_ZN4llvm15TargetInstrInfo17PipelinerLoopInfo17shouldUseScheduleERNS_17SwingSchedulerDAGERNS_10SMScheduleE = comdat any

$_ZN4llvm15TargetInstrInfo17PipelinerLoopInfo41createRemainingIterationsGreaterConditionEiRNS_17MachineBasicBlockERNS_15SmallVectorImplINS_14MachineOperandEEERNS_8DenseMapIPNS_12MachineInstrESA_NS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEE = comdat any

$_ZN4llvm15TargetInstrInfo17PipelinerLoopInfo22isMVEExpanderSupportedEv = comdat any

$_ZTVN4llvm15PPCGenInstrInfoE = comdat any

$_ZTVN4llvm2cl3optIfLb0ENS0_6parserIfEEEE = comdat any

$_ZTVN4llvm2cl11OptionValueIfEE = comdat any

$_ZTVN4llvm12MIRFormatterE = comdat any

$_ZTVN4llvm2cl11OptionValueIbEE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZN4llvm25PPCRegClassByHwModeTablesE = external constant [2 x [3 x i16]], align 2
@_ZTVN4llvm15PPCGenInstrInfoE = linkonce_odr unnamed_addr constant { [187 x ptr] } { [187 x ptr] [ptr null, ptr null, ptr @_ZN4llvm15TargetInstrInfoD2Ev, ptr @_ZN4llvm15PPCGenInstrInfoD0Ev, ptr @_ZNK4llvm15TargetInstrInfo11getRegClassERKNS_11MCInstrDescEj, ptr @_ZNK4llvm15TargetInstrInfo20isGlobalMemoryObjectEPKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo14isIgnorableUseERKNS_14MachineOperandE, ptr @_ZNK4llvm15TargetInstrInfo12isSafeToSinkERNS_12MachineInstrEPNS_17MachineBasicBlockEPNS_16MachineCycleInfoE, ptr @_ZNK4llvm15TargetInstrInfo29shouldBreakCriticalEdgeToSinkERNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo22isReMaterializableImplERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj, ptr @_ZNK4llvm15TargetInstrInfo11getSPAdjustERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo21isCoalescableExtInstrERKNS_12MachineInstrERNS_8RegisterES5_Rj, ptr @_ZNK4llvm15TargetInstrInfo19isLoadFromStackSlotERKNS_12MachineInstrERi, ptr @_ZNK4llvm15TargetInstrInfo19isLoadFromStackSlotERKNS_12MachineInstrERiRNS_8TypeSizeE, ptr @_ZNK4llvm15TargetInstrInfo25isLoadFromStackSlotPostFEERKNS_12MachineInstrERi, ptr @_ZNK4llvm15TargetInstrInfo20hasLoadFromStackSlotERKNS_12MachineInstrERNS_15SmallVectorImplIPKNS_17MachineMemOperandEEE, ptr @_ZNK4llvm15TargetInstrInfo18isStoreToStackSlotERKNS_12MachineInstrERi, ptr @_ZNK4llvm15TargetInstrInfo18isStoreToStackSlotERKNS_12MachineInstrERiRNS_8TypeSizeE, ptr @_ZNK4llvm15TargetInstrInfo24isStoreToStackSlotPostFEERKNS_12MachineInstrERi, ptr @_ZNK4llvm15TargetInstrInfo19hasStoreToStackSlotERKNS_12MachineInstrERNS_15SmallVectorImplIPKNS_17MachineMemOperandEEE, ptr @_ZNK4llvm15TargetInstrInfo15isStackSlotCopyERKNS_12MachineInstrERiS4_, ptr @_ZNK4llvm15TargetInstrInfo17getStackSlotRangeEPKNS_15MCRegisterClassEjRjS4_RKNS_15MachineFunctionE, ptr @_ZNK4llvm15TargetInstrInfo18getInstSizeInBytesERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo21getInstSizeVerifyModeERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo16isAsCheapAsAMoveERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo10shouldSinkERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo16shouldPostRASinkERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo11shouldHoistERKNS_12MachineInstrEPKNS_11MachineLoopE, ptr @_ZNK4llvm15TargetInstrInfo13reMaterializeERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEjRKS4_NS_11LaneBitmaskE, ptr @_ZNK4llvm15TargetInstrInfo9duplicateERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKS4_, ptr @_ZNK4llvm15TargetInstrInfo21convertToThreeAddressERNS_12MachineInstrEPNS_13LiveVariablesEPNS_13LiveIntervalsE, ptr @_ZNK4llvm15TargetInstrInfo21findCommutedOpIndicesERKNS_12MachineInstrERjS4_, ptr @_ZNK4llvm15TargetInstrInfo20hasCommutePreferenceERNS_12MachineInstrERb, ptr @_ZNK4llvm15TargetInstrInfo19simplifyInstructionERNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo16produceSameValueERKNS_12MachineInstrES3_PKNS_19MachineRegisterInfoE, ptr @_ZNK4llvm15TargetInstrInfo21isBranchOffsetInRangeEjl, ptr @_ZNK4llvm15TargetInstrInfo18getBranchDestBlockERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo20insertIndirectBranchERNS_17MachineBasicBlockES2_S2_RKNS_8DebugLocElPNS_12RegScavengerE, ptr @_ZNK4llvm15TargetInstrInfo13analyzeBranchERNS_17MachineBasicBlockERPS1_S4_RNS_15SmallVectorImplINS_14MachineOperandEEEb, ptr @_ZNK4llvm15TargetInstrInfo22analyzeBranchPredicateERNS_17MachineBasicBlockERNS0_22MachineBranchPredicateEb, ptr @_ZNK4llvm15TargetInstrInfo12removeBranchERNS_17MachineBasicBlockEPi, ptr @_ZNK4llvm15TargetInstrInfo12insertBranchERNS_17MachineBasicBlockEPS1_S3_NS_8ArrayRefINS_14MachineOperandEEERKNS_8DebugLocEPi, ptr @_ZNK4llvm15TargetInstrInfo24analyzeLoopForPipeliningEPNS_17MachineBasicBlockE, ptr @_ZNK4llvm15TargetInstrInfo11analyzeLoopERNS_11MachineLoopERPNS_12MachineInstrES5_, ptr @_ZNK4llvm15TargetInstrInfo15reduceLoopCountERNS_17MachineBasicBlockES2_PNS_12MachineInstrERS3_RNS_15SmallVectorImplINS_14MachineOperandEEERNS6_IS4_EEjj, ptr @_ZNK4llvm15TargetInstrInfo23ReplaceTailWithBranchToENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPNS_17MachineBasicBlockE, ptr @_ZNK4llvm15TargetInstrInfo19isLegalToSplitMBBAtERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE, ptr @_ZNK4llvm15TargetInstrInfo19isProfitableToIfCvtERNS_17MachineBasicBlockEjjNS_17BranchProbabilityE, ptr @_ZNK4llvm15TargetInstrInfo19isProfitableToIfCvtERNS_17MachineBasicBlockEjjS2_jjNS_17BranchProbabilityE, ptr @_ZNK4llvm15TargetInstrInfo25isProfitableToDupForIfCvtERNS_17MachineBasicBlockEjNS_17BranchProbabilityE, ptr @_ZNK4llvm15TargetInstrInfo32extraSizeToPredicateInstructionsERKNS_15MachineFunctionEj, ptr @_ZNK4llvm15TargetInstrInfo25predictBranchSizeForIfCvtERNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo25isProfitableToUnpredicateERNS_17MachineBasicBlockES2_, ptr @_ZNK4llvm15TargetInstrInfo15canInsertSelectERKNS_17MachineBasicBlockENS_8ArrayRefINS_14MachineOperandEEENS_8RegisterES7_S7_RiS8_S8_, ptr @_ZNK4llvm15TargetInstrInfo12insertSelectERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterENS_8ArrayRefINS_14MachineOperandEEES9_S9_, ptr @_ZNK4llvm15TargetInstrInfo14optimizeSelectERNS_12MachineInstrERNS_15SmallPtrSetImplIPS1_EEb, ptr @_ZNK4llvm15TargetInstrInfo11copyPhysRegERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_bbb, ptr @_ZNK4llvm15TargetInstrInfo27isPCRelRegisterOperandLegalERKNS_14MachineOperandE, ptr @_ZNK4llvm15TargetInstrInfo17getJumpTableIndexERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo15isCopyInstrImplERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo19isCopyLikeInstrImplERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo27isUnspillableTerminatorImplEPKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo14isAddImmediateERKNS_12MachineInstrENS_8RegisterE, ptr @_ZNK4llvm15TargetInstrInfo23getConstValDefinedInRegERKNS_12MachineInstrENS_8RegisterERl, ptr @_ZNK4llvm15TargetInstrInfo19storeRegToStackSlotERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEbiPKNS_15MCRegisterClassES6_NS4_6MIFlagE, ptr @_ZNK4llvm15TargetInstrInfo20loadRegFromStackSlotERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEiPKNS_15MCRegisterClassES6_jNS4_6MIFlagE, ptr @_ZNK4llvm15TargetInstrInfo18expandPostRAPseudoERNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo16isSubregFoldableEv, ptr @_ZNK4llvm15TargetInstrInfo28getPatchpointUnfoldableRangeERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo26getMachineCombinerPatternsERNS_12MachineInstrERNS_15SmallVectorImplIjEEb, ptr @_ZNK4llvm15TargetInstrInfo28shouldReduceRegisterPressureEPKNS_17MachineBasicBlockEPKNS_17RegisterClassInfoE, ptr @_ZNK4llvm15TargetInstrInfo17finalizeInsInstrsERNS_12MachineInstrERjRNS_15SmallVectorImplIPS1_EE, ptr @_ZNK4llvm15TargetInstrInfo19isThroughputPatternEj, ptr @_ZNK4llvm15TargetInstrInfo20getCombinerObjectiveEj, ptr @_ZNK4llvm15TargetInstrInfo27isAssociativeAndCommutativeERKNS_12MachineInstrEb, ptr @_ZNK4llvm15TargetInstrInfo20isAccumulationOpcodeEj, ptr @_ZNK4llvm15TargetInstrInfo26getAccumulationStartOpcodeEj, ptr @_ZNK4llvm15TargetInstrInfo29getReduceOpcodeForAccumulatorEj, ptr @_ZNK4llvm15TargetInstrInfo16getInverseOpcodeEj, ptr @_ZNK4llvm15TargetInstrInfo23hasReassociableOperandsERKNS_12MachineInstrEPKNS_17MachineBasicBlockE, ptr @_ZNK4llvm15TargetInstrInfo22hasReassociableSiblingERKNS_12MachineInstrERb, ptr @_ZNK4llvm15TargetInstrInfo26genAlternativeCodeSequenceERNS_12MachineInstrEjRNS_15SmallVectorImplIPS1_EES6_RNS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEE, ptr @_ZNK4llvm15TargetInstrInfo31accumulateInstrSeqToRootLatencyERNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo28getReassociateOperandIndicesERKNS_12MachineInstrEjRSt5arrayIjLm5EE, ptr @_ZNK4llvm15TargetInstrInfo25getExtendResourceLenLimitEv, ptr @_ZNK4llvm15TargetInstrInfo21setSpecialOperandAttrERNS_12MachineInstrES2_S2_S2_, ptr @_ZNK4llvm15TargetInstrInfo18useMachineCombinerEv, ptr @_ZNK4llvm15TargetInstrInfo31getMachineCombinerTraceStrategyEv, ptr @_ZNK4llvm15TargetInstrInfo30canCopyGluedNodeDuringScheduleEPNS_6SDNodeE, ptr @_ZNK4llvm15TargetInstrInfo21foldMemoryOperandImplERNS_15MachineFunctionERNS_12MachineInstrENS_8ArrayRefIjEEiRPS3_PNS_13LiveIntervalsEPNS_10VirtRegMapE, ptr @_ZNK4llvm15TargetInstrInfo21foldMemoryOperandImplERNS_15MachineFunctionERNS_12MachineInstrENS_8ArrayRefIjEES4_RPS3_PNS_13LiveIntervalsEPNS_10VirtRegMapE, ptr @_ZNK4llvm15TargetInstrInfo24getRegSequenceLikeInputsERKNS_12MachineInstrEjRNS_15SmallVectorImplINS0_19RegSubRegPairAndIdxEEE, ptr @_ZNK4llvm15TargetInstrInfo26getExtractSubregLikeInputsERKNS_12MachineInstrEjRNS0_19RegSubRegPairAndIdxE, ptr @_ZNK4llvm15TargetInstrInfo25getInsertSubregLikeInputsERKNS_12MachineInstrEjRNS0_13RegSubRegPairERNS0_19RegSubRegPairAndIdxE, ptr @_ZNK4llvm15TargetInstrInfo19unfoldMemoryOperandERNS_15MachineFunctionERNS_12MachineInstrENS_8RegisterEbbRNS_15SmallVectorImplIPS3_EE, ptr @_ZNK4llvm15TargetInstrInfo19unfoldMemoryOperandERNS_12SelectionDAGEPNS_6SDNodeERNS_15SmallVectorImplIS4_EE, ptr @_ZNK4llvm15TargetInstrInfo26getOpcodeAfterMemoryUnfoldEjbbPj, ptr @_ZNK4llvm15TargetInstrInfo23areLoadsFromSameBasePtrEPNS_6SDNodeES2_RlS3_, ptr @_ZNK4llvm15TargetInstrInfo23shouldScheduleLoadsNearEPNS_6SDNodeES2_llj, ptr @_ZNK4llvm15TargetInstrInfo29getMemOperandsWithOffsetWidthERKNS_12MachineInstrERNS_15SmallVectorImplIPKNS_14MachineOperandEEERlRbRNS_12LocationSizeEPKNS_18TargetRegisterInfoE, ptr @_ZNK4llvm15TargetInstrInfo24getBaseAndOffsetPositionERKNS_12MachineInstrERjS4_, ptr @_ZNK4llvm15TargetInstrInfo23getAddrModeFromMemoryOpERKNS_12MachineInstrEPKNS_18TargetRegisterInfoE, ptr @_ZNK4llvm15TargetInstrInfo19canFoldIntoAddrModeERKNS_12MachineInstrENS_8RegisterES3_RNS_11ExtAddrModeE, ptr @_ZNK4llvm15TargetInstrInfo16emitLdStWithAddrERNS_12MachineInstrERKNS_11ExtAddrModeE, ptr @_ZNK4llvm15TargetInstrInfo23preservesZeroValueInRegEPKNS_12MachineInstrENS_8RegisterEPKNS_18TargetRegisterInfoE, ptr @_ZNK4llvm15TargetInstrInfo17getIncrementValueERKNS_12MachineInstrERi, ptr @_ZNK4llvm15TargetInstrInfo19shouldClusterMemOpsENS_8ArrayRefIPKNS_14MachineOperandEEElbS5_lbjj, ptr @_ZNK4llvm15TargetInstrInfo22reverseBranchConditionERNS_15SmallVectorImplINS_14MachineOperandEEE, ptr @_ZNK4llvm15TargetInstrInfo10insertNoopERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE, ptr @_ZNK4llvm15TargetInstrInfo11insertNoopsERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEj, ptr @_ZNK4llvm15TargetInstrInfo6getNopEv, ptr @_ZNK4llvm15TargetInstrInfo15isPostIncrementERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo12isPredicatedERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo27canPredicatePredicatedInstrERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo23createMIROperandCommentB5cxx11ERKNS_12MachineInstrERKNS_14MachineOperandEjPKNS_18TargetRegisterInfoE, ptr @_ZNK4llvm15TargetInstrInfo23isUnconditionalTailCallERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo26canMakeTailCallConditionalERNS_15SmallVectorImplINS_14MachineOperandEEERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo25replaceBranchWithTailCallERNS_17MachineBasicBlockERNS_15SmallVectorImplINS_14MachineOperandEEERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo20PredicateInstructionERNS_12MachineInstrENS_8ArrayRefINS_14MachineOperandEEE, ptr @_ZNK4llvm15TargetInstrInfo17SubsumesPredicateENS_8ArrayRefINS_14MachineOperandEEES3_, ptr @_ZNK4llvm15TargetInstrInfo17ClobbersPredicateERNS_12MachineInstrERSt6vectorINS_14MachineOperandESaIS4_EEb, ptr @_ZNK4llvm15TargetInstrInfo12isPredicableERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo24isSafeToMoveRegClassDefsEPKNS_15MCRegisterClassE, ptr @_ZNK4llvm15TargetInstrInfo12isSafeToMoveERKNS_12MachineInstrEPKNS_17MachineBasicBlockERKNS_15MachineFunctionE, ptr @_ZNK4llvm15TargetInstrInfo20isSchedulingBoundaryERKNS_12MachineInstrEPKNS_17MachineBasicBlockERKNS_15MachineFunctionE, ptr @_ZNK4llvm15TargetInstrInfo18getInlineAsmLengthEPKcRKNS_9MCAsmInfoEPKNS_19TargetSubtargetInfoE, ptr @_ZNK4llvm15TargetInstrInfo28CreateTargetHazardRecognizerEPKNS_19TargetSubtargetInfoEPKNS_11ScheduleDAGE, ptr @_ZNK4llvm15TargetInstrInfo30CreateTargetMIHazardRecognizerEPKNS_18InstrItineraryDataEPKNS_13ScheduleDAGMIE, ptr @_ZNK4llvm15TargetInstrInfo34CreateTargetPostRAHazardRecognizerEPKNS_18InstrItineraryDataEPKNS_11ScheduleDAGE, ptr @_ZNK4llvm15TargetInstrInfo34CreateTargetPostRAHazardRecognizerERKNS_15MachineFunctionEPNS_15MachineLoopInfoE, ptr @_ZNK4llvm15TargetInstrInfo14analyzeCompareERKNS_12MachineInstrERNS_8RegisterES5_RlS6_, ptr @_ZNK4llvm15TargetInstrInfo20optimizeCompareInstrERNS_12MachineInstrENS_8RegisterES3_llPKNS_19MachineRegisterInfoE, ptr @_ZNK4llvm15TargetInstrInfo18optimizeCondBranchERNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo17optimizeLoadInstrERNS_12MachineInstrEPKNS_19MachineRegisterInfoERNS_8RegisterERPS1_S9_, ptr @_ZNK4llvm15TargetInstrInfo13foldImmediateERNS_12MachineInstrES2_NS_8RegisterEPNS_19MachineRegisterInfoE, ptr @_ZNK4llvm15TargetInstrInfo14getNumMicroOpsEPKNS_18InstrItineraryDataERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo17getOperandLatencyEPKNS_18InstrItineraryDataEPNS_6SDNodeEjS5_j, ptr @_ZNK4llvm15TargetInstrInfo17getOperandLatencyEPKNS_18InstrItineraryDataERKNS_12MachineInstrEjS6_j, ptr @_ZNK4llvm15TargetInstrInfo15getInstrLatencyEPKNS_18InstrItineraryDataERKNS_12MachineInstrEPj, ptr @_ZNK4llvm15TargetInstrInfo18getPredicationCostERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo15getInstrLatencyEPKNS_18InstrItineraryDataEPNS_6SDNodeE, ptr @_ZNK4llvm15TargetInstrInfo16isHighLatencyDefEi, ptr @_ZNK4llvm15TargetInstrInfo21hasHighOperandLatencyERKNS_16TargetSchedModelEPKNS_19MachineRegisterInfoERKNS_12MachineInstrEjS9_j, ptr @_ZNK4llvm15TargetInstrInfo16hasLowDefLatencyERKNS_16TargetSchedModelERKNS_12MachineInstrEj, ptr @_ZNK4llvm15TargetInstrInfo17verifyInstructionERKNS_12MachineInstrERNS_9StringRefE, ptr @_ZNK4llvm15TargetInstrInfo18getExecutionDomainERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo18setExecutionDomainERNS_12MachineInstrEj, ptr @_ZNK4llvm15TargetInstrInfo28getPartialRegUpdateClearanceERKNS_12MachineInstrEjPKNS_18TargetRegisterInfoE, ptr @_ZNK4llvm15TargetInstrInfo20getUndefRegClearanceERKNS_12MachineInstrEjPKNS_18TargetRegisterInfoE, ptr @_ZNK4llvm15TargetInstrInfo25breakPartialRegDependencyERNS_12MachineInstrEjPKNS_18TargetRegisterInfoE, ptr @_ZNK4llvm15TargetInstrInfo25CreateTargetScheduleStateERKNS_19TargetSubtargetInfoE, ptr @_ZNK4llvm15TargetInstrInfo31areMemAccessesTriviallyDisjointERKNS_12MachineInstrES3_, ptr @_ZNK4llvm15TargetInstrInfo27getMachineCSELookAheadLimitEv, ptr @_ZNK4llvm15TargetInstrInfo25getMemOperandAACheckLimitEv, ptr @_ZNK4llvm15TargetInstrInfo28getSerializableTargetIndicesEv, ptr @_ZNK4llvm15TargetInstrInfo35decomposeMachineOperandsTargetFlagsEj, ptr @_ZNK4llvm15TargetInstrInfo46getSerializableDirectMachineOperandTargetFlagsEv, ptr @_ZNK4llvm15TargetInstrInfo47getSerializableBitmaskMachineOperandTargetFlagsEv, ptr @_ZNK4llvm15TargetInstrInfo43getSerializableMachineMemOperandTargetFlagsEv, ptr @_ZNK4llvm15TargetInstrInfo10isTailCallERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo20isBasicBlockPrologueERKNS_12MachineInstrENS_8RegisterE, ptr @_ZNK4llvm15TargetInstrInfo23getLiveRangeSplitOpcodeENS_8RegisterERKNS_15MachineFunctionE, ptr @_ZNK4llvm15TargetInstrInfo24createPHIDestinationCopyERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_, ptr @_ZNK4llvm15TargetInstrInfo19createPHISourceCopyERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterEjS9_, ptr @_ZNK4llvm15TargetInstrInfo25getOutliningCandidateInfoERKNS_17MachineModuleInfoERSt6vectorINS_8outliner9CandidateESaIS6_EEj, ptr @_ZNK4llvm15TargetInstrInfo33mergeOutliningCandidateAttributesERNS_8FunctionERSt6vectorINS_8outliner9CandidateESaIS5_EE, ptr @_ZNK4llvm15TargetInstrInfo20getOutliningTypeImplERKNS_17MachineModuleInfoERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEj, ptr @_ZNK4llvm15TargetInstrInfo22isMBBSafeToOutlineFromERNS_17MachineBasicBlockERj, ptr @_ZNK4llvm15TargetInstrInfo19getOutlinableRangesERNS_17MachineBasicBlockERj, ptr @_ZNK4llvm15TargetInstrInfo18buildOutlinedFrameERNS_17MachineBasicBlockERNS_15MachineFunctionERKNS_8outliner16OutlinedFunctionE, ptr @_ZNK4llvm15TargetInstrInfo18insertOutlinedCallERNS_6ModuleERNS_17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERNS_15MachineFunctionERNS_8outliner9CandidateE, ptr @_ZNK4llvm15TargetInstrInfo18buildClearRegisterENS_8RegisterERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERNS_8DebugLocEb, ptr @_ZNK4llvm15TargetInstrInfo27isFunctionSafeToOutlineFromERNS_15MachineFunctionEb, ptr @_ZNK4llvm15TargetInstrInfo34shouldOutlineFromFunctionByDefaultERNS_15MachineFunctionE, ptr @_ZNK4llvm15TargetInstrInfo21isFunctionSafeToSplitERKNS_15MachineFunctionE, ptr @_ZNK4llvm15TargetInstrInfo22isMBBSafeToSplitToColdERKNS_17MachineBasicBlockE, ptr @_ZNK4llvm15TargetInstrInfo19describeLoadedValueERKNS_12MachineInstrENS_8RegisterE, ptr @_ZNK4llvm15TargetInstrInfo24isExtendLikelyToBeFoldedERNS_12MachineInstrERNS_19MachineRegisterInfoE, ptr @_ZNK4llvm15TargetInstrInfo15getMIRFormatterEv, ptr @_ZNK4llvm15TargetInstrInfo20getTailDuplicateSizeENS_15CodeGenOptLevelE, ptr @_ZNK4llvm15TargetInstrInfo16getTailMergeSizeERKNS_15MachineFunctionE, ptr @_ZNK4llvm15TargetInstrInfo16getCalleeOperandERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo18getValueUniformityERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo24isExplicitTargetIndexDefERKNS_12MachineInstrERiRl, ptr @_ZNK4llvm15TargetInstrInfo21getFrameIndexOperandsERNS_15SmallVectorImplINS_14MachineOperandEEEi, ptr @_ZNK4llvm15TargetInstrInfo23insertCodePrefetchInstrERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPKNS_11GlobalValueE] }, comdat, align 8
@_ZN4llvm8PPCDescsE = external global %"struct.llvm::PPCInstrTable", align 8
@_ZN4llvm19PPCInstrNameIndicesE = external constant [0 x i32], align 4
@_ZN4llvm16PPCInstrNameDataE = external constant [0 x i8], align 1
@_ZN4llvm27PPCInstrDeprecationFeaturesE = external constant [0 x i8], align 1
@_ZZN4llvm3PPC36get64BitInstrFromSignedExt32BitInstrEjE5Table = internal unnamed_addr constant [26 x [2 x i32]] [[2 x i32] [i32 510, i32 507], [2 x i32] [i32 1173, i32 1174], [2 x i32] [i32 1175, i32 1174], [2 x i32] [i32 1177, i32 1176], [2 x i32] [i32 1178, i32 1179], [2 x i32] [i32 1180, i32 1179], [2 x i32] [i32 1182, i32 1181], [2 x i32] [i32 1183, i32 1189], [2 x i32] [i32 1191, i32 1190], [2 x i32] [i32 1344, i32 1345], [2 x i32] [i32 1351, i32 1352], [2 x i32] [i32 1390, i32 1391], [2 x i32] [i32 1398, i32 1399], [2 x i32] [i32 1406, i32 1407], [2 x i32] [i32 1413, i32 1414], [2 x i32] [i32 1418, i32 1419], [2 x i32] [i32 1420, i32 1421], [2 x i32] [i32 1935, i32 1936], [2 x i32] [i32 1937, i32 1938], [2 x i32] [i32 1939, i32 1940], [2 x i32] [i32 1942, i32 1943], [2 x i32] [i32 1944, i32 1945], [2 x i32] [i32 1980, i32 1981], [2 x i32] [i32 1983, i32 1984], [2 x i32] [i32 1986, i32 1985], [2 x i32] [i32 1987, i32 1982]], align 16
@_ZZN4llvm3PPC18getAltVSXFMAOpcodeEjE5Table = internal unnamed_addr constant [16 x [2 x i32]] [[2 x i32] [i32 2681, i32 2683], [2 x i32] [i32 2682, i32 2684], [2 x i32] [i32 2699, i32 2701], [2 x i32] [i32 2700, i32 2702], [2 x i32] [i32 2714, i32 2716], [2 x i32] [i32 2715, i32 2717], [2 x i32] [i32 2720, i32 2722], [2 x i32] [i32 2721, i32 2723], [2 x i32] [i32 2867, i32 2869], [2 x i32] [i32 2868, i32 2870], [2 x i32] [i32 2875, i32 2877], [2 x i32] [i32 2876, i32 2878], [2 x i32] [i32 2891, i32 2893], [2 x i32] [i32 2892, i32 2894], [2 x i32] [i32 2895, i32 2897], [2 x i32] [i32 2896, i32 2898]], align 16
@_ZZN4llvm3PPC22getNonRecordFormOpcodeEjE5Table = internal unnamed_addr constant [221 x [2 x i32]] [[2 x i32] [i32 424, i32 423], [2 x i32] [i32 426, i32 422], [2 x i32] [i32 429, i32 428], [2 x i32] [i32 432, i32 427], [2 x i32] [i32 436, i32 435], [2 x i32] [i32 437, i32 434], [2 x i32] [i32 439, i32 438], [2 x i32] [i32 440, i32 433], [2 x i32] [i32 444, i32 443], [2 x i32] [i32 445, i32 442], [2 x i32] [i32 447, i32 446], [2 x i32] [i32 450, i32 441], [2 x i32] [i32 457, i32 455], [2 x i32] [i32 484, i32 483], [2 x i32] [i32 485, i32 482], [2 x i32] [i32 487, i32 486], [2 x i32] [i32 488, i32 481], [2 x i32] [i32 493, i32 492], [2 x i32] [i32 494, i32 491], [2 x i32] [i32 496, i32 495], [2 x i32] [i32 497, i32 490], [2 x i32] [i32 502, i32 501], [2 x i32] [i32 505, i32 504], [2 x i32] [i32 506, i32 503], [2 x i32] [i32 515, i32 500], [2 x i32] [i32 704, i32 702], [2 x i32] [i32 707, i32 706], [2 x i32] [i32 708, i32 705], [2 x i32] [i32 711, i32 709], [2 x i32] [i32 714, i32 713], [2 x i32] [i32 715, i32 712], [2 x i32] [i32 737, i32 736], [2 x i32] [i32 738, i32 735], [2 x i32] [i32 758, i32 756], [2 x i32] [i32 759, i32 755], [2 x i32] [i32 765, i32 764], [2 x i32] [i32 769, i32 767], [2 x i32] [i32 770, i32 766], [2 x i32] [i32 772, i32 771], [2 x i32] [i32 775, i32 774], [2 x i32] [i32 776, i32 773], [2 x i32] [i32 779, i32 778], [2 x i32] [i32 780, i32 777], [2 x i32] [i32 783, i32 782], [2 x i32] [i32 784, i32 781], [2 x i32] [i32 787, i32 786], [2 x i32] [i32 788, i32 785], [2 x i32] [i32 792, i32 791], [2 x i32] [i32 795, i32 794], [2 x i32] [i32 796, i32 793], [2 x i32] [i32 797, i32 790], [2 x i32] [i32 799, i32 798], [2 x i32] [i32 802, i32 801], [2 x i32] [i32 803, i32 800], [2 x i32] [i32 804, i32 789], [2 x i32] [i32 808, i32 807], [2 x i32] [i32 811, i32 810], [2 x i32] [i32 812, i32 809], [2 x i32] [i32 813, i32 806], [2 x i32] [i32 815, i32 814], [2 x i32] [i32 818, i32 817], [2 x i32] [i32 819, i32 816], [2 x i32] [i32 820, i32 805], [2 x i32] [i32 827, i32 826], [2 x i32] [i32 828, i32 825], [2 x i32] [i32 854, i32 853], [2 x i32] [i32 855, i32 852], [2 x i32] [i32 857, i32 856], [2 x i32] [i32 858, i32 851], [2 x i32] [i32 860, i32 859], [2 x i32] [i32 863, i32 862], [2 x i32] [i32 864, i32 861], [2 x i32] [i32 867, i32 866], [2 x i32] [i32 868, i32 865], [2 x i32] [i32 871, i32 870], [2 x i32] [i32 872, i32 869], [2 x i32] [i32 874, i32 873], [2 x i32] [i32 877, i32 876], [2 x i32] [i32 878, i32 875], [2 x i32] [i32 881, i32 880], [2 x i32] [i32 882, i32 879], [2 x i32] [i32 895, i32 894], [2 x i32] [i32 896, i32 893], [2 x i32] [i32 909, i32 908], [2 x i32] [i32 910, i32 907], [2 x i32] [i32 976, i32 975], [2 x i32] [i32 977, i32 974], [2 x i32] [i32 1176, i32 1174], [2 x i32] [i32 1177, i32 1173], [2 x i32] [i32 1181, i32 1179], [2 x i32] [i32 1182, i32 1178], [2 x i32] [i32 1186, i32 1185], [2 x i32] [i32 1187, i32 1184], [2 x i32] [i32 1190, i32 1189], [2 x i32] [i32 1191, i32 1183], [2 x i32] [i32 1194, i32 1193], [2 x i32] [i32 1196, i32 1195], [2 x i32] [i32 1199, i32 1198], [2 x i32] [i32 1200, i32 1197], [2 x i32] [i32 1204, i32 1203], [2 x i32] [i32 1207, i32 1206], [2 x i32] [i32 1208, i32 1205], [2 x i32] [i32 1209, i32 1202], [2 x i32] [i32 1215, i32 1214], [2 x i32] [i32 1217, i32 1216], [2 x i32] [i32 1221, i32 1220], [2 x i32] [i32 1222, i32 1219], [2 x i32] [i32 1224, i32 1223], [2 x i32] [i32 1225, i32 1218], [2 x i32] [i32 1229, i32 1228], [2 x i32] [i32 1230, i32 1227], [2 x i32] [i32 1232, i32 1231], [2 x i32] [i32 1233, i32 1226], [2 x i32] [i32 1236, i32 1235], [2 x i32] [i32 1237, i32 1234], [2 x i32] [i32 1241, i32 1240], [2 x i32] [i32 1242, i32 1239], [2 x i32] [i32 1244, i32 1243], [2 x i32] [i32 1247, i32 1246], [2 x i32] [i32 1248, i32 1245], [2 x i32] [i32 1251, i32 1250], [2 x i32] [i32 1252, i32 1249], [2 x i32] [i32 1254, i32 1253], [2 x i32] [i32 1256, i32 1255], [2 x i32] [i32 1258, i32 1257], [2 x i32] [i32 1260, i32 1259], [2 x i32] [i32 1263, i32 1262], [2 x i32] [i32 1264, i32 1261], [2 x i32] [i32 1267, i32 1266], [2 x i32] [i32 1268, i32 1265], [2 x i32] [i32 1271, i32 1270], [2 x i32] [i32 1272, i32 1269], [2 x i32] [i32 1274, i32 1273], [2 x i32] [i32 1276, i32 1275], [2 x i32] [i32 1278, i32 1277], [2 x i32] [i32 1280, i32 1279], [2 x i32] [i32 1282, i32 1281], [2 x i32] [i32 1284, i32 1283], [2 x i32] [i32 1286, i32 1285], [2 x i32] [i32 1288, i32 1287], [2 x i32] [i32 1290, i32 1289], [2 x i32] [i32 1293, i32 1292], [2 x i32] [i32 1294, i32 1291], [2 x i32] [i32 1296, i32 1295], [2 x i32] [i32 1298, i32 1297], [2 x i32] [i32 1301, i32 1300], [2 x i32] [i32 1302, i32 1299], [2 x i32] [i32 1305, i32 1304], [2 x i32] [i32 1306, i32 1303], [2 x i32] [i32 1593, i32 1592], [2 x i32] [i32 1594, i32 1591], [2 x i32] [i32 1597, i32 1596], [2 x i32] [i32 1598, i32 1595], [2 x i32] [i32 1601, i32 1600], [2 x i32] [i32 1602, i32 1599], [2 x i32] [i32 1607, i32 1606], [2 x i32] [i32 1608, i32 1605], [2 x i32] [i32 1614, i32 1613], [2 x i32] [i32 1615, i32 1612], [2 x i32] [i32 1620, i32 1619], [2 x i32] [i32 1621, i32 1618], [2 x i32] [i32 1623, i32 1622], [2 x i32] [i32 1624, i32 1617], [2 x i32] [i32 1630, i32 1629], [2 x i32] [i32 1631, i32 1628], [2 x i32] [i32 1634, i32 1633], [2 x i32] [i32 1637, i32 1636], [2 x i32] [i32 1638, i32 1635], [2 x i32] [i32 1643, i32 1632], [2 x i32] [i32 1883, i32 1882], [2 x i32] [i32 1885, i32 1884], [2 x i32] [i32 1890, i32 1888], [2 x i32] [i32 1891, i32 1887], [2 x i32] [i32 1894, i32 1892], [2 x i32] [i32 1895, i32 1886], [2 x i32] [i32 1897, i32 1896], [2 x i32] [i32 1900, i32 1899], [2 x i32] [i32 1901, i32 1898], [2 x i32] [i32 1904, i32 1903], [2 x i32] [i32 1905, i32 1902], [2 x i32] [i32 1908, i32 1907], [2 x i32] [i32 1909, i32 1906], [2 x i32] [i32 1957, i32 1956], [2 x i32] [i32 1960, i32 1959], [2 x i32] [i32 1961, i32 1958], [2 x i32] [i32 1978, i32 1976], [2 x i32] [i32 1979, i32 1975], [2 x i32] [i32 1982, i32 1981], [2 x i32] [i32 1985, i32 1984], [2 x i32] [i32 1986, i32 1983], [2 x i32] [i32 1987, i32 1980], [2 x i32] [i32 1989, i32 1988], [2 x i32] [i32 1992, i32 1991], [2 x i32] [i32 1993, i32 1990], [2 x i32] [i32 2105, i32 2104], [2 x i32] [i32 2106, i32 2103], [2 x i32] [i32 2110, i32 2109], [2 x i32] [i32 2111, i32 2108], [2 x i32] [i32 2113, i32 2112], [2 x i32] [i32 2114, i32 2107], [2 x i32] [i32 2118, i32 2117], [2 x i32] [i32 2119, i32 2116], [2 x i32] [i32 2121, i32 2120], [2 x i32] [i32 2122, i32 2115], [2 x i32] [i32 2128, i32 2127], [2 x i32] [i32 2129, i32 2126], [2 x i32] [i32 2131, i32 2130], [2 x i32] [i32 2132, i32 2125], [2 x i32] [i32 2134, i32 2133], [2 x i32] [i32 2136, i32 2135], [2 x i32] [i32 2140, i32 2139], [2 x i32] [i32 2141, i32 2138], [2 x i32] [i32 2143, i32 2142], [2 x i32] [i32 2144, i32 2137], [2 x i32] [i32 2145, i32 2102], [2 x i32] [i32 2553, i32 2552], [2 x i32] [i32 2555, i32 2554], [2 x i32] [i32 2557, i32 2556], [2 x i32] [i32 2559, i32 2558], [2 x i32] [i32 2614, i32 2613], [2 x i32] [i32 2619, i32 2612]], align 16
@_ZZN4llvm3PPC19getRecordFormOpcodeEjE5Table = internal unnamed_addr constant [221 x [2 x i32]] [[2 x i32] [i32 422, i32 426], [2 x i32] [i32 423, i32 424], [2 x i32] [i32 427, i32 432], [2 x i32] [i32 428, i32 429], [2 x i32] [i32 433, i32 440], [2 x i32] [i32 434, i32 437], [2 x i32] [i32 435, i32 436], [2 x i32] [i32 438, i32 439], [2 x i32] [i32 441, i32 450], [2 x i32] [i32 442, i32 445], [2 x i32] [i32 443, i32 444], [2 x i32] [i32 446, i32 447], [2 x i32] [i32 455, i32 457], [2 x i32] [i32 481, i32 488], [2 x i32] [i32 482, i32 485], [2 x i32] [i32 483, i32 484], [2 x i32] [i32 486, i32 487], [2 x i32] [i32 490, i32 497], [2 x i32] [i32 491, i32 494], [2 x i32] [i32 492, i32 493], [2 x i32] [i32 495, i32 496], [2 x i32] [i32 500, i32 515], [2 x i32] [i32 501, i32 502], [2 x i32] [i32 503, i32 506], [2 x i32] [i32 504, i32 505], [2 x i32] [i32 702, i32 704], [2 x i32] [i32 705, i32 708], [2 x i32] [i32 706, i32 707], [2 x i32] [i32 709, i32 711], [2 x i32] [i32 712, i32 715], [2 x i32] [i32 713, i32 714], [2 x i32] [i32 735, i32 738], [2 x i32] [i32 736, i32 737], [2 x i32] [i32 755, i32 759], [2 x i32] [i32 756, i32 758], [2 x i32] [i32 764, i32 765], [2 x i32] [i32 766, i32 770], [2 x i32] [i32 767, i32 769], [2 x i32] [i32 771, i32 772], [2 x i32] [i32 773, i32 776], [2 x i32] [i32 774, i32 775], [2 x i32] [i32 777, i32 780], [2 x i32] [i32 778, i32 779], [2 x i32] [i32 781, i32 784], [2 x i32] [i32 782, i32 783], [2 x i32] [i32 785, i32 788], [2 x i32] [i32 786, i32 787], [2 x i32] [i32 789, i32 804], [2 x i32] [i32 790, i32 797], [2 x i32] [i32 791, i32 792], [2 x i32] [i32 793, i32 796], [2 x i32] [i32 794, i32 795], [2 x i32] [i32 798, i32 799], [2 x i32] [i32 800, i32 803], [2 x i32] [i32 801, i32 802], [2 x i32] [i32 805, i32 820], [2 x i32] [i32 806, i32 813], [2 x i32] [i32 807, i32 808], [2 x i32] [i32 809, i32 812], [2 x i32] [i32 810, i32 811], [2 x i32] [i32 814, i32 815], [2 x i32] [i32 816, i32 819], [2 x i32] [i32 817, i32 818], [2 x i32] [i32 825, i32 828], [2 x i32] [i32 826, i32 827], [2 x i32] [i32 851, i32 858], [2 x i32] [i32 852, i32 855], [2 x i32] [i32 853, i32 854], [2 x i32] [i32 856, i32 857], [2 x i32] [i32 859, i32 860], [2 x i32] [i32 861, i32 864], [2 x i32] [i32 862, i32 863], [2 x i32] [i32 865, i32 868], [2 x i32] [i32 866, i32 867], [2 x i32] [i32 869, i32 872], [2 x i32] [i32 870, i32 871], [2 x i32] [i32 873, i32 874], [2 x i32] [i32 875, i32 878], [2 x i32] [i32 876, i32 877], [2 x i32] [i32 879, i32 882], [2 x i32] [i32 880, i32 881], [2 x i32] [i32 893, i32 896], [2 x i32] [i32 894, i32 895], [2 x i32] [i32 907, i32 910], [2 x i32] [i32 908, i32 909], [2 x i32] [i32 974, i32 977], [2 x i32] [i32 975, i32 976], [2 x i32] [i32 1173, i32 1177], [2 x i32] [i32 1174, i32 1176], [2 x i32] [i32 1178, i32 1182], [2 x i32] [i32 1179, i32 1181], [2 x i32] [i32 1183, i32 1191], [2 x i32] [i32 1184, i32 1187], [2 x i32] [i32 1185, i32 1186], [2 x i32] [i32 1189, i32 1190], [2 x i32] [i32 1193, i32 1194], [2 x i32] [i32 1195, i32 1196], [2 x i32] [i32 1197, i32 1200], [2 x i32] [i32 1198, i32 1199], [2 x i32] [i32 1202, i32 1209], [2 x i32] [i32 1203, i32 1204], [2 x i32] [i32 1205, i32 1208], [2 x i32] [i32 1206, i32 1207], [2 x i32] [i32 1214, i32 1215], [2 x i32] [i32 1216, i32 1217], [2 x i32] [i32 1218, i32 1225], [2 x i32] [i32 1219, i32 1222], [2 x i32] [i32 1220, i32 1221], [2 x i32] [i32 1223, i32 1224], [2 x i32] [i32 1226, i32 1233], [2 x i32] [i32 1227, i32 1230], [2 x i32] [i32 1228, i32 1229], [2 x i32] [i32 1231, i32 1232], [2 x i32] [i32 1234, i32 1237], [2 x i32] [i32 1235, i32 1236], [2 x i32] [i32 1239, i32 1242], [2 x i32] [i32 1240, i32 1241], [2 x i32] [i32 1243, i32 1244], [2 x i32] [i32 1245, i32 1248], [2 x i32] [i32 1246, i32 1247], [2 x i32] [i32 1249, i32 1252], [2 x i32] [i32 1250, i32 1251], [2 x i32] [i32 1253, i32 1254], [2 x i32] [i32 1255, i32 1256], [2 x i32] [i32 1257, i32 1258], [2 x i32] [i32 1259, i32 1260], [2 x i32] [i32 1261, i32 1264], [2 x i32] [i32 1262, i32 1263], [2 x i32] [i32 1265, i32 1268], [2 x i32] [i32 1266, i32 1267], [2 x i32] [i32 1269, i32 1272], [2 x i32] [i32 1270, i32 1271], [2 x i32] [i32 1273, i32 1274], [2 x i32] [i32 1275, i32 1276], [2 x i32] [i32 1277, i32 1278], [2 x i32] [i32 1279, i32 1280], [2 x i32] [i32 1281, i32 1282], [2 x i32] [i32 1283, i32 1284], [2 x i32] [i32 1285, i32 1286], [2 x i32] [i32 1287, i32 1288], [2 x i32] [i32 1289, i32 1290], [2 x i32] [i32 1291, i32 1294], [2 x i32] [i32 1292, i32 1293], [2 x i32] [i32 1295, i32 1296], [2 x i32] [i32 1297, i32 1298], [2 x i32] [i32 1299, i32 1302], [2 x i32] [i32 1300, i32 1301], [2 x i32] [i32 1303, i32 1306], [2 x i32] [i32 1304, i32 1305], [2 x i32] [i32 1591, i32 1594], [2 x i32] [i32 1592, i32 1593], [2 x i32] [i32 1595, i32 1598], [2 x i32] [i32 1596, i32 1597], [2 x i32] [i32 1599, i32 1602], [2 x i32] [i32 1600, i32 1601], [2 x i32] [i32 1605, i32 1608], [2 x i32] [i32 1606, i32 1607], [2 x i32] [i32 1612, i32 1615], [2 x i32] [i32 1613, i32 1614], [2 x i32] [i32 1617, i32 1624], [2 x i32] [i32 1618, i32 1621], [2 x i32] [i32 1619, i32 1620], [2 x i32] [i32 1622, i32 1623], [2 x i32] [i32 1628, i32 1631], [2 x i32] [i32 1629, i32 1630], [2 x i32] [i32 1632, i32 1643], [2 x i32] [i32 1633, i32 1634], [2 x i32] [i32 1635, i32 1638], [2 x i32] [i32 1636, i32 1637], [2 x i32] [i32 1882, i32 1883], [2 x i32] [i32 1884, i32 1885], [2 x i32] [i32 1886, i32 1895], [2 x i32] [i32 1887, i32 1891], [2 x i32] [i32 1888, i32 1890], [2 x i32] [i32 1892, i32 1894], [2 x i32] [i32 1896, i32 1897], [2 x i32] [i32 1898, i32 1901], [2 x i32] [i32 1899, i32 1900], [2 x i32] [i32 1902, i32 1905], [2 x i32] [i32 1903, i32 1904], [2 x i32] [i32 1906, i32 1909], [2 x i32] [i32 1907, i32 1908], [2 x i32] [i32 1956, i32 1957], [2 x i32] [i32 1958, i32 1961], [2 x i32] [i32 1959, i32 1960], [2 x i32] [i32 1975, i32 1979], [2 x i32] [i32 1976, i32 1978], [2 x i32] [i32 1980, i32 1987], [2 x i32] [i32 1981, i32 1982], [2 x i32] [i32 1983, i32 1986], [2 x i32] [i32 1984, i32 1985], [2 x i32] [i32 1988, i32 1989], [2 x i32] [i32 1990, i32 1993], [2 x i32] [i32 1991, i32 1992], [2 x i32] [i32 2102, i32 2145], [2 x i32] [i32 2103, i32 2106], [2 x i32] [i32 2104, i32 2105], [2 x i32] [i32 2107, i32 2114], [2 x i32] [i32 2108, i32 2111], [2 x i32] [i32 2109, i32 2110], [2 x i32] [i32 2112, i32 2113], [2 x i32] [i32 2115, i32 2122], [2 x i32] [i32 2116, i32 2119], [2 x i32] [i32 2117, i32 2118], [2 x i32] [i32 2120, i32 2121], [2 x i32] [i32 2125, i32 2132], [2 x i32] [i32 2126, i32 2129], [2 x i32] [i32 2127, i32 2128], [2 x i32] [i32 2130, i32 2131], [2 x i32] [i32 2133, i32 2134], [2 x i32] [i32 2135, i32 2136], [2 x i32] [i32 2137, i32 2144], [2 x i32] [i32 2138, i32 2141], [2 x i32] [i32 2139, i32 2140], [2 x i32] [i32 2142, i32 2143], [2 x i32] [i32 2552, i32 2553], [2 x i32] [i32 2554, i32 2555], [2 x i32] [i32 2556, i32 2557], [2 x i32] [i32 2558, i32 2559], [2 x i32] [i32 2612, i32 2619], [2 x i32] [i32 2613, i32 2614]], align 16
@_ZL18DisableCTRLoopAnal = internal global %"class.llvm::cl::opt" zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"disable-ppc-ctrloop-analysis\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Disable analysis for CTR loops\00", align 1
@__dso_handle = external hidden global i8
@_ZL13DisableCmpOpt = internal global %"class.llvm::cl::opt" zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"disable-ppc-cmp-opt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Disable compare instruction optimization\00", align 1
@_ZL16VSXSelfCopyCrash = internal global %"class.llvm::cl::opt" zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"crash-on-ppc-vsx-self-copy\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"Causes the backend to crash instead of generating a nop VSX copy\00", align 1
@_ZL17UseOldLatencyCalc = internal global %"class.llvm::cl::opt" zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"ppc-old-latency-calc\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"Use the old (incorrect) instruction latency calculation\00", align 1
@_ZL11FMARPFactor = internal global %"class.llvm::cl::opt.9" zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [18 x i8] c"ppc-fma-rp-factor\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"register pressure factor for the transformations.\00", align 1
@_ZL29EnableFMARegPressureReduction = internal global %"class.llvm::cl::opt" zeroinitializer, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"ppc-fma-rp-reduction\00", align 1
@.str.16 = private unnamed_addr constant [58 x i8] c"enable register pressure reduce in machine combiner pass.\00", align 1
@_ZTVN4llvm12PPCInstrInfoE = unnamed_addr constant { [188 x ptr] } { [188 x ptr] [ptr null, ptr null, ptr @_ZN4llvm12PPCInstrInfoD2Ev, ptr @_ZN4llvm12PPCInstrInfoD0Ev, ptr @_ZNK4llvm15TargetInstrInfo11getRegClassERKNS_11MCInstrDescEj, ptr @_ZNK4llvm15TargetInstrInfo20isGlobalMemoryObjectEPKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo14isIgnorableUseERKNS_14MachineOperandE, ptr @_ZNK4llvm15TargetInstrInfo12isSafeToSinkERNS_12MachineInstrEPNS_17MachineBasicBlockEPNS_16MachineCycleInfoE, ptr @_ZNK4llvm15TargetInstrInfo29shouldBreakCriticalEdgeToSinkERNS_12MachineInstrE, ptr @_ZNK4llvm12PPCInstrInfo22isReMaterializableImplERKNS_12MachineInstrE, ptr @_ZNK4llvm12PPCInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj, ptr @_ZNK4llvm15TargetInstrInfo11getSPAdjustERKNS_12MachineInstrE, ptr @_ZNK4llvm12PPCInstrInfo21isCoalescableExtInstrERKNS_12MachineInstrERNS_8RegisterES5_Rj, ptr @_ZNK4llvm12PPCInstrInfo19isLoadFromStackSlotERKNS_12MachineInstrERi, ptr @_ZNK4llvm15TargetInstrInfo19isLoadFromStackSlotERKNS_12MachineInstrERiRNS_8TypeSizeE, ptr @_ZNK4llvm15TargetInstrInfo25isLoadFromStackSlotPostFEERKNS_12MachineInstrERi, ptr @_ZNK4llvm15TargetInstrInfo20hasLoadFromStackSlotERKNS_12MachineInstrERNS_15SmallVectorImplIPKNS_17MachineMemOperandEEE, ptr @_ZNK4llvm12PPCInstrInfo18isStoreToStackSlotERKNS_12MachineInstrERi, ptr @_ZNK4llvm15TargetInstrInfo18isStoreToStackSlotERKNS_12MachineInstrERiRNS_8TypeSizeE, ptr @_ZNK4llvm15TargetInstrInfo24isStoreToStackSlotPostFEERKNS_12MachineInstrERi, ptr @_ZNK4llvm15TargetInstrInfo19hasStoreToStackSlotERKNS_12MachineInstrERNS_15SmallVectorImplIPKNS_17MachineMemOperandEEE, ptr @_ZNK4llvm15TargetInstrInfo15isStackSlotCopyERKNS_12MachineInstrERiS4_, ptr @_ZNK4llvm15TargetInstrInfo17getStackSlotRangeEPKNS_15MCRegisterClassEjRjS4_RKNS_15MachineFunctionE, ptr @_ZNK4llvm12PPCInstrInfo18getInstSizeInBytesERKNS_12MachineInstrE, ptr @_ZNK4llvm12PPCInstrInfo21getInstSizeVerifyModeERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo16isAsCheapAsAMoveERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo10shouldSinkERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo16shouldPostRASinkERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo11shouldHoistERKNS_12MachineInstrEPKNS_11MachineLoopE, ptr @_ZNK4llvm15TargetInstrInfo13reMaterializeERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEjRKS4_NS_11LaneBitmaskE, ptr @_ZNK4llvm15TargetInstrInfo9duplicateERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKS4_, ptr @_ZNK4llvm15TargetInstrInfo21convertToThreeAddressERNS_12MachineInstrEPNS_13LiveVariablesEPNS_13LiveIntervalsE, ptr @_ZNK4llvm12PPCInstrInfo21findCommutedOpIndicesERKNS_12MachineInstrERjS4_, ptr @_ZNK4llvm15TargetInstrInfo20hasCommutePreferenceERNS_12MachineInstrERb, ptr @_ZNK4llvm15TargetInstrInfo19simplifyInstructionERNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo16produceSameValueERKNS_12MachineInstrES3_PKNS_19MachineRegisterInfoE, ptr @_ZNK4llvm15TargetInstrInfo21isBranchOffsetInRangeEjl, ptr @_ZNK4llvm15TargetInstrInfo18getBranchDestBlockERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo20insertIndirectBranchERNS_17MachineBasicBlockES2_S2_RKNS_8DebugLocElPNS_12RegScavengerE, ptr @_ZNK4llvm12PPCInstrInfo13analyzeBranchERNS_17MachineBasicBlockERPS1_S4_RNS_15SmallVectorImplINS_14MachineOperandEEEb, ptr @_ZNK4llvm15TargetInstrInfo22analyzeBranchPredicateERNS_17MachineBasicBlockERNS0_22MachineBranchPredicateEb, ptr @_ZNK4llvm12PPCInstrInfo12removeBranchERNS_17MachineBasicBlockEPi, ptr @_ZNK4llvm12PPCInstrInfo12insertBranchERNS_17MachineBasicBlockEPS1_S3_NS_8ArrayRefINS_14MachineOperandEEERKNS_8DebugLocEPi, ptr @_ZNK4llvm12PPCInstrInfo24analyzeLoopForPipeliningEPNS_17MachineBasicBlockE, ptr @_ZNK4llvm15TargetInstrInfo11analyzeLoopERNS_11MachineLoopERPNS_12MachineInstrES5_, ptr @_ZNK4llvm15TargetInstrInfo15reduceLoopCountERNS_17MachineBasicBlockES2_PNS_12MachineInstrERS3_RNS_15SmallVectorImplINS_14MachineOperandEEERNS6_IS4_EEjj, ptr @_ZNK4llvm15TargetInstrInfo23ReplaceTailWithBranchToENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPNS_17MachineBasicBlockE, ptr @_ZNK4llvm15TargetInstrInfo19isLegalToSplitMBBAtERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE, ptr @_ZNK4llvm12PPCInstrInfo19isProfitableToIfCvtERNS_17MachineBasicBlockEjjNS_17BranchProbabilityE, ptr @_ZNK4llvm12PPCInstrInfo19isProfitableToIfCvtERNS_17MachineBasicBlockEjjS2_jjNS_17BranchProbabilityE, ptr @_ZNK4llvm12PPCInstrInfo25isProfitableToDupForIfCvtERNS_17MachineBasicBlockEjNS_17BranchProbabilityE, ptr @_ZNK4llvm15TargetInstrInfo32extraSizeToPredicateInstructionsERKNS_15MachineFunctionEj, ptr @_ZNK4llvm15TargetInstrInfo25predictBranchSizeForIfCvtERNS_12MachineInstrE, ptr @_ZNK4llvm12PPCInstrInfo25isProfitableToUnpredicateERNS_17MachineBasicBlockES2_, ptr @_ZNK4llvm12PPCInstrInfo15canInsertSelectERKNS_17MachineBasicBlockENS_8ArrayRefINS_14MachineOperandEEENS_8RegisterES7_S7_RiS8_S8_, ptr @_ZNK4llvm12PPCInstrInfo12insertSelectERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterENS_8ArrayRefINS_14MachineOperandEEES9_S9_, ptr @_ZNK4llvm15TargetInstrInfo14optimizeSelectERNS_12MachineInstrERNS_15SmallPtrSetImplIPS1_EEb, ptr @_ZNK4llvm12PPCInstrInfo11copyPhysRegERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_bbb, ptr @_ZNK4llvm15TargetInstrInfo27isPCRelRegisterOperandLegalERKNS_14MachineOperandE, ptr @_ZNK4llvm15TargetInstrInfo17getJumpTableIndexERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo15isCopyInstrImplERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo19isCopyLikeInstrImplERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo27isUnspillableTerminatorImplEPKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo14isAddImmediateERKNS_12MachineInstrENS_8RegisterE, ptr @_ZNK4llvm15TargetInstrInfo23getConstValDefinedInRegERKNS_12MachineInstrENS_8RegisterERl, ptr @_ZNK4llvm12PPCInstrInfo19storeRegToStackSlotERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEbiPKNS_15MCRegisterClassES6_NS4_6MIFlagE, ptr @_ZNK4llvm12PPCInstrInfo20loadRegFromStackSlotERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEiPKNS_15MCRegisterClassES6_jNS4_6MIFlagE, ptr @_ZNK4llvm12PPCInstrInfo18expandPostRAPseudoERNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo16isSubregFoldableEv, ptr @_ZNK4llvm15TargetInstrInfo28getPatchpointUnfoldableRangeERKNS_12MachineInstrE, ptr @_ZNK4llvm12PPCInstrInfo26getMachineCombinerPatternsERNS_12MachineInstrERNS_15SmallVectorImplIjEEb, ptr @_ZNK4llvm12PPCInstrInfo28shouldReduceRegisterPressureEPKNS_17MachineBasicBlockEPKNS_17RegisterClassInfoE, ptr @_ZNK4llvm12PPCInstrInfo17finalizeInsInstrsERNS_12MachineInstrERjRNS_15SmallVectorImplIPS1_EE, ptr @_ZNK4llvm15TargetInstrInfo19isThroughputPatternEj, ptr @_ZNK4llvm12PPCInstrInfo20getCombinerObjectiveEj, ptr @_ZNK4llvm12PPCInstrInfo27isAssociativeAndCommutativeERKNS_12MachineInstrEb, ptr @_ZNK4llvm15TargetInstrInfo20isAccumulationOpcodeEj, ptr @_ZNK4llvm15TargetInstrInfo26getAccumulationStartOpcodeEj, ptr @_ZNK4llvm15TargetInstrInfo29getReduceOpcodeForAccumulatorEj, ptr @_ZNK4llvm15TargetInstrInfo16getInverseOpcodeEj, ptr @_ZNK4llvm15TargetInstrInfo23hasReassociableOperandsERKNS_12MachineInstrEPKNS_17MachineBasicBlockE, ptr @_ZNK4llvm15TargetInstrInfo22hasReassociableSiblingERKNS_12MachineInstrERb, ptr @_ZNK4llvm12PPCInstrInfo26genAlternativeCodeSequenceERNS_12MachineInstrEjRNS_15SmallVectorImplIPS1_EES6_RNS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEE, ptr @_ZNK4llvm15TargetInstrInfo31accumulateInstrSeqToRootLatencyERNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo28getReassociateOperandIndicesERKNS_12MachineInstrEjRSt5arrayIjLm5EE, ptr @_ZNK4llvm12PPCInstrInfo25getExtendResourceLenLimitEv, ptr @_ZNK4llvm15TargetInstrInfo21setSpecialOperandAttrERNS_12MachineInstrES2_S2_S2_, ptr @_ZNK4llvm12PPCInstrInfo18useMachineCombinerEv, ptr @_ZNK4llvm15TargetInstrInfo31getMachineCombinerTraceStrategyEv, ptr @_ZNK4llvm15TargetInstrInfo30canCopyGluedNodeDuringScheduleEPNS_6SDNodeE, ptr @_ZNK4llvm15TargetInstrInfo21foldMemoryOperandImplERNS_15MachineFunctionERNS_12MachineInstrENS_8ArrayRefIjEEiRPS3_PNS_13LiveIntervalsEPNS_10VirtRegMapE, ptr @_ZNK4llvm15TargetInstrInfo21foldMemoryOperandImplERNS_15MachineFunctionERNS_12MachineInstrENS_8ArrayRefIjEES4_RPS3_PNS_13LiveIntervalsEPNS_10VirtRegMapE, ptr @_ZNK4llvm15TargetInstrInfo24getRegSequenceLikeInputsERKNS_12MachineInstrEjRNS_15SmallVectorImplINS0_19RegSubRegPairAndIdxEEE, ptr @_ZNK4llvm15TargetInstrInfo26getExtractSubregLikeInputsERKNS_12MachineInstrEjRNS0_19RegSubRegPairAndIdxE, ptr @_ZNK4llvm15TargetInstrInfo25getInsertSubregLikeInputsERKNS_12MachineInstrEjRNS0_13RegSubRegPairERNS0_19RegSubRegPairAndIdxE, ptr @_ZNK4llvm15TargetInstrInfo19unfoldMemoryOperandERNS_15MachineFunctionERNS_12MachineInstrENS_8RegisterEbbRNS_15SmallVectorImplIPS3_EE, ptr @_ZNK4llvm15TargetInstrInfo19unfoldMemoryOperandERNS_12SelectionDAGEPNS_6SDNodeERNS_15SmallVectorImplIS4_EE, ptr @_ZNK4llvm15TargetInstrInfo26getOpcodeAfterMemoryUnfoldEjbbPj, ptr @_ZNK4llvm15TargetInstrInfo23areLoadsFromSameBasePtrEPNS_6SDNodeES2_RlS3_, ptr @_ZNK4llvm15TargetInstrInfo23shouldScheduleLoadsNearEPNS_6SDNodeES2_llj, ptr @_ZNK4llvm12PPCInstrInfo29getMemOperandsWithOffsetWidthERKNS_12MachineInstrERNS_15SmallVectorImplIPKNS_14MachineOperandEEERlRbRNS_12LocationSizeEPKNS_18TargetRegisterInfoE, ptr @_ZNK4llvm15TargetInstrInfo24getBaseAndOffsetPositionERKNS_12MachineInstrERjS4_, ptr @_ZNK4llvm15TargetInstrInfo23getAddrModeFromMemoryOpERKNS_12MachineInstrEPKNS_18TargetRegisterInfoE, ptr @_ZNK4llvm15TargetInstrInfo19canFoldIntoAddrModeERKNS_12MachineInstrENS_8RegisterES3_RNS_11ExtAddrModeE, ptr @_ZNK4llvm15TargetInstrInfo16emitLdStWithAddrERNS_12MachineInstrERKNS_11ExtAddrModeE, ptr @_ZNK4llvm15TargetInstrInfo23preservesZeroValueInRegEPKNS_12MachineInstrENS_8RegisterEPKNS_18TargetRegisterInfoE, ptr @_ZNK4llvm15TargetInstrInfo17getIncrementValueERKNS_12MachineInstrERi, ptr @_ZNK4llvm12PPCInstrInfo19shouldClusterMemOpsENS_8ArrayRefIPKNS_14MachineOperandEEElbS5_lbjj, ptr @_ZNK4llvm12PPCInstrInfo22reverseBranchConditionERNS_15SmallVectorImplINS_14MachineOperandEEE, ptr @_ZNK4llvm12PPCInstrInfo10insertNoopERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE, ptr @_ZNK4llvm15TargetInstrInfo11insertNoopsERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEj, ptr @_ZNK4llvm12PPCInstrInfo6getNopEv, ptr @_ZNK4llvm15TargetInstrInfo15isPostIncrementERKNS_12MachineInstrE, ptr @_ZNK4llvm12PPCInstrInfo12isPredicatedERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo27canPredicatePredicatedInstrERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo23createMIROperandCommentB5cxx11ERKNS_12MachineInstrERKNS_14MachineOperandEjPKNS_18TargetRegisterInfoE, ptr @_ZNK4llvm15TargetInstrInfo23isUnconditionalTailCallERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo26canMakeTailCallConditionalERNS_15SmallVectorImplINS_14MachineOperandEEERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo25replaceBranchWithTailCallERNS_17MachineBasicBlockERNS_15SmallVectorImplINS_14MachineOperandEEERKNS_12MachineInstrE, ptr @_ZNK4llvm12PPCInstrInfo20PredicateInstructionERNS_12MachineInstrENS_8ArrayRefINS_14MachineOperandEEE, ptr @_ZNK4llvm12PPCInstrInfo17SubsumesPredicateENS_8ArrayRefINS_14MachineOperandEEES3_, ptr @_ZNK4llvm12PPCInstrInfo17ClobbersPredicateERNS_12MachineInstrERSt6vectorINS_14MachineOperandESaIS4_EEb, ptr @_ZNK4llvm15TargetInstrInfo12isPredicableERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo24isSafeToMoveRegClassDefsEPKNS_15MCRegisterClassE, ptr @_ZNK4llvm15TargetInstrInfo12isSafeToMoveERKNS_12MachineInstrEPKNS_17MachineBasicBlockERKNS_15MachineFunctionE, ptr @_ZNK4llvm12PPCInstrInfo20isSchedulingBoundaryERKNS_12MachineInstrEPKNS_17MachineBasicBlockERKNS_15MachineFunctionE, ptr @_ZNK4llvm15TargetInstrInfo18getInlineAsmLengthEPKcRKNS_9MCAsmInfoEPKNS_19TargetSubtargetInfoE, ptr @_ZNK4llvm12PPCInstrInfo28CreateTargetHazardRecognizerEPKNS_19TargetSubtargetInfoEPKNS_11ScheduleDAGE, ptr @_ZNK4llvm15TargetInstrInfo30CreateTargetMIHazardRecognizerEPKNS_18InstrItineraryDataEPKNS_13ScheduleDAGMIE, ptr @_ZNK4llvm12PPCInstrInfo34CreateTargetPostRAHazardRecognizerEPKNS_18InstrItineraryDataEPKNS_11ScheduleDAGE, ptr @_ZNK4llvm15TargetInstrInfo34CreateTargetPostRAHazardRecognizerERKNS_15MachineFunctionEPNS_15MachineLoopInfoE, ptr @_ZNK4llvm12PPCInstrInfo14analyzeCompareERKNS_12MachineInstrERNS_8RegisterES5_RlS6_, ptr @_ZNK4llvm12PPCInstrInfo20optimizeCompareInstrERNS_12MachineInstrENS_8RegisterES3_llPKNS_19MachineRegisterInfoE, ptr @_ZNK4llvm15TargetInstrInfo18optimizeCondBranchERNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo17optimizeLoadInstrERNS_12MachineInstrEPKNS_19MachineRegisterInfoERNS_8RegisterERPS1_S9_, ptr @_ZNK4llvm12PPCInstrInfo13foldImmediateERNS_12MachineInstrES2_NS_8RegisterEPNS_19MachineRegisterInfoE, ptr @_ZNK4llvm15TargetInstrInfo14getNumMicroOpsEPKNS_18InstrItineraryDataERKNS_12MachineInstrE, ptr @_ZNK4llvm12PPCInstrInfo17getOperandLatencyEPKNS_18InstrItineraryDataEPNS_6SDNodeEjS5_j, ptr @_ZNK4llvm12PPCInstrInfo17getOperandLatencyEPKNS_18InstrItineraryDataERKNS_12MachineInstrEjS6_j, ptr @_ZNK4llvm12PPCInstrInfo15getInstrLatencyEPKNS_18InstrItineraryDataERKNS_12MachineInstrEPj, ptr @_ZNK4llvm15TargetInstrInfo18getPredicationCostERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo15getInstrLatencyEPKNS_18InstrItineraryDataEPNS_6SDNodeE, ptr @_ZNK4llvm15TargetInstrInfo16isHighLatencyDefEi, ptr @_ZNK4llvm15TargetInstrInfo21hasHighOperandLatencyERKNS_16TargetSchedModelEPKNS_19MachineRegisterInfoERKNS_12MachineInstrEjS9_j, ptr @_ZNK4llvm12PPCInstrInfo16hasLowDefLatencyERKNS_16TargetSchedModelERKNS_12MachineInstrEj, ptr @_ZNK4llvm15TargetInstrInfo17verifyInstructionERKNS_12MachineInstrERNS_9StringRefE, ptr @_ZNK4llvm15TargetInstrInfo18getExecutionDomainERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo18setExecutionDomainERNS_12MachineInstrEj, ptr @_ZNK4llvm15TargetInstrInfo28getPartialRegUpdateClearanceERKNS_12MachineInstrEjPKNS_18TargetRegisterInfoE, ptr @_ZNK4llvm15TargetInstrInfo20getUndefRegClearanceERKNS_12MachineInstrEjPKNS_18TargetRegisterInfoE, ptr @_ZNK4llvm15TargetInstrInfo25breakPartialRegDependencyERNS_12MachineInstrEjPKNS_18TargetRegisterInfoE, ptr @_ZNK4llvm15TargetInstrInfo25CreateTargetScheduleStateERKNS_19TargetSubtargetInfoE, ptr @_ZNK4llvm12PPCInstrInfo31areMemAccessesTriviallyDisjointERKNS_12MachineInstrES3_, ptr @_ZNK4llvm15TargetInstrInfo27getMachineCSELookAheadLimitEv, ptr @_ZNK4llvm15TargetInstrInfo25getMemOperandAACheckLimitEv, ptr @_ZNK4llvm15TargetInstrInfo28getSerializableTargetIndicesEv, ptr @_ZNK4llvm12PPCInstrInfo35decomposeMachineOperandsTargetFlagsEj, ptr @_ZNK4llvm12PPCInstrInfo46getSerializableDirectMachineOperandTargetFlagsEv, ptr @_ZNK4llvm15TargetInstrInfo47getSerializableBitmaskMachineOperandTargetFlagsEv, ptr @_ZNK4llvm15TargetInstrInfo43getSerializableMachineMemOperandTargetFlagsEv, ptr @_ZNK4llvm15TargetInstrInfo10isTailCallERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo20isBasicBlockPrologueERKNS_12MachineInstrENS_8RegisterE, ptr @_ZNK4llvm15TargetInstrInfo23getLiveRangeSplitOpcodeENS_8RegisterERKNS_15MachineFunctionE, ptr @_ZNK4llvm15TargetInstrInfo24createPHIDestinationCopyERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_, ptr @_ZNK4llvm15TargetInstrInfo19createPHISourceCopyERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterEjS9_, ptr @_ZNK4llvm15TargetInstrInfo25getOutliningCandidateInfoERKNS_17MachineModuleInfoERSt6vectorINS_8outliner9CandidateESaIS6_EEj, ptr @_ZNK4llvm15TargetInstrInfo33mergeOutliningCandidateAttributesERNS_8FunctionERSt6vectorINS_8outliner9CandidateESaIS5_EE, ptr @_ZNK4llvm15TargetInstrInfo20getOutliningTypeImplERKNS_17MachineModuleInfoERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEj, ptr @_ZNK4llvm15TargetInstrInfo22isMBBSafeToOutlineFromERNS_17MachineBasicBlockERj, ptr @_ZNK4llvm15TargetInstrInfo19getOutlinableRangesERNS_17MachineBasicBlockERj, ptr @_ZNK4llvm15TargetInstrInfo18buildOutlinedFrameERNS_17MachineBasicBlockERNS_15MachineFunctionERKNS_8outliner16OutlinedFunctionE, ptr @_ZNK4llvm15TargetInstrInfo18insertOutlinedCallERNS_6ModuleERNS_17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERNS_15MachineFunctionERNS_8outliner9CandidateE, ptr @_ZNK4llvm15TargetInstrInfo18buildClearRegisterENS_8RegisterERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERNS_8DebugLocEb, ptr @_ZNK4llvm15TargetInstrInfo27isFunctionSafeToOutlineFromERNS_15MachineFunctionEb, ptr @_ZNK4llvm15TargetInstrInfo34shouldOutlineFromFunctionByDefaultERNS_15MachineFunctionE, ptr @_ZNK4llvm15TargetInstrInfo21isFunctionSafeToSplitERKNS_15MachineFunctionE, ptr @_ZNK4llvm15TargetInstrInfo22isMBBSafeToSplitToColdERKNS_17MachineBasicBlockE, ptr @_ZNK4llvm15TargetInstrInfo19describeLoadedValueERKNS_12MachineInstrENS_8RegisterE, ptr @_ZNK4llvm15TargetInstrInfo24isExtendLikelyToBeFoldedERNS_12MachineInstrERNS_19MachineRegisterInfoE, ptr @_ZNK4llvm15TargetInstrInfo15getMIRFormatterEv, ptr @_ZNK4llvm15TargetInstrInfo20getTailDuplicateSizeENS_15CodeGenOptLevelE, ptr @_ZNK4llvm15TargetInstrInfo16getTailMergeSizeERKNS_15MachineFunctionE, ptr @_ZNK4llvm15TargetInstrInfo16getCalleeOperandERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo18getValueUniformityERKNS_12MachineInstrE, ptr @_ZNK4llvm15TargetInstrInfo24isExplicitTargetIndexDefERKNS_12MachineInstrERiRl, ptr @_ZNK4llvm15TargetInstrInfo21getFrameIndexOperandsERNS_15SmallVectorImplINS_14MachineOperandEEEi, ptr @_ZNK4llvm15TargetInstrInfo23insertCodePrefetchInstrERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPKNS_11GlobalValueE, ptr @_ZN4llvm12PPCInstrInfo6anchorEv] }, align 8
@constinit = private unnamed_addr constant [4 x [19 x i32]] [[19 x i32] [i32 2058, i32 2008, i32 2018, i32 2026, i32 1967, i32 1968, i32 2056, i32 2085, i32 2075, i32 2082, i32 406, i32 3002, i32 3002, i32 3002, i32 3002, i32 3002, i32 3002, i32 1152, i32 1971], [19 x i32] [i32 2058, i32 2008, i32 2018, i32 2026, i32 1967, i32 1968, i32 2056, i32 2083, i32 367, i32 366, i32 406, i32 3002, i32 3002, i32 3002, i32 3002, i32 3002, i32 3002, i32 3002, i32 1971], [19 x i32] [i32 2058, i32 2008, i32 2018, i32 2026, i32 1967, i32 1968, i32 2056, i32 2083, i32 367, i32 366, i32 406, i32 2089, i32 1966, i32 1972, i32 3002, i32 3002, i32 3002, i32 3002, i32 1971], [19 x i32] [i32 2058, i32 2008, i32 2018, i32 2026, i32 1967, i32 1968, i32 2056, i32 2083, i32 367, i32 366, i32 406, i32 2089, i32 1966, i32 1972, i32 1973, i32 1970, i32 1969, i32 3002, i32 1971]], align 4
@constinit.17 = private unnamed_addr constant [4 x [19 x i32]] [[19 x i32] [i32 1450, i32 1356, i32 1375, i32 1384, i32 1869, i32 1870, i32 1433, i32 1474, i32 1465, i32 1471, i32 404, i32 3002, i32 3002, i32 3002, i32 3002, i32 3002, i32 3002, i32 1022, i32 1873], [19 x i32] [i32 1450, i32 1356, i32 1375, i32 1384, i32 1869, i32 1870, i32 1433, i32 1472, i32 365, i32 364, i32 404, i32 3002, i32 3002, i32 3002, i32 3002, i32 3002, i32 3002, i32 3002, i32 1873], [19 x i32] [i32 1450, i32 1356, i32 1375, i32 1384, i32 1869, i32 1870, i32 1433, i32 1472, i32 365, i32 364, i32 404, i32 1480, i32 1868, i32 1874, i32 3002, i32 3002, i32 3002, i32 3002, i32 1873], [19 x i32] [i32 1450, i32 1356, i32 1375, i32 1384, i32 1869, i32 1870, i32 1433, i32 1472, i32 365, i32 364, i32 404, i32 1480, i32 1868, i32 1874, i32 1875, i32 1872, i32 1871, i32 3002, i32 1873]], align 4
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN4llvm25PPCMCRegisterClassStorageE = external global %"struct.llvm::MCRegisterClassStorage", align 8
@_ZL12FMAOpIdxInfo = internal unnamed_addr constant [6 x [6 x i16]] [[6 x i16] [i16 2681, i16 2624, i16 2705, i16 1, i16 2, i16 2750], [6 x i16] [i16 2682, i16 2627, i16 2708, i16 1, i16 2, i16 2753], [6 x i16] [i16 2867, i16 2765, i16 2879, i16 1, i16 2, i16 2916], [6 x i16] [i16 2868, i16 2766, i16 2884, i16 1, i16 2, i16 2917], [6 x i16] [i16 1239, i16 1197, i16 1249, i16 3, i16 1, i16 1303], [6 x i16] [i16 1240, i16 1198, i16 1250, i16 3, i16 1, i16 1304]], align 16
@__const._ZNK4llvm12PPCInstrInfo17ClobbersPredicateERNS_12MachineInstrERSt6vectorINS_14MachineOperandESaIS4_EEb.RCs = private unnamed_addr constant [4 x ptr] [ptr getelementptr (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 448), ptr getelementptr (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 256), ptr getelementptr (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 576), ptr getelementptr (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 1664)], align 16
@.str.19 = private unnamed_addr constant [25 x i8] c"patchable-function-entry\00", align 1
@_ZZNK4llvm12PPCInstrInfo46getSerializableDirectMachineOperandTargetFlagsEvE11TargetFlags = internal constant [26 x %"struct.std::pair.540"] [%"struct.std::pair.540" { i32 1, ptr @.str.20 }, %"struct.std::pair.540" { i32 2, ptr @.str.21 }, %"struct.std::pair.540" { i32 3, ptr @.str.22 }, %"struct.std::pair.540" { i32 4, ptr @.str.23 }, %"struct.std::pair.540" { i32 5, ptr @.str.24 }, %"struct.std::pair.540" { i32 6, ptr @.str.25 }, %"struct.std::pair.540" { i32 7, ptr @.str.26 }, %"struct.std::pair.540" { i32 8, ptr @.str.27 }, %"struct.std::pair.540" { i32 9, ptr @.str.28 }, %"struct.std::pair.540" { i32 10, ptr @.str.29 }, %"struct.std::pair.540" { i32 11, ptr @.str.30 }, %"struct.std::pair.540" { i32 12, ptr @.str.31 }, %"struct.std::pair.540" { i32 13, ptr @.str.32 }, %"struct.std::pair.540" { i32 14, ptr @.str.33 }, %"struct.std::pair.540" { i32 15, ptr @.str.34 }, %"struct.std::pair.540" { i32 16, ptr @.str.35 }, %"struct.std::pair.540" { i32 17, ptr @.str.36 }, %"struct.std::pair.540" { i32 18, ptr @.str.37 }, %"struct.std::pair.540" { i32 19, ptr @.str.38 }, %"struct.std::pair.540" { i32 20, ptr @.str.39 }, %"struct.std::pair.540" { i32 21, ptr @.str.40 }, %"struct.std::pair.540" { i32 22, ptr @.str.41 }, %"struct.std::pair.540" { i32 23, ptr @.str.42 }, %"struct.std::pair.540" { i32 24, ptr @.str.43 }, %"struct.std::pair.540" { i32 25, ptr @.str.44 }, %"struct.std::pair.540" { i32 26, ptr @.str.45 }], align 16
@.str.20 = private unnamed_addr constant [8 x i8] c"ppc-plt\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"ppc-pic\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"ppc-pcrel\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"ppc-got\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"ppc-opt-pcrel\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"ppc-tlsgd\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"ppc-tprel\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"ppc-tlsldm\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"ppc-tlsld\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"ppc-tlsgdm\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"ppc-got-tlsgd-pcrel\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"ppc-got-tlsld-pcrel\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"ppc-got-tprel-pcrel\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"ppc-lo\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"ppc-ha\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"ppc-tprel-lo\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"ppc-tprel-ha\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"ppc-dtprel-lo\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"ppc-tlsld-lo\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"ppc-toc-lo\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"ppc-tls\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"ppc-ha-pic\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"ppc-lo-pic\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"ppc-tprel-pcrel\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"ppc-tls-pcrel\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"ppc-got-pcrel\00", align 1
@_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl6OptionE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl3optIfLb0ENS0_6parserIfEEEE = linkonce_odr unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr null, ptr @_ZN4llvm2cl3optIfLb0ENS0_6parserIfEEE16handleOccurrenceEjNS_9StringRefES5_, ptr @_ZNK4llvm2cl3optIfLb0ENS0_6parserIfEEE27getValueExpectedFlagDefaultEv, ptr @_ZN4llvm2cl6Option6anchorEv, ptr @_ZN4llvm2cl3optIfLb0ENS0_6parserIfEEED2Ev, ptr @_ZN4llvm2cl3optIfLb0ENS0_6parserIfEEED0Ev, ptr @_ZNK4llvm2cl3optIfLb0ENS0_6parserIfEEE14getOptionWidthEv, ptr @_ZNK4llvm2cl3optIfLb0ENS0_6parserIfEEE15printOptionInfoEm, ptr @_ZNK4llvm2cl3optIfLb0ENS0_6parserIfEEE16printOptionValueEmb, ptr @_ZN4llvm2cl3optIfLb0ENS0_6parserIfEEE10setDefaultEv, ptr @_ZN4llvm2cl3optIfLb0ENS0_6parserIfEEE19getExtraOptionNamesERNS_15SmallVectorImplINS_9StringRefEEE, ptr @_ZN4llvm2cl6Option13addOccurrenceEjNS_9StringRefES2_b] }, comdat, align 8
@_ZTVN4llvm2cl11OptionValueIfEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyIfE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm34PPCDispatchGroupSBHazardRecognizerE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZN4llvm11APFloatBase18semPPCDoubleDoubleE = external global %"struct.llvm::fltSemantics", align 4
@.str.47 = private unnamed_addr constant [99 x i8] c"Cannot implicitly convert a scalable size to a fixed-width size in `TypeSize::operator ScalarTy()`\00", align 1
@_ZTVN4llvm15PPCRegisterInfoE = external unnamed_addr constant { [92 x ptr] }, align 8
@_ZTVN4llvm12MIRFormatterE = linkonce_odr unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr null, ptr @_ZN4llvm12MIRFormatterD2Ev, ptr @_ZN4llvm12MIRFormatterD0Ev, ptr @_ZNK4llvm12MIRFormatter8printImmERNS_11raw_ostreamERKNS_12MachineInstrESt8optionalIjEl, ptr @_ZNK4llvm12MIRFormatter16parseImmMnemonicEjjNS_9StringRefERlNS_12function_refIFbPKcRKNS_5TwineEEEE, ptr @_ZNK4llvm12MIRFormatter28printCustomPseudoSourceValueERNS_11raw_ostreamERNS_17ModuleSlotTrackerERKNS_17PseudoSourceValueE, ptr @_ZNK4llvm12MIRFormatter28parseCustomPseudoSourceValueENS_9StringRefERNS_15MachineFunctionERNS_25PerFunctionMIParsingStateERPKNS_17PseudoSourceValueENS_12function_refIFbPKcRKNS_5TwineEEEE] }, comdat, align 8
@_ZTVN4llvm2cl11OptionValueIbEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm2cl6parserIbEE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN4llvm2cl6parserIfEE = external unnamed_addr constant { [6 x ptr] }, align 8
@.str.48 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN12_GLOBAL__N_120PPCPipelinerLoopInfoE = internal unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr null, ptr @_ZN4llvm15TargetInstrInfo17PipelinerLoopInfoD2Ev, ptr @_ZN12_GLOBAL__N_120PPCPipelinerLoopInfoD0Ev, ptr @_ZNK12_GLOBAL__N_120PPCPipelinerLoopInfo25shouldIgnoreForPipeliningEPKN4llvm12MachineInstrE, ptr @_ZN4llvm15TargetInstrInfo17PipelinerLoopInfo17shouldUseScheduleERNS_17SwingSchedulerDAGERNS_10SMScheduleE, ptr @_ZN12_GLOBAL__N_120PPCPipelinerLoopInfo31createTripCountGreaterConditionEiRN4llvm17MachineBasicBlockERNS1_15SmallVectorImplINS1_14MachineOperandEEE, ptr @_ZN4llvm15TargetInstrInfo17PipelinerLoopInfo41createRemainingIterationsGreaterConditionEiRNS_17MachineBasicBlockERNS_15SmallVectorImplINS_14MachineOperandEEERNS_8DenseMapIPNS_12MachineInstrESA_NS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEE, ptr @_ZN12_GLOBAL__N_120PPCPipelinerLoopInfo15adjustTripCountEi, ptr @_ZN12_GLOBAL__N_120PPCPipelinerLoopInfo12setPreheaderEPN4llvm17MachineBasicBlockE, ptr @_ZN12_GLOBAL__N_120PPCPipelinerLoopInfo8disposedEPN4llvm13LiveIntervalsE, ptr @_ZN4llvm15TargetInstrInfo17PipelinerLoopInfo22isMVEExpanderSupportedEv] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_PPCInstrInfo.cpp, ptr null }]
@switch.table._ZNK4llvm12PPCInstrInfo20getCombinerObjectiveEj = private unnamed_addr constant [4 x i8] c"\00\00\01\01", align 4
@switch.table._ZNK4llvm12PPCInstrInfo10insertNoopERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE = private unnamed_addr constant [5 x i64] [i64 -1626, i64 -1625, i64 -1627, i64 -1627, i64 -1627], align 8
@switch.table._ZNK4llvm12PPCInstrInfo11copyPhysRegERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_bbb = private unnamed_addr constant [32 x i8] c"\14\15\16\17\18\19\1A\1B\14\15\16\17\18\19\1A\1B\14\15\16\17\18\19\1A\1B\14\15\16\17\18\19\1A\1B", align 4
@switch.table._ZNK4llvm12PPCInstrInfo18expandVSXMemPseudoERNS_12MachineInstrE = private unnamed_addr constant [58 x i64] [i64 -1470, i64 -1464, i64 -2081, i64 -2074, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 -1468, i64 -1469, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 -2080, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 -1471, i64 -1465, i64 -2082, i64 -2075], align 8
@switch.table._ZNK4llvm12PPCInstrInfo18expandVSXMemPseudoERNS_12MachineInstrE.21 = private unnamed_addr constant [58 x i64] [i64 -1384, i64 -1375, i64 -2026, i64 -2018, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 -1382, i64 -1383, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 -2025, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 -1387, i64 -1379, i64 -2029, i64 -2022], align 8

@_ZN4llvm15PPCGenInstrInfoC1ERKNS_19TargetSubtargetInfoERKNS_18TargetRegisterInfoEjjjj = unnamed_addr alias void (ptr, ptr, ptr, i32, i32, i32, i32), ptr @_ZN4llvm15PPCGenInstrInfoC2ERKNS_19TargetSubtargetInfoERKNS_18TargetRegisterInfoEjjjj
@_ZN4llvm12PPCInstrInfoC1ERKNS_12PPCSubtargetE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm12PPCInstrInfoC2ERKNS_12PPCSubtargetE

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15PPCGenInstrInfoC2ERKNS_19TargetSubtargetInfoERKNS_18TargetRegisterInfoEjjjj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(112) initializes((0, 52), (56, 66), (72, 112)) %0, ptr noundef nonnull align 8 dereferenceable(344) %1, ptr noundef nonnull align 8 dereferenceable(316) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(320) %1, i32 noundef 2) #26
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [6 x i8], ptr @_ZN4llvm25PPCRegClassByHwModeTablesE, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %2, ptr %i.g, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.f, ptr %i.h, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.i, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %3, ptr %i.j, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %4, ptr %i.k, align 4, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %5, ptr %i.l, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %6, ptr %i.m, align 4, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 1480) (i8, ptr @_ZTVN4llvm15PPCGenInstrInfoE, i64 16), ptr %0, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm8PPCDescsE, i64 96032), ptr %i.n, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4llvm19PPCInstrNameIndicesE, ptr %i.o, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN4llvm16PPCInstrNameDataE, ptr %i.p, align 8, !tbaa !50
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZN4llvm27PPCInstrDeprecationFeaturesE, ptr %i.q, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.r, align 8, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 3002, ptr %i.s, align 8, !tbaa !53
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4llvm25PPCRegClassByHwModeTablesE, ptr %i.t, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i16 3, ptr %i.u, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm3PPC36get64BitInstrFromSignedExt32BitInstrEj(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 26, %bb.a ], [ %.1, %bb.c ]   ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm3PPC36get64BitInstrFromSignedExt32BitInstrEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !0

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm3PPC36get64BitInstrFromSignedExt32BitInstrEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm3PPC18getAltVSXFMAOpcodeEj(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 16, %bb.a ], [ %.1, %bb.c ]   ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm3PPC18getAltVSXFMAOpcodeEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !1

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm3PPC18getAltVSXFMAOpcodeEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm3PPC22getNonRecordFormOpcodeEj(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 221, %bb.a ], [ %.1, %bb.c ]  ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm3PPC22getNonRecordFormOpcodeEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !2

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm3PPC22getNonRecordFormOpcodeEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm3PPC19getRecordFormOpcodeEj(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 221, %bb.a ], [ %.1, %bb.c ]  ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm3PPC19getRecordFormOpcodeEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !3

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm3PPC19getRecordFormOpcodeEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #26, !inline_history !4 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !63, !range !64, !noundef !65
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66
  tail call void @free(ptr noundef %i.i) #26
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #26
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIfLb0ENS0_6parserIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIfLb0ENS0_6parserIfEEEE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #26, !inline_history !4 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !63, !range !64, !noundef !65
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66
  tail call void @free(ptr noundef %i.i) #26
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #26
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm12PPCInstrInfo6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm12PPCInstrInfoC2ERKNS_12PPCSubtargetE(ptr noundef nonnull align 8 dereferenceable(1080) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(520296) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 1488) (i8, ptr @_ZTVN4llvm12PPCInstrInfoE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 538
  %i.c = load i8, ptr %i.b, align 2, !tbaa !204, !range !64, !noundef !65
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.d, i32 668, i32 667
  %i.f = load ptr, ptr %1, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(344) %1, i32 noundef 2) #26, !inline_history !706
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [6 x i8], ptr @_ZN4llvm25PPCRegClassByHwModeTablesE, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.a, ptr %i.l, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.k, ptr %i.m, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.n, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 498, ptr %i.o, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 499, ptr %i.p, align 4, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 -1, ptr %i.q, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.e, ptr %i.r, align 4, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm8PPCDescsE, i64 96032), ptr %i.s, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4llvm19PPCInstrNameIndicesE, ptr %i.t, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN4llvm16PPCInstrNameDataE, ptr %i.u, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZN4llvm27PPCInstrDeprecationFeaturesE, ptr %i.v, align 8, !tbaa !51
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.w, align 8, !tbaa !52
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 3002, ptr %i.x, align 8, !tbaa !53
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4llvm25PPCRegClassByHwModeTablesE, ptr %i.y, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i16 3, ptr %i.z, align 8, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 1488) (i8, ptr @_ZTVN4llvm12PPCInstrInfoE, i64 16), ptr %0, align 8, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %1, ptr %i.aa, align 8, !tbaa !707
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !205, !nonnull !65, !align !206
  tail call void @_ZN4llvm15PPCRegisterInfoC1ERKNS_16PPCTargetMachineE(ptr noundef nonnull align 8 dereferenceable(352) %i.a, ptr noundef nonnull align 8 dereferenceable(1776) %i.ac) #26
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.ad, ptr noundef nonnull align 4 dereferenceable(304) @constinit, i64 304, i1 false), !tbaa.struct !708
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 776
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.ae, ptr noundef nonnull align 4 dereferenceable(304) @constinit.17, i64 304, i1 false), !tbaa.struct !708
  ret void
}

declare void @_ZN4llvm15PPCRegisterInfoC1ERKNS_16PPCTargetMachineE(ptr noundef nonnull align 8 dereferenceable(352), ptr noundef nonnull align 8 dereferenceable(1776)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm12PPCInstrInfo28CreateTargetHazardRecognizerEPKNS_19TargetSubtargetInfoEPKNS_11ScheduleDAGE(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.b = load i32, ptr %i.a, align 8, !tbaa !208
  switch i32 %i.b, label %bb.c [
    i32 12, label %bb.b
    i32 11, label %bb.b
    i32 9, label %bb.b
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(520296) %1) #26
  %i.g = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27 ; 2 uses
  tail call void @_ZN4llvm26ScoreboardHazardRecognizerC1EPKNS_18InstrItineraryDataEPKNS_11ScheduleDAGEPKc(ptr noundef nonnull align 8 dereferenceable(96) %i.g, ptr noundef %i.f, ptr noundef %2, ptr noundef nonnull @.str.18) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZNK4llvm12PPCInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj:bb.a

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !207  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !207  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !207  ; 4 uses
  %i.t = load i32, ptr %i.n, align 8              ; 3 uses
  %i.u = and i32 %i.t, 1048320
  %i.v = load i32, ptr %i.q, align 8              ; 3 uses
  %i.w = lshr i32 %i.v, 8
  %i.x = and i32 %i.w, 4095                       ; 2 uses
  %i.y = lshr i32 %i.t, 26
  %i.z = lshr i32 %i.t, 24
  %.lobit.i = and i32 %i.z, 1
  %i.aa = xor i32 %.lobit.i, 1
  %i.ab = and i32 %i.aa, %i.y
  %.not = icmp eq i32 %i.ab, 0                    ; 2 uses
  %i.ac = lshr i32 %i.v, 26
  %i.ad = lshr i32 %i.v, 24
  %.lobit.i67 = and i32 %i.ad, 1
  %i.ae = xor i32 %.lobit.i67, 1
  %i.af = and i32 %i.ae, %i.ac
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = icmp eq i32 %i.m, %i.p                  ; 3 uses
  %spec.select.not = select i1 %i.ah, i1 true, i1 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !207 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !207 ; 3 uses
  %i.am = and i64 %i.aj, 4294967295
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = and i64 %i.al, 4294967295
  %i.ap = icmp eq i64 %i.ao, 31
  %or.cond = and i1 %i.an, %i.ap
  br i1 %or.cond, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %2, label %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, label %bb.f

_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %bb.e
  %spec.select85 = select i1 %i.ah, i32 %i.s, i32 %i.m
  %i.aq = load i32, ptr %i.i, align 8
  %i.ar = and i32 %i.aq, 83886080
  %.not86 = icmp eq i32 %i.ar, 83886080
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.07.0.copyload = load ptr, ptr %i.as, align 8, !tbaa !435
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !340
  %i.av = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr %.sroa.07.0.copyload, i1 noundef zeroext false) #26 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.aw, align 8, !tbaa !437, !alias.scope !952
  %i.ax = select i1 %.not86, i32 83886080, i32 16777216
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %spec.select85, ptr %i.ay, align 4, !tbaa !207, !alias.scope !952
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false), !alias.scope !952
  store i32 %i.ax, ptr %9, align 8, !alias.scope !952
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.ba, align 8, !tbaa !437, !alias.scope !953
  %i.bb = select i1 %spec.select.not, i32 0, i32 67108864
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.s, ptr %i.bc, align 4, !tbaa !207, !alias.scope !953
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false), !alias.scope !953
  store i32 %i.bb, ptr %8, align 8, !alias.scope !953
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.be, align 8, !tbaa !437, !alias.scope !954
  %i.bf = select i1 %.not, i32 0, i32 67108864
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.p, ptr %i.bg, align 4, !tbaa !207, !alias.scope !954
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false), !alias.scope !954
  store i32 %i.bf, ptr %7, align 8, !alias.scope !954
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.bi = add i64 %i.al, 1
  %i.bj = and i64 %i.bi, 31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 1, ptr %6, align 8, !alias.scope !955
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.bk, align 8, !tbaa !437, !alias.scope !955
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !207, !alias.scope !955
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bm = add i64 %i.aj, 31
  %i.bn = and i64 %i.bm, 31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 1, ptr %5, align 8, !alias.scope !956
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.bo, align 8, !tbaa !437, !alias.scope !956
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !207, !alias.scope !956
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.ah, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre89 = shl nuw nsw i32 %i.x, 8
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 %i.s) #26
  %i.bq = load ptr, ptr %i.h, align 8, !tbaa !342 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = shl nuw nsw i32 %i.x, 8                 ; 2 uses
  %i.bt = and i32 %i.br, -1048321
  %i.bu = or disjoint i32 %i.bt, %i.bs
  store i32 %i.bu, ptr %i.bq, align 8
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !342
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %.pre-phi = phi i32 [ %.pre89, %._crit_edge ], [ %i.bs, %bb.g ]
  %i.bv = phi ptr [ %i.i, %._crit_edge ], [ %.pre, %bb.g ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i32 %i.p) #26
  %i.bx = load ptr, ptr %i.h, align 8, !tbaa !342
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.by, i32 %i.s) #26
  %i.bz = load ptr, ptr %i.h, align 8, !tbaa !342
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = and i32 %i.cb, -1048321
  %i.cd = or disjoint i32 %i.cc, %i.u
  store i32 %i.cd, ptr %i.ca, align 8
  %i.ce = load ptr, ptr %i.h, align 8, !tbaa !342
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = and i32 %i.cg, -1048321
  %i.ci = or disjoint i32 %i.ch, %.pre-phi
  store i32 %i.ci, ptr %i.cf, align 8
  %i.cj = load ptr, ptr %i.h, align 8, !tbaa !342
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 64 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = select i1 %.not, i32 0, i32 67108864
  %i.cn = and i32 %i.cl, -67108865
  %i.co = or disjoint i32 %i.cn, %i.cm
  store i32 %i.co, ptr %i.ck, align 8
  %i.cp = load ptr, ptr %i.h, align 8, !tbaa !342
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = select i1 %spec.select.not, i32 0, i32 67108864
  %i.ct = and i32 %i.cr, -67108865
  %i.cu = or disjoint i32 %i.ct, %i.cs
  store i32 %i.cu, ptr %i.cq, align 8
  %i.cv = load ptr, ptr %i.h, align 8, !tbaa !342
  %i.cw = add i64 %i.al, 1
  %i.cx = and i64 %i.cw, 31
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 144
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !207
  %i.cz = load ptr, ptr %i.h, align 8, !tbaa !342
  %i.da = add i64 %i.aj, 31
  %i.db = and i64 %i.da, 31
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 176
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !207
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, %bb.h, %bb.d, %bb.c, %bb.b
  %.1 = phi ptr [ %i.g, %bb.b ], [ null, %bb.c ], [ %1, %bb.h ], [ %i.av, %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescE.exit ], [ null, %bb.d ]
  ret ptr %.1
}

declare noundef ptr @_ZNK4llvm15TargetInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext, i32 noundef, i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm12PPCInstrInfo21findCommutedOpIndicesERKNS_12MachineInstrERjS4_(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !396  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.023.i = phi i32 [ 16, %bb.a ], [ %.1.i, %bb.c ] ; 3 uses
  %.01522.i = phi i32 [ 0, %bb.a ], [ %.116.i, %bb.c ] ; 4 uses
  %i.c = sub nuw i32 %.023.i, %.01522.i
  %i.d = lshr i32 %i.c, 1
  %i.e = add i32 %i.d, %.01522.i                  ; 3 uses
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm3PPC18getAltVSXFMAOpcodeEjE5Table, i64 %i.f
  %i.h = load i32, ptr %i.g, align 8, !tbaa !56   ; 2 uses
  %i.i = icmp eq i32 %i.b, %i.h
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ult i32 %i.b, %i.h                  ; 2 uses
  %i.k = add i32 %i.e, 1
  %.116.i = select i1 %i.j, i32 %.01522.i, i32 %i.k ; 3 uses
  %.1.i = select i1 %i.j, i32 %i.e, i32 %.023.i   ; 3 uses
  %i.l = icmp ult i32 %.116.i, %.1.i
  br i1 %i.l, label %bb.b, label %bb.d, !llvm.loop !1

bb.d:                                             ; preds = %bb.c, %bb.b
  %.015.lcssa.i = phi i32 [ %.01522.i, %bb.b ], [ %.116.i, %bb.c ]
  %.0.lcssa.i = phi i32 [ %.023.i, %bb.b ], [ %.1.i, %bb.c ]
  %i.m = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.m, label %_ZN4llvm3PPC18getAltVSXFMAOpcodeEj.exit.thread, label %_ZN4llvm3PPC18getAltVSXFMAOpcodeEj.exit

_ZN4llvm3PPC18getAltVSXFMAOpcodeEj.exit.thread:   ; preds = %bb.d
  %i.n = tail call noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo21findCommutedOpIndicesERKNS_12MachineInstrERjS4_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #26
  br label %bb.e

_ZN4llvm3PPC18getAltVSXFMAOpcodeEj.exit:          ; preds = %bb.d
  %i.o = tail call noundef zeroext i1 @_ZN4llvm15TargetInstrInfo20fixCommutedOpIndicesERjS1_jj(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 2, i32 noundef 3) #26
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm3PPC18getAltVSXFMAOpcodeEj.exit, %_ZN4llvm3PPC18getAltVSXFMAOpcodeEj.exit.thread
  %.0 = phi i1 [ %i.n, %_ZN4llvm3PPC18getAltVSXFMAOpcodeEj.exit.thread ], [ %i.o, %_ZN4llvm3PPC18getAltVSXFMAOpcodeEj.exit ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo21findCommutedOpIndicesERKNS_12MachineInstrERjS4_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #5

declare noundef zeroext i1 @_ZN4llvm15TargetInstrInfo20fixCommutedOpIndicesERjS1_jj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm12PPCInstrInfo10insertNoopERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !395, !nonnull !65, !align !206
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 552
  %i.d = load i32, ptr %i.c, align 8, !tbaa !208
  %switch.tableidx = add i32 %i.d, -17            ; 2 uses
  %i.e = icmp ult i32 %switch.tableidx, 5
  br i1 %i.e, label %switch.lookup, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

switch.lookup:                                    ; preds = %bb.a
  %i.f = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm12PPCInstrInfo10insertNoopERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE, i64 %i.f
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %switch.lookup, %bb.a
  %.0.neg = phi i64 [ -1625, %bb.a ], [ %switch.load, %switch.lookup ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = getelementptr inbounds [32 x i8], ptr %i.h, i64 %.0.neg
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !386
  %i.l = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr null, i1 noundef zeroext false) #26 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef %i.l) #26
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.n = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %2, ptr %i.p, align 8, !tbaa !560
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.l, align 8
  %i.q = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.r = or disjoint i64 %i.q, %i.n
  store i64 %i.r, ptr %i.l, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.l, ptr %i.s, align 8, !tbaa !560
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.t = ptrtoint ptr %i.l to i64
  %i.u = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.v = or disjoint i64 %i.u, %i.t
  store i64 %i.v, ptr %2, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !386  ; 5 uses
  %.sroa.02.0.copyload = load ptr, ptr %2, align 8, !tbaa !435
  %i.c = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.02.0.copyload, i1 noundef zeroext false) #26 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.c) #26
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !560
  %.0.copyload.i.i.i.i9.i.i.i.i.i = load i64, ptr %i.c, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i, 7
  %i.i = or disjoint i64 %i.h, %i.e
  store i64 %i.i, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.c, ptr %i.j, align 8, !tbaa !560
  %.0.copyload.i.i.i.i10.i.i.i.i.i = load i64, ptr %1, align 8
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, 7
  %i.m = or disjoint i64 %i.l, %i.k
  store i64 %i.m, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !563  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.o) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !564  ; 2 uses
  %.not7.i = icmp eq ptr %i.q, null
  br i1 %.not7.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.q) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !565  ; 2 uses
  %.not8.i = icmp eq ptr %i.s, null
  br i1 %.not8.i, label %_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.s) #26
  br label %_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit

_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit: ; preds = %bb.e, %bb.f
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.c, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZNK4llvm12PPCInstrInfo6getNopEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::MCInst") align 8 initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 16, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !323
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 6, ptr %i.d, align 4, !tbaa !324
  store i32 1625, ptr %0, align 8, !tbaa !964
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm12PPCInstrInfo13analyzeBranchERNS_17MachineBasicBlockERPS1_S4_RNS_15SmallVectorImplINS_14MachineOperandEEEb(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %14 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %15 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %16 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %17 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !395, !nonnull !65, !align !206
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 538
  %i.d = load i8, ptr %i.c, align 2, !tbaa !204, !range !64, !noundef !65
  %i.e = trunc nuw i8 %i.d to i1                  ; 4 uses
  %i.f = tail call ptr @_ZN4llvm17MachineBasicBlock20getLastNonDebugInstrEb(ptr noundef nonnull align 8 dereferenceable(360) %1, i1 noundef zeroext true) #26 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo24isUnpredicatedTerminatorERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.f) #26
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  br i1 %5, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.k = load i32, ptr %i.j, align 4, !tbaa !396
  %i.l = icmp eq i32 %i.k, 554
  br i1 %i.l, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !342
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !207
  %i.q = tail call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock17isLayoutSuccessorEPKS0_(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef %i.p) #26
  br i1 %i.q, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.f) #26 ; 0 uses
  %i.s = tail call ptr @_ZN4llvm17MachineBasicBlock20getLastNonDebugInstrEb(ptr noundef nonnull align 8 dereferenceable(360) %1, i1 noundef zeroext true) #26 ; 3 uses
  %i.t = icmp eq ptr %i.s, %i.g
  br i1 %i.t, label %.critedge, label %bb.g
end_hunk_1
begin_hunk_2_@_ZNK4llvm12PPCInstrInfo20optimizeCompareInstrERNS_12MachineInstrENS_8RegisterES3_llPKNS_19MachineRegisterInfoE:bb.a

bb.z:                                             ; preds = %bb.x
  %i.dx = icmp eq i32 %i.dr, 36
  %or.cond14 = and i1 %i.du, %i.dx
  br i1 %or.cond14, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dy = or disjoint i64 %i.ds, 12
  br label %bb.af

bb.ab:                                            ; preds = %bb.z
  %i.dz = icmp eq i16 %i.dt, 1                    ; 2 uses
  %i.ea = icmp eq i32 %i.dr, 12
  %or.cond16 = and i1 %i.dz, %i.ea
  br i1 %or.cond16, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eb = or disjoint i64 %i.ds, 36
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.ec = icmp eq i32 %i.dr, 4
  %or.cond18 = and i1 %i.dz, %i.ec
  br i1 %or.cond18, label %bb.ae, label %.critedge350

bb.ae:                                            ; preds = %bb.ad
  %i.ed = and i64 %i.dp, 4294967251
  %i.ee = or disjoint i64 %i.ed, 44
  br label %bb.af

bb.af:                                            ; preds = %bb.aa, %bb.ae, %bb.ac, %bb.y
  %.0318 = phi i64 [ %i.dw, %bb.y ], [ %i.dy, %bb.aa ], [ %i.eb, %bb.ac ], [ %i.ee, %bb.ae ]
  store i64 %.0318, ptr %i.do, align 8, !tbaa !207
  %i.ef = load ptr, ptr %i.e, align 8, !tbaa !342
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 80
  store i64 0, ptr %i.eg, align 8, !tbaa !207
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.loopexit533, %bb.t
  %.0305 = phi ptr [ %i.t, %bb.t ], [ %i.t, %bb.af ], [ null, %.loopexit533 ] ; 6 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i384 = load i64, ptr %.sroa.0456.0550, align 8
  %i.eh = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i384, -8
  %i.ei = inttoptr i64 %i.eh to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ei) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i = load i64, ptr %i.ei, align 8
  %i.ej = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i, 4
  %.not.i5.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i5.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i386, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i386: ; preds = %bb.ag
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 44
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !393
  %i.em = and i32 %i.el, 4
  %.not45.i.i.i = icmp eq i32 %i.em, 0
  br i1 %.not45.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i387

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i387: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i386, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i387
  %.sroa.0.06.i.i.i = phi ptr [ %i.eo, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i387 ], [ %i.ei, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i386 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i = load i64, ptr %.sroa.0.06.i.i.i, align 8
  %i.en = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i, -8
  %i.eo = inttoptr i64 %i.en to ptr               ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 44
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !393
  %i.er = and i32 %i.eq, 4
  %.not4.i.i.i = icmp eq i32 %i.er, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i387, !llvm.loop !6

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i387, %bb.ag, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i386
  %.sroa.0.1.i.i.i385 = phi ptr [ %i.ei, %bb.ag ], [ %i.ei, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i386 ], [ %i.eo, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i387 ] ; 2 uses
  %i.es = load ptr, ptr %i.bj, align 8, !tbaa !343
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 56
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !560
  %i.ev = icmp ne ptr %.sroa.0.1.i.i.i385, %.0305
  %i.ew = and i1 %i.bi, %i.ev
  br i1 %i.ew, label %.lr.ph562, label %._crit_edge

.lr.ph562:                                        ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit399
  %.sroa.0456.1561 = phi ptr [ %.sroa.0.1.i.i.i392, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit399 ], [ %.sroa.0.1.i.i.i385, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit ] ; 9 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0456.1561, i64 52
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !396
  %.not336 = icmp eq ptr %.sroa.0456.1561, %1
  br i1 %.not336, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph562
  %i.ez = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0456.1561, i32 20, ptr noundef nonnull %i.q, i1 noundef zeroext false, i1 noundef zeroext true) #26
  %.not518 = icmp eq i32 %i.ez, -1
  br i1 %.not518, label %bb.ai, label %.critedge350

bb.ai:                                            ; preds = %bb.ah
  %i.fa = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0456.1561, i32 20, ptr noundef nonnull %i.q, i1 noundef zeroext false) #26
  %.not519 = icmp eq i32 %i.fa, -1
  br i1 %.not519, label %bb.aj, label %.critedge350

bb.aj:                                            ; preds = %bb.ai, %.lr.ph562
  switch i32 %i.d, label %.critedge [
    i32 700, label %bb.ak
    i32 696, label %bb.ak
    i32 694, label %bb.ak
    i32 691, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj, %bb.aj, %bb.aj
  %i.fb = and i32 %i.ey, -2
  %or.cond26 = icmp eq i32 %i.fb, 2102
  br i1 %or.cond26, label %bb.al, label %.critedge

bb.al:                                            ; preds = %bb.ak
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0456.1561, i64 32
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !342 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 36
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !207 ; 2 uses
  %i.fg = icmp eq i32 %i.ff, %spec.select511
  br i1 %i.fg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 68
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !207
  %i.fj = icmp eq i32 %i.fi, %3
  br i1 %i.fj, label %.thread493, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fk = icmp eq i32 %i.ff, %3
  br i1 %i.fk, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %bb.an
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 68
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !207
  %i.fn = icmp eq i32 %i.fm, %spec.select511
  br i1 %i.fn, label %.thread493, label %.critedge

.critedge:                                        ; preds = %bb.ak, %bb.an, %bb.aj, %bb.ao
  %i.fo = icmp eq ptr %.sroa.0456.1561, %i.eu
  br i1 %i.fo, label %.critedge350, label %.critedge28

.thread493:                                       ; preds = %bb.ao, %bb.am
  %.not520 = icmp eq ptr %.0305, null
  %i.fp = select i1 %.not520, ptr %.sroa.0456.1561, ptr %.0305
  br label %bb.ap

.critedge28:                                      ; preds = %.critedge
  %.0.copyload.i.i.i.i.i.i.i.i.i389 = load i64, ptr %.sroa.0456.1561, align 8
  %i.fq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i389, -8
  %i.fr = inttoptr i64 %i.fq to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fr) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i390 = load i64, ptr %i.fr, align 8
  %i.fs = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i390, 4
  %.not.i5.i.i391 = icmp eq i64 %i.fs, 0
  br i1 %.not.i5.i.i391, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i393, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit399

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i393: ; preds = %.critedge28
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 44
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !393
  %i.fv = and i32 %i.fu, 4
  %.not45.i.i.i394 = icmp eq i32 %i.fv, 0
  br i1 %.not45.i.i.i394, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit399, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i395

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i395: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i393, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i395
  %.sroa.0.06.i.i.i396 = phi ptr [ %i.fx, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i395 ], [ %i.fr, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i393 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i397 = load i64, ptr %.sroa.0.06.i.i.i396, align 8
  %i.fw = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i397, -8
  %i.fx = inttoptr i64 %i.fw to ptr               ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 44
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !393
  %i.ga = and i32 %i.fz, 4
  %.not4.i.i.i398 = icmp eq i32 %i.ga, 0
  br i1 %.not4.i.i.i398, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit399, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i395, !llvm.loop !6

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit399: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i395, %.critedge28, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i393
  %.sroa.0.1.i.i.i392 = phi ptr [ %i.fr, %.critedge28 ], [ %i.fr, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i393 ], [ %i.fx, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i395 ] ; 2 uses
  %.not643 = icmp eq ptr %.sroa.0.1.i.i.i392, %.0305
  br i1 %.not643, label %._crit_edge, label %.lr.ph562, !llvm.loop !1263

._crit_edge:                                      ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit399, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit
  %.not517 = icmp eq ptr %.0305, null
  br i1 %.not517, label %.critedge350, label %bb.ap

bb.ap:                                            ; preds = %.thread493, %._crit_edge
  %i.gb = phi i1 [ true, %.thread493 ], [ false, %._crit_edge ] ; 2 uses
  %spec.select = phi ptr [ %i.fp, %.thread493 ], [ %.0305, %._crit_edge ] ; 14 uses
  %.2312496 = phi ptr [ %.sroa.0456.1561, %.thread493 ], [ null, %._crit_edge ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %spec.select, i64 52
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !396 ; 12 uses
  %i.ge = add i32 %i.gd, -507
  %or.cond36 = icmp ult i32 %i.ge, 4
  br i1 %or.cond36, label %.thread501, label %.preheader

.preheader:                                       ; preds = %bb.ap, %bb.aq
  %.023.i = phi i32 [ %.1.i, %bb.aq ], [ 221, %bb.ap ] ; 3 uses
  %.01522.i = phi i32 [ %.116.i, %bb.aq ], [ 0, %bb.ap ] ; 4 uses
  %i.gf = sub nuw i32 %.023.i, %.01522.i
  %i.gg = lshr i32 %i.gf, 1
  %i.gh = add i32 %i.gg, %.01522.i                ; 3 uses
  %i.gi = zext i32 %i.gh to i64                   ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm3PPC19getRecordFormOpcodeEjE5Table, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !56 ; 2 uses
  %i.gl = icmp eq i32 %i.gd, %i.gk
  br i1 %i.gl, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.preheader
  %i.gm = icmp ult i32 %i.gd, %i.gk               ; 2 uses
  %i.gn = add i32 %i.gh, 1
  %.116.i = select i1 %i.gm, i32 %.01522.i, i32 %i.gn ; 3 uses
  %.1.i = select i1 %i.gm, i32 %i.gh, i32 %.023.i ; 3 uses
  %i.go = icmp ult i32 %.116.i, %.1.i
  br i1 %i.go, label %.preheader, label %bb.ar, !llvm.loop !3

bb.ar:                                            ; preds = %bb.aq, %.preheader
  %.015.lcssa.i = phi i32 [ %.01522.i, %.preheader ], [ %.116.i, %bb.aq ]
  %.0.lcssa.i = phi i32 [ %.023.i, %.preheader ], [ %.1.i, %bb.aq ]
  %i.gp = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.gp, label %_ZN4llvm3PPC19getRecordFormOpcodeEj.exit.thread, label %_ZN4llvm3PPC19getRecordFormOpcodeEj.exit

_ZN4llvm3PPC19getRecordFormOpcodeEj.exit:         ; preds = %bb.ar
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm3PPC19getRecordFormOpcodeEjE5Table, i64 %i.gi
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !56
  br label %.thread501

_ZN4llvm3PPC19getRecordFormOpcodeEj.exit.thread:  ; preds = %bb.ar, %bb.as
  %.023.i400 = phi i32 [ %.1.i403, %bb.as ], [ 221, %bb.ar ] ; 3 uses
  %.01522.i401 = phi i32 [ %.116.i402, %bb.as ], [ 0, %bb.ar ] ; 4 uses
  %i.gt = sub nuw i32 %.023.i400, %.01522.i401
  %i.gu = lshr i32 %i.gt, 1
  %i.gv = add i32 %i.gu, %.01522.i401             ; 3 uses
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm3PPC22getNonRecordFormOpcodeEjE5Table, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !56 ; 2 uses
  %i.gz = icmp eq i32 %i.gd, %i.gy
  br i1 %i.gz, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZN4llvm3PPC19getRecordFormOpcodeEj.exit.thread
  %i.ha = icmp ult i32 %i.gd, %i.gy               ; 2 uses
  %i.hb = add i32 %i.gv, 1
  %.116.i402 = select i1 %i.ha, i32 %.01522.i401, i32 %i.hb ; 3 uses
  %.1.i403 = select i1 %i.ha, i32 %i.gv, i32 %.023.i400 ; 3 uses
  %i.hc = icmp ult i32 %.116.i402, %.1.i403
  br i1 %i.hc, label %_ZN4llvm3PPC19getRecordFormOpcodeEj.exit.thread, label %bb.at, !llvm.loop !2

bb.at:                                            ; preds = %bb.as, %_ZN4llvm3PPC19getRecordFormOpcodeEj.exit.thread
  %.015.lcssa.i404 = phi i32 [ %.01522.i401, %_ZN4llvm3PPC19getRecordFormOpcodeEj.exit.thread ], [ %.116.i402, %bb.as ]
  %.0.lcssa.i405 = phi i32 [ %.023.i400, %_ZN4llvm3PPC19getRecordFormOpcodeEj.exit.thread ], [ %.1.i403, %bb.as ]
  %i.hd = icmp eq i32 %.015.lcssa.i404, %.0.lcssa.i405
  %i.he = icmp eq i32 %i.gd, -1
  %or.cond527 = or i1 %i.he, %i.hd
  br i1 %or.cond527, label %.critedge350, label %.thread501

.thread501:                                       ; preds = %bb.at, %_ZN4llvm3PPC19getRecordFormOpcodeEj.exit, %bb.ap
  %.0314503 = phi i32 [ %i.gd, %bb.at ], [ %i.gd, %bb.ap ], [ %i.gs, %_ZN4llvm3PPC19getRecordFormOpcodeEj.exit ] ; 8 uses
  br i1 %.0307.shrunk483, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %.thread501
  %i.hf = icmp eq i32 %.0314503, 2145
  %i.hg = icmp eq i32 %.0314503, 2106
  %or.cond38 = or i1 %i.hf, %i.hg
  %or.cond40 = and i1 %i.gb, %or.cond38
  br i1 %or.cond40, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hh = getelementptr inbounds nuw i8, ptr %.2312496, i64 44
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !393
  %i.hj = and i32 %i.hi, 4096
  %.not521 = icmp eq i32 %i.hj, 0
  br i1 %.not521, label %.critedge350, label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %.thread501
  %i.hk = icmp eq i64 %5, 0
  %or.cond42 = and i1 %i.hk, %i.gb
  br i1 %or.cond42, label %bb.ax, label %.critedge353

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not516, label %.critedge360, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hl = getelementptr inbounds nuw i8, ptr %.2312496, i64 32
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !342 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 36
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !207
  %i.hp = icmp eq i32 %i.ho, %3
  br i1 %i.hp, label %bb.az, label %.critedge360

bb.az:                                            ; preds = %bb.ay
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 68
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !207
  %.not522 = icmp eq i32 %i.hr, %spec.select511
  br i1 %.not522, label %.critedge353, label %.critedge360

.critedge360:                                     ; preds = %bb.ay, %bb.ax, %bb.az
  %i.hs = call ptr @_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %6, i32 %i.h) ; 2 uses
  %.not523565 = icmp eq ptr %i.hs, null
  br i1 %.not523565, label %.critedge353, label %.lr.ph567

.lr.ph567:                                        ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i417, %.critedge360
  %.sroa.0437.0566 = phi ptr [ %i.hs, %.critedge360 ], [ %storemerge.i.i414, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i417 ] ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0437.0566, i64 8 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !437 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 52
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !396
  switch i32 %i.hw, label %.critedge350 [
    i32 557, label %bb.ba
    i32 1336, label %bb.bd
    i32 1337, label %bb.bd
  ]

bb.ba:                                            ; preds = %.lr.ph567
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !342 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !207
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = call noundef i32 @_ZN4llvm3PPC19getSwappedPredicateENS0_9PredicateE(i32 noundef %i.ib) #26 ; 2 uses
  %i.id = load i32, ptr %i.cz, align 8, !tbaa !323 ; 2 uses
  %i.ie = load i32, ptr %i.da, align 4, !tbaa !324
  %.not.i = icmp ult i32 %i.id, %i.ie
  br i1 %.not.i, label %bb.bc, label %bb.bb, !prof !424

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_14MachineOperandENS_3PPC9PredicateEELb1EE15growAndPushBackES6_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr nonnull %i.hy, i32 %i.ic)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_14MachineOperandENS_3PPC9PredicateEELb1EE9push_backES6_.exit

bb.bc:                                            ; preds = %bb.ba
  %i.if = zext i32 %i.id to i64
  %i.ig = load ptr, ptr %8, align 8, !tbaa !68
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %i.ig, i64 %i.if ; 2 uses
  store ptr %i.hy, ptr %i.ih, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store i32 %i.ic, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.ii = load i32, ptr %i.cz, align 8, !tbaa !323
  %i.ij = add i32 %i.ii, 1
  store i32 %i.ij, ptr %i.cz, align 8, !tbaa !323
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_14MachineOperandENS_3PPC9PredicateEELb1EE9push_backES6_.exit

bb.bd:                                            ; preds = %.lr.ph567, %.lr.ph567
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !342
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 96 ; 3 uses
  %i.in = load i32, ptr %i.im, align 8
  %i.io = lshr i32 %i.in, 8
  %i.ip = and i32 %i.io, 4095                     ; 2 uses
  switch i32 %i.ip, label %bb.bg [
    i32 17, label %bb.be
    i32 16, label %bb.bf
  ]

bb.be:                                            ; preds = %bb.bd
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bd, %bb.bf, %bb.be
  %.0481 = phi i32 [ %i.ip, %bb.bd ], [ 16, %bb.be ], [ 17, %bb.bf ] ; 2 uses
  %i.iq = load i32, ptr %i.dc, align 8, !tbaa !323 ; 2 uses
  %i.ir = load i32, ptr %i.dd, align 4, !tbaa !324
  %.not.i409 = icmp ult i32 %i.iq, %i.ir
  br i1 %.not.i409, label %bb.bi, label %bb.bh, !prof !424

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_14MachineOperandEjELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull %i.im, i32 %.0481)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_14MachineOperandENS_3PPC9PredicateEELb1EE9push_backES6_.exit

bb.bi:                                            ; preds = %bb.bg
  %i.is = zext i32 %i.iq to i64
  %i.it = load ptr, ptr %9, align 8, !tbaa !68
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr %i.it, i64 %i.is ; 2 uses
  store ptr %i.im, ptr %i.iu, align 1
  %.sroa.32.0..sroa_idx.i410 = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store i32 %.0481, ptr %.sroa.32.0..sroa_idx.i410, align 1
  %i.iv = load i32, ptr %i.dc, align 8, !tbaa !323
  %i.iw = add i32 %i.iv, 1
  store i32 %i.iw, ptr %i.dc, align 8, !tbaa !323
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_14MachineOperandENS_3PPC9PredicateEELb1EE9push_backES6_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_14MachineOperandENS_3PPC9PredicateEELb1EE9push_backES6_.exit: ; preds = %bb.bi, %bb.bh, %bb.bc, %bb.bb
  %i.ix = load ptr, ptr %i.ht, align 8, !tbaa !437
  br label %bb.bj

bb.bj:                                            ; preds = %.backedge, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_14MachineOperandENS_3PPC9PredicateEELb1EE9push_backES6_.exit
  %.pn.i.i412 = phi ptr [ %.sroa.0437.0566, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_14MachineOperandENS_3PPC9PredicateEELb1EE9push_backES6_.exit ], [ %storemerge.i.i414, %.backedge ]
  %storemerge.in.i.i413 = getelementptr inbounds nuw i8, ptr %.pn.i.i412, i64 24
  %storemerge.i.i414 = load ptr, ptr %storemerge.in.i.i413, align 8, !tbaa !207 ; 5 uses
  %.not.i.i415 = icmp eq ptr %storemerge.i.i414, null
  br i1 %.not.i.i415, label %.critedge353, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.iy = load i32, ptr %storemerge.i.i414, align 8
  %i.iz = and i32 %i.iy, 16777216
  %.not1.i.i416 = icmp eq i32 %i.iz, 0
  br i1 %.not1.i.i416, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i417, label %.backedge

.backedge:                                        ; preds = %bb.bk, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i417
  br label %bb.bj, !llvm.loop !10

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i417: ; preds = %bb.bk
  %i.ja = getelementptr inbounds nuw i8, ptr %storemerge.i.i414, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !437
  %i.jc = icmp eq ptr %i.jb, %i.ix
  br i1 %i.jc, label %.backedge, label %.lr.ph567, !llvm.loop !1264

.critedge353:                                     ; preds = %bb.bj, %.critedge360, %bb.aw, %bb.az
  %i.jd = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.je = getelementptr inbounds nuw i8, ptr %spec.select, i64 24 ; 3 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !343
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %spec.select, ptr %7, align 8
  call void @_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 1)
  %.sroa.0.0.copyload.i = load ptr, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.jg = getelementptr inbounds nuw i8, ptr %spec.select, i64 72
  %.sroa.0105.0.copyload = load ptr, ptr %i.jg, align 8, !tbaa !435
  store ptr %.sroa.0105.0.copyload, ptr %11, align 8, !tbaa !435
  %i.jh = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jh, i8 0, i64 24, i1 false)
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !48
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 -640
  %i.jl = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.jf, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.jk, i32 %i.h) ; 2 uses
  %i.jm = extractvalue { ptr, ptr } %i.jl, 0
  store ptr %i.jm, ptr %10, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.jo = extractvalue { ptr, ptr } %i.jl, 1
  store ptr %i.jo, ptr %i.jn, align 8
  %.not524 = icmp eq i32 %i.gd, %.0314503         ; 2 uses
  %i.jp = select i1 %.not524, i16 0, i16 8
  %i.jq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4llvm19MachineInstrBuilder6addRegENS_8RegisterENS_8RegStateEj(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 20, i16 noundef zeroext %i.jp, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZN4llvm12MachineInstr18clearRegisterDeadsENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(80) %spec.select, i32 20) #26
  br i1 %.not524, label %.loopexit, label %bb.bl

bb.bl:                                            ; preds = %.critedge353
  %i.jr = icmp eq i32 %i.gd, 1902                 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !207  ; 3 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 16777216
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq ptr %i.m, %.0.i
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !207
  %i.s = load i32, ptr %i.r, align 8
  %i.t = and i32 %i.s, 16777216
  %i.u = icmp ne i32 %i.t, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.u, %bb.d ], [ true, %bb.c ]
  ret i1 %.1
}

declare noundef i32 @_ZN4llvm3PPC19getSwappedPredicateENS0_9PredicateE(i32 noundef) local_unnamed_addr #5

declare void @_ZN4llvm12MachineInstr18clearRegisterDeadsENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(80), i32) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo9use_emptyENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = and i32 %1, 2147483647
  %i.d = zext nneg i32 %i.c to i64
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.i = zext nneg i32 %1 to i64
  %i.j = load ptr, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %.0.in.i.i = select i1 %i.a, ptr %i.g, ptr %i.k
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !603 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %_ZNK4llvm19MachineRegisterInfo9use_beginENS_8RegisterE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %.0.i.i, align 8
  %i.m = and i32 %i.l, 16777216
  %.not4.i.i = icmp eq i32 %i.m, 0
  br i1 %.not4.i.i, label %_ZNK4llvm19MachineRegisterInfo9use_beginENS_8RegisterE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b, %bb.c
  %.pn.i.i.i = phi ptr [ %storemerge.i.i.i, %bb.c ], [ %.0.i.i, %bb.b ]
  %storemerge.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 24
  %storemerge.i.i.i = load ptr, ptr %storemerge.in.i.i.i, align 8, !tbaa !207 ; 3 uses
  %.not.i.i.i = icmp eq ptr %storemerge.i.i.i, null ; 3 uses
  br i1 %.not.i.i.i, label %_ZNK4llvm19MachineRegisterInfo9use_beginENS_8RegisterE.exit, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i
  %i.n = load i32, ptr %storemerge.i.i.i, align 8
  %i.o = and i32 %i.n, 16777216
  %.not1.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not1.i.i.i, label %_ZNK4llvm19MachineRegisterInfo9use_beginENS_8RegisterE.exit, label %.preheader.i.i, !llvm.loop !1285

_ZNK4llvm19MachineRegisterInfo9use_beginENS_8RegisterE.exit: ; preds = %.preheader.i.i, %bb.c, %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %.not.i.i.i, %bb.c ], [ %.not.i.i.i, %.preheader.i.i ]
  ret i1 %.sroa.0.0.i
}

declare void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm12PPCInstrInfo17optimizeCmpPostRAERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %3 = alloca %"class.llvm::Register", align 4    ; 6 uses
  %4 = alloca %"class.llvm::Register", align 4    ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !343
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !386
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !387
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !660
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 320
  %i.n = load i64, ptr %i.m, align 8, !tbaa !661
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 0, ptr %3, align 4, !tbaa !662
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i32 0, ptr %4, align 4, !tbaa !662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.p = load ptr, ptr %0, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1032
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #26
  br i1 %i.s, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.b, align 8, !tbaa !605
  %i.u = icmp eq i64 %i.t, 0
  %i.v = load i64, ptr %i.a, align 8
  %i.w = icmp ne i64 %i.v, 0
  %or.cond = select i1 %i.u, i1 %i.w, i1 false
  %i.x = load i32, ptr %4, align 4
  %.not = icmp eq i32 %i.x, 0
  %or.cond44 = select i1 %or.cond, i1 %.not, i1 false
  br i1 %or.cond44, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.z = load i32, ptr %i.y, align 4, !tbaa !396  ; 2 uses
  switch i32 %i.z, label %bb.e [
    i32 697, label %bb.r
    i32 695, label %bb.r
  ]

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !395, !nonnull !65, !align !206
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 538
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !204, !range !64, !noundef !65
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = icmp eq i32 %i.z, 701
  %or.cond5 = and i1 %i.af, %i.ae
  br i1 %or.cond5, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = call noundef zeroext i1 @_ZNK4llvm12MachineInstr14hasImplicitDefEv(ptr noundef nonnull align 8 dereferenceable(80) %1)
  br i1 %i.ag, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.ah = load i32, ptr %3, align 4, !tbaa !662
  %i.ai = call noundef ptr @_ZNK4llvm12PPCInstrInfo14getDefMIPostRAEjRNS_12MachineInstrERb(ptr noundef nonnull align 8 dereferenceable(1080) %0, i32 noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.c) ; 9 uses
  %.not38 = icmp eq ptr %i.ai, null
  br i1 %.not38, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.012.0.copyload = load i32, ptr %3, align 4, !tbaa !56
  %i.aj = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, i32 %.sroa.012.0.copyload, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #26
  %.not45 = icmp eq i32 %i.aj, -1
  br i1 %.not45, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false), !tbaa.struct !604
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !207
  %.not46 = icmp eq i32 %i.an, 20
  br i1 %.not46, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i8 0, ptr %i.d, align 1, !tbaa !663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.ao = call noundef zeroext i1 @_ZNK4llvm12PPCInstrInfo25isRegElgibleForForwardingERKNS_14MachineOperandERKNS_12MachineInstrES6_bRbS7_(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  br i1 %i.ao, label %bb.k, label %_ZN4llvm3PPC19getRecordFormOpcodeEj.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ap = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, i32 20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #26
  %i.aq = icmp ne i32 %i.ap, -1
  %i.ar = load i8, ptr %i.d, align 1, !range !64
  %i.as = trunc nuw i8 %i.ar to i1
  %or.cond7 = select i1 %i.aq, i1 true, i1 %i.as
  br i1 %or.cond7, label %_ZN4llvm3PPC19getRecordFormOpcodeEj.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 52
  %i.au = load i32, ptr %i.at, align 4, !tbaa !396 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.023.i = phi i32 [ 221, %bb.l ], [ %.1.i, %bb.n ] ; 3 uses
  %.01522.i = phi i32 [ 0, %bb.l ], [ %.116.i, %bb.n ] ; 4 uses
  %i.av = sub nuw i32 %.023.i, %.01522.i
  %i.aw = lshr i32 %i.av, 1
  %i.ax = add i32 %i.aw, %.01522.i                ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm3PPC19getRecordFormOpcodeEjE5Table, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !56 ; 2 uses
  %i.bb = icmp eq i32 %i.au, %i.ba
  br i1 %i.bb, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = icmp ult i32 %i.au, %i.ba               ; 2 uses
  %i.bd = add i32 %i.ax, 1
  %.116.i = select i1 %i.bc, i32 %.01522.i, i32 %i.bd ; 3 uses
  %.1.i = select i1 %i.bc, i32 %i.ax, i32 %.023.i ; 3 uses
  %i.be = icmp ult i32 %.116.i, %.1.i
  br i1 %i.be, label %bb.m, label %bb.o, !llvm.loop !3

bb.o:                                             ; preds = %bb.n, %bb.m
  %.015.lcssa.i = phi i32 [ %.01522.i, %bb.m ], [ %.116.i, %bb.n ]
  %.0.lcssa.i = phi i32 [ %.023.i, %bb.m ], [ %.1.i, %bb.n ]
  %i.bf = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.bf, label %_ZN4llvm3PPC19getRecordFormOpcodeEj.exit.thread, label %_ZN4llvm3PPC19getRecordFormOpcodeEj.exit

_ZN4llvm3PPC19getRecordFormOpcodeEj.exit:         ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm3PPC19getRecordFormOpcodeEjE5Table, i64 %i.ay
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !56
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !48
  %i.bl = zext i32 %i.bi to i64
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds [32 x i8], ptr %i.bk, i64 %i.bm
  call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.bn) #26
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !343
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.bs, align 8, !tbaa !437, !alias.scope !1288
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 20, ptr %i.bt, align 4, !tbaa !207, !alias.scope !1288
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false), !alias.scope !1288
  store i32 50331648, ptr %2, align 8, !alias.scope !1288
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(1065) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN4llvm12MachineInstr18clearRegisterDeadsENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, i32 20) #26
  br label %_ZN4llvm3PPC19getRecordFormOpcodeEj.exit.thread

_ZN4llvm3PPC19getRecordFormOpcodeEj.exit.thread:  ; preds = %bb.o, %_ZN4llvm3PPC19getRecordFormOpcodeEj.exit, %bb.j, %bb.k
  %.1 = phi i1 [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.o ], [ true, %_ZN4llvm3PPC19getRecordFormOpcodeEj.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %_ZN4llvm3PPC19getRecordFormOpcodeEj.exit.thread
  %.2 = phi i1 [ %.1, %_ZN4llvm3PPC19getRecordFormOpcodeEj.exit.thread ], [ false, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.g, %bb.h, %bb.p
  %.3 = phi i1 [ %.2, %bb.p ], [ false, %bb.h ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.d, %bb.d, %bb.e, %bb.f, %bb.c, %bb.b
  %.5 = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.f ], [ %.3, %bb.q ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r
  %.6 = phi i1 [ %.5, %bb.r ], [ false, %bb.a ]
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm12MachineInstr14hasImplicitDefEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !342  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i24, ptr %i.c, align 8
  %i.e = zext i24 %i.d to i64                     ; 2 uses
  %i.f = tail call noundef i32 @_ZNK4llvm12MachineInstr22getNumExplicitOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #26
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.e
  %.not15.not = icmp samesign eq i64 %i.g, %i.e
  br i1 %.not15.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.g
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.01016 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %i.j = load i32, ptr %.01016, align 8
  %i.k = and i32 %i.j, 16777216
  %.not14.not = icmp ne i32 %i.k, 0               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01016, i64 32 ; 2 uses
  %.not.not = icmp eq ptr %i.l, %i.h
  %or.cond = select i1 %.not14.not, i1 true, i1 %.not.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ %.not14.not, %.lr.ph ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm12PPCInstrInfo14getDefMIPostRAEjRNS_12MachineInstrERb(ptr noundef nonnull align 8 dereferenceable(1080) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !343
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.d = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8
  %i.e = inttoptr i64 %i.d to ptr                 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !393
  %i.i = and i32 %i.h, 4
  %.not45.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not45.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi ptr [ %i.k, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %i.e, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i.i, align 8
  %i.j = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i, -8
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !393
  %i.n = and i32 %i.m, 4
  %.not4.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !6

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %bb.a, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %i.e, %bb.a ], [ %i.e, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.k, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ] ; 2 uses
  store i8 0, ptr %3, align 1, !tbaa !663
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.not17 = icmp eq ptr %.sroa.0.1.i.i.i.i.i, %i.c
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit
  %.sroa.09.018 = phi ptr [ %.sroa.0.1.i.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit ], [ %.sroa.0.1.i.i.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit ] ; 4 uses
  %i.p = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.09.018, i32 %1, ptr noundef nonnull %i.o, i1 noundef zeroext false, i1 noundef zeroext true) #26
  %.not14 = icmp eq i32 %i.p, -1
  br i1 %.not14, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.q = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.09.018, i32 %1, ptr noundef nonnull %i.o, i1 noundef zeroext false) #26
  %.not15 = icmp eq i32 %i.q, -1
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 1, !tbaa !663
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.09.018, align 8
  %i.r = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.s = inttoptr i64 %i.r to ptr                 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i7 = load i64, ptr %i.s, align 8
  %i.t = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i7, 4
  %.not.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !393
  %i.w = and i32 %i.v, 4
  %.not45.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not45.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.y, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %i.s, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i, -8
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !393
  %i.ab = and i32 %i.aa, 4
  %.not4.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !6

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %bb.d, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.s, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.y, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.1.i.i.i.i, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1289

._crit_edge:                                      ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit, %.lr.ph, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit
  %.0 = phi ptr [ null, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit ], [ %.sroa.09.018, %.lr.ph ], [ null, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm12PPCInstrInfo25isRegElgibleForForwardingERKNS_14MachineOperandERKNS_12MachineInstrES6_bRbS7_(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %3, i1 noundef zeroext %4, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %5, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !343  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !386
end_hunk_3
begin_hunk_4_@_ZNK4llvm12PPCInstrInfo25isImmElgibleForForwardingERKNS_14MachineOperandERKNS_12MachineInstrERKNS_12ImmInstrInfoERll:bb.a

_ZNK4llvm5APInt6isIntNEj.exit:                    ; preds = %bb.g
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 false)
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = sub nuw nsw i32 64, %i.ak
  %.not36 = icmp samesign ugt i32 %i.al, %i.af
  br i1 %.not36, label %_ZN4llvm5APIntD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm5APInt12isSignedIntNEj.exit, %_ZNK4llvm5APInt6isIntNEj.exit
  %i.am = shl i64 %i.aa, 48
  %i.an = ashr exact i64 %i.am, 48                ; 2 uses
  store i64 %i.an, ptr %4, align 8, !tbaa !605
  %i.ao = load i64, ptr %3, align 8               ; 2 uses
  %.lhs.trunc = trunc i64 %i.aa to i16
  %i.ap = trunc i64 %i.ao to i16
  %i.aq = lshr i16 %i.ap, 1
  %.rhs.trunc = and i16 %i.aq, 31
  %i.ar = srem i16 %.lhs.trunc, %.rhs.trunc
  %.not30 = icmp eq i16 %i.ar, 0
  br i1 %.not30, label %bb.i, label %_ZN4llvm5APIntD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.as = lshr i64 %i.ao, 40
  %i.at = and i64 %i.as, 31                       ; 2 uses
  %.not31 = icmp eq i64 %i.at, 0
  br i1 %.not31, label %_ZN4llvm5APIntD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = trunc nuw nsw i64 %i.at to i32
  %notmask = shl nsw i32 -1, %i.au
  %i.av = xor i32 %notmask, -1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = and i64 %i.an, %i.aw
  store i64 %i.ax, ptr %4, align 8, !tbaa !605
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.i, %bb.j, %bb.h, %_ZNK4llvm5APInt6isIntNEj.exit, %_ZNK4llvm5APInt12isSignedIntNEj.exit, %bb.d, %bb.f, %bb.b, %bb.e
  %.2 = phi i1 [ false, %bb.b ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.f ], [ false, %_ZNK4llvm5APInt6isIntNEj.exit ], [ false, %bb.h ], [ false, %_ZNK4llvm5APInt12isSignedIntNEj.exit ], [ true, %bb.j ], [ true, %bb.i ]
  ret i1 %.2
}

declare noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm11GlobalValue13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare i8 @_ZNK4llvm5Value19getPointerAlignmentERKNS_10DataLayoutE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(912)) local_unnamed_addr #5

declare void @_ZN4llvm22recomputeLivenessFlagsERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #5

declare void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL14swapMIOperandsRN4llvm12MachineInstrEjj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, i32 noundef range(i32 0, 8) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %5 = alloca %"class.llvm::SmallVector.635", align 8 ; 10 uses
  %.sroa.speculated44 = tail call i32 @llvm.umax.i32(i32 %1, i32 %2) ; 4 uses
  %.sroa.speculated41 = tail call i32 @llvm.umin.i32(i32 %2, i32 %1) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !342  ; 2 uses
  %i.c = zext nneg i32 %.sroa.speculated41 to i64
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !tbaa.struct !604
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.e = zext i32 %.sroa.speculated44 to i64
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !604
  tail call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.sroa.speculated44) #26
  tail call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.sroa.speculated41) #26
  %i.g = sub nuw i32 %.sroa.speculated44, %.sroa.speculated41
  %i.h = icmp eq i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i24, ptr %i.i, align 8
  %i.k = zext i24 %i.j to i32                     ; 3 uses
  %i.l = icmp eq i32 %.sroa.speculated41, %i.k
  %or.cond = select i1 %i.h, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.b, label %._crit_edge67

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #26
  call void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #26
  br label %bb.i

._crit_edge67:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store i32 0, ptr %i.n, align 8, !tbaa !323
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 2, ptr %i.o, align 4, !tbaa !324
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = add nuw nsw i32 %i.k, 2                  ; 2 uses
  %.02960 = add nsw i32 %i.k, -1                  ; 2 uses
  %.not61 = icmp ult i32 %.02960, %.sroa.speculated41
  br i1 %.not61, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit, %._crit_edge67
  call void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #26
  %i.r = load i24, ptr %i.p, align 8
  %i.s = zext i24 %i.r to i32                     ; 2 uses
  %i.t = icmp samesign ugt i32 %i.q, %i.s
  br i1 %i.t, label %.lr.ph65, label %._crit_edge66

.lr.ph:                                           ; preds = %._crit_edge67, %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit
  %.02962 = phi i32 [ %.029, %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit ], [ %.02960, %._crit_edge67 ] ; 3 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !342
  %i.v = zext i32 %.02962 to i64
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.n, align 8, !tbaa !323  ; 2 uses
  %i.y = load i32, ptr %i.o, align 4, !tbaa !324
  %.not.i = icmp ult i32 %i.x, %i.y
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !424

bb.c:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.z = zext i32 %i.x to i64
  %i.aa = load ptr, ptr %5, align 8, !tbaa !68
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  %i.ac = load i32, ptr %i.n, align 8, !tbaa !323
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.n, align 8, !tbaa !323
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit: ; preds = %bb.c, %bb.d
  call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.02962) #26
  %.029 = add i32 %.02962, -1                     ; 2 uses
  %.not = icmp ult i32 %.029, %.sroa.speculated41
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1481

._crit_edge66:                                    ; preds = %bb.h, %._crit_edge
  %i.ae = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.m
  br i1 %i.af, label %_ZN4llvm11SmallVectorINS_14MachineOperandELj2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge66
  call void @free(ptr noundef %i.ae) #26
  br label %_ZN4llvm11SmallVectorINS_14MachineOperandELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_14MachineOperandELj2EED2Ev.exit: ; preds = %._crit_edge66, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.i

.lr.ph65:                                         ; preds = %._crit_edge, %bb.h
  %.063 = phi i32 [ %i.ao, %bb.h ], [ %i.s, %._crit_edge ] ; 2 uses
  %i.ag = icmp eq i32 %.063, %.sroa.speculated44
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph65
  call void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #26
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph65
  %i.ah = load ptr, ptr %5, align 8, !tbaa !68
  %i.ai = load i32, ptr %i.n, align 8, !tbaa !323
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -32
  call void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.al) #26
  %i.am = load i32, ptr %i.n, align 8, !tbaa !323
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr %i.n, align 8, !tbaa !323
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ao = add nuw nsw i32 %.063, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ao, %i.q
  br i1 %exitcond.not, label %._crit_edge66, label %.lr.ph65, !llvm.loop !1482

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorINS_14MachineOperandELj2EED2Ev.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

declare void @_ZN4llvm19MachineRegisterInfo11setRegClassENS_8RegisterEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(520), i32, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm12PPCInstrInfo19getRecordFormOpcodeEj(i32 noundef %0) local_unnamed_addr #1 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.023.i = phi i32 [ 221, %bb.a ], [ %.1.i, %bb.c ] ; 3 uses
  %.01522.i = phi i32 [ 0, %bb.a ], [ %.116.i, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023.i, %.01522.i
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522.i                  ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm3PPC19getRecordFormOpcodeEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add i32 %i.c, 1
  %.116.i = select i1 %i.h, i32 %.01522.i, i32 %i.i ; 3 uses
  %.1.i = select i1 %i.h, i32 %i.c, i32 %.023.i   ; 3 uses
  %i.j = icmp ult i32 %.116.i, %.1.i
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !3

bb.d:                                             ; preds = %bb.c, %bb.b
  %.015.lcssa.i = phi i32 [ %.01522.i, %bb.b ], [ %.116.i, %bb.c ]
  %.0.lcssa.i = phi i32 [ %.023.i, %bb.b ], [ %.1.i, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.k, label %_ZN4llvm3PPC19getRecordFormOpcodeEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm3PPC19getRecordFormOpcodeEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !56
  br label %_ZN4llvm3PPC19getRecordFormOpcodeEj.exit

_ZN4llvm3PPC19getRecordFormOpcodeEj.exit:         ; preds = %bb.d, %bb.e
  %.019.i = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm12PPCInstrInfo11isTOCSaveMIERKNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1080) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !342  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 255
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 255
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !395, !nonnull !65, !align !206 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(520296) %i.l) #26
  %i.q = tail call noundef i64 @_ZNK4llvm16PPCFrameLowering16getTOCSaveOffsetEv(ptr noundef nonnull align 8 dereferenceable(104) %i.p) #26
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !342  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !207
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 68
  %i.v = load i32, ptr %i.u, align 4, !tbaa !207
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !395, !nonnull !65, !align !206
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 538
  %i.y = load i8, ptr %i.x, align 2, !tbaa !204, !range !64, !noundef !65
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = select i1 %i.z, i32 532, i32 252
  %i.ab = icmp eq i32 %i.v, %i.aa
  %i.ac = trunc i64 %i.t to i32
  %i.ad = trunc i64 %i.q to i32
  %i.ae = icmp eq i32 %i.ac, %i.ad
  %or.cond = and i1 %i.ae, %i.ab
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.1 = phi i1 [ %or.cond, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.1
}

declare noundef i64 @_ZNK4llvm16PPCFrameLowering16getTOCSaveOffsetEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm12PPCInstrInfo30promoteInstr32To64ForElimEXTSWERKNS_8RegisterEPNS_19MachineRegisterInfoEjPNS_13LiveVariablesE(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::Register", align 4   ; 4 uses
  %12 = alloca %"class.llvm::Register", align 4   ; 4 uses
  %13 = alloca %"class.llvm::Register", align 4   ; 4 uses
  %14 = alloca %"class.llvm::Register", align 4   ; 4 uses
  %15 = alloca %"class.llvm::Register", align 4   ; 4 uses
  %16 = alloca %"class.llvm::DenseMap.23", align 8 ; 15 uses
  %17 = alloca [7 x %"struct.llvm::detail::DenseMapPair"], align 16 ; 18 uses
  %18 = alloca %"class.llvm::SmallVector.638", align 8 ; 11 uses
  %19 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %20 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %21 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !662    ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.al

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %2, i32 %i.a) #26 ; 17 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.al, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !396  ; 7 uses
  switch i32 %i.e, label %.loopexit [
    i32 1632, label %bb.d
    i32 1336, label %bb.d
    i32 1633, label %bb.d
    i32 0, label %bb.d
    i32 20, label %bb.h
    i32 1639, label %bb.j
    i32 2615, label %bb.j
    i32 1641, label %bb.j
    i32 2617, label %bb.j
    i32 1640, label %bb.j
    i32 2616, label %bb.j
    i32 1642, label %bb.j
    i32 2618, label %bb.j
    i32 500, label %bb.k
    i32 501, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %.not144 = icmp eq i32 %3, 0
  br i1 %.not144, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.f, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.h = load i24, ptr %i.g, align 8              ; 2 uses
  %i.i = zext i24 %i.h to i64
  %i.j = icmp ugt i24 %i.h, 1
  br i1 %i.j, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.0267 = phi i64 [ %i.i, %bb.f ], [ 3, %bb.e ]
  %.0132266 = phi i64 [ 2, %bb.f ], [ 1, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !342
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !207
  store i32 %i.o, ptr %11, align 4
  call void @_ZNK4llvm12PPCInstrInfo30promoteInstr32To64ForElimEXTSWERKNS_8RegisterEPNS_19MachineRegisterInfoEjPNS_13LiveVariablesE(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull %2, i32 noundef 1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %.0132266 ; 2 uses
  %i.p = icmp samesign ult i64 %indvars.iv.next, %.0267
  br i1 %i.p, label %bb.g, label %.loopexit, !llvm.loop !1483

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !342
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %i.t = load i32, ptr %i.s, align 4, !tbaa !207  ; 2 uses
  store i32 %i.t, ptr %12, align 4
  %i.u = tail call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %i.c) #26
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !322, !nonnull !65, !align !206
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  %i.y = load i32, ptr %i.x, align 4, !tbaa !665
  %.not215 = icmp ne i32 %i.y, 19
  %.not216 = icmp eq i32 %i.t, 534
  %or.cond273 = select i1 %.not215, i1 %.not216, i1 false
  br i1 %or.cond273, label %bb.i, label %.sink.split

.sink.split:                                      ; preds = %bb.h
  call void @_ZNK4llvm12PPCInstrInfo30promoteInstr32To64ForElimEXTSWERKNS_8RegisterEPNS_19MachineRegisterInfoEjPNS_13LiveVariablesE(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 4 dereferenceable(4) %12, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.al

bb.j:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !342
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !207
  store i32 %i.ac, ptr %13, align 4
  call void @_ZNK4llvm12PPCInstrInfo30promoteInstr32To64ForElimEXTSWERKNS_8RegisterEPNS_19MachineRegisterInfoEjPNS_13LiveVariablesE(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 4 dereferenceable(4) %13, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %.loopexit

bb.k:                                             ; preds = %bb.c, %bb.c
  %.not143 = icmp eq i32 %3, 0
  br i1 %.not143, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !342
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !207
  store i32 %i.ag, ptr %14, align 4
  call void @_ZNK4llvm12PPCInstrInfo30promoteInstr32To64ForElimEXTSWERKNS_8RegisterEPNS_19MachineRegisterInfoEjPNS_13LiveVariablesE(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 4 dereferenceable(4) %14, ptr noundef nonnull %2, i32 noundef 1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !342
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 68
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !207
  store i32 %i.aj, ptr %15, align 4
  call void @_ZNK4llvm12PPCInstrInfo30promoteInstr32To64ForElimEXTSWERKNS_8RegisterEPNS_19MachineRegisterInfoEjPNS_13LiveVariablesE(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 4 dereferenceable(4) %15, ptr noundef nonnull %2, i32 noundef 1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.f, %bb.k, %bb.d, %bb.l, %bb.j, %bb.c
  %.sroa.067.0.copyload = load i32, ptr %1, align 4, !tbaa !56
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.al = and i32 %.sroa.067.0.copyload, 2147483647
  %i.am = zext nneg i32 %i.al to i64
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !68
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.am
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ao, align 8
  %i.ap = and i64 %.0.copyload.i.i.i.i.i.i, -5    ; 2 uses
  %i.aq = icmp eq i64 %i.ap, ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 896) to i64)
  %i.ar = icmp eq i64 %i.ap, ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 1088) to i64)
  %or.cond = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond, label %bb.al, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 8
  store <4 x i32> <i32 1632, i32 1633, i32 1336, i32 1337>, ptr %17, align 16, !tbaa !56
  %i.au = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %17, i64 24
  store <4 x i32> <i32 1639, i32 1640, i32 2615, i32 2616>, ptr %i.au, align 16, !tbaa !56
  %i.aw = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 40
  store <4 x i32> <i32 1641, i32 1642, i32 2617, i32 2618>, ptr %i.aw, align 16, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  store i32 500, ptr %i.ay, align 16, !tbaa !1511
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 52
  store i32 501, ptr %i.az, align 4, !tbaa !676
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 3 uses
  store i32 16, ptr %i.ba, align 4, !tbaa !672
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bd = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef 132, i64 noundef 4) #26 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 128 ; 2 uses
  store ptr %i.bd, ptr %16, align 8, !tbaa !670
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !671
  store i32 0, ptr %i.bb, align 8, !tbaa !680
  store i32 0, ptr %i.be, align 4
  %i.bf = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIRKjJSB_EEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(4) %i.as), !noalias !1512 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.bh = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIRKjJSB_EEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 4 dereferenceable(8) %i.at, ptr noundef nonnull align 4 dereferenceable(4) %i.bg), !noalias !1512 ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.bj = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIRKjJSB_EEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 4 dereferenceable(8) %i.au, ptr noundef nonnull align 4 dereferenceable(4) %i.bi), !noalias !1512 ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %17, i64 28
  %i.bl = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIRKjJSB_EEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 4 dereferenceable(8) %i.av, ptr noundef nonnull align 4 dereferenceable(4) %i.bk), !noalias !1512 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %17, i64 36
  %i.bn = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIRKjJSB_EEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 4 dereferenceable(8) %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.bm), !noalias !1512 ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %17, i64 44
  %i.bp = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIRKjJSB_EEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 4 dereferenceable(8) %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.bo), !noalias !1512 ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %17, i64 52
  %i.br = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIRKjJSB_EEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 4 dereferenceable(8) %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %i.bq), !noalias !1512 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.bs = load ptr, ptr %16, align 8, !tbaa !670, !noalias !1513 ; 2 uses
  %i.bt = load ptr, ptr %i.bc, align 8, !tbaa !671, !noalias !1513 ; 2 uses
  %i.bu = load i32, ptr %i.ba, align 4, !tbaa !672, !noalias !1513 ; 5 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit.thread, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.preheader.i
  %i.bw = add i32 %i.bu, -1                       ; 2 uses
  %i.bx = mul i32 %i.e, 37
  %.019.i.i.i.i = and i32 %i.bw, %i.bx            ; 3 uses
  %i.by = zext i32 %.019.i.i.i.i to i64           ; 2 uses
  %i.bz = lshr i64 %i.by, 5
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !56, !noalias !1514
  %i.cc = and i32 %.019.i.i.i.i, 31
  %i.cd = lshr i32 %i.cb, %i.cc
  %i.ce = trunc i32 %i.cd to i1
  br i1 %i.ce, label %.lr.ph.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit.thread, !prof !673

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = add nuw i32 %.020.i.i.i.i, 1
  %.0.i.i.i.i = and i32 %i.cf, %i.bw              ; 3 uses
  %i.cg = zext i32 %.0.i.i.i.i to i64             ; 2 uses
  %i.ch = lshr i64 %i.cg, 5
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !56, !noalias !1514
  %i.ck = and i32 %.0.i.i.i.i, 31
  %i.cl = lshr i32 %i.cj, %i.ck
  %i.cm = trunc i32 %i.cl to i1
  br i1 %i.cm, label %.lr.ph.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit.thread, !prof !674

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %bb.n
  %i.cn = phi i64 [ %i.cg, %bb.n ], [ %i.by, %bb.m ] ; 3 uses
  %.020.i.i.i.i = phi i32 [ %.0.i.i.i.i, %bb.n ], [ %.019.i.i.i.i, %bb.m ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !56, !noalias !1514
  %i.cq = icmp eq i32 %i.e, %i.cp
  br i1 %i.cq, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit, label %bb.n, !prof !424

_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit: ; preds = %.lr.ph.i.i.i.i
  %.pre248 = zext i32 %i.bu to i64
  %i.cr = icmp samesign eq i64 %i.cn, %.pre248
  br i1 %i.cr, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit
  %.sink15.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cn
  %i.cs = getelementptr inbounds nuw i8, ptr %.sink15.i.i, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !676
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !48
  br label %_ZN4llvm3PPC36get64BitInstrFromSignedExt32BitInstrEj.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit.thread: ; preds = %bb.n, %bb.m, %.lr.ph.i.i.preheader.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !48 ; 3 uses
  %i.cw = zext i32 %i.e to i64
  %i.cx = sub nsw i64 0, %i.cw
  %i.cy = getelementptr inbounds [32 x i8], ptr %i.cv, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !573
  %i.db = and i64 %i.da, 256
  %.not218 = icmp eq i64 %i.db, 0
  br i1 %.not218, label %bb.aj, label %.preheader219

.preheader219:                                    ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit.thread, %bb.p
  %.023.i = phi i32 [ %.1.i, %bb.p ], [ 26, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit.thread ] ; 3 uses
  %.01522.i = phi i32 [ %.116.i, %bb.p ], [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit.thread ] ; 4 uses
  %i.dc = sub nuw i32 %.023.i, %.01522.i
  %i.dd = lshr i32 %i.dc, 1
  %i.de = add i32 %i.dd, %.01522.i                ; 3 uses
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm3PPC36get64BitInstrFromSignedExt32BitInstrEjE5Table, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !56 ; 2 uses
  %i.di = icmp eq i32 %i.e, %i.dh
  br i1 %i.di, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader219
  %i.dj = icmp ult i32 %i.e, %i.dh                ; 2 uses
  %i.dk = add i32 %i.de, 1
  %.116.i = select i1 %i.dj, i32 %.01522.i, i32 %i.dk ; 3 uses
  %.1.i = select i1 %i.dj, i32 %i.de, i32 %.023.i ; 3 uses
  %i.dl = icmp ult i32 %.116.i, %.1.i
  br i1 %i.dl, label %.preheader219, label %bb.q, !llvm.loop !0

bb.q:                                             ; preds = %bb.p, %.preheader219
  %.015.lcssa.i = phi i32 [ %.01522.i, %.preheader219 ], [ %.116.i, %bb.p ]
  %.0.lcssa.i = phi i32 [ %.023.i, %.preheader219 ], [ %.1.i, %bb.p ]
  %i.dm = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.dm, label %_ZN4llvm3PPC36get64BitInstrFromSignedExt32BitInstrEj.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm3PPC36get64BitInstrFromSignedExt32BitInstrEjE5Table, i64 %i.df
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !56
  br label %_ZN4llvm3PPC36get64BitInstrFromSignedExt32BitInstrEj.exit

_ZN4llvm3PPC36get64BitInstrFromSignedExt32BitInstrEj.exit: ; preds = %bb.r, %bb.q, %bb.o
  %i.dq = phi ptr [ %.pre, %bb.o ], [ %i.cv, %bb.r ], [ %i.cv, %bb.q ]
  %.0135 = phi i32 [ %i.ct, %bb.o ], [ %i.dp, %bb.r ], [ -1, %bb.q ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ds = zext i32 %.0135 to i64
  %i.dt = sub nsw i64 0, %i.ds                    ; 2 uses
  %i.du = getelementptr inbounds [32 x i8], ptr %i.dq, i64 %i.dt ; 5 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !600
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.du, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 12 ; 2 uses
  %i.ea = load i16, ptr %i.dz, align 4, !tbaa !601
  %i.eb = zext i16 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [6 x i8], ptr %i.dy, i64 %i.eb
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !1515
  %i.ee = sext i16 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1516
  %i.eh = and i64 %i.ee, 4294967295
  %i.ei = getelementptr inbounds nuw [64 x i8], ptr %i.eg, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !342
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !207 ; 2 uses
  %i.en = and i32 %i.em, 2147483647
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = load ptr, ptr %i.ak, align 8, !tbaa !68
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %i.eo
  %.0.copyload.i.i.i.i.i.i160 = load i64, ptr %i.eq, align 8
  %i.er = and i64 %.0.copyload.i.i.i.i.i.i160, -5
  %i.es = inttoptr i64 %i.er to ptr
  %i.et = icmp eq ptr %i.ei, %i.es
  br i1 %i.et, label %bb.aj, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm3PPC36get64BitInstrFromSignedExt32BitInstrEj.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.055.0.copyload = load ptr, ptr %i.eu, align 8, !tbaa !435 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !343 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 5 uses
  %i.ey = load i24, ptr %i.ex, align 8            ; 4 uses
  %i.ez = zext i24 %i.ey to i32
  %i.fa = zext i24 %i.ey to i64                   ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.fb, ptr %18, align 8, !tbaa !68
  %i.fc = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  store i32 0, ptr %i.fc, align 8, !tbaa !323
  %i.fd = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 12, ptr %i.fd, align 4, !tbaa !324
  %i.fe = icmp eq i24 %i.ey, 0
  br i1 %i.fe, label %._crit_edge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ff = icmp ugt i24 %i.ey, 12
  br i1 %i.ff, label %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i.i: ; preds = %bb.t
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef nonnull %i.fb, i64 noundef %i.fa, i64 noundef 4) #26
  %.pre.i.i.i = load i32, ptr %i.fc, align 8, !tbaa !323
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.fa, %.pre13.i.i.i
  br i1 %.not11.i.i.i, label %_ZN4llvm11SmallVectorINS_8RegisterELj12EEC2Em.exit, label %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i.i
  %.pre.i = load ptr, ptr %18, align 8, !tbaa !68
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.t
  %i.fg = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.fb, %bb.t ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.t ] ; 2 uses
  %i.fh = getelementptr [4 x i8], ptr %i.fg, i64 %.pre-phi.i.i3.i
  %i.fi = sub nsw i64 %i.fa, %.pre-phi.i.i3.i
  %i.fj = shl nsw i64 %i.fi, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fh, i8 0, i64 %i.fj, i1 false), !tbaa !662
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj12EEC2Em.exit

_ZN4llvm11SmallVectorINS_8RegisterELj12EEC2Em.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i.i, %.lr.ph.preheader.i.i.i
  store i32 %i.ez, ptr %i.fc, align 8, !tbaa !323
  %.pre244 = load i24, ptr %i.ex, align 8         ; 2 uses
  %i.fk = icmp ugt i24 %.pre244, 1
  br i1 %i.fk, label %.lr.ph226, label %._crit_edge

.lr.ph226:                                        ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj12EEC2Em.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.fp = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.fs = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.u

._crit_edge:                                      ; preds = %bb.z, %bb.s, %_ZN4llvm11SmallVectorINS_8RegisterELj12EEC2Em.exit
  %i.fv = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %2, ptr noundef %i.ei, ptr nonnull @.str.18, i64 0) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  store ptr %.sroa.055.0.copyload, ptr %21, align 8, !tbaa !435
  %i.fw = getelementptr inbounds nuw i8, ptr %21, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, i8 0, i64 24, i1 false)
  %i.fx = load ptr, ptr %i.dr, align 8, !tbaa !48
  %i.fy = getelementptr inbounds [32 x i8], ptr %i.fx, i64 %i.dt
  %i.fz = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.ew, ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %i.fy, i32 %i.fv) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %.0.copyload.i.i.i.i.i.i161 = load i64, ptr %i.c, align 8
  %i.ga = and i64 %.0.copyload.i.i.i.i.i.i161, -8
  %i.gb = inttoptr i64 %i.ga to ptr               ; 6 uses
  %i.gc = call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %i.gb) #26
  %i.gd = load i24, ptr %i.ex, align 8
  %i.ge = icmp ugt i24 %i.gd, 1
  br i1 %i.ge, label %.lr.ph229, label %.preheader

.lr.ph229:                                        ; preds = %._crit_edge
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.aa

bb.u:                                             ; preds = %.lr.ph226, %bb.z
  %i.gi = phi i24 [ %.pre244, %.lr.ph226 ], [ %i.hy, %bb.z ] ; 4 uses
  %indvars.iv235 = phi i64 [ 1, %.lr.ph226 ], [ %indvars.iv.next236, %bb.z ] ; 4 uses
  %i.gj = load ptr, ptr %i.ej, align 8, !tbaa !342
  %i.gk = getelementptr inbounds nuw [32 x i8], ptr %i.gj, i64 %indvars.iv235 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8
  %i.gm = and i32 %i.gl, 255
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !207 ; 3 uses
  %i.gq = icmp slt i32 %i.gp, 0
  br i1 %i.gq, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.gr = load i32, ptr %i.du, align 8, !tbaa !600
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.du, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.gv = load i16, ptr %i.dz, align 4, !tbaa !601
  %i.gw = zext i16 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [6 x i8], ptr %i.gu, i64 %i.gw
  %i.gy = getelementptr inbounds nuw [6 x i8], ptr %i.gx, i64 %indvars.iv235
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !1515
  %i.ha = sext i16 %i.gz to i64
  %i.hb = load ptr, ptr %i.ef, align 8, !tbaa !1516
  %i.hc = and i64 %i.ha, 4294967295
  %i.hd = getelementptr inbounds nuw [64 x i8], ptr %i.hb, i64 %i.hc ; 3 uses
  %i.he = and i32 %i.gp, 2147483647
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = load ptr, ptr %i.ak, align 8, !tbaa !68
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.hg, i64 %i.hf
  %.0.copyload.i.i.i.i.i.i164 = load i64, ptr %i.hh, align 8
  %i.hi = and i64 %.0.copyload.i.i.i.i.i.i164, -5 ; 3 uses
  %i.hj = inttoptr i64 %i.hi to ptr
  %.not146 = icmp eq ptr %i.hd, %i.hj
  br i1 %.not146, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hk = icmp eq i64 %i.hi, ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 64) to i64)
  %i.hl = icmp eq i64 %i.hi, ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 192) to i64)
  %or.cond3 = select i1 %i.hk, i1 true, i1 %i.hl
  br i1 %or.cond3, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hm = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %2, ptr noundef %i.hd, ptr nonnull @.str.18, i64 0) #26 ; 2 uses
  %i.hn = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %2, ptr noundef %i.hd, ptr nonnull @.str.18, i64 0) #26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  store ptr %.sroa.055.0.copyload, ptr %19, align 8, !tbaa !435
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, i8 0, i64 24, i1 false)
  %i.ho = load ptr, ptr %i.dr, align 8, !tbaa !48
  %i.hp = getelementptr inbounds i8, ptr %i.ho, i64 -320
  %i.hq = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.ew, ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %i.hp, i32 %i.hm) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  store ptr %.sroa.055.0.copyload, ptr %20, align 8, !tbaa !435
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, i8 0, i64 24, i1 false)
  %i.hr = load ptr, ptr %i.dr, align 8, !tbaa !48
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 -288
  %i.ht = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.ew, ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %i.hs, i32 %i.hn) ; 2 uses
end_hunk_4
