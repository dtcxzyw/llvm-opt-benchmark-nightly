Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ControlFlowToSCF?download=true
inline.NumInlined: 2077
inline.NumDeleted: 1469
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
%"class.mlir::Type" = type { ptr }
%"class.mlir::DiagnosticArgument" = type { i32, %union.anon }
%union.anon = type { %"class.llvm::StringRef" }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.mlir::func::FuncOp" = type { %"class.mlir::Op.472" }
%"class.mlir::Op.472" = type { %"class.mlir::OpState" }
%"class.llvm::SmallVector.529" = type { %"class.llvm::SmallVectorImpl.530", %"struct.llvm::SmallVectorStorage.533" }
%"class.llvm::SmallVectorImpl.530" = type { %"class.llvm::SmallVectorTemplateBase.531" }
%"class.llvm::SmallVectorTemplateBase.531" = type { %"class.llvm::SmallVectorTemplateCommon.532" }
%"class.llvm::SmallVectorTemplateCommon.532" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.533" = type { [48 x i8] }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%class.anon.742 = type { ptr }
%"class.mlir::ControlFlowToSCFTransformation" = type { %"class.mlir::CFGToSCFInterface" }
%"class.mlir::CFGToSCFInterface" = type { ptr }
%class.anon.741 = type { ptr, ptr, ptr, ptr }
%class.anon.681 = type { ptr }
%"class.std::unique_ptr.682" = type { %"struct.std::__uniq_ptr_data.683" }
%"struct.std::__uniq_ptr_data.683" = type { %"class.std::__uniq_ptr_impl.684" }
%"class.std::__uniq_ptr_impl.684" = type { %"class.std::tuple.685" }
%"class.std::tuple.685" = type { %"struct.std::_Tuple_impl.686" }
%"struct.std::_Tuple_impl.686" = type { %"struct.std::_Head_base.689" }
%"struct.std::_Head_base.689" = type { ptr }
%class.anon.704 = type { ptr }
%class.anon.717 = type { ptr }
%class.anon.730 = type { ptr }
%"class.mlir::AnalysisManager" = type { ptr }
%class.anon.749 = type { ptr, ptr, ptr }
%"class.std::tuple.804" = type { %"struct.std::_Tuple_impl.805" }
%"struct.std::_Tuple_impl.805" = type { %"struct.std::_Head_base.806" }
%"struct.std::_Head_base.806" = type { ptr }
%"class.std::tuple.807" = type { %"struct.std::_Tuple_impl.808" }
%"struct.std::_Tuple_impl.808" = type { %"struct.std::_Head_base.809" }
%"struct.std::_Head_base.809" = type { ptr }
%"struct.std::pair.773" = type { %"class.mlir::TypeID", %"class.std::unique_ptr.775" }
%"class.std::unique_ptr.775" = type { %"struct.std::__uniq_ptr_data.776" }
%"struct.std::__uniq_ptr_data.776" = type { %"class.std::__uniq_ptr_impl.777" }
%"class.std::__uniq_ptr_impl.777" = type { %"class.std::tuple.778" }
%"class.std::tuple.778" = type { %"struct.std::_Tuple_impl.779" }
%"struct.std::_Tuple_impl.779" = type { %"struct.std::_Head_base.782" }
%"struct.std::_Head_base.782" = type { ptr }
%"class.llvm::DenseMap.659" = type { ptr, ptr, i32, i32 }

$_ZN4mlir6Region8takeBodyERS0_ = comdat any

$_ZN4mlir30ControlFlowToSCFTransformationD0Ev = comdat any

$_ZN4mlir10DiagnosticD2Ev = comdat any

$_ZN4mlir4PassD2Ev = comdat any

$_ZN4mlir4Pass10initializeEPNS_11MLIRContextE = comdat any

$_ZNK4mlir13OperationPassIvE13canScheduleOnENS_23RegisteredOperationNameE = comdat any

$_ZNK4mlir4Pass13canScheduleOnEPNS_9OperationE = comdat any

$_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_3scf10SCFDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_ = comdat any

$_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_3scf10SCFDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation = comdat any

$_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_3scf10SCFDialectEEEPT_vEUlvE_EES6_l = comdat any

$_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_5arith12ArithDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_ = comdat any

$_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_5arith12ArithDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation = comdat any

$_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_5arith12ArithDialectEEEPT_vEUlvE_EES6_l = comdat any

$_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_2ub9UBDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_ = comdat any

$_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_2ub9UBDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation = comdat any

$_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_2ub9UBDialectEEEPT_vEUlvE_EES6_l = comdat any

$_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_4func11FuncDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_ = comdat any

$_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_4func11FuncDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation = comdat any

$_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_4func11FuncDialectEEEPT_vEUlvE_EES6_l = comdat any

$_ZN4mlir17CFGToSCFInterfaceD2Ev = comdat any

$_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE = comdat any

$_ZN4mlir6detail11AnalysisMap15getAnalysisImplINS_13DominanceInfoENS_4func6FuncOpEEERT_PNS_16PassInstrumentorET0_RNS_15AnalysisManagerE = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_6detail15AnalysisConceptESt14default_deleteIS6_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESG_IJOS9_EEEEERSA_DpOT_ = comdat any

$_ZN4mlir6detail13AnalysisModelINS_13DominanceInfoEED2Ev = comdat any

$_ZN4mlir6detail13AnalysisModelINS_13DominanceInfoEED0Ev = comdat any

$_ZN4mlir6detail13AnalysisModelINS_13DominanceInfoEE10invalidateERNS0_17PreservedAnalysesE = comdat any

$_ZN4mlir6detail17PreservedAnalyses10unpreserveINS_13DominanceInfoEEEvv = comdat any

