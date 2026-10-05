Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SparseTensorTransformOps?download=true
inline.NumInlined: 2453
inline.NumDeleted: 1520
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
%"union.llvm::detail::UniqueFunctionBase<llvm::ParseResult, mlir::OpAsmParser &, mlir::OperationState &>::StorageT" = type { ptr, [16 x i8] }
%"class.mlir::transform::MatchSparseInOut" = type { %"class.mlir::Op" }
%"class.mlir::Op" = type { %"class.mlir::OpState" }
%"class.mlir::OpState" = type { ptr }
%"class.llvm::function_ref" = type { ptr, i64 }
%"class.mlir::DiagnosedDefiniteFailure" = type { %"class.mlir::InFlightDiagnostic" }
%"class.std::function.312" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::function" = type { %"class.std::_Function_base", ptr }

$_ZN4mlir13sparse_tensor27hasAnySparseOperandOrResultEPNS_9OperationE = comdat any

$_ZN4mlir9transform16TransformResults3setIN4llvm14iterator_rangeINS3_20filter_iterator_implIPKPNS_9OperationEZNKS0_14TransformState13getPayloadOpsENS_5ValueEEUlS7_E_St26bidirectional_iterator_tagEEEEEEvNS_8OpResultEOT_ = comdat any

$_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE = comdat any

$_ZNK4mlir6detail10TypedValueINS_9transform28TransformHandleTypeInterfaceEE7getTypeEv = comdat any

$_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir9TypeRangeENS0_12PointerUnionIJPKNS3_5ValueEPKNS3_4TypeEPNS3_9OpOperandEPNS3_6detail12OpResultImplEPKNS0_8RepeatedIS9_EEPKNSH_IS6_EEEEES9_S9_S9_E8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS3_13sparse_tensor16hasAnySparseTypeES4_EUlS9_E_EEET_SX_SX_T0_St26random_access_iterator_tag = comdat any

$_ZN4mlir10DiagnosticD2Ev = comdat any

$_ZN4llvm15SmallVectorImplIN4mlir10DiagnosticEE12emplace_backIJS2_EEERS2_DpOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE18growAndEmplaceBackIJS2_EEERS2_DpOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE19moveElementsForGrowEPS2_ = comdat any

$_ZN4llvm15SmallVectorImplIN4mlir18DiagnosticArgumentEEaSEOS3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_ = comdat any

$_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE6insertINS_20filter_iterator_implIPKS3_ZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEEvEEPS3_SF_T_SG_ = comdat any

$_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState13usePropertiesINS1_15EmptyPropertiesEEEvRT_EUlS2_E_EEvlS2_ = comdat any

$_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState13usePropertiesINS1_15EmptyPropertiesEEEvRT_EUlS2_S2_E_EEvlS2_S2_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESF_IJOS8_EEEEERS9_DpOT_ = comdat any

$_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_13sparse_tensor19SparseTensorDialectEEEPT_vEUlvE_EES6_l = comdat any

$_ZN4mlir23RegisteredOperationName6insertINS_9transform16MatchSparseInOutEEEvRNS_7DialectE = comdat any

$_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEED0Ev = comdat any

$_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE = comdat any

$_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE = comdat any

$_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE8hasTraitENS_6TypeIDE = comdat any

$_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE18getParseAssemblyFnEv = comdat any

$_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE = comdat any

$_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE = comdat any

$_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE16verifyInvariantsEPNS_9OperationE = comdat any

$_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE22verifyRegionInvariantsEPNS_9OperationE = comdat any

$_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE = comdat any

$_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE15setInherentAttrEPNS_9OperationENS_10StringAttrENS_9AttributeE = comdat any

$_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE21populateInherentAttrsEPNS_9OperationERNS_13NamedAttrListE = comdat any

$_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE = comdat any

$_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE21getOpPropertyByteSizeEv = comdat any

$_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE14initPropertiesENS_13OperationNameENS_11PropertyRefES6_ = comdat any

$_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE16deletePropertiesENS_11PropertyRefE = comdat any

$_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE25populateDefaultPropertiesENS_13OperationNameENS_11PropertyRefE = comdat any

$_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE21setPropertiesFromAttrENS_13OperationNameENS_11PropertyRefENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE = comdat any

$_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE19getPropertiesAsAttrEPNS_9OperationE = comdat any

$_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE14copyPropertiesENS_11PropertyRefES5_ = comdat any

$_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE17comparePropertiesENS_11PropertyRefES5_ = comdat any

$_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE14hashPropertiesENS_11PropertyRefE = comdat any

