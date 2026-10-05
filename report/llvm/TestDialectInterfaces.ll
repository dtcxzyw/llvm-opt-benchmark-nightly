Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestDialectInterfaces?download=true
inline.NumInlined: 1840
inline.NumDeleted: 1278
begin_hunk_0
%"class.llvm::SmallVectorTemplateCommon.258" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.259" = type { [64 x i8] }
%"class.llvm::PointerIntPair.260" = type { %"struct.llvm::detail::PunnedPointer.261" }
%"struct.llvm::detail::PunnedPointer.261" = type { [8 x i8] }
%"class.test::TestAttrParamsAttr" = type { %"class.mlir::detail::StorageUserBase.369" }
%"class.mlir::detail::StorageUserBase.369" = type { %"class.mlir::Attribute" }
%"class.std::unique_ptr.302" = type { %"struct.std::__uniq_ptr_data.303" }
%"struct.std::__uniq_ptr_data.303" = type { %"class.std::__uniq_ptr_impl.304" }
%"class.std::__uniq_ptr_impl.304" = type { %"class.std::tuple.305" }
%"class.std::tuple.305" = type { %"struct.std::_Tuple_impl.306" }
%"struct.std::_Tuple_impl.306" = type { %"struct.std::_Head_base.309" }
%"struct.std::_Head_base.309" = type { ptr }
%class.anon.399 = type { ptr }
%"class.mlir::DiagnosticArgument" = type { i32, %union.anon.337 }
%union.anon.337 = type { %"class.llvm::StringRef" }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.mlir::InFlightDiagnostic" = type { ptr, %"class.std::optional.310" }
%"class.std::optional.310" = type { %"struct.std::_Optional_base.311" }
%"struct.std::_Optional_base.311" = type { %"struct.std::_Optional_payload.313" }
%"struct.std::_Optional_payload.313" = type { %"struct.std::_Optional_payload.base.334", [7 x i8] }
%"struct.std::_Optional_payload.base.334" = type { %"struct.std::_Optional_payload_base.base.333" }
%"struct.std::_Optional_payload_base.base.333" = type <{ %"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage", i8 }>
%"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage" = type { %"class.mlir::Diagnostic" }
%"class.mlir::Diagnostic" = type { %"class.mlir::Location", i32, %"class.llvm::SmallVector.316", %"class.std::vector.321", %"class.std::vector.326", %"class.llvm::SmallVector.331" }
%"class.mlir::Location" = type { %"class.mlir::LocationAttr" }
%"class.mlir::LocationAttr" = type { %"class.mlir::Attribute" }
%"class.llvm::SmallVector.316" = type { %"class.llvm::SmallVectorImpl.317", %"struct.llvm::SmallVectorStorage.320" }
%"class.llvm::SmallVectorImpl.317" = type { %"class.llvm::SmallVectorTemplateBase.318" }
%"class.llvm::SmallVectorTemplateBase.318" = type { %"class.llvm::SmallVectorTemplateCommon.319" }
%"class.llvm::SmallVectorTemplateCommon.319" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.320" = type { [96 x i8] }
%"class.std::vector.321" = type { %"struct.std::_Vector_base.322" }
%"struct.std::_Vector_base.322" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.326" = type { %"struct.std::_Vector_base.327" }
%"struct.std::_Vector_base.327" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::SmallVector.331" = type { %"class.llvm::SmallVectorImpl.317" }
%class.anon.397 = type { i8 }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.test::TestMemRefElementTypeType" = type { %"class.mlir::detail::StorageUserBase.475" }
%"class.mlir::detail::StorageUserBase.475" = type { %"class.mlir::Type" }

$_ZN4mlir35ResourceBlobManagerDialectInterfaceD2Ev = comdat any

$_ZN4mlir35ResourceBlobManagerDialectInterfaceD0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN4mlir26DialectResourceBlobManagerESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN4mlir26DialectResourceBlobManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN4mlir26DialectResourceBlobManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN4mlir26DialectResourceBlobManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN4mlir26DialectResourceBlobManager6insertINS_25DialectResourceBlobHandleIN4test11TestDialectEEEEET_PNS6_7DialectEN4llvm9StringRefESt8optionalINS_15AsmResourceBlobEE = comdat any

$_ZN4llvm12function_refIFN4mlir15AsmResourceBlobEmmEE11callback_fnIZNKS1_22AsmParsedResourceEntry11parseAsBlobEvEUlmmE_EES2_lmm = comdat any

$_ZZN4llvm6detail18UniqueFunctionBaseIvJPvmmEEC1IPFvS2_mmES6_EET_NS3_8CalledAsIT0_EEENUlPKS3_S2_mmE_8__invokeESC_S2_mm = comdat any

$_ZNK4mlir20DialectFoldInterface4foldEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS3_15SmallVectorImplINS_12OpFoldResultEEE = comdat any

$_ZNK4mlir23DialectInlinerInterface28allowSingleBlockOptimizationEN4llvm14iterator_rangeINS1_14ilist_iteratorINS1_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEE = comdat any

$_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE = comdat any

$_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE = comdat any

$_ZNK4mlir32DialectReductionPatternInterface35populateReductionPatternsWithTesterERNS_17RewritePatternSetERNS_6TesterE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_ = comdat any

$_ZN4mlir10DiagnosticD2Ev = comdat any

$_ZN4mlir14DialectVersionD2Ev = comdat any

$_ZN4test18TestDialectVersionD0Ev = comdat any

$_ZN4mlir13TypeConverter18registerConversionESt8functionIFSt8optionalIN4llvm13LogicalResultEENS3_12PointerUnionIJNS_4TypeENS_5ValueEEEERNS3_15SmallVectorImplIS7_EEEE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS_15SmallVectorImplIS7_EEEELb0EE18growAndEmplaceBackIJSE_EEERSE_DpOT_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E16shrink_and_clearEv = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E16shrink_and_clearEv = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_ = comdat any

