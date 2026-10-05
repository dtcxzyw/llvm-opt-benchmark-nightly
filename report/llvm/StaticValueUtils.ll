Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StaticValueUtils?download=true
inline.NumInlined: 1629
inline.NumDeleted: 957
begin_hunk_0
%"class.llvm::mapped_iterator" = type <{ %"class.llvm::iterator_adaptor_base", %"class.llvm::callable_detail::Callable", [6 x i8] }>
%"class.llvm::iterator_adaptor_base" = type { %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator" }
%"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator" = type { %"class.llvm::indexed_accessor_iterator" }
%"class.llvm::indexed_accessor_iterator" = type { %"class.llvm::PointerUnion.18", i64 }
%"class.llvm::PointerUnion.18" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.19" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.19" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.20" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.20" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.21" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.21" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.22" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.22" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.23" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.23" = type { %"struct.llvm::detail::PunnedPointer" }
%"struct.llvm::detail::PunnedPointer" = type { [8 x i8] }
%"class.llvm::callable_detail::Callable" = type { %"class.std::optional.134" }
%"class.std::optional.134" = type { %"struct.std::_Optional_base.135" }
%"struct.std::_Optional_base.135" = type { %"struct.std::_Optional_payload.137" }
%"struct.std::_Optional_payload.137" = type { %"struct.std::_Optional_payload_base.138" }
%"struct.std::_Optional_payload_base.138" = type { i8, i8 }
%"class.mlir::ArrayAttr" = type { %"class.mlir::detail::StorageUserBase.24" }
%"class.mlir::detail::StorageUserBase.24" = type { %"class.mlir::Attribute" }
%"struct.mlir::detail::constant_int_value_binder" = type { ptr }
%"class.mlir::Type" = type { ptr }
%"class.std::optional.42" = type { %"struct.std::_Optional_base.43" }
%"struct.std::_Optional_base.43" = type { %"struct.std::_Optional_payload.45" }
%"struct.std::_Optional_payload.45" = type { %"struct.std::_Optional_payload.base.51", [7 x i8] }
%"struct.std::_Optional_payload.base.51" = type { %"struct.std::_Optional_payload_base.base.50" }
%"struct.std::_Optional_payload_base.base.50" = type <{ %"union.std::_Optional_payload_base<llvm::SmallVector<long>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::SmallVector<long>>::_Storage" = type { %"class.llvm::SmallVector.48" }
%"class.llvm::SmallVector.48" = type { %"class.llvm::SmallVectorImpl.11", %"struct.llvm::SmallVectorStorage.49" }
%"class.llvm::SmallVectorImpl.11" = type { %"class.llvm::SmallVectorTemplateBase.12" }
%"class.llvm::SmallVectorTemplateBase.12" = type { %"class.llvm::SmallVectorTemplateCommon.13" }
%"class.llvm::SmallVectorTemplateCommon.13" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.49" = type { [48 x i8] }
%"class.mlir::ValueRange" = type { %"class.llvm::detail::indexed_accessor_range_base" }
%"class.llvm::detail::indexed_accessor_range_base" = type { %"class.llvm::PointerUnion.18", i64 }
%"struct.std::pair.80" = type { %"class.llvm::SmallVector.48", %"class.llvm::SmallVector.82" }
%"class.llvm::SmallVector.82" = type { %"class.llvm::SmallVectorImpl.14", %"struct.llvm::SmallVectorStorage.83" }
%"class.llvm::SmallVectorImpl.14" = type { %"class.llvm::SmallVectorTemplateBase.15" }
%"class.llvm::SmallVectorTemplateBase.15" = type { %"class.llvm::SmallVectorTemplateCommon.16" }
%"class.llvm::SmallVectorTemplateCommon.16" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.83" = type { [48 x i8] }
%"class.llvm::function_ref" = type { ptr, i64 }
%"class.llvm::ArrayRef.84" = type { ptr, i64 }
%"class.std::optional.87" = type { %"struct.std::_Optional_base.88" }
%"struct.std::_Optional_base.88" = type { %"struct.std::_Optional_payload.90" }
%"struct.std::_Optional_payload.90" = type { %"struct.std::_Optional_payload.base.94", [7 x i8] }
%"struct.std::_Optional_payload.base.94" = type { %"struct.std::_Optional_payload_base.base.93" }
%"struct.std::_Optional_payload_base.base.93" = type { %"union.std::_Optional_payload_base<llvm::APInt>::_Storage", i8 }
%"union.std::_Optional_payload_base<llvm::APInt>::_Storage" = type { %"class.llvm::APInt" }
%"class.llvm::function_ref.86" = type { ptr, i64 }
%"class.mlir::IntegerType" = type { %"class.mlir::detail::StorageUserBase.70" }
%"class.mlir::detail::StorageUserBase.70" = type { %"class.mlir::Type" }
%"class.llvm::APSInt" = type { %"class.llvm::APInt.base", i8, [3 x i8] }
%"class.llvm::APInt.base" = type <{ %union.anon, i32 }>
%"class.std::optional.109" = type { %"struct.std::_Optional_base.110" }
%"struct.std::_Optional_base.110" = type { %"struct.std::_Optional_payload.112" }
%"struct.std::_Optional_payload.112" = type { %"struct.std::_Optional_payload.base.116", [7 x i8] }
%"struct.std::_Optional_payload.base.116" = type { %"struct.std::_Optional_payload_base.base.115" }
%"struct.std::_Optional_payload_base.base.115" = type { %"union.std::_Optional_payload_base<llvm::APSInt>::_Storage", i8 }
%"union.std::_Optional_payload_base<llvm::APSInt>::_Storage" = type { %"class.llvm::APSInt" }
%"class.llvm::SmallVector.165" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage.166" }
%"struct.llvm::SmallVectorStorage.166" = type { [8 x i8] }
%"class.mlir::DenseElementsAttr::AttributeElementIterator" = type { %"class.llvm::indexed_accessor_iterator.177" }
%"class.llvm::indexed_accessor_iterator.177" = type { ptr, i64 }
%"class.mlir::DenseElementsAttr" = type { %"class.mlir::Attribute" }
%"class.mlir::SplatElementsAttr" = type { %"class.mlir::DenseElementsAttr" }

$_ZNK4llvm6APSIntmiERKS0_ = comdat any

$_ZN4llvm6APSIntaSERKS0_ = comdat any

$_ZNSt11_Tuple_implILm0EJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEES4_S4_EEC2IRS4_JS7_S7_EvEEOT_DpOT0_ = comdat any

$_ZN4llvm15SmallVectorImplIlEaSEOS1_ = comdat any

$_ZN4mlir6detail27constant_float_value_binder5matchEPNS_9OperationE = comdat any

$_ZN4mlir6detail18constant_op_binderINS_9AttributeEE5matchEPNS_9OperationE = comdat any

$_ZN4mlir6detail27constant_float_value_binder5matchENS_9AttributeE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_ = comdat any

$_ZN4mlir6detail25constant_int_value_binder5matchENS_9AttributeE = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZN4mlir6detail14TypeIDResolverINS_9FloatAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4llvm11APFloatBase18semPPCDoubleDoubleE = external global %"struct.llvm::fltSemantics", align 4
@_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_11IntegerTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4llvm11APFloatBase8semBogusE = external global %"struct.llvm::fltSemantics", align 4
@_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.17 = private unnamed_addr constant [85 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::ConstantLike<Empty>]\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.21 = private unnamed_addr constant [66 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::FloatType]\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_9IndexTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4mlir13isZeroIntegerENS_12OpFoldResultE(i64 %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.std::optional.30", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @_ZN4mlir21getConstantAPIntValueENS_12OpFoldResultE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.30") align 8 %1, i64 %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !10, !range !11, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZN4mlir18isConstantIntValueENS_12OpFoldResultEl.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14   ; 3 uses
  %i.f = icmp ult i32 %i.e, 65
  br i1 %i.f, label %_ZNK4llvm5APInt12getSExtValueEv.exit.i.i, label %bb.c

_ZNK4llvm5APInt12getSExtValueEv.exit.i.i:         ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8
  %i.h = icmp eq i32 %i.e, 0
  %i.i = sub nuw nsw i32 64, %i.e
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = shl i64 %i.g, %i.j
  %i.l = ashr exact i64 %i.k, %i.j
  %.0.i.i.i.i = select i1 %i.h, i64 0, i64 %i.l
  br label %_ZN4mlir18isConstantIntValueENS_12OpFoldResultEl.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !17
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #15
  br label %_ZN4mlir18isConstantIntValueENS_12OpFoldResultEl.exit

_ZN4mlir18isConstantIntValueENS_12OpFoldResultEl.exit: ; preds = %bb.a, %_ZNK4llvm5APInt12getSExtValueEv.exit.i.i, %bb.c
  %.sroa.0.06.i.i = phi i64 [ %i.n, %bb.c ], [ %.0.i.i.i.i, %_ZNK4llvm5APInt12getSExtValueEv.exit.i.i ], [ undef, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.o = icmp eq i64 %.sroa.0.06.i.i, 0
  %i.p = select i1 %i.c, i1 %i.o, i1 false
  ret i1 %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4mlir18isConstantIntValueENS_12OpFoldResultEl(i64 %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::optional.30", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN4mlir21getConstantAPIntValueENS_12OpFoldResultE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.30") align 8 %2, i64 %0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !10, !range !11, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZN4mlir19getConstantIntValueENS_12OpFoldResultE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14   ; 3 uses
  %i.f = icmp ult i32 %i.e, 65
  br i1 %i.f, label %_ZNK4llvm5APInt12getSExtValueEv.exit.i, label %bb.c

_ZNK4llvm5APInt12getSExtValueEv.exit.i:           ; preds = %bb.b
  %i.g = load i64, ptr %2, align 8
  %i.h = icmp eq i32 %i.e, 0
  %i.i = sub nuw nsw i32 64, %i.e
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = shl i64 %i.g, %i.j
  %i.l = ashr exact i64 %i.k, %i.j
  %.0.i.i.i = select i1 %i.h, i64 0, i64 %i.l
  br label %_ZN4mlir19getConstantIntValueENS_12OpFoldResultE.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !17
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #15
  br label %_ZN4mlir19getConstantIntValueENS_12OpFoldResultE.exit

_ZN4mlir19getConstantIntValueENS_12OpFoldResultE.exit: ; preds = %bb.a, %_ZNK4llvm5APInt12getSExtValueEv.exit.i, %bb.c
  %.sroa.0.06.i = phi i64 [ %i.n, %bb.c ], [ %.0.i.i.i, %_ZNK4llvm5APInt12getSExtValueEv.exit.i ], [ undef, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.o = icmp eq i64 %.sroa.0.06.i, %1
  %i.p = select i1 %i.c, i1 %i.o, i1 false
  ret i1 %i.p
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4mlir11isZeroFloatENS_12OpFoldResultE(i64 %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.llvm::APFloat", align 8     ; 9 uses
  %2 = alloca %"struct.mlir::detail::constant_float_value_binder", align 8 ; 4 uses
  %3 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %4 = alloca %"class.mlir::FloatAttr", align 8   ; 4 uses
  %5 = alloca %"class.llvm::APFloat", align 8     ; 7 uses
  %i.a = and i64 %0, 4
  %i.b = icmp ne i64 %i.a, 0
  %i.c = and i64 %0, -5                           ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %.not10 = icmp eq i64 %i.c, 0
  %.not = or i1 %i.b, %.not10
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.g = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_9FloatAttrEvE2idE ; 2 uses
  %spec.select.i.i = select i1 %i.g, ptr %i.d, ptr null
  store ptr %spec.select.i.i, ptr %4, align 8
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZNK4mlir9FloatAttr8getValueEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APFloat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %i.h = load ptr, ptr %5, align 8, !tbaa !15
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %.0.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i.i, ptr %i.j, ptr %5
  %.0.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.0.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 20
  %i.k = load i8, ptr %.0.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.l = and i8 %i.k, 7
  %i.m = icmp eq i8 %i.l, 3
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %spec.select = phi i1 [ %i.m, %bb.c ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.d, ptr %3, align 8
  %i.n = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #14 ; 2 uses
  %.not.not.not.i = icmp eq ptr %i.n, null
  br i1 %.not.not.not.i, label %_ZN4mlir12matchPatternINS_6detail32constant_float_predicate_matcherEEEbNS_5ValueERKT_.exit, label %6

6:                                                ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %.not.i.i.i.i = icmp eq ptr @_ZN4llvm11APFloatBase8semBogusE, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i.i.i, label %8, label %7

7:                                                ; preds = %6
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase8semBogusE) #14
  br label %bb.f

8:                                                ; preds = %6
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase8semBogusE) #14
  br label %bb.f

bb.f:                                             ; preds = %8, %7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %1, ptr %2, align 8, !tbaa !26
  %i.o = call noundef zeroext i1 @_ZN4mlir6detail27constant_float_value_binder5matchEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.n)
  br i1 %i.o, label %bb.g, label %_ZN4mlir6detail32constant_float_predicate_matcher5matchEPNS_9OperationE.exit.i

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %1, align 8, !tbaa !15
  %.not.i.i.i.i.i = icmp eq ptr %i.p, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %.0.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i.i.i.i, ptr %i.r, ptr %1
  %.0.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 20
  %i.s = load i8, ptr %.0.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.t = and i8 %i.s, 7
  %i.u = icmp eq i8 %i.t, 3
  br label %_ZN4mlir6detail32constant_float_predicate_matcher5matchEPNS_9OperationE.exit.i

_ZN4mlir6detail32constant_float_predicate_matcher5matchEPNS_9OperationE.exit.i: ; preds = %bb.g, %bb.f
  %i.v = phi i1 [ false, %bb.f ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %_ZN4mlir12matchPatternINS_6detail32constant_float_predicate_matcherEEEbNS_5ValueERKT_.exit

_ZN4mlir12matchPatternINS_6detail32constant_float_predicate_matcherEEEbNS_5ValueERKT_.exit: ; preds = %bb.e, %_ZN4mlir6detail32constant_float_predicate_matcher5matchEPNS_9OperationE.exit.i
  %.04.i = phi i1 [ %i.v, %_ZN4mlir6detail32constant_float_predicate_matcher5matchEPNS_9OperationE.exit.i ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %_ZN4mlir12matchPatternINS_6detail32constant_float_predicate_matcherEEEbNS_5ValueERKT_.exit
  %.2 = phi i1 [ %.04.i, %_ZN4mlir12matchPatternINS_6detail32constant_float_predicate_matcherEEEbNS_5ValueERKT_.exit ], [ %spec.select, %bb.d ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZNK4mlir9FloatAttr8getValueEv(ptr dead_on_unwind writable sret(%"class.llvm::APFloat") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4mlir20isZeroIntegerOrFloatENS_12OpFoldResultE(i64 %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.std::optional.30", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @_ZN4mlir21getConstantAPIntValueENS_12OpFoldResultE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.30") align 8 %1, i64 %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !10, !range !11, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN4mlir13isZeroIntegerENS_12OpFoldResultE.exit.thread

_ZN4mlir13isZeroIntegerENS_12OpFoldResultE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14   ; 3 uses
  %i.f = icmp ult i32 %i.e, 65
  br i1 %i.f, label %_ZNK4llvm5APInt12getSExtValueEv.exit.i.i.i, label %bb.c

_ZNK4llvm5APInt12getSExtValueEv.exit.i.i.i:       ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8
  %i.h = icmp eq i32 %i.e, 0
  %i.i = sub nuw nsw i32 64, %i.e
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = shl i64 %i.g, %i.j
  %i.l = ashr exact i64 %i.k, %i.j
  br i1 %i.h, label %_ZN4mlir13isZeroIntegerENS_12OpFoldResultE.exit.thread5, label %_ZN4mlir13isZeroIntegerENS_12OpFoldResultE.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !17
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #15
  br label %_ZN4mlir13isZeroIntegerENS_12OpFoldResultE.exit

_ZN4mlir13isZeroIntegerENS_12OpFoldResultE.exit.thread5: ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %bb.e

_ZN4mlir13isZeroIntegerENS_12OpFoldResultE.exit:  ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit.i.i.i, %bb.c
  %.sroa.0.06.i.i.i = phi i64 [ %i.n, %bb.c ], [ %i.l, %_ZNK4llvm5APInt12getSExtValueEv.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.o = icmp eq i64 %.sroa.0.06.i.i.i, 0
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir13isZeroIntegerENS_12OpFoldResultE.exit.thread, %_ZN4mlir13isZeroIntegerENS_12OpFoldResultE.exit
  %i.p = tail call noundef zeroext i1 @_ZN4mlir11isZeroFloatENS_12OpFoldResultE(i64 %0)
  br label %bb.e

bb.e:                                             ; preds = %_ZN4mlir13isZeroIntegerENS_12OpFoldResultE.exit.thread5, %bb.d, %_ZN4mlir13isZeroIntegerENS_12OpFoldResultE.exit
  %i.q = phi i1 [ true, %_ZN4mlir13isZeroIntegerENS_12OpFoldResultE.exit ], [ %i.p, %bb.d ], [ true, %_ZN4mlir13isZeroIntegerENS_12OpFoldResultE.exit.thread5 ]
  ret i1 %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4mlir12isOneIntegerENS_12OpFoldResultE(i64 %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.std::optional.30", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @_ZN4mlir21getConstantAPIntValueENS_12OpFoldResultE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.30") align 8 %1, i64 %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !10, !range !11, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZN4mlir18isConstantIntValueENS_12OpFoldResultEl.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14   ; 3 uses
  %i.f = icmp ult i32 %i.e, 65
  br i1 %i.f, label %_ZNK4llvm5APInt12getSExtValueEv.exit.i.i, label %bb.c

_ZNK4llvm5APInt12getSExtValueEv.exit.i.i:         ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8
  %i.h = icmp eq i32 %i.e, 0
  %i.i = sub nuw nsw i32 64, %i.e
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = shl i64 %i.g, %i.j
  %i.l = ashr exact i64 %i.k, %i.j
  %.0.i.i.i.i = select i1 %i.h, i64 0, i64 %i.l
  br label %_ZN4mlir18isConstantIntValueENS_12OpFoldResultEl.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !17
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #15
  br label %_ZN4mlir18isConstantIntValueENS_12OpFoldResultEl.exit

_ZN4mlir18isConstantIntValueENS_12OpFoldResultEl.exit: ; preds = %bb.a, %_ZNK4llvm5APInt12getSExtValueEv.exit.i.i, %bb.c
  %.sroa.0.06.i.i = phi i64 [ %i.n, %bb.c ], [ %.0.i.i.i.i, %_ZNK4llvm5APInt12getSExtValueEv.exit.i.i ], [ undef, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.o = icmp eq i64 %.sroa.0.06.i.i, 1
  %i.p = select i1 %i.c, i1 %i.o, i1 false
  ret i1 %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir25getOffsetsSizesAndStridesEN4llvm8ArrayRefINS_5RangeEEE(ptr dead_on_unwind noalias writable sret(%"class.std::tuple") align 8 %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector", align 8 ; 11 uses
  %4 = alloca %"class.llvm::SmallVector", align 8 ; 11 uses
  %5 = alloca %"class.llvm::SmallVector", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 6, ptr %i.c, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 0, ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  store i32 6, ptr %i.f, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.g, ptr %5, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 0, ptr %i.h, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store i32 6, ptr %i.i, align 4, !tbaa !30
  %i.j = icmp ugt i64 %2, 6
  br i1 %i.j, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit11

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %2, i64 noundef 8) #14
  %.pre = load i32, ptr %i.f, align 4, !tbaa !30
  %i.k = zext i32 %.pre to i64
  %i.l = icmp ugt i64 %2, %i.k
  br i1 %i.l, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit11

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.d, i64 noundef %2, i64 noundef 8) #14
  br label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit11

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit11: ; preds = %bb.a, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit, %bb.b
  %i.m = load i32, ptr %i.i, align 4, !tbaa !30
  %i.n = zext i32 %i.m to i64
  %i.o = icmp ugt i64 %2, %i.n
  br i1 %i.o, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit12.thread, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit12

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit12.thread: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit11
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.g, i64 noundef %2, i64 noundef 8) #14
  br label %.lr.ph.preheader

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit12: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit11
  %.not23 = icmp eq i64 %2, 0
  br i1 %.not23, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit12.thread, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit12
  %.idx32.pn = mul nuw nsw i64 %2, 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.idx32.pn
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit18, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit12
  call void @_ZNSt11_Tuple_implILm0EJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEES4_S4_EEC2IRS4_JS7_S7_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %5)
end_hunk_0
begin_hunk_1_@_ZN4llvm15SmallVectorImplIlEaSEOS1_:bb.a

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load i64, ptr %i.b, align 8, !tbaa !17
  store i64 %i.t, ptr %i.s, align 8, !tbaa !17
  br label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit

_ZSt4moveIPlS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !29
  store i32 0, ptr %i.m, align 8, !tbaa !29
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !30
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 8) #14
  br label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !166

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.y, ptr align 8 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34

bb.n:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.b, align 8, !tbaa !17
  store i64 %i.z, ptr %i.y, align 8, !tbaa !17
  br label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34

_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34:               ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !29
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_moveIPlS3_EEvT_S4_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !28
  %.idx39 = shl nuw nsw i64 %.026, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx39
  %i.ae = load ptr, ptr %0, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.026
  %i.ag = sub nsw i64 %i.ab, %.026
  %gepdiff = shl nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 8 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_moveIPlS3_EEvT_S4_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_moveIPlS3_EEvT_S4_T0_.exit: ; preds = %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !29
  store i32 0, ptr %i.m, align 8, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_moveIPlS3_EEvT_S4_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplIlE12assignRemoteEOS1_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare noundef i32 @_ZNK4mlir11IntegerType8getWidthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12), i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt13compareSignedERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLEm(ptr noundef nonnull align 8 dereferenceable(12), i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir6detail27constant_float_value_binder5matchEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::Attribute", align 8   ; 5 uses
  %3 = alloca %"struct.mlir::detail::constant_op_binder", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr null, ptr %2, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %2, ptr %3, align 8, !tbaa !39
  %i.a = call noundef zeroext i1 @_ZN4mlir6detail18constant_op_binderINS_9AttributeEE5matchEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %1, i64 -8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 8
  %i.c = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, !prof !49

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id) #14
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.21, i64 49), i64 15) #14
  store ptr %i.j, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id) #14
  br label %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !23 ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !28   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !29   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.k, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.o = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i, 1    ; 3 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i, i64 %i.o ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.q = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = xor i64 %i.o, -1
  %i.t = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i, %i.s
  %.112.i.i.i.i.i.i.i.i.i.i = select i1 %i.q, ptr %i.r, ptr %.01116.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i = select i1 %i.q, i64 %i.t, i64 %i.o ; 2 uses
  %i.u = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.u, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, !llvm.loop !167

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %i.n, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.k, %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.pre-phi.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, %i.v
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i
  %i.w = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !169
  %i.x = icmp eq ptr %i.w, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.x, label %_ZN4llvm8CastInfoIN4mlir9FloatTypeEKNS1_4TypeEvE10isPossibleES3_.exit.i, label %_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit

_ZN4llvm8CastInfoIN4mlir9FloatTypeEKNS1_4TypeEvE10isPossibleES3_.exit.i: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !171
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit, label %_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit.thread

_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, %bb.e, %_ZN4llvm8CastInfoIN4mlir9FloatTypeEKNS1_4TypeEvE10isPossibleES3_.exit.i
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %i.ac = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  %i.ad = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE
  %spec.select.i = or i1 %i.ac, %i.ad
  br i1 %spec.select.i, label %_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit.thread, label %bb.f

_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit.thread: ; preds = %_ZN4llvm8CastInfoIN4mlir9FloatTypeEKNS1_4TypeEvE10isPossibleES3_.exit.i, %_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !35
  %i.ae = call noundef zeroext i1 @_ZN4mlir6detail27constant_float_value_binder5matchENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %.sroa.0.0.copyload)
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit.thread, %_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.ae, %_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit.thread ], [ false, %_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret i1 %.1
}