$_ZN4mlir6detail12InterfaceMap25insertPotentialInterfacesINS_9transform20TransformOpInterface5TraitINS3_16MatchSparseInOutEEENS3_16MatchOpInterface5TraitIS6_EEJNS3_22SingleOpMatcherOpTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEvv = comdat any

$_ZN4mlir9transform6detail35TransformOpInterfaceInterfaceTraits5ModelINS0_16MatchSparseInOutEE5applyEPKNS2_7ConceptEPNS_9OperationERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateE = comdat any

$_ZN4mlir9transform6detail35TransformOpInterfaceInterfaceTraits5ModelINS0_16MatchSparseInOutEE28allowsRepeatedHandleOperandsEPKNS2_7ConceptEPNS_9OperationE = comdat any

$_ZN4mlir9transform22SingleOpMatcherOpTraitINS0_16MatchSparseInOutEE5applyERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateE = comdat any

$_ZN4mlir9transform25AtMostOneOpMatcherOpTraitINS0_16MatchSparseInOutEE5applyERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateE = comdat any

$_ZN4mlir6detail12InterfaceMap11insertModelINS_9transform6detail31MatchOpInterfaceInterfaceTraits5ModelINS3_16MatchSparseInOutEEEEEvv = comdat any

$_ZN4mlir6detail38MemoryEffectOpInterfaceInterfaceTraits5ModelINS_9transform16MatchSparseInOutEE10getEffectsEPKNS1_7ConceptEPNS_9OperationERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE = comdat any

$_ZN4mlir13OperationName4ImplD2Ev = comdat any

$_ZN4mlir13OperationName4ImplD0Ev = comdat any

$_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS6_20TransformOpInterface5TraitENS6_16MatchOpInterface5TraitENS6_22SingleOpMatcherOpTraitENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE = comdat any

$_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_ = comdat any

$_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform16MatchSparseInOutEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS4_28TransformHandleTypeInterfaceEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12OpInvariantsIS5_EENS4_20TransformOpInterface5TraitIS5_EENS4_16MatchOpInterface5TraitIS5_EENS4_22SingleOpMatcherOpTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE = comdat any

$_ZN4mlir9transform25AtMostOneOpMatcherOpTraitINS0_16MatchSparseInOutEE11verifyTraitEPNS_9OperationE = comdat any

$_ZN4llvm15SmallVectorImplISt8functionIFvPN4mlir9transform16TransformDialectEEEEaSERKS8_ = comdat any

