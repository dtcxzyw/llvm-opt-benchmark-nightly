Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SelectObjectAttr?download=true
inline.NumInlined: 1570
inline.NumDeleted: 1062
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"class.mlir::TypeID" = type { ptr }
%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::tuple.417" = type { %"struct.std::_Tuple_impl.418" }
%"struct.std::_Tuple_impl.418" = type { %"struct.std::_Head_base.419" }
%"struct.std::_Head_base.419" = type { ptr }
%"class.std::tuple.420" = type { %"struct.std::_Tuple_impl.421" }
%"struct.std::_Tuple_impl.421" = type { %"struct.std::_Head_base.422" }
%"struct.std::_Head_base.422" = type { ptr }
%"class.std::unique_ptr.392" = type { %"struct.std::__uniq_ptr_data.393" }
%"struct.std::__uniq_ptr_data.393" = type { %"class.std::__uniq_ptr_impl.394" }
%"class.std::__uniq_ptr_impl.394" = type { %"class.std::tuple.395" }
%"class.std::tuple.395" = type { %"struct.std::_Tuple_impl.396" }
%"struct.std::_Tuple_impl.396" = type { %"struct.std::_Head_base.399" }
%"struct.std::_Head_base.399" = type { ptr }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.llvm::InsertPosition" = type { %"class.llvm::ilist_iterator_w_bits" }
%"class.llvm::ilist_iterator_w_bits" = type <{ ptr, i8, i8, [6 x i8] }>
%"class.mlir::gpu::ObjectAttr" = type { %"class.mlir::detail::StorageUserBase.127" }
%"class.mlir::detail::StorageUserBase.127" = type { %"class.mlir::Attribute" }
%"class.mlir::Attribute" = type { ptr }
%"class.mlir::StringAttr" = type { %"class.mlir::detail::StorageUserBase.241" }
%"class.mlir::detail::StorageUserBase.241" = type { %"class.mlir::Attribute" }
%"class.llvm::APInt" = type <{ %union.anon.296, i32, [4 x i8] }>
%union.anon.296 = type { i64 }
%"class.mlir::DictionaryAttr" = type { %"class.mlir::detail::StorageUserBase" }
%"class.mlir::detail::StorageUserBase" = type { %"class.mlir::Attribute" }
%"class.mlir::IntegerAttr" = type { %"class.mlir::detail::StorageUserBase.266" }
%"class.mlir::detail::StorageUserBase.266" = type { %"class.mlir::Attribute" }
%"class.llvm::IRBuilder" = type { %"class.llvm::IRBuilderBase", %"class.llvm::ConstantFolder", %"class.llvm::IRBuilderDefaultInserter" }
%"class.llvm::IRBuilderBase" = type { %"class.llvm::DebugLoc", ptr, %"class.llvm::ilist_iterator_w_bits", ptr, ptr, ptr, ptr, %"class.llvm::FastMathFlags", i8, i8, i8, %"class.llvm::ArrayRef" }
%"class.llvm::DebugLoc" = type { ptr }
%"class.llvm::FastMathFlags" = type { i32 }
%"class.llvm::ArrayRef" = type { ptr, i64 }
%"class.llvm::ConstantFolder" = type { %"class.llvm::IRBuilderFolder" }
%"class.llvm::IRBuilderFolder" = type { ptr }
%"class.llvm::IRBuilderDefaultInserter" = type { ptr }
%"class.mlir::InFlightDiagnostic" = type { ptr, %"class.std::optional" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base", [7 x i8] }
%"struct.std::_Optional_payload.base" = type { %"struct.std::_Optional_payload_base.base" }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage", i8 }>
%"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage" = type { %"class.mlir::Diagnostic" }
%"class.mlir::Diagnostic" = type { %"class.mlir::Location", i32, %"class.llvm::SmallVector.104", %"class.std::vector.109", %"class.std::vector.114", %"class.llvm::SmallVector.119" }
%"class.mlir::Location" = type { %"class.mlir::LocationAttr" }
%"class.mlir::LocationAttr" = type { %"class.mlir::Attribute" }
%"class.llvm::SmallVector.104" = type { %"class.llvm::SmallVectorImpl.105", %"struct.llvm::SmallVectorStorage.108" }
%"class.llvm::SmallVectorImpl.105" = type { %"class.llvm::SmallVectorTemplateBase.106" }
%"class.llvm::SmallVectorTemplateBase.106" = type { %"class.llvm::SmallVectorTemplateCommon.107" }
%"class.llvm::SmallVectorTemplateCommon.107" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.108" = type { [96 x i8] }
%"class.std::vector.109" = type { %"struct.std::_Vector_base.110" }
%"struct.std::_Vector_base.110" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.114" = type { %"struct.std::_Vector_base.115" }
%"struct.std::_Vector_base.115" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::SmallVector.119" = type { %"class.llvm::SmallVectorImpl.105" }
%"class.llvm::raw_string_ostream" = type { %"class.llvm::raw_ostream", ptr }
%"class.llvm::raw_ostream" = type { ptr, i32, ptr, ptr, ptr, i8, i32 }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.llvm::formatv_object" = type { %"class.llvm::formatv_object_base.base", %"class.std::tuple.386", %"struct.std::array" }
%"class.llvm::formatv_object_base.base" = type <{ %"class.llvm::StringRef", %"class.llvm::ArrayRef.385", i8 }>
%"class.llvm::ArrayRef.385" = type { ptr, i64 }
%"class.std::tuple.386" = type { %"struct.std::_Tuple_impl.387" }
%"struct.std::_Tuple_impl.387" = type { %"struct.std::_Tuple_impl.388", %"struct.std::_Head_base.390" }
%"struct.std::_Tuple_impl.388" = type { %"struct.std::_Head_base.389" }
%"struct.std::_Head_base.389" = type { %"class.llvm::support::detail::FormatFunctor" }
%"class.llvm::support::detail::FormatFunctor" = type { ptr }
%"struct.std::_Head_base.390" = type { %"class.llvm::support::detail::FormatFunctor" }
%"struct.std::array" = type { [2 x %"class.llvm::function_ref.391"] }
%"class.llvm::function_ref.391" = type { ptr, i64 }
%"class.mlir::DiagnosticArgument" = type { i32, %union.anon.243 }
%union.anon.243 = type { %"class.llvm::StringRef" }
%"class.mlir::gpu::LaunchFuncOp" = type { %"class.mlir::Op.332" }
%"class.mlir::Op.332" = type { %"class.mlir::OpState" }
%"class.mlir::OpState" = type { ptr }
%"class.llvm::SmallVector.354" = type { %"class.llvm::SmallVectorImpl.355", %"struct.llvm::SmallVectorStorage.358" }
%"class.llvm::SmallVectorImpl.355" = type { %"class.llvm::SmallVectorTemplateBase.356" }
%"class.llvm::SmallVectorTemplateBase.356" = type { %"class.llvm::SmallVectorTemplateCommon.357" }
%"class.llvm::SmallVectorTemplateCommon.357" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.358" = type { [48 x i8] }
%"class.mlir::ValueRange" = type { %"class.llvm::detail::indexed_accessor_range_base.359" }
%"class.llvm::detail::indexed_accessor_range_base.359" = type { %"class.llvm::PointerUnion", i64 }
%"class.llvm::PointerUnion" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers" }
%"class.llvm::pointer_union_detail::PointerUnionMembers" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.360" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.360" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.361" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.361" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.362" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.362" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.363" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.363" = type { %"struct.llvm::detail::PunnedPointer" }
%"struct.llvm::detail::PunnedPointer" = type { [8 x i8] }
%"class.llvm::SmallVector.364" = type { %"class.llvm::SmallVectorImpl.365", %"struct.llvm::SmallVectorStorage.368" }
%"class.llvm::SmallVectorImpl.365" = type { %"class.llvm::SmallVectorTemplateBase.366" }
%"class.llvm::SmallVectorTemplateBase.366" = type { %"class.llvm::SmallVectorTemplateCommon.367" }
%"class.llvm::SmallVectorTemplateCommon.367" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.368" = type { [48 x i8] }
%"struct.mlir::gpu::KernelDim3" = type { %"class.mlir::Value", %"class.mlir::Value", %"class.mlir::Value" }
%"class.mlir::Value" = type { ptr }
%"class.mlir::ArrayAttr" = type { %"class.mlir::detail::StorageUserBase.263" }
%"class.mlir::detail::StorageUserBase.263" = type { %"class.mlir::Attribute" }
%"class.mlir::gpu::SelectObjectAttr" = type { %"class.mlir::detail::StorageUserBase.264" }
%"class.mlir::detail::StorageUserBase.264" = type { %"class.mlir::Attribute" }
%"class.llvm::DenseMap" = type { ptr, ptr, i32, i32 }

$_ZN4mlir15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_E = comdat any

$_ZN4mlir10DiagnosticD2Ev = comdat any

$_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE = comdat any

$_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE = comdat any

$_ZN4mlir3gpu12LaunchFuncOp14hasClusterSizeEv = comdat any

$_ZN4llvm13IRBuilderBase18CreateConstGEP1_32EPNS_4TypeEPNS_5ValueEjRKNS_5TwineE = comdat any

$_ZN4llvm13IRBuilderBase18CreateConstGEP2_32EPNS_4TypeEPNS_5ValueEjjRKNS_5TwineENS_14GEPNoWrapFlagsE = comdat any

$_ZN4llvm17GetElementPtrInst6CreateEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineENS_14InsertPositionE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_ = comdat any

$_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRS3_EEEEvlS2_S3_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESF_IJOS8_EEEEERS9_DpOT_ = comdat any

$_ZZN4mlir15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_EEN9ExtensionD0Ev = comdat any

$_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5applyES6_N4llvm15MutableArrayRefIPNS_7DialectEEE = comdat any

$_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5cloneEv = comdat any

$_ZZN4mlir15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_EENK9Extension5applyES5_PS3_ = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZTVZN4mlir15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [78 x i8] c"Registering an interface for an attribute/type that is not itself registered.\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3gpu16SelectObjectAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.1 = private unnamed_addr constant [100 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::gpu::OffloadingLLVMTranslationAttrInterface]\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"operation must be a GPU binary\00", align 1
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3gpu8BinaryOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.6 = private unnamed_addr constant [46 x i8] c"the requested target object couldn't be found\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3gpu10ObjectAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"_binary\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"_load\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c".text.startup\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"_unload\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"mgpuModuleUnload\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_10StringAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@_ZTVN4llvm14ConstantFolderE = external unnamed_addr constant { [22 x ptr] }, align 8
@_ZTVN4llvm24IRBuilderDefaultInserterE = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.17 = private unnamed_addr constant [8 x i8] c"_module\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"mgpuModuleLoadJIT\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"mgpuModuleLoad\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"operation must be a GPU launch func Op.\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"operation must be a GPU binary.\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3gpu12LaunchFuncOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.22 = private unnamed_addr constant [27 x i8] c"Couldn't find the binary: \00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"{0}_{1}_name\00", align 1
@_ZTVN4llvm18raw_string_ostreamE = external unnamed_addr constant { [15 x ptr] }, align 8
@.str.24 = private unnamed_addr constant [22 x i8] c"mgpuModuleGetFunction\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"mgpuStreamCreate\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"mgpuLaunchKernelCooperative\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"mgpuLaunchClusterKernel\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"mgpuLaunchKernel\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"mgpuStreamSynchronize\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"mgpuStreamDestroy\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTVZN4mlir15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir20DialectExtensionBaseD2Ev, ptr @_ZZN4mlir15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_EEN9ExtensionD0Ev, ptr @_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5applyES6_N4llvm15MutableArrayRefIPNS_7DialectEEE, ptr @_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5cloneEv, ptr @_ZZN4mlir15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_EENK9Extension5applyES5_PS3_] }, comdat, align 8
@.str.33 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@_ZTVN4mlir20DialectExtensionBaseE = external unnamed_addr constant { [6 x ptr] }, align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir3gpu56registerOffloadingLLVMTranslationInterfaceExternalModelsERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_E(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull @"_ZZN4mlir3gpu56registerOffloadingLLVMTranslationInterfaceExternalModelsERNS_15DialectRegistryEEN3$_08__invokeEPNS_11MLIRContextEPNS0_10GPUDialectE") ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_E(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::tuple.417", align 8    ; 5 uses
  %3 = alloca %"class.std::tuple.420", align 8    ; 5 uses
  %4 = alloca %"class.mlir::TypeID", align 8      ; 8 uses
  %5 = alloca %"class.std::unique_ptr.392", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #17, !noalias !246 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !13, !noalias !246
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 3, ptr %i.e, align 4, !tbaa !14, !noalias !246
  store ptr @.str.33, ptr %i.c, align 8, !noalias !246
  %.sroa.4.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 3, ptr %.sroa.4.0..sroa_idx2.i.i.i, align 8, !noalias !246
  store i32 1, ptr %i.d, align 8, !tbaa !15, !noalias !246
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVZN4mlir15DialectRegistry12addExtensionIJNS_3gpu10GPUDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension, i64 16), ptr %i.a, align 8, !tbaa !17, !noalias !246
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %1, ptr %i.f, align 8, !tbaa !26, !noalias !246
  store ptr %i.a, ptr %5, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %1, ptr %4, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %4), !noalias !247 ; 2 uses
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
  %i.m = load i32, ptr %i.l, align 8, !tbaa !15   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i, i64 8
  store i32 %i.m, ptr %i.n, align 8, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %4, ptr %2, align 8, !tbaa !33, !alias.scope !250
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %5, ptr %3, align 8, !tbaa !35, !alias.scope !251
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.p = load i32, ptr %i.o, align 4, !tbaa !14
  %.not.i.i.i.i = icmp ult i32 %i.m, %i.p
  br i1 %.not.i.i.i.i, label %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread6, label %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit, !prof !36