$_ZN4mlir6detail11AnalysisMap15getAnalysisImplINS_13DominanceInfoEPNS_9OperationEEERT_PNS_16PassInstrumentorET0_RNS_15AnalysisManagerE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_ = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_13DominanceInfoEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_13DominanceInfoEvE13resolveTypeIDEvE2id = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZTVN4mlir6detail13AnalysisModelINS_13DominanceInfoEEE = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS0_17PreservedAnalyses15AllAnalysesTypeEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS0_17PreservedAnalyses15AllAnalysesTypeEvE13resolveTypeIDEvE2id = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [66 x i8] c"Cannot convert unknown control flow op to structured control flow\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Cannot create unreachable terminator for '\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@_ZTVN4mlir30ControlFlowToSCFTransformationE = unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr null, ptr @_ZN4mlir17CFGToSCFInterfaceD2Ev, ptr @_ZN4mlir30ControlFlowToSCFTransformationD0Ev, ptr @_ZN4mlir30ControlFlowToSCFTransformation30createStructuredBranchRegionOpERNS_9OpBuilderEPNS_9OperationENS_9TypeRangeEN4llvm15MutableArrayRefINS_6RegionEEE, ptr @_ZN4mlir30ControlFlowToSCFTransformation40createStructuredBranchRegionTerminatorOpENS_8LocationERNS_9OpBuilderEPNS_9OperationES5_NS_10ValueRangeE, ptr @_ZN4mlir30ControlFlowToSCFTransformation29createStructuredDoWhileLoopOpERNS_9OpBuilderEPNS_9OperationENS_10ValueRangeENS_5ValueES5_ONS_6RegionE, ptr @_ZN4mlir30ControlFlowToSCFTransformation17getCFGSwitchValueENS_8LocationERNS_9OpBuilderEj, ptr @_ZN4mlir30ControlFlowToSCFTransformation17createCFGSwitchOpENS_8LocationERNS_9OpBuilderENS_5ValueEN4llvm8ArrayRefIjEENS_10BlockRangeENS6_INS_10ValueRangeEEEPNS_5BlockES9_, ptr @_ZN4mlir30ControlFlowToSCFTransformation13getUndefValueENS_8LocationERNS_9OpBuilderENS_4TypeE, ptr @_ZN4mlir30ControlFlowToSCFTransformation32canConvertMultiSuccessorBranchOpEPNS_9OperationE, ptr @_ZN4mlir30ControlFlowToSCFTransformation27createUnreachableTerminatorENS_8LocationERNS_9OpBuilderERNS_6RegionE] }, align 8
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_2cf12CondBranchOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_2cf8SwitchOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.3 = private unnamed_addr constant [66 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::TypedAttr]\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZTVN12_GLOBAL__N_120LiftControlFlowToSCFE = internal unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr null, ptr @_ZN4mlir4PassD2Ev, ptr @_ZN12_GLOBAL__N_120LiftControlFlowToSCFD0Ev, ptr @_ZNK4mlir4impl28LiftControlFlowToSCFPassBaseIN12_GLOBAL__N_120LiftControlFlowToSCFEE7getNameEv, ptr @_ZNK4mlir4impl28LiftControlFlowToSCFPassBaseIN12_GLOBAL__N_120LiftControlFlowToSCFEE20getDependentDialectsERNS_15DialectRegistryE, ptr @_ZNK4mlir4impl28LiftControlFlowToSCFPassBaseIN12_GLOBAL__N_120LiftControlFlowToSCFEE11getArgumentEv, ptr @_ZNK4mlir4impl28LiftControlFlowToSCFPassBaseIN12_GLOBAL__N_120LiftControlFlowToSCFEE14getDescriptionEv, ptr @_ZN4mlir4Pass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEE, ptr @_ZN12_GLOBAL__N_120LiftControlFlowToSCF14runOnOperationEv, ptr @_ZN4mlir4Pass10initializeEPNS_11MLIRContextE, ptr @_ZNK4mlir13OperationPassIvE13canScheduleOnENS_23RegisteredOperationNameE, ptr @_ZNK4mlir4Pass13canScheduleOnEPNS_9OperationE, ptr @_ZNK4mlir4impl28LiftControlFlowToSCFPassBaseIN12_GLOBAL__N_120LiftControlFlowToSCFEE9clonePassEv, ptr @_ZN4mlir4Pass6anchorEv] }, align 8
@_ZZN4mlir4impl28LiftControlFlowToSCFPassBaseIN12_GLOBAL__N_120LiftControlFlowToSCFEE13resolveTypeIDEvE2id = internal global %"class.mlir::SelfOwningTypeID" zeroinitializer, align 8
@_ZTVN4mlir4PassE = external unnamed_addr constant { [15 x ptr] }, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"LiftControlFlowToSCFPass\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3scf10SCFDialectEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"scf\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5arith12ArithDialectEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"arith\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_2ub9UBDialectEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"ub\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4func11FuncDialectEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"lift-cf-to-scf\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Lift ControlFlow dialect to SCF dialect\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_13DominanceInfoEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_13DominanceInfoEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.15 = private unnamed_addr constant [70 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::DominanceInfo]\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTVN4mlir6detail13AnalysisModelINS_13DominanceInfoEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4mlir6detail13AnalysisModelINS_13DominanceInfoEED2Ev, ptr @_ZN4mlir6detail13AnalysisModelINS_13DominanceInfoEED0Ev, ptr @_ZN4mlir6detail13AnalysisModelINS_13DominanceInfoEE10invalidateERNS0_17PreservedAnalysesE] }, comdat, align 8
@_ZZN4mlir6detail14TypeIDResolverINS0_17PreservedAnalyses15AllAnalysesTypeEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS0_17PreservedAnalyses15AllAnalysesTypeEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.18 = private unnamed_addr constant [99 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::PreservedAnalyses::AllAnalysesType]\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir30createLiftControlFlowToSCFPassEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.a = tail call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #17, !noalias !140 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false), !noalias !140
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN4mlir4impl28LiftControlFlowToSCFPassBaseIN12_GLOBAL__N_120LiftControlFlowToSCFEE13resolveTypeIDEvE2id, ptr %i.c, align 8, !tbaa !12, !noalias !140
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i8 0, i64 56, i1 false), !noalias !140
  store ptr %i.f, ptr %i.e, align 16, !tbaa !14, !noalias !140
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i32 4, ptr %i.g, align 4, !tbaa !15, !noalias !140
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr %i.i, ptr %i.h, align 16, !tbaa !14, !noalias !140
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  store i32 4, ptr %i.j, align 4, !tbaa !15, !noalias !140
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.k, i8 0, i64 64, i1 false), !noalias !140
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_120LiftControlFlowToSCFE, i64 16), ptr %i.a, align 16, !tbaa !17, !noalias !140
  store ptr %i.a, ptr %0, align 8, !tbaa !20, !alias.scope !139
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4mlir30ControlFlowToSCFTransformation32canConvertMultiSuccessorBranchOpEPNS_9OperationE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.d = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_2cf12CondBranchOpEvE2idE
  %2 = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_2cf8SwitchOpEvE2idE
  %spec.select.i = or i1 %i.d, %2
  ret i1 %spec.select.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i8 } @_ZN4mlir30ControlFlowToSCFTransformation30createStructuredBranchRegionOpERNS_9OpBuilderEPNS_9OperationENS_9TypeRangeEN4llvm15MutableArrayRefINS_6RegionEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i64 %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::MutableArrayRef") align 8 captures(none) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %7 = alloca %"class.llvm::mapped_iterator", align 8 ; 6 uses
  %.sroa.0.i = alloca %"struct.std::pair", align 8 ; 4 uses
  %.sroa.07.i = alloca [33 x i8], align 8         ; 4 uses
  %8 = alloca %"class.mlir::DenseElementsAttr::IntElementIterator", align 8 ; 5 uses
  %9 = alloca %"class.mlir::cf::CondBranchOp", align 8 ; 6 uses
  %10 = alloca %"class.mlir::cf::SwitchOp", align 8 ; 7 uses
  %11 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  %12 = alloca %"class.std::optional.118", align 8 ; 5 uses
  %13 = alloca %"class.llvm::ArrayRef.166", align 8 ; 3 uses
  %14 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.d = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_2cf12CondBranchOpEvE2idE
  %spec.select.i.i = select i1 %i.d, ptr %2, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %9, align 8
  %.not = icmp eq ptr %spec.select.i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.e, align 8
  %i.f = call i64 @_ZN4mlir2cf12CondBranchOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0) #18
  %i.g = load ptr, ptr %9, align 8, !tbaa !153
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !156
  %i.j = and i64 %i.f, 4294967295
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.m = call ptr @_ZN4mlir3scf4IfOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %.sroa.0.0.copyload.i, i64 %3, i64 %4, ptr %.sroa.0.0.copyload.i.i.i.i) #18 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 44 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4              ; 3 uses
  %i.p = and i32 %i.o, 8388607
  %i.q = icmp ne i32 %i.p, 0
  call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.s = lshr i32 %i.o, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.s, 1
  %i.t = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.t
  %i.v = lshr i32 %i.o, 21
  %i.w = and i32 %i.v, 2040
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !44
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.ab
  %i.ad = load ptr, ptr %5, align 8, !tbaa !159   ; 2 uses
  call void @_ZN4mlir6Region8takeBodyERS0_(ptr noundef nonnull align 8 dereferenceable(28) %i.ac, ptr noundef nonnull align 8 dereferenceable(28) %i.ad)
  %i.ae = load i32, ptr %i.n, align 4             ; 3 uses
  %i.af = and i32 %i.ae, 8388607
  %i.ag = icmp ne i32 %i.af, 0
  call void @llvm.assume(i1 %i.ag)
  %i.ah = lshr i32 %i.ae, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i33 = and i32 %i.ah, 1
  %i.ai = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i33 to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ai
  %i.ak = lshr i32 %i.ae, 21
  %i.al = and i32 %i.ak, 2040
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am
  %i.ao = load i32, ptr %i.z, align 8, !tbaa !44
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  call void @_ZN4mlir6Region8takeBodyERS0_(ptr noundef nonnull align 8 dereferenceable(28) %i.ar, ptr noundef nonnull align 8 dereferenceable(28) %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.at = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_2cf8SwitchOpEvE2idE
  %spec.select.i.i35 = select i1 %i.at, ptr %2, ptr null ; 2 uses
  store ptr %spec.select.i.i35, ptr %10, align 8
  %.not75 = icmp eq ptr %spec.select.i.i35, null
  br i1 %.not75, label %.thread72, label %bb.d

.thread72:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.av, align 1, !tbaa !48
  store ptr @.str, ptr %15, align 8, !tbaa !49
  store i8 3, ptr %i.au, align 8, !tbaa !50
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %14, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(34) %15) #18
  %i.aw = load ptr, ptr %14, align 8, !tbaa !58
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i36 = load ptr, ptr %i.ax, align 8
  %i.ay = tail call ptr @_ZN4mlir7Builder12getIndexTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  %i.az = call i64 @_ZN4mlir2cf8SwitchOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 0) #18
  %i.ba = load ptr, ptr %10, align 8, !tbaa !153
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !156
  %i.bd = and i64 %i.az, 4294967295
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %.sroa.0.0.copyload.i.i.i.i38 = load ptr, ptr %i.bf, align 8, !tbaa !27
  %i.bg = call ptr @_ZN4mlir5arith13IndexCastUIOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %.sroa.0.0.copyload.i36, ptr %i.ay, ptr %.sroa.0.0.copyload.i.i.i.i38, i1 noundef zeroext false) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.bh, ptr %11, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  store i32 0, ptr %i.bi, align 8, !tbaa !59
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  store i32 6, ptr %i.bj, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.bk = call { ptr, i8 } @_ZN4mlir2cf8SwitchOp13getCaseValuesEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #18 ; 2 uses
  %i.bl = extractvalue { ptr, i8 } %i.bk, 0       ; 3 uses
  store ptr %i.bl, ptr %12, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bn = extractvalue { ptr, i8 } %i.bk, 1       ; 2 uses
  store i8 %i.bn, ptr %i.bm, align 8
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.e, label %._crit_edge80