$_ZN4llvm15SmallVectorImplISt8functionIFvPN4mlir11MLIRContextEEEEaSERKS7_ = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZTVN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEEE = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZTVN4mlir13OperationName4ImplE = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_9transform22SingleOpMatcherOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_9transform22SingleOpMatcherOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [40 x i8] c"operation has no sparse input or output\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"expected DictionaryAttr to set properties\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"operand\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_9transform16MatchSparseInOutEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"transform.sparse_tensor.match.sparse_inout\00", align 1
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.6 = private unnamed_addr constant [3 x i8] c" #\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c" must be TransformHandleTypeInterface instance, but got \00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.8 = private unnamed_addr constant [96 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::transform::TransformHandleTypeInterface]\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_15EmptyPropertiesEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.16 = private unnamed_addr constant [48 x i8] c"number of operands and types do not match: got \00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c" operands and \00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c" types\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZZN12_GLOBAL__N_137SparseTensorTransformDialectExtension13resolveTypeIDEvE2id = internal global %"class.mlir::SelfOwningTypeID" zeroinitializer, align 8
@_ZTVN12_GLOBAL__N_137SparseTensorTransformDialectExtensionE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir9transform25TransformDialectExtensionIN12_GLOBAL__N_137SparseTensorTransformDialectExtensionEJEED2Ev, ptr @_ZN12_GLOBAL__N_137SparseTensorTransformDialectExtensionD0Ev, ptr @_ZNK4mlir16DialectExtensionIN12_GLOBAL__N_137SparseTensorTransformDialectExtensionEJNS_9transform16TransformDialectEEE5applyEPNS_11MLIRContextEN4llvm15MutableArrayRefIPNS_7DialectEEE, ptr @_ZNK4mlir16DialectExtensionIN12_GLOBAL__N_137SparseTensorTransformDialectExtensionEJNS_9transform16TransformDialectEEE5cloneEv, ptr @_ZNK4mlir9transform25TransformDialectExtensionIN12_GLOBAL__N_137SparseTensorTransformDialectExtensionEJEE5applyEPNS_11MLIRContextEPNS0_16TransformDialectE] }, align 8
@_ZTVN4mlir9transform25TransformDialectExtensionIN12_GLOBAL__N_137SparseTensorTransformDialectExtensionEJEEE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir9transform25TransformDialectExtensionIN12_GLOBAL__N_137SparseTensorTransformDialectExtensionEJEED2Ev, ptr @_ZN4mlir9transform25TransformDialectExtensionIN12_GLOBAL__N_137SparseTensorTransformDialectExtensionEJEED0Ev, ptr @_ZNK4mlir16DialectExtensionIN12_GLOBAL__N_137SparseTensorTransformDialectExtensionEJNS_9transform16TransformDialectEEE5applyEPNS_11MLIRContextEN4llvm15MutableArrayRefIPNS_7DialectEEE, ptr @_ZNK4mlir16DialectExtensionIN12_GLOBAL__N_137SparseTensorTransformDialectExtensionEJNS_9transform16TransformDialectEEE5cloneEv, ptr @_ZNK4mlir9transform25TransformDialectExtensionIN12_GLOBAL__N_137SparseTensorTransformDialectExtensionEJEE5applyEPNS_11MLIRContextEPNS0_16TransformDialectE] }, align 8
@.str.19 = private unnamed_addr constant [10 x i8] c"transform\00", align 1
@_ZTVN4mlir20DialectExtensionBaseE = external unnamed_addr constant { [6 x ptr] }, align 8
@.str.20 = private unnamed_addr constant [14 x i8] c"sparse_tensor\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor19SparseTensorDialectEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZTVN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEEE = linkonce_odr unnamed_addr constant { [25 x ptr] } { [25 x ptr] [ptr null, ptr null, ptr @_ZN4mlir13OperationName4ImplD2Ev, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEED0Ev, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE8hasTraitENS_6TypeIDE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE18getParseAssemblyFnEv, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE16verifyInvariantsEPNS_9OperationE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE22verifyRegionInvariantsEPNS_9OperationE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE15setInherentAttrEPNS_9OperationENS_10StringAttrENS_9AttributeE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE21populateInherentAttrsEPNS_9OperationERNS_13NamedAttrListE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE21getOpPropertyByteSizeEv, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE14initPropertiesENS_13OperationNameENS_11PropertyRefES6_, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE16deletePropertiesENS_11PropertyRefE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE25populateDefaultPropertiesENS_13OperationNameENS_11PropertyRefE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE21setPropertiesFromAttrENS_13OperationNameENS_11PropertyRefENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE19getPropertiesAsAttrEPNS_9OperationE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE14copyPropertiesENS_11PropertyRefES5_, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE17comparePropertiesENS_11PropertyRefES5_, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform16MatchSparseInOutEE14hashPropertiesENS_11PropertyRefE] }, comdat, align 8
@.str.21 = private unnamed_addr constant [81 x i8] c"SingleOpMatchOpTrait requires the operand handle to point to a single payload op\00", align 1
@.str.22 = private unnamed_addr constant [89 x i8] c"AtMostOneOpMatcherOpTrait requires the operand handle to point to at most one payload op\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.23 = private unnamed_addr constant [88 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::transform::TransformOpInterface]\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.24 = private unnamed_addr constant [84 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::transform::MatchOpInterface]\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.25 = private unnamed_addr constant [80 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemoryEffectOpInterface]\00", align 1
@_ZTVN4mlir13OperationName4ImplE = linkonce_odr unnamed_addr constant { [25 x ptr] } { [25 x ptr] [ptr null, ptr null, ptr @_ZN4mlir13OperationName4ImplD2Ev, ptr @_ZN4mlir13OperationName4ImplD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.26 = private unnamed_addr constant [84 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::ZeroRegions<Empty>]\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.27 = private unnamed_addr constant [82 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneResult<Empty>]\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.28 = private unnamed_addr constant [140 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::transform::TransformHandleTypeInterface>::Impl<Empty>]\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.29 = private unnamed_addr constant [87 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::ZeroSuccessors<Empty>]\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.30 = private unnamed_addr constant [83 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneOperand<Empty>]\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.31 = private unnamed_addr constant [85 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OpInvariants<Empty>]\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.32 = private unnamed_addr constant [102 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::transform::TransformOpInterface::Trait<Empty>]\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.33 = private unnamed_addr constant [98 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::transform::MatchOpInterface::Trait<Empty>]\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_9transform22SingleOpMatcherOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_9transform22SingleOpMatcherOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.34 = private unnamed_addr constant [97 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::transform::SingleOpMatcherOpTrait<Empty>]\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.35 = private unnamed_addr constant [94 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemoryEffectOpInterface::Trait<Empty>]\00", align 1
@.str.36 = private unnamed_addr constant [108 x i8] c"AtMostOneOpMatcherOpTrait/SingleOpMatchOpTrait requires the op handle to be of TransformHandleTypeInterface\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"this operation has empty properties\00", align 1

@_ZN4mlir9transform6detail34MatchSparseInOutGenericAdaptorBaseC1ENS0_16MatchSparseInOutE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail34MatchSparseInOutGenericAdaptorBaseC2ENS0_16MatchSparseInOutE
@_ZN4mlir9transform23MatchSparseInOutAdaptorC1ENS0_16MatchSparseInOutE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform23MatchSparseInOutAdaptorC2ENS0_16MatchSparseInOutE

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform16MatchSparseInOut14matchOperationEPNS_9OperationERNS0_16TransformResultsERNS0_14TransformStateE(ptr dead_on_unwind noalias writable sret(%"class.mlir::DiagnosedSilenceableFailure") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(384) %3, ptr noundef nonnull align 8 dereferenceable(328) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.mlir::Diagnostic", align 8  ; 16 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::iterator_range", align 8 ; 7 uses
  %i.a = tail call noundef zeroext i1 @_ZN4mlir13sparse_tensor27hasAnySparseOperandOrResultEPNS_9OperationE(ptr noundef %2)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.d, align 1, !tbaa !17
  store ptr @.str, ptr %6, align 8, !tbaa !18
  store i8 3, ptr %i.c, align 8, !tbaa !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !176
  store ptr %.sroa.0.0.copyload.i, ptr %5, align 8, !noalias !176
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 2, ptr %i.e, align 8, !tbaa !191, !noalias !176
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.g, ptr %i.f, align 8, !tbaa !30, !noalias !176
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 0, ptr %i.h, align 8, !tbaa !31, !noalias !176
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 4, ptr %i.i, align 4, !tbaa !32, !noalias !176
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 0, i64 48, i1 false), !noalias !176
  store ptr %i.l, ptr %i.k, align 8, !tbaa !30, !noalias !176
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 184
  store i32 0, ptr %i.m, align 8, !tbaa !31, !noalias !176
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 188
  store i32 0, ptr %i.n, align 4, !tbaa !32, !noalias !176
  %i.o = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(34) %6) #19, !noalias !176 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !30, !alias.scope !192
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.q, align 8, !tbaa !31, !alias.scope !192
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.r, align 4, !tbaa !32, !alias.scope !192
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 0, ptr %i.s, align 8, !alias.scope !192
  %i.t = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4llvm15SmallVectorImplIN4mlir10DiagnosticEE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(192) %5) ; 0 uses
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %1, align 8, !tbaa !35
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -16
  %i.w = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 noundef 0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.x = load ptr, ptr %1, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.ab = tail call { ptr, i64 } @_ZNK4mlir9transform14TransformState17getPayloadOpsViewENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(328) %4, ptr %.sroa.0.0.copyload.i.i.i.i) #19, !noalias !193 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0      ; 3 uses
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %.idx.i.i = shl i64 %i.ad, 3
  %i.ae = getelementptr i8, ptr %i.ac, i64 %.idx.i.i ; 5 uses
  %.not2.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not2.i.i.i.i.i, label %_ZNK4mlir9transform14TransformState13getPayloadOpsENS_5ValueE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.010.0.i.i = phi ptr [ %i.ag, %bb.d ], [ %i.ac, %bb.c ] ; 3 uses
  %i.af = load ptr, ptr %.sroa.010.0.i.i, align 8, !tbaa !41, !noalias !195
  %.not1.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not1.i.i.i.i.i, label %bb.d, label %_ZNK4mlir9transform14TransformState13getPayloadOpsENS_5ValueE.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i9 = icmp eq ptr %i.ag, %i.ae
  br i1 %.not.i.i.i.i.i9, label %_ZNK4mlir9transform14TransformState13getPayloadOpsENS_5ValueE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNK4mlir9transform14TransformState13getPayloadOpsENS_5ValueE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %bb.c
  %.sroa.010.1.i.i = phi ptr [ %i.ac, %bb.c ], [ %.sroa.010.0.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ae, %bb.d ]
  store ptr %.sroa.010.1.i.i, ptr %7, align 8, !alias.scope !195
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ae, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !alias.scope !195
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.ae, ptr %i.ah, align 8, !alias.scope !195
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.ae, ptr %.sroa.415.0..sroa_idx.i.i, align 8, !alias.scope !195
  call void @_ZN4mlir9transform16TransformResults3setIN4llvm14iterator_rangeINS3_20filter_iterator_implIPKPNS_9OperationEZNKS0_14TransformState13getPayloadOpsENS_5ValueEEUlS7_E_St26bidirectional_iterator_tagEEEEEEvNS_8OpResultEOT_(ptr noundef nonnull align 8 dereferenceable(384) %3, ptr %i.w, ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ai, ptr %0, align 8, !tbaa !30, !alias.scope !196
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.aj, align 8, !tbaa !31, !alias.scope !196
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.ak, align 4, !tbaa !32, !alias.scope !196
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.al, align 8, !tbaa !44, !alias.scope !196
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4mlir9transform14TransformState13getPayloadOpsENS_5ValueE.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir13sparse_tensor27hasAnySparseOperandOrResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %1 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %2 = alloca %"class.mlir::TypeRange", align 8   ; 5 uses
  %3 = alloca %"class.mlir::ValueTypeRange.174", align 8 ; 6 uses
  %4 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %5 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %6 = alloca %"class.mlir::TypeRange", align 8   ; 5 uses
  %7 = alloca %"class.mlir::ValueTypeRange", align 8 ; 6 uses
  %8 = alloca %"class.mlir::OperandRange", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir13sparse_tensor19hasAnySparseOperandEPNS_9OperationE.exit, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN4mlir9transform16MatchSparseInOut21setPropertiesFromAttrERNS_15EmptyPropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE:bb.a
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !211
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !68
  %.not = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, i64 noundef %3) #19, !inline_history !1
  %i.c = load ptr, ptr %5, align 8, !tbaa !76
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 3, ptr %4, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.1, ptr %i.e, align 8, !tbaa !81
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !31   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !32
  %.not.i.i.i.i.i = icmp ult i32 %i.g, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !61

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.j = zext i32 %i.g to i64
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.m = load i32, ptr %i.f, align 8, !tbaa !31
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.f, align 8, !tbaa !31
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.pr = load ptr, ptr %5, align 8, !tbaa !76
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #19
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !82, !range !83, !noundef !84
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.o, align 8, !tbaa !82
  br i1 %i.q, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.r) #19
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.0.0 = phi i8 [ 0, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN4mlir9transform16MatchSparseInOut19getPropertiesAsAttrEPNS_11MLIRContextERKNS_15EmptyPropertiesE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #4 align 2 {
_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit:
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN4mlir9transform16MatchSparseInOut21computePropertiesHashERKNS_15EmptyPropertiesE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::array.239", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %1, i64 noundef 0) #19
  %i.b = xor i64 %i.a, -49064778989728563
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i8 } @_ZN4mlir9transform16MatchSparseInOut15getInherentAttrEPNS_11MLIRContextERKNS_15EmptyPropertiesEN4llvm9StringRefE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr nofree readnone captures(none) %2, i64 %3) local_unnamed_addr #4 align 2 {
bb.a:
  ret { ptr, i8 } { ptr undef, i8 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir9transform16MatchSparseInOut15setInherentAttrERNS_15EmptyPropertiesEN4llvm9StringRefENS_9AttributeE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #4 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir9transform16MatchSparseInOut21populateInherentAttrsEPNS_11MLIRContextERKNS_15EmptyPropertiesERNS_13NamedAttrListE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %2) local_unnamed_addr #4 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN4mlir9transform16MatchSparseInOut19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree readnone captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, ptr nofree readnone captures(none) %2, i64 %3) local_unnamed_addr #4 align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform16MatchSparseInOut5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::Value", align 8       ; 2 uses
  store ptr %3, ptr %4, align 8
  %i.a = ptrtoint ptr %4 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.a, i64 1) #19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32
  %.not = icmp ult i32 %i.d, %i.f
  br i1 %.not, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = add nuw nsw i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.i, i64 noundef %i.h, i64 noundef 8) #19
  %.pre8.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !31
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %bb.a, %bb.b
  %.pre8.i.i = phi i32 [ %i.d, %bb.a ], [ %.pre8.pre.i.i, %bb.b ]
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.k = zext i32 %.pre8.i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  store ptr %2, ptr %i.l, align 1
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !31
  %i.m = add i32 %.pre.i.i, 1
  store i32 %i.m, ptr %i.c, align 8, !tbaa !31
  ret void
}