_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread6: ; preds = %bb.b
  %i.q = zext i32 %i.m to i64
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.q ; 2 uses
  %i.t = load i64, ptr %4, align 8, !tbaa !37
  store i64 %i.t, ptr %i.s, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.k, ptr %i.u, align 8, !tbaa !38
  %i.v = add nuw i32 %i.m, 1
  store i32 %i.v, ptr %i.l, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_3gpu10GPUDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit

_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit: ; preds = %bb.b
  %i.w = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESF_IJOS8_EEEEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  %.pre.pre = load ptr, ptr %5, align 8, !tbaa !38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i = icmp eq ptr %.pre.pre, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_3gpu10GPUDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i: ; preds = %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit
  %i.x = phi ptr [ %i.a, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread ], [ %.pre.pre, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit ] ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(72) %i.x) #18, !inline_history !245
  br label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_3gpu10GPUDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit

_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_3gpu10GPUDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit: ; preds = %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread6, %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit
  ret i1 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN4mlir3gpu56registerOffloadingLLVMTranslationInterfaceExternalModelsERNS_15DialectRegistryEEN3$_08__invokeEPNS_11MLIRContextEPNS0_10GPUDialectE"(ptr noundef %0, ptr nofree readnone captures(none) %1) #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4mlir17AbstractAttribute13lookupMutableENS_6TypeIDEPNS_11MLIRContextE(ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_3gpu16SelectObjectAttrEvE2idE, ptr noundef nonnull align 8 dereferenceable(8) %0) #18 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext true) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !263, !nonnull !43, !align !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.d = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.d, label %_ZN4mlir6detail9InterfaceINS_3gpu38OffloadingLLVMTranslationAttrInterfaceENS_9AttributeENS2_6detail53OffloadingLLVMTranslationAttrInterfaceInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !264

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_3gpu38OffloadingLLVMTranslationAttrInterfaceENS_9AttributeENS2_6detail53OffloadingLLVMTranslationAttrInterfaceInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.1, i64 49), i64 49) #18
  store ptr %i.g, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6detail9InterfaceINS_3gpu38OffloadingLLVMTranslationAttrInterfaceENS_9AttributeENS2_6detail53OffloadingLLVMTranslationAttrInterfaceInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_3gpu38OffloadingLLVMTranslationAttrInterfaceENS_9AttributeENS2_6detail53OffloadingLLVMTranslationAttrInterfaceInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !37
  tail call void @_ZN4mlir24dialect_extension_detail42handleAdditionOfUndefinedPromisedInterfaceERNS_7DialectENS_6TypeIDES3_(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr %.sroa.0.0.copyload.i.i.i, ptr %.sroa.01.0.copyload.i.i.i.i.i) #18
  %calloc.i.i.i.i = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 3 uses
  store ptr @_ZN4mlir3gpu6detail53OffloadingLLVMTranslationAttrInterfaceInterfaceTraits13FallbackModelIN12_GLOBAL__N_120SelectObjectAttrImplEE11embedBinaryEPKNS2_7ConceptENS_9AttributeEPNS_9OperationERN4llvm13IRBuilderBaseERNS_4LLVM17ModuleTranslationE, ptr %calloc.i.i.i.i, align 8, !tbaa !266
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i, i64 8
  store ptr @_ZN4mlir3gpu6detail53OffloadingLLVMTranslationAttrInterfaceInterfaceTraits13FallbackModelIN12_GLOBAL__N_120SelectObjectAttrImplEE12launchKernelEPKNS2_7ConceptENS_9AttributeEPNS_9OperationESC_RN4llvm13IRBuilderBaseERNS_4LLVM17ModuleTranslationE, ptr %i.h, align 8, !tbaa !267
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %"_ZZN4mlir3gpu56registerOffloadingLLVMTranslationInterfaceExternalModelsERNS_15DialectRegistryEENK3$_0clEPNS_11MLIRContextEPNS0_10GPUDialectE.exit", !prof !264