$_ZTVN4mlir35ResourceBlobManagerDialectInterfaceE = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_35ResourceBlobManagerDialectInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_35ResourceBlobManagerDialectInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN4mlir26DialectResourceBlobManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_21OpAsmDialectInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_21OpAsmDialectInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverIN4test17TestRecursiveTypeEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverIN4test17TestRecursiveTypeEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_25DialectResourceBlobHandleIN4test11TestDialectEEEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_25DialectResourceBlobHandleIN4test11TestDialectEEEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_20DialectFoldInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_20DialectFoldInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_23DialectInlinerInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_23DialectInlinerInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_32DialectReductionPatternInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_32DialectReductionPatternInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_24BytecodeDialectInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_24BytecodeDialectInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZTVN4test18TestDialectVersionE = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_30ConvertToEmitCPatternInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_30ConvertToEmitCPatternInterfaceEvE13resolveTypeIDEvE2id = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN12_GLOBAL__N_132TestResourceBlobManagerInterfaceE = internal unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4mlir35ResourceBlobManagerDialectInterfaceD2Ev, ptr @_ZN12_GLOBAL__N_132TestResourceBlobManagerInterfaceD0Ev] }, align 8
@_ZTVN4mlir35ResourceBlobManagerDialectInterfaceE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4mlir35ResourceBlobManagerDialectInterfaceD2Ev, ptr @_ZN4mlir35ResourceBlobManagerDialectInterfaceD0Ev] }, comdat, align 8
@_ZZN4mlir6detail14TypeIDResolverINS_35ResourceBlobManagerDialectInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_35ResourceBlobManagerDialectInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.5 = private unnamed_addr constant [92 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::ResourceBlobManagerDialectInterface]\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN4mlir26DialectResourceBlobManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4mlir26DialectResourceBlobManagerESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4mlir26DialectResourceBlobManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4mlir26DialectResourceBlobManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4mlir26DialectResourceBlobManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVN12_GLOBAL__N_118TestOpAsmInterfaceE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4mlir16DialectInterfaceD2Ev, ptr @_ZN12_GLOBAL__N_118TestOpAsmInterfaceD0Ev, ptr @_ZNK12_GLOBAL__N_118TestOpAsmInterface8getAliasEN4mlir9AttributeERN4llvm11raw_ostreamE, ptr @_ZNK12_GLOBAL__N_118TestOpAsmInterface8getAliasEN4mlir4TypeERN4llvm11raw_ostreamE, ptr @_ZNK12_GLOBAL__N_118TestOpAsmInterface15declareResourceEN4llvm9StringRefE, ptr @_ZNK12_GLOBAL__N_118TestOpAsmInterface14getResourceKeyB5cxx11ERKN4mlir24AsmDialectResourceHandleE, ptr @_ZNK12_GLOBAL__N_118TestOpAsmInterface13parseResourceERN4mlir22AsmParsedResourceEntryE, ptr @_ZNK12_GLOBAL__N_118TestOpAsmInterface14buildResourcesEPN4mlir9OperationERKN4llvm9SetVectorINS1_24AsmDialectResourceHandleENS4_11SmallVectorIS6_Lj0EEENS4_8DenseSetIS6_NS4_12DenseMapInfoIS6_vEEEELj0EEERNS1_18AsmResourceBuilderE] }, align 8
@_ZZN4mlir6detail14TypeIDResolverINS_21OpAsmDialectInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_21OpAsmDialectInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.6 = private unnamed_addr constant [78 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpAsmDialectInterface]\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"alias_test:trailing_digit_conflict_base\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"unique_base\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"alias_test:trailing_digit_conflict_base_conflict\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"alias_test:trailing_digit_conflict_base1\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"unique_base1\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"test.alias\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"test_alias0\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"alias_test:trailing_digit_conflict_a\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"test_alias_conflict0_1_1_1\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"alias_test:trailing_digit_conflict_b\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"test_alias_conflict0\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"alias_test:trailing_digit_conflict_c\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"alias_test:trailing_digit_conflict_d\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"test_alias_conflict0_\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"alias_test:trailing_digit_conflict_e\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"test_alias_conflict0_1\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"alias_test:trailing_digit_conflict_f\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"alias_test:trailing_digit_conflict_g\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"test_alias_conflict0_1_\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"alias_test:trailing_digit_conflict_h\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"test_alias_conflict0_1_1\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"0_test_alias\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"%test\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"test_encoding\00", align 1
@_ZN4mlir6detail14TypeIDResolverIN4test19TestNestedAliasAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_10StringAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.36 = private unnamed_addr constant [11 x i8] c"test_tuple\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"test_ui8\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"testrec\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_9TupleTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverIN4test11SimpleATypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverIN4test15TestIntegerTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZZN4mlir6detail14TypeIDResolverIN4test17TestRecursiveTypeEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverIN4test17TestRecursiveTypeEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.40 = private unnamed_addr constant [74 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = test::TestRecursiveType]\00", align 1
@_ZN4mlir6detail14TypeIDResolverIN4test22TestRecursiveAliasTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZZN4mlir6detail14TypeIDResolverINS_25DialectResourceBlobHandleIN4test11TestDialectEEEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_25DialectResourceBlobHandleIN4test11TestDialectEEEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.41 = private unnamed_addr constant [101 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::DialectResourceBlobHandle<test::TestDialect>]\00", align 1
@_ZTVN12_GLOBAL__N_124TestDialectFoldInterfaceE = internal unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN4mlir16DialectInterfaceD2Ev, ptr @_ZN12_GLOBAL__N_124TestDialectFoldInterfaceD0Ev, ptr @_ZNK4mlir20DialectFoldInterface4foldEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS3_15SmallVectorImplINS_12OpFoldResultEEE, ptr @_ZNK12_GLOBAL__N_124TestDialectFoldInterface21shouldMaterializeIntoEPN4mlir6RegionE] }, align 8
@_ZZN4mlir6detail14TypeIDResolverINS_20DialectFoldInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_20DialectFoldInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.43 = private unnamed_addr constant [77 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::DialectFoldInterface]\00", align 1
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverIN4test11OneRegionOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZTVN12_GLOBAL__N_120TestInlinerInterfaceE = internal unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr null, ptr @_ZN4mlir16DialectInterfaceD2Ev, ptr @_ZN12_GLOBAL__N_120TestInlinerInterfaceD0Ev, ptr @_ZNK12_GLOBAL__N_120TestInlinerInterface15isLegalToInlineEPN4mlir9OperationES3_b, ptr @_ZNK12_GLOBAL__N_120TestInlinerInterface15isLegalToInlineEPN4mlir6RegionES3_bRNS1_9IRMappingE, ptr @_ZNK12_GLOBAL__N_120TestInlinerInterface15isLegalToInlineEPN4mlir9OperationEPNS1_6RegionEbRNS1_9IRMappingE, ptr @_ZNK12_GLOBAL__N_120TestInlinerInterface24shouldAnalyzeRecursivelyEPN4mlir9OperationE, ptr @_ZNK12_GLOBAL__N_120TestInlinerInterface16handleTerminatorEPN4mlir9OperationEPNS1_5BlockE, ptr @_ZNK12_GLOBAL__N_120TestInlinerInterface16handleTerminatorEPN4mlir9OperationENS1_10ValueRangeE, ptr @_ZNK12_GLOBAL__N_120TestInlinerInterface25materializeCallConversionERN4mlir9OpBuilderENS1_5ValueENS1_4TypeENS1_8LocationE, ptr @_ZNK12_GLOBAL__N_120TestInlinerInterface14handleArgumentERN4mlir9OpBuilderEPNS1_9OperationES5_NS1_5ValueENS1_14DictionaryAttrE, ptr @_ZNK12_GLOBAL__N_120TestInlinerInterface12handleResultERN4mlir9OpBuilderEPNS1_9OperationES5_NS1_5ValueENS1_14DictionaryAttrE, ptr @_ZNK12_GLOBAL__N_120TestInlinerInterface24processInlinedCallBlocksEPN4mlir9OperationEN4llvm14iterator_rangeINS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS1_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEE, ptr @_ZNK4mlir23DialectInlinerInterface28allowSingleBlockOptimizationEN4llvm14iterator_rangeINS1_14ilist_iteratorINS1_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEE] }, align 8
@_ZZN4mlir6detail14TypeIDResolverINS_23DialectInlinerInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_23DialectInlinerInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.44 = private unnamed_addr constant [80 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::DialectInlinerInterface]\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"noinline\00", align 1
@_ZN4mlir6detail14TypeIDResolverIN4test18FunctionalRegionOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverIN4test12TestReturnOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.46 = private unnamed_addr constant [21 x i8] c"test.handle_argument\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"test.handle_result\00", align 1
@_ZN4mlir6detail14TypeIDResolverIN4test16ConversionCallOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.48 = private unnamed_addr constant [19 x i8] c"inlined_conversion\00", align 1
@_ZTVN12_GLOBAL__N_129TestReductionPatternInterfaceE = internal unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN4mlir16DialectInterfaceD2Ev, ptr @_ZN12_GLOBAL__N_129TestReductionPatternInterfaceD0Ev, ptr @_ZNK12_GLOBAL__N_129TestReductionPatternInterface25populateReductionPatternsERN4mlir17RewritePatternSetE, ptr @_ZNK4mlir32DialectReductionPatternInterface35populateReductionPatternsWithTesterERNS_17RewritePatternSetERNS_6TesterE] }, align 8
@_ZZN4mlir6detail14TypeIDResolverINS_32DialectReductionPatternInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_32DialectReductionPatternInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.49 = private unnamed_addr constant [89 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::DialectReductionPatternInterface]\00", align 1
@_ZTVN12_GLOBAL__N_128TestBytecodeDialectInterfaceE = internal unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr null, ptr @_ZN4mlir16DialectInterfaceD2Ev, ptr @_ZN12_GLOBAL__N_128TestBytecodeDialectInterfaceD0Ev, ptr @_ZNK12_GLOBAL__N_128TestBytecodeDialectInterface13readAttributeERN4mlir21DialectBytecodeReaderE, ptr @_ZNK12_GLOBAL__N_128TestBytecodeDialectInterface8readTypeERN4mlir21DialectBytecodeReaderE, ptr @_ZNK12_GLOBAL__N_128TestBytecodeDialectInterface14writeAttributeEN4mlir9AttributeERNS1_21DialectBytecodeWriterE, ptr @_ZNK12_GLOBAL__N_128TestBytecodeDialectInterface9writeTypeEN4mlir4TypeERNS1_21DialectBytecodeWriterE, ptr @_ZNK12_GLOBAL__N_128TestBytecodeDialectInterface12writeVersionERN4mlir21DialectBytecodeWriterE, ptr @_ZNK12_GLOBAL__N_128TestBytecodeDialectInterface11readVersionERN4mlir21DialectBytecodeReaderE, ptr @_ZNK12_GLOBAL__N_128TestBytecodeDialectInterface18upgradeFromVersionEPN4mlir9OperationERKNS1_14DialectVersionE] }, align 8
@_ZZN4mlir6detail14TypeIDResolverINS_24BytecodeDialectInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_24BytecodeDialectInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.50 = private unnamed_addr constant [81 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::BytecodeDialectInterface]\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@_ZTVN4test18TestDialectVersionE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14DialectVersionD2Ev, ptr @_ZN4test18TestDialectVersionD0Ev] }, comdat, align 8
@_ZN4mlir6detail14TypeIDResolverIN4test11TestI32TypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverIN4test18TestAttrParamsAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.56 = private unnamed_addr constant [59 x i8] c"current test dialect version is 2.0, can't parse version: \00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c".\00", align 1
@_ZN4mlir6detail14TypeIDResolverIN4test16TestVersionedOpAEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZTVN12_GLOBAL__N_127TestToEmitCDialectInterfaceE = internal unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4mlir16DialectInterfaceD2Ev, ptr @_ZN12_GLOBAL__N_127TestToEmitCDialectInterfaceD0Ev, ptr @_ZNK12_GLOBAL__N_127TestToEmitCDialectInterface40populateConvertToEmitCConversionPatternsERN4mlir16ConversionTargetERNS1_13TypeConverterERNS1_17RewritePatternSetESt8optionalIbE] }, align 8
@_ZZN4mlir6detail14TypeIDResolverINS_30ConvertToEmitCPatternInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_30ConvertToEmitCPatternInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.58 = private unnamed_addr constant [87 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::ConvertToEmitCPatternInterface]\00", align 1
@_ZN4mlir6detail14TypeIDResolverIN4test25TestMemRefElementTypeTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.59 = private unnamed_addr constant [13 x i8] c"TestElementT\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4test11TestDialect18registerInterfacesEv(ptr noundef nonnull align 8 dereferenceable(296) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %2 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19 ; 7 uses
  %i.b = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_35ResourceBlobManagerDialectInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN12_GLOBAL__N_132TestResourceBlobManagerInterfaceCI2N4mlir35ResourceBlobManagerDialectInterfaceEEPNS1_7DialectE.exit.i, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_35ResourceBlobManagerDialectInterfaceEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_132TestResourceBlobManagerInterfaceCI2N4mlir35ResourceBlobManagerDialectInterfaceEEPNS1_7DialectE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.5, i64 49), i64 41) #20
  store ptr %i.e, ptr @_ZZN4mlir6detail14TypeIDResolverINS_35ResourceBlobManagerDialectInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_35ResourceBlobManagerDialectInterfaceEvE13resolveTypeIDEvE2id) #20
  br label %_ZN12_GLOBAL__N_132TestResourceBlobManagerInterfaceCI2N4mlir35ResourceBlobManagerDialectInterfaceEEPNS1_7DialectE.exit.i

