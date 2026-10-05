Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VCIXToLLVMIRTranslation?download=true
inline.NumInlined: 1030
inline.NumDeleted: 679
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
%"class.std::tuple.364" = type { %"struct.std::_Tuple_impl.365" }
%"struct.std::_Tuple_impl.365" = type { %"struct.std::_Head_base.366" }
%"struct.std::_Head_base.366" = type { ptr }
%"class.std::tuple.367" = type { %"struct.std::_Tuple_impl.368" }
%"struct.std::_Tuple_impl.368" = type { %"struct.std::_Head_base.369" }
%"struct.std::_Head_base.369" = type { ptr }
%"class.std::unique_ptr.304" = type { %"struct.std::__uniq_ptr_data.305" }
%"struct.std::__uniq_ptr_data.305" = type { %"class.std::__uniq_ptr_impl.306" }
%"class.std::__uniq_ptr_impl.306" = type { %"class.std::tuple.307" }
%"class.std::tuple.307" = type { %"struct.std::_Tuple_impl.308" }
%"struct.std::_Tuple_impl.308" = type { %"struct.std::_Head_base.311" }
%"struct.std::_Head_base.311" = type { ptr }
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
%"class.mlir::Value" = type { ptr }
%"class.mlir::VectorType" = type { %"class.mlir::detail::StorageUserBase.137" }
%"class.mlir::detail::StorageUserBase.137" = type { %"class.mlir::Type" }
%"class.mlir::Type" = type { ptr }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.mlir::IntegerAttr" = type { %"class.mlir::detail::StorageUserBase.175" }
%"class.mlir::detail::StorageUserBase.175" = type { %"class.mlir::Attribute" }
%"class.mlir::Attribute" = type { ptr }
%"class.mlir::IntegerType" = type { %"class.mlir::detail::StorageUserBase.180" }
%"class.mlir::detail::StorageUserBase.180" = type { %"class.mlir::Type" }
%"class.mlir::vcix::BinaryImmOp" = type { %"class.mlir::Op.44" }
%"class.mlir::Op.44" = type { %"class.mlir::OpState" }
%"class.mlir::OpState" = type { ptr }
%"class.mlir::vcix::BinaryOp" = type { %"class.mlir::Op.150" }
%"class.mlir::Op.150" = type { %"class.mlir::OpState" }
%"class.llvm::DenseMap.108" = type { ptr, ptr, i32, i32 }
%class.anon.325 = type { ptr }
%"class.std::unique_ptr.326" = type { %"struct.std::__uniq_ptr_data.327" }
%"struct.std::__uniq_ptr_data.327" = type { %"class.std::__uniq_ptr_impl.328" }
%"class.std::__uniq_ptr_impl.328" = type { %"class.std::tuple.329" }
%"class.std::tuple.329" = type { %"struct.std::_Tuple_impl.330" }
%"struct.std::_Tuple_impl.330" = type { %"struct.std::_Head_base.333" }
%"struct.std::_Head_base.333" = type { ptr }

$_ZN4mlir15DialectRegistry12addExtensionIJNS_4vcix11VCIXDialectEEEEbPFvPNS_11MLIRContextEDpPT_E = comdat any

$_ZN4mlir15DialectRegistryD2Ev = comdat any

$_ZNK4mlir31LLVMTranslationDialectInterface14amendOperationEPNS_9OperationEN4llvm8ArrayRefIPNS3_11InstructionEEENS_14NamedAttributeERNS_4LLVM17ModuleTranslationE = comdat any

$_ZNK4mlir31LLVMTranslationDialectInterface20convertParameterAttrENS_4LLVM10LLVMFuncOpEiNS_14NamedAttributeERNS1_17ModuleTranslationE = comdat any

$_ZN4llvm13IRBuilderBase17CreateZExtOrTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineE = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IN4mlir6TypeIDESt8functionIFPNS8_7DialectEPNS8_11MLIRContextEEEEESt10_Select1stISI_ESt4lessIvESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E = comdat any

$_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_4vcix11VCIXDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_ = comdat any

$_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_4vcix11VCIXDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation = comdat any

$_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_4vcix11VCIXDialectEEEPT_vEUlvE_EES6_l = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESF_IJOS8_EEEEERS9_DpOT_ = comdat any

