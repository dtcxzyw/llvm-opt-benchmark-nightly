Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/mlir-runner?download=true
inline.NumInlined: 408
inline.NumDeleted: 345
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::cl::opt" = type { %"class.llvm::cl::Option", %"class.llvm::cl::opt_storage", %"class.llvm::cl::parser", %"class.std::function" }
%"class.llvm::cl::Option" = type { ptr, i16, i16, i16, i16, %"class.llvm::StringRef", %"class.llvm::StringRef", %"class.llvm::StringRef", %"class.llvm::SmallVector", %"class.llvm::SmallPtrSet" }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [8 x i8] }
%"class.llvm::SmallPtrSet" = type { %"class.llvm::SmallPtrSetImpl.base", [1 x ptr] }
%"class.llvm::SmallPtrSetImpl.base" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallPtrSetImplBase.base" = type <{ ptr, i32, i32, i8 }>
%"class.llvm::cl::opt_storage" = type { i8, [7 x i8], %"struct.llvm::cl::OptionValue" }
%"struct.llvm::cl::OptionValue" = type { %"struct.llvm::cl::OptionValueBase.base", [6 x i8] }
%"struct.llvm::cl::OptionValueBase.base" = type { %"class.llvm::cl::OptionValueCopy.base" }
%"class.llvm::cl::OptionValueCopy.base" = type <{ %"struct.llvm::cl::GenericOptionValue", i8, i8 }>
%"struct.llvm::cl::GenericOptionValue" = type { ptr }
%"class.llvm::cl::parser" = type { %"class.llvm::cl::basic_parser" }
%"class.llvm::cl::basic_parser" = type { %"class.llvm::cl::basic_parser_impl" }
%"class.llvm::cl::basic_parser_impl" = type { ptr }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"class.llvm::InitLLVM" = type { %"class.llvm::BumpPtrAllocatorImpl", %"class.llvm::SmallVector.11", %"class.std::optional" }
%"class.llvm::BumpPtrAllocatorImpl" = type { ptr, i64, %"class.llvm::SmallVector.1", %"class.llvm::SmallVector.6" }
%"class.llvm::SmallVector.1" = type { %"class.llvm::SmallVectorImpl.2", %"struct.llvm::SmallVectorStorage.5" }
%"class.llvm::SmallVectorImpl.2" = type { %"class.llvm::SmallVectorTemplateBase.3" }
%"class.llvm::SmallVectorTemplateBase.3" = type { %"class.llvm::SmallVectorTemplateCommon.4" }
%"class.llvm::SmallVectorTemplateCommon.4" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.5" = type { [32 x i8] }
%"class.llvm::SmallVector.6" = type { %"class.llvm::SmallVectorImpl.7" }
%"class.llvm::SmallVectorImpl.7" = type { %"class.llvm::SmallVectorTemplateBase.8" }
%"class.llvm::SmallVectorTemplateBase.8" = type { %"class.llvm::SmallVectorTemplateCommon.9" }
%"class.llvm::SmallVectorTemplateCommon.9" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVector.11" = type { %"class.llvm::SmallVectorImpl.12" }
%"class.llvm::SmallVectorImpl.12" = type { %"class.llvm::SmallVectorTemplateBase.13" }
%"class.llvm::SmallVectorTemplateBase.13" = type { %"class.llvm::SmallVectorTemplateCommon.14" }
%"class.llvm::SmallVectorTemplateCommon.14" = type { %"class.llvm::SmallVectorBase" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base", [7 x i8] }
%"struct.std::_Optional_payload.base" = type { %"struct.std::_Optional_payload_base.base" }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<llvm::PrettyStackTraceProgram>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::PrettyStackTraceProgram>::_Storage" = type { %"class.llvm::PrettyStackTraceProgram" }
%"class.llvm::PrettyStackTraceProgram" = type { %"class.llvm::PrettyStackTraceEntry", i32, ptr }
%"class.llvm::PrettyStackTraceEntry" = type { ptr, ptr }
%"class.mlir::DialectRegistry" = type { %"class.std::map", %"class.llvm::SmallVector.18", %"class.llvm::MapVector" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::pair<mlir::TypeID, std::function<mlir::Dialect *(mlir::MLIRContext *)>>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::pair<mlir::TypeID, std::function<mlir::Dialect *(mlir::MLIRContext *)>>>>, std::less<void>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::pair<mlir::TypeID, std::function<mlir::Dialect *(mlir::MLIRContext *)>>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::pair<mlir::TypeID, std::function<mlir::Dialect *(mlir::MLIRContext *)>>>>, std::less<void>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.llvm::SmallVector.18" = type { %"class.llvm::SmallVectorImpl.19", %"struct.llvm::SmallVectorStorage.22" }
%"class.llvm::SmallVectorImpl.19" = type { %"class.llvm::SmallVectorTemplateBase.20" }
%"class.llvm::SmallVectorTemplateBase.20" = type { %"class.llvm::SmallVectorTemplateCommon.21" }
%"class.llvm::SmallVectorTemplateCommon.21" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.22" = type { [32 x i8] }
%"class.llvm::MapVector" = type { %"class.llvm::DenseMap", %"class.llvm::SmallVector.23" }
%"class.llvm::DenseMap" = type { ptr, ptr, i32, i32 }
%"class.llvm::SmallVector.23" = type { %"class.llvm::SmallVectorImpl.24" }
%"class.llvm::SmallVectorImpl.24" = type { %"class.llvm::SmallVectorTemplateBase.25" }
%"class.llvm::SmallVectorTemplateBase.25" = type { %"class.llvm::SmallVectorTemplateCommon.26" }
%"class.llvm::SmallVectorTemplateCommon.26" = type { %"class.llvm::SmallVectorBase" }
%"struct.mlir::JitRunnerConfig" = type { %"class.llvm::function_ref", %"class.llvm::function_ref.28", %"class.llvm::function_ref.29" }
%"class.llvm::function_ref" = type { ptr, i64 }
%"class.llvm::function_ref.28" = type { ptr, i64 }
%"class.llvm::function_ref.29" = type { ptr, i64 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.31" }
%"struct.std::_Head_base.31" = type { ptr }
%"class.mlir::detail::op_iterator" = type { %"class.llvm::mapped_iterator" }
%"class.llvm::mapped_iterator" = type { %"class.llvm::iterator_adaptor_base", %"class.llvm::callable_detail::Callable" }
%"class.llvm::iterator_adaptor_base" = type { %"class.mlir::detail::op_filter_iterator" }
%"class.mlir::detail::op_filter_iterator" = type { %"class.llvm::filter_iterator_impl" }
%"class.llvm::filter_iterator_impl" = type { %"class.llvm::filter_iterator_base" }
%"class.llvm::filter_iterator_base" = type { %"class.llvm::iterator_adaptor_base.77", %"class.mlir::Region::OpIterator", ptr }
%"class.llvm::iterator_adaptor_base.77" = type { %"class.mlir::Region::OpIterator" }
%"class.mlir::Region::OpIterator" = type { ptr, %"class.llvm::ilist_iterator", %"class.llvm::ilist_iterator.80" }
%"class.llvm::ilist_iterator" = type { ptr }
%"class.llvm::ilist_iterator.80" = type { ptr }
%"class.llvm::callable_detail::Callable" = type { ptr }
%"class.mlir::ModuleOp" = type { %"class.mlir::Op" }
%"class.mlir::Op" = type { %"class.mlir::OpState" }
%"class.mlir::OpState" = type { ptr }
%"class.mlir::InFlightDiagnostic" = type { ptr, %"class.std::optional.47" }
%"class.std::optional.47" = type { %"struct.std::_Optional_base.48" }
%"struct.std::_Optional_base.48" = type { %"struct.std::_Optional_payload.50" }
%"struct.std::_Optional_payload.50" = type { %"struct.std::_Optional_payload.base.69", [7 x i8] }
%"struct.std::_Optional_payload.base.69" = type { %"struct.std::_Optional_payload_base.base.68" }
%"struct.std::_Optional_payload_base.base.68" = type <{ %"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage", i8 }>
%"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage" = type { %"class.mlir::Diagnostic" }
%"class.mlir::Diagnostic" = type { %"class.mlir::Location", i32, %"class.llvm::SmallVector.53", %"class.std::vector", %"class.std::vector.61", %"class.llvm::SmallVector.66" }
%"class.mlir::Location" = type { %"class.mlir::LocationAttr" }
%"class.mlir::LocationAttr" = type { %"class.mlir::Attribute" }
%"class.mlir::Attribute" = type { ptr }
%"class.llvm::SmallVector.53" = type { %"class.llvm::SmallVectorImpl.54", %"struct.llvm::SmallVectorStorage.57" }
%"class.llvm::SmallVectorImpl.54" = type { %"class.llvm::SmallVectorTemplateBase.55" }
%"class.llvm::SmallVectorTemplateBase.55" = type { %"class.llvm::SmallVectorTemplateCommon.56" }
%"class.llvm::SmallVectorTemplateCommon.56" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.57" = type { [96 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.61" = type { %"struct.std::_Vector_base.62" }
%"struct.std::_Vector_base.62" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::SmallVector.66" = type { %"class.llvm::SmallVectorImpl.54" }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.llvm::iterator_range" = type { %"class.mlir::detail::op_iterator", %"class.mlir::detail::op_iterator" }
%"class.std::function.83" = type { %"class.std::_Function_base", ptr }

$_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev = comdat any

$_ZN4mlir15DialectRegistryD2Ev = comdat any

$_ZN4mlir10DiagnosticD2Ev = comdat any

$_ZN4mlir6Region6getOpsINS_8ModuleOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS0_10OpIteratorEEEEEv = comdat any

$_ZN4mlir6detail18op_filter_iteratorINS_8ModuleOpENS_6Region10OpIteratorEE6filterERNS_9OperationE = comdat any

$_ZN4mlir6detail11op_iteratorINS_8ModuleOpENS_6Region10OpIteratorEE6unwrapERNS_9OperationE = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IN4mlir6TypeIDESt8functionIFPNS8_7DialectEPNS8_11MLIRContextEEEEESt10_Select1stISI_ESt4lessIvESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E = comdat any

$_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE = comdat any

$_ZN4llvm12function_refIFSt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEPN4mlir9OperationERNS_11LLVMContextEEE11callback_fnISB_EES5_lS8_SA_ = comdat any

$_ZTVN4llvm2cl11OptionValueIbEE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZL17linkNestedModules = internal global %"class.llvm::cl::opt" zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"link-nested-modules\00", align 1
@.str.1 = private unnamed_addr constant [158 x i8] c"Link two nested MLIR modules into a single LLVM IR module. Useful if both the host and device code can be run on the same CPU, as in SPIR-V CPU Runner tests.\00", align 1
@__dso_handle = external hidden global i8
@_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl6OptionE = external unnamed_addr constant { [13 x ptr] }, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"op must be a 'builtin.module\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"The module must contain exactly one nested module\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"LLVMDialectModule\00", align 1
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZTVN4llvm2cl11OptionValueIbEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm2cl6parserIbEE = external unnamed_addr constant { [6 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_mlir_runner.cpp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #12, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !55, !range !17, !noundef !18
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56
  tail call void @free(ptr noundef %i.i) #12
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #12
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %"class.llvm::InitLLVM", align 8    ; 4 uses
  %3 = alloca %"class.mlir::DialectRegistry", align 8 ; 20 uses
  %4 = alloca %"struct.mlir::JitRunnerConfig", align 8 ; 5 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !57
  store ptr %1, ptr %i.b, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZN4llvm8InitLLVMC2ERiRPPKcbb(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext true, i1 noundef zeroext false) #12
  call void @LLVMInitializeX86TargetInfo() #12
  call void @LLVMInitializeX86Target() #12
  call void @LLVMInitializeX86TargetMC() #12
  call void @LLVMInitializeX86AsmPrinter() #12
  call void @LLVMInitializeX86AsmParser() #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN4mlir15DialectRegistryC1Ev(ptr noundef nonnull align 8 dereferenceable(136) %3) #12
  call void @_ZN4mlir33registerArmNeonDialectTranslationERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %3) #12
  call void @_ZN4mlir32registerArmSMEDialectTranslationERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %3) #12
  call void @_ZN4mlir32registerArmSVEDialectTranslationERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %3) #12
  call void @_ZN4mlir33registerBuiltinDialectTranslationERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %3) #12
  call void @_ZN4mlir29registerGPUDialectTranslationERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %3) #12
  call void @_ZN4mlir30registerLLVMDialectTranslationERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %3) #12
  call void @_ZN4mlir30registerNVVMDialectTranslationERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %3) #12
  call void @_ZN4mlir33registerOpenACCDialectTranslationERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %3) #12
  call void @_ZN4mlir32registerOpenMPDialectTranslationERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %3) #12
  call void @_ZN4mlir29registerPtrDialectTranslationERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %3) #12
  call void @_ZN4mlir31registerROCDLDialectTranslationERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %3) #12
  call void @_ZN4mlir31registerSPIRVDialectTranslationERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %3) #12
  call void @_ZN4mlir30registerVCIXDialectTranslationERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %3) #12
  call void @_ZN4mlir30registerXeVMDialectTranslationERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %3) #12
  call void @_ZN4mlir3gpu56registerOffloadingLLVMTranslationInterfaceExternalModelsERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %3) #12
  %i.c = load i32, ptr %i.a, align 4, !tbaa !57
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !59
  store ptr null, ptr %4, align 8, !tbaa !60
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @_ZN4llvm12function_refIFSt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEPN4mlir9OperationERNS_11LLVMContextEEE11callback_fnISB_EES5_lS8_SA_, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !60
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 ptrtoint (ptr @_ZL17convertMLIRModulePN4mlir9OperationERN4llvm11LLVMContextE to i64), ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !22
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !60
  %i.e = call noundef i32 @_ZN4mlir13JitRunnerMainEiPPcRKNS_15DialectRegistryENS_15JitRunnerConfigE(i32 noundef %i.c, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull byval(%"struct.mlir::JitRunnerConfig") align 8 %4) #12
  call void @_ZN4mlir15DialectRegistryD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @_ZN4llvm8InitLLVMD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %i.e
}

