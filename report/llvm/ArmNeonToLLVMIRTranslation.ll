Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ArmNeonToLLVMIRTranslation?download=true
inline.NumInlined: 982
inline.NumDeleted: 618
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
%"class.std::tuple.344" = type { %"struct.std::_Tuple_impl.345" }
%"struct.std::_Tuple_impl.345" = type { %"struct.std::_Head_base.346" }
%"struct.std::_Head_base.346" = type { ptr }
%"class.std::tuple.347" = type { %"struct.std::_Tuple_impl.348" }
%"struct.std::_Tuple_impl.348" = type { %"struct.std::_Head_base.349" }
%"struct.std::_Head_base.349" = type { ptr }
%"class.std::unique_ptr.281" = type { %"struct.std::__uniq_ptr_data.282" }
%"struct.std::__uniq_ptr_data.282" = type { %"class.std::__uniq_ptr_impl.283" }
%"class.std::__uniq_ptr_impl.283" = type { %"class.std::tuple.284" }
%"class.std::tuple.284" = type { %"struct.std::_Tuple_impl.285" }
%"struct.std::_Tuple_impl.285" = type { %"struct.std::_Head_base.288" }
%"struct.std::_Head_base.288" = type { ptr }
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
%"class.llvm::ArrayRef.56" = type { ptr, i64 }
%"class.llvm::ArrayRef.57" = type { ptr, i64 }
%"class.llvm::DenseMap.110" = type { ptr, ptr, i32, i32 }
%class.anon.305 = type { ptr }
%"class.std::unique_ptr.306" = type { %"struct.std::__uniq_ptr_data.307" }
%"struct.std::__uniq_ptr_data.307" = type { %"class.std::__uniq_ptr_impl.308" }
%"class.std::__uniq_ptr_impl.308" = type { %"class.std::tuple.309" }
%"class.std::tuple.309" = type { %"struct.std::_Tuple_impl.310" }
%"struct.std::_Tuple_impl.310" = type { %"struct.std::_Head_base.313" }
%"struct.std::_Head_base.313" = type { ptr }

$_ZN4mlir15DialectRegistry12addExtensionIJNS_8arm_neon14ArmNeonDialectEEEEbPFvPNS_11MLIRContextEDpPT_E = comdat any

$_ZN4mlir15DialectRegistryD2Ev = comdat any

$_ZNK4mlir31LLVMTranslationDialectInterface14amendOperationEPNS_9OperationEN4llvm8ArrayRefIPNS3_11InstructionEEENS_14NamedAttributeERNS_4LLVM17ModuleTranslationE = comdat any

$_ZNK4mlir31LLVMTranslationDialectInterface20convertParameterAttrENS_4LLVM10LLVMFuncOpEiNS_14NamedAttributeERNS1_17ModuleTranslationE = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IN4mlir6TypeIDESt8functionIFPNS8_7DialectEPNS8_11MLIRContextEEEEESt10_Select1stISI_ESt4lessIvESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E = comdat any

$_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_8arm_neon14ArmNeonDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_ = comdat any

$_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_8arm_neon14ArmNeonDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation = comdat any

$_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_8arm_neon14ArmNeonDialectEEEPT_vEUlvE_EES6_l = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESF_IJOS8_EEEEERS9_DpOT_ = comdat any

$_ZZN4mlir15DialectRegistry12addExtensionIJNS_8arm_neon14ArmNeonDialectEEEEbPFvPNS_11MLIRContextEDpPT_EEN9ExtensionD0Ev = comdat any

$_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_8arm_neon14ArmNeonDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5applyES6_N4llvm15MutableArrayRefIPNS_7DialectEEE = comdat any

$_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_8arm_neon14ArmNeonDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5cloneEv = comdat any

