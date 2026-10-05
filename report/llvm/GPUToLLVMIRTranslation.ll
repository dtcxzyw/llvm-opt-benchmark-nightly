Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GPUToLLVMIRTranslation?download=true
inline.NumInlined: 979
inline.NumDeleted: 707
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::TypeID" = type { ptr }
%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::tuple.245" = type { %"struct.std::_Tuple_impl.246" }
%"struct.std::_Tuple_impl.246" = type { %"struct.std::_Head_base.247" }
%"struct.std::_Head_base.247" = type { ptr }
%"class.std::tuple.248" = type { %"struct.std::_Tuple_impl.249" }
%"struct.std::_Tuple_impl.249" = type { %"struct.std::_Head_base.250" }
%"struct.std::_Head_base.250" = type { ptr }
%"class.std::unique_ptr.182" = type { %"struct.std::__uniq_ptr_data.183" }
%"struct.std::__uniq_ptr_data.183" = type { %"class.std::__uniq_ptr_impl.184" }
%"class.std::__uniq_ptr_impl.184" = type { %"class.std::tuple.185" }
%"class.std::tuple.185" = type { %"struct.std::_Tuple_impl.186" }
%"struct.std::_Tuple_impl.186" = type { %"struct.std::_Head_base.189" }
%"struct.std::_Head_base.189" = type { ptr }
%"class.mlir::DialectRegistry" = type { %"class.std::map", %"class.llvm::SmallVector", %"class.llvm::MapVector" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::pair<mlir::TypeID, std::function<mlir::Dialect *(mlir::MLIRContext *)>>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::pair<mlir::TypeID, std::function<mlir::Dialect *(mlir::MLIRContext *)>>>>, std::less<void>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::pair<mlir::TypeID, std::function<mlir::Dialect *(mlir::MLIRContext *)>>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::pair<mlir::TypeID, std::function<mlir::Dialect *(mlir::MLIRContext *)>>>>, std::less<void>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [32 x i8] }
%"class.llvm::MapVector" = type { %"class.llvm::DenseMap", %"class.llvm::SmallVector.0" }
%"class.llvm::DenseMap" = type { ptr, ptr, i32, i32 }
%"class.llvm::SmallVector.0" = type { %"class.llvm::SmallVectorImpl.1" }
%"class.llvm::SmallVectorImpl.1" = type { %"class.llvm::SmallVectorTemplateBase.2" }
%"class.llvm::SmallVectorTemplateBase.2" = type { %"class.llvm::SmallVectorTemplateCommon.3" }
%"class.llvm::SmallVectorTemplateCommon.3" = type { %"class.llvm::SmallVectorBase" }
%"class.std::unique_ptr.11" = type { %"struct.std::__uniq_ptr_data.12" }
%"struct.std::__uniq_ptr_data.12" = type { %"class.std::__uniq_ptr_impl.13" }
%"class.std::__uniq_ptr_impl.13" = type { %"class.std::tuple.14" }
%"class.std::tuple.14" = type { %"struct.std::_Tuple_impl.15" }
%"struct.std::_Tuple_impl.15" = type { %"struct.std::_Head_base.18" }
%"struct.std::_Head_base.18" = type { ptr }
%"class.mlir::InFlightDiagnostic" = type { ptr, %"class.std::optional.133" }
%"class.std::optional.133" = type { %"struct.std::_Optional_base.134" }
%"struct.std::_Optional_base.134" = type { %"struct.std::_Optional_payload.136" }
%"struct.std::_Optional_payload.136" = type { %"struct.std::_Optional_payload.base.155", [7 x i8] }
%"struct.std::_Optional_payload.base.155" = type { %"struct.std::_Optional_payload_base.base.154" }
%"struct.std::_Optional_payload_base.base.154" = type <{ %"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage", i8 }>
%"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage" = type { %"class.mlir::Diagnostic" }
%"class.mlir::Diagnostic" = type { %"class.mlir::Location", i32, %"class.llvm::SmallVector.139", %"class.std::vector", %"class.std::vector.147", %"class.llvm::SmallVector.152" }
%"class.mlir::Location" = type { %"class.mlir::LocationAttr" }
%"class.mlir::LocationAttr" = type { %"class.mlir::Attribute" }
%"class.mlir::Attribute" = type { ptr }
%"class.llvm::SmallVector.139" = type { %"class.llvm::SmallVectorImpl.140", %"struct.llvm::SmallVectorStorage.143" }
%"class.llvm::SmallVectorImpl.140" = type { %"class.llvm::SmallVectorTemplateBase.141" }
%"class.llvm::SmallVectorTemplateBase.141" = type { %"class.llvm::SmallVectorTemplateCommon.142" }
%"class.llvm::SmallVectorTemplateCommon.142" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.143" = type { [96 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.147" = type { %"struct.std::_Vector_base.148" }
%"struct.std::_Vector_base.148" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::SmallVector.152" = type { %"class.llvm::SmallVectorImpl.140" }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.mlir::gpu::LaunchFuncOp" = type { %"class.mlir::Op.117" }
%"class.mlir::Op.117" = type { %"class.mlir::OpState" }
%"class.mlir::OpState" = type { ptr }
%"class.mlir::gpu::OffloadingLLVMTranslationAttrInterface" = type { %"class.mlir::AttributeInterface" }
%"class.mlir::AttributeInterface" = type { %"class.mlir::detail::Interface" }
%"class.mlir::detail::Interface" = type { %"class.mlir::Attribute", ptr }
%class.anon.208 = type { ptr }
%"class.std::unique_ptr.209" = type { %"struct.std::__uniq_ptr_data.210" }
%"struct.std::__uniq_ptr_data.210" = type { %"class.std::__uniq_ptr_impl.211" }
%"class.std::__uniq_ptr_impl.211" = type { %"class.std::tuple.212" }
%"class.std::tuple.212" = type { %"struct.std::_Tuple_impl.213" }
%"struct.std::_Tuple_impl.213" = type { %"struct.std::_Head_base.216" }
%"struct.std::_Head_base.216" = type { ptr }

