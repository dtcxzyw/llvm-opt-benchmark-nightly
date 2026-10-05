Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestToLLVMIRTranslation?download=true
inline.NumInlined: 987
inline.NumDeleted: 733
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"struct.std::piecewise_construct_t" = type { i8 }
%"class.mlir::TypeID" = type { ptr }
%"struct.mlir::TranslateFromMLIRRegistration" = type { i8 }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::function.0" = type { %"class.std::_Function_base", ptr }
%"class.llvm::LLVMContext" = type { ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.5" }
%"struct.std::_Head_base.5" = type { ptr }
%"class.std::function.107" = type { %"class.std::_Function_base", ptr }
%"class.std::tuple.186" = type { %"struct.std::_Tuple_impl.187" }
%"struct.std::_Tuple_impl.187" = type { %"struct.std::_Head_base.188" }
%"struct.std::_Head_base.188" = type { ptr }
%"class.std::tuple.189" = type { %"struct.std::_Tuple_impl.190" }
%"struct.std::_Tuple_impl.190" = type { %"struct.std::_Head_base.191" }
%"struct.std::_Head_base.191" = type { ptr }
%"class.std::unique_ptr.164" = type { %"struct.std::__uniq_ptr_data.165" }
%"struct.std::__uniq_ptr_data.165" = type { %"class.std::__uniq_ptr_impl.166" }
%"class.std::__uniq_ptr_impl.166" = type { %"class.std::tuple.167" }
%"class.std::tuple.167" = type { %"struct.std::_Tuple_impl.168" }
%"struct.std::_Tuple_impl.168" = type { %"struct.std::_Head_base.171" }
%"struct.std::_Head_base.171" = type { ptr }
%class.anon.143 = type { ptr }
%"class.std::unique_ptr.144" = type { %"struct.std::__uniq_ptr_data.145" }
%"struct.std::__uniq_ptr_data.145" = type { %"class.std::__uniq_ptr_impl.146" }
%"class.std::__uniq_ptr_impl.146" = type { %"class.std::tuple.147" }
%"class.std::tuple.147" = type { %"struct.std::_Tuple_impl.148" }
%"struct.std::_Tuple_impl.148" = type { %"struct.std::_Head_base.151" }
%"struct.std::_Head_base.151" = type { ptr }
%"class.llvm::DenseMap.98" = type { ptr, ptr, i32, i32 }
%"class.std::unique_ptr.211" = type { %"struct.std::__uniq_ptr_data.212" }
%"struct.std::__uniq_ptr_data.212" = type { %"class.std::__uniq_ptr_impl.213" }
%"class.std::__uniq_ptr_impl.213" = type { %"class.std::tuple.214" }
%"class.std::tuple.214" = type { %"struct.std::_Tuple_impl.215" }
%"struct.std::_Tuple_impl.215" = type { %"struct.std::_Head_base.218" }
%"struct.std::_Head_base.218" = type { ptr }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.mlir::InFlightDiagnostic" = type { ptr, %"class.std::optional.361" }
%"class.std::optional.361" = type { %"struct.std::_Optional_base.362" }
%"struct.std::_Optional_base.362" = type { %"struct.std::_Optional_payload.364" }
%"struct.std::_Optional_payload.364" = type { %"struct.std::_Optional_payload.base.385", [7 x i8] }
%"struct.std::_Optional_payload.base.385" = type { %"struct.std::_Optional_payload_base.base.384" }
%"struct.std::_Optional_payload_base.base.384" = type <{ %"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage", i8 }>
%"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage" = type { %"class.mlir::Diagnostic" }
%"class.mlir::Diagnostic" = type { %"class.mlir::Location", i32, %"class.llvm::SmallVector.367", %"class.std::vector.372", %"class.std::vector.377", %"class.llvm::SmallVector.382" }
%"class.mlir::Location" = type { %"class.mlir::LocationAttr" }
%"class.mlir::LocationAttr" = type { %"class.mlir::Attribute" }
%"class.mlir::Attribute" = type { ptr }
%"class.llvm::SmallVector.367" = type { %"class.llvm::SmallVectorImpl.368", %"struct.llvm::SmallVectorStorage.371" }
%"class.llvm::SmallVectorImpl.368" = type { %"class.llvm::SmallVectorTemplateBase.369" }
%"class.llvm::SmallVectorTemplateBase.369" = type { %"class.llvm::SmallVectorTemplateCommon.370" }
%"class.llvm::SmallVectorTemplateCommon.370" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.371" = type { [96 x i8] }
%"class.std::vector.372" = type { %"struct.std::_Vector_base.373" }
%"struct.std::_Vector_base.373" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.377" = type { %"struct.std::_Vector_base.378" }
%"struct.std::_Vector_base.378" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::SmallVector.382" = type { %"class.llvm::SmallVectorImpl.368" }
%"class.test::SymbolOp" = type { %"class.mlir::Op.322" }
%"class.mlir::Op.322" = type { %"class.mlir::OpState" }
%"class.mlir::OpState" = type { ptr }
%"class.llvm::ArrayRef.227" = type { ptr, i64 }
%"class.mlir::NamedAttribute" = type { %"class.mlir::Attribute", %"class.mlir::Attribute" }
%"class.mlir::StringAttr" = type { %"class.mlir::detail::StorageUserBase" }
%"class.mlir::detail::StorageUserBase" = type { %"class.mlir::Attribute" }
%class.anon.418 = type { ptr }
%class.anon.419 = type { ptr }
%class.anon.420 = type { i8 }
%"class.mlir::BoolAttr" = type { %"class.mlir::Attribute" }
%"class.mlir::OpBuilder" = type { %"class.mlir::Builder", ptr, ptr, %"class.llvm::ilist_iterator" }
%"class.mlir::Builder" = type { ptr }
%"class.llvm::ilist_iterator" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN4mlir15DialectRegistry12addExtensionIJN4test11TestDialectEEEEbPFvPNS_11MLIRContextEDpPT_E = comdat any

$_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertIN4test11TestDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_ = comdat any

$_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertIN4test11TestDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation = comdat any

$_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectIN4test11TestDialectEEEPT_vEUlvE_EES6_l = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESF_IJOS8_EEEEERS9_DpOT_ = comdat any

$_ZZN4mlir15DialectRegistry12addExtensionIJN4test11TestDialectEEEEbPFvPNS_11MLIRContextEDpPT_EEN9ExtensionD0Ev = comdat any

$_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJN4test11TestDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5applyES6_N4llvm15MutableArrayRefIPNS_7DialectEEE = comdat any

$_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJN4test11TestDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5cloneEv = comdat any

$_ZZN4mlir15DialectRegistry12addExtensionIJN4test11TestDialectEEEEbPFvPNS_11MLIRContextEDpPT_EENK9Extension5applyES5_PS3_ = comdat any

$_ZNK4mlir31LLVMTranslationDialectInterface20convertParameterAttrENS_4LLVM10LLVMFuncOpEiNS_14NamedAttributeERNS1_17ModuleTranslationE = comdat any

$_ZN4mlir10DiagnosticD2Ev = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZTVZN4mlir15DialectRegistry12addExtensionIJN4test11TestDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [15 x i8] c"test-to-llvmir\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"test dialect to LLVM IR\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"LLVMDialectModule\00", align 1
@_ZN4mlir6detail14TypeIDResolverIN4test11TestDialectEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTVZN4mlir15DialectRegistry12addExtensionIJN4test11TestDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir20DialectExtensionBaseD2Ev, ptr @_ZZN4mlir15DialectRegistry12addExtensionIJN4test11TestDialectEEEEbPFvPNS_11MLIRContextEDpPT_EEN9ExtensionD0Ev, ptr @_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJN4test11TestDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5applyES6_N4llvm15MutableArrayRefIPNS_7DialectEEE, ptr @_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJN4test11TestDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5cloneEv, ptr @_ZZN4mlir15DialectRegistry12addExtensionIJN4test11TestDialectEEEEbPFvPNS_11MLIRContextEDpPT_EENK9Extension5applyES5_PS3_] }, comdat, align 8
@_ZTVN4mlir20DialectExtensionBaseE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN12_GLOBAL__N_137TestDialectLLVMIRTranslationInterfaceE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir16DialectInterfaceD2Ev, ptr @_ZN12_GLOBAL__N_137TestDialectLLVMIRTranslationInterfaceD0Ev, ptr @_ZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE, ptr @_ZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface14amendOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS4_11InstructionEEENS1_14NamedAttributeERNS1_4LLVM17ModuleTranslationE, ptr @_ZNK4mlir31LLVMTranslationDialectInterface20convertParameterAttrENS_4LLVM10LLVMFuncOpEiNS_14NamedAttributeERNS1_17ModuleTranslationE] }, align 8
@_ZZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.9 = private unnamed_addr constant [88 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::LLVMTranslationDialectInterface]\00", align 1
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverIN4test8SymbolOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.10 = private unnamed_addr constant [42 x i8] c"unsupported translation of test operation\00", align 1
@.str.13 = private unnamed_addr constant [64 x i8] c"attribute 'test.discardable_mod_attr' only supported in modules\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"sym_from_attr\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.15 = private unnamed_addr constant [23 x i8] c"annotation_from_test: \00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"annotation_from_test\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_10StringAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir20registerTestToLLVMIREv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %"struct.mlir::TranslateFromMLIRRegistration", align 1 ; 3 uses
  %1 = alloca %"class.std::function", align 8     ; 8 uses
  %2 = alloca %"class.std::function.0", align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFN4llvm13LogicalResultEPN4mlir9OperationERNS0_11raw_ostreamEEZNS2_20registerTestToLLVMIREvE3$_0E9_M_invokeERKSt9_Any_dataOS4_S6_", ptr %i.b, align 8, !tbaa !95
  store ptr @"_ZNSt17_Function_handlerIFN4llvm13LogicalResultEPN4mlir9OperationERNS0_11raw_ostreamEEZNS2_20registerTestToLLVMIREvE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvRN4mlir15DialectRegistryEEZNS0_20registerTestToLLVMIREvE3$_1E9_M_invokeERKSt9_Any_dataS2_", ptr %i.d, align 8, !tbaa !97
  store ptr @"_ZNSt17_Function_handlerIFvRN4mlir15DialectRegistryEEZNS0_20registerTestToLLVMIREvE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr %i.c, align 8, !tbaa !11
  call void @_ZN4mlir29TranslateFromMLIRRegistrationC1EN4llvm9StringRefES2_RKSt8functionIFNS1_13LogicalResultEPNS_9OperationERNS1_11raw_ostreamEEERKS3_IFvRNS_15DialectRegistryEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str, i64 14, ptr nonnull @.str.1, i64 23, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #17, !inline_history !93 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %.not.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #17, !inline_history !93 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit2

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4mlir29TranslateFromMLIRRegistrationC1EN4llvm9StringRefES2_RKSt8functionIFNS1_13LogicalResultEPNS_9OperationERNS1_11raw_ostreamEEERKS3_IFvRNS_15DialectRegistryEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, ptr, i64, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #3

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @"_ZNSt17_Function_handlerIFN4llvm13LogicalResultEPN4mlir9OperationERNS0_11raw_ostreamEEZNS2_20registerTestToLLVMIREvE3$_0E9_M_invokeERKSt9_Any_dataOS4_S6_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::LLVMContext", align 8 ; 5 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN4llvm11LLVMContextC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZN4mlir23translateModuleToLLVMIREPNS_9OperationERN4llvm11LLVMContextENS2_9StringRefEbPNS2_3vfs10FileSystemE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, ptr noundef %.val, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nonnull @.str.7, i64 17, i1 noundef zeroext false, ptr noundef null) #17
  %i.a = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %"_ZSt10__invoke_rIN4llvm13LogicalResultERZN4mlir20registerTestToLLVMIREvE3$_0JPNS2_9OperationERNS0_11raw_ostreamEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZNK4llvm6Module5printERNS_11raw_ostreamEPNS_24AssemblyAnnotationWriterEbb(ptr noundef nonnull align 8 dereferenceable(1288) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #17
  %.pr.i.i.i = load ptr, ptr %4, align 8, !tbaa !15 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i.i.i, label %"_ZSt10__invoke_rIN4llvm13LogicalResultERZN4mlir20registerTestToLLVMIREvE3$_0JPNS2_9OperationERNS0_11raw_ostreamEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit", label %_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm6ModuleD1Ev(ptr noundef nonnull align 8 dead_on_return(1288) dereferenceable(1288) %.pr.i.i.i) #17
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i.i.i, i64 noundef 1288) #18
  br label %"_ZSt10__invoke_rIN4llvm13LogicalResultERZN4mlir20registerTestToLLVMIREvE3$_0JPNS2_9OperationERNS0_11raw_ostreamEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