bb.f:                                             ; preds = %_ZN4mlir6detail9InterfaceINS_3gpu38OffloadingLLVMTranslationAttrInterfaceENS_9AttributeENS2_6detail53OffloadingLLVMTranslationAttrInterfaceInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZZN4mlir3gpu56registerOffloadingLLVMTranslationInterfaceExternalModelsERNS_15DialectRegistryEENK3$_0clEPNS_11MLIRContextEPNS0_10GPUDialectE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.1, i64 49), i64 49) #18
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id) #18
  br label %"_ZZN4mlir3gpu56registerOffloadingLLVMTranslationInterfaceExternalModelsERNS_15DialectRegistryEENK3$_0clEPNS_11MLIRContextEPNS0_10GPUDialectE.exit"

"_ZZN4mlir3gpu56registerOffloadingLLVMTranslationInterfaceExternalModelsERNS_15DialectRegistryEENK3$_0clEPNS_11MLIRContextEPNS0_10GPUDialectE.exit": ; preds = %_ZN4mlir6detail9InterfaceINS_3gpu38OffloadingLLVMTranslationAttrInterfaceENS_9AttributeENS2_6detail53OffloadingLLVMTranslationAttrInterfaceInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, %bb.f, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3gpu38OffloadingLLVMTranslationAttrInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !37
  tail call void @_ZN4mlir6detail12InterfaceMap6insertENS_6TypeIDEPv(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i, ptr noundef nonnull %calloc.i.i.i.i) #18
  ret void
}

declare noundef ptr @_ZN4mlir17AbstractAttribute13lookupMutableENS_6TypeIDEPNS_11MLIRContextE(ptr, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4mlir24dialect_extension_detail42handleAdditionOfUndefinedPromisedInterfaceERNS_7DialectENS_6TypeIDES3_(ptr noundef nonnull align 8 dereferenceable(96), ptr, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #5

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @_ZN4mlir6detail12InterfaceMap6insertENS_6TypeIDEPv(ptr noundef nonnull align 8 dereferenceable(64), ptr, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZN4mlir3gpu6detail53OffloadingLLVMTranslationAttrInterfaceInterfaceTraits13FallbackModelIN12_GLOBAL__N_120SelectObjectAttrImplEE11embedBinaryEPKNS2_7ConceptENS_9AttributeEPNS_9OperationERN4llvm13IRBuilderBaseERNS_4LLVM17ModuleTranslationE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(592) %4) #2 align 2 {
bb.a:
  %5 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %6 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %7 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.a = alloca [3 x ptr], align 8                ; 6 uses
  %i.b = alloca [3 x ptr], align 8                ; 6 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.c = alloca [2 x ptr], align 8                ; 5 uses
  %i.d = alloca [2 x ptr], align 8                ; 5 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %13 = alloca %"class.mlir::gpu::ObjectAttr", align 8 ; 7 uses
  %14 = alloca %"class.mlir::StringAttr", align 8 ; 4 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %16 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %17 = alloca %"class.mlir::DictionaryAttr", align 8 ; 5 uses
  %18 = alloca %"class.mlir::StringAttr", align 8 ; 4 uses
  %19 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  %20 = alloca %"class.llvm::IRBuilder", align 8  ; 24 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %28 = alloca %"class.mlir::StringAttr", align 8 ; 4 uses
  %29 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 7 uses
  %30 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_120SelectObjectAttrImpl11embedBinaryEN4mlir9AttributeEPNS1_9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.j = icmp eq ptr %i.i, @_ZN4mlir6detail14TypeIDResolverINS_3gpu8BinaryOpEvE2idE
  %31 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_3gpu8BinaryOpEvE2idE
  %spec.select.i.i.i.i.i = and i1 %31, %i.j
  br i1 %spec.select.i.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  %i.k = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %30, i64 33
  store i8 1, ptr %i.l, align 1, !tbaa !50
  store ptr @.str.5, ptr %30, align 8, !tbaa !51
  store i8 3, ptr %i.k, align 8, !tbaa !52
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %29, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(34) %30) #18
  %i.m = load ptr, ptr %29, align 8, !tbaa !61
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %29) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %29, i64 200 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !62, !range !63, !noundef !43
  %i.p = trunc nuw i8 %i.o to i1
  store i8 0, ptr %i.n, align 8, !tbaa !62
  br i1 %i.p, label %bb.f, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %29, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.q) #18
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i:          ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  br label %_ZNK12_GLOBAL__N_120SelectObjectAttrImpl11embedBinaryEN4mlir9AttributeEPNS1_9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.exit