$_ZN4mlir15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_E = comdat any

$_ZN4mlir15DialectRegistryD2Ev = comdat any

$_ZNK4mlir31LLVMTranslationDialectInterface14amendOperationEPNS_9OperationEN4llvm8ArrayRefIPNS3_11InstructionEEENS_14NamedAttributeERNS_4LLVM17ModuleTranslationE = comdat any

$_ZNK4mlir31LLVMTranslationDialectInterface20convertParameterAttrENS_4LLVM10LLVMFuncOpEiNS_14NamedAttributeERNS1_17ModuleTranslationE = comdat any

$_ZN4llvm23DefaultDoCastIfPossibleIN4mlir3gpu38OffloadingLLVMTranslationAttrInterfaceEKNS1_9AttributeENS_8CastInfoIS3_S5_vEEE16doCastIfPossibleES4_ = comdat any

$_ZN4mlir10DiagnosticD2Ev = comdat any

$_ZN4mlir18InFlightDiagnosticC2EOS0_ = comdat any

$_ZN4llvm15SmallVectorImplIN4mlir18DiagnosticArgumentEEaSEOS3_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IN4mlir6TypeIDESt8functionIFPNS8_7DialectEPNS8_11MLIRContextEEEEESt10_Select1stISI_ESt4lessIvESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E = comdat any

$_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_3gpu10GPUDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_ = comdat any

$_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_3gpu10GPUDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation = comdat any

$_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_3gpu10GPUDialectEEEPT_vEUlvE_EES6_l = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESF_IJOS8_EEEEERS9_DpOT_ = comdat any

$_ZZN4mlir15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_EEN9ExtensionD0Ev = comdat any

$_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5applyES6_N4llvm15MutableArrayRefIPNS_7DialectEEE = comdat any

$_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5cloneEv = comdat any