"_ZSt10__invoke_rIN4llvm13LogicalResultERZN4mlir20registerTestToLLVMIREvE3$_0JPNS2_9OperationERNS0_11raw_ostreamEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit": ; preds = %bb.a, %bb.b, %_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i.i.i.i
  %.sroa.0.03.i.i.i = phi i8 [ 1, %_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i.i.i.i ], [ 1, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN4llvm11LLVMContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i8 %.sroa.0.03.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFN4llvm13LogicalResultEPN4mlir9OperationERNS0_11raw_ostreamEEZNS2_20registerTestToLLVMIREvE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #6 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4mlir20registerTestToLLVMIREvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit" [
    i32 1, label %"_ZNSt14_Function_base13_Base_managerIZN4mlir20registerTestToLLVMIREvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split"
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN4mlir20registerTestToLLVMIREvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN4mlir20registerTestToLLVMIREvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !16
  br label %"_ZNSt14_Function_base13_Base_managerIZN4mlir20registerTestToLLVMIREvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4mlir20registerTestToLLVMIREvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN4mlir20registerTestToLLVMIREvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

declare void @_ZN4llvm11LLVMContextC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN4mlir23translateModuleToLLVMIREPNS_9OperationERN4llvm11LLVMContextENS2_9StringRefEbPNS2_3vfs10FileSystemE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @_ZNK4llvm6Module5printERNS_11raw_ostreamEPNS_24AssemblyAnnotationWriterEbb(ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvm11LLVMContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN4llvm6ModuleD1Ev(ptr noundef nonnull align 8 dead_on_return(1288) dereferenceable(1288)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN4mlir15DialectRegistryEEZNS0_20registerTestToLLVMIREvE3$_1E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.std::function.107", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertIN4test11TestDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, ptr %i.b, align 8, !tbaa !100
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertIN4test11TestDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.a, align 8, !tbaa !11
  call void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nonnull @_ZN4mlir6detail14TypeIDResolverIN4test11TestDialectEvE2idE, ptr nonnull @.str.8, i64 4, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %"_ZSt10__invoke_rIvRZN4mlir20registerTestToLLVMIREvE3$_1JRNS0_15DialectRegistryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #17, !inline_history !98 ; 0 uses
  br label %"_ZSt10__invoke_rIvRZN4mlir20registerTestToLLVMIREvE3$_1JRNS0_15DialectRegistryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit"

"_ZSt10__invoke_rIvRZN4mlir20registerTestToLLVMIREvE3$_1JRNS0_15DialectRegistryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit": ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @_ZN4mlir33registerBuiltinDialectTranslationERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %1) #17
  call void @_ZN4mlir30registerLLVMDialectTranslationERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %1) #17
  %i.e = call noundef zeroext i1 @_ZN4mlir15DialectRegistry12addExtensionIJN4test11TestDialectEEEEbPFvPNS_11MLIRContextEDpPT_E(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull @"_ZZZN4mlir20registerTestToLLVMIREvENK3$_1clERNS_15DialectRegistryEENUlPNS_11MLIRContextEPN4test11TestDialectEE_8__invokeES4_S7_") ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN4mlir15DialectRegistryEEZNS0_20registerTestToLLVMIREvE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #6 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4mlir20registerTestToLLVMIREvE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit" [
    i32 1, label %"_ZNSt14_Function_base13_Base_managerIZN4mlir20registerTestToLLVMIREvE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split"
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN4mlir20registerTestToLLVMIREvE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN4mlir20registerTestToLLVMIREvE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !16
  br label %"_ZNSt14_Function_base13_Base_managerIZN4mlir20registerTestToLLVMIREvE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4mlir20registerTestToLLVMIREvE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN4mlir20registerTestToLLVMIREvE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

declare void @_ZN4mlir33registerBuiltinDialectTranslationERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #2

declare void @_ZN4mlir30registerLLVMDialectTranslationERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir15DialectRegistry12addExtensionIJN4test11TestDialectEEEEbPFvPNS_11MLIRContextEDpPT_E(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::tuple.186", align 8    ; 5 uses
  %3 = alloca %"class.std::tuple.189", align 8    ; 5 uses
  %4 = alloca %"class.mlir::TypeID", align 8      ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESF_IJOS8_EEEEERS9_DpOT_:bb.a

_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_20DialectExtensionBaseESt14default_deleteIS3_EEED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.o, %i.be
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE19moveElementsForGrowEPS9_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !140

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE19moveElementsForGrowEPS9_.exit.loopexit: ; preds = %_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_20DialectExtensionBaseESt14default_deleteIS3_EEED2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE19moveElementsForGrowEPS9_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE19moveElementsForGrowEPS9_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE19moveElementsForGrowEPS9_.exit.loopexit, %bb.a
  %i.bk = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE19moveElementsForGrowEPS9_.exit.loopexit ], [ %i.o, %bb.a ] ; 2 uses
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !61
  %i.bm = icmp eq ptr %i.bk, %i.b
  br i1 %i.bm, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE21takeAllocationForGrowEPS9_m.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE19moveElementsForGrowEPS9_.exit
  call void @free(ptr noundef %i.bk) #17
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE21takeAllocationForGrowEPS9_m.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE21takeAllocationForGrowEPS9_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE19moveElementsForGrowEPS9_.exit, %bb.b
  store ptr %i.c, ptr %0, align 8, !tbaa !18
  %i.bn = trunc i64 %i.bl to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !19
  %i.bp = load i32, ptr %i.d, align 8, !tbaa !20
  %i.bq = add i32 %i.bp, 1                        ; 2 uses
  store i32 %i.bq, ptr %i.d, align 8, !tbaa !20
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %i.bt
}