declare void @_ZN4mlir15DialectRegistryC1Ev(ptr noundef nonnull align 8 dereferenceable(136)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL17convertMLIRModulePN4mlir9OperationERN4llvm11LLVMContextE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 {
bb.a:
  %3 = alloca %"class.mlir::detail::op_iterator", align 8 ; 9 uses
  %4 = alloca %"class.mlir::ModuleOp", align 8    ; 4 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::iterator_range", align 8 ; 9 uses
  %8 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 4 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 3 uses
  %12 = alloca %"class.std::function.83", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  %13 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  %spec.select.i.i.i.i = and i1 %13, %i.d
  %spec.select.i.i = select i1 %spec.select.i.i.i.i, ptr %1, ptr null ; 3 uses
  store ptr %spec.select.i.i, ptr %4, align 8
  %.not = icmp eq ptr %spec.select.i.i, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.f, align 1, !tbaa !69
  store ptr @.str.2, ptr %6, align 8, !tbaa !28
  store i8 3, ptr %i.e, align 8, !tbaa !70
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(34) %6) #12
  store ptr null, ptr %0, align 8, !tbaa !73
  %i.g = load ptr, ptr %5, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !82, !range !17, !noundef !18
  %i.j = trunc nuw i8 %i.i to i1
  store i8 0, ptr %i.h, align 8, !tbaa !82
  br i1 %i.j, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.k) #12
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit15