$_ZZN4mlir15DialectRegistry12addExtensionIJNS_4vcix11VCIXDialectEEEEbPFvPNS_11MLIRContextEDpPT_EEN9ExtensionD0Ev = comdat any

$_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_4vcix11VCIXDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5applyES6_N4llvm15MutableArrayRefIPNS_7DialectEEE = comdat any

$_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_4vcix11VCIXDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5cloneEv = comdat any

$_ZZN4mlir15DialectRegistry12addExtensionIJNS_4vcix11VCIXDialectEEEEbPFvPNS_11MLIRContextEDpPT_EENK9Extension5applyES5_PS3_ = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZTVZN4mlir15DialectRegistry12addExtensionIJNS_4vcix11VCIXDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN12_GLOBAL__N_137VCIXDialectLLVMIRTranslationInterfaceE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir16DialectInterfaceD2Ev, ptr @_ZN12_GLOBAL__N_137VCIXDialectLLVMIRTranslationInterfaceD0Ev, ptr @_ZNK12_GLOBAL__N_137VCIXDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE, ptr @_ZNK4mlir31LLVMTranslationDialectInterface14amendOperationEPNS_9OperationEN4llvm8ArrayRefIPNS3_11InstructionEEENS_14NamedAttributeERNS_4LLVM17ModuleTranslationE, ptr @_ZNK4mlir31LLVMTranslationDialectInterface20convertParameterAttrENS_4LLVM10LLVMFuncOpEiNS_14NamedAttributeERNS1_17ModuleTranslationE] }, align 8
@_ZZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str = private unnamed_addr constant [88 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::LLVMTranslationDialectInterface]\00", align 1
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4vcix11BinaryImmOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4vcix8BinaryOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4vcix11VCIXDialectEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"vcix\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTVZN4mlir15DialectRegistry12addExtensionIJNS_4vcix11VCIXDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir20DialectExtensionBaseD2Ev, ptr @_ZZN4mlir15DialectRegistry12addExtensionIJNS_4vcix11VCIXDialectEEEEbPFvPNS_11MLIRContextEDpPT_EEN9ExtensionD0Ev, ptr @_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_4vcix11VCIXDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5applyES6_N4llvm15MutableArrayRefIPNS_7DialectEEE, ptr @_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_4vcix11VCIXDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5cloneEv, ptr @_ZZN4mlir15DialectRegistry12addExtensionIJNS_4vcix11VCIXDialectEEEEbPFvPNS_11MLIRContextEDpPT_EENK9Extension5applyES5_PS3_] }, comdat, align 8
@_ZTVN4mlir20DialectExtensionBaseE = external unnamed_addr constant { [6 x ptr] }, align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir30registerVCIXDialectTranslationERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_4vcix11VCIXDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, ptr %i.b, align 8, !tbaa !14
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_4vcix11VCIXDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.a, align 8, !tbaa !15
  call void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_4vcix11VCIXDialectEvE2idE, ptr nonnull @.str.7, i64 4, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4mlir15DialectRegistry6insertINS_4vcix11VCIXDialectEEEvv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #15, !inline_history !90 ; 0 uses
  br label %_ZN4mlir15DialectRegistry6insertINS_4vcix11VCIXDialectEEEvv.exit