bb.g:                                             ; preds = %bb.b
  %i.r = tail call fastcc ptr @_ZNK12_GLOBAL__N_120SelectObjectAttrImpl17getSelectedObjectEN4mlir3gpu8BinaryOpE(ptr nonnull %2) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZNK12_GLOBAL__N_120SelectObjectAttrImpl11embedBinaryEN4mlir9AttributeEPNS1_9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  %i.t = tail call ptr @_ZN4mlir11SymbolTable13getSymbolNameEPNS_9OperationE(ptr noundef nonnull %2) #18
  store ptr %i.t, ptr %28, align 8
  %i.u = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %28) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  %i.v = extractvalue { ptr, i64 } %i.u, 0        ; 4 uses
  %i.w = extractvalue { ptr, i64 } %i.u, 1        ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !65   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr %i.r, ptr %13, align 8
  %i.z = call noundef i32 @_ZNK4mlir3gpu10ObjectAttr9getFormatEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #18
  %i.aa = icmp eq i32 %i.z, 2                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.ab = call ptr @_ZNK4mlir3gpu10ObjectAttr9getObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #18
  store ptr %i.ab, ptr %14, align 8
  %i.ac = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #18 ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !171, !nonnull !43, !align !44
  %i.ag = call noundef ptr @_ZN4llvm17ConstantDataArray9getStringERNS_11LLVMContextENS_9StringRefEbb(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr %i.ad, i64 %i.ae, i1 noundef zeroext %i.aa, i1 noundef zeroext false) #18 ; 2 uses
  %i.ah = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 96, i32 1) #18 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 5, ptr %i.ak, align 8, !tbaa !52, !alias.scope !283
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 3, ptr %i.al, align 1, !tbaa !50, !alias.scope !283
  store ptr %i.v, ptr %15, align 8, !tbaa !51, !alias.scope !283
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.w, ptr %i.am, align 8, !tbaa !51, !alias.scope !283
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @.str.7, ptr %i.an, align 8, !tbaa !51, !alias.scope !283
  call void @_ZN4llvm14GlobalVariableC1ERNS_6ModuleEPNS_4TypeEbNS_11GlobalValue12LinkageTypesEPNS_8ConstantERKNS_5TwineEPS0_NS5_15ThreadLocalModeESt8optionalIjEb(ptr noundef nonnull align 8 dereferenceable(89) %i.ah, ptr noundef nonnull align 8 dereferenceable(1288) %i.y, ptr noundef %i.aj, i1 noundef zeroext true, i32 noundef 7, ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(34) %15, ptr noundef null, i32 noundef 0, i64 0, i1 noundef zeroext false) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @_ZN4llvm12GlobalObject12setAlignmentENS_10MaybeAlignE(ptr noundef nonnull align 8 dereferenceable(89) %i.ah, i16 259) #18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = and i32 %i.ap, -193
  store i32 %i.aq, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  store i32 32, ptr %i.ar, align 8, !tbaa !285, !alias.scope !286
  store i64 0, ptr %16, align 8, !tbaa !51, !alias.scope !286
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.as = call ptr @_ZNK4mlir3gpu10ObjectAttr13getPropertiesEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #18 ; 2 uses
  store ptr %i.as, ptr %17, align 8
  %.not.i9.i = icmp eq ptr %i.as, null
  br i1 %.not.i9.i, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  %i.at = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr nonnull @.str.15, i64 7) #18 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm16dyn_cast_or_nullIN4mlir10StringAttrENS1_9AttributeEEEDaRKT0_.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !179
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !37
  %i.aw = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10StringAttrEvE2idE
  br i1 %i.aw, label %bb.k, label %_ZN4llvm16dyn_cast_or_nullIN4mlir10StringAttrENS1_9AttributeEEEDaRKT0_.exit.thread.i.i

bb.k:                                             ; preds = %bb.j
  store ptr %i.at, ptr %18, align 8
  %i.ax = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #18 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0
  %i.az = extractvalue { ptr, i64 } %i.ax, 1
  call void @_ZN4llvm12GlobalObject10setSectionENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(60) %i.ah, ptr %i.ay, i64 %i.az) #18
  br label %_ZN4llvm16dyn_cast_or_nullIN4mlir10StringAttrENS1_9AttributeEEEDaRKT0_.exit.thread.i.i

_ZN4llvm16dyn_cast_or_nullIN4mlir10StringAttrENS1_9AttributeEEEDaRKT0_.exit.thread.i.i: ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  %i.ba = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr nonnull @.str.8, i64 1) #18 ; 3 uses
  %.not.i.i48.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i48.i.i, label %_ZN4llvm5APIntaSERKS0_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN4mlir10StringAttrENS1_9AttributeEEEDaRKT0_.exit.thread.i.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !179
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i49.i.i = load ptr, ptr %i.bc, align 8, !tbaa !37
  %i.bd = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i49.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE
  br i1 %i.bd, label %bb.m, label %_ZN4llvm5APIntaSERKS0_.exit.i.i

bb.m:                                             ; preds = %bb.l
  store ptr %i.ba, ptr %19, align 8
  %i.be = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #18 ; 3 uses
  %i.bf = load i32, ptr %i.ar, align 8, !tbaa !285
  %i.bg = icmp ult i32 %i.bf, 65
  br i1 %i.bg, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !285 ; 2 uses
  %i.bj = icmp ult i32 %i.bi, 65
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !51
  store i64 %i.bk, ptr %16, align 8, !tbaa !51
  store i32 %i.bi, ptr %i.ar, align 8, !tbaa !285
  br label %_ZN4llvm5APIntaSERKS0_.exit.i.i

bb.p:                                             ; preds = %bb.n, %bb.m
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(12) %i.be) #18
  br label %_ZN4llvm5APIntaSERKS0_.exit.i.i

_ZN4llvm5APIntaSERKS0_.exit.i.i:                  ; preds = %bb.p, %bb.o, %bb.l, %_ZN4llvm16dyn_cast_or_nullIN4mlir10StringAttrENS1_9AttributeEEEDaRKT0_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.q