$_ZZN4mlir15DialectRegistry12addExtensionIJNS_8arm_neon14ArmNeonDialectEEEEbPFvPNS_11MLIRContextEDpPT_EENK9Extension5applyES5_PS3_ = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZTVZN4mlir15DialectRegistry12addExtensionIJNS_8arm_neon14ArmNeonDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN12_GLOBAL__N_140ArmNeonDialectLLVMIRTranslationInterfaceE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir16DialectInterfaceD2Ev, ptr @_ZN12_GLOBAL__N_140ArmNeonDialectLLVMIRTranslationInterfaceD0Ev, ptr @_ZNK12_GLOBAL__N_140ArmNeonDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE, ptr @_ZNK4mlir31LLVMTranslationDialectInterface14amendOperationEPNS_9OperationEN4llvm8ArrayRefIPNS3_11InstructionEEENS_14NamedAttributeERNS_4LLVM17ModuleTranslationE, ptr @_ZNK4mlir31LLVMTranslationDialectInterface20convertParameterAttrENS_4LLVM10LLVMFuncOpEiNS_14NamedAttributeERNS1_17ModuleTranslationE] }, align 8
@_ZZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str = private unnamed_addr constant [88 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::LLVMTranslationDialectInterface]\00", align 1
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_8arm_neon8BfmmlaOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_8arm_neon7SMullOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_8arm_neon6SdotOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_8arm_neon7SmmlaOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_8arm_neon7UmmlaOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_8arm_neon8UsmmlaOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_8arm_neon14ArmNeonDialectEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"arm_neon\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTVZN4mlir15DialectRegistry12addExtensionIJNS_8arm_neon14ArmNeonDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir20DialectExtensionBaseD2Ev, ptr @_ZZN4mlir15DialectRegistry12addExtensionIJNS_8arm_neon14ArmNeonDialectEEEEbPFvPNS_11MLIRContextEDpPT_EEN9ExtensionD0Ev, ptr @_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_8arm_neon14ArmNeonDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5applyES6_N4llvm15MutableArrayRefIPNS_7DialectEEE, ptr @_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_8arm_neon14ArmNeonDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5cloneEv, ptr @_ZZN4mlir15DialectRegistry12addExtensionIJNS_8arm_neon14ArmNeonDialectEEEEbPFvPNS_11MLIRContextEDpPT_EENK9Extension5applyES5_PS3_] }, comdat, align 8
@_ZTVN4mlir20DialectExtensionBaseE = external unnamed_addr constant { [6 x ptr] }, align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir33registerArmNeonDialectTranslationERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_8arm_neon14ArmNeonDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, ptr %i.b, align 8, !tbaa !14
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_8arm_neon14ArmNeonDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.a, align 8, !tbaa !15
  call void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_8arm_neon14ArmNeonDialectEvE2idE, ptr nonnull @.str.6, i64 8, ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4mlir15DialectRegistry6insertINS_8arm_neon14ArmNeonDialectEEEvv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #13, !inline_history !80 ; 0 uses
  br label %_ZN4mlir15DialectRegistry6insertINS_8arm_neon14ArmNeonDialectEEEvv.exit