._crit_edge80:                                    ; preds = %bb.d
  %.pre = load i32, ptr %i.bi, align 8, !tbaa !59
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @_ZN4mlir17DenseElementsAttr18IntElementIteratorC1ES0_m(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr %i.bl, i64 noundef 0) #18, !noalias !160
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false)
  %.sroa.06.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bp = load <2 x i64>, ptr %.sroa.06.i.sroa.4.0..sroa_idx, align 8, !noalias !160
  %.sroa.06.i.sroa.4.0.copyload = load i64, ptr %.sroa.06.i.sroa.4.0..sroa_idx, align 8, !noalias !160
  %i.bq = call noundef i64 @_ZNK4mlir17DenseElementsAttr14getNumElementsEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #18, !noalias !161
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i), !noalias !160
  call void @_ZN4mlir17DenseElementsAttr18IntElementIteratorC1ES0_m(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.i, ptr %i.bl, i64 noundef %i.bq) #18, !noalias !160
  %.sroa.8.40..sroa.07.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.i, i64 16
  %.sroa.8.40.copyload = load i64, ptr %.sroa.8.40..sroa.07.i.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i), !noalias !160
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.br = load i32, ptr %i.bi, align 8, !tbaa !59 ; 2 uses
  %i.bs = zext i32 %i.br to i64
  %i.bt = sub nsw i64 %.sroa.8.40.copyload, %.sroa.06.i.sroa.4.0.copyload ; 4 uses
  %i.bu = add i64 %i.bt, %i.bs                    ; 2 uses
  %i.bv = load i32, ptr %i.bj, align 4, !tbaa !15
  %i.bw = zext i32 %i.bv to i64
  %i.bx = icmp ugt i64 %i.bu, %i.bw
  br i1 %i.bx, label %bb.f, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull %i.bh, i64 noundef %i.bu, i64 noundef 8) #18
  %.pre.i.i.i = load i32, ptr %i.bi, align 8, !tbaa !59
  br label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.by = phi i32 [ %i.br, %bb.e ], [ %.pre.i.i.i, %bb.f ] ; 2 uses
  %.pre97.i.i = load ptr, ptr %11, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false)
  %.sroa.460.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store <2 x i64> %i.bp, ptr %.sroa.460.0..sroa_idx.i.i, align 8
  %.sroa.5.i.sroa.4.0..sroa.563.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %.sroa.5.i.sroa.4.0..sroa.563.0..sroa_idx.i.i.sroa_idx, align 1
  %i.bz = icmp sgt i64 %i.bt, 0
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm12append_rangeINS_11SmallVectorIlLj6EEENS_14iterator_rangeINS_15mapped_iteratorIN4mlir17DenseElementsAttr18IntElementIteratorEZNS5_30ControlFlowToSCFTransformation30createStructuredBranchRegionOpERNS5_9OpBuilderEPNS5_9OperationENS5_9TypeRangeENS_15MutableArrayRefINS5_6RegionEEEE3$_0mEEEEEEvRT_OT0_.exit"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i
  %i.ca = zext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.pre97.i.i, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.g

bb.g:                                             ; preds = %"_ZNK4llvm15mapped_iteratorIN4mlir17DenseElementsAttr18IntElementIteratorEZNS1_30ControlFlowToSCFTransformation30createStructuredBranchRegionOpERNS1_9OpBuilderEPNS1_9OperationENS1_9TypeRangeENS_15MutableArrayRefINS1_6RegionEEEE3$_0mEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.02.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ck, %"_ZNK4llvm15mapped_iteratorIN4mlir17DenseElementsAttr18IntElementIteratorEZNS1_30ControlFlowToSCFTransformation30createStructuredBranchRegionOpERNS1_9OpBuilderEPNS1_9OperationENS1_9TypeRangeENS_15MutableArrayRefINS1_6RegionEEEE3$_0mEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.041.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cj, %"_ZNK4llvm15mapped_iteratorIN4mlir17DenseElementsAttr18IntElementIteratorEZNS1_30ControlFlowToSCFTransformation30createStructuredBranchRegionOpERNS1_9OpBuilderEPNS1_9OperationENS1_9TypeRangeENS_15MutableArrayRefINS1_6RegionEEEE3$_0mEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZNK4mlir17DenseElementsAttr18IntElementIteratordeEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(34) %7) #18
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !163
  %i.ce = icmp ult i32 %i.cd, 65                  ; 2 uses
  %i.cf = load ptr, ptr %6, align 8               ; 3 uses
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ce, ptr %6, ptr %i.cf
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !49
  %i.cg = icmp eq ptr %i.cf, null
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ce, i1 true, i1 %i.cg
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4llvm15mapped_iteratorIN4mlir17DenseElementsAttr18IntElementIteratorEZNS1_30ControlFlowToSCFTransformation30createStructuredBranchRegionOpERNS1_9OpBuilderEPNS1_9OperationENS1_9TypeRangeENS_15MutableArrayRefINS1_6RegionEEEE3$_0mEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.cf) #19
  br label %"_ZNK4llvm15mapped_iteratorIN4mlir17DenseElementsAttr18IntElementIteratorEZNS1_30ControlFlowToSCFTransformation30createStructuredBranchRegionOpERNS1_9OpBuilderEPNS1_9OperationENS1_9TypeRangeENS_15MutableArrayRefINS1_6RegionEEEE3$_0mEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZNK4llvm15mapped_iteratorIN4mlir17DenseElementsAttr18IntElementIteratorEZNS1_30ControlFlowToSCFTransformation30createStructuredBranchRegionOpERNS1_9OpBuilderEPNS1_9OperationENS1_9TypeRangeENS_15MutableArrayRefINS1_6RegionEEEE3$_0mEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  store i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.041.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !60
  %i.ch = load i64, ptr %.sroa.460.0..sroa_idx.i.i, align 8, !tbaa !166
  %i.ci = add nsw i64 %i.ch, 1
  store i64 %i.ci, ptr %.sroa.460.0..sroa_idx.i.i, align 8, !tbaa !166
  %i.cj = getelementptr inbounds nuw i8, ptr %.041.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ck = add nsw i64 %.02.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.cl = icmp sgt i64 %.02.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cl, label %bb.g, label %"_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_copyINS_15mapped_iteratorIN4mlir17DenseElementsAttr18IntElementIteratorEZNS4_30ControlFlowToSCFTransformation30createStructuredBranchRegionOpERNS4_9OpBuilderEPNS4_9OperationENS4_9TypeRangeENS_15MutableArrayRefINS4_6RegionEEEE3$_0mEEPlEEvT_SJ_T0_.exit.loopexit.i.i.i", !llvm.loop !151

