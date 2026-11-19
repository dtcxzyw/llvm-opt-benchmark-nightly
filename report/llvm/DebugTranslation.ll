Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DebugTranslation?download=true
inline.NumInlined: 2927
inline.NumDeleted: 1738
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
%"class.llvm::DenseMap.187" = type { ptr, ptr, i32, i32 }
%"class.llvm::SmallVector.189" = type { %"class.llvm::SmallVectorImpl.190" }
%"class.llvm::SmallVectorImpl.190" = type { %"class.llvm::SmallVectorTemplateBase.191" }
%"class.llvm::SmallVectorTemplateBase.191" = type { %"class.llvm::SmallVectorTemplateCommon.192" }
%"class.llvm::SmallVectorTemplateCommon.192" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVector.174" = type { %"class.llvm::SmallVectorImpl.175", %"struct.llvm::SmallVectorStorage.178" }
%"class.llvm::SmallVectorImpl.175" = type { %"class.llvm::SmallVectorTemplateBase.176" }
%"class.llvm::SmallVectorTemplateBase.176" = type { %"class.llvm::SmallVectorTemplateCommon.177" }
%"class.llvm::SmallVectorTemplateCommon.177" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.178" = type { [32 x i8] }
%"class.llvm::DenseMap.194" = type { ptr, ptr, i32, i32 }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.mlir::DistinctAttr" = type { %"class.mlir::detail::StorageUserBase.173" }
%"class.mlir::detail::StorageUserBase.173" = type { %"class.mlir::Attribute" }
%"class.mlir::LLVM::DISubrangeAttr" = type { %"class.mlir::detail::StorageUserBase.332" }
%"class.mlir::detail::StorageUserBase.332" = type { %"class.mlir::LLVM::DINodeAttr" }
%class.anon.333 = type { ptr }
%"class.mlir::LLVM::DINamespaceAttr" = type { %"class.mlir::detail::StorageUserBase.322" }
%"class.mlir::detail::StorageUserBase.322" = type { %"class.mlir::LLVM::DIScopeAttr" }
%"class.mlir::LLVM::DILexicalBlockFileAttr" = type { %"class.mlir::detail::StorageUserBase.283" }
%"class.mlir::detail::StorageUserBase.283" = type { %"class.mlir::LLVM::DILocalScopeAttr" }
%"class.mlir::LLVM::DILocalScopeAttr" = type { %"class.mlir::LLVM::DIScopeAttr" }
%"class.mlir::LLVM::DILexicalBlockAttr" = type { %"class.mlir::detail::StorageUserBase.278" }
%"class.mlir::detail::StorageUserBase.278" = type { %"class.mlir::LLVM::DILocalScopeAttr" }
%"class.mlir::LLVM::DILabelAttr" = type { %"class.mlir::detail::StorageUserBase.273" }
%"class.mlir::detail::StorageUserBase.273" = type { %"class.mlir::LLVM::DINodeAttr" }
%"class.mlir::LLVM::DIGenericSubrangeAttr" = type { %"class.mlir::detail::StorageUserBase.339" }
%"class.mlir::detail::StorageUserBase.339" = type { %"class.mlir::LLVM::DINodeAttr" }
%class.anon.340 = type { ptr }
%"class.mlir::LLVM::DICommonBlockAttr" = type { %"class.mlir::detail::StorageUserBase.334" }
%"class.mlir::detail::StorageUserBase.334" = type { %"class.mlir::LLVM::DIScopeAttr" }
%"class.mlir::LLVM::DIRecursiveTypeAttrInterface" = type { %"class.mlir::AttributeInterface" }
%"class.mlir::AttributeInterface" = type { %"class.mlir::detail::Interface" }
%"class.mlir::detail::Interface" = type { %"class.mlir::Attribute", ptr }
%"struct.std::pair.350" = type { %"class.mlir::Attribute", ptr }
%"class.std::unique_ptr.214" = type { %"struct.std::__uniq_ptr_data.215" }
%"struct.std::__uniq_ptr_data.215" = type { %"class.std::__uniq_ptr_impl.216" }
%"class.std::__uniq_ptr_impl.216" = type { %"class.std::tuple.217" }
%"class.std::tuple.217" = type { %"struct.std::_Tuple_impl.218" }
%"struct.std::_Tuple_impl.218" = type { %"struct.std::_Head_base.219" }
%"struct.std::_Head_base.219" = type { ptr }
%"class.mlir::LLVM::DICompositeTypeAttr" = type { %"class.mlir::detail::StorageUserBase.205" }
%"class.mlir::detail::StorageUserBase.205" = type { %"class.mlir::LLVM::DITypeAttr" }
%"class.std::unique_ptr.226" = type { %"struct.std::__uniq_ptr_data.227" }
%"struct.std::__uniq_ptr_data.227" = type { %"class.std::__uniq_ptr_impl.228" }
%"class.std::__uniq_ptr_impl.228" = type { %"class.std::tuple.229" }
%"class.std::tuple.229" = type { %"struct.std::_Tuple_impl.230" }
%"struct.std::_Tuple_impl.230" = type { %"struct.std::_Head_base.231" }
%"struct.std::_Head_base.231" = type { ptr }
%"class.mlir::LLVM::DISubprogramAttr" = type { %"class.mlir::detail::StorageUserBase.128" }
%"class.mlir::detail::StorageUserBase.128" = type { %"class.mlir::LLVM::DILocalScopeAttr" }
%"class.mlir::IntegerAttr" = type { %"class.mlir::detail::StorageUserBase.463" }
%"class.mlir::detail::StorageUserBase.463" = type { %"class.mlir::Attribute" }
%"class.mlir::LLVM::DIDerivedTypeAttr" = type { %"class.mlir::detail::StorageUserBase.232" }
%"class.mlir::detail::StorageUserBase.232" = type { %"class.mlir::LLVM::DITypeAttr" }
%"class.mlir::LLVM::DIStringTypeAttr" = type { %"class.mlir::detail::StorageUserBase.257" }
%"class.mlir::detail::StorageUserBase.257" = type { %"class.mlir::LLVM::DITypeAttr" }
%"class.std::optional.265" = type { %"struct.std::_Optional_base.266" }
%"struct.std::_Optional_base.266" = type { %"struct.std::_Optional_payload.268" }
%"struct.std::_Optional_payload.268" = type { %"struct.std::_Optional_payload_base.base.270", [7 x i8] }
%"struct.std::_Optional_payload_base.base.270" = type <{ %"union.std::_Optional_payload_base<llvm::DIFile::ChecksumInfo<llvm::MDString *>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::DIFile::ChecksumInfo<llvm::MDString *>>::_Storage" = type { %"struct.llvm::DIFile::ChecksumInfo" }
%"struct.llvm::DIFile::ChecksumInfo" = type { i32, ptr }
%"class.mlir::LLVM::DIFileAttr" = type { %"class.mlir::detail::StorageUserBase.196" }
%"class.mlir::detail::StorageUserBase.196" = type { %"class.mlir::LLVM::DIScopeAttr" }
%"class.mlir::LLVM::DILocalVariableAttr" = type { %"class.mlir::detail::StorageUserBase.288" }
%"class.mlir::detail::StorageUserBase.288" = type { %"class.mlir::LLVM::DINodeAttr" }
%"class.mlir::LLVM::DIGlobalVariableAttr" = type { %"class.mlir::detail::StorageUserBase.293" }
%"class.mlir::detail::StorageUserBase.293" = type { %"class.mlir::LLVM::DINodeAttr" }
%"class.std::tuple.525" = type { %"struct.std::_Tuple_impl.526" }
%"struct.std::_Tuple_impl.526" = type { %"struct.std::_Head_base.527" }
%"struct.std::_Head_base.527" = type { ptr }
%"class.std::tuple.528" = type { %"struct.std::_Tuple_impl.529" }
%"struct.std::_Tuple_impl.529" = type { %"struct.std::_Head_base.530" }
%"struct.std::_Head_base.530" = type { ptr }
%class.anon.535 = type { i8 }
%"class.mlir::LLVM::DIModuleAttr" = type { %"class.mlir::detail::StorageUserBase.317" }
%"class.mlir::detail::StorageUserBase.317" = type { %"class.mlir::LLVM::DIScopeAttr" }
%"class.mlir::LLVM::DIImportedEntityAttr" = type { %"class.mlir::detail::StorageUserBase.327" }
%"class.mlir::detail::StorageUserBase.327" = type { %"class.mlir::LLVM::DINodeAttr" }
%"class.mlir::LLVM::DISubroutineTypeAttr" = type { %"class.mlir::detail::StorageUserBase.312" }
%"class.mlir::detail::StorageUserBase.312" = type { %"class.mlir::LLVM::DITypeAttr" }
%"class.mlir::CallSiteLoc" = type { %"class.mlir::detail::StorageUserBase.381" }
%"class.mlir::detail::StorageUserBase.381" = type { %"class.mlir::LocationAttr" }
%"class.mlir::FileLineColLoc" = type { %"class.mlir::FileLineColRange" }
%"class.mlir::FileLineColRange" = type { %"class.mlir::detail::StorageUserBase.384" }
%"class.mlir::detail::StorageUserBase.384" = type { %"class.mlir::LocationAttr" }
%"class.mlir::NameLoc" = type { %"class.mlir::detail::StorageUserBase.388" }
%"class.mlir::detail::StorageUserBase.388" = type { %"class.mlir::LocationAttr" }
%"class.mlir::OpaqueLoc" = type { %"class.mlir::detail::StorageUserBase.391" }
%"class.mlir::detail::StorageUserBase.391" = type { %"class.mlir::LocationAttr" }
%"class.std::tuple.366" = type { %"struct.std::_Tuple_impl.367" }
%"struct.std::_Tuple_impl.367" = type { %"struct.std::_Tuple_impl.368", %"struct.std::_Head_base.372" }
%"struct.std::_Tuple_impl.368" = type { %"struct.std::_Tuple_impl.369", %"struct.std::_Head_base.371" }
%"struct.std::_Tuple_impl.369" = type { %"struct.std::_Head_base.370" }
%"struct.std::_Head_base.370" = type { ptr }
%"struct.std::_Head_base.371" = type { ptr }
%"struct.std::_Head_base.372" = type { %"class.mlir::Location" }
%"class.mlir::LLVM::DIGlobalVariableExpressionAttr" = type { %"class.mlir::detail::StorageUserBase.360" }
%"class.mlir::detail::StorageUserBase.360" = type { %"class.mlir::Attribute" }
%"class.llvm::sys::path::const_iterator" = type <{ %"class.llvm::StringRef", %"class.llvm::StringRef", i64, i32, [4 x i8] }>
%"class.llvm::SmallString.397" = type { %"class.llvm::SmallVector.398" }
%"class.llvm::SmallVector.398" = type { %"class.llvm::SmallVectorImpl.7", %"struct.llvm::SmallVectorStorage.399" }
%"class.llvm::SmallVectorImpl.7" = type { %"class.llvm::SmallVectorTemplateBase.8" }
%"class.llvm::SmallVectorTemplateBase.8" = type { %"class.llvm::SmallVectorTemplateCommon.9" }
%"class.llvm::SmallVectorTemplateCommon.9" = type { %"class.llvm::SmallVectorBase.10" }
%"class.llvm::SmallVectorBase.10" = type { ptr, i64, i64 }
%"struct.llvm::SmallVectorStorage.399" = type { [128 x i8] }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.mlir::LLVM::DIAnnotationAttr" = type { %"class.mlir::detail::StorageUserBase.426" }
%"class.mlir::detail::StorageUserBase.426" = type { %"class.mlir::LLVM::DINodeAttr" }
%"class.llvm::DenseMap.4" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseMap.2" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseMap.0" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseMap" = type { ptr, ptr, i32, i32 }

$_ZN4llvm9DIBuilderD2Ev = comdat any

$_ZN4llvm8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev = comdat any

$_ZN4llvm23DefaultDoCastIfPossibleIN4mlir4LLVM28DIRecursiveTypeAttrInterfaceENS2_10DINodeAttrENS_8CastInfoIS3_S4_vEEE16doCastIfPossibleES4_ = comdat any

$_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE = comdat any

$_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIS5_EES2_lS4_ = comdat any

$_ZN4llvm12function_refIFN4mlir10WalkResultENS1_8LocationEEE11callback_fnIZNS1_12LocationAttr14findInstanceOfINS1_12FusedLocWithINS1_4LLVM16DISubprogramAttrEEEEET_vEUlSD_E_EES2_lS3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir12DistinctAttrEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JRPNS_13DICompileUnitEEEESt4pairIPSA_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir12DistinctAttrEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir12DistinctAttrEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir12DistinctAttrEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir12DistinctAttrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir12DistinctAttrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir12DistinctAttrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir12DistinctAttrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir12DistinctAttrEPNS_6DINodeEELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESC_IJRS5_EEEEERS6_DpOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir12DistinctAttrEPNS_6DINodeEELb1EE15growAndPushBackES6_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir12DistinctAttrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E21eraseFromFilledBucketIZNSA_21eraseFromFilledBucketEPS8_EUlRS8_E_EEvSC_OT_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir12DistinctAttrEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JRPNS_12DISubprogramEEEESt4pairIPSA_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm = comdat any

$_ZN4llvm15SmallVectorImplImE6insertIPKmvEEPmS5_T_S6_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEPS7_NS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E24lookupOrInsertIntoBucketISA_JRSB_EEESt4pairIPSG_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEPS7_NS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E15LookupBucketForISA_EEbRKT_RPSG_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEPS7_NS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEPS7_NS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E8moveFromERSH_ = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28DIRecursiveTypeAttrInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28DIRecursiveTypeAttrInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZSt19piecewise_construct = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Debug Info Version\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"CodeView\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM16DIAnnotationAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM30DIGlobalVariableExpressionAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM16DIExpressionAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM19DILocalVariableAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM20DIGlobalVariableAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28DIRecursiveTypeAttrInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28DIRecursiveTypeAttrInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.3 = private unnamed_addr constant [91 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::LLVM::DIRecursiveTypeAttrInterface]\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_11CallSiteLocEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_16FileLineColRangeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_8FusedLocEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_7NameLocEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_9OpaqueLocEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_10UnknownLocEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM16DISubprogramAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM19DICompositeTypeAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM17DICompileUnitAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM15DIBasicTypeAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM17DICommonBlockAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM17DIDerivedTypeAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM10DIFileAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM21DIGenericSubrangeAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM20DIImportedEntityAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM11DILabelAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM18DILexicalBlockAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM22DILexicalBlockFileAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM12DIModuleAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM15DINamespaceAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM14DINullTypeAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM16DIStringTypeAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM14DISubrangeAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM20DISubroutineTypeAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@switch.table._ZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_19DICompositeTypeAttrE = private unnamed_addr constant [22 x i8] c"\01\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\01", align 4

@_ZN4mlir4LLVM6detail16DebugTranslationC1EPNS_9OperationERN4llvm6ModuleE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4mlir4LLVM6detail16DebugTranslationC2EPNS_9OperationERN4llvm6ModuleE

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4LLVM6detail16DebugTranslationC2EPNS_9OperationERN4llvm6ModuleE(ptr noundef nonnull align 8 dereferenceable(440) initializes((0, 72)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(1288) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  store i32 16, ptr %i.d, align 8, !tbaa !141
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.f, ptr %i.e, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 0, ptr %i.g, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 256, ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  store i8 0, ptr %i.i, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %2, ptr %i.j, align 8, !tbaa !142
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.l = load ptr, ptr %2, align 8, !tbaa !231, !nonnull !67, !align !68
  store ptr %i.l, ptr %i.k, align 8, !tbaa !232
  %i.m = tail call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nonnull @_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIS5_EES2_lS4_, i64 ptrtoint (ptr @_ZL24interruptIfValidLocationPN4mlir9OperationE to i64), i32 noundef 1)
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.i, align 8, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @_ZL24interruptIfValidLocationPN4mlir9OperationE(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.d = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10UnknownLocEvE2idE
  %spec.select = zext i1 %i.d to i32
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4LLVM6detail16DebugTranslation26addModuleFlagsIfNotPresentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74, !nonnull !67, !align !68
  %i.c = tail call noundef ptr @_ZNK4llvm6Module13getModuleFlagENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %i.b, ptr nonnull @.str.1, i64 18) #15
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !74, !nonnull !67, !align !68
  tail call void @_ZN4llvm6Module13addModuleFlagENS0_15ModFlagBehaviorENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(1288) %i.d, i32 noundef 2, ptr nonnull @.str.1, i64 18, i32 noundef 3) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !74, !nonnull !67, !align !68 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 260
  %i.g = load i32, ptr %i.f, align 4, !tbaa !233
  %i.h = icmp eq i32 %i.g, 15
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, 28
  %i.l = select i1 %i.h, i1 %i.k, i1 false
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef ptr @_ZNK4llvm6Module13getModuleFlagENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %i.e, ptr nonnull @.str.2, i64 8) #15
  %.not8 = icmp eq ptr %i.m, null
  br i1 %.not8, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !74, !nonnull !67, !align !68
  tail call void @_ZN4llvm6Module13addModuleFlagENS0_15ModFlagBehaviorENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(1288) %i.n, i32 noundef 2, ptr nonnull @.str.2, i64 8, i32 noundef 1) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