_ZN4mlir15DialectRegistry6insertINS_8arm_neon14ArmNeonDialectEEEvv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.e = call noundef zeroext i1 @_ZN4mlir15DialectRegistry12addExtensionIJNS_8arm_neon14ArmNeonDialectEEEEbPFvPNS_11MLIRContextEDpPT_E(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull @"_ZZN4mlir33registerArmNeonDialectTranslationERNS_15DialectRegistryEEN3$_08__invokeEPNS_11MLIRContextEPNS_8arm_neon14ArmNeonDialectE") ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir15DialectRegistry12addExtensionIJNS_8arm_neon14ArmNeonDialectEEEEbPFvPNS_11MLIRContextEDpPT_E(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::tuple.344", align 8    ; 5 uses
  %3 = alloca %"class.std::tuple.347", align 8    ; 5 uses
  %4 = alloca %"class.mlir::TypeID", align 8      ; 8 uses
  %5 = alloca %"class.std::unique_ptr.281", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #14, !noalias !92 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !17, !noalias !92
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 3, ptr %i.e, align 4, !tbaa !18, !noalias !92
  store ptr @.str.6, ptr %i.c, align 8, !noalias !92
  %.sroa.4.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 8, ptr %.sroa.4.0..sroa_idx2.i.i.i, align 8, !noalias !92
  store i32 1, ptr %i.d, align 8, !tbaa !19, !noalias !92
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVZN4mlir15DialectRegistry12addExtensionIJNS_8arm_neon14ArmNeonDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension, i64 16), ptr %i.a, align 8, !tbaa !21, !noalias !92
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %1, ptr %i.f, align 8, !tbaa !30, !noalias !92
  store ptr %i.a, ptr %5, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %1, ptr %4, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %4), !noalias !93 ; 2 uses
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
  store i32 %i.m, ptr %i.n, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store ptr %4, ptr %2, align 8, !tbaa !37, !alias.scope !96
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %5, ptr %3, align 8, !tbaa !39, !alias.scope !97
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
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_8arm_neon14ArmNeonDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit

_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit: ; preds = %bb.b
  %i.w = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESF_IJOS8_EEEEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  %.pre.pre = load ptr, ptr %5, align 8, !tbaa !42 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i = icmp eq ptr %.pre.pre, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_8arm_neon14ArmNeonDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i: ; preds = %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit
  %i.x = phi ptr [ %i.a, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread ], [ %.pre.pre, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit ] ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(72) %i.x) #13, !inline_history !91
  br label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_8arm_neon14ArmNeonDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit

_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_8arm_neon14ArmNeonDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit: ; preds = %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread6, %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit
  ret i1 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir33registerArmNeonDialectTranslationERNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 8 uses
  %2 = alloca %"class.mlir::DialectRegistry", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZN4mlir15DialectRegistryC1Ev(ptr noundef nonnull align 8 dereferenceable(136) %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_8arm_neon14ArmNeonDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, ptr %i.b, align 8, !tbaa !14
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_8arm_neon14ArmNeonDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.a, align 8, !tbaa !15
  call void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_8arm_neon14ArmNeonDialectEvE2idE, ptr nonnull @.str.6, i64 8, ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN4mlir33registerArmNeonDialectTranslationERNS_15DialectRegistryE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #13, !inline_history !98 ; 0 uses
  br label %_ZN4mlir33registerArmNeonDialectTranslationERNS_15DialectRegistryE.exit

_ZN4mlir33registerArmNeonDialectTranslationERNS_15DialectRegistryE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.e = call noundef zeroext i1 @_ZN4mlir15DialectRegistry12addExtensionIJNS_8arm_neon14ArmNeonDialectEEEEbPFvPNS_11MLIRContextEDpPT_E(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull @"_ZZN4mlir33registerArmNeonDialectTranslationERNS_15DialectRegistryEEN3$_08__invokeEPNS_11MLIRContextEPNS_8arm_neon14ArmNeonDialectE") ; 0 uses
  call void @_ZN4mlir11MLIRContext21appendDialectRegistryERKNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(136) %2) #13
  call void @_ZN4mlir15DialectRegistryD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
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
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(72) %i.j) #13, !inline_history !99
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
  tail call void @free(ptr noundef %i.n) #13
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
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 8) #13
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
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.not.i.i = icmp eq ptr %i.ab, %i.ag
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !100

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.aa, align 8, !tbaa !17
  br label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, %_ZN4llvm9MapVectorIN4mlir6TypeIDESt10unique_ptrINS1_20DialectExtensionBaseESt14default_deleteIS4_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S7_ELj0EEELj0EED2Ev.exit
  %i.am = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i ], [ %i.ab, %_ZN4llvm9MapVectorIN4mlir6TypeIDESt10unique_ptrINS1_20DialectExtensionBaseESt14default_deleteIS4_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S7_ELj0EEELj0EED2Ev.exit ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN4llvm11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj1EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i
  tail call void @free(ptr noundef %i.am) #13
  br label %_ZN4llvm11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj1EED2Ev.exit

_ZN4llvm11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj1EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i, %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !102
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IN4mlir6TypeIDESt8functionIFPNS8_7DialectEPNS8_11MLIRContextEEEEESt10_Select1stISI_ESt4lessIvESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.aq)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN4mlir33registerArmNeonDialectTranslationERNS_15DialectRegistryEEN3$_08__invokeEPNS_11MLIRContextEPNS_8arm_neon14ArmNeonDialectE"(ptr nofree readnone captures(none) %0, ptr noundef %1) #3 align 2 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.11", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14, !noalias !106 ; 4 uses
  %i.b = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id acquire, align 8, !noalias !106
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZSt11make_uniqueIN12_GLOBAL__N_140ArmNeonDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i, !prof !107

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id) #13, !noalias !106
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt11make_uniqueIN12_GLOBAL__N_140ArmNeonDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 49), i64 37) #13, !noalias !106
  store ptr %i.e, ptr @_ZZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id, align 8, !noalias !106
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id) #13, !noalias !106
  br label %_ZSt11make_uniqueIN12_GLOBAL__N_140ArmNeonDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i

