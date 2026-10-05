Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopExtensionOps?download=true
inline.NumInlined: 900
inline.NumDeleted: 621
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"class.mlir::TypeID" = type { ptr }
%"class.mlir::ValueRange" = type { %"class.llvm::detail::indexed_accessor_range_base.16" }
%"class.llvm::detail::indexed_accessor_range_base.16" = type { %"class.llvm::PointerUnion.17", i64 }
%"class.llvm::PointerUnion.17" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.18" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.18" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.19" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.19" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.20" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.20" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.21" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.21" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.22" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.22" = type { %"struct.llvm::detail::PunnedPointer" }
%"struct.llvm::detail::PunnedPointer" = type { [8 x i8] }
%"class.mlir::DiagnosticArgument" = type { i32, %union.anon }
%union.anon = type { %"class.llvm::StringRef" }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.mlir::InFlightDiagnostic" = type { ptr, %"class.std::optional.24" }
%"class.std::optional.24" = type { %"struct.std::_Optional_base.25" }
%"struct.std::_Optional_base.25" = type { %"struct.std::_Optional_payload.27" }
%"struct.std::_Optional_payload.27" = type { %"struct.std::_Optional_payload.base.38", [7 x i8] }
%"struct.std::_Optional_payload.base.38" = type { %"struct.std::_Optional_payload_base.base.37" }
%"struct.std::_Optional_payload_base.base.37" = type <{ %"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage", i8 }>
%"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage" = type { %"class.mlir::Diagnostic" }
%"class.mlir::Diagnostic" = type { %"class.mlir::Location", i32, %"class.llvm::SmallVector", %"class.std::vector", %"class.std::vector.30", %"class.llvm::SmallVector.35" }
%"class.mlir::Location" = type { %"class.mlir::LocationAttr" }
%"class.mlir::LocationAttr" = type { %"class.mlir::Attribute" }
%"class.mlir::Attribute" = type { ptr }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [96 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.30" = type { %"struct.std::_Vector_base.31" }
%"struct.std::_Vector_base.31" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::SmallVector.35" = type { %"class.llvm::SmallVectorImpl" }
%"struct.std::array.150" = type { [1 x i8] }
%"class.mlir::Value" = type { ptr }
%"struct.mlir::OperationState" = type { %"class.mlir::Location", %"class.mlir::OperationName", %"class.llvm::SmallVector.55", %"class.llvm::SmallVector.60", %"class.mlir::NamedAttrList", %"class.llvm::SmallVector.68", %"class.llvm::SmallVector.73", %"class.mlir::Attribute", %"class.mlir::PropertyRef", %"class.llvm::function_ref.78", %"class.llvm::function_ref.79" }
%"class.mlir::OperationName" = type { ptr }
%"class.llvm::SmallVector.55" = type { %"class.llvm::SmallVectorImpl.56", %"struct.llvm::SmallVectorStorage.59" }
%"class.llvm::SmallVectorImpl.56" = type { %"class.llvm::SmallVectorTemplateBase.57" }
%"class.llvm::SmallVectorTemplateBase.57" = type { %"class.llvm::SmallVectorTemplateCommon.58" }
%"class.llvm::SmallVectorTemplateCommon.58" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.59" = type { [32 x i8] }
%"class.llvm::SmallVector.60" = type { %"class.llvm::SmallVectorImpl.61", %"struct.llvm::SmallVectorStorage.64" }
%"class.llvm::SmallVectorImpl.61" = type { %"class.llvm::SmallVectorTemplateBase.62" }
%"class.llvm::SmallVectorTemplateBase.62" = type { %"class.llvm::SmallVectorTemplateCommon.63" }
%"class.llvm::SmallVectorTemplateCommon.63" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.64" = type { [32 x i8] }
%"class.mlir::NamedAttrList" = type { %"class.llvm::SmallVector.65", %"class.llvm::PointerIntPair" }
%"class.llvm::SmallVector.65" = type { %"class.llvm::SmallVectorImpl.42", %"struct.llvm::SmallVectorStorage.66" }
%"class.llvm::SmallVectorImpl.42" = type { %"class.llvm::SmallVectorTemplateBase.43" }
%"class.llvm::SmallVectorTemplateBase.43" = type { %"class.llvm::SmallVectorTemplateCommon.44" }
%"class.llvm::SmallVectorTemplateCommon.44" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.66" = type { [64 x i8] }
%"class.llvm::PointerIntPair" = type { %"struct.llvm::detail::PunnedPointer.67" }
%"struct.llvm::detail::PunnedPointer.67" = type { [8 x i8] }
%"class.llvm::SmallVector.68" = type { %"class.llvm::SmallVectorImpl.69", %"struct.llvm::SmallVectorStorage.72" }
%"class.llvm::SmallVectorImpl.69" = type { %"class.llvm::SmallVectorTemplateBase.70" }
%"class.llvm::SmallVectorTemplateBase.70" = type { %"class.llvm::SmallVectorTemplateCommon.71" }
%"class.llvm::SmallVectorTemplateCommon.71" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.72" = type { [8 x i8] }
%"class.llvm::SmallVector.73" = type { %"class.llvm::SmallVectorImpl.74", %"struct.llvm::SmallVectorStorage.77" }
%"class.llvm::SmallVectorImpl.74" = type { %"class.llvm::SmallVectorTemplateBase.75" }
%"class.llvm::SmallVectorTemplateBase.75" = type { %"class.llvm::SmallVectorTemplateCommon.76" }
%"class.llvm::SmallVectorTemplateCommon.76" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.77" = type { [8 x i8] }
%"class.mlir::PropertyRef" = type { %"class.mlir::TypeID", ptr }
%"class.llvm::function_ref.78" = type { ptr, i64 }
%"class.llvm::function_ref.79" = type { ptr, i64 }
%"class.llvm::ArrayRef.46" = type { ptr, i64 }
%class.anon.153 = type { i8 }
%class.anon.155 = type { i8 }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"struct.mlir::OpAsmParser::UnresolvedOperand" = type <{ %"class.llvm::SMLoc", %"class.llvm::StringRef", i32, [4 x i8] }>
%"class.llvm::SMLoc" = type { ptr }
%"class.llvm::ArrayRef.89" = type { ptr, i64 }
%"class.mlir::Type" = type { ptr }
%"class.llvm::ArrayRef.90" = type { ptr, i64 }
%"class.mlir::transform::TransformHandleTypeInterface" = type { %"class.mlir::TypeInterface" }
%"class.mlir::TypeInterface" = type { %"class.mlir::detail::Interface" }
%"class.mlir::detail::Interface" = type { %"class.mlir::Type", ptr }
%"class.mlir::DictionaryAttr" = type { %"class.mlir::detail::StorageUserBase" }
%"class.mlir::detail::StorageUserBase" = type { %"class.mlir::Attribute" }
%"class.llvm::SmallVector.91" = type { %"class.llvm::SmallVectorImpl.92", %"struct.llvm::SmallVectorStorage.95" }
%"class.llvm::SmallVectorImpl.92" = type { %"class.llvm::SmallVectorTemplateBase.93" }
%"class.llvm::SmallVectorTemplateBase.93" = type { %"class.llvm::SmallVectorTemplateCommon.94" }
%"class.llvm::SmallVectorTemplateCommon.94" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.95" = type { [32 x i8] }
%"struct.mlir::detail::TypedValue" = type { %"class.mlir::Value" }
%"class.mlir::DiagnosedSilenceableFailure" = type <{ %"class.llvm::SmallVector.99", %"struct.llvm::LogicalResult", [7 x i8] }>
%"class.llvm::SmallVector.99" = type { %"class.llvm::SmallVectorImpl.100", %"struct.llvm::SmallVectorStorage.103" }
%"class.llvm::SmallVectorImpl.100" = type { %"class.llvm::SmallVectorTemplateBase.101" }
%"class.llvm::SmallVectorTemplateBase.101" = type { %"class.llvm::SmallVectorTemplateCommon.102" }
%"class.llvm::SmallVectorTemplateCommon.102" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.103" = type { [192 x i8] }
%"struct.llvm::LogicalResult" = type { i8 }

$_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE = comdat any

$_ZNK4mlir6detail10TypedValueINS_9transform28TransformHandleTypeInterfaceEE7getTypeEv = comdat any

$_ZN4mlir10DiagnosticD2Ev = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_ = comdat any

$_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState13usePropertiesINS1_15EmptyPropertiesEEEvRT_EUlS2_E_EEvlS2_ = comdat any

$_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState13usePropertiesINS1_15EmptyPropertiesEEEvRT_EUlS2_S2_E_EEvlS2_S2_ = comdat any

$_ZN4mlir9AsmParser9parseTypeINS_9transform28TransformHandleTypeInterfaceEEEN4llvm11ParseResultERT_ = comdat any

$_ZN4llvm23DefaultDoCastIfPossibleIN4mlir9transform28TransformHandleTypeInterfaceENS1_4TypeENS_8CastInfoIS3_S4_vEEE16doCastIfPossibleES4_ = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [42 x i8] c"expected DictionaryAttr to set properties\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"operand\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_9transform27HoistLoopInvariantSubsetsOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"transform.loop.hoist_loop_invariant_subsets\00", align 1
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.4 = private unnamed_addr constant [3 x i8] c" #\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c" must be TransformHandleTypeInterface instance, but got \00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.6 = private unnamed_addr constant [96 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::transform::TransformHandleTypeInterface]\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_15EmptyPropertiesEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.14 = private unnamed_addr constant [31 x i8] c"invalid kind of type specified\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"number of operands and types do not match: got \00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c" operands and \00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c" types\00", align 1

@_ZN4mlir9transform6detail45HoistLoopInvariantSubsetsOpGenericAdaptorBaseC1ENS0_27HoistLoopInvariantSubsetsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail45HoistLoopInvariantSubsetsOpGenericAdaptorBaseC2ENS0_27HoistLoopInvariantSubsetsOpE
@_ZN4mlir9transform34HoistLoopInvariantSubsetsOpAdaptorC1ENS0_27HoistLoopInvariantSubsetsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform34HoistLoopInvariantSubsetsOpAdaptorC2ENS0_27HoistLoopInvariantSubsetsOpE

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform6detail45HoistLoopInvariantSubsetsOpGenericAdaptorBaseC2ENS0_27HoistLoopInvariantSubsetsOpE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 17)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1 to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = and i32 %i.g, 8388607                    ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4mlir9Operation10getRegionsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %i.h to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = lshr i32 %i.g, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.l, 1
  %i.m = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.m
  %i.o = lshr i32 %i.g, 21
  %i.p = and i32 %i.o, 2040
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !31
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.u
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform34HoistLoopInvariantSubsetsOpAdaptorC2ENS0_27HoistLoopInvariantSubsetsOpE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 17)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.b, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !96
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #11
  %i.i = load <2 x i64>, ptr %2, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !15
  %i.o = load i32, ptr %i.a, align 4              ; 3 uses
  %i.p = and i32 %i.o, 8388607                    ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN4mlir9transform41HoistLoopInvariantSubsetsOpGenericAdaptorINS_10ValueRangeEEC2INS0_27HoistLoopInvariantSubsetsOpEvEES2_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit
  %i.r = zext nneg i32 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.t = lshr i32 %i.o, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.t, 1
  %i.u = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.u
  %i.w = lshr i32 %i.o, 21
  %i.x = and i32 %i.w, 2040
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !31
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ac
  br label %_ZN4mlir9transform41HoistLoopInvariantSubsetsOpGenericAdaptorINS_10ValueRangeEEC2INS0_27HoistLoopInvariantSubsetsOpEvEES2_T_.exit