declare noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZN4mlir20DialectExtensionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4mlir15DialectRegistry12addExtensionIJN4test11TestDialectEEEEbPFvPNS_11MLIRContextEDpPT_EEN9ExtensionD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir20DialectExtensionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJN4test11TestDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5applyES6_N4llvm15MutableArrayRefIPNS_7DialectEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !143
  %i.b = load ptr, ptr %0, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %i.a) #17, !inline_history !142
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJN4test11TestDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.164") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19, !noalias !148, !inline_history !146 ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4mlir20DialectExtensionBaseE, i64 16), ptr %i.a, align 8, !tbaa !22, !noalias !148
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !18, !noalias !148
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !20, !noalias !148
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 3, ptr %i.f, align 4, !tbaa !19, !noalias !148
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !20, !noalias !148 ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.h, 0
  %i.i = icmp eq ptr %i.a, %1
  %or.cond.i.i.i.i.i = or i1 %i.i, %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJN4test11TestDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i32 %i.h, 3
  br i1 %i.j, label %_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i, label %_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i

_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull %i.d, i64 noundef %i.k, i64 noundef 16) #17, !noalias !148, !inline_history !147
  %.pre.i.i.i.i.i = load i32, ptr %i.g, align 8, !tbaa !20, !noalias !148 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i, label %_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i