"_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_copyINS_15mapped_iteratorIN4mlir17DenseElementsAttr18IntElementIteratorEZNS4_30ControlFlowToSCFTransformation30createStructuredBranchRegionOpERNS4_9OpBuilderEPNS4_9OperationENS4_9TypeRangeENS_15MutableArrayRefINS4_6RegionEEEE3$_0mEEPlEEvT_SJ_T0_.exit.loopexit.i.i.i": ; preds = %"_ZNK4llvm15mapped_iteratorIN4mlir17DenseElementsAttr18IntElementIteratorEZNS1_30ControlFlowToSCFTransformation30createStructuredBranchRegionOpERNS1_9OpBuilderEPNS1_9OperationENS1_9TypeRangeENS_15MutableArrayRefINS1_6RegionEEEE3$_0mEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.pre28.i.i.i = load i32, ptr %i.bi, align 8, !tbaa !59
  br label %"_ZN4llvm12append_rangeINS_11SmallVectorIlLj6EEENS_14iterator_rangeINS_15mapped_iteratorIN4mlir17DenseElementsAttr18IntElementIteratorEZNS5_30ControlFlowToSCFTransformation30createStructuredBranchRegionOpERNS5_9OpBuilderEPNS5_9OperationENS5_9TypeRangeENS_15MutableArrayRefINS5_6RegionEEEE3$_0mEEEEEEvRT_OT0_.exit"

"_ZN4llvm12append_rangeINS_11SmallVectorIlLj6EEENS_14iterator_rangeINS_15mapped_iteratorIN4mlir17DenseElementsAttr18IntElementIteratorEZNS5_30ControlFlowToSCFTransformation30createStructuredBranchRegionOpERNS5_9OpBuilderEPNS5_9OperationENS5_9TypeRangeENS_15MutableArrayRefINS5_6RegionEEEE3$_0mEEEEEEvRT_OT0_.exit": ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i, %"_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_copyINS_15mapped_iteratorIN4mlir17DenseElementsAttr18IntElementIteratorEZNS4_30ControlFlowToSCFTransformation30createStructuredBranchRegionOpERNS4_9OpBuilderEPNS4_9OperationENS4_9TypeRangeENS_15MutableArrayRefINS4_6RegionEEEE3$_0mEEPlEEvT_SJ_T0_.exit.loopexit.i.i.i"
  %i.cm = phi i32 [ %.pre28.i.i.i, %"_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_copyINS_15mapped_iteratorIN4mlir17DenseElementsAttr18IntElementIteratorEZNS4_30ControlFlowToSCFTransformation30createStructuredBranchRegionOpERNS4_9OpBuilderEPNS4_9OperationENS4_9TypeRangeENS_15MutableArrayRefINS4_6RegionEEEE3$_0mEEPlEEvT_SJ_T0_.exit.loopexit.i.i.i" ], [ %i.by, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.cn = trunc i64 %i.bt to i32
  %i.co = add i32 %i.cm, %i.cn                    ; 2 uses
  store i32 %i.co, ptr %i.bi, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge80, %"_ZN4llvm12append_rangeINS_11SmallVectorIlLj6EEENS_14iterator_rangeINS_15mapped_iteratorIN4mlir17DenseElementsAttr18IntElementIteratorEZNS5_30ControlFlowToSCFTransformation30createStructuredBranchRegionOpERNS5_9OpBuilderEPNS5_9OperationENS5_9TypeRangeENS_15MutableArrayRefINS5_6RegionEEEE3$_0mEEEEEEvRT_OT0_.exit"
  %i.cp = phi i32 [ %.pre, %._crit_edge80 ], [ %i.co, %"_ZN4llvm12append_rangeINS_11SmallVectorIlLj6EEENS_14iterator_rangeINS_15mapped_iteratorIN4mlir17DenseElementsAttr18IntElementIteratorEZNS5_30ControlFlowToSCFTransformation30createStructuredBranchRegionOpERNS5_9OpBuilderEPNS5_9OperationENS5_9TypeRangeENS_15MutableArrayRefINS5_6RegionEEEE3$_0mEEEEEEvRT_OT0_.exit" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %.sroa.0.0.copyload.i39 = load ptr, ptr %i.ax, align 8
  %i.cq = getelementptr inbounds i8, ptr %i.bg, i64 -16
  %i.cr = load ptr, ptr %11, align 8, !tbaa !14
  store ptr %i.cr, ptr %13, align 8, !tbaa !169
  %i.cs = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ct = zext i32 %i.cp to i64
  store i64 %i.ct, ptr %i.cs, align 8, !tbaa !170
  %i.cu = call ptr @_ZN4mlir3scf13IndexSwitchOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefIlEEj(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %.sroa.0.0.copyload.i39, i64 %3, i64 %4, ptr nonnull %i.cq, ptr noundef nonnull byval(%"class.llvm::ArrayRef.166") align 8 %13, i32 noundef %i.cp) #18 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 44 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4            ; 3 uses
  %i.cx = and i32 %i.cw, 8388607
  %i.cy = icmp ne i32 %i.cx, 0
  call void @llvm.assume(i1 %i.cy)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 64 ; 2 uses
  %i.da = lshr i32 %i.cw, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i40 = and i32 %i.da, 1
  %i.db = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i40 to i64
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.db
  %i.dd = lshr i32 %i.cw, 21
  %i.de = and i32 %i.dd, 2040
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cu, i64 40 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !44
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %i.dg, i64 %i.dj
  %i.dl = load ptr, ptr %5, align 8, !tbaa !159   ; 3 uses
  call void @_ZN4mlir6Region8takeBodyERS0_(ptr noundef nonnull align 8 dereferenceable(28) %i.dk, ptr noundef nonnull align 8 dereferenceable(28) %i.dl)
  %i.dm = load i32, ptr %i.cv, align 4            ; 3 uses
  %i.dn = and i32 %i.dm, 8388607                  ; 2 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %_ZN4mlir3scf13IndexSwitchOp14getCaseRegionsEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dp = lshr i32 %i.dm, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.dp, 1
  %i.dq = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.dq
  %i.ds = lshr i32 %i.dm, 21
  %i.dt = and i32 %i.ds, 2040
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.du
  %i.dw = load i32, ptr %i.dh, align 8, !tbaa !44
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr %i.dv, i64 %i.dx
  %i.dz = shl nuw nsw i32 %i.dn, 5
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = add nsw i64 %i.ea, -32
  br label %_ZN4mlir3scf13IndexSwitchOp14getCaseRegionsEv.exit

_ZN4mlir3scf13IndexSwitchOp14getCaseRegionsEv.exit: ; preds = %bb.i, %bb.j
  %.sroa.0.0.i.i = phi ptr [ %i.dy, %bb.j ], [ null, %bb.i ]
  %.sroa.4.0.i.i = phi i64 [ %i.eb, %bb.j ], [ -32, %bb.i ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !171 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ee, 5
end_hunk_0
begin_hunk_1_@_ZN4mlir30ControlFlowToSCFTransformation17getCFGSwitchValueENS_8LocationERNS_9OpBuilderEj:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !59   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.k, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.h, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.l = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i, 1    ; 3 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i, i64 %i.l ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.n = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = xor i64 %i.l, -1
  %i.q = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i, %i.p
  %.112.i.i.i.i.i.i.i.i.i.i = select i1 %i.n, ptr %i.o, ptr %.01116.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i = select i1 %i.n, i64 %i.q, i64 %i.l ; 2 uses
  %i.r = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.r, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, !llvm.loop !196

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %i.k, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.h, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.pre-phi.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i
  %i.t = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !24
  %i.u = icmp eq ptr %i.t, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.u, label %bb.f, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !201
  br label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit

_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit: ; preds = %bb.a, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.x = phi ptr [ null, %bb.a ], [ %i.w, %bb.f ], [ null, %bb.e ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i ]
  %i.y = tail call ptr @_ZN4mlir5arith10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %1, ptr %i.a, ptr %i.x) #18
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -16
  ret ptr %i.z
}

declare ptr @_ZN4mlir5arith10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr) local_unnamed_addr #3