_ZN4mlir15DialectRegistry6insertINS_4vcix11VCIXDialectEEEvv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.e = call noundef zeroext i1 @_ZN4mlir15DialectRegistry12addExtensionIJNS_4vcix11VCIXDialectEEEEbPFvPNS_11MLIRContextEDpPT_E(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull @"_ZZN4mlir30registerVCIXDialectTranslationERNS_15DialectRegistryEEN3$_08__invokeEPNS_11MLIRContextEPNS_4vcix11VCIXDialectE") ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir15DialectRegistry12addExtensionIJNS_4vcix11VCIXDialectEEEEbPFvPNS_11MLIRContextEDpPT_E(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::tuple.364", align 8    ; 5 uses
  %3 = alloca %"class.std::tuple.367", align 8    ; 5 uses
  %4 = alloca %"class.mlir::TypeID", align 8      ; 8 uses
  %5 = alloca %"class.std::unique_ptr.304", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #16, !noalias !102 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !17, !noalias !102
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 3, ptr %i.e, align 4, !tbaa !18, !noalias !102
  store ptr @.str.7, ptr %i.c, align 8, !noalias !102
  %.sroa.4.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 4, ptr %.sroa.4.0..sroa_idx2.i.i.i, align 8, !noalias !102
  store i32 1, ptr %i.d, align 8, !tbaa !19, !noalias !102
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVZN4mlir15DialectRegistry12addExtensionIJNS_4vcix11VCIXDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension, i64 16), ptr %i.a, align 8, !tbaa !21, !noalias !102
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %1, ptr %i.f, align 8, !tbaa !30, !noalias !102
  store ptr %i.a, ptr %5, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %1, ptr %4, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %4), !noalias !103 ; 2 uses
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
  %i.m = load i32, ptr %i.l, align 8, !tbaa !19   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i, i64 8
  store i32 %i.m, ptr %i.n, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr %4, ptr %2, align 8, !tbaa !37, !alias.scope !106
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %5, ptr %3, align 8, !tbaa !39, !alias.scope !107
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.p = load i32, ptr %i.o, align 4, !tbaa !18
  %.not.i.i.i.i = icmp ult i32 %i.m, %i.p
  br i1 %.not.i.i.i.i, label %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread6, label %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit, !prof !40

_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread6: ; preds = %bb.b
  %i.q = zext i32 %i.m to i64
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.q ; 2 uses
  %i.t = load i64, ptr %4, align 8, !tbaa !41
  store i64 %i.t, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.k, ptr %i.u, align 8, !tbaa !42
  %i.v = add nuw i32 %i.m, 1
  store i32 %i.v, ptr %i.l, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_4vcix11VCIXDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit

_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit: ; preds = %bb.b
  %i.w = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESF_IJOS8_EEEEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  %.pre.pre = load ptr, ptr %5, align 8, !tbaa !42 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i = icmp eq ptr %.pre.pre, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_4vcix11VCIXDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i: ; preds = %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit
  %i.x = phi ptr [ %i.a, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread ], [ %.pre.pre, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit ] ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(72) %i.x) #15, !inline_history !101
  br label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_4vcix11VCIXDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit

_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_4vcix11VCIXDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit: ; preds = %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread6, %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit
  ret i1 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir30registerVCIXDialectTranslationERNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 8 uses
  %2 = alloca %"class.mlir::DialectRegistry", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN4mlir15DialectRegistryC1Ev(ptr noundef nonnull align 8 dereferenceable(136) %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_4vcix11VCIXDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, ptr %i.b, align 8, !tbaa !14
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_4vcix11VCIXDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.a, align 8, !tbaa !15
  call void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_4vcix11VCIXDialectEvE2idE, ptr nonnull @.str.7, i64 4, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN4mlir30registerVCIXDialectTranslationERNS_15DialectRegistryE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #15, !inline_history !108 ; 0 uses
  br label %_ZN4mlir30registerVCIXDialectTranslationERNS_15DialectRegistryE.exit

_ZN4mlir30registerVCIXDialectTranslationERNS_15DialectRegistryE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.e = call noundef zeroext i1 @_ZN4mlir15DialectRegistry12addExtensionIJNS_4vcix11VCIXDialectEEEEbPFvPNS_11MLIRContextEDpPT_E(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull @"_ZZN4mlir30registerVCIXDialectTranslationERNS_15DialectRegistryEEN3$_08__invokeEPNS_11MLIRContextEPNS_4vcix11VCIXDialectE") ; 0 uses
  call void @_ZN4mlir11MLIRContext21appendDialectRegistryERKNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(136) %2) #15
  call void @_ZN4mlir15DialectRegistryD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

declare void @_ZN4mlir15DialectRegistryC1Ev(ptr noundef nonnull align 8 dereferenceable(136)) unnamed_addr #2

declare void @_ZN4mlir11MLIRContext21appendDialectRegistryERKNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir15DialectRegistryD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19   ; 2 uses
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
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_20DialectExtensionBaseESt14default_deleteIS3_EEED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(72) %i.j) #15, !inline_history !109
  br label %_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_20DialectExtensionBaseESt14default_deleteIS3_EEED2Ev.exit.i.i.i