_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i: ; preds = %_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !18, !noalias !148
  br label %_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i

_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i: ; preds = %_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i, %bb.b
  %i.l = phi ptr [ %.pre.i.i.i.i, %_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i ], [ %i.d, %bb.b ]
  %i.m = phi i32 [ %.pre.i.i.i.i.i, %_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i ], [ %i.h, %bb.b ]
  %i.n = zext i32 %i.m to i64
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !18, !noalias !148
  %gepdiff.i.i.i.i.i.i = shl nuw nsw i64 %i.n, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 8 %i.o, i64 %gepdiff.i.i.i.i.i.i, i1 false), !noalias !148
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i, %_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i
  store i32 %i.h, ptr %i.e, align 8, !tbaa !20, !noalias !148
  br label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJN4test11TestDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit

_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJN4test11TestDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit: ; preds = %.sink.split.i.i.i.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVZN4mlir15DialectRegistry12addExtensionIJN4test11TestDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension, i64 16), ptr %i.a, align 8, !tbaa !22, !noalias !148
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31, !noalias !148
  store ptr %i.r, ptr %i.p, align 8, !tbaa !31, !noalias !148
  store ptr %i.a, ptr %0, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4mlir15DialectRegistry12addExtensionIJN4test11TestDialectEEEEbPFvPNS_11MLIRContextEDpPT_EENK9Extension5applyES5_PS3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  tail call void %i.b(ptr noundef %1, ptr noundef %2) #17
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZZN4mlir20registerTestToLLVMIREvENK3$_1clERNS_15DialectRegistryEENUlPNS_11MLIRContextEPN4test11TestDialectEE_8__invokeES4_S7_"(ptr nofree readnone captures(none) %0, ptr noundef %1) #12 align 2 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.211", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19, !noalias !152 ; 4 uses
  %i.b = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id acquire, align 8, !noalias !152
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZSt11make_uniqueIN12_GLOBAL__N_137TestDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i, !prof !153

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id) #17, !noalias !152
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt11make_uniqueIN12_GLOBAL__N_137TestDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.9, i64 49), i64 37) #17, !noalias !152
  store ptr %i.e, ptr @_ZZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id, align 8, !noalias !152
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id) #17, !noalias !152
  br label %_ZSt11make_uniqueIN12_GLOBAL__N_137TestDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i