_ZN12_GLOBAL__N_132TestResourceBlobManagerInterfaceCI2N4mlir35ResourceBlobManagerDialectInterfaceEEPNS1_7DialectE.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_35ResourceBlobManagerDialectInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #19, !noalias !143 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 1, ptr %i.k, align 8, !tbaa !22, !noalias !142
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 1, ptr %i.l, align 4, !tbaa !23, !noalias !142
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN4mlir26DialectResourceBlobManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.j, align 8, !tbaa !25, !noalias !142
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.m, i8 0, i64 88, i1 false), !noalias !142
  store i32 104, ptr %i.n, align 8, !tbaa !144, !noalias !142
  store ptr %i.j, ptr %i.i, align 8, !tbaa !31, !alias.scope !142
  store ptr %i.m, ptr %i.h, align 8, !tbaa !145, !alias.scope !142
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_132TestResourceBlobManagerInterfaceE, i64 16), ptr %i.a, align 8, !tbaa !25
  store ptr %i.a, ptr %7, align 8, !tbaa !147
  call void @_ZN4mlir7Dialect12addInterfaceESt10unique_ptrINS_16DialectInterfaceESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %7) #20
  %i.o = load ptr, ptr %7, align 8, !tbaa !147    ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN4mlir7Dialect12addInterfaceIN12_GLOBAL__N_132TestResourceBlobManagerInterfaceEJEEERT_DpOT0_.exit, label %_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i: ; preds = %_ZN12_GLOBAL__N_132TestResourceBlobManagerInterfaceCI2N4mlir35ResourceBlobManagerDialectInterfaceEEPNS1_7DialectE.exit.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.o) #20, !inline_history !130
  br label %_ZN4mlir7Dialect12addInterfaceIN12_GLOBAL__N_132TestResourceBlobManagerInterfaceEJEEERT_DpOT0_.exit

_ZN4mlir7Dialect12addInterfaceIN12_GLOBAL__N_132TestResourceBlobManagerInterfaceEJEEERT_DpOT0_.exit: ; preds = %_ZN12_GLOBAL__N_132TestResourceBlobManagerInterfaceCI2N4mlir35ResourceBlobManagerDialectInterfaceEEPNS1_7DialectE.exit.i, %_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.s = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19 ; 5 uses
  %i.t = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_21OpAsmDialectInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.d, label %_ZN12_GLOBAL__N_118TestOpAsmInterfaceC2EPN4mlir7DialectERNS_32TestResourceBlobManagerInterfaceE.exit.i, !prof !13

bb.d:                                             ; preds = %_ZN4mlir7Dialect12addInterfaceIN12_GLOBAL__N_132TestResourceBlobManagerInterfaceEJEEERT_DpOT0_.exit
  %i.v = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_21OpAsmDialectInterfaceEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_118TestOpAsmInterfaceC2EPN4mlir7DialectERNS_32TestResourceBlobManagerInterfaceE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 49), i64 27) #20
  store ptr %i.w, ptr @_ZZN4mlir6detail14TypeIDResolverINS_21OpAsmDialectInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_21OpAsmDialectInterfaceEvE13resolveTypeIDEvE2id) #20
  br label %_ZN12_GLOBAL__N_118TestOpAsmInterfaceC2EPN4mlir7DialectERNS_32TestResourceBlobManagerInterfaceE.exit.i

_ZN12_GLOBAL__N_118TestOpAsmInterfaceC2EPN4mlir7DialectERNS_32TestResourceBlobManagerInterfaceE.exit.i: ; preds = %bb.e, %bb.d, %_ZN4mlir7Dialect12addInterfaceIN12_GLOBAL__N_132TestResourceBlobManagerInterfaceEJEEERT_DpOT0_.exit
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_21OpAsmDialectInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %0, ptr %i.x, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i, ptr %i.y, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN12_GLOBAL__N_118TestOpAsmInterfaceE, i64 16), ptr %i.s, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.a, ptr %i.z, align 8, !tbaa !148
  store ptr %i.s, ptr %6, align 8, !tbaa !147
  call void @_ZN4mlir7Dialect12addInterfaceESt10unique_ptrINS_16DialectInterfaceESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %6) #20
  %i.aa = load ptr, ptr %6, align 8, !tbaa !147   ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i2, label %_ZN4mlir7Dialect12addInterfaceIN12_GLOBAL__N_118TestOpAsmInterfaceEJRNS2_32TestResourceBlobManagerInterfaceEEEERT_DpOT0_.exit, label %_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i3

_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i3: ; preds = %_ZN12_GLOBAL__N_118TestOpAsmInterfaceC2EPN4mlir7DialectERNS_32TestResourceBlobManagerInterfaceE.exit.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #20, !inline_history !131
  br label %_ZN4mlir7Dialect12addInterfaceIN12_GLOBAL__N_118TestOpAsmInterfaceEJRNS2_32TestResourceBlobManagerInterfaceEEEERT_DpOT0_.exit

_ZN4mlir7Dialect12addInterfaceIN12_GLOBAL__N_118TestOpAsmInterfaceEJRNS2_32TestResourceBlobManagerInterfaceEEEERT_DpOT0_.exit: ; preds = %_ZN12_GLOBAL__N_118TestOpAsmInterfaceC2EPN4mlir7DialectERNS_32TestResourceBlobManagerInterfaceE.exit.i, %_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ae = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19, !noalias !149 ; 4 uses
  %i.af = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20DialectFoldInterfaceEvE13resolveTypeIDEvE2id acquire, align 8, !noalias !149
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.f, label %_ZSt11make_uniqueIN12_GLOBAL__N_124TestDialectFoldInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i, !prof !13