bb.q:                                             ; preds = %_ZN4llvm5APIntaSERKS0_.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.bl = load ptr, ptr %i.y, align 8, !tbaa !171, !nonnull !43, !align !44 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %20, i64 88 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %20, i64 96 ; 3 uses
  store ptr null, ptr %20, align 8, !tbaa !287
  %i.bo = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 6 uses
  store ptr %i.bl, ptr %i.bo, align 8, !tbaa !288
  %i.bp = getelementptr inbounds nuw i8, ptr %20, i64 40
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !289
  %i.bq = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 5 uses
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !290
  %i.br = getelementptr inbounds nuw i8, ptr %20, i64 56
  store ptr null, ptr %i.br, align 8, !tbaa !291
  %i.bs = getelementptr inbounds nuw i8, ptr %20, i64 64
  store i32 0, ptr %i.bs, align 8, !tbaa !194
  %i.bt = getelementptr inbounds nuw i8, ptr %20, i64 68
  store i8 0, ptr %i.bt, align 4, !tbaa !195
  %i.bu = getelementptr inbounds nuw i8, ptr %20, i64 69
  store i8 2, ptr %i.bu, align 1, !tbaa !292
  %i.bv = getelementptr inbounds nuw i8, ptr %20, i64 70
  store i8 7, ptr %i.bv, align 2, !tbaa !293
  %i.bw = getelementptr inbounds nuw i8, ptr %20, i64 72
  %i.bx = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.bx, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.bm, align 8, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.bn, align 8, !tbaa !17
  %i.by = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.bl) #18 ; 2 uses
  %i.bz = load ptr, ptr %i.bo, align 8, !tbaa !196, !nonnull !43, !align !44
  %i.ca = call noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.bz) #18 ; 3 uses
  %i.cb = load ptr, ptr %i.bo, align 8, !tbaa !196, !nonnull !43, !align !44
  %i.cc = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i32 noundef 0) #18 ; 9 uses
  %i.cd = load ptr, ptr %i.bo, align 8, !tbaa !196, !nonnull !43, !align !44
  %i.ce = call noundef ptr @_ZN4llvm4Type9getVoidTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.cd) #18 ; 3 uses
  %i.cf = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 96, i32 1) #18 ; 3 uses
  %i.cg = call noundef ptr @_ZN4llvm19ConstantPointerNull3getEPNS_11PointerTypeE(ptr noundef %i.cc) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  %i.ch = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i8 5, ptr %i.ch, align 8, !tbaa !52, !alias.scope !294
  %i.ci = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 3, ptr %i.ci, align 1, !tbaa !50, !alias.scope !294
  store ptr %i.v, ptr %21, align 8, !tbaa !51, !alias.scope !294
  %i.cj = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.w, ptr %i.cj, align 8, !tbaa !51, !alias.scope !294
  %i.ck = getelementptr inbounds nuw i8, ptr %21, i64 16
end_hunk_0
begin_hunk_1_@_ZN4mlir3gpu6detail53OffloadingLLVMTranslationAttrInterfaceInterfaceTraits13FallbackModelIN12_GLOBAL__N_120SelectObjectAttrImplEE11embedBinaryEPKNS2_7ConceptENS_9AttributeEPNS_9OperationERN4llvm13IRBuilderBaseERNS_4LLVM17ModuleTranslationE:bb.a
  call void @_ZN4llvm10ReturnInstC1ERNS_11LLVMContextEPNS_5ValueENS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.eh, ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef null, i32 0, ptr null, i64 0) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i16 257, ptr %i.ei, align 8
  %i.ej = load ptr, ptr %i.bq, align 8, !tbaa !201, !nonnull !43, !align !44 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.cw, align 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i52.i.i, align 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !17
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef nonnull %i.eh, ptr noundef nonnull align 8 dereferenceable(34) %10, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i) #18, !inline_history !279
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %20, ptr noundef nonnull %i.eh) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZN4llvm19appendToGlobalCtorsERNS_6ModuleEPNS_8FunctionEiPNS_8ConstantE(ptr noundef nonnull align 8 dereferenceable(1288) %i.y, ptr noundef nonnull %i.cq, i32 noundef 123, ptr noundef null) #18
  %i.en = call noundef ptr @_ZN4llvm12FunctionType3getEPNS_4TypeEb(ptr noundef %i.ce, i1 noundef zeroext false) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  %i.eo = getelementptr inbounds nuw i8, ptr %24, i64 32
  store i8 5, ptr %i.eo, align 8, !tbaa !52, !alias.scope !296
  %i.ep = getelementptr inbounds nuw i8, ptr %24, i64 33
  store i8 3, ptr %i.ep, align 1, !tbaa !50, !alias.scope !296
  store ptr %i.v, ptr %24, align 8, !tbaa !51, !alias.scope !296
  %i.eq = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %i.w, ptr %i.eq, align 8, !tbaa !51, !alias.scope !296
  %i.er = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr @.str.12, ptr %i.er, align 8, !tbaa !51, !alias.scope !296
  %i.es = call noundef ptr @_ZN4llvm8Function6CreateEPNS_12FunctionTypeENS_11GlobalValue12LinkageTypesERKNS_5TwineERNS_6ModuleE(ptr noundef %i.en, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(34) %24, ptr noundef nonnull align 8 dereferenceable(1288) %i.y) #18 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @_ZN4llvm12GlobalObject10setSectionENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(60) %i.es, ptr nonnull @.str.10, i64 13) #18
  %i.et = load ptr, ptr %i.y, align 8, !tbaa !171, !nonnull !43, !align !44
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  %i.eu = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %25, i64 33
  store i8 1, ptr %i.ev, align 1, !tbaa !50
  store ptr @.str.11, ptr %25, align 8, !tbaa !51
  store i8 3, ptr %i.eu, align 8, !tbaa !52
  %i.ew = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #17 ; 3 uses
  call void @_ZN4llvm10BasicBlockC1ERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull align 8 dereferenceable(34) %25, ptr noundef nonnull %i.es, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  store ptr %i.ew, ptr %i.bx, align 8, !tbaa !197
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  store ptr %i.ex, ptr %i.cw, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i52.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store ptr %i.cc, ptr %i.e, align 8, !tbaa !198
  %i.ey = call noundef ptr @_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb(ptr noundef %i.ce, ptr nonnull %i.e, i64 1, i1 noundef zeroext false) #18
  %i.ez = call { ptr, ptr } @_ZN4llvm6Module19getOrInsertFunctionENS_9StringRefEPNS_12FunctionTypeE(ptr noundef nonnull align 8 dereferenceable(1288) %i.y, ptr nonnull @.str.13, i64 16, ptr noundef %i.ey) #18 ; 2 uses
  %i.fa = extractvalue { ptr, ptr } %i.ez, 0
  %i.fb = extractvalue { ptr, ptr } %i.ez, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18
  %i.fc = getelementptr inbounds nuw i8, ptr %26, i64 32
  store i16 257, ptr %i.fc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.fd = load ptr, ptr %i.bx, align 8, !tbaa !197
  %i.fe = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.fd) #18
  %i.ff = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.fe, ptr noundef %i.cc) #18
  %i.fg = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 1) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.fh, align 8, !tbaa !52
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.fi, align 1, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @_ZN4llvm8LoadInstC1EPNS_4TypeEPNS_5ValueERKNS_5TwineEbNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.fg, ptr noundef %i.cc, ptr noundef nonnull %i.cf, ptr noundef nonnull align 8 dereferenceable(34) %5, i1 noundef zeroext false, i8 %i.ff, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %6) #18
  %i.fj = load ptr, ptr %i.bq, align 8, !tbaa !201, !nonnull !43, !align !44 ; 2 uses
  %.sroa.0.0.copyload.i.i60.i.i = load ptr, ptr %i.cw, align 8
  %.sroa.2.0.copyload.i.i62.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i52.i.i, align 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !17
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, ptr noundef nonnull %i.fg, ptr noundef nonnull align 8 dereferenceable(34) %26, ptr %.sroa.0.0.copyload.i.i60.i.i, i64 %.sroa.2.0.copyload.i.i62.i.i) #18, !inline_history !282
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %20, ptr noundef nonnull %i.fg) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store ptr %i.fg, ptr %i.f, align 8, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  %i.fn = getelementptr inbounds nuw i8, ptr %27, i64 32
  store i16 257, ptr %i.fn, align 8
  %i.fo = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %20, ptr noundef %i.fa, ptr noundef %i.fb, ptr nonnull %i.f, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %27, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  %i.fp = load ptr, ptr %i.bo, align 8, !tbaa !196, !nonnull !43, !align !44
  %i.fq = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 0) #18 ; 3 uses
  call void @_ZN4llvm10ReturnInstC1ERNS_11LLVMContextEPNS_5ValueENS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.fq, ptr noundef nonnull align 8 dereferenceable(8) %i.fp, ptr noundef null, i32 0, ptr null, i64 0) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.fr = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i16 257, ptr %i.fr, align 8
  %i.fs = load ptr, ptr %i.bq, align 8, !tbaa !201, !nonnull !43, !align !44 ; 2 uses
  %.sroa.0.0.copyload.i.i54.i.i = load ptr, ptr %i.cw, align 8
  %.sroa.2.0.copyload.i.i56.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i52.i.i, align 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !17
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, ptr noundef nonnull %i.fq, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr %.sroa.0.0.copyload.i.i54.i.i, i64 %.sroa.2.0.copyload.i.i56.i.i) #18, !inline_history !279
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %20, ptr noundef nonnull %i.fq) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @_ZN4llvm19appendToGlobalDtorsERNS_6ModuleEPNS_8FunctionEiPNS_8ConstantE(ptr noundef nonnull align 8 dereferenceable(1288) %i.y, ptr noundef nonnull %i.es, i32 noundef 123, ptr noundef null) #18
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bn) #18
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bm) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %i.fw = load i32, ptr %i.ar, align 8, !tbaa !285
  %i.fx = icmp ugt i32 %i.fw, 64
  br i1 %i.fx, label %bb.t, label %_ZN4llvmL15embedBinaryImplENS_9StringRefEN4mlir3gpu10ObjectAttrERNS_6ModuleE.exit.i