declare noundef ptr @_ZNK4llvm6Module13getModuleFlagENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288), ptr, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvm6Module13addModuleFlagENS0_15ModFlagBehaviorENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(1288), i32 noundef, ptr, i64, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4LLVM6detail16DebugTranslation9translateENS0_10LLVMFuncOpERN4llvm8FunctionE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr nofree readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(140) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::FusedLocWith", align 8 ; 5 uses
  %4 = alloca %class.anon.506, align 8            ; 4 uses
  %5 = alloca %"class.mlir::FusedLocWith", align 8 ; 4 uses
  %6 = alloca %"class.mlir::Location", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.b = load i8, ptr %i.a, align 8, !tbaa !54, !range !75, !noundef !67
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.d, align 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr null, ptr %3, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %3, ptr %4, align 8, !tbaa !235
  %i.e = ptrtoint ptr %4 to i64
  %i.f = call i32 @_ZN4mlir12LocationAttr4walkEN4llvm12function_refIFNS_10WalkResultENS_8LocationEEEE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr nonnull @_ZN4llvm12function_refIFN4mlir10WalkResultENS1_8LocationEEE11callback_fnIZNS1_12LocationAttr14findInstanceOfINS1_12FusedLocWithINS1_4LLVM16DISubprogramAttrEEEEET_vEUlSD_E_EES2_lS3_, i64 %i.e) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.g = load ptr, ptr %3, align 8                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %i.g, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call ptr @_ZNK4mlir8FusedLoc11getMetadataEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  %i.j = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation9translateENS0_10DINodeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %i.i)
  call void @_ZN4llvm8Function13setSubprogramEPNS_12DISubprogramE(ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef %i.j) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @_ZN4llvm8Function13setSubprogramEPNS_12DISubprogramE(ptr noundef nonnull align 8 dereferenceable(140), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_14DINullTypeAttrE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation23getExpressionAttrOrNullENS0_16DIExpressionAttrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation19translateExpressionENS0_16DIExpressionAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation19translateExpressionENS0_16DIExpressionAttrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::LLVM::DIExpressionAttr", align 8 ; 2 uses
  %3 = alloca %"class.llvm::SmallVector.352", align 8 ; 12 uses
  store ptr %1, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !80
  %.not12 = icmp eq ptr %1, null
  br i1 %.not12, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call { ptr, i64 } @_ZNK4mlir4LLVM16DIExpressionAttr13getOperationsEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #15 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.d, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not13 = icmp eq i64 %i.f, 0
  br i1 %.not13, label %.loopexit, label %.lr.ph

end_hunk_0
begin_hunk_1_@_ZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_17DICompileUnitAttrE:bb.a
  %.not.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i, label %bb.m, label %bb.l

.lr.ph:                                           ; preds = %bb.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit
  %.01248 = phi ptr [ %i.ce, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit ], [ %i.bs, %bb.i ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %.01248, align 8
  %i.bw = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation9translateENS0_10DINodeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %.sroa.01.0.copyload) ; 2 uses
  %i.bx = load i32, ptr %i.bp, align 8, !tbaa !79 ; 2 uses
  %i.by = load i32, ptr %i.bq, align 4, !tbaa !80
  %.not.i13 = icmp ult i32 %i.bx, %i.by
  br i1 %.not.i13, label %bb.k, label %bb.j, !prof !81

bb.j:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.bw)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit

bb.k:                                             ; preds = %.lr.ph
  %i.bz = zext i32 %i.bx to i64
  %i.ca = load ptr, ptr %10, align 8, !tbaa !20
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  store ptr %i.bw, ptr %i.cb, align 1
  %i.cc = load i32, ptr %i.bp, align 8, !tbaa !79
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.bp, align 8, !tbaa !79
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit: ; preds = %bb.j, %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %.01248, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ce, %i.bu
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %._crit_edge
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !82, !nonnull !67, !align !68
  %i.ch = load ptr, ptr %10, align 8, !tbaa !20
  %i.ci = zext i32 %i.bv to i64
  %i.cj = call noundef ptr @_ZN4llvm7MDTuple7getImplERNS_11LLVMContextENS_8ArrayRefIPNS_8MetadataEEENS4_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr %i.ch, i64 %i.ci, i32 noundef 0, i1 noundef zeroext true) #15
  call void @_ZN4llvm6MDNode18replaceOperandWithEjPNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(52) %i.bn, i32 noundef 7, ptr noundef %i.cj) #15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %i.ck = call ptr @_ZNK4mlir4LLVM17DICompileUnitAttr5getIdEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %.not45 = icmp eq ptr %i.ck, null
  br i1 %.not45, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.cm = call ptr @_ZNK4mlir4LLVM17DICompileUnitAttr5getIdEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  store ptr %i.cm, ptr %11, align 8
  %i.cn = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir12DistinctAttrEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JRPNS_13DICompileUnitEEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cl, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !270 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !84
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.co = phi ptr [ %.pre, %bb.n ], [ %i.bn, %bb.m ]
  %i.cp = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.bo
  br i1 %i.cq, label %_ZN4llvm11SmallVectorIPNS_8MetadataELj6EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef %i.cp) #15
  br label %_ZN4llvm11SmallVectorIPNS_8MetadataELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_8MetadataELj6EED2Ev.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @_ZN4llvm9DIBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.e, %_ZN4llvm11SmallVectorIPNS_8MetadataELj6EED2Ev.exit
  %.1 = phi ptr [ %i.co, %_ZN4llvm11SmallVectorIPNS_8MetadataELj6EED2Ev.exit ], [ %i.ao, %bb.e ]
  ret ptr %.1
}

declare ptr @_ZNK4mlir4LLVM17DICompileUnitAttr5getIdEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN4llvm9DIBuilderC1ERNS_6ModuleEbPNS_13DICompileUnitE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(1288), i1 noundef zeroext, ptr noundef) unnamed_addr #3

declare noundef ptr @_ZN4llvm9DIBuilder17createCompileUnitENS_20DISourceLanguageNameEPNS_6DIFileENS_9StringRefEbS4_jS4_NS_13DICompileUnit17DebugEmissionKindEmbbNS5_18DebugNameTableKindEbS4_S4_(ptr noundef nonnull align 8 dereferenceable(384), i64, i16, ptr noundef, ptr, i64, i1 noundef zeroext, ptr noundef byval(%"class.llvm::StringRef") align 8, i32 noundef, ptr noundef byval(%"class.llvm::StringRef") align 8, i32 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i1 noundef zeroext, ptr noundef byval(%"class.llvm::StringRef") align 8, ptr noundef byval(%"class.llvm::StringRef") align 8) local_unnamed_addr #3