_ZN4mlir9transform41HoistLoopInvariantSubsetsOpGenericAdaptorINS_10ValueRangeEEC2INS0_27HoistLoopInvariantSubsetsOpEvEES2_T_.exit: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.r, %bb.c ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i) #11
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.i, ptr %i.af, align 8
  ret void
}

declare void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN4mlir9transform34HoistLoopInvariantSubsetsOpAdaptor6verifyENS_8LocationE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp21setPropertiesFromAttrERNS_15EmptyPropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !36
  %.not = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, i64 noundef %3) #11, !inline_history !97
  %i.c = load ptr, ptr %5, align 8, !tbaa !44
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store i32 3, ptr %4, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str, ptr %i.e, align 8, !tbaa !49
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !54
  %.not.i.i.i.i.i = icmp ult i32 %i.g, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !55

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.j = zext i32 %i.g to i64
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.m = load i32, ptr %i.f, align 8, !tbaa !53
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.f, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.pr = load ptr, ptr %5, align 8, !tbaa !44
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #11
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !57, !range !58, !noundef !59
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.o, align 8, !tbaa !57
  br i1 %i.q, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.r) #11
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.0.0 = phi i8 [ 0, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS_15EmptyPropertiesE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #3 align 2 {
_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit:
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp21computePropertiesHashERKNS_15EmptyPropertiesE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::array.150", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.a = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %1, i64 noundef 0) #11
  %i.b = xor i64 %i.a, -49064778989728563
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i8 } @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp15getInherentAttrEPNS_11MLIRContextERKNS_15EmptyPropertiesEN4llvm9StringRefE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr nofree readnone captures(none) %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  ret { ptr, i8 } { ptr undef, i8 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp15setInherentAttrERNS_15EmptyPropertiesEN4llvm9StringRefENS_9AttributeE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp21populateInherentAttrsEPNS_11MLIRContextERKNS_15EmptyPropertiesERNS_13NamedAttrListE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %2) local_unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree readnone captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, ptr nofree readnone captures(none) %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::Value", align 8       ; 2 uses
  store ptr %2, ptr %3, align 8
  %i.a = ptrtoint ptr %3 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.a, i64 1) #11
  ret void
}