declare ptr @_ZN4mlir7Builder17getI32IntegerAttrEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir30ControlFlowToSCFTransformation17createCFGSwitchOpENS_8LocationERNS_9OpBuilderENS_5ValueEN4llvm8ArrayRefIjEENS_10BlockRangeENS6_INS_10ValueRangeEEEPNS_5BlockES9_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %3, ptr nofree readonly captures(none) %4, i64 %5, ptr nofree noundef readonly byval(%"class.mlir::BlockRange") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.434") align 8 captures(none) %7, ptr noundef %8, ptr nofree noundef readonly byval(%"class.mlir::ValueRange") align 8 captures(none) %9) unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %10 = alloca %"class.llvm::ArrayRef.435", align 8 ; 3 uses
  %11 = alloca %"class.llvm::SmallVector.436", align 8 ; 9 uses
  %.sroa.01.0.copyload = load i64, ptr %9, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.b, ptr %11, align 8, !tbaa !14, !alias.scope !206
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !59, !alias.scope !206
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 12, ptr %i.d, align 4, !tbaa !15, !alias.scope !206
  %i.e = icmp ugt i64 %5, 12
  br i1 %i.e, label %bb.b, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull %i.b, i64 noundef %5, i64 noundef 4) #18
  %.pre.i.i.i = load i32, ptr %i.c, align 8, !tbaa !59, !alias.scope !206 ; 2 uses
  %.pre9.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre7.pre = load ptr, ptr %11, align 8, !tbaa !14
  br label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i: ; preds = %bb.b, %bb.a
  %.pre = phi ptr [ %i.b, %bb.a ], [ %.pre7.pre, %bb.b ] ; 3 uses
  %.pre-phi.i.i.i = phi i64 [ 0, %bb.a ], [ %.pre9.i.i.i, %bb.b ] ; 2 uses
  %i.f = phi i32 [ 0, %bb.a ], [ %.pre.i.i.i, %bb.b ]
  %.pre10 = ptrtoaddr ptr %.pre to i64
  %i.g = icmp sgt i64 %5, 0
  br i1 %i.g, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i, label %_ZN4llvm12to_vector_ofIiRNS_8ArrayRefIjEEEENS_11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS5_EE5valueEEEOT0_.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i:           ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.pre-phi.i.i.i ; 4 uses
  %min.iters.check = icmp ult i64 %5, 16
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i
  %i.i = shl nuw nsw i64 %.pre-phi.i.i.i, 2
  %i.j = add i64 %i.i, %.pre10
  %i.k = sub i64 %i.a, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %5, 9223372036854775800        ; 3 uses
  %i.l = and i64 %5, 7
  %i.m = shl i64 %n.vec, 2                        ; 2 uses
  %i.n = getelementptr i8, ptr %i.h, i64 %i.m
  %i.o = getelementptr i8, ptr %4, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.p ; 2 uses
  %next.gep11 = getelementptr i8, ptr %4, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep11, align 4, !tbaa !72
  %wide.load12 = load <4 x i32>, ptr %i.q, align 4, !tbaa !72
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !72
  store <4 x i32> %wide.load12, ptr %i.r, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE18uninitialized_copyIPKjPiEEvT_S6_T0_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %5, %vector.memcheck ], [ %5, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i ], [ %i.l, %middle.block ]
  %.0811.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i ], [ %i.n, %middle.block ]
  %.0910.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i ], [ %i.o, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.t = load i32, ptr %.0910.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  store i32 %i.t, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.u = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.w = add nsw i64 %.012.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.x = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE18uninitialized_copyIPKjPiEEvT_S6_T0_.exit.loopexit.i.i.i, !llvm.loop !205

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE18uninitialized_copyIPKjPiEEvT_S6_T0_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block
  %.pre8.i.i.i = load i32, ptr %i.c, align 8, !tbaa !59, !alias.scope !206
  br label %_ZN4llvm12to_vector_ofIiRNS_8ArrayRefIjEEEENS_11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS5_EE5valueEEEOT0_.exit

_ZN4llvm12to_vector_ofIiRNS_8ArrayRefIjEEEENS_11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS5_EE5valueEEEOT0_.exit: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE18uninitialized_copyIPKjPiEEvT_S6_T0_.exit.loopexit.i.i.i
  %i.y = phi i32 [ %.pre8.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE18uninitialized_copyIPKjPiEEvT_S6_T0_.exit.loopexit.i.i.i ], [ %i.f, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ]
  %i.z = trunc i64 %5 to i32
  %i.aa = add i32 %i.y, %i.z                      ; 2 uses
  store i32 %i.aa, ptr %i.c, align 8, !tbaa !59, !alias.scope !206
  store ptr %.pre, ptr %10, align 8, !tbaa !208
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ac = zext i32 %i.aa to i64
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !209
  %i.ad = call ptr @_ZN4mlir2cf8SwitchOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEPNS_5BlockENS_10ValueRangeEN4llvm8ArrayRefIiEENS_10BlockRangeENSA_IS8_EE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %1, ptr %3, ptr noundef %8, i64 %.sroa.01.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.435") align 8 %10, ptr noundef nonnull byval(%"class.mlir::BlockRange") align 8 %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.434") align 8 %7) #18 ; 0 uses
  %i.ae = load ptr, ptr %11, align 8, !tbaa !14   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.b
  br i1 %i.af, label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12to_vector_ofIiRNS_8ArrayRefIjEEEENS_11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS5_EE5valueEEEOT0_.exit
  call void @free(ptr noundef %i.ae) #18
  br label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit

_ZN4llvm11SmallVectorIiLj12EED2Ev.exit:           ; preds = %_ZN4llvm12to_vector_ofIiRNS_8ArrayRefIjEEEENS_11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS5_EE5valueEEEOT0_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  ret void
}

declare ptr @_ZN4mlir2cf8SwitchOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEPNS_5BlockENS_10ValueRangeEN4llvm8ArrayRefIiEENS_10BlockRangeENSA_IS8_EE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr noundef, i64, i64, ptr noundef byval(%"class.llvm::ArrayRef.435") align 8, ptr noundef byval(%"class.mlir::BlockRange") align 8, ptr noundef byval(%"class.llvm::ArrayRef.434") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local nonnull ptr @_ZN4mlir30ControlFlowToSCFTransformation13getUndefValueENS_8LocationERNS_9OpBuilderENS_4TypeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN4mlir2ub8PoisonOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS0_19PoisonAttrInterfaceE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %1, ptr %3, ptr null, ptr null) #18
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -16
  ret ptr %i.b
}