declare void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304), i64, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform16MatchSparseInOut6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %5 = alloca %"struct.mlir::OperationState", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %5, ptr %1, ptr nonnull @.str.5, i64 42) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  %i.a = ptrtoint ptr %4 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %5, i64 %i.a, i64 1) #19
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 76
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32
  %.not.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i, label %_ZN4mlir9transform16MatchSparseInOut5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = add nuw nsw i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.i, i64 noundef %i.h, i64 noundef 8) #19
  %.pre8.pre.i.i.i = load i32, ptr %i.c, align 8, !tbaa !31
  br label %_ZN4mlir9transform16MatchSparseInOut5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueE.exit

_ZN4mlir9transform16MatchSparseInOut5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueE.exit: ; preds = %bb.a, %bb.b
  %.pre8.i.i.i = phi i32 [ %i.d, %bb.a ], [ %.pre8.pre.i.i.i, %bb.b ]
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.k = zext i32 %.pre8.i.i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  store ptr %2, ptr %i.l, align 1
  %.pre.i.i.i = load i32, ptr %i.c, align 8, !tbaa !31
  %i.m = add i32 %.pre.i.i.i, 1
  store i32 %i.m, ptr %i.c, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.n = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %5) #19 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !86
  %i.r = icmp eq ptr %i.q, @_ZN4mlir6detail14TypeIDResolverINS_9transform16MatchSparseInOutEvE2idE
  %6 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_9transform16MatchSparseInOutEvE2idE
  %spec.select.i.i.i.i = and i1 %6, %i.r
  %spec.select.i.i = select i1 %spec.select.i.i.i.i, ptr %i.n, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret ptr %spec.select.i.i
}