bb.f:                                             ; preds = %_ZN4mlir7Dialect12addInterfaceIN12_GLOBAL__N_118TestOpAsmInterfaceEJRNS2_32TestResourceBlobManagerInterfaceEEEERT_DpOT0_.exit
  %i.ah = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20DialectFoldInterfaceEvE13resolveTypeIDEvE2id) #20, !noalias !149
  %.not.i.i.i.i.i.i.i.i7 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i7, label %_ZSt11make_uniqueIN12_GLOBAL__N_124TestDialectFoldInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 26) #20, !noalias !149
  store ptr %i.ai, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20DialectFoldInterfaceEvE13resolveTypeIDEvE2id, align 8, !noalias !149
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20DialectFoldInterfaceEvE13resolveTypeIDEvE2id) #20, !noalias !149
  br label %_ZSt11make_uniqueIN12_GLOBAL__N_124TestDialectFoldInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i

_ZSt11make_uniqueIN12_GLOBAL__N_124TestDialectFoldInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i: ; preds = %bb.g, %bb.f, %_ZN4mlir7Dialect12addInterfaceIN12_GLOBAL__N_118TestOpAsmInterfaceEJRNS2_32TestResourceBlobManagerInterfaceEEEERT_DpOT0_.exit
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i4 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20DialectFoldInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !16, !noalias !149
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %0, ptr %i.aj, align 8, !tbaa !20, !noalias !149
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i4, ptr %i.ak, align 8, !tbaa !16, !noalias !149
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_124TestDialectFoldInterfaceE, i64 16), ptr %i.ae, align 8, !tbaa !25, !noalias !149
  store ptr %i.ae, ptr %2, align 8, !tbaa !151
  call void @_ZN4mlir7Dialect12addInterfaceESt10unique_ptrINS_16DialectInterfaceESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %2) #20
  %i.al = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19, !noalias !152 ; 4 uses
  %i.am = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23DialectInlinerInterfaceEvE13resolveTypeIDEvE2id acquire, align 8, !noalias !152
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.h, label %_ZSt11make_uniqueIN12_GLOBAL__N_120TestInlinerInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i, !prof !13

bb.h:                                             ; preds = %_ZSt11make_uniqueIN12_GLOBAL__N_124TestDialectFoldInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i
  %i.ao = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23DialectInlinerInterfaceEvE13resolveTypeIDEvE2id) #20, !noalias !152
  %.not.i.i.i.i.i.i.i5.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i5.i, label %_ZSt11make_uniqueIN12_GLOBAL__N_120TestInlinerInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 49), i64 29) #20, !noalias !152
  store ptr %i.ap, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23DialectInlinerInterfaceEvE13resolveTypeIDEvE2id, align 8, !noalias !152
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23DialectInlinerInterfaceEvE13resolveTypeIDEvE2id) #20, !noalias !152
  br label %_ZSt11make_uniqueIN12_GLOBAL__N_120TestInlinerInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i

_ZSt11make_uniqueIN12_GLOBAL__N_120TestInlinerInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i: ; preds = %bb.i, %bb.h, %_ZSt11make_uniqueIN12_GLOBAL__N_124TestDialectFoldInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i
  %.sroa.01.0.copyload.i.i.i.i.i.i.i4.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23DialectInlinerInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !16, !noalias !152
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %0, ptr %i.aq, align 8, !tbaa !20, !noalias !152
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i4.i, ptr %i.ar, align 8, !tbaa !16, !noalias !152
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_120TestInlinerInterfaceE, i64 16), ptr %i.al, align 8, !tbaa !25, !noalias !152
  store ptr %i.al, ptr %3, align 8, !tbaa !151
  call void @_ZN4mlir7Dialect12addInterfaceESt10unique_ptrINS_16DialectInterfaceESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %3) #20
  %i.as = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19, !noalias !153 ; 4 uses
  %i.at = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_32DialectReductionPatternInterfaceEvE13resolveTypeIDEvE2id acquire, align 8, !noalias !153
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.j, label %_ZSt11make_uniqueIN12_GLOBAL__N_129TestReductionPatternInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i, !prof !13

bb.j:                                             ; preds = %_ZSt11make_uniqueIN12_GLOBAL__N_120TestInlinerInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i
  %i.av = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_32DialectReductionPatternInterfaceEvE13resolveTypeIDEvE2id) #20, !noalias !153
end_hunk_0
begin_hunk_1_@_ZNK12_GLOBAL__N_118TestOpAsmInterface14buildResourcesEPN4mlir9OperationERKN4llvm9SetVectorINS1_24AsmDialectResourceHandleENS4_11SmallVectorIS6_Lj0EEENS4_8DenseSetIS6_NS4_12DenseMapInfoIS6_vEEEELj0EEERNS1_18AsmResourceBuilderE:bb.a
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !68
  %.sroa.0.0.copyload.i.i17.i = load ptr, ptr %i.p, align 8, !tbaa !69
  %.sroa.2.0..sroa_idx.i.i18.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.2.0.copyload.i.i19.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i18.i, align 8, !tbaa !68
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !52
  %i.s = trunc i64 %i.r to i32
  %i.t = load ptr, ptr %3, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i, ptr %.sroa.0.0.copyload.i.i17.i, i64 %.sroa.2.0.copyload.i.i19.i, i32 noundef %i.s) #20, !inline_history !188
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZN4llvm8dyn_castIN4mlir25DialectResourceBlobHandleIN4test11TestDialectEEEKNS1_24AsmDialectResourceHandleEEEDcPT0_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.023.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.w, %i.f
  br i1 %.not.i, label %_ZN4mlir39ResourceBlobManagerDialectInterfaceBaseINS_25DialectResourceBlobHandleIN4test11TestDialectEEEE14buildResourcesERNS_18AsmResourceBuilderEN4llvm8ArrayRefINS_24AsmDialectResourceHandleEEE.exit, label %.lr.ph.i

_ZN4mlir39ResourceBlobManagerDialectInterfaceBaseINS_25DialectResourceBlobHandleIN4test11TestDialectEEEE14buildResourcesERNS_18AsmResourceBuilderEN4llvm8ArrayRefINS_24AsmDialectResourceHandleEEE.exit: ; preds = %bb.f, %bb.a
  ret void
}

declare ptr @_ZNK4test19TestNestedAliasAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef i64 @_ZNK4mlir9TupleType4sizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare { ptr, i64 } @_ZNK4mlir9TupleType8getTypesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i32 @_ZNK4test15TestIntegerType13getSignednessEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i32 @_ZNK4test15TestIntegerType8getWidthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare { ptr, i64 } @_ZNK4test22TestRecursiveAliasType7getNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir26DialectResourceBlobManager6insertINS_25DialectResourceBlobHandleIN4test11TestDialectEEEEET_PNS6_7DialectEN4llvm9StringRefESt8optionalINS_15AsmResourceBlobEE(ptr dead_on_unwind noalias writable sret(%"struct.mlir::DialectResourceBlobHandle") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %2, ptr %3, i64 %4, ptr nofree noundef align 8 dereferenceable(80) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.std::optional", align 8     ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 4 uses
  store i8 0, ptr %i.b, align 8, !tbaa !41
  %i.c = load i8, ptr %i.a, align 8, !tbaa !41, !range !42, !noundef !43
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt8optionalIN4mlir15AsmResourceBlobEEC2EOS2_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(80) %5, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53   ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.h, align 8, !tbaa !77
  store <2 x ptr> %i.k, ptr %i.g, align 8, !tbaa !77
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.f) #20, !inline_history !189
  br label %_ZNSt22_Optional_payload_baseIN4mlir15AsmResourceBlobEE12_M_constructIJS1_EEEvDpOT_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 24, i1 false)
  br label %_ZNSt22_Optional_payload_baseIN4mlir15AsmResourceBlobEE12_M_constructIJS1_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN4mlir15AsmResourceBlobEE12_M_constructIJS1_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.n = load i8, ptr %i.m, align 8, !tbaa !83, !range !42, !noundef !43
  store i8 %i.n, ptr %i.l, align 8, !tbaa !83
  store i8 1, ptr %i.b, align 8, !tbaa !41
  br label %_ZNSt8optionalIN4mlir15AsmResourceBlobEEC2EOS2_.exit