bb.t:                                             ; preds = %"_ZZN4llvmL15embedBinaryImplENS_9StringRefEN4mlir3gpu10ObjectAttrERNS_6ModuleEENK3$_0clEv.exit.i.i"
  %i.fy = load ptr, ptr %16, align 8, !tbaa !51   ; 2 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %_ZN4llvmL15embedBinaryImplENS_9StringRefEN4mlir3gpu10ObjectAttrERNS_6ModuleE.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.fy) #20
  br label %_ZN4llvmL15embedBinaryImplENS_9StringRefEN4mlir3gpu10ObjectAttrERNS_6ModuleE.exit.i

_ZN4llvmL15embedBinaryImplENS_9StringRefEN4mlir3gpu10ObjectAttrERNS_6ModuleE.exit.i: ; preds = %bb.u, %bb.t, %"_ZZN4llvmL15embedBinaryImplENS_9StringRefEN4mlir3gpu10ObjectAttrERNS_6ModuleEENK3$_0clEv.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %_ZNK12_GLOBAL__N_120SelectObjectAttrImpl11embedBinaryEN4mlir9AttributeEPNS1_9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.exit

_ZNK12_GLOBAL__N_120SelectObjectAttrImpl11embedBinaryEN4mlir9AttributeEPNS1_9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.exit: ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i, %bb.g, %_ZN4llvmL15embedBinaryImplENS_9StringRefEN4mlir3gpu10ObjectAttrERNS_6ModuleE.exit.i
  %.sroa.08.2.i = phi i8 [ 0, %bb.a ], [ 0, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i ], [ 1, %_ZN4llvmL15embedBinaryImplENS_9StringRefEN4mlir3gpu10ObjectAttrERNS_6ModuleE.exit.i ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  ret i8 %.sroa.08.2.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal i8 @_ZN4mlir3gpu6detail53OffloadingLLVMTranslationAttrInterfaceInterfaceTraits13FallbackModelIN12_GLOBAL__N_120SelectObjectAttrImplEE12launchKernelEPKNS2_7ConceptENS_9AttributeEPNS_9OperationESC_RN4llvm13IRBuilderBaseERNS_4LLVM17ModuleTranslationE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(592) %5) #2 align 2 {
bb.a:
  %6 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %7 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %i.c = alloca [1 x ptr], align 8                ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.d = alloca [1 x ptr], align 8                ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.e = alloca [12 x ptr], align 8               ; 15 uses
  %i.f = alloca [14 x ptr], align 8               ; 17 uses
  %i.g = alloca [14 x ptr], align 8               ; 17 uses
  %i.h = alloca [2 x ptr], align 8                ; 5 uses
  %10 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %11 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %12 = alloca %"class.llvm::StringRef", align 8  ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.llvm::formatv_object", align 8 ; 14 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %16 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %17 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %19 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %22 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %24 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %25 = alloca %"class.mlir::gpu::LaunchFuncOp", align 8 ; 5 uses
  %26 = alloca %"class.llvm::SmallVector.354", align 8 ; 9 uses
  %27 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %28 = alloca %"class.llvm::SmallVector.364", align 8 ; 9 uses
  %29 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %30 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %31 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %32 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %33 = alloca %"class.mlir::gpu::LaunchFuncOp", align 8 ; 19 uses
  %34 = alloca %"struct.mlir::gpu::KernelDim3", align 8 ; 6 uses
  %35 = alloca %"struct.mlir::gpu::KernelDim3", align 8 ; 6 uses
  %36 = alloca %"class.mlir::StringAttr", align 8 ; 4 uses
  %37 = alloca %"class.llvm::Twine", align 8      ; 9 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %39 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %40 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %41 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %42 = alloca %"class.mlir::StringAttr", align 8 ; 4 uses
  %i.i = alloca [2 x ptr], align 8                ; 5 uses
  %43 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %44 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %45 = alloca %"struct.mlir::gpu::KernelDim3", align 8 ; 6 uses
  %i.j = alloca [14 x ptr], align 8               ; 17 uses
  %46 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %47 = alloca %"struct.mlir::gpu::KernelDim3", align 8 ; 6 uses
  %i.k = alloca [14 x ptr], align 8               ; 17 uses
  %48 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.l = alloca [12 x ptr], align 8               ; 15 uses
  %49 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %50 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 7 uses
  %51 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %52 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 7 uses
  %53 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50)
  call void @llvm.lifetime.start.p0(ptr nonnull %52)
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_120SelectObjectAttrImpl12launchKernelEN4mlir9AttributeEPNS1_9OperationES4_RN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.p = icmp eq ptr %i.o, @_ZN4mlir6detail14TypeIDResolverINS_3gpu12LaunchFuncOpEvE2idE
  %54 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_3gpu12LaunchFuncOpEvE2idE
  %spec.select.i.i.i.i.i = and i1 %54, %i.p
  br i1 %spec.select.i.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #18
  %i.q = getelementptr inbounds nuw i8, ptr %51, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %51, i64 33
  store i8 1, ptr %i.r, align 1, !tbaa !50
  store ptr @.str.20, ptr %51, align 8, !tbaa !51
  store i8 3, ptr %i.q, align 8, !tbaa !52
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %50, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(34) %51) #18
  %i.s = load ptr, ptr %50, align 8, !tbaa !61
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %50) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %50, i64 200 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !62, !range !63, !noundef !43
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 8, !tbaa !62
  br i1 %i.v, label %bb.f, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %50, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.w) #18
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i:          ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #18
  br label %_ZNK12_GLOBAL__N_120SelectObjectAttrImpl12launchKernelEN4mlir9AttributeEPNS1_9OperationES4_RN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.exit