bb.f:                                             ; preds = %bb.a
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL17linkNestedModules, i64 120), align 8, !tbaa !34, !range !17, !noundef !18
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.o = load i32, ptr %i.n, align 4, !noalias !83 ; 3 uses
  %i.p = and i32 %i.o, 8388607
  %i.q = icmp ne i32 %i.p, 0
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 64
  %i.s = lshr i32 %i.o, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.s, 1
  %i.t = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.t
  %i.v = lshr i32 %i.o, 21
  %i.w = and i32 %i.v, 2040
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !99, !noalias !83
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.ab
  call void @_ZN4mlir6Region6getOpsINS_8ModuleOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS0_10OpIteratorEEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %7, ptr noundef nonnull align 8 dereferenceable(28) %i.ac)
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.sroa.47.0.copyload.i = load ptr, ptr %.sroa.47.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.34.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  %.sroa.34.0.copyload.i = load ptr, ptr %.sroa.34.0..sroa_idx.i, align 8 ; 2 uses
  %.not.i5 = icmp eq ptr %.sroa.47.0.copyload.i, %.sroa.34.0.copyload.i
  br i1 %.not.i5, label %_ZN4llvm16hasSingleElementIRNS_14iterator_rangeIN4mlir6detail11op_iteratorINS2_8ModuleOpENS2_6Region10OpIteratorEEEEEEEbOT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(128) %7, i64 16, i1 false)
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.59.0..sroa_idx.i, i64 40, i1 false)
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %.sroa.47.0.copyload.i, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.af = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %3) #12, !noalias !100 ; 0 uses
  %i.ag = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8, !tbaa !37, !noalias !100 ; 3 uses
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !37, !noalias !100
  %.not1.i.i.i.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not1.i.i.i.i.i, label %_ZN4llvm16hasSingleElementIRNS_14iterator_rangeIN4mlir6detail11op_iteratorINS2_8ModuleOpENS2_6Region10OpIteratorEEEEEEEbOT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %bb.i
  %i.ai = phi ptr [ %i.an, %bb.i ], [ %i.ag, %bb.h ]
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !44, !noalias !100
  %i.ak = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.ai) #12, !noalias !100
  %i.al = call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(64) %i.ak) #12, !noalias !100, !inline_history !65
  br i1 %i.al, label %.lr.ph.i.i.i.i._ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_8ModuleOpENS2_6Region10OpIteratorEEEPFS5_RNS2_9OperationEES5_EES8_St20forward_iterator_tagS5_lPS5_S5_EppEv.exit.i.loopexit_crit_edge.i, label %bb.i