_ZNSt8optionalIN4mlir15AsmResourceBlobEEC2EOS2_.exit: ; preds = %bb.a, %_ZNSt22_Optional_payload_baseIN4mlir15AsmResourceBlobEE12_M_constructIJS1_EEEvDpOT_.exit.i.i.i.i.i
  %i.o = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4mlir26DialectResourceBlobManager6insertEN4llvm9StringRefESt8optionalINS_15AsmResourceBlobEE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr %3, i64 %4, ptr nofree noundef nonnull align 8 dereferenceable(80) %6) #20
  %i.p = load i8, ptr %i.b, align 8, !tbaa !41, !range !42, !noundef !43
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.b, align 8, !tbaa !41
  br i1 %i.q, label %bb.e, label %_ZNSt14_Optional_baseIN4mlir15AsmResourceBlobELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %_ZNSt8optionalIN4mlir15AsmResourceBlobEEC2EOS2_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %6, align 8, !tbaa !48
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !49
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !52
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef %i.u, i64 noundef %i.w, i64 noundef %i.y) #20, !inline_history !1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !53  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN4mlir15AsmResourceBlobELb0ELb0EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void %i.aa(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %i.r) #20, !inline_history !2
  br label %_ZNSt14_Optional_baseIN4mlir15AsmResourceBlobELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4mlir15AsmResourceBlobELb0ELb0EED2Ev.exit: ; preds = %_ZNSt8optionalIN4mlir15AsmResourceBlobEEC2EOS2_.exit, %bb.g, %bb.h
  %i.ab = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25DialectResourceBlobHandleIN4test11TestDialectEEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %_ZN4mlir25DialectResourceBlobHandleIN4test11TestDialectEECI2NS_28AsmDialectResourceHandleBaseIS3_NS_26DialectResourceBlobManager9BlobEntryES2_EEEPS6_PS2_.exit, !prof !13

bb.i:                                             ; preds = %_ZNSt14_Optional_baseIN4mlir15AsmResourceBlobELb0ELb0EED2Ev.exit
  %i.ad = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25DialectResourceBlobHandleIN4test11TestDialectEEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i, label %_ZN4mlir25DialectResourceBlobHandleIN4test11TestDialectEECI2NS_28AsmDialectResourceHandleBaseIS3_NS_26DialectResourceBlobManager9BlobEntryES2_EEEPS6_PS2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.41, i64 49), i64 50) #20
  store ptr %i.ae, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25DialectResourceBlobHandleIN4test11TestDialectEEEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25DialectResourceBlobHandleIN4test11TestDialectEEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir25DialectResourceBlobHandleIN4test11TestDialectEECI2NS_28AsmDialectResourceHandleBaseIS3_NS_26DialectResourceBlobManager9BlobEntryES2_EEEPS6_PS2_.exit

_ZN4mlir25DialectResourceBlobHandleIN4test11TestDialectEECI2NS_28AsmDialectResourceHandleBaseIS3_NS_26DialectResourceBlobManager9BlobEntryES2_EEEPS6_PS2_.exit: ; preds = %_ZNSt14_Optional_baseIN4mlir15AsmResourceBlobELb0ELb0EED2Ev.exit, %bb.i, %bb.j
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25DialectResourceBlobHandleIN4test11TestDialectEEEvE13resolveTypeIDEvE2id, align 8, !tbaa !16
  store ptr %i.o, ptr %0, align 8, !tbaa !79
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.01.0.copyload.i.i.i.i, ptr %i.af, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.ag, align 8, !tbaa !190
  ret void
}

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4mlir26DialectResourceBlobManager6insertEN4llvm9StringRefESt8optionalINS_15AsmResourceBlobEE(ptr noundef nonnull align 8 dereferenceable(88), ptr, i64, ptr nofree noundef align 8 dereferenceable(80)) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFN4mlir15AsmResourceBlobEmmEE11callback_fnIZNKS1_22AsmParsedResourceEntry11parseAsBlobEvEUlmmE_EES2_lmm(ptr dead_on_unwind noalias writable sret(%"class.mlir::AsmResourceBlob") align 8 %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #0 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.a = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %2, i64 noundef %3) #20, !noalias !197
  store ptr %i.a, ptr %0, align 8, !tbaa !69, !alias.scope !197
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !68, !alias.scope !197
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8, !tbaa !52, !alias.scope !197
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseIvJPvmmEEC1IPFvS2_mmES6_EET_NS3_8CalledAsIT0_EEENUlPKS3_S2_mmE_8__invokeESC_S2_mm, ptr %i.c, align 8, !tbaa !45, !alias.scope !197
  store ptr null, ptr %i.d, align 8, !tbaa !53, !alias.scope !197
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN4llvm17deallocate_bufferEPvmm, ptr %i.e, align 8, !alias.scope !195
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.f, align 8, !tbaa !83, !alias.scope !197
  ret void
}

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4llvm6detail18UniqueFunctionBaseIvJPvmmEEC1IPFvS2_mmES6_EET_NS3_8CalledAsIT0_EEENUlPKS3_S2_mmE_8__invokeESC_S2_mm(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !77
  tail call void %i.a(ptr noundef %1, i64 noundef %2, i64 noundef %3) #20, !inline_history !198
  ret void
}

declare void @_ZN4mlir26DialectResourceBlobManager6updateEN4llvm9StringRefEONS_15AsmResourceBlobE(ptr noundef nonnull align 8 dereferenceable(88), ptr, i64, ptr noundef nonnull align 8 dereferenceable(65)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_124TestDialectFoldInterfaceD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN4mlir16DialectInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir20DialectFoldInterface4foldEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS3_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_124TestDialectFoldInterface21shouldMaterializeIntoEPN4mlir6RegionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverIN4test11OneRegionOpEvE2idE
  %2 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverIN4test11OneRegionOpEvE2idE
  %spec.select.i.i.i.i.i = and i1 %2, %i.f
  ret i1 %spec.select.i.i.i.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120TestInlinerInterfaceD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN4mlir16DialectInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_120TestInlinerInterface15isLegalToInlineEPN4mlir9OperationES3_b(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i1 zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4
  %.not.i = icmp ult i32 %i.b, 16777216
  br i1 %.not.i, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nonnull @.str.45, i64 8) #20 ; 2 uses
  %i.d = extractvalue { ptr, i8 } %i.c, 1
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.f = extractvalue { ptr, i8 } %i.c, 0
  %i.g = icmp ne ptr %i.f, null
  br label %_ZN4mlir9Operation7hasAttrEN4llvm9StringRefE.exit

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = tail call noundef zeroext i1 @_ZNK4mlir14DictionaryAttr8containsEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr nonnull @.str.45, i64 8) #20
  br label %_ZN4mlir9Operation7hasAttrEN4llvm9StringRefE.exit

_ZN4mlir9Operation7hasAttrEN4llvm9StringRefE.exit: ; preds = %bb.c, %.thread.i
  %.1.i = phi i1 [ %i.i, %.thread.i ], [ %i.g, %bb.c ]
  %i.j = xor i1 %.1.i, true
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_120TestInlinerInterface15isLegalToInlineEPN4mlir6RegionES3_bRNS1_9IRMappingE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i1 zeroext %3, ptr nofree nonnull readnone align 8 captures(none) %4) unnamed_addr #12 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_120TestInlinerInterface15isLegalToInlineEPN4mlir9OperationEPNS1_6RegionEbRNS1_9IRMappingE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i1 zeroext %3, ptr nofree nonnull readnone align 8 captures(none) %4) unnamed_addr #12 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_120TestInlinerInterface24shouldAnalyzeRecursivelyEPN4mlir9OperationE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIN4test18FunctionalRegionOpEvE2idE
  %2 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverIN4test18FunctionalRegionOpEvE2idE
  %spec.select.i.i.i.i.i.not = or i1 %2, %i.d
  ret i1 %spec.select.i.i.i.i.i.not
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_120TestInlinerInterface16handleTerminatorEPN4mlir9OperationEPNS1_5BlockE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::OpBuilder", align 8   ; 7 uses
  %4 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIN4test12TestReturnOpEvE2idE
  %5 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverIN4test12TestReturnOpEvE2idE
  %spec.select.i.i.i.i.not = or i1 %5, %i.d
  %.not8 = icmp eq ptr %1, null
  %.not = or i1 %.not8, %spec.select.i.i.i.i.not
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #20
  store ptr %i.f, ptr %3, align 8, !tbaa !208
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.g, align 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !221
  %i.k = tail call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %1) #20
  store ptr %i.j, ptr %i.h, align 8, !tbaa !226
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.k, ptr %i.l, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.e, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 8388608
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseIN4test12TestReturnOpENS0_16VariadicOperandsEE11getOperandsEv.exit, label %bb.c, !prof !36

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !93
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !94
  %i.t = zext i32 %i.s to i64
  br label %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseIN4test12TestReturnOpENS0_16VariadicOperandsEE11getOperandsEv.exit