declare void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304), ptr, ptr, i64) unnamed_addr #3

declare noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform16MatchSparseInOut6createERNS_20ImplicitLocOpBuilderENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  %i.b = tail call ptr @_ZN4mlir9transform16MatchSparseInOut6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.sroa.0.0.copyload.i, ptr %1, ptr %2)
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform16MatchSparseInOut5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, ptr %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.mlir::Value", align 8       ; 2 uses
  store ptr %4, ptr %5, align 8
  %i.a = ptrtoint ptr %5 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.a, i64 1) #19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = add i64 %3, %i.e                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !32
  %i.i = zext i32 %i.h to i64
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef 8) #19
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !31 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi.i.i = phi i64 [ %i.e, %bb.a ], [ %.pre28.i.i, %bb.b ]
  %i.l = phi i32 [ %i.d, %bb.a ], [ %.pre.i.i, %bb.b ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.o = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #19
  %i.p = ptrtoint ptr %i.o to i64
  store i64 %i.p, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !88
  %i.q = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.q, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.c, align 8, !tbaa !31
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.s = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.l, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.t = trunc i64 %3 to i32
  %i.u = add i32 %i.s, %i.t
  store i32 %i.u, ptr %i.c, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform16MatchSparseInOut6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.5, i64 42) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %4, ptr %5, align 8
  %i.a = ptrtoint ptr %5 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %i.a, i64 1) #19
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = add i64 %3, %i.e                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !32
  %i.i = zext i32 %i.h to i64
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef 8) #19
  %.pre.i.i.i = load i32, ptr %i.c, align 8, !tbaa !31 ; 2 uses
  %.pre28.i.i.i = zext i32 %.pre.i.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi.i.i.i = phi i64 [ %i.e, %bb.a ], [ %.pre28.i.i.i, %bb.b ]
  %i.l = phi i32 [ %i.d, %bb.a ], [ %.pre.i.i.i, %bb.b ]
  %.not8.i.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i.i, label %_ZN4mlir9transform16MatchSparseInOut5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueE.exit, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.pre-phi.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.010.i.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.o = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i.i) #19
  %i.p = ptrtoint ptr %i.o to i64
  store i64 %i.p, ptr %.010.i.i.i.i.i.i.i, align 8, !tbaa !88
  %i.q = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.q, %3
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre27.i.i.i = load i32, ptr %i.c, align 8, !tbaa !31
  br label %_ZN4mlir9transform16MatchSparseInOut5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueE.exit