_ZSt11make_uniqueIN12_GLOBAL__N_140ArmNeonDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !41, !noalias !106
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !109, !noalias !106
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i, ptr %i.g, align 8, !tbaa !41, !noalias !106
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_140ArmNeonDialectLLVMIRTranslationInterfaceE, i64 16), ptr %i.a, align 8, !tbaa !21, !noalias !106
  store ptr %i.a, ptr %2, align 8, !tbaa !112
  call void @_ZN4mlir7Dialect12addInterfaceESt10unique_ptrINS_16DialectInterfaceESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %2) #13
  %i.h = load ptr, ptr %2, align 8, !tbaa !113    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %"_ZZN4mlir33registerArmNeonDialectTranslationERNS_15DialectRegistryEENK3$_0clEPNS_11MLIRContextEPNS_8arm_neon14ArmNeonDialectE.exit", label %_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i.i: ; preds = %_ZSt11make_uniqueIN12_GLOBAL__N_140ArmNeonDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h) #13, !inline_history !105
  br label %"_ZZN4mlir33registerArmNeonDialectTranslationERNS_15DialectRegistryEENK3$_0clEPNS_11MLIRContextEPNS_8arm_neon14ArmNeonDialectE.exit"

"_ZZN4mlir33registerArmNeonDialectTranslationERNS_15DialectRegistryEENK3$_0clEPNS_11MLIRContextEPNS_8arm_neon14ArmNeonDialectE.exit": ; preds = %_ZSt11make_uniqueIN12_GLOBAL__N_140ArmNeonDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i, %_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare void @_ZN4mlir7Dialect12addInterfaceESt10unique_ptrINS_16DialectInterfaceESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(96), ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4mlir16DialectInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_140ArmNeonDialectLLVMIRTranslationInterfaceD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN4mlir16DialectInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_140ArmNeonDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(592) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %5 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %6 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %7 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %8 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %9 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %10 = alloca %"class.llvm::ArrayRef.56", align 8 ; 2 uses
  %11 = alloca %"class.llvm::ArrayRef.56", align 8 ; 2 uses
  %12 = alloca %"class.llvm::ArrayRef.56", align 8 ; 2 uses
  %13 = alloca %"class.llvm::ArrayRef.57", align 8 ; 2 uses
  %14 = alloca %"class.llvm::ArrayRef.56", align 8 ; 3 uses
  %i.a = alloca [1 x i32], align 4                ; 4 uses
  %15 = alloca %"class.llvm::ArrayRef.56", align 8 ; 2 uses
  %16 = alloca %"class.llvm::ArrayRef.56", align 8 ; 2 uses
  %17 = alloca %"class.llvm::ArrayRef.57", align 8 ; 2 uses
  %18 = alloca %"class.llvm::ArrayRef.56", align 8 ; 3 uses
  %i.b = alloca [1 x i32], align 4                ; 4 uses
  %19 = alloca %"class.llvm::ArrayRef.56", align 8 ; 3 uses
  %i.c = alloca [1 x i32], align 4                ; 4 uses
  %20 = alloca %"class.llvm::ArrayRef.56", align 8 ; 2 uses
  %21 = alloca %"class.llvm::ArrayRef.57", align 8 ; 2 uses
  %22 = alloca %"class.llvm::ArrayRef.56", align 8 ; 3 uses
  %i.d = alloca [1 x i32], align 4                ; 4 uses
  %23 = alloca %"class.llvm::ArrayRef.56", align 8 ; 3 uses
  %i.e = alloca [1 x i32], align 4                ; 4 uses
  %24 = alloca %"class.llvm::ArrayRef.56", align 8 ; 2 uses
  %25 = alloca %"class.llvm::ArrayRef.57", align 8 ; 2 uses
  %26 = alloca %"class.llvm::ArrayRef.56", align 8 ; 3 uses
  %i.f = alloca [1 x i32], align 4                ; 4 uses
  %27 = alloca %"class.llvm::ArrayRef.56", align 8 ; 3 uses
  %i.g = alloca [1 x i32], align 4                ; 4 uses
  %28 = alloca %"class.llvm::ArrayRef.56", align 8 ; 2 uses
  %29 = alloca %"class.llvm::ArrayRef.57", align 8 ; 2 uses
  %30 = alloca %"class.llvm::ArrayRef.56", align 8 ; 3 uses
  %i.h = alloca [1 x i32], align 4                ; 4 uses
  %31 = alloca %"class.llvm::ArrayRef.56", align 8 ; 3 uses
  %i.i = alloca [1 x i32], align 4                ; 4 uses
  %32 = alloca %"class.llvm::ArrayRef.56", align 8 ; 2 uses
  %33 = alloca %"class.llvm::ArrayRef.57", align 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !115
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !116  ; 6 uses
  %i.m = icmp ne ptr %i.l, @_ZN4mlir6detail14TypeIDResolverINS_8arm_neon8BfmmlaOpEvE2idE
  %34 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_8arm_neon8BfmmlaOpEvE2idE
  %spec.select.i.i.i.i.not = or i1 %34, %i.m
  %.not107 = icmp eq ptr %1, null                 ; 6 uses
  %.not = or i1 %.not107, %spec.select.i.i.i.i.not
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.n = tail call noundef ptr @_ZN4mlir4LLVM6detail19createIntrinsicCallERN4llvm13IRBuilderBaseERNS0_17ModuleTranslationEPNS_9OperationEjjNS2_8ArrayRefIjEESA_SA_NS9_INS2_13StringLiteralEEE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(592) %3, ptr noundef nonnull %1, i32 noundef 612, i32 noundef 1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %10, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %11, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %12, ptr noundef nonnull byval(%"class.llvm::ArrayRef.57") align 8 %13) #13
  %i.o = getelementptr inbounds i8, ptr %1, i64 -16
  %i.p = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 noundef 0) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.p, ptr %9, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.r = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store ptr %i.n, ptr %i.s, align 8, !tbaa !60
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.t = icmp ne ptr %i.l, @_ZN4mlir6detail14TypeIDResolverINS_8arm_neon7SMullOpEvE2idE
  %35 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_8arm_neon7SMullOpEvE2idE
  %spec.select.i.i.i.i77.not = or i1 %35, %i.t
  %.not108 = or i1 %.not107, %spec.select.i.i.i.i77.not
  br i1 %.not108, label %bb.c, label %.thread102