_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseIN4test12TestReturnOpENS0_16VariadicOperandsEE11getOperandsEv.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.q, %bb.c ], [ null, %bb.b ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.t, %bb.c ], [ 0, %bb.b ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i) #20
  %i.u = load i64, ptr %4, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load i64, ptr %i.v, align 8
  %i.x = call ptr @_ZN4mlir2cf8BranchOp6createERNS_9OpBuilderENS_8LocationEPNS_5BlockENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.0.0.copyload.i, ptr noundef %2, i64 %i.u, i64 %i.w) #20 ; 0 uses
  call void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseIN4test12TestReturnOpENS0_16VariadicOperandsEE11getOperandsEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_120TestInlinerInterface16handleTerminatorEPN4mlir9OperationENS1_10ValueRangeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  store i64 %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.e = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverIN4test12TestReturnOpEvE2idE
  %5 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverIN4test12TestReturnOpEvE2idE
  %spec.select.i.i.i.i.not = or i1 %5, %i.e
  %.not2425 = icmp eq ptr %1, null
  %.not24 = or i1 %.not2425, %spec.select.i.i.i.i.not
  br i1 %.not24, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 8388608
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %.loopexit, label %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseIN4test12TestReturnOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.thread, !prof !36

_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseIN4test12TestReturnOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.thread: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !94
  %i.k = zext i32 %i.j to i64
  %.not23 = icmp eq i64 %3, %i.k
  br i1 %.not23, label %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseIN4test12TestReturnOpENS0_16VariadicOperandsEE11getOperandsEv.exit, label %.loopexit

_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseIN4test12TestReturnOpENS0_16VariadicOperandsEE11getOperandsEv.exit: ; preds = %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseIN4test12TestReturnOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.thread
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !93
  %.not2627 = icmp eq i64 %3, 0
  br i1 %.not2627, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseIN4test12TestReturnOpENS0_16VariadicOperandsEE11getOperandsEv.exit, %_ZN4mlir5Value18replaceAllUsesWithES0_.exit
  %.sroa.9.029 = phi i64 [ %i.ac, %_ZN4mlir5Value18replaceAllUsesWithES0_.exit ], [ 0, %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseIN4test12TestReturnOpENS0_16VariadicOperandsEE11getOperandsEv.exit ] ; 3 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.9.029
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !233, !noalias !234 ; 4 uses
  %i.p = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %.sroa.9.029) #20 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !237  ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN4mlir5Value18replaceAllUsesWithES0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i
  %i.s = phi ptr [ %i.aa, %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i ], [ %i.q, %.lr.ph ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !240  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !241  ; 3 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !242
  %.not2.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not2.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %i.w, align 8, !tbaa !240
  br label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i

_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.x, align 8, !tbaa !233
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.t, align 8, !tbaa !240
  %i.y = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !237 ; 3 uses
  store ptr %i.y, ptr %i.s, align 8, !tbaa !241
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.s, ptr %i.z, align 8, !tbaa !240
  br label %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i

_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i: ; preds = %bb.e, %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i
  store ptr %i.s, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !237
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !237 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN4mlir5Value18replaceAllUsesWithES0_.exit, label %.lr.ph.i.i, !llvm.loop !231

_ZN4mlir5Value18replaceAllUsesWithES0_.exit:      ; preds = %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i, %.lr.ph
  %i.ac = add nuw nsw i64 %.sroa.9.029, 1         ; 2 uses
  %.not26 = icmp eq i64 %i.ac, %3
  br i1 %.not26, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZN4mlir5Value18replaceAllUsesWithES0_.exit, %bb.b, %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseIN4test12TestReturnOpENS0_16VariadicOperandsEE11getOperandsEv.exit, %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseIN4test12TestReturnOpENS0_16VariadicOperandsEE14getNumOperandsEv.exit.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZNK12_GLOBAL__N_120TestInlinerInterface25materializeCallConversionERN4mlir9OpBuilderENS1_5ValueENS1_4TypeENS1_8LocationE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, ptr %3, ptr %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.mlir::Value", align 8       ; 2 uses
  %6 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %7 = alloca %"class.mlir::Type", align 8        ; 6 uses
  %8 = alloca %"class.mlir::Type", align 8        ; 6 uses
  store ptr %2, ptr %5, align 8
  store ptr %3, ptr %6, align 8
  %i.a = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 32) #20
  br i1 %i.b, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.e = inttoptr i64 %i.d to ptr
  store ptr %i.e, ptr %7, align 8
  %i.f = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 16) #20
  br i1 %i.f, label %.critedge5, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.0.copyload.i.i.i.i.i6 = load i64, ptr %i.c, align 8
  %i.g = and i64 %.0.copyload.i.i.i.i.i6, -8
  %i.h = inttoptr i64 %i.g to ptr
  store ptr %i.h, ptr %8, align 8
  %i.i = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 32) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br i1 %i.i, label %bb.e, label %bb.f

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.f

.critedge5:                                       ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.e

bb.e:                                             ; preds = %.critedge5, %bb.d
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8, !tbaa !66
  %i.j = ptrtoint ptr %5 to i64
  %i.k = call ptr @_ZN4test10TestCastOp6createERN4mlir9OpBuilderENS1_8LocationENS1_4TypeENS1_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %4, ptr %.sroa.0.0.copyload, i64 %i.j, i64 1) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %.critedge, %bb.e
  %.0 = phi ptr [ %i.k, %bb.e ], [ null, %.critedge ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZNK12_GLOBAL__N_120TestInlinerInterface14handleArgumentERN4mlir9OpBuilderEPNS1_9OperationES5_NS1_5ValueENS1_14DictionaryAttrE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr %4, ptr %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.mlir::DictionaryAttr", align 8 ; 2 uses
  store ptr %5, ptr %6, align 8
  %i.a = call noundef zeroext i1 @_ZNK4mlir14DictionaryAttr8containsEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr nonnull @.str.46, i64 20) #20
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = call ptr @_ZN4test17TestTypeChangerOp6createERN4mlir9OpBuilderENS1_8LocationENS1_4TypeENS1_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %.sroa.0.0.copyload.i, ptr %i.e, ptr %4) #20
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.04.0 = phi ptr [ %i.g, %bb.b ], [ %4, %bb.a ]
  ret ptr %.sroa.04.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZNK12_GLOBAL__N_120TestInlinerInterface12handleResultERN4mlir9OpBuilderEPNS1_9OperationES5_NS1_5ValueENS1_14DictionaryAttrE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr %4, ptr %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.mlir::DictionaryAttr", align 8 ; 2 uses
  store ptr %5, ptr %6, align 8
  %i.a = call noundef zeroext i1 @_ZNK4mlir14DictionaryAttr8containsEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr nonnull @.str.47, i64 18) #20
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = call ptr @_ZN4test17TestTypeChangerOp6createERN4mlir9OpBuilderENS1_8LocationENS1_4TypeENS1_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %.sroa.0.0.copyload.i, ptr %i.e, ptr %4) #20
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.04.0 = phi ptr [ %i.g, %bb.b ], [ %4, %bb.a ]
  ret ptr %.sroa.04.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_120TestInlinerInterface24processInlinedCallBlocksEPN4mlir9OperationEN4llvm14iterator_rangeINS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS1_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(address) %2, ptr nofree readnone captures(address) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %class.anon.246, align 8            ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.e = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverIN4test16ConversionCallOpEvE2idE
  %5 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverIN4test16ConversionCallOpEvE2idE
  %spec.select.i.i.i.i.i.not12 = or i1 %5, %i.e
  %.not8 = icmp eq ptr %2, %3
  %or.cond = select i1 %spec.select.i.i.i.i.i.not12, i1 true, i1 %.not8
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = ptrtoint ptr %4 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4mlir5Block4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNK12_GLOBAL__N_120TestInlinerInterface24processInlinedCallBlocksEPNS_9OperationEN4llvm14iterator_rangeINS8_14ilist_iteratorINS8_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb0EvEELb0ELb0EEEEEEUlS7_E_S7_vEET3_OT1_.exit
  %.sroa.04.09 = phi ptr [ %2, %.lr.ph ], [ %i.n, %_ZN4mlir5Block4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNK12_GLOBAL__N_120TestInlinerInterface24processInlinedCallBlocksEPNS_9OperationEN4llvm14iterator_rangeINS8_14ilist_iteratorINS8_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb0EvEELb0ELb0EEEEEEUlS7_E_S7_vEET3_OT1_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %i.a, ptr %4, align 8, !tbaa !243
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.04.09, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.09, i64 32 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not5.i.i, label %_ZN4mlir5Block4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNK12_GLOBAL__N_120TestInlinerInterface24processInlinedCallBlocksEPNS_9OperationEN4llvm14iterator_rangeINS8_14ilist_iteratorINS8_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb0EvEELb0ELb0EEEEEEUlS7_E_S7_vEET3_OT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.01.06.i.i = phi ptr [ %i.k, %.lr.ph.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97   ; 2 uses
  %i.l = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.01.06.i.i) #20
  call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.l, ptr nonnull @_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNK12_GLOBAL__N_120TestInlinerInterface24processInlinedCallBlocksES3_NS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS1_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEEEUlS3_E_EEvlS3_, i64 %i.f, i32 noundef 1)
  %.not.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i, label %_ZN4mlir5Block4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNK12_GLOBAL__N_120TestInlinerInterface24processInlinedCallBlocksEPNS_9OperationEN4llvm14iterator_rangeINS8_14ilist_iteratorINS8_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb0EvEELb0ELb0EEEEEEUlS7_E_S7_vEET3_OT1_.exit, label %.lr.ph.i.i