$_ZZN4mlir15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_EENK9Extension5applyES5_PS3_ = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZTVZN4mlir15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterfaceE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir16DialectInterfaceD2Ev, ptr @_ZN12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterfaceD0Ev, ptr @_ZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE, ptr @_ZNK4mlir31LLVMTranslationDialectInterface14amendOperationEPNS_9OperationEN4llvm8ArrayRefIPNS3_11InstructionEEENS_14NamedAttributeERNS_4LLVM17ModuleTranslationE, ptr @_ZNK4mlir31LLVMTranslationDialectInterface20convertParameterAttrENS_4LLVM10LLVMFuncOpEiNS_14NamedAttributeERNS1_17ModuleTranslationE] }, align 8
@_ZZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str = private unnamed_addr constant [88 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::LLVMTranslationDialectInterface]\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3gpu11GPUModuleOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3gpu8BinaryOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.4 = private unnamed_addr constant [100 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::gpu::OffloadingLLVMTranslationAttrInterface]\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3gpu12LaunchFuncOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"Couldn't find the binary holding the kernel: \00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"unsupported GPU operation: \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3gpu10GPUDialectEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTVZN4mlir15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir20DialectExtensionBaseD2Ev, ptr @_ZZN4mlir15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_EEN9ExtensionD0Ev, ptr @_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5applyES6_N4llvm15MutableArrayRefIPNS_7DialectEEE, ptr @_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5cloneEv, ptr @_ZZN4mlir15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_EENK9Extension5applyES5_PS3_] }, comdat, align 8
@_ZTVN4mlir20DialectExtensionBaseE = external unnamed_addr constant { [6 x ptr] }, align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir29registerGPUDialectTranslationERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_3gpu10GPUDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, ptr %i.b, align 8, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_3gpu10GPUDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.a, align 8, !tbaa !14
  call void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_3gpu10GPUDialectEvE2idE, ptr nonnull @.str.9, i64 3, ptr noundef nonnull align 8 dereferenceable(32) %1) #14
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4mlir15DialectRegistry6insertINS_3gpu10GPUDialectEEEvv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #14, !inline_history !88 ; 0 uses
  br label %_ZN4mlir15DialectRegistry6insertINS_3gpu10GPUDialectEEEvv.exit

_ZN4mlir15DialectRegistry6insertINS_3gpu10GPUDialectEEEvv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.e = call noundef zeroext i1 @_ZN4mlir15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_E(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull @"_ZZN4mlir29registerGPUDialectTranslationERNS_15DialectRegistryEEN3$_08__invokeEPNS_11MLIRContextEPNS_3gpu10GPUDialectE") ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_E(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::tuple.245", align 8    ; 5 uses
  %3 = alloca %"class.std::tuple.248", align 8    ; 5 uses
  %4 = alloca %"class.mlir::TypeID", align 8      ; 8 uses
  %5 = alloca %"class.std::unique_ptr.182", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #15, !noalias !100 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !16, !noalias !100
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 3, ptr %i.e, align 4, !tbaa !17, !noalias !100
  store ptr @.str.9, ptr %i.c, align 8, !noalias !100
  %.sroa.4.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 3, ptr %.sroa.4.0..sroa_idx2.i.i.i, align 8, !noalias !100
  store i32 1, ptr %i.d, align 8, !tbaa !18, !noalias !100
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVZN4mlir15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension, i64 16), ptr %i.a, align 8, !tbaa !20, !noalias !100
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %1, ptr %i.f, align 8, !tbaa !29, !noalias !100
  store ptr %i.a, ptr %5, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %1, ptr %4, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %4), !noalias !101 ; 2 uses
  %.fca.1.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.h, 1
  %i.i = trunc nuw i8 %.fca.1.extract.i.i.i.i.i to i1 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.k = ptrtoint ptr %i.a to i64
  br i1 %i.i, label %bb.b, label %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread

_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i

bb.b:                                             ; preds = %bb.a
  %.fca.0.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.h, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !18   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i, i64 8
  store i32 %i.m, ptr %i.n, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %4, ptr %2, align 8, !tbaa !36, !alias.scope !104
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %5, ptr %3, align 8, !tbaa !38, !alias.scope !105
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.p = load i32, ptr %i.o, align 4, !tbaa !17
  %.not.i.i.i.i = icmp ult i32 %i.m, %i.p
  br i1 %.not.i.i.i.i, label %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread6, label %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit, !prof !39