.thread102:                                       ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !61
  store ptr %i.a, ptr %14, align 8, !tbaa !118
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 1, ptr %i.u, align 8, !tbaa !119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %i.v = call noundef ptr @_ZN4mlir4LLVM6detail19createIntrinsicCallERN4llvm13IRBuilderBaseERNS0_17ModuleTranslationEPNS_9OperationEjjNS2_8ArrayRefIjEESA_SA_NS9_INS2_13StringLiteralEEE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(592) %3, ptr noundef nonnull %1, i32 noundef 717, i32 noundef 1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %14, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %15, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %16, ptr noundef nonnull byval(%"class.llvm::ArrayRef.57") align 8 %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.w = getelementptr inbounds i8, ptr %1, i64 -16
  %i.x = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 noundef 0) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.x, ptr %8, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.z = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %.fca.0.extract.i.i78 = extractvalue { ptr, i8 } %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i78, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  store ptr %i.v, ptr %i.aa, align 8, !tbaa !60
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp ne ptr %i.l, @_ZN4mlir6detail14TypeIDResolverINS_8arm_neon6SdotOpEvE2idE
  %36 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_8arm_neon6SdotOpEvE2idE
  %spec.select.i.i.i.i81.not = or i1 %36, %i.ab
  %.not110 = or i1 %.not107, %spec.select.i.i.i.i81.not
  br i1 %.not110, label %bb.d, label %.thread103