_ZN4mlir5Block4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNK12_GLOBAL__N_120TestInlinerInterface24processInlinedCallBlocksEPNS_9OperationEN4llvm14iterator_rangeINS8_14ilist_iteratorINS8_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb0EvEELb0ELb0EEEEEEUlS7_E_S7_vEET3_OT1_.exit: ; preds = %.lr.ph.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.09, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !97   ; 2 uses
  %.not = icmp eq ptr %i.n, %3
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %_ZN4mlir5Block4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNK12_GLOBAL__N_120TestInlinerInterface24processInlinedCallBlocksEPNS_9OperationEN4llvm14iterator_rangeINS8_14ilist_iteratorINS8_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb0EvEELb0ELb0EEEEEEUlS7_E_S7_vEET3_OT1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir23DialectInlinerInterface28allowSingleBlockOptimizationEN4llvm14iterator_rangeINS1_14ilist_iteratorINS1_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

declare { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64), ptr, i64) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4mlir14DictionaryAttr8containsEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #3

declare ptr @_ZN4mlir2cf8BranchOp6createERNS_9OpBuilderENS_8LocationEPNS_5BlockENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr noundef, i64, i64) local_unnamed_addr #3

declare void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #3

declare void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef) local_unnamed_addr #3

declare ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare ptr @_ZN4test10TestCastOp6createERN4mlir9OpBuilderENS1_8LocationENS1_4TypeENS1_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, i64, i64) local_unnamed_addr #3

declare ptr @_ZN4test17TestTypeChangerOp6createERN4mlir9OpBuilderENS1_8LocationENS1_4TypeENS1_5ValueE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #20, !inline_history !244
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #20 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !97 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !97 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !97   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !97   ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #20
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #20, !inline_history !244
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNK12_GLOBAL__N_120TestInlinerInterface24processInlinedCallBlocksES3_NS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS1_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEEEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !246
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %.val.val, i64 24
  %i.c = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  %i.d = tail call ptr @_ZN4mlir8UnitAttr3getEPNS_11MLIRContextE(ptr noundef %i.c) #20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 5, ptr %i.g, align 8, !tbaa !100
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !101
  store ptr @.str.48, ptr %2, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 18, ptr %i.i, align 8, !tbaa !34
  %i.j = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.f, ptr noundef nonnull align 8 dereferenceable(34) %2) #20
  call void @_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %i.j, ptr %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

declare ptr @_ZN4mlir8UnitAttr3getEPNS_11MLIRContextE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %4 = alloca %"class.mlir::NamedAttrList", align 8 ; 7 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp ult i32 %i.b, 16777216
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %i.f = call { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %i.d, i64 %i.e) #20
  %i.g = extractvalue { ptr, i8 } %i.f, 1
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.06.0.copyload = load ptr, ptr %3, align 8
  call void @_ZN4mlir9Operation15setInherentAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.sroa.06.0.copyload, ptr %2) #20
  br label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %i.i, align 8
  call void @_ZN4mlir13NamedAttrListC1ENS_14DictionaryAttrE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr %.sroa.04.0.copyload) #20
  %.sroa.03.0.copyload = load ptr, ptr %3, align 8
  %i.j = call ptr @_ZN4mlir13NamedAttrList3setENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr %.sroa.03.0.copyload, ptr %2) #20
  %.not10 = icmp eq ptr %i.j, %2
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #20
end_hunk_1
begin_hunk_2_@_ZNK12_GLOBAL__N_128TestBytecodeDialectInterface18upgradeFromVersionEPN4mlir9OperationERKNS1_14DialectVersionE:bb.a
_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.u

bb.t:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %10, ptr %3, align 8, !tbaa !77
  %i.be = ptrtoint ptr %3 to i64
  call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nonnull @_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNK12_GLOBAL__N_128TestBytecodeDialectInterface18upgradeFromVersionES3_RKNS1_14DialectVersionEEUlN4test16TestVersionedOpAEE_SH_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_, i64 %i.be, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.u

bb.u:                                             ; preds = %bb.b, %bb.t, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.0.0 = phi i8 [ 1, %bb.t ], [ %i.ay, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.b ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !269
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !82
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 24) #20
  %i.f = load ptr, ptr %0, align 8, !tbaa !81
  %i.g = load i32, ptr %i.a, align 8, !tbaa !82
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !82
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #20
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !275  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !276  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i13, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.0.i.i4 = phi ptr [ %i.j, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %i.i = load ptr, ptr %.0.i.i4, align 8, !tbaa !278 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i.i2, label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit, label %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i: ; preds = %.lr.ph
  tail call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.i) #20, !inline_history !270
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 192) #21, !inline_history !270
  br label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit

_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i
  store ptr null, ptr %.0.i.i4, align 8, !tbaa !278
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i4, i64 8 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i1, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, label %.lr.ph, !llvm.loop !271

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !275
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit
  %i.k = phi ptr [ %.pre, %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !279
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #21
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !282  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !283  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 2 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #21
  br label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !272

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.q, align 8, !tbaa !282
  br label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !284
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #21
  br label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !81 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit
  tail call void @free(ptr noundef %i.ad) #20
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir14DialectVersionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4test18TestDialectVersionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #21
  ret void
}

declare ptr @_ZN4test18TestAttrParamsAttr3getEPN4mlir11MLIRContextEii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK4mlir16DialectInterface10getContextEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir11MLIRContext14getTypeUniquerEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef ptr @_ZN4mlir14StorageUniquer16getSingletonImplENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(8), ptr) local_unnamed_addr #3

declare noundef i32 @_ZNK4test18TestAttrParamsAttr5getV0Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i32 @_ZNK4test18TestAttrParamsAttr5getV1Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #3