_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_20DialectExtensionBaseESt14default_deleteIS3_EEED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.c, %i.h
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i.i: ; preds = %_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_20DialectExtensionBaseESt14default_deleteIS3_EEED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !17
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i.i, %bb.a
  %i.n = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4llvm11SmallVectorISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELj0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.i.i
  tail call void @free(ptr noundef %i.n) #15
  br label %_ZN4llvm11SmallVectorISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELj0EED2Ev.exit.i: ; preds = %bb.b, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.r = load i32, ptr %i.q, align 4, !tbaa !47   ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN4llvm9MapVectorIN4mlir6TypeIDESt10unique_ptrINS1_20DialectExtensionBaseESt14default_deleteIS4_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S7_ELj0EEELj0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELj0EED2Ev.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.u = zext i32 %i.r to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 8) #15
  br label %_ZN4llvm9MapVectorIN4mlir6TypeIDESt10unique_ptrINS1_20DialectExtensionBaseESt14default_deleteIS4_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S7_ELj0EEELj0EED2Ev.exit

_ZN4llvm9MapVectorIN4mlir6TypeIDESt10unique_ptrINS1_20DialectExtensionBaseESt14default_deleteIS4_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S7_ELj0EEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELj0EED2Ev.exit.i, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !17 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !19 ; 2 uses
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
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.05.i.i, i64 -16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !54
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.not.i.i = icmp eq ptr %i.ab, %i.ag
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !110

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.aa, align 8, !tbaa !17
  br label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, %_ZN4llvm9MapVectorIN4mlir6TypeIDESt10unique_ptrINS1_20DialectExtensionBaseESt14default_deleteIS4_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S7_ELj0EEELj0EED2Ev.exit
  %i.am = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i ], [ %i.ab, %_ZN4llvm9MapVectorIN4mlir6TypeIDESt10unique_ptrINS1_20DialectExtensionBaseESt14default_deleteIS4_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S7_ELj0EEELj0EED2Ev.exit ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN4llvm11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj1EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i
  tail call void @free(ptr noundef %i.am) #15
  br label %_ZN4llvm11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj1EED2Ev.exit

_ZN4llvm11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj1EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i, %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !112
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IN4mlir6TypeIDESt8functionIFPNS8_7DialectEPNS8_11MLIRContextEEEEESt10_Select1stISI_ESt4lessIvESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.aq)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN4mlir30registerVCIXDialectTranslationERNS_15DialectRegistryEEN3$_08__invokeEPNS_11MLIRContextEPNS_4vcix11VCIXDialectE"(ptr nofree readnone captures(none) %0, ptr noundef %1) #3 align 2 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.11", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #16, !noalias !116 ; 4 uses
  %i.b = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id acquire, align 8, !noalias !116
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZSt11make_uniqueIN12_GLOBAL__N_137VCIXDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i, !prof !117

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id) #15, !noalias !116
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt11make_uniqueIN12_GLOBAL__N_137VCIXDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 49), i64 37) #15, !noalias !116
  store ptr %i.e, ptr @_ZZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id, align 8, !noalias !116
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id) #15, !noalias !116
  br label %_ZSt11make_uniqueIN12_GLOBAL__N_137VCIXDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i

_ZSt11make_uniqueIN12_GLOBAL__N_137VCIXDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !41, !noalias !116
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !119, !noalias !116
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i, ptr %i.g, align 8, !tbaa !41, !noalias !116
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_137VCIXDialectLLVMIRTranslationInterfaceE, i64 16), ptr %i.a, align 8, !tbaa !21, !noalias !116
  store ptr %i.a, ptr %2, align 8, !tbaa !122
  call void @_ZN4mlir7Dialect12addInterfaceESt10unique_ptrINS_16DialectInterfaceESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %2) #15
  %i.h = load ptr, ptr %2, align 8, !tbaa !123    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %"_ZZN4mlir30registerVCIXDialectTranslationERNS_15DialectRegistryEENK3$_0clEPNS_11MLIRContextEPNS_4vcix11VCIXDialectE.exit", label %_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i.i: ; preds = %_ZSt11make_uniqueIN12_GLOBAL__N_137VCIXDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h) #15, !inline_history !115
  br label %"_ZZN4mlir30registerVCIXDialectTranslationERNS_15DialectRegistryEENK3$_0clEPNS_11MLIRContextEPNS_4vcix11VCIXDialectE.exit"