.thread103:                                       ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 4, !tbaa !61
  store ptr %i.b, ptr %18, align 8, !tbaa !118
  %i.ac = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 1, ptr %i.ac, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !61
  store ptr %i.c, ptr %19, align 8, !tbaa !118
  %i.ad = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 1, ptr %i.ad, align 8, !tbaa !119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %i.ae = call noundef ptr @_ZN4mlir4LLVM6detail19createIntrinsicCallERN4llvm13IRBuilderBaseERNS0_17ModuleTranslationEPNS_9OperationEjjNS2_8ArrayRefIjEESA_SA_NS9_INS2_13StringLiteralEEE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(592) %3, ptr noundef nonnull %1, i32 noundef 706, i32 noundef 1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %18, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %19, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %20, ptr noundef nonnull byval(%"class.llvm::ArrayRef.57") align 8 %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.af = getelementptr inbounds i8, ptr %1, i64 -16
  %i.ag = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 noundef 0) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.ag, ptr %7, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.ai = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %.fca.0.extract.i.i81 = extractvalue { ptr, i8 } %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i81, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store ptr %i.ae, ptr %i.aj, align 8, !tbaa !60
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ak = icmp ne ptr %i.l, @_ZN4mlir6detail14TypeIDResolverINS_8arm_neon7SmmlaOpEvE2idE
  %37 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_8arm_neon7SmmlaOpEvE2idE
  %spec.select.i.i.i.i85.not = or i1 %37, %i.ak
  %.not112 = or i1 %.not107, %spec.select.i.i.i.i85.not
  br i1 %.not112, label %bb.e, label %.thread104

.thread104:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !61
  store ptr %i.d, ptr %22, align 8, !tbaa !118
  %i.al = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 1, ptr %i.al, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store i32 1, ptr %i.e, align 4, !tbaa !61
  store ptr %i.e, ptr %23, align 8, !tbaa !118
  %i.am = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 1, ptr %i.am, align 8, !tbaa !119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  %i.an = call noundef ptr @_ZN4mlir4LLVM6detail19createIntrinsicCallERN4llvm13IRBuilderBaseERNS0_17ModuleTranslationEPNS_9OperationEjjNS2_8ArrayRefIjEESA_SA_NS9_INS2_13StringLiteralEEE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(592) %3, ptr noundef nonnull %1, i32 noundef 716, i32 noundef 1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %22, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %23, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %24, ptr noundef nonnull byval(%"class.llvm::ArrayRef.57") align 8 %25) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %i.ao = getelementptr inbounds i8, ptr %1, i64 -16
  %i.ap = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 noundef 0) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.ap, ptr %6, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.ar = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %.fca.0.extract.i.i84 = extractvalue { ptr, i8 } %i.ar, 0
  %i.as = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i84, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store ptr %i.an, ptr %i.as, align 8, !tbaa !60
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.at = icmp ne ptr %i.l, @_ZN4mlir6detail14TypeIDResolverINS_8arm_neon7UmmlaOpEvE2idE
  %38 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_8arm_neon7UmmlaOpEvE2idE
  %spec.select.i.i.i.i89.not = or i1 %38, %i.at
  %.not114 = or i1 %.not107, %spec.select.i.i.i.i89.not
  br i1 %.not114, label %bb.f, label %.thread105