bb.g:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i13.i = load ptr, ptr %i.x, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i13.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.aa = icmp ne ptr %i.z, @_ZN4mlir6detail14TypeIDResolverINS_3gpu8BinaryOpEvE2idE
  %55 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_3gpu8BinaryOpEvE2idE
  %spec.select.i.i.i.i14.not.i = or i1 %55, %i.aa
  %.not4748.i = icmp eq ptr %3, null
  %.not47.i = or i1 %.not4748.i, %spec.select.i.i.i.i14.not.i
  br i1 %.not47.i, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #18
  %i.ab = getelementptr inbounds nuw i8, ptr %53, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %53, i64 33
  store i8 1, ptr %i.ac, align 1, !tbaa !50
  store ptr @.str.21, ptr %53, align 8, !tbaa !51
  store i8 3, ptr %i.ab, align 8, !tbaa !52
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %52, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(34) %53) #18
  %i.ad = load ptr, ptr %52, align 8, !tbaa !61
  %.not.i15.i = icmp eq ptr %i.ad, null
  br i1 %.not.i15.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %52) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %52, i64 200 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !62, !range !63, !noundef !43
  %i.ag = trunc nuw i8 %i.af to i1
  store i8 0, ptr %i.ae, align 8, !tbaa !62
  br i1 %i.ag, label %bb.k, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit16.i

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %52, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ah) #18
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit16.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit16.i:        ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #18
  br label %_ZNK12_GLOBAL__N_120SelectObjectAttrImpl12launchKernelEN4mlir9AttributeEPNS1_9OperationES4_RN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.exit

bb.l:                                             ; preds = %bb.g
  %i.ai = tail call fastcc ptr @_ZNK12_GLOBAL__N_120SelectObjectAttrImpl17getSelectedObjectEN4mlir3gpu8BinaryOpE(ptr nonnull %3)
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZNK12_GLOBAL__N_120SelectObjectAttrImpl12launchKernelEN4mlir9AttributeEPNS1_9OperationES4_RN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !65 ; 11 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !196, !nonnull !43, !align !44
  %i.ao = tail call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.an) #18 ; 4 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !196, !nonnull !43, !align !44
  %i.aq = tail call noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #18 ; 2 uses
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !196, !nonnull !43, !align !44
  %i.as = tail call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i32 noundef 0) #18 ; 24 uses
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !196, !nonnull !43, !align !44
  %i.au = tail call noundef ptr @_ZN4llvm4Type9getVoidTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.at) #18 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 296
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !196, !nonnull !43, !align !44
  %i.ax = tail call noundef ptr @_ZNK4llvm10DataLayout13getIntPtrTypeERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(912) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i32 noundef 0) #18 ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  store ptr %2, ptr %33, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #18
  call void @_ZN4mlir3gpu12LaunchFuncOp24getGridSizeOperandValuesEv(ptr dead_on_unwind nonnull writable sret(%"struct.mlir::gpu::KernelDim3") align 8 %34, ptr noundef nonnull align 8 dereferenceable(8) %33) #18
  %.sroa.077.0.copyload.i.i = load ptr, ptr %34, align 8, !tbaa !203 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 232 ; 6 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !355, !noalias !356 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 240 ; 6 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !357, !noalias !356 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 252 ; 6 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !358, !noalias !356 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %"_ZZN4llvm12_GLOBAL__N_112LaunchKernel18createKernelLaunchEN4mlir3gpu12LaunchFuncOpENS3_10ObjectAttrEENK3$_1clENS2_5ValueE.exit112.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = add i32 %i.bd, -1                       ; 6 uses
  %i.bg = ptrtoint ptr %.sroa.077.0.copyload.i.i to i64
  %i.bh = xor i64 %i.bg, -49064778989728563       ; 2 uses
  %i.bi = lshr i64 %i.bh, 30
  %i.bj = xor i64 %i.bi, %i.bh
  %i.bk = mul i64 %i.bj, -4658895280553007687     ; 2 uses
  %i.bl = lshr i64 %i.bk, 27
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = mul i64 %i.bm, -7723592293110705685     ; 2 uses
  %i.bo = lshr i64 %i.bn, 31
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = trunc i64 %i.bp to i32
  %i.br = and i32 %i.bf, %i.bq                    ; 3 uses
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 5
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !204
  %i.bw = and i32 %i.br, 31
  %i.bx = lshr i32 %i.bv, %i.bw
  %i.by = trunc i32 %i.bx to i1
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.i, label %"_ZZN4llvm12_GLOBAL__N_112LaunchKernel18createKernelLaunchEN4mlir3gpu12LaunchFuncOpENS3_10ObjectAttrEENK3$_1clENS2_5ValueE.exit.thread24.i.i", !prof !205

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.n, %bb.o
  %i.bz = phi i64 [ %i.ce, %bb.o ], [ %i.bs, %bb.n ]
  %.01419.i.i.i.i.i.i = phi i32 [ %i.cd, %bb.o ], [ %i.br, %bb.n ]
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.bz ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !tbaa !203
  %i.cb = icmp eq ptr %.sroa.077.0.copyload.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.cb, label %bb.p, label %bb.o, !prof !36

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cc = add nuw i32 %.01419.i.i.i.i.i.i, 1
  %i.cd = and i32 %i.cc, %i.bf                    ; 3 uses
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = lshr i64 %i.ce, 5
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !204
  %i.ci = and i32 %i.cd, 31
  %i.cj = lshr i32 %i.ch, %i.ci
  %i.ck = trunc i32 %i.cj to i1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i.i, label %"_ZZN4llvm12_GLOBAL__N_112LaunchKernel18createKernelLaunchEN4mlir3gpu12LaunchFuncOpENS3_10ObjectAttrEENK3$_1clENS2_5ValueE.exit.thread24.i.i", !prof !206

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !200
  br label %"_ZZN4llvm12_GLOBAL__N_112LaunchKernel18createKernelLaunchEN4mlir3gpu12LaunchFuncOpENS3_10ObjectAttrEENK3$_1clENS2_5ValueE.exit.thread24.i.i"

