Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OpenACCUtilsReduction?download=true
inline.NumInlined: 570
inline.NumDeleted: 405
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"class.mlir::TypeID" = type { ptr }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [48 x i8] }
%"class.mlir::acc::GPUParallelDimsAttr" = type { %"class.mlir::detail::StorageUserBase" }
%"class.mlir::detail::StorageUserBase" = type { %"class.mlir::Attribute" }
%"class.mlir::Attribute" = type { ptr }
%"class.mlir::acc::ReductionAccumulateOp" = type { %"class.mlir::Op.25" }
%"class.mlir::Op.25" = type { %"class.mlir::OpState" }
%"class.mlir::OpState" = type { ptr }
%"class.mlir::Type" = type { ptr }
%"class.mlir::acc::ReducibleType" = type { %"class.mlir::TypeInterface" }
%"class.mlir::TypeInterface" = type { %"class.mlir::detail::Interface" }
%"class.mlir::detail::Interface" = type { %"class.mlir::Type", ptr }
%"class.mlir::DiagnosticArgument" = type { i32, %union.anon }
%union.anon = type { %"class.llvm::StringRef" }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.mlir::InFlightDiagnostic" = type { ptr, %"class.std::optional.210" }
%"class.std::optional.210" = type { %"struct.std::_Optional_base.211" }
%"struct.std::_Optional_base.211" = type { %"struct.std::_Optional_payload.213" }
%"struct.std::_Optional_payload.213" = type { %"struct.std::_Optional_payload.base.229", [7 x i8] }
%"struct.std::_Optional_payload.base.229" = type { %"struct.std::_Optional_payload_base.base.228" }
%"struct.std::_Optional_payload_base.base.228" = type <{ %"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage", i8 }>
%"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage" = type { %"class.mlir::Diagnostic" }
%"class.mlir::Diagnostic" = type { %"class.mlir::Location", i32, %"class.llvm::SmallVector.216", %"class.std::vector", %"class.std::vector.221", %"class.llvm::SmallVector.226" }
%"class.mlir::Location" = type { %"class.mlir::LocationAttr" }
%"class.mlir::LocationAttr" = type { %"class.mlir::Attribute" }
%"class.llvm::SmallVector.216" = type { %"class.llvm::SmallVectorImpl.217", %"struct.llvm::SmallVectorStorage.220" }
%"class.llvm::SmallVectorImpl.217" = type { %"class.llvm::SmallVectorTemplateBase.218" }
%"class.llvm::SmallVectorTemplateBase.218" = type { %"class.llvm::SmallVectorTemplateCommon.219" }
%"class.llvm::SmallVectorTemplateCommon.219" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.220" = type { [96 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.221" = type { %"struct.std::_Vector_base.222" }
%"struct.std::_Vector_base.222" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::SmallVector.226" = type { %"class.llvm::SmallVectorImpl.217" }
%"class.mlir::ComplexType" = type { %"class.mlir::detail::StorageUserBase.47" }
%"class.mlir::detail::StorageUserBase.47" = type { %"class.mlir::Type" }
%"class.llvm::APFloat" = type { %"union.llvm::APFloat::Storage" }
%"union.llvm::APFloat::Storage" = type { %"class.llvm::detail::DoubleAPFloat", [8 x i8] }
%"class.llvm::detail::DoubleAPFloat" = type { ptr, ptr }
%"class.mlir::FloatAttr" = type { %"class.mlir::detail::StorageUserBase.76" }
%"class.mlir::detail::StorageUserBase.76" = type { %"class.mlir::Attribute" }
%"class.mlir::complex::NumberAttr" = type { %"class.mlir::detail::StorageUserBase.46" }
%"class.mlir::detail::StorageUserBase.46" = type { %"class.mlir::Attribute" }

$_ZN4llvm23DefaultDoCastIfPossibleIN4mlir3acc13ReducibleTypeENS1_4TypeENS_8CastInfoIS3_S4_vEEE16doCastIfPossibleES4_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_ = comdat any

$_ZN4mlir10DiagnosticD2Ev = comdat any