.thread105:                                       ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  store i32 0, ptr %i.f, align 4, !tbaa !61
  store ptr %i.f, ptr %26, align 8, !tbaa !118
  %i.au = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 1, ptr %i.au, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  store i32 1, ptr %i.g, align 4, !tbaa !61
  store ptr %i.g, ptr %27, align 8, !tbaa !118
  %i.av = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 1, ptr %i.av, align 8, !tbaa !119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  %i.aw = call noundef ptr @_ZN4mlir4LLVM6detail19createIntrinsicCallERN4llvm13IRBuilderBaseERNS0_17ModuleTranslationEPNS_9OperationEjjNS2_8ArrayRefIjEESA_SA_NS9_INS2_13StringLiteralEEE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(592) %3, ptr noundef nonnull %1, i32 noundef 777, i32 noundef 1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %26, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %27, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %28, ptr noundef nonnull byval(%"class.llvm::ArrayRef.57") align 8 %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  %i.ax = getelementptr inbounds i8, ptr %1, i64 -16
  %i.ay = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 noundef 0) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.ay, ptr %5, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.ba = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.fca.0.extract.i.i87 = extractvalue { ptr, i8 } %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i87, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store ptr %i.aw, ptr %i.bb, align 8, !tbaa !60
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = icmp ne ptr %i.l, @_ZN4mlir6detail14TypeIDResolverINS_8arm_neon8UsmmlaOpEvE2idE
  %39 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_8arm_neon8UsmmlaOpEvE2idE
  %spec.select.i.i.i.i93.not = or i1 %39, %i.bc
  %.not116 = or i1 %.not107, %spec.select.i.i.i.i93.not
  br i1 %.not116, label %bb.g, label %.thread106

.thread106:                                       ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  store i32 0, ptr %i.h, align 4, !tbaa !61
  store ptr %i.h, ptr %30, align 8, !tbaa !118
  %i.bd = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 1, ptr %i.bd, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  store i32 1, ptr %i.i, align 4, !tbaa !61
  store ptr %i.i, ptr %31, align 8, !tbaa !118
  %i.be = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 1, ptr %i.be, align 8, !tbaa !119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, i8 0, i64 16, i1 false)
  %i.bf = call noundef ptr @_ZN4mlir4LLVM6detail19createIntrinsicCallERN4llvm13IRBuilderBaseERNS0_17ModuleTranslationEPNS_9OperationEjjNS2_8ArrayRefIjEESA_SA_NS9_INS2_13StringLiteralEEE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(592) %3, ptr noundef nonnull %1, i32 noundef 793, i32 noundef 1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %30, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %31, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %32, ptr noundef nonnull byval(%"class.llvm::ArrayRef.57") align 8 %33) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  %i.bg = getelementptr inbounds i8, ptr %1, i64 -16
  %i.bh = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 noundef 0) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.bh, ptr %4, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.bj = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.fca.0.extract.i.i90 = extractvalue { ptr, i8 } %i.bj, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i90, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr %i.bf, ptr %i.bk, align 8, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread106, %.thread105, %.thread104, %.thread103, %.thread102, %.thread
  %.sroa.075.6 = phi i8 [ 1, %.thread ], [ 1, %.thread106 ], [ 1, %.thread105 ], [ 1, %.thread104 ], [ 1, %.thread103 ], [ 1, %.thread102 ], [ 0, %bb.f ]
  ret i8 %.sroa.075.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir31LLVMTranslationDialectInterface14amendOperationEPNS_9OperationEN4llvm8ArrayRefIPNS3_11InstructionEEENS_14NamedAttributeERNS_4LLVM17ModuleTranslationE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr %2, i64 %3, ptr %4, ptr %5, ptr noundef nonnull align 8 dereferenceable(592) %6) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir31LLVMTranslationDialectInterface20convertParameterAttrENS_4LLVM10LLVMFuncOpEiNS_14NamedAttributeERNS1_17ModuleTranslationE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 noundef %2, ptr %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(592) %5) unnamed_addr #0 comdat align 2 {
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