declare ptr @_ZNK4mlir4LLVM17DICompileUnitAttr7getFileEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZNK4mlir4LLVM17DICompileUnitAttr11getProducerEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZNK4mlir4LLVM17DICompileUnitAttr21getSplitDebugFilenameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare { ptr, i64 } @_ZNK4mlir4LLVM17DICompileUnitAttr19getImportedEntitiesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation9translateENS0_10DINodeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::StringAttr", align 8  ; 5 uses
  %3 = alloca %"class.mlir::StringAttr", align 8  ; 5 uses
  %4 = alloca %"class.mlir::StringAttr", align 8  ; 5 uses
  %5 = alloca %"class.mlir::LLVM::DISubrangeAttr", align 8 ; 7 uses
  %6 = alloca %class.anon.333, align 8            ; 7 uses
  %7 = alloca %"class.mlir::LLVM::DINamespaceAttr", align 8 ; 6 uses
  %8 = alloca %"class.mlir::LLVM::DILexicalBlockFileAttr", align 8 ; 6 uses
  %9 = alloca %"class.mlir::LLVM::DILexicalBlockAttr", align 8 ; 7 uses
  %10 = alloca %"class.mlir::LLVM::DILabelAttr", align 8 ; 7 uses
  %11 = alloca %"class.mlir::LLVM::DIGenericSubrangeAttr", align 8 ; 7 uses
  %12 = alloca %class.anon.340, align 8           ; 7 uses
  %13 = alloca %"class.mlir::LLVM::DICommonBlockAttr", align 8 ; 8 uses
  %14 = alloca %"class.mlir::LLVM::DIRecursiveTypeAttrInterface", align 8 ; 7 uses
  %15 = alloca %"struct.std::pair.350", align 8   ; 5 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread.thread", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97, !noalias !306
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98, !noalias !306 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !99, !noalias !306 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupERKS3_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %i.g, -1                         ; 2 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.i, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = lshr i64 %i.p, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !88
  %i.t = and i32 %i.o, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupERKS3_.exit.thread, !prof !89

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %i.w = phi i64 [ %i.ab, %bb.d ], [ %i.p, %bb.c ]
  %.01419.i.i = phi i32 [ %i.aa, %bb.d ], [ %i.o, %bb.c ]
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.w ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.x, align 8, !tbaa !90
  %i.y = icmp eq ptr %1, %.sroa.0.0.copyload.i.i
  br i1 %i.y, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupERKS3_.exit, label %bb.d, !prof !81

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.z = add nuw i32 %.01419.i.i, 1
  %i.aa = and i32 %i.z, %i.i                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !88
  %i.af = and i32 %i.aa, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupERKS3_.exit.thread, !prof !91

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupERKS3_.exit: ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !100 ; 2 uses
  %.not.not = icmp eq ptr %i.aj, null
  br i1 %.not.not, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupERKS3_.exit.thread, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread.thread"

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupERKS3_.exit.thread: ; preds = %bb.d, %bb.c, %bb.b, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.ak = tail call { ptr, ptr } @_ZN4llvm23DefaultDoCastIfPossibleIN4mlir4LLVM28DIRecursiveTypeAttrInterfaceENS2_10DINodeAttrENS_8CastInfoIS3_S4_vEEE16doCastIfPossibleES4_(ptr %1) ; 2 uses
  %i.al = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  store ptr %i.al, ptr %14, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.an = extractvalue { ptr, ptr } %i.ak, 1
  store ptr %i.an, ptr %i.am, align 8
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupERKS3_.exit.thread
  %i.ao = call ptr @_ZNK4mlir4LLVM28DIRecursiveTypeAttrInterface8getRecIdEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #15
  %.not213 = icmp eq ptr %i.ao, null
  br i1 %.not213, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupERKS3_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload = load ptr, ptr %14, align 8
  %.sroa.2.0.copyload = load ptr, ptr %i.am, align 8
  %i.ap = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation18translateRecursiveENS0_28DIRecursiveTypeAttrInterfaceE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  %.not5 = icmp eq ptr %i.ap, null
  br i1 %.not5, label %bb.g, label %.thread205

bb.g:                                             ; preds = %bb.f, %.thread
  %i.aq = load ptr, ptr %1, align 8, !tbaa !71
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !tbaa !73 ; 20 uses
  %i.as = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM15DIBasicTypeAttrEvE2idE
  br i1 %i.as, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_15DIBasicTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread", label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_15DIBasicTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"

"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_15DIBasicTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread": ; preds = %bb.g
  %i.at = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_15DIBasicTypeAttrE(ptr noundef nonnull readonly align 8 dereferenceable(440) %0, ptr nonnull %1)
  br label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread"

"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_15DIBasicTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit": ; preds = %bb.g
  %.not229 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM17DICommonBlockAttrEvE2idE
  br i1 %.not229, label %bb.h, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_17DICommonBlockAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"

bb.h:                                             ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_15DIBasicTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr %1, ptr %13, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !82, !nonnull !67, !align !68
  %i.aw = call ptr @_ZNK4mlir4LLVM17DICommonBlockAttr8getScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #15, !inline_history !275
  %i.ax = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation9translateENS0_10DINodeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %i.aw), !inline_history !276
  %i.ay = call ptr @_ZNK4mlir4LLVM17DICommonBlockAttr7getDeclEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #15, !inline_history !275
  %i.az = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation9translateENS0_10DINodeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %i.ay), !inline_history !277
  %i.ba = call ptr @_ZNK4mlir4LLVM17DICommonBlockAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #15, !inline_history !275 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.ba, ptr %4, align 8
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZN4mlir4LLVM6detail16DebugTranslation17getMDStringOrNullENS_10StringAttrE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %i.bd = extractvalue { ptr, i64 } %i.bc, 1
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_ZN4mlir4LLVM6detail16DebugTranslation17getMDStringOrNullENS_10StringAttrE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !82, !nonnull !67, !align !68
  %i.bg = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #15 ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.bg, 0
  %i.bi = extractvalue { ptr, i64 } %i.bg, 1
  %i.bj = call noundef ptr @_ZN4llvm8MDString3getERNS_11LLVMContextENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr %i.bh, i64 %i.bi) #15
  br label %_ZN4mlir4LLVM6detail16DebugTranslation17getMDStringOrNullENS_10StringAttrE.exit

_ZN4mlir4LLVM6detail16DebugTranslation17getMDStringOrNullENS_10StringAttrE.exit: ; preds = %bb.h, %bb.i, %bb.j
  %.0.i = phi ptr [ %i.bj, %bb.j ], [ null, %bb.i ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bk = call ptr @_ZNK4mlir4LLVM17DICommonBlockAttr7getFileEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #15, !inline_history !275
  %i.bl = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation9translateENS0_10DINodeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %i.bk), !inline_history !278
  %i.bm = call noundef i32 @_ZNK4mlir4LLVM17DICommonBlockAttr7getLineEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #15, !inline_history !275
  %i.bn = call noundef ptr @_ZN4llvm13DICommonBlock7getImplERNS_11LLVMContextEPNS_8MetadataES4_PNS_8MDStringES4_jNS3_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef %i.ax, ptr noundef %i.az, ptr noundef %.0.i, ptr noundef %i.bl, i32 noundef %i.bm, i32 noundef 0, i1 noundef zeroext true) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread"

"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_17DICommonBlockAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_15DIBasicTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %.not230 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM17DICompileUnitAttrEvE2idE
  br i1 %.not230, label %bb.k, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_17DICompileUnitAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"

bb.k:                                             ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_17DICommonBlockAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %i.bo = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_17DICompileUnitAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr nonnull %1), !inline_history !279
  br label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread"

"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_17DICompileUnitAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_17DICommonBlockAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %.not231 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM19DICompositeTypeAttrEvE2idE
  br i1 %.not231, label %bb.l, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_19DICompositeTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"

bb.l:                                             ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_17DICompileUnitAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %i.bp = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_19DICompositeTypeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr nonnull %1), !inline_history !280
  br label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread"

"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_19DICompositeTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_17DICompileUnitAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %.not232 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM17DIDerivedTypeAttrEvE2idE
  br i1 %.not232, label %bb.m, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_17DIDerivedTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"

bb.m:                                             ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_19DICompositeTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %i.bq = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_17DIDerivedTypeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr nonnull %1), !inline_history !281
  br label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread"

"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_17DIDerivedTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_19DICompositeTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %i.br = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM10DIFileAttrEvE2idE
  br i1 %i.br, label %bb.n, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_10DIFileAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"

bb.n:                                             ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_17DIDerivedTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %i.bs = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_10DIFileAttrE(ptr noundef nonnull readonly align 8 dereferenceable(440) %0, ptr nonnull %1)
  br label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread"

"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_10DIFileAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_17DIDerivedTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %.not233 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM21DIGenericSubrangeAttrEvE2idE
  br i1 %.not233, label %bb.o, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_21DIGenericSubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"

bb.o:                                             ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_10DIFileAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %1, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  store ptr %0, ptr %12, align 8, !tbaa !103
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !82, !nonnull !67, !align !68
  %i.bv = call ptr @_ZNK4mlir4LLVM21DIGenericSubrangeAttr8getCountEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #15, !inline_history !282
  %i.bw = call fastcc noundef ptr @"_ZZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_21DIGenericSubrangeAttrEENK3$_0clENS_9AttributeE"(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr %i.bv), !inline_history !282
  %i.bx = call ptr @_ZNK4mlir4LLVM21DIGenericSubrangeAttr13getLowerBoundEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #15, !inline_history !282
  %i.by = call fastcc noundef ptr @"_ZZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_21DIGenericSubrangeAttrEENK3$_0clENS_9AttributeE"(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr %i.bx), !inline_history !282
  %i.bz = call ptr @_ZNK4mlir4LLVM21DIGenericSubrangeAttr13getUpperBoundEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #15, !inline_history !282
  %i.ca = call fastcc noundef ptr @"_ZZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_21DIGenericSubrangeAttrEENK3$_0clENS_9AttributeE"(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr %i.bz), !inline_history !282
  %i.cb = call ptr @_ZNK4mlir4LLVM21DIGenericSubrangeAttr9getStrideEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #15, !inline_history !282
  %i.cc = call fastcc noundef ptr @"_ZZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_21DIGenericSubrangeAttrEENK3$_0clENS_9AttributeE"(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr %i.cb), !inline_history !282
  %i.cd = call noundef ptr @_ZN4llvm17DIGenericSubrange7getImplERNS_11LLVMContextEPNS_8MetadataES4_S4_S4_NS3_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef %i.bw, ptr noundef %i.by, ptr noundef %i.ca, ptr noundef %i.cc, i32 noundef 0, i1 noundef zeroext true) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread"

"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_21DIGenericSubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_10DIFileAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %.not234 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM20DIGlobalVariableAttrEvE2idE
  br i1 %.not234, label %bb.p, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_20DIGlobalVariableAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"

bb.p:                                             ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_21DIGenericSubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %i.ce = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_20DIGlobalVariableAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr nonnull %1), !inline_history !283
  br label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread"

"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_20DIGlobalVariableAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_21DIGenericSubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %.not235 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM20DIImportedEntityAttrEvE2idE
  br i1 %.not235, label %bb.q, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_20DIImportedEntityAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"

bb.q:                                             ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_20DIGlobalVariableAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %i.cf = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_20DIImportedEntityAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr nonnull %1), !inline_history !284
  br label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread"

"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_20DIImportedEntityAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_20DIGlobalVariableAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %i.cg = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM11DILabelAttrEvE2idE
  br i1 %i.cg, label %bb.r, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_11DILabelAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"

bb.r:                                             ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_20DIImportedEntityAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %1, ptr %10, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !82, !nonnull !67, !align !68
  %i.cj = call ptr @_ZNK4mlir4LLVM11DILabelAttr8getScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #15, !inline_history !285
  %i.ck = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation9translateENS0_10DINodeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %i.cj), !inline_history !286
  %i.cl = call ptr @_ZNK4mlir4LLVM11DILabelAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #15, !inline_history !285 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.cl, ptr %3, align 8
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_ZN4mlir4LLVM6detail16DebugTranslation17getMDStringOrNullENS_10StringAttrE.exit79, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %i.co = extractvalue { ptr, i64 } %i.cn, 1
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %_ZN4mlir4LLVM6detail16DebugTranslation17getMDStringOrNullENS_10StringAttrE.exit79, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !82, !nonnull !67, !align !68
  %i.cr = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #15 ; 2 uses
  %i.cs = extractvalue { ptr, i64 } %i.cr, 0
  %i.ct = extractvalue { ptr, i64 } %i.cr, 1
  %i.cu = call noundef ptr @_ZN4llvm8MDString3getERNS_11LLVMContextENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr %i.cs, i64 %i.ct) #15
  br label %_ZN4mlir4LLVM6detail16DebugTranslation17getMDStringOrNullENS_10StringAttrE.exit79