.lr.ph.i.i.i.i._ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_8ModuleOpENS2_6Region10OpIteratorEEEPFS5_RNS2_9OperationEES5_EES8_St20forward_iterator_tagS5_lPS5_S5_EppEv.exit.i.loopexit_crit_edge.i: ; preds = %.lr.ph.i.i.i.i.i
  %.sroa.3.0.copyload.pre.pre.i = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8
  br label %_ZN4llvm16hasSingleElementIRNS_14iterator_rangeIN4mlir6detail11op_iteratorINS2_8ModuleOpENS2_6Region10OpIteratorEEEEEEEbOT_.exit

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %3) #12, !noalias !100 ; 0 uses
  %i.an = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8, !tbaa !37, !noalias !100 ; 3 uses
  %i.ao = load ptr, ptr %i.ad, align 8, !tbaa !37, !noalias !100
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm16hasSingleElementIRNS_14iterator_rangeIN4mlir6detail11op_iteratorINS2_8ModuleOpENS2_6Region10OpIteratorEEEEEEEbOT_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZN4llvm16hasSingleElementIRNS_14iterator_rangeIN4mlir6detail11op_iteratorINS2_8ModuleOpENS2_6Region10OpIteratorEEEEEEEbOT_.exit: ; preds = %bb.i, %bb.h, %.lr.ph.i.i.i.i._ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_8ModuleOpENS2_6Region10OpIteratorEEEPFS5_RNS2_9OperationEES5_EES8_St20forward_iterator_tagS5_lPS5_S5_EppEv.exit.i.loopexit_crit_edge.i
  %.sroa.3.0.copyload.i = phi ptr [ %i.ag, %bb.h ], [ %.sroa.3.0.copyload.pre.pre.i, %.lr.ph.i.i.i.i._ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_8ModuleOpENS2_6Region10OpIteratorEEEPFS5_RNS2_9OperationEES5_EES8_St20forward_iterator_tagS5_lPS5_S5_EppEv.exit.i.loopexit_crit_edge.i ], [ %i.an, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ap = icmp eq ptr %.sroa.3.0.copyload.i, %.sroa.34.0.copyload.i
  br i1 %i.ap, label %bb.n, label %_ZN4llvm16hasSingleElementIRNS_14iterator_rangeIN4mlir6detail11op_iteratorINS2_8ModuleOpENS2_6Region10OpIteratorEEEEEEEbOT_.exit.thread

_ZN4llvm16hasSingleElementIRNS_14iterator_rangeIN4mlir6detail11op_iteratorINS2_8ModuleOpENS2_6Region10OpIteratorEEEEEEEbOT_.exit.thread: ; preds = %bb.g, %_ZN4llvm16hasSingleElementIRNS_14iterator_rangeIN4mlir6detail11op_iteratorINS2_8ModuleOpENS2_6Region10OpIteratorEEEEEEEbOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.ar, align 1, !tbaa !69
  store ptr @.str.3, ptr %9, align 8, !tbaa !28
  store i8 3, ptr %i.aq, align 8, !tbaa !70
  call void @_ZN4mlir7OpState9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(34) %9) #12
  %i.as = load ptr, ptr %8, align 8, !tbaa !81
  %.not.i6 = icmp eq ptr %i.as, null
  br i1 %.not.i6, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm16hasSingleElementIRNS_14iterator_rangeIN4mlir6detail11op_iteratorINS2_8ModuleOpENS2_6Region10OpIteratorEEEEEEEbOT_.exit.thread
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4llvm16hasSingleElementIRNS_14iterator_rangeIN4mlir6detail11op_iteratorINS2_8ModuleOpENS2_6Region10OpIteratorEEEEEEEbOT_.exit.thread
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !tbaa !82, !range !17, !noundef !18
  %i.av = trunc nuw i8 %i.au to i1
  store i8 0, ptr %i.at, align 8, !tbaa !82
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.aw) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  store ptr null, ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit15