declare ptr @_ZN4mlir2ub8PoisonOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS0_19PoisonAttrInterfaceE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i8 } @_ZN4mlir30ControlFlowToSCFTransformation27createUnreachableTerminatorENS_8LocationERNS_9OpBuilderERNS_6RegionE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::FunctionType", align 8 ; 4 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::func::FuncOp", align 8 ; 4 uses
  %7 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  %10 = alloca %"class.llvm::SmallVector.529", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  %spec.select.i.i = select i1 %i.f, ptr %i.b, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %6, align 8
  %.not = icmp eq ptr %spec.select.i.i, null
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !48
  store ptr @.str.1, ptr %8, align 8, !tbaa !49
  store i8 3, ptr %i.g, align 8, !tbaa !50
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %7, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %8) #18
  %i.i = load ptr, ptr %7, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit.thread, label %_ZNO4mlir18InFlightDiagnosticlsINS_13OperationNameEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINS_13OperationNameEEEOS0_OT_.exit: ; preds = %bb.b
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.k = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsENS_13OperationNameE(ptr noundef nonnull align 8 dereferenceable(192) %i.j, ptr %.sroa.0.0.copyload.i) #18 ; 0 uses
  %.pr = load ptr, ptr %7, align 8, !tbaa !58
  %.not.i.i8 = icmp eq ptr %.pr, null
  br i1 %.not.i.i8, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_13OperationNameEEEOS0_OT_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i32 3, ptr %5, align 8, !tbaa !224
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.2, ptr %i.m, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !59   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !15
  %.not.i.i.i.i.i = icmp ult i32 %i.o, %i.q
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !76

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = zext i32 %i.o to i64
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.u = load i32, ptr %i.n, align 8, !tbaa !59
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.n, align 8, !tbaa !59
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.pr15 = load ptr, ptr %7, align 8, !tbaa !58
  %.not.i = icmp eq ptr %.pr15, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #18
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %_ZNO4mlir18InFlightDiagnosticlsINS_13OperationNameEEEOS0_OT_.exit, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !63, !range !64, !noundef !65
  %i.y = trunc nuw i8 %i.x to i1
  store i8 0, ptr %i.w, align 8, !tbaa !63
  br i1 %i.y, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.z) #18
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.aa = call ptr @_ZN4mlir4func6FuncOp15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  store ptr %i.aa, ptr %4, align 8
  %i.ab = call { ptr, i64 } @_ZNK4mlir12FunctionType10getResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0      ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1      ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %.idx.i = shl nuw nsw i64 %i.ad, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.af, ptr %10, align 8, !tbaa !14, !alias.scope !226
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !59, !alias.scope !226
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 6, ptr %i.ah, align 4, !tbaa !15, !alias.scope !226
  %i.ai = icmp ugt i64 %i.ad, 6
  br i1 %i.ai, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.thread.i: ; preds = %bb.h
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull %i.af, i64 noundef %i.ad, i64 noundef 8) #18
  %.pre.i.i.i.i = load i32, ptr %i.ag, align 8, !tbaa !59, !alias.scope !226
  %.pre27.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %10, align 8, !tbaa !14, !alias.scope !226
  br label %.lr.ph.i.i.i.i.preheader.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i: ; preds = %bb.h
  %.not2.i.i.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not2.i.i.i.i.i.i.i.i, label %"_ZN4llvm13map_to_vectorINS_8ArrayRefIN4mlir4TypeEEEZNS2_30ControlFlowToSCFTransformation27createUnreachableTerminatorENS2_8LocationERNS2_9OpBuilderERNS2_6RegionEE3$_0EEDaOT_OT0_.exit", label %.lr.ph.i.i.i.i.preheader.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i:                 ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.thread.i
  %i.aj = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.thread.i ], [ %i.af, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i ]
  %.pre-phi.i.i.i10.i = phi i64 [ %.pre27.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.pre-phi.i.i.i10.i
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i
  %.04.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ak, %.lr.ph.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.val13.i.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ac, %.lr.ph.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val13.i.i.i.i.i.i.i.i, align 8, !tbaa !228, !noalias !225
  %i.al = load ptr, ptr %0, align 8, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call ptr %i.an(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %.val.i.i.i.i.i.i.i.i.i) #18, !inline_history !214
  %i.ap = ptrtoint ptr %i.ao to i64
  store i64 %i.ap, ptr %.04.i.i.i.i.i.i.i.i, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %.val13.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.ae
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_15mapped_iteratorIPKNS1_4TypeEZNS1_30ControlFlowToSCFTransformation27createUnreachableTerminatorENS1_8LocationERNS1_9OpBuilderERNS1_6RegionEE3$_0S2_EEPS2_EEvT_SI_T0_.exit.loopexit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !215

"_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_15mapped_iteratorIPKNS1_4TypeEZNS1_30ControlFlowToSCFTransformation27createUnreachableTerminatorENS1_8LocationERNS1_9OpBuilderERNS1_6RegionEE3$_0S2_EEPS2_EEvT_SI_T0_.exit.loopexit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pre26.i.i.i.i = load i32, ptr %i.ag, align 8, !tbaa !59, !alias.scope !226
  %.pre17 = load ptr, ptr %10, align 8, !tbaa !14
  br label %"_ZN4llvm13map_to_vectorINS_8ArrayRefIN4mlir4TypeEEEZNS2_30ControlFlowToSCFTransformation27createUnreachableTerminatorENS2_8LocationERNS2_9OpBuilderERNS2_6RegionEE3$_0EEDaOT_OT0_.exit"

"_ZN4llvm13map_to_vectorINS_8ArrayRefIN4mlir4TypeEEEZNS2_30ControlFlowToSCFTransformation27createUnreachableTerminatorENS2_8LocationERNS2_9OpBuilderERNS2_6RegionEE3$_0EEDaOT_OT0_.exit": ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i, %"_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_15mapped_iteratorIPKNS1_4TypeEZNS1_30ControlFlowToSCFTransformation27createUnreachableTerminatorENS1_8LocationERNS1_9OpBuilderERNS1_6RegionEE3$_0S2_EEPS2_EEvT_SI_T0_.exit.loopexit.i.i.i.i"
  %i.as = phi ptr [ %.pre17, %"_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_15mapped_iteratorIPKNS1_4TypeEZNS1_30ControlFlowToSCFTransformation27createUnreachableTerminatorENS1_8LocationERNS1_9OpBuilderERNS1_6RegionEE3$_0S2_EEPS2_EEvT_SI_T0_.exit.loopexit.i.i.i.i" ], [ %i.af, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i ]
  %i.at = phi i32 [ %.pre26.i.i.i.i, %"_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_15mapped_iteratorIPKNS1_4TypeEZNS1_30ControlFlowToSCFTransformation27createUnreachableTerminatorENS1_8LocationERNS1_9OpBuilderERNS1_6RegionEE3$_0S2_EEPS2_EEvT_SI_T0_.exit.loopexit.i.i.i.i" ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i ]
  %i.au = trunc i64 %i.ad to i32
  %i.av = add i32 %i.at, %i.au                    ; 2 uses
  store i32 %i.av, ptr %i.ag, align 8, !tbaa !59, !alias.scope !226
  %i.aw = zext i32 %i.av to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.as, i64 %i.aw) #18
  %i.ax = load i64, ptr %9, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = call ptr @_ZN4mlir4func8ReturnOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %1, i64 %i.ax, i64 %i.az) #18
  %i.bb = load ptr, ptr %10, align 8, !tbaa !14   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.af
  br i1 %i.bc, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %"_ZN4llvm13map_to_vectorINS_8ArrayRefIN4mlir4TypeEEEZNS2_30ControlFlowToSCFTransformation27createUnreachableTerminatorENS2_8LocationERNS2_9OpBuilderERNS2_6RegionEE3$_0EEDaOT_OT0_.exit"
  call void @free(ptr noundef %i.bb) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit: ; preds = %"_ZN4llvm13map_to_vectorINS_8ArrayRefIN4mlir4TypeEEEZNS2_30ControlFlowToSCFTransformation27createUnreachableTerminatorENS2_8LocationERNS2_9OpBuilderERNS2_6RegionEE3$_0EEDaOT_OT0_.exit", %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit ], [ 0, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ]
  %.sroa.013.0 = phi ptr [ %i.ba, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit ], [ undef, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.013.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #3

declare ptr @_ZN4mlir4func8ReturnOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir30ControlFlowToSCFTransformationD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #19
  ret void
}

declare i64 @_ZN4mlir2cf12CondBranchOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare void @_ZN4mlir6Region17dropAllReferencesEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4mlir5BlockD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN4llvm12ilist_traitsIN4mlir5BlockEE18removeNodeFromListEPS2_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm12ilist_traitsIN4mlir5BlockEE21transferNodesFromListERS3_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEES9_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr) local_unnamed_addr #3

declare i64 @_ZN4mlir2cf8SwitchOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare void @_ZN4mlir17DenseElementsAttr18IntElementIteratorC1ES0_m(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64 noundef) unnamed_addr #3
end_hunk_1
begin_hunk_2_@_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_5arith12ArithDialectEEEPT_vEUlvE_EES6_l:_ZNSt10unique_ptrIN4mlir5arith12ArithDialectESt14default_deleteIS2_EED2Ev.exit
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #17, !noalias !278 ; 2 uses
  tail call void @_ZN4mlir5arith12ArithDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef %i.b) #18, !noalias !278
  store ptr %i.c, ptr %0, align 8, !tbaa !100
  ret void
}