_ZN4mlir4LLVM6detail16DebugTranslation17getMDStringOrNullENS_10StringAttrE.exit79: ; preds = %bb.r, %bb.s, %bb.t
  %.0.i78 = phi ptr [ %i.cu, %bb.t ], [ null, %bb.s ], [ null, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cv = call ptr @_ZNK4mlir4LLVM11DILabelAttr7getFileEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #15, !inline_history !285
  %i.cw = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation9translateENS0_10DINodeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %i.cv), !inline_history !287
  %i.cx = call noundef i32 @_ZNK4mlir4LLVM11DILabelAttr7getLineEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #15, !inline_history !285
  %i.cy = call noundef ptr @_ZN4llvm7DILabel7getImplERNS_11LLVMContextEPNS_8MetadataEPNS_8MDStringES4_jjbSt8optionalIjENS3_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef %i.ck, ptr noundef %.0.i78, ptr noundef %i.cw, i32 noundef %i.cx, i32 noundef 0, i1 noundef zeroext false, i64 0, i32 noundef 0, i1 noundef zeroext true) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread"

"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_11DILabelAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_20DIImportedEntityAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %i.cz = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM18DILexicalBlockAttrEvE2idE
  br i1 %i.cz, label %bb.u, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_18DILexicalBlockAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"

bb.u:                                             ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_11DILabelAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %1, ptr %9, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !82, !nonnull !67, !align !68
  %i.dc = call ptr @_ZNK4mlir4LLVM18DILexicalBlockAttr8getScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #15, !inline_history !288
  %i.dd = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation9translateENS0_10DINodeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %i.dc), !inline_history !289
  %i.de = call ptr @_ZNK4mlir4LLVM18DILexicalBlockAttr7getFileEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #15, !inline_history !288
  %i.df = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation9translateENS0_10DINodeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %i.de), !inline_history !290
  %i.dg = call noundef i32 @_ZNK4mlir4LLVM18DILexicalBlockAttr7getLineEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #15, !inline_history !288
  %i.dh = call noundef i32 @_ZNK4mlir4LLVM18DILexicalBlockAttr9getColumnEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #15, !inline_history !288
  %i.di = call noundef ptr @_ZN4llvm14DILexicalBlock7getImplERNS_11LLVMContextEPNS_8MetadataES4_jjNS3_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef %i.dd, ptr noundef %i.df, i32 noundef %i.dg, i32 noundef %i.dh, i32 noundef 1, i1 noundef zeroext true) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread"

"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_18DILexicalBlockAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_11DILabelAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %i.dj = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM22DILexicalBlockFileAttrEvE2idE
  br i1 %i.dj, label %bb.v, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_22DILexicalBlockFileAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"

bb.v:                                             ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_18DILexicalBlockAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %1, ptr %8, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !82, !nonnull !67, !align !68
  %i.dm = call ptr @_ZNK4mlir4LLVM22DILexicalBlockFileAttr8getScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #15, !inline_history !291
  %i.dn = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation9translateENS0_10DINodeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %i.dm), !inline_history !292
  %i.do = call ptr @_ZNK4mlir4LLVM22DILexicalBlockFileAttr7getFileEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #15, !inline_history !291
  %i.dp = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation9translateENS0_10DINodeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %i.do), !inline_history !293
  %i.dq = call noundef i32 @_ZNK4mlir4LLVM22DILexicalBlockFileAttr16getDiscriminatorEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #15, !inline_history !291
  %i.dr = call noundef ptr @_ZN4llvm18DILexicalBlockFile7getImplERNS_11LLVMContextEPNS_8MetadataES4_jNS3_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef %i.dn, ptr noundef %i.dp, i32 noundef %i.dq, i32 noundef 1, i1 noundef zeroext true) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread"

"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_22DILexicalBlockFileAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_18DILexicalBlockAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %i.ds = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM19DILocalVariableAttrEvE2idE
  br i1 %i.ds, label %bb.w, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_19DILocalVariableAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"

bb.w:                                             ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_22DILexicalBlockFileAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %i.dt = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_19DILocalVariableAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr nonnull %1), !inline_history !294
  br label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread"

"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_19DILocalVariableAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_22DILexicalBlockFileAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %i.du = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM12DIModuleAttrEvE2idE
  br i1 %i.du, label %bb.x, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_12DIModuleAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"

bb.x:                                             ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_19DILocalVariableAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %i.dv = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_12DIModuleAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr nonnull %1), !inline_history !295
  br label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread"

"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_12DIModuleAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_19DILocalVariableAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %i.dw = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM15DINamespaceAttrEvE2idE
  br i1 %i.dw, label %bb.y, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_15DINamespaceAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"

bb.y:                                             ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_12DIModuleAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %1, ptr %7, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !82, !nonnull !67, !align !68
  %i.dz = call ptr @_ZNK4mlir4LLVM15DINamespaceAttr8getScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #15, !inline_history !296
  %i.ea = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation9translateENS0_10DINodeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %i.dz), !inline_history !297
  %i.eb = call ptr @_ZNK4mlir4LLVM15DINamespaceAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #15, !inline_history !296 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.eb, ptr %2, align 8
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %_ZN4mlir4LLVM6detail16DebugTranslation17getMDStringOrNullENS_10StringAttrE.exit81, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ed = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %i.ee = extractvalue { ptr, i64 } %i.ed, 1
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %_ZN4mlir4LLVM6detail16DebugTranslation17getMDStringOrNullENS_10StringAttrE.exit81, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !82, !nonnull !67, !align !68
  %i.eh = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #15 ; 2 uses
  %i.ei = extractvalue { ptr, i64 } %i.eh, 0
  %i.ej = extractvalue { ptr, i64 } %i.eh, 1
  %i.ek = call noundef ptr @_ZN4llvm8MDString3getERNS_11LLVMContextENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr %i.ei, i64 %i.ej) #15
  br label %_ZN4mlir4LLVM6detail16DebugTranslation17getMDStringOrNullENS_10StringAttrE.exit81

_ZN4mlir4LLVM6detail16DebugTranslation17getMDStringOrNullENS_10StringAttrE.exit81: ; preds = %bb.y, %bb.z, %bb.aa
  %.0.i80 = phi ptr [ %i.ek, %bb.aa ], [ null, %bb.z ], [ null, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.el = call noundef zeroext i1 @_ZNK4mlir4LLVM15DINamespaceAttr16getExportSymbolsEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #15, !inline_history !296
  %i.em = call noundef ptr @_ZN4llvm11DINamespace7getImplERNS_11LLVMContextEPNS_8MetadataEPNS_8MDStringEbNS3_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef %i.ea, ptr noundef %.0.i80, i1 noundef zeroext %i.el, i32 noundef 0, i1 noundef zeroext true) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread"

"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_15DINamespaceAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_12DIModuleAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %i.en = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM14DINullTypeAttrEvE2idE
  br i1 %i.en, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread.thread", label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DINullTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"

"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DINullTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_15DINamespaceAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %i.eo = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM16DIStringTypeAttrEvE2idE
  br i1 %i.eo, label %bb.ab, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_16DIStringTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"

bb.ab:                                            ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DINullTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %i.ep = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_16DIStringTypeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr nonnull %1), !inline_history !298
  br label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread"

"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_16DIStringTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DINullTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %i.eq = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM16DISubprogramAttrEvE2idE
  br i1 %i.eq, label %bb.ac, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_16DISubprogramAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"

bb.ac:                                            ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_16DIStringTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %i.er = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_16DISubprogramAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr nonnull %1), !inline_history !299
  br label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread"

"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_16DISubprogramAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_16DIStringTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %i.es = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM14DISubrangeAttrEvE2idE
  br i1 %i.es, label %bb.ad, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"

bb.ad:                                            ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_16DISubprogramAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %1, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr %0, ptr %6, align 8, !tbaa !105
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !82, !nonnull !67, !align !68
  %i.ev = call ptr @_ZNK4mlir4LLVM14DISubrangeAttr8getCountEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #15, !inline_history !300
  %i.ew = call fastcc noundef ptr @"_ZZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_14DISubrangeAttrEENK3$_0clENS_9AttributeE"(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %i.ev), !inline_history !300
  %i.ex = call ptr @_ZNK4mlir4LLVM14DISubrangeAttr13getLowerBoundEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #15, !inline_history !300
  %i.ey = call fastcc noundef ptr @"_ZZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_14DISubrangeAttrEENK3$_0clENS_9AttributeE"(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %i.ex), !inline_history !300
  %i.ez = call ptr @_ZNK4mlir4LLVM14DISubrangeAttr13getUpperBoundEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #15, !inline_history !300
  %i.fa = call fastcc noundef ptr @"_ZZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_14DISubrangeAttrEENK3$_0clENS_9AttributeE"(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %i.ez), !inline_history !300
  %i.fb = call ptr @_ZNK4mlir4LLVM14DISubrangeAttr9getStrideEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #15, !inline_history !300
  %i.fc = call fastcc noundef ptr @"_ZZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_14DISubrangeAttrEENK3$_0clENS_9AttributeE"(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %i.fb), !inline_history !300
  %i.fd = call noundef ptr @_ZN4llvm10DISubrange7getImplERNS_11LLVMContextEPNS_8MetadataES4_S4_S4_NS3_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef %i.ew, ptr noundef %i.ey, ptr noundef %i.fa, ptr noundef %i.fc, i32 noundef 0, i1 noundef zeroext true) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread"

"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_16DISubprogramAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %16 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM20DISubroutineTypeAttrEvE2idE
  call void @llvm.assume(i1 %16)
  %i.fe = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_20DISubroutineTypeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr nonnull %1), !inline_history !301
  br label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread"

"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread": ; preds = %_ZN4mlir4LLVM6detail16DebugTranslation17getMDStringOrNullENS_10StringAttrE.exit, %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_15DIBasicTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread", %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %_ZN4mlir4LLVM6detail16DebugTranslation17getMDStringOrNullENS_10StringAttrE.exit79, %bb.u, %bb.v, %bb.w, %bb.x, %_ZN4mlir4LLVM6detail16DebugTranslation17getMDStringOrNullENS_10StringAttrE.exit81, %bb.ab, %bb.ac, %bb.ad, %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit"
  %.sroa.23.36 = phi ptr [ %i.bn, %_ZN4mlir4LLVM6detail16DebugTranslation17getMDStringOrNullENS_10StringAttrE.exit ], [ %i.fe, %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit" ], [ %i.fd, %bb.ad ], [ %i.er, %bb.ac ], [ %i.ep, %bb.ab ], [ %i.em, %_ZN4mlir4LLVM6detail16DebugTranslation17getMDStringOrNullENS_10StringAttrE.exit81 ], [ %i.dv, %bb.x ], [ %i.dt, %bb.w ], [ %i.dr, %bb.v ], [ %i.di, %bb.u ], [ %i.cy, %_ZN4mlir4LLVM6detail16DebugTranslation17getMDStringOrNullENS_10StringAttrE.exit79 ], [ %i.cf, %bb.q ], [ %i.ce, %bb.p ], [ %i.cd, %bb.o ], [ %i.bs, %bb.n ], [ %i.bq, %bb.m ], [ %i.bp, %bb.l ], [ %i.bo, %bb.k ], [ %i.at, %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_15DIBasicTypeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread" ] ; 2 uses
  %.not6 = icmp eq ptr %.sroa.23.36, null
  br i1 %.not6, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread.thread", label %.thread205

.thread205:                                       ; preds = %bb.f, %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread"
  %.1163208 = phi ptr [ %.sroa.23.36, %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread" ], [ %i.ap, %bb.f ] ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.1163208, i64 1
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = and i8 %i.fg, 127
  %i.fi = icmp eq i8 %i.fh, 2
  br i1 %i.fi, label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread.thread", label %bb.ae

bb.ae:                                            ; preds = %.thread205
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.fj = ptrtoint ptr %1 to i64
  store i64 %i.fj, ptr %15, align 8, !tbaa !90
  %i.fk = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.1163208, ptr %i.fk, align 8, !tbaa !308
  %i.fl = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.fk), !noalias !309 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread.thread"