_ZN4mlir9transform16MatchSparseInOut5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i.i
  %i.s = phi i32 [ %.pre27.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i.i ], [ %i.l, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i ]
  %i.t = trunc i64 %3 to i32
  %i.u = add i32 %i.s, %i.t
  store i32 %i.u, ptr %i.c, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.v = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #19 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86
  %i.z = icmp eq ptr %i.y, @_ZN4mlir6detail14TypeIDResolverINS_9transform16MatchSparseInOutEvE2idE
  %7 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_9transform16MatchSparseInOutEvE2idE
  %spec.select.i.i.i.i = and i1 %7, %i.z
  %spec.select.i.i = select i1 %spec.select.i.i.i.i, ptr %i.v, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform16MatchSparseInOut6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  %i.b = tail call ptr @_ZN4mlir9transform16MatchSparseInOut6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.sroa.0.0.copyload.i, i64 %1, i64 %2, ptr %3)
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform16MatchSparseInOut5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.98") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %4, i64 %5) #19
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !62 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.b, align 8
  %.idx.i.i = shl nuw nsw i64 %.sroa.2.0.copyload, 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = add nsw i64 %.sroa.2.0.copyload, %i.e    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.h = load i32, ptr %i.g, align 4, !tbaa !32
  %i.i = zext i32 %i.h to i64
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef 16) #19
  %.pre8.pre.i.i.i.i = load i32, ptr %i.c, align 8, !tbaa !31
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %.pre8.i.i.i.i = phi i32 [ %i.d, %bb.a ], [ %.pre8.pre.i.i.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.m = zext i32 %.pre8.i.i.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 8 %.sroa.0.0.copyload, i64 %.idx.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.c, align 8, !tbaa !31
  br label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit

_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i, %bb.c
  %i.o = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.c ]
  %i.p = trunc i64 %.sroa.2.0.copyload to i32
  %i.q = add i32 %i.o, %i.p
  store i32 %i.q, ptr %i.c, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !31   ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = add i64 %3, %i.u                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.x = load i32, ptr %i.w, align 4, !tbaa !32
  %i.y = zext i32 %i.x to i64
  %i.z = icmp ugt i64 %i.v, %i.y
  br i1 %i.z, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull %i.aa, i64 noundef %i.v, i64 noundef 8) #19
  %.pre.i.i = load i32, ptr %i.s, align 8, !tbaa !31 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.u, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ab = phi i32 [ %i.t, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.ae = tail call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #19
  %i.af = ptrtoint ptr %i.ae to i64
  store i64 %i.af, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !88
  %i.ag = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ag, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.s, align 8, !tbaa !31
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.ai = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ab, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.aj = trunc i64 %3 to i32
  %i.ak = add i32 %i.ai, %i.aj
  store i32 %i.ak, ptr %i.s, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform16MatchSparseInOut6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.98") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %1, ptr nonnull @.str.5, i64 42) #19
  call void @_ZN4mlir9transform16MatchSparseInOut5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.98") align 8 %6)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_9transform16MatchSparseInOutEvE2idE
  %8 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_9transform16MatchSparseInOutEvE2idE
  %spec.select.i.i.i.i = and i1 %8, %i.e
  %spec.select.i.i = select i1 %spec.select.i.i.i.i, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform16MatchSparseInOut6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.98") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.5, i64 42) #19
  call void @_ZN4mlir9transform16MatchSparseInOut5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.98") align 8 %5)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #19 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !86
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_9transform16MatchSparseInOutEvE2idE
  %7 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_9transform16MatchSparseInOutEvE2idE
  %spec.select.i.i.i.i.i = and i1 %7, %i.f
  %spec.select.i.i.i = select i1 %spec.select.i.i.i.i.i, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform16MatchSparseInOut5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.98") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %class.anon.240, align 1            ; 3 uses
  %9 = alloca %class.anon.242, align 1            ; 3 uses
  tail call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %4, i64 %5) #19
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_15EmptyPropertiesEvE2idE, ptr %i.a, align 8, !tbaa !68
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  store ptr %6, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.b = ptrtoint ptr %8 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState13usePropertiesINS1_15EmptyPropertiesEEEvRT_EUlS2_E_EEvlS2_, ptr %i.c, align 8, !tbaa !91
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.b, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.d = ptrtoint ptr %9 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState13usePropertiesINS1_15EmptyPropertiesEEEvRT_EUlS2_S2_E_EEvlS2_S2_, ptr %i.e, align 8, !tbaa !91
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !62 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.g, align 8
  %.idx.i.i = shl nuw nsw i64 %.sroa.2.0.copyload, 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = add nsw i64 %.sroa.2.0.copyload, %i.j    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.m = load i32, ptr %i.l, align 4, !tbaa !32
  %i.n = zext i32 %i.m to i64
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef 16) #19
  %.pre8.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !31
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %.pre8.i.i.i.i = phi i32 [ %i.i, %bb.a ], [ %.pre8.pre.i.i.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.r = zext i32 %.pre8.i.i.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 8 %.sroa.0.0.copyload, i64 %.idx.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !31
  br label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit

_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i, %bb.c
  %i.t = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.c ]
  %i.u = trunc i64 %.sroa.2.0.copyload to i32
  %i.v = add i32 %i.t, %i.u
  store i32 %i.v, ptr %i.h, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !31   ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = add i64 %3, %i.z                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !32
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp ugt i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #19
  %.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !31 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.z, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ag = phi i32 [ %i.y, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #19
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !88
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !31
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform16MatchSparseInOut6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.98") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.5, i64 42) #19
  call void @_ZN4mlir9transform16MatchSparseInOut5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.98") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_9transform16MatchSparseInOutEvE2idE
  %9 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_9transform16MatchSparseInOutEvE2idE
  %spec.select.i.i.i.i = and i1 %9, %i.e
  %spec.select.i.i = select i1 %spec.select.i.i.i.i, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform16MatchSparseInOut6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.98") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.5, i64 42) #19
  call void @_ZN4mlir9transform16MatchSparseInOut5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.98") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #19 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !86
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_9transform16MatchSparseInOutEvE2idE
  %8 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_9transform16MatchSparseInOutEvE2idE
  %spec.select.i.i.i.i.i = and i1 %8, %i.f
  %spec.select.i.i.i = select i1 %spec.select.i.i.i.i.i, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform16MatchSparseInOut20verifyInvariantsImplEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
_ZN4mlir9transform16MatchSparseInOut14getODSOperandsEj.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call fastcc i8 @_ZL58__mlir_ods_local_type_constraint_SparseTensorTransformOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.a, ptr %i.g, ptr nonnull @.str.2, i64 7, i32 noundef 0)
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.a, label %.loopexit