$_ZN4llvm23DefaultDoCastIfPossibleIN4mlir9FloatTypeEKNS1_4TypeENS_8CastInfoIS2_S4_vEEE16doCastIfPossibleES3_ = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_3acc13ReducibleTypeEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_3acc13ReducibleTypeEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3acc21ReductionAccumulateOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZZN4mlir6detail14TypeIDResolverINS_3acc13ReducibleTypeEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_3acc13ReducibleTypeEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str = private unnamed_addr constant [75 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::acc::ReducibleType]\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.4 = private unnamed_addr constant [66 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::FloatType]\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_11ComplexTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"reduction identity: operator not supported \00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"reduction identity: complex with non-floating element type\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"reduction identity: operator not supported for complex \00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"reduction identity: type not supported \00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.9 = private unnamed_addr constant [66 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::TypedAttr]\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_7complex10NumberAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@switch.table._ZN4mlir3acc22translateAtomicRMWKindENS_5arith13AtomicRMWKindE = private unnamed_addr constant [16 x i8] [i8 1, i8 1, i8 5, i8 poison, i8 3, i8 3, i8 3, i8 3, i8 4, i8 4, i8 4, i8 4, i8 2, i8 2, i8 6, i8 7], align 4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir3acc26getReductionCombineParDimsENS0_18ReductionCombineOpE(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.mlir::acc::GPUParallelDimsAttr", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = tail call ptr @_ZN4mlir3acc14getParDimsAttrEPNS_9OperationE(ptr noundef %1) #10 ; 2 uses
  store ptr %i.a, ptr %2, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call { ptr, i64 } @_ZNK4mlir3acc19GPUParallelDimsAttr8getArrayEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #10 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.f, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.g, align 4, !tbaa !13
  %.idx.i = shl nuw nsw i64 %i.d, 3
  %i.h = icmp ugt i64 %i.d, 6
  br i1 %i.h, label %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.thread.i: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #10
  %.pre8.pre.i.i = load i32, ptr %i.f, align 8, !tbaa !12
  %i.i = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %0, align 8, !tbaa !11
  br label %bb.c

_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.i: ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir3acc18GPUParallelDimAttrELj6EEC2IS3_vEENS_8ArrayRefIT_EE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.thread.i
  %i.j = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.thread.i ], [ %i.e, %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.i, %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.i ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 8 %i.c, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.f, align 8, !tbaa !12
  br label %_ZN4llvm11SmallVectorIN4mlir3acc18GPUParallelDimAttrELj6EEC2IS3_vEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorIN4mlir3acc18GPUParallelDimAttrELj6EEC2IS3_vEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.i, %bb.c
  %i.l = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.c ]
  %i.m = trunc i64 %i.d to i32
  %i.n = add i32 %i.l, %i.m
  store i32 %i.n, ptr %i.f, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4llvm11SmallVectorIN4mlir3acc18GPUParallelDimAttrELj6EEC2IS3_vEENS_8ArrayRefIT_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @_ZN4mlir3acc14getParDimsAttrEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK4mlir3acc19GPUParallelDimsAttr8getArrayEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir3acc26getReductionCombineParDimsENS0_24ReductionCombineRegionOpE(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.mlir::acc::ReductionAccumulateOp", align 8 ; 5 uses
  %3 = alloca %"class.mlir::acc::GPUParallelDimsAttr", align 8 ; 4 uses
  %4 = alloca %"class.mlir::acc::GPUParallelDimsAttr", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !35
  %.sroa.018.029 = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not30 = icmp eq ptr %.sroa.018.029, null
  %.not30.a = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_3acc21ReductionAccumulateOpEvE2idE
  %or.cond = or i1 %.not30, %.not30.a
  br i1 %or.cond, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.sroa.018.031 = phi ptr [ %.sroa.018.0, %.critedge ], [ %.sroa.018.029, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.018.031, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.i = icmp eq ptr %i.h, @_ZN4mlir6detail14TypeIDResolverINS_3acc21ReductionAccumulateOpEvE2idE
  %spec.select.i.i = select i1 %i.i, ptr %i.e, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %2, align 8
  %.not28 = icmp eq ptr %spec.select.i.i, null
  br i1 %.not28, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.j = call ptr @_ZN4mlir3acc21ReductionAccumulateOp10getParDimsEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  store ptr %i.j, ptr %3, align 8
  %i.k = call { ptr, i64 } @_ZNK4mlir3acc19GPUParallelDimsAttr8getArrayEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #10 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.o, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.p, align 4, !tbaa !13
  %.idx.i = shl nuw nsw i64 %i.m, 3
  %i.q = icmp ugt i64 %i.m, 6
  br i1 %i.q, label %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.thread.i: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.n, i64 noundef %i.m, i64 noundef 8) #10
  %.pre8.pre.i.i = load i32, ptr %i.o, align 8, !tbaa !12
  %i.r = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %0, align 8, !tbaa !11
  br label %bb.c

_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.i: ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.thread.i
  %i.s = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.thread.i ], [ %i.n, %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.r, %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.i ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 8 %i.l, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.o, align 8, !tbaa !12
  br label %bb.d

.critedge:                                        ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %.sroa.018.0 = load ptr, ptr %.sroa.018.031, align 8, !tbaa !37 ; 2 uses
  %.not = icmp eq ptr %.sroa.018.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.c, %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.i
  %i.u = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.c ]
  %i.v = trunc i64 %i.m to i32
  %i.w = add i32 %i.u, %i.v
  store i32 %i.w, ptr %i.o, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.i