"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread.thread": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_15DINamespaceAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit", %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread", %.thread205, %bb.ae, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupERKS3_.exit, %bb.a
  %.1 = phi ptr [ %i.aj, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeEPNS_6DINodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupERKS3_.exit ], [ null, %bb.a ], [ %.1163208, %bb.ae ], [ %.1163208, %.thread205 ], [ null, %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_14DISubrangeAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit.thread" ], [ null, %"_ZN4llvm10TypeSwitchIN4mlir4LLVM10DINodeAttrEPNS_6DINodeEE4CaseINS2_15DINamespaceAttrERZNS2_6detail16DebugTranslation9translateES3_E3$_0EERS6_OT0_.exit" ]
  ret ptr %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9DIBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @_ZN4llvm8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.e = load i32, ptr %i.d, align 8, !tbaa !79   ; 2 uses
  %.not4.i.i = icmp eq i32 %i.e, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.f = zext i32 %i.e to i64
  %.idx.i = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.h, %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i ], [ %i.g, %.lr.ph.i.preheader.i ]
  %i.h = getelementptr inbounds i8, ptr %.05.i.i, i64 -8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !108  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(8) %i.i) #15
  br label %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i

_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.c, %i.h
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i: ; preds = %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !20
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i, %bb.a
  %i.j = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4llvm11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i
  tail call void @free(ptr noundef %i.j) #15
  br label %_ZN4llvm11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.q = load i32, ptr %i.p, align 8, !tbaa !79   ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_6MDNodeENS_9SetVectorIPNS_8MetadataENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEEELb0EE13destroy_rangeEPSE_SG_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EED2Ev.exit
  %i.r = zext i32 %i.q to i64
  %.idx.i.i = mul nuw nsw i64 %i.r, 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIPN4llvm6MDNodeENS0_9SetVectorIPNS0_8MetadataENS0_11SmallVectorIS5_Lj0EEENS0_8DenseSetIS5_NS0_12DenseMapInfoIS5_vEEEELj0EEEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.t, %_ZNSt4pairIPN4llvm6MDNodeENS0_9SetVectorIPNS0_8MetadataENS0_11SmallVectorIS5_Lj0EEENS0_8DenseSetIS5_NS0_12DenseMapInfoIS5_vEEEELj0EEEED2Ev.exit.i.i.i ], [ %i.s, %.lr.ph.i.preheader.i.i ] ; 5 uses
  %i.t = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -40
  %i.v = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20   ; 2 uses
  %i.x = icmp eq ptr %i.w, %.05.i.i.i
  br i1 %i.x, label %_ZN4llvm11SmallVectorIPNS_8MetadataELj0EED2Ev.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  tail call void @free(ptr noundef %i.w) #15
  br label %_ZN4llvm11SmallVectorIPNS_8MetadataELj0EED2Ev.exit.i.i.i.i.i

_ZN4llvm11SmallVectorIPNS_8MetadataELj0EED2Ev.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.y = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !313  ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZNSt4pairIPN4llvm6MDNodeENS0_9SetVectorIPNS0_8MetadataENS0_11SmallVectorIS5_Lj0EEENS0_8DenseSetIS5_NS0_12DenseMapInfoIS5_vEEEELj0EEEED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_8MetadataELj0EED2Ev.exit.i.i.i.i.i
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !314
  %i.ac = zext i32 %i.z to i64                    ; 2 uses
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ac, 31
  %i.af = lshr i64 %i.ae, 3
  %i.ag = and i64 %i.af, 1073741820
  %i.ah = add nuw nsw i64 %i.ag, %i.ad
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ab, i64 noundef %i.ah, i64 noundef 8) #15
  br label %_ZNSt4pairIPN4llvm6MDNodeENS0_9SetVectorIPNS0_8MetadataENS0_11SmallVectorIS5_Lj0EEENS0_8DenseSetIS5_NS0_12DenseMapInfoIS5_vEEEELj0EEEED2Ev.exit.i.i.i

_ZNSt4pairIPN4llvm6MDNodeENS0_9SetVectorIPNS0_8MetadataENS0_11SmallVectorIS5_Lj0EEENS0_8DenseSetIS5_NS0_12DenseMapInfoIS5_vEEEELj0EEEED2Ev.exit.i.i.i: ; preds = %bb.e, %_ZN4llvm11SmallVectorIPNS_8MetadataELj0EED2Ev.exit.i.i.i.i.i
  %.not.i.i.i = icmp eq ptr %i.o, %i.t
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_6MDNodeENS_9SetVectorIPNS_8MetadataENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEEELb0EE13destroy_rangeEPSE_SG_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !310

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_6MDNodeENS_9SetVectorIPNS_8MetadataENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEEELb0EE13destroy_rangeEPSE_SG_.exit.loopexit.i.i: ; preds = %_ZNSt4pairIPN4llvm6MDNodeENS0_9SetVectorIPNS0_8MetadataENS0_11SmallVectorIS5_Lj0EEENS0_8DenseSetIS5_NS0_12DenseMapInfoIS5_vEEEELj0EEEED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !20
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_6MDNodeENS_9SetVectorIPNS_8MetadataENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEEELb0EE13destroy_rangeEPSE_SG_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_6MDNodeENS_9SetVectorIPNS_8MetadataENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEEELb0EE13destroy_rangeEPSE_SG_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_6MDNodeENS_9SetVectorIPNS_8MetadataENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEEELb0EE13destroy_rangeEPSE_SG_.exit.loopexit.i.i, %_ZN4llvm11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EED2Ev.exit
  %i.ai = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_6MDNodeENS_9SetVectorIPNS_8MetadataENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEEELb0EE13destroy_rangeEPSE_SG_.exit.loopexit.i.i ], [ %i.o, %_ZN4llvm11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EED2Ev.exit ] ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.b
  br i1 %i.aj, label %_ZN4llvm11SmallVectorISt4pairIPNS_6MDNodeENS_9SetVectorIPNS_8MetadataENS0_IS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEEELj0EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_6MDNodeENS_9SetVectorIPNS_8MetadataENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEEELb0EE13destroy_rangeEPSE_SG_.exit.i.i
  tail call void @free(ptr noundef %i.ai) #15
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_6MDNodeENS_9SetVectorIPNS_8MetadataENS0_IS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEEELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIPNS_6MDNodeENS_9SetVectorIPNS_8MetadataENS0_IS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEEELj0EED2Ev.exit.i: ; preds = %bb.f, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_6MDNodeENS_9SetVectorIPNS_8MetadataENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEEELb0EE13destroy_rangeEPSE_SG_.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !317 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZN4llvm9MapVectorIPNS_6MDNodeENS_9SetVectorIPNS_8MetadataENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEENS_8DenseMapIS2_jNS9_IS2_vEENS_6detail12DenseMapPairIS2_jEEEENS6_ISt4pairIS2_SC_ELj0EEELj0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIPNS_6MDNodeENS_9SetVectorIPNS_8MetadataENS0_IS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEEELj0EED2Ev.exit.i
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !318
  %i.ao = zext i32 %i.al to i64                   ; 2 uses
  %i.ap = shl nuw nsw i64 %i.ao, 4
  %i.aq = add nuw nsw i64 %i.ao, 31
  %i.ar = lshr i64 %i.aq, 3
  %i.as = and i64 %i.ar, 1073741820
  %i.at = add nuw nsw i64 %i.as, %i.ap
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.an, i64 noundef %i.at, i64 noundef 8) #15
  br label %_ZN4llvm9MapVectorIPNS_6MDNodeENS_9SetVectorIPNS_8MetadataENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEENS_8DenseMapIS2_jNS9_IS2_vEENS_6detail12DenseMapPairIS2_jEEEENS6_ISt4pairIS2_SC_ELj0EEELj0EED2Ev.exit

_ZN4llvm9MapVectorIPNS_6MDNodeENS_9SetVectorIPNS_8MetadataENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEENS_8DenseMapIS2_jNS9_IS2_vEENS_6detail12DenseMapPairIS2_jEEEENS6_ISt4pairIS2_SC_ELj0EEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIPNS_6MDNodeENS_9SetVectorIPNS_8MetadataENS0_IS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEEELj0EED2Ev.exit.i, %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !20 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !79 ; 2 uses
  %.not4.i.i1 = icmp eq i32 %i.ax, 0
  br i1 %.not4.i.i1, label %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i11, label %.lr.ph.i.preheader.i2

.lr.ph.i.preheader.i2:                            ; preds = %_ZN4llvm9MapVectorIPNS_6MDNodeENS_9SetVectorIPNS_8MetadataENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEENS_8DenseMapIS2_jNS9_IS2_vEENS_6detail12DenseMapPairIS2_jEEEENS6_ISt4pairIS2_SC_ELj0EEELj0EED2Ev.exit
  %i.ay = zext i32 %i.ax to i64
  %.idx.i3 = shl nuw nsw i64 %i.ay, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx.i3
  br label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i7, %.lr.ph.i.preheader.i2
  %.05.i.i5 = phi ptr [ %i.ba, %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i7 ], [ %i.az, %.lr.ph.i.preheader.i2 ]
  %i.ba = getelementptr inbounds i8, ptr %.05.i.i5, i64 -8 ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !108 ; 2 uses
  %.not.i.i.i.i.i6 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i6, label %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i7, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i4
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 4 dereferenceable(8) %i.bb) #15
  br label %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i7

_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i7: ; preds = %bb.h, %.lr.ph.i.i4
  %.not.i.i8 = icmp eq ptr %i.av, %i.ba
  br i1 %.not.i.i8, label %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i9, label %.lr.ph.i.i4, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i9: ; preds = %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i7
  %.pre.i10 = load ptr, ptr %i.au, align 8, !tbaa !20
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i11