declare void @_ZN4mlir5arith12ArithDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_2ub9UBDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.717, align 8            ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !95     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %i.a, ptr %2, align 8, !tbaa !104
  %i.b = ptrtoint ptr %2 to i64
  %i.c = call noundef ptr @_ZN4mlir11MLIRContext16getOrLoadDialectEN4llvm9StringRefENS_6TypeIDENS1_12function_refIFSt10unique_ptrINS_7DialectESt14default_deleteIS6_EEvEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull @.str.11, i64 2, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_2ub9UBDialectEvE2idE, ptr nonnull @_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_2ub9UBDialectEEEPT_vEUlvE_EES6_l, i64 %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_2ub9UBDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_2ub9UBDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_2ub9UBDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_2ub9UBDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_2ub9UBDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %.sink.split.i
  %.sink = phi ptr [ null, %.sink.split.i ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !92
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_2ub9UBDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_2ub9UBDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_2ub9UBDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_2ub9UBDialectEEEPT_vEUlvE_EES6_l(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.682") align 8 %0, i64 noundef %1) #0 comdat align 2 {
_ZNSt10unique_ptrIN4mlir2ub9UBDialectESt14default_deleteIS2_EED2Ev.exit:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104, !noalias !281
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #17, !noalias !281 ; 2 uses
  tail call void @_ZN4mlir2ub9UBDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef %i.b) #18, !noalias !281
  store ptr %i.c, ptr %0, align 8, !tbaa !100
  ret void
}

declare void @_ZN4mlir2ub9UBDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_4func11FuncDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.730, align 8            ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !95     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %i.a, ptr %2, align 8, !tbaa !106
  %i.b = ptrtoint ptr %2 to i64
  %i.c = call noundef ptr @_ZN4mlir11MLIRContext16getOrLoadDialectEN4llvm9StringRefENS_6TypeIDENS1_12function_refIFSt10unique_ptrINS_7DialectESt14default_deleteIS6_EEvEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull @.str.12, i64 4, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_4func11FuncDialectEvE2idE, ptr nonnull @_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_4func11FuncDialectEEEPT_vEUlvE_EES6_l, i64 %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_4func11FuncDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_4func11FuncDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_4func11FuncDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_4func11FuncDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_4func11FuncDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %.sink.split.i
  %.sink = phi ptr [ null, %.sink.split.i ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !92
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_4func11FuncDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_4func11FuncDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_4func11FuncDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_4func11FuncDialectEEEPT_vEUlvE_EES6_l(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.682") align 8 %0, i64 noundef %1) #0 comdat align 2 {
_ZNSt10unique_ptrIN4mlir4func11FuncDialectESt14default_deleteIS2_EED2Ev.exit:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106, !noalias !284
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #17, !noalias !284 ; 2 uses
  tail call void @_ZN4mlir4func11FuncDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef %i.b) #18, !noalias !284
  store ptr %i.c, ptr %0, align 8, !tbaa !100
  ret void
}

declare void @_ZN4mlir4func11FuncDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir17CFGToSCFInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(i64 noundef %2, ptr noundef %0) #18, !inline_history !285
  switch i32 %i.b, label %bb.c [
    i32 2, label %.thread
    i32 0, label %.thread.fold.split
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #18 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not75 = icmp eq i64 %i.e, 0
  br i1 %.not75, label %._crit_edge77, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.03176 = phi ptr [ %i.o, %._crit_edge ], [ %i.d, %bb.c ] ; 4 uses
  %.sroa.037.0.in71 = getelementptr inbounds nuw i8, ptr %.03176, i64 8
  %.sroa.037.072 = load ptr, ptr %.sroa.037.0.in71, align 8, !tbaa !66 ; 2 uses
  %.not6973 = icmp eq ptr %.sroa.037.072, %.03176
  br i1 %.not6973, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.d
  %.sroa.037.0.in = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 8
  %.sroa.037.0 = load ptr, ptr %.sroa.037.0.in, align 8, !tbaa !66 ; 2 uses
  %.not69 = icmp eq ptr %.sroa.037.0, %.03176
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.loopexit
  %.sroa.037.074 = phi ptr [ %.sroa.037.0, %.loopexit ], [ %.sroa.037.072, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.034.0 = phi ptr [ %i.h, %.lr.ph ], [ %i.k, %bb.e ] ; 3 uses
  %.not70 = icmp eq ptr %.sroa.034.0, %i.i
  br i1 %.not70, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.034.0) #18
  %i.m = tail call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef nonnull %i.l, ptr %1, i64 %2, i32 noundef %3)
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.thread, label %bb.d

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %.03176, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.f
  br i1 %.not, label %._crit_edge77, label %.preheader

._crit_edge77:                                    ; preds = %._crit_edge, %bb.c
  %i.p = icmp eq i32 %3, 1
  br i1 %i.p, label %bb.f, label %.thread

bb.f:                                             ; preds = %._crit_edge77
  %i.q = tail call i32 %1(i64 noundef %2, ptr noundef nonnull %0) #18, !inline_history !285
  br label %.thread

.thread.fold.split:                               ; preds = %bb.b
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.b, %.thread.fold.split, %._crit_edge77, %bb.f
  %.sroa.030.9 = phi i32 [ %i.q, %bb.f ], [ 0, %.thread.fold.split ], [ 1, %._crit_edge77 ], [ 1, %bb.b ], [ 0, %bb.e ]
  ret i32 %.sroa.030.9
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal range(i32 0, 2) i32 @_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_120LiftControlFlowToSCF14runOnOperationEvEUlNS1_4func6FuncOpEE_SF_S2_EENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESN_E4typeES4_OT1_EUlS4_E_EES2_lS4_(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::AnalysisManager", align 8 ; 4 uses
  %3 = alloca %"class.mlir::AnalysisManager", align 8 ; 4 uses
  %4 = alloca %"class.mlir::AnalysisManager", align 8 ; 4 uses
  %5 = alloca %class.anon.749, align 8            ; 6 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  %.not2.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not2.i, %i.e
  br i1 %.not.i, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_120LiftControlFlowToSCF14runOnOperationEvEUlNS_4func6FuncOpEE_S7_NS_10WalkResultEEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_S9_EE5valueESI_E4typeESD_OT1_ENKUlSD_E_clESD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = and i32 %i.g, 8388607
  %i.i = icmp ne i32 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = lshr i32 %i.g, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.k, 1
  %i.l = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.l
  %i.n = lshr i32 %i.g, 21
  %i.o = and i32 %i.n, 2040
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !44
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !67
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_120LiftControlFlowToSCF14runOnOperationEvEUlNS_4func6FuncOpEE_S7_NS_10WalkResultEEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_S9_EE5valueESI_E4typeESD_OT1_ENKUlSD_E_clESD_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !89
  %i.z = load ptr, ptr %.val, align 8, !tbaa !286, !nonnull !65, !align !107
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !83
  %.not.i.i = icmp eq ptr %1, %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !288
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.ac = call ptr @_ZN4mlir15AnalysisManager4nestEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %1) #18 ; 3 uses
  store ptr %i.ac, ptr %3, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %.sroa.0.0.copyload.i.i.i.i8.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8 ; 2 uses
  %i.ae = and i64 %.sroa.0.0.copyload.i.i.i.i8.i.i.i.i.i.i.i, 4
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = and i64 %.sroa.0.0.copyload.i.i.i.i8.i.i.i.i.i.i.i, -5 ; 3 uses
  %.not.not79.i.i.i.i.i.i.i = icmp eq i64 %i.ag, 0
  %.not.not10.i.i.i.i.i.i.i = or i1 %i.af, %.not.not79.i.i.i.i.i.i.i
  br i1 %.not.not10.i.i.i.i.i.i.i, label %_ZN4mlir4Pass16getChildAnalysisINS_13DominanceInfoENS_4func6FuncOpEEERT_T0_.exit.i.i, label %tailrecurse.i.i.i.i.i.i.i