"_ZZN4mlir30registerVCIXDialectTranslationERNS_15DialectRegistryEENK3$_0clEPNS_11MLIRContextEPNS_4vcix11VCIXDialectE.exit": ; preds = %_ZSt11make_uniqueIN12_GLOBAL__N_137VCIXDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i, %_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare void @_ZN4mlir7Dialect12addInterfaceESt10unique_ptrINS_16DialectInterfaceESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(96), ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4mlir16DialectInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_137VCIXDialectLLVMIRTranslationInterfaceD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN4mlir16DialectInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_137VCIXDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(592) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %5 = alloca %"class.mlir::VectorType", align 8  ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %7 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  %8 = alloca %"class.mlir::IntegerType", align 8 ; 4 uses
  %9 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %10 = alloca %"class.mlir::VectorType", align 8 ; 6 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %12 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  %13 = alloca %"class.mlir::IntegerType", align 8 ; 4 uses
  %14 = alloca %"class.mlir::vcix::BinaryImmOp", align 8 ; 15 uses
  %i.a = alloca [4 x ptr], align 8                ; 7 uses
  %i.b = alloca [5 x ptr], align 8                ; 8 uses
  %15 = alloca %"class.mlir::vcix::BinaryOp", align 8 ; 19 uses
  %i.c = alloca [4 x ptr], align 8                ; 7 uses
  %i.d = alloca [5 x ptr], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !161
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !162  ; 2 uses
  %i.h = icmp eq ptr %i.g, @_ZN4mlir6detail14TypeIDResolverINS_4vcix11BinaryImmOpEvE2idE
  %16 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4vcix11BinaryImmOpEvE2idE
  %spec.select.i.i.i.i = and i1 %16, %i.h
  %spec.select.i.i = select i1 %spec.select.i.i.i.i, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %14, align 8
  %.not = icmp eq ptr %spec.select.i.i, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.i = icmp eq ptr %i.g, @_ZN4mlir6detail14TypeIDResolverINS_4vcix8BinaryOpEvE2idE
  %17 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4vcix8BinaryOpEvE2idE
  %spec.select.i.i.i.i114 = and i1 %17, %i.i
  %spec.select.i.i114 = select i1 %spec.select.i.i.i.i114, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i114, ptr %15, align 8
  %.not188 = icmp eq ptr %spec.select.i.i114, null
  br i1 %.not188, label %.thread187, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.j = call ptr @_ZN4mlir4vcix11BinaryImmOp9getOpcodeEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  store ptr %i.j, ptr %12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.k = call ptr @_ZNK4mlir11IntegerAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #15
  store ptr %i.k, ptr %13, align 8
  %i.l = call noundef i32 @_ZNK4mlir11IntegerType8getWidthEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !164
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !266, !nonnull !61, !align !62
  %i.p = call noundef ptr @_ZN4llvm4Type9getIntNTyERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef %i.l) #15 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %i.q = call ptr @_ZN4mlir4vcix11BinaryImmOp9getOpcodeEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #15
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.r, align 8
  %i.s = call noundef ptr @_ZN4mlir4LLVM6detail15getLLVMConstantEPN4llvm4TypeENS_9AttributeENS_8LocationERKNS0_17ModuleTranslationE(ptr noundef %i.p, ptr %i.q, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(592) %3) #15
  %i.t = call ptr @_ZN4mlir4vcix11BinaryImmOp6getImmEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #15
  %.sroa.0.0.copyload.i95 = load ptr, ptr %i.r, align 8
  %i.u = call noundef ptr @_ZN4mlir4LLVM6detail15getLLVMConstantEPN4llvm4TypeENS_9AttributeENS_8LocationERKNS0_17ModuleTranslationE(ptr noundef %i.p, ptr %i.t, ptr %.sroa.0.0.copyload.i95, ptr noundef nonnull align 8 dereferenceable(592) %3) #15
  %i.v = load ptr, ptr %14, align 8, !tbaa !269
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = call i64 @_ZN4mlir4vcix11BinaryImmOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1) #15 ; 3 uses
  %i.aa = load ptr, ptr %14, align 8, !tbaa !269  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %i.ac, 8388608
  %.not.i.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir4vcix11BinaryImmOp14getODSOperandsEj.exit.i, label %bb.c, !prof !270

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !273
  br label %_ZN4mlir4vcix11BinaryImmOp14getODSOperandsEj.exit.i