bb.a:                                             ; preds = %_ZN4mlir9transform16MatchSparseInOut14getODSOperandsEj.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !35
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -16
  %i.l = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 noundef 0) #19
  %i.m = load ptr, ptr %0, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.0.copyload.i.i.i.i.i32 = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i32, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call fastcc i8 @_ZL58__mlir_ods_local_type_constraint_SparseTensorTransformOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.m, ptr %i.p, ptr nonnull @.str.3, i64 6, i32 noundef 0)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %_ZN4mlir9transform16MatchSparseInOut14getODSOperandsEj.exit
  %.sroa.019.6 = phi i8 [ %i.q, %bb.a ], [ 0, %_ZN4mlir9transform16MatchSparseInOut14getODSOperandsEj.exit ]
  ret i8 %.sroa.019.6
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZL58__mlir_ods_local_type_constraint_SparseTensorTransformOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %0, ptr %1, ptr %2, i64 %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !94     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.8, i64 49), i64 45) #19
  store ptr %i.f, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !68 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !30   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.g, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.k = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i, 1    ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i, i64 %i.k ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !68
  %i.m = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = xor i64 %i.k, -1
  %i.p = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i, %i.o
  %.112.i.i.i.i.i.i.i.i.i.i = select i1 %i.m, ptr %i.n, ptr %.01116.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.k ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, !llvm.loop !3

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.g, %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.pre-phi.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i
  %i.s = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !86
  %i.t = icmp eq ptr %i.s, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.t, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread

_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !97
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread, label %bb.t

_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, %bb.d, %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 5, ptr %i.w, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !17
  store ptr %2, ptr %10, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %3, ptr %i.y, align 8, !tbaa !18
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %9, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %10) #19
  %i.z = load ptr, ptr %9, align 8, !tbaa !76
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i32 3, ptr %8, align 8, !tbaa !79
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.6, ptr %i.ab, align 8, !tbaa !81
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 12 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !31 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !32
  %.not.i.i.i.i.i = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f, !prof !61

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !31
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !31
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %.pr = load ptr, ptr %9, align 8, !tbaa !76
  %.not.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i4, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i32 5, ptr %7, align 8, !tbaa !79
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = zext i32 %4 to i64
  store i64 %i.am, ptr %i.al, align 8, !tbaa !18
  %i.an = load i32, ptr %i.ac, align 8, !tbaa !31 ; 2 uses
  %i.ao = load i32, ptr %i.ae, align 4, !tbaa !32
  %.not.i.i.i.i.i5 = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i.i.i.i.i5, label %bb.j, label %bb.i, !prof !61

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.j:                                             ; preds = %bb.h
  %i.ap = zext i32 %i.an to i64
  %i.aq = load ptr, ptr %i.aa, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.as = load i32, ptr %i.ac, align 8, !tbaa !31
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ac, align 8, !tbaa !31
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.pr12 = load ptr, ptr %9, align 8, !tbaa !76
  %.not.i.i6 = icmp eq ptr %.pr12, null
  br i1 %.not.i.i6, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i32 3, ptr %6, align 8, !tbaa !79
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.7, ptr %i.au, align 8, !tbaa !81
  %.sroa.2.0..sroa_idx.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 56, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i7, align 8, !tbaa !62
  %i.av = load i32, ptr %i.ac, align 8, !tbaa !31 ; 2 uses
  %i.aw = load i32, ptr %i.ae, align 4, !tbaa !32
  %.not.i.i.i.i.i8 = icmp ult i32 %i.av, %i.aw
end_hunk_1