bb.n:                                             ; preds = %_ZN4llvm16hasSingleElementIRNS_14iterator_rangeIN4mlir6detail11op_iteratorINS2_8ModuleOpENS2_6Region10OpIteratorEEEEEEEbOT_.exit
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.47.0..sroa_idx.i, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56
  %.sroa.419.0.copyload = load ptr, ptr %.sroa.419.0..sroa_idx, align 8
  %i.ax = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.3.0.copyload) #12
  %i.ay = call ptr %.sroa.419.0.copyload(ptr noundef nonnull align 8 dereferenceable(64) %i.ax) #12, !inline_history !66 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  call void @_ZN4mlir23translateModuleToLLVMIREPNS_9OperationERN4llvm11LLVMContextENS2_9StringRefEbPNS2_3vfs10FileSystemE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %10, ptr noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @.str.4, i64 17, i1 noundef zeroext false, ptr noundef null) #12
  %i.az = load ptr, ptr %10, align 8, !tbaa !101  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ay) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @_ZN4mlir23translateModuleToLLVMIREPNS_9OperationERN4llvm11LLVMContextENS2_9StringRefEbPNS2_3vfs10FileSystemE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @.str.4, i64 17, i1 noundef zeroext false, ptr noundef null) #12
  %i.ba = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL17linkNestedModules, i64 120), align 8, !tbaa !34, !range !17, !noundef !18
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.o, label %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit12