_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread6: ; preds = %bb.b
  %i.q = zext i32 %i.m to i64
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.q ; 2 uses
  %i.t = load i64, ptr %4, align 8, !tbaa !40
  store i64 %i.t, ptr %i.s, align 8, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.k, ptr %i.u, align 8, !tbaa !41
  %i.v = add nuw i32 %i.m, 1
  store i32 %i.v, ptr %i.l, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_3gpu10GPUDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit

_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit: ; preds = %bb.b
  %i.w = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESF_IJOS8_EEEEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  %.pre.pre = load ptr, ptr %5, align 8, !tbaa !41 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i = icmp eq ptr %.pre.pre, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_3gpu10GPUDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i: ; preds = %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit
  %i.x = phi ptr [ %i.a, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread ], [ %.pre.pre, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit ] ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(72) %i.x) #14, !inline_history !99
  br label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_3gpu10GPUDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit

_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_3gpu10GPUDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit: ; preds = %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread6, %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit
  ret i1 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir29registerGPUDialectTranslationERNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 8 uses
  %2 = alloca %"class.mlir::DialectRegistry", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN4mlir15DialectRegistryC1Ev(ptr noundef nonnull align 8 dereferenceable(136) %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_3gpu10GPUDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, ptr %i.b, align 8, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_3gpu10GPUDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.a, align 8, !tbaa !14
  call void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_3gpu10GPUDialectEvE2idE, ptr nonnull @.str.9, i64 3, ptr noundef nonnull align 8 dereferenceable(32) %1) #14
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN4mlir29registerGPUDialectTranslationERNS_15DialectRegistryE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #14, !inline_history !106 ; 0 uses
  br label %_ZN4mlir29registerGPUDialectTranslationERNS_15DialectRegistryE.exit

_ZN4mlir29registerGPUDialectTranslationERNS_15DialectRegistryE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.e = call noundef zeroext i1 @_ZN4mlir15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_E(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull @"_ZZN4mlir29registerGPUDialectTranslationERNS_15DialectRegistryEEN3$_08__invokeEPNS_11MLIRContextEPNS_3gpu10GPUDialectE") ; 0 uses
  call void @_ZN4mlir11MLIRContext21appendDialectRegistryERKNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(136) %2) #14
  call void @_ZN4mlir15DialectRegistryD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

declare void @_ZN4mlir15DialectRegistryC1Ev(ptr noundef nonnull align 8 dereferenceable(136)) unnamed_addr #2

declare void @_ZN4mlir11MLIRContext21appendDialectRegistryERKNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir15DialectRegistryD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %i.f = zext i32 %i.e to i64
  %.idx.i.i = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_20DialectExtensionBaseESt14default_deleteIS3_EEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.h, %_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_20DialectExtensionBaseESt14default_deleteIS3_EEED2Ev.exit.i.i.i ], [ %i.g, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_20DialectExtensionBaseESt14default_deleteIS3_EEED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(72) %i.j) #14, !inline_history !107
  br label %_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_20DialectExtensionBaseESt14default_deleteIS3_EEED2Ev.exit.i.i.i

_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_20DialectExtensionBaseESt14default_deleteIS3_EEED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.c, %i.h
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i.i: ; preds = %_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_20DialectExtensionBaseESt14default_deleteIS3_EEED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i.i, %bb.a
  %i.n = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4llvm11SmallVectorISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELj0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.i.i
  tail call void @free(ptr noundef %i.n) #14
  br label %_ZN4llvm11SmallVectorISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELj0EED2Ev.exit.i: ; preds = %bb.b, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.r = load i32, ptr %i.q, align 4, !tbaa !46   ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN4llvm9MapVectorIN4mlir6TypeIDESt10unique_ptrINS1_20DialectExtensionBaseESt14default_deleteIS4_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S7_ELj0EEELj0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELj0EED2Ev.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.u = zext i32 %i.r to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 8) #14
  br label %_ZN4llvm9MapVectorIN4mlir6TypeIDESt10unique_ptrINS1_20DialectExtensionBaseESt14default_deleteIS4_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S7_ELj0EEELj0EED2Ev.exit