"_ZZN4llvm12_GLOBAL__N_112LaunchKernel18createKernelLaunchEN4mlir3gpu12LaunchFuncOpENS3_10ObjectAttrEENK3$_1clENS2_5ValueE.exit.thread24.i.i": ; preds = %bb.o, %bb.p, %bb.n
  %i.cn = phi ptr [ null, %bb.n ], [ %i.cm, %bb.p ], [ null, %bb.o ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %34, i64 8
  %.sroa.073.0.copyload.i.i = load ptr, ptr %i.co, align 8, !tbaa !203 ; 2 uses
  %i.cp = ptrtoint ptr %.sroa.073.0.copyload.i.i to i64
  %i.cq = xor i64 %i.cp, -49064778989728563       ; 2 uses
  %i.cr = lshr i64 %i.cq, 30
  %i.cs = xor i64 %i.cr, %i.cq
  %i.ct = mul i64 %i.cs, -4658895280553007687     ; 2 uses
  %i.cu = lshr i64 %i.ct, 27
  %i.cv = xor i64 %i.cu, %i.ct
  %i.cw = mul i64 %i.cv, -7723592293110705685     ; 2 uses
  %i.cx = lshr i64 %i.cw, 31
  %i.cy = xor i64 %i.cx, %i.cw
  %i.cz = trunc i64 %i.cy to i32
  %i.da = and i32 %i.bf, %i.cz                    ; 3 uses
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = lshr i64 %i.db, 5
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !204
  %i.df = and i32 %i.da, 31
  %i.dg = lshr i32 %i.de, %i.df
  %i.dh = trunc i32 %i.dg to i1
  br i1 %i.dh, label %.lr.ph.i.i.i.i105.i.i, label %"_ZZN4llvm12_GLOBAL__N_112LaunchKernel18createKernelLaunchEN4mlir3gpu12LaunchFuncOpENS3_10ObjectAttrEENK3$_1clENS2_5ValueE.exit108.thread28.i.i", !prof !205

.lr.ph.i.i.i.i105.i.i:                            ; preds = %"_ZZN4llvm12_GLOBAL__N_112LaunchKernel18createKernelLaunchEN4mlir3gpu12LaunchFuncOpENS3_10ObjectAttrEENK3$_1clENS2_5ValueE.exit.thread24.i.i", %bb.q
  %i.di = phi i64 [ %i.dn, %bb.q ], [ %i.db, %"_ZZN4llvm12_GLOBAL__N_112LaunchKernel18createKernelLaunchEN4mlir3gpu12LaunchFuncOpENS3_10ObjectAttrEENK3$_1clENS2_5ValueE.exit.thread24.i.i" ]
  %.01419.i.i.i.i106.i.i = phi i32 [ %i.dm, %bb.q ], [ %i.da, %"_ZZN4llvm12_GLOBAL__N_112LaunchKernel18createKernelLaunchEN4mlir3gpu12LaunchFuncOpENS3_10ObjectAttrEENK3$_1clENS2_5ValueE.exit.thread24.i.i" ]
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.di ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i107.i.i = load ptr, ptr %i.dj, align 8, !tbaa !203
  %i.dk = icmp eq ptr %.sroa.073.0.copyload.i.i, %.sroa.0.0.copyload.i.i.i.i107.i.i
  br i1 %i.dk, label %bb.r, label %bb.q, !prof !36

bb.q:                                             ; preds = %.lr.ph.i.i.i.i105.i.i
  %i.dl = add nuw i32 %.01419.i.i.i.i106.i.i, 1
  %i.dm = and i32 %i.dl, %i.bf                    ; 3 uses
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = lshr i64 %i.dn, 5
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !204
  %i.dr = and i32 %i.dm, 31
  %i.ds = lshr i32 %i.dq, %i.dr
  %i.dt = trunc i32 %i.ds to i1
  br i1 %i.dt, label %.lr.ph.i.i.i.i105.i.i, label %"_ZZN4llvm12_GLOBAL__N_112LaunchKernel18createKernelLaunchEN4mlir3gpu12LaunchFuncOpENS3_10ObjectAttrEENK3$_1clENS2_5ValueE.exit108.thread28.i.i", !prof !206

bb.r:                                             ; preds = %.lr.ph.i.i.i.i105.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !200
  br label %"_ZZN4llvm12_GLOBAL__N_112LaunchKernel18createKernelLaunchEN4mlir3gpu12LaunchFuncOpENS3_10ObjectAttrEENK3$_1clENS2_5ValueE.exit108.thread28.i.i"

"_ZZN4llvm12_GLOBAL__N_112LaunchKernel18createKernelLaunchEN4mlir3gpu12LaunchFuncOpENS3_10ObjectAttrEENK3$_1clENS2_5ValueE.exit108.thread28.i.i": ; preds = %bb.q, %bb.r, %"_ZZN4llvm12_GLOBAL__N_112LaunchKernel18createKernelLaunchEN4mlir3gpu12LaunchFuncOpENS3_10ObjectAttrEENK3$_1clENS2_5ValueE.exit.thread24.i.i"
  %i.dw = phi ptr [ null, %"_ZZN4llvm12_GLOBAL__N_112LaunchKernel18createKernelLaunchEN4mlir3gpu12LaunchFuncOpENS3_10ObjectAttrEENK3$_1clENS2_5ValueE.exit.thread24.i.i" ], [ %i.dv, %bb.r ], [ null, %bb.q ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %34, i64 16
  %.sroa.069.0.copyload.i.i = load ptr, ptr %i.dx, align 8, !tbaa !203 ; 2 uses
  %i.dy = ptrtoint ptr %.sroa.069.0.copyload.i.i to i64
  %i.dz = xor i64 %i.dy, -49064778989728563       ; 2 uses
  %i.ea = lshr i64 %i.dz, 30
  %i.eb = xor i64 %i.ea, %i.dz
  %i.ec = mul i64 %i.eb, -4658895280553007687     ; 2 uses
  %i.ed = lshr i64 %i.ec, 27
  %i.ee = xor i64 %i.ed, %i.ec
  %i.ef = mul i64 %i.ee, -7723592293110705685     ; 2 uses
  %i.eg = lshr i64 %i.ef, 31
  %i.eh = xor i64 %i.eg, %i.ef
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = and i32 %i.bf, %i.ei                    ; 3 uses
  %i.ek = zext i32 %i.ej to i64                   ; 2 uses
  %i.el = lshr i64 %i.ek, 5
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !204
  %i.eo = and i32 %i.ej, 31
  %i.ep = lshr i32 %i.en, %i.eo
  %i.eq = trunc i32 %i.ep to i1
  br i1 %i.eq, label %.lr.ph.i.i.i.i109.i.i, label %"_ZZN4llvm12_GLOBAL__N_112LaunchKernel18createKernelLaunchEN4mlir3gpu12LaunchFuncOpENS3_10ObjectAttrEENK3$_1clENS2_5ValueE.exit112.i.i", !prof !205

.lr.ph.i.i.i.i109.i.i:                            ; preds = %"_ZZN4llvm12_GLOBAL__N_112LaunchKernel18createKernelLaunchEN4mlir3gpu12LaunchFuncOpENS3_10ObjectAttrEENK3$_1clENS2_5ValueE.exit108.thread28.i.i", %bb.s
  %i.er = phi i64 [ %i.ew, %bb.s ], [ %i.ek, %"_ZZN4llvm12_GLOBAL__N_112LaunchKernel18createKernelLaunchEN4mlir3gpu12LaunchFuncOpENS3_10ObjectAttrEENK3$_1clENS2_5ValueE.exit108.thread28.i.i" ]
  %.01419.i.i.i.i110.i.i = phi i32 [ %i.ev, %bb.s ], [ %i.ej, %"_ZZN4llvm12_GLOBAL__N_112LaunchKernel18createKernelLaunchEN4mlir3gpu12LaunchFuncOpENS3_10ObjectAttrEENK3$_1clENS2_5ValueE.exit108.thread28.i.i" ]
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.er ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i111.i.i = load ptr, ptr %i.es, align 8, !tbaa !203
  %i.et = icmp eq ptr %.sroa.069.0.copyload.i.i, %.sroa.0.0.copyload.i.i.i.i111.i.i
  br i1 %i.et, label %bb.t, label %bb.s, !prof !36

bb.s:                                             ; preds = %.lr.ph.i.i.i.i109.i.i
end_hunk_1