.thread:                                          ; preds = %bb.f
  tail call void @_ZN4mlir23translateModuleToLLVMIREPNS_9OperationERN4llvm11LLVMContextENS2_9StringRefEbPNS2_3vfs10FileSystemE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @.str.4, i64 17, i1 noundef zeroext false, ptr noundef null) #12
  %i.bc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL17linkNestedModules, i64 120), align 8, !tbaa !34, !range !17, !noundef !18
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.o, label %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit15

bb.o:                                             ; preds = %.thread, %bb.n
  %.sroa.022.132 = phi ptr [ null, %.thread ], [ %i.az, %bb.n ]
  %i.be = load ptr, ptr %0, align 8, !tbaa !101
  %i.bf = ptrtoint ptr %.sroa.022.132 to i64
  store i64 %i.bf, ptr %11, align 8, !tbaa !101
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  %i.bg = call noundef zeroext i1 @_ZN4llvm6Linker11linkModulesERNS_6ModuleESt10unique_ptrIS1_St14default_deleteIS1_EEjSt8functionIFvS2_RKNS_9StringSetINS_15MallocAllocatorEEEEE(ptr noundef nonnull align 8 dereferenceable(1288) %i.be, ptr nofree noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0, ptr nofree noundef nonnull align 8 dereferenceable(32) %12) #12 ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !14 ; 2 uses
  %.not.i9 = icmp eq ptr %i.bi, null
  br i1 %.not.i9, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = call noundef zeroext i1 %i.bi(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3) #12, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.o, %bb.p
  %i.bk = load ptr, ptr %11, align 8, !tbaa !101  ; 3 uses
  %.not.i10 = icmp eq ptr %i.bk, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit15, label %_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i11

_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i11: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @_ZN4llvm6ModuleD1Ev(ptr noundef nonnull align 8 dead_on_return(1288) dereferenceable(1288) %i.bk) #12
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 1288) #13
  br label %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit15

_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit12: ; preds = %bb.n
  %.not.i13 = icmp eq ptr %i.az, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit15, label %_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i14

_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i14: ; preds = %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit12
  call void @_ZN4llvm6ModuleD1Ev(ptr noundef nonnull align 8 dead_on_return(1288) dereferenceable(1288) %i.az) #12
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 1288) #13
end_hunk_0
begin_hunk_1_@_ZN4mlir10DiagnosticD2Ev:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #12
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !121  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i13, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.0.i.i4 = phi ptr [ %i.j, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %i.i = load ptr, ptr %.0.i.i4, align 8, !tbaa !123 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i.i2, label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit, label %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i: ; preds = %.lr.ph
  tail call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.i) #12, !inline_history !115
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 192) #13, !inline_history !115
  br label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit

_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i
  store ptr null, ptr %.0.i.i4, align 8, !tbaa !123
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i4, i64 8 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i1, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, label %.lr.ph, !llvm.loop !116

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !120
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit
  %i.k = phi ptr [ %.pre, %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !124
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #13
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !127  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !128  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 2 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #13
  br label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !117

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.q, align 8, !tbaa !127
  br label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !129
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #13
  br label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit
  tail call void @free(ptr noundef %i.ad) #12
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6Region6getOpsINS_8ModuleOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS0_10OpIteratorEEEEEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range") align 8 %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %.sroa.05 = alloca %"class.llvm::filter_iterator_base", align 8 ; 2 uses
  %2 = alloca %"class.mlir::Region::OpIterator", align 8 ; 6 uses
  %3 = alloca %"class.mlir::detail::op_filter_iterator", align 8 ; 7 uses
  %4 = alloca %"class.mlir::Region::OpIterator", align 8 ; 2 uses
  %5 = alloca %"class.mlir::detail::op_filter_iterator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(28) %1, i1 noundef zeroext true) #12
  call void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(28) %1, i1 noundef zeroext false) #12
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr @_ZN4mlir6detail18op_filter_iteratorINS_8ModuleOpENS_6Region10OpIteratorEE6filterERNS_9OperationE, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !37
  %.not1.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not1.i.i.i.i, label %_ZN4mlir6detail18op_filter_iteratorINS_8ModuleOpENS_6Region10OpIteratorEEC2ES4_S4_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.l, %bb.b ], [ %i.e, %bb.a ]
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.i = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.g) #12
  %i.j = call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(64) %i.i) #12, !inline_history !130
  br i1 %i.j, label %_ZN4mlir6detail18op_filter_iteratorINS_8ModuleOpENS_6Region10OpIteratorEEC2ES4_S4_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.k = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #12 ; 0 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !37
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i, label %_ZN4mlir6detail18op_filter_iteratorINS_8ModuleOpENS_6Region10OpIteratorEEC2ES4_S4_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZN4mlir6detail18op_filter_iteratorINS_8ModuleOpENS_6Region10OpIteratorEEC2ES4_S4_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.05, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr @_ZN4mlir6detail18op_filter_iteratorINS_8ModuleOpENS_6Region10OpIteratorEE6filterERNS_9OperationE, ptr %i.o, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !37   ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !37
  %.not1.i.i.i.i1 = icmp eq ptr %i.r, %i.s
  br i1 %.not1.i.i.i.i1, label %_ZN4mlir6detail18op_filter_iteratorINS_8ModuleOpENS_6Region10OpIteratorEEC2ES4_S4_.exit4, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZN4mlir6detail18op_filter_iteratorINS_8ModuleOpENS_6Region10OpIteratorEEC2ES4_S4_.exit, %bb.c
  %i.t = phi ptr [ %i.y, %bb.c ], [ %i.r, %_ZN4mlir6detail18op_filter_iteratorINS_8ModuleOpENS_6Region10OpIteratorEEC2ES4_S4_.exit ]
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.v = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.t) #12
  %i.w = call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(64) %i.v) #12, !inline_history !130
  br i1 %i.w, label %_ZN4mlir6detail18op_filter_iteratorINS_8ModuleOpENS_6Region10OpIteratorEEC2ES4_S4_.exit4, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i2
  %i.x = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(56) %5) #12 ; 0 uses
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !37   ; 2 uses
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !37
  %.not.i.i.i.i3 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i3, label %_ZN4mlir6detail18op_filter_iteratorINS_8ModuleOpENS_6Region10OpIteratorEEC2ES4_S4_.exit4, label %.lr.ph.i.i.i.i2, !llvm.loop !1