_ZN4llvm9MapVectorIN4mlir6TypeIDESt10unique_ptrINS1_20DialectExtensionBaseESt14default_deleteIS4_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S7_ELj0EEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELj0EED2Ev.exit.i, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !18 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm9MapVectorIN4mlir6TypeIDESt10unique_ptrINS1_20DialectExtensionBaseESt14default_deleteIS4_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S7_ELj0EEELj0EED2Ev.exit
  %i.ae = zext i32 %i.ad to i64
  %.idx.i = shl nuw nsw i64 %i.ae, 5
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.af, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.05.i.i, i64 -32 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !52 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.05.i.i, i64 -16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !53
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.not.i.i = icmp eq ptr %i.ab, %i.ag
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !108

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.aa, align 8, !tbaa !16
  br label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, %_ZN4llvm9MapVectorIN4mlir6TypeIDESt10unique_ptrINS1_20DialectExtensionBaseESt14default_deleteIS4_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S7_ELj0EEELj0EED2Ev.exit
  %i.am = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i ], [ %i.ab, %_ZN4llvm9MapVectorIN4mlir6TypeIDESt10unique_ptrINS1_20DialectExtensionBaseESt14default_deleteIS4_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S7_ELj0EEELj0EED2Ev.exit ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN4llvm11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj1EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i
  tail call void @free(ptr noundef %i.am) #14
  br label %_ZN4llvm11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj1EED2Ev.exit

_ZN4llvm11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj1EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i, %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !110
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IN4mlir6TypeIDESt8functionIFPNS8_7DialectEPNS8_11MLIRContextEEEEESt10_Select1stISI_ESt4lessIvESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.aq)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN4mlir29registerGPUDialectTranslationERNS_15DialectRegistryEEN3$_08__invokeEPNS_11MLIRContextEPNS_3gpu10GPUDialectE"(ptr nofree readnone captures(none) %0, ptr noundef %1) #3 align 2 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.11", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #15, !noalias !114 ; 4 uses
  %i.b = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id acquire, align 8, !noalias !114
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZSt11make_uniqueIN12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id) #14, !noalias !114
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt11make_uniqueIN12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 49), i64 37) #14, !noalias !114
  store ptr %i.e, ptr @_ZZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id, align 8, !noalias !114
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id) #14, !noalias !114
  br label %_ZSt11make_uniqueIN12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i

_ZSt11make_uniqueIN12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !40, !noalias !114
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !116, !noalias !114
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i, ptr %i.g, align 8, !tbaa !40, !noalias !114
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterfaceE, i64 16), ptr %i.a, align 8, !tbaa !20, !noalias !114
  store ptr %i.a, ptr %2, align 8, !tbaa !119
  call void @_ZN4mlir7Dialect12addInterfaceESt10unique_ptrINS_16DialectInterfaceESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %2) #14
  %i.h = load ptr, ptr %2, align 8, !tbaa !120    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %"_ZZN4mlir29registerGPUDialectTranslationERNS_15DialectRegistryEENK3$_0clEPNS_11MLIRContextEPNS_3gpu10GPUDialectE.exit", label %_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i.i: ; preds = %_ZSt11make_uniqueIN12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h) #14, !inline_history !113
  br label %"_ZZN4mlir29registerGPUDialectTranslationERNS_15DialectRegistryEENK3$_0clEPNS_11MLIRContextEPNS_3gpu10GPUDialectE.exit"