_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i11: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i9, %_ZN4llvm9MapVectorIPNS_6MDNodeENS_9SetVectorIPNS_8MetadataENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEENS_8DenseMapIS2_jNS9_IS2_vEENS_6detail12DenseMapPairIS2_jEEEENS6_ISt4pairIS2_SC_ELj0EEELj0EED2Ev.exit
  %i.bc = phi ptr [ %.pre.i10, %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i9 ], [ %i.av, %_ZN4llvm9MapVectorIPNS_6MDNodeENS_9SetVectorIPNS_8MetadataENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EEENS_8DenseMapIS2_jNS9_IS2_vEENS_6detail12DenseMapPairIS2_jEEEENS6_ISt4pairIS2_SC_ELj0EEELj0EED2Ev.exit ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZN4llvm11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EED2Ev.exit12, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i11
  tail call void @free(ptr noundef %i.bc) #15
  br label %_ZN4llvm11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EED2Ev.exit12

end_hunk_1
begin_hunk_2_@_ZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_21DIGenericSubrangeAttrE:bb.a

"_ZZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_21DIGenericSubrangeAttrEENK3$_0clENS_9AttributeE.exit15": ; preds = %"_ZZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_21DIGenericSubrangeAttrEENK3$_0clENS_9AttributeE.exit9", %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEEES4_E4CaseIZZNS3_4LLVM6detail16DebugTranslation13translateImplENSA_21DIGenericSubrangeAttrEENK3$_0clES4_EUlNSA_16DIExpressionAttrEE_EERS7_OT_.exit.thread.i14", %bb.i, %"_ZN4llvm10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEE4CaseINS1_4LLVM19DILocalVariableAttrEZZNS7_6detail16DebugTranslation13translateImplENS7_21DIGenericSubrangeAttrEENK3$_0clES2_EUlS8_E_EERS5_OT0_.exit.i12", %bb.j
  %.0.i13 = phi ptr [ null, %"_ZZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_21DIGenericSubrangeAttrEENK3$_0clENS_9AttributeE.exit9" ], [ null, %"_ZN4llvm10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEE4CaseINS1_4LLVM19DILocalVariableAttrEZZNS7_6detail16DebugTranslation13translateImplENS7_21DIGenericSubrangeAttrEENK3$_0clES2_EUlS8_E_EERS5_OT0_.exit.i12" ], [ %i.af, %bb.j ], [ %i.ab, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEEES4_E4CaseIZZNS3_4LLVM6detail16DebugTranslation13translateImplENSA_21DIGenericSubrangeAttrEENK3$_0clES4_EUlNSA_16DIExpressionAttrEE_EERS7_OT_.exit.thread.i14" ], [ %i.ad, %bb.i ]
  %i.ag = call ptr @_ZNK4mlir4LLVM21DIGenericSubrangeAttr9getStrideEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #15 ; 5 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %"_ZZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_21DIGenericSubrangeAttrEENK3$_0clENS_9AttributeE.exit21", label %bb.k

bb.k:                                             ; preds = %"_ZZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_21DIGenericSubrangeAttrEENK3$_0clENS_9AttributeE.exit15"
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !71
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i16 = load ptr, ptr %i.aj, align 8, !tbaa !73 ; 3 uses
  %i.ak = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i16, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM16DIExpressionAttrEvE2idE
  br i1 %i.ak, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEEES4_E4CaseIZZNS3_4LLVM6detail16DebugTranslation13translateImplENSA_21DIGenericSubrangeAttrEENK3$_0clES4_EUlNSA_16DIExpressionAttrEE_EERS7_OT_.exit.thread.i20", label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEEES4_E4CaseIZZNS3_4LLVM6detail16DebugTranslation13translateImplENSA_21DIGenericSubrangeAttrEENK3$_0clES4_EUlNSA_16DIExpressionAttrEE_EERS7_OT_.exit.i17"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEEES4_E4CaseIZZNS3_4LLVM6detail16DebugTranslation13translateImplENSA_21DIGenericSubrangeAttrEENK3$_0clES4_EUlNSA_16DIExpressionAttrEE_EERS7_OT_.exit.thread.i20": ; preds = %bb.k
  %i.al = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation19translateExpressionENS0_16DIExpressionAttrE(ptr noundef nonnull readonly align 8 dereferenceable(440) %0, ptr nonnull %i.ag), !inline_history !458
  br label %"_ZZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_21DIGenericSubrangeAttrEENK3$_0clENS_9AttributeE.exit21"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEEES4_E4CaseIZZNS3_4LLVM6detail16DebugTranslation13translateImplENSA_21DIGenericSubrangeAttrEENK3$_0clES4_EUlNSA_16DIExpressionAttrEE_EERS7_OT_.exit.i17": ; preds = %bb.k
  %i.am = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i16, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM19DILocalVariableAttrEvE2idE
  br i1 %i.am, label %bb.l, label %"_ZN4llvm10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEE4CaseINS1_4LLVM19DILocalVariableAttrEZZNS7_6detail16DebugTranslation13translateImplENS7_21DIGenericSubrangeAttrEENK3$_0clES2_EUlS8_E_EERS5_OT0_.exit.i18"

bb.l:                                             ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEEES4_E4CaseIZZNS3_4LLVM6detail16DebugTranslation13translateImplENSA_21DIGenericSubrangeAttrEENK3$_0clES4_EUlNSA_16DIExpressionAttrEE_EERS7_OT_.exit.i17"
  %i.an = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation9translateENS0_10DINodeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr nonnull %i.ag) #16, !inline_history !456
  br label %"_ZZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_21DIGenericSubrangeAttrEENK3$_0clENS_9AttributeE.exit21"

"_ZN4llvm10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEE4CaseINS1_4LLVM19DILocalVariableAttrEZZNS7_6detail16DebugTranslation13translateImplENS7_21DIGenericSubrangeAttrEENK3$_0clES2_EUlS8_E_EERS5_OT0_.exit.i18": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEEES4_E4CaseIZZNS3_4LLVM6detail16DebugTranslation13translateImplENSA_21DIGenericSubrangeAttrEENK3$_0clES4_EUlNSA_16DIExpressionAttrEE_EERS7_OT_.exit.i17"
  %i.ao = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i16, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM20DIGlobalVariableAttrEvE2idE
  br i1 %i.ao, label %bb.m, label %"_ZZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_21DIGenericSubrangeAttrEENK3$_0clENS_9AttributeE.exit21"

bb.m:                                             ; preds = %"_ZN4llvm10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEE4CaseINS1_4LLVM19DILocalVariableAttrEZZNS7_6detail16DebugTranslation13translateImplENS7_21DIGenericSubrangeAttrEENK3$_0clES2_EUlS8_E_EERS5_OT0_.exit.i18"
  %i.ap = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation9translateENS0_10DINodeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr nonnull %i.ag) #16, !inline_history !457
  br label %"_ZZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_21DIGenericSubrangeAttrEENK3$_0clENS_9AttributeE.exit21"

"_ZZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_21DIGenericSubrangeAttrEENK3$_0clENS_9AttributeE.exit21": ; preds = %"_ZZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_21DIGenericSubrangeAttrEENK3$_0clENS_9AttributeE.exit15", %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEEES4_E4CaseIZZNS3_4LLVM6detail16DebugTranslation13translateImplENSA_21DIGenericSubrangeAttrEENK3$_0clES4_EUlNSA_16DIExpressionAttrEE_EERS7_OT_.exit.thread.i20", %bb.l, %"_ZN4llvm10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEE4CaseINS1_4LLVM19DILocalVariableAttrEZZNS7_6detail16DebugTranslation13translateImplENS7_21DIGenericSubrangeAttrEENK3$_0clES2_EUlS8_E_EERS5_OT0_.exit.i18", %bb.m
  %.0.i19 = phi ptr [ null, %"_ZZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_21DIGenericSubrangeAttrEENK3$_0clENS_9AttributeE.exit15" ], [ null, %"_ZN4llvm10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEE4CaseINS1_4LLVM19DILocalVariableAttrEZZNS7_6detail16DebugTranslation13translateImplENS7_21DIGenericSubrangeAttrEENK3$_0clES2_EUlS8_E_EERS5_OT0_.exit.i18" ], [ %i.ap, %bb.m ], [ %i.al, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEEES4_E4CaseIZZNS3_4LLVM6detail16DebugTranslation13translateImplENSA_21DIGenericSubrangeAttrEENK3$_0clES4_EUlNSA_16DIExpressionAttrEE_EERS7_OT_.exit.thread.i20" ], [ %i.an, %bb.l ]
  %i.aq = call noundef ptr @_ZN4llvm17DIGenericSubrange7getImplERNS_11LLVMContextEPNS_8MetadataES4_S4_S4_NS3_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %.0.i, ptr noundef %.0.i7, ptr noundef %.0.i13, ptr noundef %.0.i19, i32 noundef 0, i1 noundef zeroext true) #15
  ret ptr %i.aq
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef ptr @"_ZZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_21DIGenericSubrangeAttrEENK3$_0clENS_9AttributeE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !103    ; 3 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %"_ZN4llvm10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEE4CaseINS1_4LLVM20DIGlobalVariableAttrEZZNS7_6detail16DebugTranslation13translateImplENS7_21DIGenericSubrangeAttrEENK3$_0clES2_EUlS8_E_EERS5_OT0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !73 ; 3 uses
  %i.e = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM16DIExpressionAttrEvE2idE
  br i1 %i.e, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEEES4_E4CaseIZZNS3_4LLVM6detail16DebugTranslation13translateImplENSA_21DIGenericSubrangeAttrEENK3$_0clES4_EUlNSA_16DIExpressionAttrEE_EERS7_OT_.exit.thread", label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEEES4_E4CaseIZZNS3_4LLVM6detail16DebugTranslation13translateImplENSA_21DIGenericSubrangeAttrEENK3$_0clES4_EUlNSA_16DIExpressionAttrEE_EERS7_OT_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEEES4_E4CaseIZZNS3_4LLVM6detail16DebugTranslation13translateImplENSA_21DIGenericSubrangeAttrEENK3$_0clES4_EUlNSA_16DIExpressionAttrEE_EERS7_OT_.exit.thread": ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation19translateExpressionENS0_16DIExpressionAttrE(ptr noundef nonnull readonly align 8 dereferenceable(440) %i.a, ptr nonnull %1)
  br label %"_ZN4llvm10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEE4CaseINS1_4LLVM20DIGlobalVariableAttrEZZNS7_6detail16DebugTranslation13translateImplENS7_21DIGenericSubrangeAttrEENK3$_0clES2_EUlS8_E_EERS5_OT0_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEEES4_E4CaseIZZNS3_4LLVM6detail16DebugTranslation13translateImplENSA_21DIGenericSubrangeAttrEENK3$_0clES4_EUlNSA_16DIExpressionAttrEE_EERS7_OT_.exit": ; preds = %bb.b
  %i.g = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM19DILocalVariableAttrEvE2idE
  br i1 %i.g, label %bb.c, label %"_ZN4llvm10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEE4CaseINS1_4LLVM19DILocalVariableAttrEZZNS7_6detail16DebugTranslation13translateImplENS7_21DIGenericSubrangeAttrEENK3$_0clES2_EUlS8_E_EERS5_OT0_.exit"

bb.c:                                             ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEEES4_E4CaseIZZNS3_4LLVM6detail16DebugTranslation13translateImplENSA_21DIGenericSubrangeAttrEENK3$_0clES4_EUlNSA_16DIExpressionAttrEE_EERS7_OT_.exit"
  %i.h = tail call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation9translateENS0_10DINodeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %i.a, ptr nonnull %1), !inline_history !459
  br label %"_ZN4llvm10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEE4CaseINS1_4LLVM20DIGlobalVariableAttrEZZNS7_6detail16DebugTranslation13translateImplENS7_21DIGenericSubrangeAttrEENK3$_0clES2_EUlS8_E_EERS5_OT0_.exit"

"_ZN4llvm10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEE4CaseINS1_4LLVM19DILocalVariableAttrEZZNS7_6detail16DebugTranslation13translateImplENS7_21DIGenericSubrangeAttrEENK3$_0clES2_EUlS8_E_EERS5_OT0_.exit": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEEES4_E4CaseIZZNS3_4LLVM6detail16DebugTranslation13translateImplENSA_21DIGenericSubrangeAttrEENK3$_0clES4_EUlNSA_16DIExpressionAttrEE_EERS7_OT_.exit"
  %i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM20DIGlobalVariableAttrEvE2idE
  br i1 %i.i, label %bb.d, label %"_ZN4llvm10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEE4CaseINS1_4LLVM20DIGlobalVariableAttrEZZNS7_6detail16DebugTranslation13translateImplENS7_21DIGenericSubrangeAttrEENK3$_0clES2_EUlS8_E_EERS5_OT0_.exit"

bb.d:                                             ; preds = %"_ZN4llvm10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEE4CaseINS1_4LLVM19DILocalVariableAttrEZZNS7_6detail16DebugTranslation13translateImplENS7_21DIGenericSubrangeAttrEENK3$_0clES2_EUlS8_E_EERS5_OT0_.exit"
  %i.j = tail call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation9translateENS0_10DINodeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %i.a, ptr nonnull %1), !inline_history !460
  br label %"_ZN4llvm10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEE4CaseINS1_4LLVM20DIGlobalVariableAttrEZZNS7_6detail16DebugTranslation13translateImplENS7_21DIGenericSubrangeAttrEENK3$_0clES2_EUlS8_E_EERS5_OT0_.exit"

"_ZN4llvm10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEE4CaseINS1_4LLVM20DIGlobalVariableAttrEZZNS7_6detail16DebugTranslation13translateImplENS7_21DIGenericSubrangeAttrEENK3$_0clES2_EUlS8_E_EERS5_OT0_.exit": ; preds = %bb.d, %"_ZN4llvm10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEE4CaseINS1_4LLVM19DILocalVariableAttrEZZNS7_6detail16DebugTranslation13translateImplENS7_21DIGenericSubrangeAttrEENK3$_0clES2_EUlS8_E_EERS5_OT0_.exit", %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEEES4_E4CaseIZZNS3_4LLVM6detail16DebugTranslation13translateImplENSA_21DIGenericSubrangeAttrEENK3$_0clES4_EUlNSA_16DIExpressionAttrEE_EERS7_OT_.exit.thread", %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %"_ZN4llvm10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEE4CaseINS1_4LLVM19DILocalVariableAttrEZZNS7_6detail16DebugTranslation13translateImplENS7_21DIGenericSubrangeAttrEENK3$_0clES2_EUlS8_E_EERS5_OT0_.exit" ], [ %i.j, %bb.d ], [ %i.f, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir9AttributeEPNS_8MetadataEEES4_E4CaseIZZNS3_4LLVM6detail16DebugTranslation13translateImplENSA_21DIGenericSubrangeAttrEENK3$_0clES4_EUlNSA_16DIExpressionAttrEE_EERS7_OT_.exit.thread" ], [ %i.h, %bb.c ]
  ret ptr %.0
}