_ZN4mlir4vcix11BinaryImmOp14getODSOperandsEj.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.af, %bb.c ], [ null, %bb.b ]
  %i.ag = and i64 %i.z, 4294967295                ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.z, 32
  %i.ah = add i64 %.sroa.5.0.extract.shift.i.i, %i.z
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = icmp eq i64 %i.ai, %i.ag
  br i1 %i.aj, label %_ZN4mlir4vcix11BinaryImmOp5getVlEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir4vcix11BinaryImmOp14getODSOperandsEj.exit.i
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !64
  br label %_ZN4mlir4vcix11BinaryImmOp5getVlEv.exit

_ZN4mlir4vcix11BinaryImmOp5getVlEv.exit:          ; preds = %_ZN4mlir4vcix11BinaryImmOp14getODSOperandsEj.exit.i, %bb.d
  %.sroa.06.0.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i, %bb.d ], [ null, %_ZN4mlir4vcix11BinaryImmOp14getODSOperandsEj.exit.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 232 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !67, !noalias !274
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !68, !noalias !274 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 252 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !69, !noalias !274 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir4vcix11BinaryImmOp5getVlEv.exit
  %i.at = add i32 %i.ar, -1                       ; 2 uses
  %i.au = ptrtoint ptr %.sroa.06.0.i to i64
  %i.av = xor i64 %i.au, -49064778989728563       ; 2 uses
  %i.aw = lshr i64 %i.av, 30
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = mul i64 %i.ax, -4658895280553007687     ; 2 uses
  %i.az = lshr i64 %i.ay, 27
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = mul i64 %i.ba, -7723592293110705685     ; 2 uses
  %i.bc = lshr i64 %i.bb, 31
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = trunc i64 %i.bd to i32
  %i.bf = and i32 %i.at, %i.be                    ; 3 uses
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = lshr i64 %i.bg, 5
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !70
  %i.bk = and i32 %i.bf, 31
  %i.bl = lshr i32 %i.bj, %i.bk
  %i.bm = trunc i32 %i.bl to i1
  br i1 %i.bm, label %.lr.ph.i.i.i, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread, !prof !71

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %i.bn = phi i64 [ %i.bs, %bb.f ], [ %i.bg, %bb.e ]
  %.01419.i.i.i = phi i32 [ %i.br, %bb.f ], [ %i.bf, %bb.e ]
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.bn ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.bo, align 8, !tbaa !64
  %i.bp = icmp eq ptr %.sroa.06.0.i, %.sroa.0.0.copyload.i.i.i
  br i1 %i.bp, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit, label %bb.f, !prof !40

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.bq = add nuw i32 %.01419.i.i.i, 1
  %i.br = and i32 %i.bq, %i.at                    ; 3 uses
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 5
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !70
  %i.bw = and i32 %i.br, 31
  %i.bx = lshr i32 %i.bv, %i.bw
  %i.by = trunc i32 %i.bx to i1
  br i1 %i.by, label %.lr.ph.i.i.i, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread, !prof !72

_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread: ; preds = %bb.f, %_ZN4mlir4vcix11BinaryImmOp5getVlEv.exit, %bb.e
  %.sroa.0.0.copyload.i97181 = load ptr, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.y, ptr %10, align 8
  br label %bb.h

_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit: ; preds = %.lr.ph.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !74 ; 2 uses
  %.sroa.0.0.copyload.i97 = load ptr, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.y, ptr %10, align 8
  %.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i16 257, ptr %i.cb, align 8
  %i.cc = call noundef ptr @_ZN4llvm13IRBuilderBase17CreateZExtOrTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull %i.ca, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(34) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %_ZL8createVLRN4llvm13IRBuilderBaseEPNS_5ValueEN4mlir10VectorTypeEPNS_4TypeENS4_8LocationERNS4_4LLVM17ModuleTranslationE.exit

bb.h:                                             ; preds = %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit
  %.sroa.0.0.copyload.i97183 = phi ptr [ %.sroa.0.0.copyload.i97181, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread ], [ %.sroa.0.0.copyload.i97, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit ]
  %i.cd = load ptr, ptr %3, align 8, !tbaa !357
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ce) #15
  %i.cg = call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef nonnull %i.cf, i32 noundef 64, i32 noundef 0) #15
  %i.ch = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #15
  %i.ci = extractvalue { ptr, i64 } %i.ch, 0
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !75
  %i.ck = call ptr @_ZN4mlir11IntegerAttr3getENS_4TypeEl(ptr %i.cg, i64 noundef %i.cj) #15
  %i.cl = call noundef ptr @_ZN4mlir4LLVM6detail15getLLVMConstantEPN4llvm4TypeENS_9AttributeENS_8LocationERKNS0_17ModuleTranslationE(ptr noundef %i.p, ptr %i.ck, ptr %.sroa.0.0.copyload.i97183, ptr noundef nonnull align 8 dereferenceable(592) %3) #15
  br label %_ZL8createVLRN4llvm13IRBuilderBaseEPNS_5ValueEN4mlir10VectorTypeEPNS_4TypeENS4_8LocationERNS4_4LLVM17ModuleTranslationE.exit