._crit_edge:                                      ; preds = %.critedge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.x = tail call ptr @_ZN4mlir3acc14getParDimsAttrEPNS_9OperationE(ptr noundef %1) #10 ; 2 uses
  store ptr %i.x, ptr %4, align 8
  %.not27 = icmp eq ptr %i.x, null
  br i1 %.not27, label %bb.h, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.y = call { ptr, i64 } @_ZNK4mlir3acc19GPUParallelDimsAttr8getArrayEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #10 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1       ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.ad, align 4, !tbaa !13
  %.idx.i10 = shl nuw nsw i64 %i.aa, 3
  %i.ae = icmp ugt i64 %i.aa, 6
  br i1 %i.ae, label %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.thread.i15, label %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.i11

_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.thread.i15: ; preds = %bb.e
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.ab, i64 noundef %i.aa, i64 noundef 8) #10
  %.pre8.pre.i.i16 = load i32, ptr %i.ac, align 8, !tbaa !12
  %i.af = zext i32 %.pre8.pre.i.i16 to i64
  %.pre32 = load ptr, ptr %0, align 8, !tbaa !11
  br label %bb.f

_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.i11: ; preds = %bb.e
  %.not.i.i.i12 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.i11, %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.thread.i15
  %i.ag = phi ptr [ %.pre32, %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.thread.i15 ], [ %i.ab, %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.i11 ]
  %.pre8.i5.i13 = phi i64 [ %i.af, %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.thread.i15 ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.i11 ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.pre8.i5.i13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 8 %i.z, i64 %.idx.i10, i1 false)
  %.pre.i.i14 = load i32, ptr %i.ac, align 8, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.i11
  %i.ai = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIN4mlir3acc18GPUParallelDimAttrEE7reserveEm.exit.i.i11 ], [ %.pre.i.i14, %bb.f ]
  %i.aj = trunc i64 %i.aa to i32
  %i.ak = add i32 %i.ai, %i.aj
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.al, ptr %0, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.am, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.an, align 4, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.d, %bb.h
  ret void
}

declare ptr @_ZN4mlir3acc21ReductionAccumulateOp10getParDimsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 1, 8) i32 @_ZN4mlir3acc22translateAtomicRMWKindENS_5arith13AtomicRMWKindE(i64 noundef %0) local_unnamed_addr #3 {
switch.lookup:
  %switch.gep = getelementptr inbounds i8, ptr @switch.table._ZN4mlir3acc22translateAtomicRMWKindENS_5arith13AtomicRMWKindE, i64 %0
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  ret i32 %switch.ext
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i8 } @_ZN4mlir3acc29translateACCReductionOperatorENS0_17ReductionOperatorENS_4TypeE(i32 noundef %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.mlir::Type", align 8        ; 15 uses
  %3 = alloca %"class.mlir::acc::ReducibleType", align 8 ; 6 uses
  store ptr %1, ptr %2, align 8
  %i.a = call noundef zeroext i1 @_ZNK4mlir4Type9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = call noundef zeroext i1 @_ZNK4mlir4Type17isUnsignedIntegerEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  br i1 %i.b, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !18
  %i.c = call { ptr, ptr } @_ZN4llvm23DefaultDoCastIfPossibleIN4mlir3acc13ReducibleTypeENS1_4TypeENS_8CastInfoIS3_S4_vEEE16doCastIfPossibleES4_(ptr %.sroa.0.0.copyload.i) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  store ptr %i.d, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = extractvalue { ptr, ptr } %i.c, 1
  store ptr %i.f, ptr %i.e, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.g = call { i64, i8 } @_ZNK4mlir3acc13ReducibleType16getAtomicRMWKindENS0_17ReductionOperatorE(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %0) #10 ; 2 uses
  %i.h = extractvalue { i64, i8 } %i.g, 0
  %i.i = extractvalue { i64, i8 } %i.g, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  switch i32 %0, label %bb.s [
    i32 1, label %bb.e
    i32 2, label %bb.g
    i32 3, label %bb.i
    i32 12, label %bb.t
    i32 14, label %bb.k
    i32 4, label %bb.l
    i32 13, label %bb.n
    i32 15, label %bb.o
    i32 5, label %bb.p
    i32 10, label %bb.p
    i32 6, label %bb.q
    i32 11, label %bb.q
    i32 7, label %bb.r
    i32 9, label %bb.r
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = call noundef zeroext i1 @_ZNK4mlir4Type9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  br i1 %i.j, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.01.0.copyload = load ptr, ptr %2, align 8, !tbaa !18
  %i.k = call fastcc noundef zeroext i1 @_ZN4mlir3accL20isFloatOrComplexTypeENS_4TypeE(ptr %.sroa.01.0.copyload)
  br i1 %i.k, label %bb.t, label %bb.s

end_hunk_0