declare ptr @_ZNK4mlir4LLVM21DIGenericSubrangeAttr8getCountEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZNK4mlir4LLVM21DIGenericSubrangeAttr13getLowerBoundEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZNK4mlir4LLVM21DIGenericSubrangeAttr13getUpperBoundEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZNK4mlir4LLVM21DIGenericSubrangeAttr9getStrideEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_20DISubroutineTypeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::LLVM::DISubroutineTypeAttr", align 8 ; 3 uses
  %3 = alloca %"class.llvm::SmallVector.139", align 8 ; 10 uses
  store ptr %1, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 6, ptr %i.c, align 4, !tbaa !80
  %i.d = call { ptr, i64 } @_ZNK4mlir4LLVM20DISubroutineTypeAttr8getTypesEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #15 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.d, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not11 = icmp eq i64 %i.f, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82, !nonnull !67, !align !68
  %i.j = call noundef i32 @_ZNK4mlir4LLVM20DISubroutineTypeAttr20getCallingConventionEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %i.k = trunc i32 %i.j to i8
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !nonnull !67, !align !68
  %i.m = load ptr, ptr %3, align 8, !tbaa !20
  %i.n = load i32, ptr %i.b, align 8, !tbaa !79
  %i.o = zext i32 %i.n to i64
  %i.p = call noundef ptr @_ZN4llvm7MDTuple7getImplERNS_11LLVMContextENS_8ArrayRefIPNS_8MetadataEEENS4_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr %i.m, i64 %i.o, i32 noundef 0, i1 noundef zeroext true) #15
  %i.q = call noundef ptr @_ZN4llvm16DISubroutineType7getImplERNS_11LLVMContextENS_6DINode7DIFlagsEhPNS_8MetadataENS5_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef 0, i8 noundef zeroext %i.k, ptr noundef %i.p, i32 noundef 0, i1 noundef zeroext true) #15
  %i.r = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.a
  br i1 %i.s, label %_ZN4llvm11SmallVectorIPNS_8MetadataELj6EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.r) #15
  br label %_ZN4llvm11SmallVectorIPNS_8MetadataELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_8MetadataELj6EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret ptr %i.q

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit
  %.012 = phi ptr [ %i.ab, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit ], [ %i.e, %bb.a ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %.012, align 8
  %i.t = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation9translateENS0_10DINodeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %.sroa.01.0.copyload), !inline_history !3 ; 2 uses
  %i.u = load i32, ptr %i.b, align 8, !tbaa !79   ; 2 uses
  %i.v = load i32, ptr %i.c, align 4, !tbaa !80
  %.not.i = icmp ult i32 %i.u, %i.v
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !81

bb.c:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.t)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.w = zext i32 %i.u to i64
  %i.x = load ptr, ptr %3, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  store ptr %i.t, ptr %i.y, align 1
  %i.z = load i32, ptr %i.b, align 8, !tbaa !79
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !79
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit: ; preds = %bb.c, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare { ptr, i64 } @_ZNK4mlir4LLVM20DISubroutineTypeAttr8getTypesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i32 @_ZNK4mlir4LLVM20DISubroutineTypeAttr20getCallingConventionEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation13translateImplENS0_10DITypeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation9translateENS0_10DINodeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation12translateLocENS_8LocationEPN4llvm12DILocalScopeE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.b = load i8, ptr %i.a, align 8, !tbaa !54, !range !75, !noundef !67
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation12translateLocENS_8LocationEPN4llvm12DILocalScopeEPNS4_10DILocationE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %1, ptr noundef %2, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation12translateLocENS_8LocationEPN4llvm12DILocalScopeEPNS4_10DILocationE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %4 = alloca %"class.mlir::CallSiteLoc", align 8 ; 6 uses
  %5 = alloca %"class.mlir::FileLineColLoc", align 8 ; 6 uses
  %6 = alloca %"class.mlir::FusedLoc", align 8    ; 5 uses
  %7 = alloca %"class.mlir::NameLoc", align 8     ; 4 uses
  %8 = alloca %"class.mlir::OpaqueLoc", align 8   ; 4 uses
  %9 = alloca %"class.std::tuple.366", align 8    ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !73 ; 6 uses
  %i.d = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10UnknownLocEvE2idE
  br i1 %i.d, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !121, !noalias !471 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !122, !noalias !471 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !123, !noalias !471 ; 4 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %i.j, -1                         ; 2 uses
  %i.m = mul i64 %i.e, -4658895280553007687       ; 2 uses
  %i.n = lshr i64 %i.m, 31
  %i.o = xor i64 %i.n, %i.m
  %i.p = ptrtoint ptr %2 to i64
  %i.q = mul i64 %i.p, -4658895280553007687       ; 2 uses
  %i.r = lshr i64 %i.q, 31
  %i.s = xor i64 %i.r, %i.q
  %i.t = ptrtoint ptr %3 to i64
  %i.u = mul i64 %i.t, -4658895280553007687       ; 2 uses
  %i.v = lshr i64 %i.u, 31
  %i.w = xor i64 %i.v, %i.u
  %i.x = mul i64 %i.w, 969526130
  %i.y = shl i64 %i.s, 32
  %i.z = and i64 %i.x, 4294967294
  %i.aa = or disjoint i64 %i.z, %i.y
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = shl i64 %i.o, 32
  %i.af = and i64 %i.ad, 4294967295
  %i.ag = or disjoint i64 %i.af, %i.ae
  %i.ah = mul i64 %i.ag, -4658895280553007687     ; 2 uses
  %i.ai = lshr i64 %i.ah, 31
  %i.aj = xor i64 %i.ai, %i.ah
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.l, %i.ak                     ; 3 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = lshr i64 %i.am, 5
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !88, !noalias !472
  %i.aq = and i32 %i.al, 31
  %i.ar = lshr i32 %i.ap, %i.aq
  %i.as = trunc i32 %i.ar to i1
  br i1 %i.as, label %.lr.ph.i.i.i, label %.loopexit.i, !prof !89

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZN4llvm12DenseMapInfoISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEvE7isEqualERKS9_SC_.exit.thread.i.i.i
  %i.at = phi i64 [ %i.be, %_ZN4llvm12DenseMapInfoISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEvE7isEqualERKS9_SC_.exit.thread.i.i.i ], [ %i.am, %bb.c ]
  %.018.i.i.i = phi i32 [ %i.bd, %_ZN4llvm12DenseMapInfoISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEvE7isEqualERKS9_SC_.exit.thread.i.i.i ], [ %i.al, %bb.c ]
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.at ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.0.0.copyload.i.i15.i.i.i = load ptr, ptr %i.av, align 8, !noalias !472
  %i.aw = icmp eq ptr %1, %.sroa.0.0.copyload.i.i15.i.i.i
  br i1 %i.aw, label %bb.d, label %_ZN4llvm12DenseMapInfoISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEvE7isEqualERKS9_SC_.exit.thread.i.i.i, !prof !124

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !126, !noalias !472
  %i.az = icmp eq ptr %2, %i.ay
  br i1 %i.az, label %_ZN4llvm12DenseMapInfoISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEvE7isEqualERKS9_SC_.exit.i.i.i, label %_ZN4llvm12DenseMapInfoISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEvE7isEqualERKS9_SC_.exit.thread.i.i.i, !prof !124

_ZN4llvm12DenseMapInfoISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEvE7isEqualERKS9_SC_.exit.i.i.i: ; preds = %bb.d
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !128, !noalias !472
  %i.bb = icmp eq ptr %3, %i.ba
  br i1 %i.bb, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEPS7_NS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E7find_asISA_EENS_16DenseMapIteratorISA_SB_SD_SG_Lb0EEERKT_.exit.loopexit, label %_ZN4llvm12DenseMapInfoISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEvE7isEqualERKS9_SC_.exit.thread.i.i.i, !prof !129

_ZN4llvm12DenseMapInfoISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEvE7isEqualERKS9_SC_.exit.thread.i.i.i: ; preds = %_ZN4llvm12DenseMapInfoISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEvE7isEqualERKS9_SC_.exit.i.i.i, %bb.d, %.lr.ph.i.i.i
  %i.bc = add nuw i32 %.018.i.i.i, 1
  %i.bd = and i32 %i.bc, %i.l                     ; 3 uses
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = lshr i64 %i.be, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !88, !noalias !472
  %i.bi = and i32 %i.bd, 31
  %i.bj = lshr i32 %i.bh, %i.bi
  %i.bk = trunc i32 %i.bj to i1
  br i1 %i.bk, label %.lr.ph.i.i.i, label %.loopexit.i, !prof !91

.loopexit.i:                                      ; preds = %_ZN4llvm12DenseMapInfoISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEvE7isEqualERKS9_SC_.exit.thread.i.i.i, %bb.c, %bb.b
  %i.bl = zext i32 %i.j to i64                    ; 2 uses
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.bl
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEPS7_NS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E7find_asISA_EENS_16DenseMapIteratorISA_SB_SD_SG_Lb0EEERKT_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEPS7_NS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E7find_asISA_EENS_16DenseMapIteratorISA_SB_SD_SG_Lb0EEERKT_.exit.loopexit: ; preds = %_ZN4llvm12DenseMapInfoISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEvE7isEqualERKS9_SC_.exit.i.i.i
  %.pre = zext i32 %i.j to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEPS7_NS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E7find_asISA_EENS_16DenseMapIteratorISA_SB_SD_SG_Lb0EEERKT_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEPS7_NS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E7find_asISA_EENS_16DenseMapIteratorISA_SB_SD_SG_Lb0EEERKT_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEPS7_NS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E7find_asISA_EENS_16DenseMapIteratorISA_SB_SD_SG_Lb0EEERKT_.exit.loopexit, %.loopexit.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEPS7_NS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E7find_asISA_EENS_16DenseMapIteratorISA_SB_SD_SG_Lb0EEERKT_.exit.loopexit ], [ %i.bl, %.loopexit.i ]
  %.lcssa.sink.i = phi ptr [ %i.au, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEPS7_NS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E7find_asISA_EENS_16DenseMapIteratorISA_SB_SD_SG_Lb0EEERKT_.exit.loopexit ], [ %i.bm, %.loopexit.i ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.pre-phi
  %.not95 = icmp eq ptr %.lcssa.sink.i, %i.bn
  br i1 %.not95, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEPS7_NS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E7find_asISA_EENS_16DenseMapIteratorISA_SB_SD_SG_Lb0EEERKT_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !483
  br label %bb.v

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEPS7_NS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E7find_asISA_EENS_16DenseMapIteratorISA_SB_SD_SG_Lb0EEERKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.bq = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11CallSiteLocEvE2idE ; 2 uses
  %spec.select.i.i = select i1 %i.bq, ptr %1, ptr null
  store ptr %spec.select.i.i, ptr %4, align 8
  br i1 %i.bq, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.br = call ptr @_ZNK4mlir11CallSiteLoc9getCallerEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %i.bs = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation12translateLocENS_8LocationEPN4llvm12DILocalScopeEPNS4_10DILocationE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %i.br, ptr noundef %2, ptr noundef %3) ; 2 uses
  %.not29 = icmp eq ptr %i.bs, null
  br i1 %.not29, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %.not30 = icmp eq ptr %3, null
  br i1 %.not30, label %.critedge35, label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.g
  %.025 = phi ptr [ %i.bs, %bb.g ], [ %3, %bb.h ] ; 2 uses
  %i.bt = call ptr @_ZNK4mlir11CallSiteLoc9getCalleeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %i.bu = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation12translateLocENS_8LocationEPN4llvm12DILocalScopeEPNS4_10DILocationE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %i.bt, ptr noundef null, ptr noundef nonnull %.025) ; 2 uses
  %.not31 = icmp eq ptr %i.bu, null
  %spec.select = select i1 %.not31, ptr %.025, ptr %i.bu
  store ptr %spec.select, ptr %i.a, align 8, !tbaa !128
  br label %bb.t

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.bv = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16FileLineColRangeEvE2idE ; 2 uses
  %spec.select.i.i39 = select i1 %i.bv, ptr %1, ptr null
  store ptr %spec.select.i.i39, ptr %5, align 8
  br i1 %i.bv, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.not28 = icmp eq ptr %2, null
  br i1 %.not28, label %.critedge33, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !82, !nonnull !67, !align !68
  %i.by = call noundef i32 @_ZNK4mlir14FileLineColLoc7getLineEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  %i.bz = call noundef i32 @_ZNK4mlir14FileLineColLoc9getColumnEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  %i.ca = call noundef ptr @_ZN4llvm10DILocation7getImplERNS_11LLVMContextEjjPNS_8MetadataES4_bmhNS3_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, i32 noundef %i.by, i32 noundef %i.bz, ptr noundef nonnull %2, ptr noundef %3, i1 noundef zeroext false, i64 noundef 0, i8 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext true) #15
  store ptr %i.ca, ptr %i.a, align 8, !tbaa !128
  br label %bb.s

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.cb = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_8FusedLocEvE2idE ; 2 uses
  %spec.select.i.i42 = select i1 %i.cb, ptr %1, ptr null
  store ptr %spec.select.i.i42, ptr %6, align 8
  br i1 %i.cb, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cc = call { ptr, i64 } @_ZNK4mlir8FusedLoc12getLocationsEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #15 ; 2 uses
  %i.cd = extractvalue { ptr, i64 } %i.cc, 0      ; 3 uses
  %i.ce = extractvalue { ptr, i64 } %i.cc, 1
  %i.cf = call ptr @_ZNK4mlir8FusedLoc11getMetadataEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #15 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i, label %_ZN4llvm16dyn_cast_or_nullIN4mlir4LLVM16DILocalScopeAttrENS1_9AttributeEEEDaRKT0_.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = call noundef zeroext i1 @_ZN4mlir4LLVM16DILocalScopeAttr7classofENS_9AttributeE(ptr nonnull %i.cf) #15
  br i1 %i.cg, label %_ZN4llvm16dyn_cast_or_nullIN4mlir4LLVM16DILocalScopeAttrENS1_9AttributeEEEDaRKT0_.exit, label %_ZN4llvm16dyn_cast_or_nullIN4mlir4LLVM16DILocalScopeAttrENS1_9AttributeEEEDaRKT0_.exit.thread