declare void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29)) unnamed_addr #2

declare void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(29)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir6detail18constant_op_binderINS_9AttributeEE5matchEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.165", align 8 ; 8 uses
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #14
  %.not.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.17, i64 49), i64 34) #14
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #14
  br label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit

_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !23
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !175  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !177
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr %.sroa.01.0.copyload.i.i.i.i.i) #14, !inline_history !172
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.l, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 1, ptr %i.m, align 4, !tbaa !30
  %i.n = call i8 @_ZN4mlir9Operation4foldEN4llvm8ArrayRefINS_9AttributeEEERNS1_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(16) %2) #14 ; 0 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !28     ; 3 uses
  %.0.copyload.i.i.i.i = load i64, ptr %i.o, align 8
  %i.p = and i64 %.0.copyload.i.i.i.i, -5         ; 2 uses
  %i.q = icmp ne i64 %i.p, 0                      ; 2 uses
  br i1 %i.q, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.p, ptr %i.r, align 8, !tbaa !35
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.f, %bb.e
  %i.s = icmp eq ptr %i.o, %i.k
  br i1 %i.s, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj1EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  call void @free(ptr noundef nonnull %i.o) #14
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj1EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj1EED2Ev.exit: ; preds = %.critedge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.h

bb.h:                                             ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj1EED2Ev.exit
  %.2 = phi i1 [ %i.q, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj1EED2Ev.exit ], [ false, %_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir6detail27constant_float_value_binder5matchENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::FloatAttr", align 8   ; 4 uses
  %3 = alloca %"class.llvm::APFloat", align 8     ; 5 uses
  %4 = alloca %"class.mlir::DenseElementsAttr::AttributeElementIterator", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DenseElementsAttr::AttributeElementIterator", align 8 ; 3 uses
  %6 = alloca %"class.mlir::DenseElementsAttr::AttributeElementIterator", align 8 ; 5 uses
  %7 = alloca %"class.mlir::DenseElementsAttr", align 8 ; 5 uses
  %8 = alloca %"class.mlir::FloatAttr", align 8   ; 5 uses
  %9 = alloca %"class.llvm::APFloat", align 8     ; 5 uses
  %10 = alloca %"class.mlir::SplatElementsAttr", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.b = load ptr, ptr %1, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.d = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_9FloatAttrEvE2idE ; 2 uses
  %spec.select.i.i.i = select i1 %i.d, ptr %1, ptr null
  store ptr %spec.select.i.i.i, ptr %8, align 8
  br i1 %i.d, label %_ZN4mlir6detail17attr_value_binderINS_9FloatAttrEN4llvm7APFloatEvE5matchENS_9AttributeE.exit.thread, label %bb.b

_ZN4mlir6detail17attr_value_binderINS_9FloatAttrEN4llvm7APFloatEvE5matchENS_9AttributeE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @_ZNK4mlir9FloatAttr8getValueEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APFloat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %8) #14
  %i.e = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %9) #14 ; 0 uses
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.f = tail call noundef zeroext i1 @_ZN4mlir17DenseElementsAttr7classofENS_9AttributeE(ptr nonnull %1) #14
  %spec.select.i.i.i.i.i.i = select i1 %i.f, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i.i.i.i.i, ptr %7, align 8
  %.not.i.i.i.i = icmp eq ptr %spec.select.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm8CastInfoIN4mlir17SplatElementsAttrENS1_9AttributeEvE10isPossibleES3_.exit.thread.i.i, label %_ZN4llvm8CastInfoIN4mlir17SplatElementsAttrENS1_9AttributeEvE10isPossibleES3_.exit.i.i