_ZSt11make_uniqueIN12_GLOBAL__N_137TestDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_31LLVMTranslationDialectInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !42, !noalias !152
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !155, !noalias !152
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i, ptr %i.g, align 8, !tbaa !42, !noalias !152
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_137TestDialectLLVMIRTranslationInterfaceE, i64 16), ptr %i.a, align 8, !tbaa !22, !noalias !152
  store ptr %i.a, ptr %2, align 8, !tbaa !158
  call void @_ZN4mlir7Dialect12addInterfaceESt10unique_ptrINS_16DialectInterfaceESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %2) #17
  %i.h = load ptr, ptr %2, align 8, !tbaa !159    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %"_ZZZN4mlir20registerTestToLLVMIREvENK3$_1clERNS_15DialectRegistryEENKUlPNS_11MLIRContextEPN4test11TestDialectEE_clES4_S7_.exit", label %_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i.i: ; preds = %_ZSt11make_uniqueIN12_GLOBAL__N_137TestDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h) #17, !inline_history !151
  br label %"_ZZZN4mlir20registerTestToLLVMIREvENK3$_1clERNS_15DialectRegistryEENKUlPNS_11MLIRContextEPN4test11TestDialectEE_clES4_S7_.exit"

"_ZZZN4mlir20registerTestToLLVMIREvENK3$_1clERNS_15DialectRegistryEENKUlPNS_11MLIRContextEPN4test11TestDialectEE_clES4_S7_.exit": ; preds = %_ZSt11make_uniqueIN12_GLOBAL__N_137TestDialectLLVMIRTranslationInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i, %_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare void @_ZN4mlir7Dialect12addInterfaceESt10unique_ptrINS_16DialectInterfaceESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(96), ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4mlir16DialectInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_137TestDialectLLVMIRTranslationInterfaceD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 align 2 {
bb.a:
  tail call void @_ZN4mlir16DialectInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal i8 @_ZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(592) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %6 = alloca %"class.test::SymbolOp", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIN4test8SymbolOpEvE2idE
  %7 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverIN4test8SymbolOpEvE2idE
  %spec.select.i.i.i.i.i.not.i.i = or i1 %7, %i.d
  %.not2.i.i = icmp eq ptr %1, null
  %.not.i.i = or i1 %.not2.i.i, %spec.select.i.i.i.i.i.not.i.i
  br i1 %.not.i.i, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE3$_0EERS7_OT_.exit", label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE3$_0EERS7_OT_.exit.thread"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE3$_0EERS7_OT_.exit.thread": ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val.val.i.i = load ptr, ptr %i.e, align 8, !tbaa !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %1, ptr %6, align 8
  %i.f = load ptr, ptr %.val.val.i.i, align 8, !tbaa !260, !nonnull !73, !align !74
  %i.g = tail call noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef 32) #17
  %i.h = call { ptr, i64 } @_ZN4test8SymbolOp10getSymNameEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #17 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  %i.k = call noundef ptr @_ZN4llvm6Module17getOrInsertGlobalENS_9StringRefEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(1288) %.val.val.i.i, ptr %i.i, i64 %i.j, ptr noundef %i.g) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE7DefaultIZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface16convertOperationES3_RNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE3$_1EES4_OT_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE3$_0EERS7_OT_.exit": ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !261
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.m, align 1, !tbaa !77, !noalias !261
  store ptr @.str.10, ptr %4, align 8, !tbaa !78, !noalias !261
  store i8 3, ptr %i.l, align 8, !tbaa !79, !noalias !261
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(34) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !261
  %i.n = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #17
  %i.o = load ptr, ptr %5, align 8, !tbaa !87
  %.not.i.i4 = icmp eq ptr %i.o, null
  br i1 %.not.i.i4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE3$_0EERS7_OT_.exit"
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE3$_0EERS7_OT_.exit"
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !88, !range !89, !noundef !73
  %i.r = trunc nuw i8 %i.q to i1
  store i8 0, ptr %i.p, align 8, !tbaa !88
  br i1 %i.r, label %bb.d, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.s) #17
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i:          ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE7DefaultIZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface16convertOperationES3_RNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE3$_1EES4_OT_.exit"