declare void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304), i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp6createERNS_9OpBuilderENS_8LocationENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %4 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %4, ptr %1, ptr nonnull @.str.3, i64 43) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %2, ptr %3, align 8
  %i.a = ptrtoint ptr %3 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %4, i64 %i.a, i64 1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %4) #11 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_9transform27HoistLoopInvariantSubsetsOpEvE2idE
  %5 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_9transform27HoistLoopInvariantSubsetsOpEvE2idE
  %spec.select.i.i.i.i = and i1 %5, %i.f
  %spec.select.i.i = select i1 %spec.select.i.i.i.i, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret ptr %spec.select.i.i
}

declare void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304), ptr, ptr, i64) unnamed_addr #2

declare noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp6createERNS_20ImplicitLocOpBuilderENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %3 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %3, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.3, i64 43) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %1, ptr %2, align 8
  %i.b = ptrtoint ptr %2 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %3, i64 %i.b, i64 1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.c = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %3) #11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.g = icmp eq ptr %i.f, @_ZN4mlir6detail14TypeIDResolverINS_9transform27HoistLoopInvariantSubsetsOpEvE2idE
  %4 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_9transform27HoistLoopInvariantSubsetsOpEvE2idE
  %spec.select.i.i.i.i.i = and i1 %4, %i.g
  %spec.select.i.i.i = select i1 %spec.select.i.i.i.i.i, ptr %i.c, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, ptr %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.mlir::Value", align 8       ; 2 uses
  store ptr %4, ptr %5, align 8
  %i.a = ptrtoint ptr %5 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.a, i64 1) #11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = add i64 %3, %i.e                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !54
  %i.i = zext i32 %i.h to i64
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef 8) #11
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !53 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi.i.i = phi i64 [ %i.e, %bb.a ], [ %.pre28.i.i, %bb.b ]
  %i.l = phi i32 [ %i.d, %bb.a ], [ %.pre.i.i, %bb.b ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.o = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #11
  %i.p = ptrtoint ptr %i.o to i64
  store i64 %i.p, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !63
  %i.q = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.q, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.c, align 8, !tbaa !53
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.s = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.l, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.t = trunc i64 %3 to i32
  %i.u = add i32 %i.s, %i.t
  store i32 %i.u, ptr %i.c, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.3, i64 43) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %4, ptr %5, align 8
  %i.a = ptrtoint ptr %5 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %i.a, i64 1) #11
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = add i64 %3, %i.e                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !54
  %i.i = zext i32 %i.h to i64
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef 8) #11
  %.pre.i.i.i = load i32, ptr %i.c, align 8, !tbaa !53 ; 2 uses
  %.pre28.i.i.i = zext i32 %.pre.i.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi.i.i.i = phi i64 [ %i.e, %bb.a ], [ %.pre28.i.i.i, %bb.b ]
  %i.l = phi i32 [ %i.d, %bb.a ], [ %.pre.i.i.i, %bb.b ]
  %.not8.i.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i.i, label %_ZN4mlir9transform27HoistLoopInvariantSubsetsOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueE.exit, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.pre-phi.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.010.i.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.o = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i.i) #11
  %i.p = ptrtoint ptr %i.o to i64
  store i64 %i.p, ptr %.010.i.i.i.i.i.i.i, align 8, !tbaa !63
  %i.q = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.q, %3
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre27.i.i.i = load i32, ptr %i.c, align 8, !tbaa !53
  br label %_ZN4mlir9transform27HoistLoopInvariantSubsetsOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueE.exit