_ZN4llvm8CastInfoIN4mlir17SplatElementsAttrENS1_9AttributeEvE10isPossibleES3_.exit.thread.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %_ZN4llvm8dyn_castIN4mlir17SplatElementsAttrENS1_9AttributeEEEDcRT0_.exit.thread

_ZN4llvm8CastInfoIN4mlir17SplatElementsAttrENS1_9AttributeEvE10isPossibleES3_.exit.i.i: ; preds = %bb.b
  %i.g = call noundef zeroext i1 @_ZNK4mlir17DenseElementsAttr7isSplatEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br i1 %i.g, label %bb.c, label %_ZN4llvm8dyn_castIN4mlir17SplatElementsAttrENS1_9AttributeEEEDcRT0_.exit.thread

bb.c:                                             ; preds = %_ZN4llvm8CastInfoIN4mlir17SplatElementsAttrENS1_9AttributeEvE10isPossibleES3_.exit.i.i
  store ptr %1, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !182
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !182
  %i.h = call { ptr, ptr } @_ZNK4mlir17DenseElementsAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #14, !noalias !183 ; 0 uses
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr %10, align 8, !noalias !183
  call void @_ZN4mlir17DenseElementsAttr24AttributeElementIteratorC1ES0_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %.sroa.01.0.copyload.i.i.i.i, i64 noundef 0) #14, !noalias !183
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %10, align 8, !noalias !183
  %i.i = call noundef i64 @_ZNK4mlir17DenseElementsAttr14getNumElementsEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #14, !noalias !183
  call void @_ZN4mlir17DenseElementsAttr24AttributeElementIteratorC1ES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %.sroa.0.0.copyload.i.i.i.i, i64 noundef %i.i) #14, !noalias !183
  %i.j = load ptr, ptr %4, align 8, !noalias !183
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noalias !183
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !182
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !182
  store ptr %i.j, ptr %6, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = call ptr @_ZNK4mlir17DenseElementsAttr24AttributeElementIteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i4 = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.q = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i4, @_ZN4mlir6detail14TypeIDResolverINS_9FloatAttrEvE2idE ; 3 uses
  %spec.select.i.i.i5 = select i1 %i.q, ptr %i.n, ptr null
  store ptr %spec.select.i.i.i5, ptr %2, align 8
  br i1 %i.q, label %bb.d, label %_ZN4mlir6detail17attr_value_binderINS_9FloatAttrEN4llvm7APFloatEvE5matchENS_9AttributeE.exit6

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZNK4mlir9FloatAttr8getValueEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APFloat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  %i.r = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3) #14 ; 0 uses
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %_ZN4mlir6detail17attr_value_binderINS_9FloatAttrEN4llvm7APFloatEvE5matchENS_9AttributeE.exit6