"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE7DefaultIZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface16convertOperationES3_RNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE3$_1EES4_OT_.exit": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE3$_0EERS7_OT_.exit.thread", %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i
  %.sroa.0.0.i = phi i8 [ %i.n, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i ], [ 1, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE3$_0EERS7_OT_.exit.thread" ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal i8 @_ZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface14amendOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS4_11InstructionEEENS1_14NamedAttributeERNS1_4LLVM17ModuleTranslationE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, i64 %3, ptr %4, ptr %5, ptr nofree nonnull readnone align 8 captures(none) %6) unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::ArrayRef.227", align 8 ; 4 uses
  %8 = alloca %"class.mlir::NamedAttribute", align 8 ; 3 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %9 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %10 = alloca %class.anon.418, align 8           ; 4 uses
  %11 = alloca %class.anon.419, align 8           ; 6 uses
  %12 = alloca %class.anon.420, align 1           ; 5 uses
  store ptr %2, ptr %7, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %3, ptr %i.b, align 8
  store ptr %4, ptr %8, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %5, ptr %i.c, align 8
  store ptr %1, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.d = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #17
  store ptr %i.d, ptr %9, align 8
  %i.e = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #17 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 4 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store ptr %i.a, ptr %10, align 8, !tbaa !263
  %.not.i.i.i.i = icmp eq i64 %i.g, 25
  br i1 %.not.i.i.i.i, label %_ZN4llvm12StringSwitchINS_12function_refIFNS_13LogicalResultEN4mlir9AttributeEEEES6_E4CaseENS_13StringLiteralES6_.exit13, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  store ptr %7, ptr %11, align 8, !tbaa !264
  %.not.i.i.i.i7 = icmp eq i64 %i.g, 19
  br i1 %.not.i.i.i.i7, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i8, label %.thread48

_ZN4llvmneENS_9StringRefES0_.exit.i.i8:           ; preds = %bb.b
  %i.h = load i128, ptr %i.f, align 1
  %i.i = xor i128 %i.h, 154696461894344974963648833781532681588
  %i.j = getelementptr i8, ptr %i.f, i64 3
  %i.k = load i128, ptr %i.j, align 1
  %i.l = xor i128 %i.k, 146793563361274154533764295626802146932
  %i.m = or i128 %i.i, %i.l
  %i.n = icmp ne i128 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %.not.i.i10 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i10, label %.split.sink.split, label %.thread48

.thread48:                                        ; preds = %bb.b, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8
  br label %.split.sink.split

_ZN4llvm12StringSwitchINS_12function_refIFNS_13LogicalResultEN4mlir9AttributeEEEES6_E4CaseENS_13StringLiteralES6_.exit13: ; preds = %bb.a
  %i.p = load i128, ptr %i.f, align 1
  %i.q = xor i128 %i.p, 134814791027357964724171464685087057268
  %i.r = getelementptr i8, ptr %i.f, i64 9
  %i.s = load i128, ptr %i.r, align 1
  %i.t = xor i128 %i.s, 152136658429238731708591433488393335393
  %i.u = or i128 %i.q, %i.t
  %i.v = icmp ne i128 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %bcmp.i.i.i.i.fr = freeze i32 %i.w
  %.not.i.i = icmp eq i32 %bcmp.i.i.i.i.fr, 0     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  store ptr %7, ptr %11, align 8, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %spec.select = select i1 %.not.i.i, ptr @"_ZN4llvm12function_refIFNS_13LogicalResultEN4mlir9AttributeEEE11callback_fnIZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface14amendOperationEPNS2_9OperationENS_8ArrayRefIPNS_11InstructionEEENS2_14NamedAttributeERNS2_4LLVM17ModuleTranslationEE3$_0EES1_lS3_", ptr @"_ZN4llvm12function_refIFNS_13LogicalResultEN4mlir9AttributeEEE11callback_fnIZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface14amendOperationEPNS2_9OperationENS_8ArrayRefIPNS_11InstructionEEENS2_14NamedAttributeERNS2_4LLVM17ModuleTranslationEE3$_2EES1_lS3_"
  %spec.select54 = select i1 %.not.i.i, ptr %10, ptr %12
  br label %.split

.split.sink.split:                                ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i8, %.thread48
  %.ph = phi ptr [ @"_ZN4llvm12function_refIFNS_13LogicalResultEN4mlir9AttributeEEE11callback_fnIZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface14amendOperationEPNS2_9OperationENS_8ArrayRefIPNS_11InstructionEEENS2_14NamedAttributeERNS2_4LLVM17ModuleTranslationEE3$_2EES1_lS3_", %.thread48 ], [ @"_ZN4llvm12function_refIFNS_13LogicalResultEN4mlir9AttributeEEE11callback_fnIZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface14amendOperationEPNS2_9OperationENS_8ArrayRefIPNS_11InstructionEEENS2_14NamedAttributeERNS2_4LLVM17ModuleTranslationEE3$_1EES1_lS3_", %_ZN4llvmneENS_9StringRefES0_.exit.i.i8 ]
  %.ph53 = phi ptr [ %12, %.thread48 ], [ %11, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  br label %.split

.split:                                           ; preds = %_ZN4llvm12StringSwitchINS_12function_refIFNS_13LogicalResultEN4mlir9AttributeEEEES6_E4CaseENS_13StringLiteralES6_.exit13, %.split.sink.split
  %i.x = phi ptr [ %spec.select, %_ZN4llvm12StringSwitchINS_12function_refIFNS_13LogicalResultEN4mlir9AttributeEEEES6_E4CaseENS_13StringLiteralES6_.exit13 ], [ %.ph, %.split.sink.split ]
  %i.y = phi ptr [ %spec.select54, %_ZN4llvm12StringSwitchINS_12function_refIFNS_13LogicalResultEN4mlir9AttributeEEEES6_E4CaseENS_13StringLiteralES6_.exit13 ], [ %.ph53, %.split.sink.split ]
  %.sroa.3.0.i = ptrtoint ptr %i.y to i64
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !265
  %i.z = call i8 %i.x(i64 noundef %.sroa.3.0.i, ptr %.sroa.0.0.copyload.i) #17, !inline_history !262
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  ret i8 %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir31LLVMTranslationDialectInterface20convertParameterAttrENS_4LLVM10LLVMFuncOpEiNS_14NamedAttributeERNS1_17ModuleTranslationE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 noundef %2, ptr %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(592) %5) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 1
}