_ZN4mlir9transform27HoistLoopInvariantSubsetsOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i.i
  %i.s = phi i32 [ %.pre27.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i.i ], [ %i.l, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i ]
  %i.t = trunc i64 %3 to i32
  %i.u = add i32 %i.s, %i.t
  store i32 %i.u, ptr %i.c, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.v = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #11 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !61
  %i.z = icmp eq ptr %i.y, @_ZN4mlir6detail14TypeIDResolverINS_9transform27HoistLoopInvariantSubsetsOpEvE2idE
  %7 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_9transform27HoistLoopInvariantSubsetsOpEvE2idE
  %spec.select.i.i.i.i = and i1 %7, %i.z
  %spec.select.i.i = select i1 %spec.select.i.i.i.i, ptr %i.v, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  %i.b = tail call ptr @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.sroa.0.0.copyload.i, i64 %1, i64 %2, ptr %3)
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.46") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %4, i64 %5) #11
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8, !tbaa !66
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !51 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.b, align 8
  %.idx.i.i = shl nuw nsw i64 %.sroa.2.0.copyload, 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = add nsw i64 %.sroa.2.0.copyload, %i.e    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.h = load i32, ptr %i.g, align 4, !tbaa !54
  %i.i = zext i32 %i.h to i64
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef 16) #11
  %.pre8.pre.i.i.i.i = load i32, ptr %i.c, align 8, !tbaa !53
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %.pre8.i.i.i.i = phi i32 [ %i.d, %bb.a ], [ %.pre8.pre.i.i.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.m = zext i32 %.pre8.i.i.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 8 %.sroa.0.0.copyload, i64 %.idx.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.c, align 8, !tbaa !53
  br label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit

_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i, %bb.c
  %i.o = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.c ]
  %i.p = trunc i64 %.sroa.2.0.copyload to i32
  %i.q = add i32 %i.o, %i.p
  store i32 %i.q, ptr %i.c, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !53   ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = add i64 %3, %i.u                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.x = load i32, ptr %i.w, align 4, !tbaa !54
  %i.y = zext i32 %i.x to i64
  %i.z = icmp ugt i64 %i.v, %i.y
  br i1 %i.z, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull %i.aa, i64 noundef %i.v, i64 noundef 8) #11
  %.pre.i.i = load i32, ptr %i.s, align 8, !tbaa !53 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.u, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ab = phi i32 [ %i.t, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !56
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.ae = tail call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #11
  %i.af = ptrtoint ptr %i.ae to i64
  store i64 %i.af, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !63
  %i.ag = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ag, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.s, align 8, !tbaa !53
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.ai = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ab, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.aj = trunc i64 %3 to i32
  %i.ak = add i32 %i.ai, %i.aj
  store i32 %i.ak, ptr %i.s, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.46") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %1, ptr nonnull @.str.3, i64 43) #11
  call void @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.46") align 8 %6)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_9transform27HoistLoopInvariantSubsetsOpEvE2idE
  %8 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_9transform27HoistLoopInvariantSubsetsOpEvE2idE
  %spec.select.i.i.i.i = and i1 %8, %i.e
  %spec.select.i.i = select i1 %spec.select.i.i.i.i, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.46") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.3, i64 43) #11
  call void @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.46") align 8 %5)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #11 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_9transform27HoistLoopInvariantSubsetsOpEvE2idE
  %7 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_9transform27HoistLoopInvariantSubsetsOpEvE2idE
  %spec.select.i.i.i.i.i = and i1 %7, %i.f
  %spec.select.i.i.i = select i1 %spec.select.i.i.i.i.i, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.46") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %class.anon.153, align 1            ; 3 uses
  %9 = alloca %class.anon.155, align 1            ; 3 uses
  tail call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %4, i64 %5) #11
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_15EmptyPropertiesEvE2idE, ptr %i.a, align 8, !tbaa !36
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  store ptr %6, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.b = ptrtoint ptr %8 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState13usePropertiesINS1_15EmptyPropertiesEEEvRT_EUlS2_E_EEvlS2_, ptr %i.c, align 8, !tbaa !101
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.b, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.d = ptrtoint ptr %9 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState13usePropertiesINS1_15EmptyPropertiesEEEvRT_EUlS2_S2_E_EEvlS2_S2_, ptr %i.e, align 8, !tbaa !101
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8, !tbaa !66
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !51 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.g, align 8
  %.idx.i.i = shl nuw nsw i64 %.sroa.2.0.copyload, 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = add nsw i64 %.sroa.2.0.copyload, %i.j    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.m = load i32, ptr %i.l, align 4, !tbaa !54
  %i.n = zext i32 %i.m to i64
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef 16) #11
  %.pre8.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !53
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %.pre8.i.i.i.i = phi i32 [ %i.i, %bb.a ], [ %.pre8.pre.i.i.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !56
  %i.r = zext i32 %.pre8.i.i.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 8 %.sroa.0.0.copyload, i64 %.idx.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !53
  br label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit

_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i, %bb.c
  %i.t = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.c ]
  %i.u = trunc i64 %.sroa.2.0.copyload to i32
  %i.v = add i32 %i.t, %i.u
  store i32 %i.v, ptr %i.h, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !53   ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = add i64 %3, %i.z                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !54
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp ugt i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #11
  %.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !53 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.z, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ag = phi i32 [ %i.y, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !56
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #11
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !63
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !53
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.46") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.3, i64 43) #11
  call void @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.46") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_9transform27HoistLoopInvariantSubsetsOpEvE2idE
  %9 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_9transform27HoistLoopInvariantSubsetsOpEvE2idE
  %spec.select.i.i.i.i = and i1 %9, %i.e
  %spec.select.i.i = select i1 %spec.select.i.i.i.i, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.46") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.3, i64 43) #11
  call void @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.46") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #11 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_9transform27HoistLoopInvariantSubsetsOpEvE2idE
  %8 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_9transform27HoistLoopInvariantSubsetsOpEvE2idE
  %spec.select.i.i.i.i.i = and i1 %8, %i.f
  %spec.select.i.i.i = select i1 %spec.select.i.i.i.i.i, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform27HoistLoopInvariantSubsetsOp20verifyInvariantsImplEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
_ZN4mlir9transform27HoistLoopInvariantSubsetsOp14getODSOperandsEj.exit:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 33
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i7.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.p, align 8
  %i.q = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !74   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.a, label %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i, !prof !75

bb.a:                                             ; preds = %_ZN4mlir9transform27HoistLoopInvariantSubsetsOp14getODSOperandsEj.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id) #11
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 49), i64 45) #11
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id) #11
  br label %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b, %bb.a, %_ZN4mlir9transform27HoistLoopInvariantSubsetsOp14getODSOperandsEj.exit
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !36 ; 2 uses
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !56   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !53  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ab, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ac = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ac ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !36
  %i.ae = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = xor i64 %i.ac, -1
  %i.ah = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i, %i.ag
  %.112.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ae, ptr %i.af, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ae, i64 %i.ah, i64 %i.ac ; 2 uses
  %i.ai = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i ], [ %i.ab, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.pre-phi.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, %i.aj
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i
  %i.ak = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !61
  %i.al = icmp eq ptr %i.ak, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %i.al, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.i, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread.i

_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.i: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread.i, label %_ZL50__mlir_ods_local_type_constraint_LoopExtensionOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread

_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread.i: ; preds = %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.i, %bb.c, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store i8 5, ptr %i.d, align 8, !tbaa !80
  store i8 1, ptr %i.e, align 1, !tbaa !81
  store ptr @.str.1, ptr %6, align 8, !tbaa !82
  store i64 7, ptr %i.f, align 8, !tbaa !82
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(34) %6) #11
  %i.ao = load ptr, ptr %5, align 8, !tbaa !44
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store i32 3, ptr %4, align 8, !tbaa !47
  store ptr @.str.4, ptr %i.h, align 8, !tbaa !49
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !51
  %i.ap = load i32, ptr %i.i, align 8, !tbaa !53  ; 2 uses
  %i.aq = load i32, ptr %i.j, align 4, !tbaa !54
  %.not.i.i.i.i.i.i = icmp ult i32 %i.ap, %i.aq
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e, !prof !55

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ar = zext i32 %i.ap to i64
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.au = load i32, ptr %i.i, align 8, !tbaa !53
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.i, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !44
  %.not.i.i4.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i4.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i32 5, ptr %3, align 8, !tbaa !47
  store i64 0, ptr %i.k, align 8, !tbaa !82
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !53  ; 2 uses
  %i.ax = load i32, ptr %i.j, align 4, !tbaa !54
  %.not.i.i.i.i.i5.i = icmp ult i32 %i.aw, %i.ax
  br i1 %.not.i.i.i.i.i5.i, label %bb.i, label %bb.h, !prof !55

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ay = zext i32 %i.aw to i64
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.bb = load i32, ptr %i.i, align 8, !tbaa !53
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.i, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %.pr12.i = load ptr, ptr %5, align 8, !tbaa !44
  %.not.i.i6.i = icmp eq ptr %.pr12.i, null
  br i1 %.not.i.i6.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i32 3, ptr %2, align 8, !tbaa !47
  store ptr @.str.5, ptr %i.l, align 8, !tbaa !49
  store i64 56, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i7.i, align 8, !tbaa !51
  %i.bd = load i32, ptr %i.i, align 8, !tbaa !53  ; 2 uses
  %i.be = load i32, ptr %i.j, align 4, !tbaa !54
  %.not.i.i.i.i.i8.i = icmp ult i32 %i.bd, %i.be
  br i1 %.not.i.i.i.i.i8.i, label %bb.l, label %bb.k, !prof !55

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bf = zext i32 %i.bd to i64
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bi = load i32, ptr %i.i, align 8, !tbaa !53
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.i, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %.pr14.pr.i = load ptr, ptr %5, align 8, !tbaa !44
  %.not.i.i9.i = icmp eq ptr %.pr14.pr.i, null
  br i1 %.not.i.i9.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit.i
end_hunk_0