tailrecurse.i.i.i.i.i.i.i:                        ; preds = %bb.d, %tailrecurse.i.i.i.i.i.i.i
  %i.ah = phi i64 [ %i.am, %tailrecurse.i.i.i.i.i.i.i ], [ %i.ag, %bb.d ]
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aj, align 8 ; 2 uses
  %i.ak = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -5 ; 3 uses
  %.not.not7.i.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  %.not.not.i.i.i.i.i.i.i = or i1 %i.al, %.not.not7.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i, label %_ZN4mlir4Pass16getChildAnalysisINS_13DominanceInfoENS_4func6FuncOpEEERT_T0_.exit.i.i, label %tailrecurse.i.i.i.i.i.i.i

_ZN4mlir4Pass16getChildAnalysisINS_13DominanceInfoENS_4func6FuncOpEEERT_T0_.exit.i.i: ; preds = %tailrecurse.i.i.i.i.i.i.i, %bb.d
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ %i.ag, %bb.d ], [ %i.am, %tailrecurse.i.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.ao = inttoptr i64 %.pre-phi.i.i.i.i.i.i.i to ptr
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !116
  %i.aq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6detail11AnalysisMap15getAnalysisImplINS_13DominanceInfoENS_4func6FuncOpEEERT_PNS_16PassInstrumentorET0_RNS_15AnalysisManagerE(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef %i.ao, ptr %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %.sroa.0.0.copyload.i.i3.i.i = load ptr, ptr %i.ab, align 8, !tbaa !288 ; 3 uses
  store ptr %.sroa.0.0.copyload.i.i3.i.i, ptr %2, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i3.i.i, i64 72
  %.sroa.0.0.copyload.i.i.i.i8.i.i.i.i.i.i = load i64, ptr %i.ar, align 8 ; 2 uses
  %i.as = and i64 %.sroa.0.0.copyload.i.i.i.i8.i.i.i.i.i.i, 4
  %i.at = icmp ne i64 %i.as, 0
  %i.au = and i64 %.sroa.0.0.copyload.i.i.i.i8.i.i.i.i.i.i, -5 ; 3 uses
  %.not.not79.i.i.i.i.i.i = icmp eq i64 %i.au, 0
  %.not.not10.i.i.i.i.i.i = or i1 %i.at, %.not.not79.i.i.i.i.i.i
  br i1 %.not.not10.i.i.i.i.i.i, label %_ZN4mlir4Pass11getAnalysisINS_13DominanceInfoEEERT_v.exit.i.i, label %tailrecurse.i.i.i.i.i.i

tailrecurse.i.i.i.i.i.i:                          ; preds = %bb.e, %tailrecurse.i.i.i.i.i.i
  %i.av = phi i64 [ %i.ba, %tailrecurse.i.i.i.i.i.i ], [ %i.au, %bb.e ]
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ax, align 8 ; 2 uses
  %i.ay = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.az = icmp ne i64 %i.ay, 0
  %i.ba = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, -5 ; 3 uses
  %.not.not7.i.i.i.i.i.i = icmp eq i64 %i.ba, 0
  %.not.not.i.i.i.i.i.i = or i1 %i.az, %.not.not7.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i, label %_ZN4mlir4Pass11getAnalysisINS_13DominanceInfoEEERT_v.exit.i.i, label %tailrecurse.i.i.i.i.i.i

_ZN4mlir4Pass11getAnalysisINS_13DominanceInfoEEERT_v.exit.i.i: ; preds = %tailrecurse.i.i.i.i.i.i, %bb.e
  %.pre-phi.i.i.i.i.i.i = phi i64 [ %i.au, %bb.e ], [ %i.ba, %tailrecurse.i.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i3.i.i, i64 24 ; 2 uses
  %i.bc = inttoptr i64 %.pre-phi.i.i.i.i.i.i to ptr
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !116
  %i.be = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6detail11AnalysisMap15getAnalysisImplINS_13DominanceInfoEPNS_9OperationEEERT_PNS_16PassInstrumentorET0_RNS_15AnalysisManagerE(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef %i.bc, ptr noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.f

bb.f:                                             ; preds = %_ZN4mlir4Pass11getAnalysisINS_13DominanceInfoEEERT_v.exit.i.i, %_ZN4mlir4Pass16getChildAnalysisINS_13DominanceInfoENS_4func6FuncOpEEERT_T0_.exit.i.i
  %i.bf = phi ptr [ %i.aq, %_ZN4mlir4Pass16getChildAnalysisINS_13DominanceInfoENS_4func6FuncOpEEERT_T0_.exit.i.i ], [ %i.be, %_ZN4mlir4Pass11getAnalysisINS_13DominanceInfoEEERT_v.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !289, !nonnull !65, !align !107
  store ptr %i.bh, ptr %5, align 8, !tbaa !90
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !290
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !291, !nonnull !65
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !91
  %i.bm = ptrtoint ptr %5 to i64
  %i.bn = call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nonnull @_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZZN12_GLOBAL__N_120LiftControlFlowToSCF14runOnOperationEvENKUlNS1_4func6FuncOpEE_clESB_EUlS4_E_EES2_lS4_, i64 %i.bm, i32 noundef 1)
  %i.bo = icmp ne i32 %i.bn, 0
  %spec.select.i.i = zext i1 %i.bo to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_120LiftControlFlowToSCF14runOnOperationEvEUlNS_4func6FuncOpEE_S7_NS_10WalkResultEEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_S9_EE5valueESI_E4typeESD_OT1_ENKUlSD_E_clESD_.exit

_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_120LiftControlFlowToSCF14runOnOperationEvEUlNS_4func6FuncOpEE_S7_NS_10WalkResultEEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_S9_EE5valueESI_E4typeESD_OT1_ENKUlSD_E_clESD_.exit: ; preds = %bb.a, %bb.b, %bb.f
  %.sroa.02.1.i = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ %spec.select.i.i, %bb.f ]
  ret i32 %.sroa.02.1.i
}

declare ptr @_ZN4mlir15AnalysisManager4nestEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6detail11AnalysisMap15getAnalysisImplINS_13DominanceInfoENS_4func6FuncOpEEERT_PNS_16PassInstrumentorET0_RNS_15AnalysisManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::tuple.804", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.807", align 8    ; 4 uses
  %6 = alloca %"struct.std::pair.773", align 16   ; 7 uses
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_13DominanceInfoEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir6TypeID3getINS_13DominanceInfoEEES0_v.exit, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_13DominanceInfoEvE13resolveTypeIDEvE2id) #18
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4mlir6TypeID3getINS_13DominanceInfoEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 49), i64 19) #18
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_13DominanceInfoEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_13DominanceInfoEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_13DominanceInfoEEES0_v.exit

_ZN4mlir6TypeID3getINS_13DominanceInfoEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_13DominanceInfoEvE13resolveTypeIDEvE2id, align 8, !tbaa !12 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !312 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !119, !noalias !312 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !120, !noalias !312 ; 4 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_13DominanceInfoEEES0_v.exit
  %i.l = add i32 %i.j, -1                         ; 2 uses
  %i.m = ptrtoint ptr %.sroa.01.0.copyload.i.i to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.l, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !72, !noalias !313
  %i.w = and i32 %i.r, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !121

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %i.ae, %bb.e ], [ %i.s, %bb.d ]
  %.01419.i.i.i.i.i = phi i32 [ %i.ad, %bb.e ], [ %i.r, %bb.d ]
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.z ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !12, !noalias !313
  %i.ab = icmp eq ptr %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.ab, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findERKS3_.exit.loopexit.i, label %bb.e, !prof !76

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = add nuw i32 %.01419.i.i.i.i.i, 1
  %i.ad = and i32 %i.ac, %i.l                     ; 3 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = lshr i64 %i.ae, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !72, !noalias !313
  %i.ai = and i32 %i.ad, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !122
end_hunk_2