_ZN4mlir6detail17attr_value_binderINS_9FloatAttrEN4llvm7APFloatEvE5matchENS_9AttributeE.exit6: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %_ZN4llvm8dyn_castIN4mlir17SplatElementsAttrENS1_9AttributeEEEDcRT0_.exit.thread

_ZN4llvm8dyn_castIN4mlir17SplatElementsAttrENS1_9AttributeEEEDcRT0_.exit.thread: ; preds = %_ZN4llvm8CastInfoIN4mlir17SplatElementsAttrENS1_9AttributeEvE10isPossibleES3_.exit.thread.i.i, %_ZN4llvm8CastInfoIN4mlir17SplatElementsAttrENS1_9AttributeEvE10isPossibleES3_.exit.i.i, %_ZN4mlir6detail17attr_value_binderINS_9FloatAttrEN4llvm7APFloatEvE5matchENS_9AttributeE.exit6
  %spec.select = phi i1 [ %i.q, %_ZN4mlir6detail17attr_value_binderINS_9FloatAttrEN4llvm7APFloatEvE5matchENS_9AttributeE.exit6 ], [ false, %_ZN4llvm8CastInfoIN4mlir17SplatElementsAttrENS1_9AttributeEvE10isPossibleES3_.exit.i.i ], [ false, %_ZN4llvm8CastInfoIN4mlir17SplatElementsAttrENS1_9AttributeEvE10isPossibleES3_.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.e

bb.e:                                             ; preds = %_ZN4mlir6detail17attr_value_binderINS_9FloatAttrEN4llvm7APFloatEvE5matchENS_9AttributeE.exit.thread, %_ZN4llvm8dyn_castIN4mlir17SplatElementsAttrENS1_9AttributeEEEDcRT0_.exit.thread
  %.1 = phi i1 [ %spec.select, %_ZN4llvm8dyn_castIN4mlir17SplatElementsAttrENS1_9AttributeEEEDcRT0_.exit.thread ], [ true, %_ZN4mlir6detail17attr_value_binderINS_9FloatAttrEN4llvm7APFloatEvE5matchENS_9AttributeE.exit.thread ]
  ret i1 %.1
}

declare i8 @_ZN4mlir9Operation4foldEN4llvm8ArrayRefINS_9AttributeEEERNS1_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr, i64, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #9

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4mlir17DenseElementsAttr7isSplatEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4mlir17DenseElementsAttr7classofENS_9AttributeE(ptr) local_unnamed_addr #2

declare ptr @_ZNK4mlir17DenseElementsAttr24AttributeElementIteratordeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare { ptr, ptr } @_ZNK4mlir17DenseElementsAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4mlir17DenseElementsAttr24AttributeElementIteratorC1ES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64 noundef) unnamed_addr #2

declare noundef i64 @_ZNK4mlir17DenseElementsAttr14getNumElementsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
end_hunk_1