declare noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm6Module17getOrInsertGlobalENS_9StringRefEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(1288), ptr, i64, ptr noundef) local_unnamed_addr #2

declare { ptr, i64 } @_ZN4test8SymbolOp10getSymNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !271  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !272  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i13, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.0.i.i4 = phi ptr [ %i.j, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %i.i = load ptr, ptr %.0.i.i4, align 8, !tbaa !274 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i.i2, label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit, label %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i: ; preds = %.lr.ph
  tail call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.i) #17, !inline_history !266
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 192) #18, !inline_history !266
  br label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit

_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i
  store ptr null, ptr %.0.i.i4, align 8, !tbaa !274
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i4, i64 8 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i1, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, label %.lr.ph, !llvm.loop !267

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !271
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit
  %i.k = phi ptr [ %.pre, %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !275
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #18
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !278  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !279  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 2 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !280 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #18
  br label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !268

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.q, align 8, !tbaa !278
  br label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !281
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #18
  br label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !18 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit
  tail call void @free(ptr noundef %i.ad) #17
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

declare ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @"_ZN4llvm12function_refIFNS_13LogicalResultEN4mlir9AttributeEEE11callback_fnIZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface14amendOperationEPNS2_9OperationENS_8ArrayRefIPNS_11InstructionEEENS2_14NamedAttributeERNS2_4LLVM17ModuleTranslationEE3$_0EES1_lS3_"(i64 noundef %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 7 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.mlir::BoolAttr", align 8    ; 5 uses
  %5 = alloca %"class.mlir::OpBuilder", align 8   ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !283, !nonnull !73, !align !74
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.g = icmp eq ptr %i.f, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  %7 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %7, %i.g
  br i1 %spec.select.i.i.i.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.i, align 1, !tbaa !77
  store ptr @.str.13, ptr %3, align 8, !tbaa !78
  store i8 3, ptr %i.h, align 8, !tbaa !79
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(34) %3) #17
  %i.j = load ptr, ptr %2, align 8, !tbaa !87
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !88, !range !89, !noundef !73
  %i.m = trunc nuw i8 %i.l to i1
  store i8 0, ptr %i.k, align 8, !tbaa !88
  br i1 %i.m, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.n) #17
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i:          ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %"_ZZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface14amendOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS4_11InstructionEEENS1_14NamedAttributeERNS1_4LLVM17ModuleTranslationEENK3$_0clENS1_9AttributeE.exit"

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.o = tail call noundef zeroext i1 @_ZN4mlir8BoolAttr7classofENS_9AttributeE(ptr %1) #17
  %spec.select.i.i.i = select i1 %i.o, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i.i, ptr %4, align 8
  %.not.i = icmp eq ptr %spec.select.i.i.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call noundef zeroext i1 @_ZNK4mlir8BoolAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %i.p, label %bb.h, label %"_ZZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface14amendOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS4_11InstructionEEENS1_14NamedAttributeERNS1_4LLVM17ModuleTranslationEENK3$_0clENS1_9AttributeE.exit"

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !283, !nonnull !73, !align !74
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  %i.t = load i32, ptr %i.s, align 4              ; 3 uses
  %i.u = and i32 %i.t, 8388607
  %i.v = icmp ne i32 %i.u, 0
  call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.x = lshr i32 %i.t, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.x, 1
  %i.y = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.y
  %i.aa = lshr i32 %i.t, 21
  %i.ab = and i32 %i.aa, 2040
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !295
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %i.ag ; 4 uses
  %i.ai = call noundef ptr @_ZN4mlir6Region10getContextEv(ptr noundef nonnull align 8 dereferenceable(28) %i.ah) #17
  store ptr %i.ai, ptr %5, align 8, !tbaa !297
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !298
  %i.al = icmp eq ptr %i.ah, %i.ak
  br i1 %i.al, label %_ZN4mlir9OpBuilderC2ERNS_6RegionEPNS0_8ListenerE.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !299 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !299
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !304
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.ar, ptr %i.as, align 8
  br label %_ZN4mlir9OpBuilderC2ERNS_6RegionEPNS0_8ListenerE.exit.i