declare noundef ptr @_ZN4mlir4LLVM6detail19createIntrinsicCallERN4llvm13IRBuilderBaseERNS0_17ModuleTranslationEPNS_9OperationEjjNS2_8ArrayRefIjEESA_SA_NS9_INS2_13StringLiteralEEE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(592), ptr noundef, i32 noundef, i32 noundef, ptr noundef byval(%"class.llvm::ArrayRef.56") align 8, ptr noundef byval(%"class.llvm::ArrayRef.56") align 8, ptr noundef byval(%"class.llvm::ArrayRef.56") align 8, ptr noundef byval(%"class.llvm::ArrayRef.57") align 8) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !64, !noalias !124 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65, !noalias !124 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !66, !noalias !124 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !68 ; 2 uses
  %i.i = ptrtoint ptr %.sroa.04.0.copyload.i to i64
  %i.j = xor i64 %i.i, -49064778989728563         ; 2 uses
  %i.k = lshr i64 %i.j, 30
  %i.l = xor i64 %i.k, %i.j
  %i.m = mul i64 %i.l, -4658895280553007687       ; 2 uses
  %i.n = lshr i64 %i.m, 27
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, -7723592293110705685       ; 2 uses
  %i.q = lshr i64 %i.p, 31
  %i.r = xor i64 %i.q, %i.p
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.h, %i.s                       ; 3 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = lshr i64 %i.u, 5
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !61
  %i.z = and i32 %i.t, 31
  %i.aa = lshr i32 %i.y, %i.z
  %i.ab = trunc i32 %i.aa to i1
  br i1 %i.ab, label %.lr.ph.i, label %.loopexit, !prof !69

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ac = phi ptr [ %i.ah, %bb.c ], [ %i.v, %bb.b ] ; 2 uses
  %.01926.i = phi i32 [ %i.af, %bb.c ], [ %i.t, %bb.b ]
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ac, align 8, !tbaa !68
  %i.ad = icmp eq ptr %.sroa.04.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit, label %bb.c, !prof !40

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.01926.i, 1
  %i.af = and i32 %i.ae, %i.h                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !61
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !70, !llvm.loop !1

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !71
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !72
  %i.aq = shl i32 %i.ap, 2
  %i.ar = add i32 %i.aq, 4
  %i.as = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit, label %bb.d, !prof !40

bb.d:                                             ; preds = %.loopexit
  %i.at = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.at)
  %i.au = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !71
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !65
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.av = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.aw = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ax = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 4                 ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 31
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = lshr i64 %i.bb, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !61
  %i.bi = or i32 %i.be, %i.bh
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !61
  %i.bj = load i32, ptr %i.ao, align 8, !tbaa !72
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ao, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load i64, ptr %1, align 8, !tbaa !68
  store i64 %i.bl, ptr %i.ax, align 8, !tbaa !68
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr null, ptr %i.bm, align 8, !tbaa !60
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.ax, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ %i.ac, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !64, !noalias !129 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65, !noalias !129 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !66, !noalias !129 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8, !tbaa !68 ; 2 uses
  %i.h = ptrtoint ptr %.sroa.04.0.copyload to i64
  %i.i = xor i64 %i.h, -49064778989728563         ; 2 uses
  %i.j = lshr i64 %i.i, 30
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 27
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, -7723592293110705685       ; 2 uses
end_hunk_0