"_ZZN4mlir29registerGPUDialectTranslationERNS_15DialectRegistryEENK3$_0clEPNS_11MLIRContextEPNS_3gpu10GPUDialectE.exit": ; preds = %_ZSt11make_uniqueIN12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i, %_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare void @_ZN4mlir7Dialect12addInterfaceESt10unique_ptrINS_16DialectInterfaceESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(96), ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4mlir16DialectInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterfaceD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN4mlir16DialectInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal i8 @_ZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 1 %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 10 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %7 = alloca %"class.mlir::gpu::LaunchFuncOp", align 8 ; 7 uses
  %8 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 9 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.mlir::gpu::OffloadingLLVMTranslationAttrInterface", align 8 ; 5 uses
  %11 = alloca %"class.mlir::gpu::OffloadingLLVMTranslationAttrInterface", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59   ; 3 uses
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_3gpu11GPUModuleOpEvE2idE
  %.not2.i.i = icmp eq ptr %1, null
  %.not.i.i = or i1 %.not2.i.i, %i.d
  br i1 %.not.i.i, label %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEEUlNS3_3gpu11GPUModuleOpEE_EERS7_OT_.exit, label %_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE7DefaultIZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationES3_RNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEEUlS3_E_EES4_OT_.exit

_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEEUlNS3_3gpu11GPUModuleOpEE_EERS7_OT_.exit: ; preds = %bb.a
  %.not = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_3gpu8BinaryOpEvE2idE
  br i1 %.not, label %bb.b, label %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEEUlNS3_3gpu8BinaryOpEE_EERS7_OT_.exit

bb.b:                                             ; preds = %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEEUlNS3_3gpu11GPUModuleOpEE_EERS7_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %.not.i.i.i.i.i.i = icmp ugt i32 %i.f, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.g = lshr i32 %i.f, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.g, 1
  %i.h = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !127
  %i.l = tail call { ptr, ptr } @_ZN4llvm23DefaultDoCastIfPossibleIN4mlir3gpu38OffloadingLLVMTranslationAttrInterfaceEKNS1_9AttributeENS_8CastInfoIS3_S5_vEEE16doCastIfPossibleES4_(ptr %i.k) ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0
  store ptr %i.m, ptr %11, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.o = extractvalue { ptr, ptr } %i.l, 1
  store ptr %i.o, ptr %i.n, align 8
  %i.p = call i8 @_ZNK4mlir3gpu38OffloadingLLVMTranslationAttrInterface11embedBinaryEPNS_9OperationERN4llvm13IRBuilderBaseERNS_4LLVM17ModuleTranslationE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 1 %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE7DefaultIZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationES3_RNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEEUlS3_E_EES4_OT_.exit

_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEEUlNS3_3gpu8BinaryOpEE_EERS7_OT_.exit: ; preds = %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEEUlNS3_3gpu11GPUModuleOpEE_EERS7_OT_.exit
  %.not31 = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_3gpu12LaunchFuncOpEvE2idE
  br i1 %.not31, label %bb.c, label %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEEUlNS3_3gpu12LaunchFuncOpEE_EERS7_OT_.exit

bb.c:                                             ; preds = %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEEUlNS3_3gpu8BinaryOpEE_EERS7_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %1, ptr %7, align 8
  %i.q = call ptr @_ZN4mlir3gpu12LaunchFuncOp19getKernelModuleNameEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #14
  %i.r = call noundef ptr @_ZN4mlir11SymbolTable23lookupNearestSymbolFromEPNS_9OperationENS_10StringAttrE(ptr noundef nonnull %1, ptr %i.q) #14 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !124
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !59
  %12 = icmp eq ptr %i.u, @_ZN4mlir6detail14TypeIDResolverINS_3gpu8BinaryOpEvE2idE
  br i1 %12, label %_ZN4mlir11SymbolTable23lookupNearestSymbolFromINS_3gpu8BinaryOpEEET_PNS_9OperationENS_10StringAttrE.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.w, align 1, !tbaa !130
  store ptr @.str.5, ptr %9, align 8, !tbaa !53
  store i8 3, ptr %i.v, align 8, !tbaa !131
  call void @_ZN4mlir7OpState9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(34) %9) #14
  %i.x = call ptr @_ZN4mlir3gpu12LaunchFuncOp19getKernelModuleNameEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #14
  %i.y = load ptr, ptr %8, align 8, !tbaa !68
  %.not.i.i.i.i.i.i12 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i12, label %_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit.thread.i.i.i.i, label %_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit.i.i.i.i

_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit.i.i.i.i: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aa = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(192) %i.z, ptr %i.x) #14 ; 0 uses
  %.pr.i.i.i.i = load ptr, ptr %8, align 8, !tbaa !68
  %.not.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit.thread.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit.i.i.i.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #14
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit.thread.i.i.i.i