_ZN4mlir9OpBuilderC2ERNS_6RegionEPNS0_8ListenerE.exit.i: ; preds = %bb.i, %bb.h
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !283, !nonnull !73, !align !74
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i4.i = load ptr, ptr %i.av, align 8
  %i.aw = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.av) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.ay, align 1, !tbaa !77
  store ptr @.str.14, ptr %6, align 8, !tbaa !78
  store i8 3, ptr %i.ax, align 8, !tbaa !79
  %i.az = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(34) %6) #17
  %i.ba = call ptr @_ZN4test8SymbolOp6createERN4mlir9OpBuilderENS1_8LocationENS1_10StringAttrES5_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr %.sroa.0.0.copyload.i4.i, ptr %i.az, ptr null) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %"_ZZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface14amendOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS4_11InstructionEEENS1_14NamedAttributeERNS1_4LLVM17ModuleTranslationEENK3$_0clENS1_9AttributeE.exit"

.critedge.i:                                      ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %"_ZZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface14amendOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS4_11InstructionEEENS1_14NamedAttributeERNS1_4LLVM17ModuleTranslationEENK3$_0clENS1_9AttributeE.exit"

"_ZZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface14amendOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS4_11InstructionEEENS1_14NamedAttributeERNS1_4LLVM17ModuleTranslationEENK3$_0clENS1_9AttributeE.exit": ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i, %bb.g, %_ZN4mlir9OpBuilderC2ERNS_6RegionEPNS0_8ListenerE.exit.i, %.critedge.i
  %.sroa.03.0.i = phi i8 [ 0, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i ], [ 1, %.critedge.i ], [ 1, %_ZN4mlir9OpBuilderC2ERNS_6RegionEPNS0_8ListenerE.exit.i ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i8 %.sroa.03.0.i
}

declare noundef zeroext i1 @_ZNK4mlir8BoolAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN4test8SymbolOp6createERN4mlir9OpBuilderENS1_8LocationENS1_10StringAttrES5_(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr) local_unnamed_addr #2

declare ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4mlir8BoolAttr7classofENS_9AttributeE(ptr) local_unnamed_addr #2

declare noundef ptr @_ZN4mlir6Region10getContextEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #2

declare noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i8 @"_ZN4llvm12function_refIFNS_13LogicalResultEN4mlir9AttributeEEE11callback_fnIZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface14amendOperationEPNS2_9OperationENS_8ArrayRefIPNS_11InstructionEEENS2_14NamedAttributeERNS2_4LLVM17ModuleTranslationEE3$_1EES1_lS3_"(i64 noundef %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.b, align 8, !tbaa !310 ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !313 ; 2 uses
  %i.c = getelementptr i8, ptr %.val, i64 8
  %.val.val3 = load i64, ptr %i.c, align 8, !tbaa !314 ; 2 uses
  %.idx.i = shl nuw nsw i64 %.val.val3, 3
  %i.d = getelementptr inbounds nuw i8, ptr %.val.val, i64 %.idx.i
  %.not5.i = icmp eq i64 %.val.val3, 0
  br i1 %.not5.i, label %"_ZZNK12_GLOBAL__N_137TestDialectLLVMIRTranslationInterface14amendOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS4_11InstructionEEENS1_14NamedAttributeERNS1_4LLVM17ModuleTranslationEENK3$_1clENS1_9AttributeE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %.lr.ph.i
  %.06.i = phi ptr [ %.val.val, %.lr.ph.i ], [ %i.as, %bb.k ] ; 2 uses
  %i.i = load ptr, ptr %.06.i, align 8, !tbaa !316 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.j = load ptr, ptr %1, align 8, !tbaa !319
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.l = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10StringAttrEvE2idE ; 2 uses
  %spec.select.i.i.i = select i1 %i.l, ptr %1, ptr null
  store ptr %spec.select.i.i.i, ptr %2, align 8
  br i1 %i.l, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.m = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #17 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0        ; 3 uses
  %i.o = extractvalue { ptr, i64 } %i.m, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %.not.i.i = icmp eq ptr %i.n, null
  store ptr %i.e, ptr %4, align 8, !tbaa !321, !alias.scope !320
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.f, align 8, !tbaa !322, !alias.scope !320
  store i8 0, ptr %i.e, align 8, !tbaa !78, !alias.scope !320
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !320
  store i64 %i.o, ptr %i.a, align 8, !tbaa !61, !noalias !320
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %bb.f, label %._crit_edge.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #17 ; 2 uses
  store ptr %i.q, ptr %4, align 8, !tbaa !323, !alias.scope !320
  %i.r = load i64, ptr %i.a, align 8, !tbaa !61, !noalias !320
  store i64 %i.r, ptr %i.e, align 8, !tbaa !78, !alias.scope !320
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.s = phi ptr [ %i.q, %bb.f ], [ %i.e, %bb.e ] ; 2 uses
  switch i64 %i.o, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  ]

end_hunk_1