_ZL8createVLRN4llvm13IRBuilderBaseEPNS_5ValueEN4mlir10VectorTypeEPNS_4TypeENS4_8LocationERNS4_4LLVM17ModuleTranslationE.exit: ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.cc, %bb.g ], [ %i.cl, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr %i.s, ptr %i.a, align 8, !tbaa !74
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cn = call i64 @_ZN4mlir4vcix11BinaryImmOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 0) #15
  %i.co = load ptr, ptr %14, align 8, !tbaa !269  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 72
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !273
  %i.cr = and i64 %i.cn, 4294967295
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %.sroa.0.0.copyload.i.i.i.i100 = load ptr, ptr %i.ct, align 8, !tbaa !64 ; 2 uses
  %i.cu = load ptr, ptr %i.am, align 8, !tbaa !67, !noalias !358
  %i.cv = load ptr, ptr %i.ao, align 8, !tbaa !68, !noalias !358 ; 2 uses
  %i.cw = load i32, ptr %i.aq, align 4, !tbaa !69, !noalias !358 ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit104, label %bb.i

bb.i:                                             ; preds = %_ZL8createVLRN4llvm13IRBuilderBaseEPNS_5ValueEN4mlir10VectorTypeEPNS_4TypeENS4_8LocationERNS4_4LLVM17ModuleTranslationE.exit
  %i.cy = add i32 %i.cw, -1                       ; 2 uses
  %i.cz = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i100 to i64
  %i.da = xor i64 %i.cz, -49064778989728563       ; 2 uses
  %i.db = lshr i64 %i.da, 30
  %i.dc = xor i64 %i.db, %i.da
  %i.dd = mul i64 %i.dc, -4658895280553007687     ; 2 uses
  %i.de = lshr i64 %i.dd, 27
  %i.df = xor i64 %i.de, %i.dd
  %i.dg = mul i64 %i.df, -7723592293110705685     ; 2 uses
  %i.dh = lshr i64 %i.dg, 31
  %i.di = xor i64 %i.dh, %i.dg
  %i.dj = trunc i64 %i.di to i32
  %i.dk = and i32 %i.cy, %i.dj                    ; 3 uses
  %i.dl = zext i32 %i.dk to i64                   ; 2 uses
  %i.dm = lshr i64 %i.dl, 5
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !70
  %i.dp = and i32 %i.dk, 31
  %i.dq = lshr i32 %i.do, %i.dp
  %i.dr = trunc i32 %i.dq to i1
  br i1 %i.dr, label %.lr.ph.i.i.i101, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit104, !prof !71

.lr.ph.i.i.i101:                                  ; preds = %bb.i, %bb.j
  %i.ds = phi i64 [ %i.dx, %bb.j ], [ %i.dl, %bb.i ]
  %.01419.i.i.i102 = phi i32 [ %i.dw, %bb.j ], [ %i.dk, %bb.i ]
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.ds ; 2 uses
  %.sroa.0.0.copyload.i.i.i103 = load ptr, ptr %i.dt, align 8, !tbaa !64
  %i.du = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i100, %.sroa.0.0.copyload.i.i.i103
  br i1 %i.du, label %bb.k, label %bb.j, !prof !40

bb.j:                                             ; preds = %.lr.ph.i.i.i101
end_hunk_0