_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit.thread.i.i.i.i: ; preds = %bb.f, %_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit.i.i.i.i, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !69, !range !70, !noundef !71
  %i.ad = trunc nuw i8 %i.ac to i1
  store i8 0, ptr %i.ab, align 8, !tbaa !69
  br i1 %i.ad, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i.i

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit.thread.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ae) #14
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i.i:    ; preds = %bb.g, %_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %_ZZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENKUlNS1_3gpu12LaunchFuncOpEE_clESB_.exit.i.i

_ZN4mlir11SymbolTable23lookupNearestSymbolFromINS_3gpu8BinaryOpEEET_PNS_9OperationENS_10StringAttrE.exit.i.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %.not.i.i.i3.i.i.i.i = icmp ugt i32 %i.ag, 16777215
  call void @llvm.assume(i1 %.not.i.i.i3.i.i.i.i)
  %i.ah = lshr i32 %i.ag, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.ah, 1
  %i.ai = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !127
  %i.am = call { ptr, ptr } @_ZN4llvm23DefaultDoCastIfPossibleIN4mlir3gpu38OffloadingLLVMTranslationAttrInterfaceEKNS1_9AttributeENS_8CastInfoIS3_S5_vEEE16doCastIfPossibleES4_(ptr %i.al) ; 2 uses
  %i.an = extractvalue { ptr, ptr } %i.am, 0
  store ptr %i.an, ptr %10, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ap = extractvalue { ptr, ptr } %i.am, 1
  store ptr %i.ap, ptr %i.ao, align 8
  %i.aq = load ptr, ptr %7, align 8, !tbaa !134
  %i.ar = call i8 @_ZNK4mlir3gpu38OffloadingLLVMTranslationAttrInterface12launchKernelEPNS_9OperationES3_RN4llvm13IRBuilderBaseERNS_4LLVM17ModuleTranslationE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.aq, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 1 %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %_ZZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENKUlNS1_3gpu12LaunchFuncOpEE_clESB_.exit.i.i

_ZZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENKUlNS1_3gpu12LaunchFuncOpEE_clESB_.exit.i.i: ; preds = %_ZN4mlir11SymbolTable23lookupNearestSymbolFromINS_3gpu8BinaryOpEEET_PNS_9OperationENS_10StringAttrE.exit.i.i.i.i, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i.i
  %.sroa.02.0.i.i.i.i = phi i8 [ %i.ar, %_ZN4mlir11SymbolTable23lookupNearestSymbolFromINS_3gpu8BinaryOpEEET_PNS_9OperationENS_10StringAttrE.exit.i.i.i.i ], [ 0, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE7DefaultIZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationES3_RNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEEUlS3_E_EES4_OT_.exit

_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEEUlNS3_3gpu12LaunchFuncOpEE_EERS7_OT_.exit: ; preds = %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEEUlNS3_3gpu8BinaryOpEE_EERS7_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14, !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14, !noalias !135
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.at, align 1, !tbaa !130, !noalias !135
  store ptr @.str.6, ptr %5, align 8, !tbaa !53, !noalias !135
  store i8 3, ptr %i.as, align 8, !tbaa !131, !noalias !135
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(34) %5) #14, !noalias !135
  %i.au = load ptr, ptr %4, align 8, !tbaa !68, !noalias !135
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZNO4mlir18InFlightDiagnosticlsINS_13OperationNameEEEOS0_OT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEEUlNS3_3gpu12LaunchFuncOpEE_EERS7_OT_.exit
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !124, !noalias !135
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aw = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsENS_13OperationNameE(ptr noundef nonnull align 8 dereferenceable(192) %i.av, ptr %.sroa.0.0.copyload.i.i.i) #14, !noalias !135 ; 0 uses
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_13OperationNameEEEOS0_OT_.exit.i.i