_ZN4llvm16dyn_cast_or_nullIN4mlir4LLVM16DILocalScopeAttrENS1_9AttributeEEEDaRKT0_.exit: ; preds = %bb.n
  %i.ch = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation9translateENS0_10DINodeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr nonnull %i.cf)
  br label %_ZN4llvm16dyn_cast_or_nullIN4mlir4LLVM16DILocalScopeAttrENS1_9AttributeEEEDaRKT0_.exit.thread

_ZN4llvm16dyn_cast_or_nullIN4mlir4LLVM16DILocalScopeAttrENS1_9AttributeEEEDaRKT0_.exit.thread: ; preds = %bb.m, %bb.n, %_ZN4llvm16dyn_cast_or_nullIN4mlir4LLVM16DILocalScopeAttrENS1_9AttributeEEEDaRKT0_.exit
  %.0 = phi ptr [ %i.ch, %_ZN4llvm16dyn_cast_or_nullIN4mlir4LLVM16DILocalScopeAttrENS1_9AttributeEEEDaRKT0_.exit ], [ %2, %bb.n ], [ %2, %bb.m ] ; 4 uses
  %.sroa.011.0.copyload = load ptr, ptr %i.cd, align 8
  %i.ci = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation12translateLocENS_8LocationEPN4llvm12DILocalScopeEPNS4_10DILocationE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %.sroa.011.0.copyload, ptr noundef %.0, ptr noundef %3) ; 2 uses
  store ptr %i.ci, ptr %i.a, align 8, !tbaa !128
  %.idx = shl i64 %i.ce, 3                        ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cd, i64 %.idx
  %.not98 = icmp eq i64 %.idx, 8
  br i1 %.not98, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm16dyn_cast_or_nullIN4mlir4LLVM16DILocalScopeAttrENS1_9AttributeEEEDaRKT0_.exit.thread
  %.02697 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ck = phi ptr [ %i.cm, %.lr.ph ], [ %i.ci, %.lr.ph.preheader ]
  %.02699 = phi ptr [ %.026, %.lr.ph ], [ %.02697, %.lr.ph.preheader ] ; 2 uses
  %.sroa.05.0.copyload = load ptr, ptr %.02699, align 8
  %i.cl = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation12translateLocENS_8LocationEPN4llvm12DILocalScopeEPNS4_10DILocationE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %.sroa.05.0.copyload, ptr noundef %.0, ptr noundef %3)
  %i.cm = call noundef ptr @_ZN4llvm10DILocation17getMergedLocationEPS0_S1_(ptr noundef %i.ck, ptr noundef %i.cl) #15 ; 2 uses
  store ptr %i.cm, ptr %i.a, align 8, !tbaa !128
  %.026 = getelementptr inbounds nuw i8, ptr %.02699, i64 8 ; 2 uses
  %.not = icmp eq ptr %.026, %i.cj
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.cn = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_7NameLocEvE2idE ; 2 uses
  %spec.select.i.i45 = select i1 %i.cn, ptr %1, ptr null
  store ptr %spec.select.i.i45, ptr %7, align 8
  br i1 %i.cn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.co = call ptr @_ZNK4mlir7NameLoc11getChildLocEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  %i.cp = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation12translateLocENS_8LocationEPN4llvm12DILocalScopeEPNS4_10DILocationE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %i.co, ptr noundef %2, ptr noundef %3)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %10 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_9OpaqueLocEvE2idE
  store ptr %1, ptr %8, align 8
  tail call void @llvm.assume(i1 %10)
  %i.cq = call ptr @_ZNK4mlir9OpaqueLoc19getFallbackLocationEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #15
  %i.cr = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation12translateLocENS_8LocationEPN4llvm12DILocalScopeEPNS4_10DILocationE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %i.cq, ptr noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink = phi ptr [ %i.cp, %bb.p ], [ %i.cr, %bb.q ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_ZN4llvm16dyn_cast_or_nullIN4mlir4LLVM16DILocalScopeAttrENS1_9AttributeEEEDaRKT0_.exit.thread, %bb.r
  %.1 = phi ptr [ %2, %bb.r ], [ %.0, %_ZN4llvm16dyn_cast_or_nullIN4mlir4LLVM16DILocalScopeAttrENS1_9AttributeEEEDaRKT0_.exit.thread ], [ %.0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.s

bb.s:                                             ; preds = %bb.k, %.loopexit
  %.2 = phi ptr [ %2, %bb.k ], [ %.1, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.t

.critedge33:                                      ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.critedge35

bb.t:                                             ; preds = %.critedge, %bb.s
  %.3 = phi ptr [ %2, %.critedge ], [ %.2, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  store ptr %3, ptr %9, align 8, !tbaa !484
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.3, ptr %i.cs, align 8, !tbaa !485
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.e, ptr %i.ct, align 8
  %i.cu = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJN4mlir8LocationEPNS_12DILocalScopeEPKNS_10DILocationEEEPS7_NS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E24lookupOrInsertIntoBucketISA_JRSB_EEESt4pairIPSG_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !486 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !128
  br label %bb.u

.critedge35:                                      ; preds = %.critedge33, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.u

bb.u:                                             ; preds = %.critedge35, %bb.t
  %.4 = phi ptr [ %i.cv, %bb.t ], [ null, %.critedge35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.e, %bb.u, %bb.a
  %.6 = phi ptr [ null, %bb.a ], [ %i.bp, %bb.e ], [ %.4, %bb.u ]
  ret ptr %.6
}

declare { ptr, i64 } @_ZNK4mlir4LLVM16DIExpressionAttr13getOperationsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i32 @_ZNK4mlir4LLVM20DIExpressionElemAttr9getOpcodeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare { ptr, i64 } @_ZNK4mlir4LLVM20DIExpressionElemAttr12getArgumentsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation33translateGlobalVariableExpressionENS0_30DIGlobalVariableExpressionAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::LLVM::DIGlobalVariableExpressionAttr", align 8 ; 3 uses
  store ptr %1, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82, !nonnull !67, !align !68
  %i.c = call ptr @_ZNK4mlir4LLVM30DIGlobalVariableExpressionAttr6getVarEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %i.d = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation9translateENS0_10DINodeAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %i.c), !inline_history !5
  %i.e = call ptr @_ZNK4mlir4LLVM30DIGlobalVariableExpressionAttr7getExprEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %i.f = call noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation19translateExpressionENS0_16DIExpressionAttrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %i.e)
  %i.g = call noundef ptr @_ZN4llvm26DIGlobalVariableExpression7getImplERNS_11LLVMContextEPNS_8MetadataES4_NS3_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.d, ptr noundef %i.f, i32 noundef 0, i1 noundef zeroext true) #15
  ret ptr %i.g
}

declare ptr @_ZNK4mlir4LLVM30DIGlobalVariableExpressionAttr6getVarEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZNK4mlir4LLVM30DIGlobalVariableExpressionAttr7getExprEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZNK4mlir11CallSiteLoc9getCallerEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZNK4mlir11CallSiteLoc9getCalleeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i32 @_ZNK4mlir14FileLineColLoc7getLineEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i32 @_ZNK4mlir14FileLineColLoc9getColumnEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare { ptr, i64 } @_ZNK4mlir8FusedLoc12getLocationsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZNK4mlir8FusedLoc11getMetadataEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm10DILocation17getMergedLocationEPS0_S1_(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_ZNK4mlir7NameLoc11getChildLocEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZNK4mlir9OpaqueLoc19getFallbackLocationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4mlir4LLVM6detail16DebugTranslation13translateFileEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::optional.265", align 8 ; 4 uses
  %4 = alloca %"class.llvm::sys::path::const_iterator", align 8 ; 6 uses
  %5 = alloca %"class.llvm::sys::path::const_iterator", align 8 ; 7 uses
  %6 = alloca %"class.llvm::SmallString.397", align 8 ; 9 uses
  %7 = alloca %"class.llvm::SmallString.397", align 8 ; 9 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvm::sys::path::const_iterator", align 8 ; 11 uses
  %10 = alloca %"class.llvm::sys::path::const_iterator", align 8 ; 5 uses
  %11 = alloca %"class.llvm::sys::path::const_iterator", align 8 ; 9 uses
  %12 = alloca %"class.llvm::sys::path::const_iterator", align 8 ; 5 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %17 = alloca %"class.llvm::sys::path::const_iterator", align 8 ; 2 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.b = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %1, i64 %2) #15
  %i.c = tail call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr %1, i64 %2, i32 noundef %i.b) #15 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !490
  %i.e = zext i32 %i.c to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !492  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4llvm9StringMapIPNS_6DIFileENS_15MallocAllocatorEEixENS_9StringRefE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %2, 17
  %i.i = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.h, i64 noundef 8) #15 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm14StringMapEntryIPNS_6DIFileEE6createINS_15MallocAllocatorEJEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN4llvm14StringMapEntryIPNS_6DIFileEE6createINS_15MallocAllocatorEJEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i.i

_ZN4llvm14StringMapEntryIPNS_6DIFileEE6createINS_15MallocAllocatorEJEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %2
  store i8 0, ptr %i.k, align 1, !tbaa !493
  store i64 %2, ptr %i.i, align 8, !tbaa !495
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !498
  store ptr %i.i, ptr %i.f, align 8, !tbaa !492
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !499
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !499
  %i.p = tail call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i32 noundef %i.c) #15
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !490
  %i.r = zext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !492
  br label %_ZN4llvm9StringMapIPNS_6DIFileENS_15MallocAllocatorEEixENS_9StringRefE.exit

_ZN4llvm9StringMapIPNS_6DIFileENS_15MallocAllocatorEEixENS_9StringRefE.exit: ; preds = %bb.a, %_ZN4llvm14StringMapEntryIPNS_6DIFileEE6createINS_15MallocAllocatorEJEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i.i
  %i.t = phi ptr [ %.pre.i, %_ZN4llvm14StringMapEntryIPNS_6DIFileEE6createINS_15MallocAllocatorEJEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i.i ], [ %i.g, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !500  ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.d, label %bb.p

bb.d:                                             ; preds = %_ZN4llvm9StringMapIPNS_6DIFileENS_15MallocAllocatorEEixENS_9StringRefE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !27   ; 2 uses
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = tail call { i32, ptr } @_ZN4llvm3sys2fs12current_pathERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(24) %i.w) #15 ; 0 uses
  %.pre = load i64, ptr %i.x, align 8, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = phi i64 [ %.pre, %bb.e ], [ %i.y, %bb.d ] ; 4 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !26  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.ac, ptr %6, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.ad, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 128, ptr %i.ae, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %i.af, ptr %7, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 128, ptr %i.ah, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 5, ptr %i.ai, align 8, !tbaa !503
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.aj, align 1, !tbaa !504
  store ptr %1, ptr %8, align 8, !tbaa !493
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
end_hunk_2