_ZN4mlir6detail18op_filter_iteratorINS_8ModuleOpENS_6Region10OpIteratorEEC2ES4_S4_.exit4: ; preds = %.lr.ph.i.i.i.i2, %bb.c, %_ZN4mlir6detail18op_filter_iteratorINS_8ModuleOpENS_6Region10OpIteratorEEC2ES4_S4_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.05, i64 56, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4mlir6detail11op_iteratorINS_8ModuleOpENS_6Region10OpIteratorEE6unwrapERNS_9OperationE, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZN4mlir6detail11op_iteratorINS_8ModuleOpENS_6Region10OpIteratorEE6unwrapERNS_9OperationE, ptr %.sroa.411.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

declare void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i1 noundef zeroext) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir6detail18op_filter_iteratorINS_8ModuleOpENS_6Region10OpIteratorEE6filterERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  %1 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  %spec.select.i.i.i.i = and i1 %1, %i.d
  ret i1 %spec.select.i.i.i.i
}

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN4mlir6detail11op_iteratorINS_8ModuleOpENS_6Region10OpIteratorEE6unwrapERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #5 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZN4llvm6ModuleD1Ev(ptr noundef nonnull align 8 dead_on_return(1288) dereferenceable(1288)) unnamed_addr #6

declare void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IN4mlir6TypeIDESt8functionIFPNS8_7DialectEPNS8_11MLIRContextEEEEESt10_Select1stISI_ESt4lessIvESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IN4mlir6TypeIDESt8functionIFPNS8_7DialectEPNS8_11MLIRContextEEEEESt10_Select1stISI_ESt4lessIvESaISI_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISI_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IN4mlir6TypeIDESt8functionIFPNS8_7DialectEPNS8_11MLIRContextEEEEESt10_Select1stISI_ESt4lessIvESaISI_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISI_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IN4mlir6TypeIDESt8functionIFPNS8_7DialectEPNS8_11MLIRContextEEEEESt10_Select1stISI_ESt4lessIvESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairIN4mlir6TypeIDESt8functionIFPNS0_7DialectEPNS0_11MLIRContextEEEED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 72 ; 2 uses
  %i.i = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef 3) #12, !inline_history !131 ; 0 uses
  br label %_ZNSt4pairIN4mlir6TypeIDESt8functionIFPNS0_7DialectEPNS0_11MLIRContextEEEED2Ev.exit.i.i.i