_ZNO4mlir18InFlightDiagnosticlsINS_13OperationNameEEEOS0_OT_.exit.i.i: ; preds = %bb.h, %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEEUlNS3_3gpu12LaunchFuncOpEE_EERS7_OT_.exit
  call void @_ZN4mlir18InFlightDiagnosticC2EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %4)
  %i.ax = load ptr, ptr %4, align 8, !tbaa !68, !noalias !135
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_13OperationNameEEEOS0_OT_.exit.i.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNO4mlir18InFlightDiagnosticlsINS_13OperationNameEEEOS0_OT_.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !69, !range !70, !noalias !135, !noundef !71
  %i.ba = trunc nuw i8 %i.az to i1
  store i8 0, ptr %i.ay, align 8, !tbaa !69, !noalias !135
  br i1 %i.ba, label %bb.k, label %_ZZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENKUlS3_E_clES3_.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bb) #14
  br label %_ZZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENKUlS3_E_clES3_.exit.i

_ZZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENKUlS3_E_clES3_.exit.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14, !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14, !noalias !135
  %i.bc = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %6) #14
  %i.bd = load ptr, ptr %6, align 8, !tbaa !68
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENKUlS3_E_clES3_.exit.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %6) #14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENKUlS3_E_clES3_.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !69, !range !70, !noundef !71
  %i.bg = trunc nuw i8 %i.bf to i1
  store i8 0, ptr %i.be, align 8, !tbaa !69
  br i1 %i.bg, label %bb.n, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bh) #14
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i:          ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE7DefaultIZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationES3_RNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEEUlS3_E_EES4_OT_.exit

_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE7DefaultIZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationES3_RNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEEUlS3_E_EES4_OT_.exit: ; preds = %bb.a, %bb.b, %_ZZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENKUlNS1_3gpu12LaunchFuncOpEE_clESB_.exit.i.i, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i
  %.sroa.0.0.i = phi i8 [ %i.bc, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i ], [ %.sroa.02.0.i.i.i.i, %_ZZNK12_GLOBAL__N_136GPUDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENKUlNS1_3gpu12LaunchFuncOpEE_clESB_.exit.i.i ], [ %i.p, %bb.b ], [ 1, %bb.a ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir31LLVMTranslationDialectInterface14amendOperationEPNS_9OperationEN4llvm8ArrayRefIPNS3_11InstructionEEENS_14NamedAttributeERNS_4LLVM17ModuleTranslationE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr %2, i64 %3, ptr %4, ptr %5, ptr noundef nonnull align 1 %6) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir31LLVMTranslationDialectInterface20convertParameterAttrENS_4LLVM10LLVMFuncOpEiNS_14NamedAttributeERNS1_17ModuleTranslationE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 noundef %2, ptr %3, ptr %4, ptr noundef nonnull align 1 %5) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare i8 @_ZNK4mlir3gpu38OffloadingLLVMTranslationAttrInterface11embedBinaryEPNS_9OperationERN4llvm13IRBuilderBaseERNS_4LLVM17ModuleTranslationE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 1) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4llvm23DefaultDoCastIfPossibleIN4mlir3gpu38OffloadingLLVMTranslationAttrInterfaceEKNS1_9AttributeENS_8CastInfoIS3_S5_vEEE16doCastIfPossibleES4_(ptr %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !139    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4mlir6detail9InterfaceINS_3gpu38OffloadingLLVMTranslationAttrInterfaceENS_9AttributeENS2_6detail53OffloadingLLVMTranslationAttrInterfaceInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id) #14
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_3gpu38OffloadingLLVMTranslationAttrInterfaceENS_9AttributeENS2_6detail53OffloadingLLVMTranslationAttrInterfaceInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.4, i64 49), i64 49) #14
  store ptr %i.f, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id) #14
  br label %_ZN4mlir6detail9InterfaceINS_3gpu38OffloadingLLVMTranslationAttrInterfaceENS_9AttributeENS2_6detail53OffloadingLLVMTranslationAttrInterfaceInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_3gpu38OffloadingLLVMTranslationAttrInterfaceENS_9AttributeENS2_6detail53OffloadingLLVMTranslationAttrInterfaceInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !40 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.i, 0
end_hunk_0