declare i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNK12_GLOBAL__N_128TestBytecodeDialectInterface18upgradeFromVersionES3_RKNS1_14DialectVersionEEUlN4test16TestVersionedOpAEE_SH_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_(i64 %0, ptr noundef %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIN4test16TestVersionedOpAEvE2idE
  %2 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverIN4test16TestVersionedOpAEvE2idE
  %spec.select.i.i.i.i.not.i = or i1 %2, %i.d
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %spec.select.i.i.i.i.not.i
  br i1 %.not.i, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNK12_GLOBAL__N_128TestBytecodeDialectInterface18upgradeFromVersionEPNS_9OperationERKNS_14DialectVersionEEUlN4test16TestVersionedOpAEE_SC_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S7_PNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESK_E4typeES7_OT1_ENKUlS7_E_clES7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.f, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.g = lshr i32 %i.f, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.g, 1
  %i.h = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #20
  %i.l = tail call ptr @_ZN4mlir8BoolAttr3getEPNS_11MLIRContextEb(ptr noundef %i.k, i1 noundef zeroext false) #20
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %i.l, ptr %i.m, align 8
  br label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNK12_GLOBAL__N_128TestBytecodeDialectInterface18upgradeFromVersionEPNS_9OperationERKNS_14DialectVersionEEUlN4test16TestVersionedOpAEE_SC_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S7_PNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESK_E4typeES7_OT1_ENKUlS7_E_clES7_.exit

_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNK12_GLOBAL__N_128TestBytecodeDialectInterface18upgradeFromVersionEPNS_9OperationERKNS_14DialectVersionEEUlN4test16TestVersionedOpAEE_SC_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S7_PNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESK_E4typeES7_OT1_ENKUlS7_E_clES7_.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @_ZN4mlir8BoolAttr3getEPNS_11MLIRContextEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4mlir16DialectInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_127TestToEmitCDialectInterfaceD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN4mlir16DialectInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_127TestToEmitCDialectInterface40populateConvertToEmitCConversionPatternsERN4mlir16ConversionTargetERNS1_13TypeConverterERNS1_17RewritePatternSetESt8optionalIbE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(508) %2, ptr nofree nonnull readnone align 8 captures(none) %3, i16 %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.std::function", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false), !alias.scope !290
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN4llvm13LogicalResultEENS1_12PointerUnionIJN4mlir4TypeENS5_5ValueEEEERNS1_15SmallVectorImplIS6_EEEZNKS5_13TypeConverter12wrapCallbackIN4test25TestMemRefElementTypeTypeEZNSD_12wrapCallbackISG_ZNK12_GLOBAL__N_127TestToEmitCDialectInterface40populateConvertToEmitCConversionPatternsERNS5_16ConversionTargetERSD_RNS5_17RewritePatternSetES0_IbEEUlSG_E_EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_T_EESt8functionISC_EE4typeEOSS_EUlSG_SB_E_EENSR_IXaasr3stdE14is_invocable_vISS_ST_SB_Esr3stdE12is_base_of_vIS6_ST_EESV_E4typeESY_EUlS8_SB_E_E9_M_invokeERKSt9_Any_dataOS8_SB_, ptr %i.b, align 8, !tbaa !111, !alias.scope !290
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN4llvm13LogicalResultEENS1_12PointerUnionIJN4mlir4TypeENS5_5ValueEEEERNS1_15SmallVectorImplIS6_EEEZNKS5_13TypeConverter12wrapCallbackIN4test25TestMemRefElementTypeTypeEZNSD_12wrapCallbackISG_ZNK12_GLOBAL__N_127TestToEmitCDialectInterface40populateConvertToEmitCConversionPatternsERNS5_16ConversionTargetERSD_RNS5_17RewritePatternSetES0_IbEEUlSG_E_EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_T_EESt8functionISC_EE4typeEOSS_EUlSG_SB_E_EENSR_IXaasr3stdE14is_invocable_vISS_ST_SB_Esr3stdE12is_base_of_vIS6_ST_EESV_E4typeESY_EUlS8_SB_E_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation, ptr %i.a, align 8, !tbaa !112, !alias.scope !290
  call void @_ZN4mlir13TypeConverter18registerConversionESt8functionIFSt8optionalIN4llvm13LogicalResultEENS3_12PointerUnionIJNS_4TypeENS_5ValueEEEERNS3_15SmallVectorImplIS7_EEEE(ptr noundef nonnull align 8 dereferenceable(508) %2, ptr nofree noundef nonnull align 8 dereferenceable(32) %5)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4mlir13TypeConverter13addConversionIZNK12_GLOBAL__N_127TestToEmitCDialectInterface40populateConvertToEmitCConversionPatternsERNS_16ConversionTargetERS0_RNS_17RewritePatternSetESt8optionalIbEEUlN4test25TestMemRefElementTypeTypeEE_SC_EEvOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3) #20, !inline_history !289 ; 0 uses
  br label %_ZN4mlir13TypeConverter13addConversionIZNK12_GLOBAL__N_127TestToEmitCDialectInterface40populateConvertToEmitCConversionPatternsERNS_16ConversionTargetERS0_RNS_17RewritePatternSetESt8optionalIbEEUlN4test25TestMemRefElementTypeTypeEE_SC_EEvOT_.exit

_ZN4mlir13TypeConverter13addConversionIZNK12_GLOBAL__N_127TestToEmitCDialectInterface40populateConvertToEmitCConversionPatternsERNS_16ConversionTargetERS0_RNS_17RewritePatternSetESt8optionalIbEEUlN4test25TestMemRefElementTypeTypeEE_SC_EEvOT_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13TypeConverter18registerConversionESt8functionIFSt8optionalIN4llvm13LogicalResultEENS3_12PointerUnionIJNS_4TypeENS_5ValueEEEERNS3_15SmallVectorImplIS7_EEEE(ptr noundef nonnull align 8 dereferenceable(508) %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !107
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !108

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm23SmallVectorTemplateBaseISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS_15SmallVectorImplIS7_EEEELb0EE18growAndEmplaceBackIJSE_EEERSE_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS0_IS7_EEEEE12emplace_backIJSD_EEERSD_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.c to i64
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.g ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !111
  store ptr %i.l, ptr %i.j, align 8, !tbaa !111
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112
  %.not.i.i.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFSt8optionalIN4llvm13LogicalResultEENS1_12PointerUnionIJN4mlir4TypeENS5_5ValueEEEERNS1_15SmallVectorImplIS6_EEEEC2EOSD_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !113
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !112
  store ptr %i.p, ptr %i.o, align 8, !tbaa !112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFSt8optionalIN4llvm13LogicalResultEENS1_12PointerUnionIJN4mlir4TypeENS5_5ValueEEEERNS1_15SmallVectorImplIS6_EEEEC2EOSD_.exit.i

_ZNSt8functionIFSt8optionalIN4llvm13LogicalResultEENS1_12PointerUnionIJN4mlir4TypeENS5_5ValueEEEERNS1_15SmallVectorImplIS6_EEEEC2EOSD_.exit.i: ; preds = %bb.d, %bb.c
  %i.q = load i32, ptr %i.b, align 8, !tbaa !82
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.b, align 8, !tbaa !82
  br label %_ZN4llvm15SmallVectorImplISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS0_IS7_EEEEE12emplace_backIJSD_EEERSD_DpOT_.exit

_ZN4llvm15SmallVectorImplISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS0_IS7_EEEEE12emplace_backIJSD_EEERSD_DpOT_.exit: ; preds = %bb.b, %_ZNSt8functionIFSt8optionalIN4llvm13LogicalResultEENS1_12PointerUnionIJN4mlir4TypeENS5_5ValueEEEERNS1_15SmallVectorImplIS6_EEEEC2EOSD_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !117  ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5clearEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS0_IS7_EEEEE12emplace_backIJSD_EEERSD_DpOT_.exit
  %i.w = shl i32 %i.u, 2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.y = load i32, ptr %i.x, align 4, !tbaa !118  ; 3 uses
  %i.z = icmp ult i32 %i.w, %i.y
  %i.aa = icmp ugt i32 %i.y, 64
  %or.cond.i = and i1 %i.z, %i.aa
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.s)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5clearEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !119
  %i.ad = zext i32 %i.y to i64
  %i.ae = add nuw nsw i64 %i.ad, 31
  %i.af = lshr i64 %i.ae, 3
  %i.ag = and i64 %i.af, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ac, i8 0, i64 %i.ag, i1 false)
  store i32 0, ptr %i.t, align 8, !tbaa !117
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5clearEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5clearEv.exit: ; preds = %_ZN4llvm15SmallVectorImplISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS0_IS7_EEEEE12emplace_backIJSD_EEERSD_DpOT_.exit, %bb.f, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !122 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E5clearEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5clearEv.exit
  %i.al = shl i32 %i.aj, 2
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 436 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !123 ; 4 uses
  %i.ao = icmp ult i32 %i.al, %i.an
  br i1 %i.ao, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp ugt i32 %i.an, 64
  br i1 %i.ap, label %bb.j, label %.lr.ph7.preheader.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ah)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E5clearEv.exit

bb.k:                                             ; preds = %bb.h
  %i.aq = icmp eq i32 %i.an, 0
  br i1 %i.aq, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.k, %bb.i
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !124
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !125
  %i.au = zext i32 %i.an to i64
  %i.av = add nuw nsw i64 %i.au, 31
  %i.aw = lshr i64 %i.av, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !35 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.az = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.l

bb.l:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.ay, %.lr.ph.i.i ], [ %i.bj, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ba = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.bb = or disjoint i32 %i.ba, %i.az
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !81 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef %i.bf) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.m, %bb.l
  %i.bi = add i32 %.0.i3.i.i, -1
  %i.bj = and i32 %i.bi, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bj, 0
end_hunk_2