_ZNSt4pairIN4mlir6TypeIDESt8functionIFPNS0_7DialectEPNS0_11MLIRContextEEEED2Ev.exit.i.i.i: ; preds = %bb.b, %.lr.ph
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IN4mlir6TypeIDESt8functionIFPNS8_7DialectEPNS8_11MLIRContextEEEEESt10_Select1stISI_ESt4lessIvESaISI_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISI_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt4pairIN4mlir6TypeIDESt8functionIFPNS0_7DialectEPNS0_11MLIRContextEEEED2Ev.exit.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !28
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #13
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IN4mlir6TypeIDESt8functionIFPNS8_7DialectEPNS8_11MLIRContextEEEEESt10_Select1stISI_ESt4lessIvESaISI_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISI_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IN4mlir6TypeIDESt8functionIFPNS8_7DialectEPNS8_11MLIRContextEEEEESt10_Select1stISI_ESt4lessIvESaISI_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISI_E.exit: ; preds = %_ZNSt4pairIN4mlir6TypeIDESt8functionIFPNS0_7DialectEPNS0_11MLIRContextEEEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 104) #13
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !132

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IN4mlir6TypeIDESt8functionIFPNS8_7DialectEPNS8_11MLIRContextEEEEESt10_Select1stISI_ESt4lessIvESaISI_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISI_E.exit, %bb.a
  ret void
}

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !135, !range !17, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !135, !range !17, !noundef !18
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !17
  %i.j = load i8, ptr %i.d, align 8, !range !17
  %i.k = icmp eq i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFSt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEPN4mlir9OperationERNS_11LLVMContextEEE11callback_fnISB_EES5_lS8_SA_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #5 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  tail call void %i.a(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_mlir_runner.cpp() #10 section ".text.startup" {
bb.a:
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL17linkNestedModules, i32 noundef 0, i32 noundef 0) #12
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17linkNestedModules, i64 120), align 8, !tbaa !34
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17linkNestedModules, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL17linkNestedModules, i64 128), align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL17linkNestedModules, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL17linkNestedModules, i64 144), align 8, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL17linkNestedModules, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL17linkNestedModules, ptr nonnull align 1 dereferenceable(20) @.str, i64 19) #12
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL17linkNestedModules, i64 32), align 8, !tbaa !53
  store i64 157, ptr getelementptr inbounds nuw (i8, ptr @_ZL17linkNestedModules, i64 40), align 8, !tbaa !22
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL17linkNestedModules) #12
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL17linkNestedModules, ptr nonnull @__dso_handle) #12 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = distinct !{!1, !45}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"_ZTSSt14_Function_base", !6, i64 0, !12, i64 16}
!14 = !{!13, !12, i64 16}
!15 = !{!"any p2 pointer", !12, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !12, i64 0, !7, i64 8, !7, i64 12}
!20 = !{!19, !12, i64 0}
!21 = !{!"long", !6, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"p1 _ZTSN4mlir13OperationName4ImplE", !12, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"p1 _ZTSN4mlir6TypeID7StorageE", !12, i64 0}
!26 = !{!"_ZTSN4mlir6TypeIDE", !25, i64 0}
!27 = !{!26, !25, i64 0}
!28 = !{!6, !6, i64 0}
!29 = !{!"_ZTSN4llvm2cl18GenericOptionValueE"}
!30 = !{!"_ZTSN4llvm2cl15OptionValueCopyIbEE", !29, i64 0, !16, i64 8, !16, i64 9}
!31 = !{!"_ZTSN4llvm2cl15OptionValueBaseIbLb0EEE", !30, i64 0}
!32 = !{!"_ZTSN4llvm2cl11OptionValueIbEE", !31, i64 0}
!33 = !{!"_ZTSN4llvm2cl11opt_storageIbLb0ELb0EEE", !16, i64 0, !32, i64 8}
!34 = !{!33, !16, i64 0}
!35 = !{!"p1 _ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEEE", !12, i64 0}
!36 = !{!"_ZTSN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEE", !35, i64 0}
!37 = !{!36, !35, i64 0}
!38 = !{!"p1 _ZTSN4mlir6RegionE", !12, i64 0}
!39 = !{!"p1 _ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEEEE", !12, i64 0}
!40 = !{!"_ZTSN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEE", !39, i64 0}
!41 = !{!"_ZTSN4mlir6Region10OpIteratorE", !38, i64 0, !40, i64 8, !36, i64 16}
!42 = !{!"_ZTSN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseIN4mlir6Region10OpIteratorEPFbRNS2_9OperationEESt20forward_iterator_tagEES4_S9_S5_lPS5_S6_EE", !41, i64 0}
!43 = !{!"_ZTSN4llvm20filter_iterator_baseIN4mlir6Region10OpIteratorEPFbRNS1_9OperationEESt20forward_iterator_tagEE", !42, i64 0, !41, i64 24, !12, i64 48}
!44 = !{!43, !12, i64 48}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"p1 omnipotent char", !12, i64 0}
!47 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !46, i64 0}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !47, i64 0, !21, i64 8, !6, i64 16}
!49 = !{!48, !46, i64 0}
!50 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!51 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!52 = !{!"_ZTSSt18_Rb_tree_node_base", !50, i64 0, !51, i64 8, !51, i64 16, !51, i64 24}
!53 = !{!46, !46, i64 0}
!54 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !15, i64 0, !7, i64 8, !7, i64 12, !16, i64 16}
end_hunk_1
