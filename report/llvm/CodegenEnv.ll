Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CodegenEnv?download=true
inline.NumInlined: 790
inline.NumDeleted: 541
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"class.mlir::Value" = type { ptr }
%"class.mlir::MutableOperandRange" = type { ptr, i32, i32, %"class.llvm::SmallVector.303" }
%"class.llvm::SmallVector.303" = type { %"class.llvm::SmallVectorImpl.304", %"struct.llvm::SmallVectorStorage.307" }
%"class.llvm::SmallVectorImpl.304" = type { %"class.llvm::SmallVectorTemplateBase.305" }
%"class.llvm::SmallVectorTemplateBase.305" = type { %"class.llvm::SmallVectorTemplateCommon.306" }
%"class.llvm::SmallVectorTemplateCommon.306" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.307" = type { [24 x i8] }
%"class.llvm::SmallVector.125" = type { %"class.llvm::SmallVectorImpl.126", %"struct.llvm::SmallVectorStorage.129" }
%"class.llvm::SmallVectorImpl.126" = type { %"class.llvm::SmallVectorTemplateBase.127" }
%"class.llvm::SmallVectorTemplateBase.127" = type { %"class.llvm::SmallVectorTemplateCommon.128" }
%"class.llvm::SmallVectorTemplateCommon.128" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.129" = type { [48 x i8] }
%"class.mlir::sparse_tensor::SparseTensorType" = type { %"class.mlir::RankedTensorType", %"class.mlir::sparse_tensor::SparseTensorEncodingAttr", i64, %"class.mlir::AffineMap", %"class.mlir::AffineMap" }
%"class.mlir::RankedTensorType" = type { %"class.mlir::detail::StorageUserBase.130" }
%"class.mlir::detail::StorageUserBase.130" = type { %"class.mlir::TensorType" }
%"class.mlir::TensorType" = type { %"class.mlir::Type" }
%"class.mlir::Type" = type { ptr }
%"class.mlir::sparse_tensor::SparseTensorEncodingAttr" = type { %"class.mlir::detail::StorageUserBase.102" }
%"class.mlir::detail::StorageUserBase.102" = type { %"class.mlir::Attribute" }
%"class.mlir::Attribute" = type { ptr }
%"class.mlir::AffineMap" = type { ptr }
%"class.mlir::AffineMapAttr" = type { %"class.mlir::detail::StorageUserBase.271" }
%"class.mlir::detail::StorageUserBase.271" = type { %"class.mlir::Attribute" }
%"class.mlir::ArrayAttr" = type { %"class.mlir::detail::StorageUserBase.264" }
%"class.mlir::detail::StorageUserBase.264" = type { %"class.mlir::Attribute" }
%"class.llvm::SmallVector.91" = type { %"class.llvm::SmallVectorImpl.92", %"struct.llvm::SmallVectorStorage.95" }
%"class.llvm::SmallVectorImpl.92" = type { %"class.llvm::SmallVectorTemplateBase.93" }
%"class.llvm::SmallVectorTemplateBase.93" = type { %"class.llvm::SmallVectorTemplateCommon.94" }
%"class.llvm::SmallVectorTemplateCommon.94" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.95" = type { [48 x i8] }
%"class.mlir::ValueRange" = type { %"class.llvm::detail::indexed_accessor_range_base" }
%"class.llvm::detail::indexed_accessor_range_base" = type { %"class.llvm::PointerUnion", i64 }
%"class.llvm::PointerUnion" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers" }
%"class.llvm::pointer_union_detail::PointerUnionMembers" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.110" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.110" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.111" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.111" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.112" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.112" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.113" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.113" = type { %"struct.llvm::detail::PunnedPointer" }
%"struct.llvm::detail::PunnedPointer" = type { [8 x i8] }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.llvm::function_ref" = type { ptr, i64 }
%class.anon = type { ptr }
%"class.mlir::linalg::IteratorTypeAttr" = type { %"class.mlir::detail::StorageUserBase.302" }
%"class.mlir::detail::StorageUserBase.302" = type { %"class.mlir::Attribute" }
%"class.std::vector.105" = type { %"struct.std::_Vector_base.106" }
%"struct.std::_Vector_base.106" = type { %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE21getIteratorTypesArrayEv = comdat any

$_ZN4mlir13sparse_tensor16SparseTensorTypeC2ENS_16RankedTensorTypeE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [15 x i8] c"linalg.generic\00", align 1
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_13bufferization13AllocTensorOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8

@_ZN4mlir13sparse_tensor10CodegenEnvC1ENS_6linalg9GenericOpENS_21SparsificationOptionsEjjj = unnamed_addr alias void (ptr, ptr, i64, i8, i32, i32, i32), ptr @_ZN4mlir13sparse_tensor10CodegenEnvC2ENS_6linalg9GenericOpENS_21SparsificationOptionsEjjj

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir13sparse_tensor10CodegenEnvC2ENS_6linalg9GenericOpENS_21SparsificationOptionsEjjj(ptr noundef nonnull align 8 dereferenceable(860) initializes((0, 17)) %0, ptr %1, i64 %2, i8 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %3, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4mlir13sparse_tensor6MergerC1Ejjj(ptr noundef nonnull align 8 dereferenceable(472) %i.b, i32 noundef %4, i32 noundef %5, i32 noundef %6) #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 784
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.c, i8 0, i64 288, i1 false)
  store i32 -1, ptr %i.d, align 8, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 840
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  store i32 -1, ptr %i.f, align 8, !tbaa !114
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 844
  store i32 -1, ptr %i.g, align 4, !tbaa !115
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 848
  store ptr null, ptr %i.h, align 8, !tbaa !116
  ret void
}

declare void @_ZN4mlir13sparse_tensor6MergerC1Ejjj(ptr noundef nonnull align 8 dereferenceable(472), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir13sparse_tensor10CodegenEnv13initTensorExpEv(ptr noundef nonnull align 8 dereferenceable(860) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8
  %i.b = tail call i64 @_ZN4mlir13sparse_tensor6Merger24buildTensorExpFromLinalgENS_6linalg9GenericOpE(ptr noundef nonnull align 8 dereferenceable(472) %i.a, ptr %.sroa.0.0.copyload.i) #16 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.b to i32 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4mlir13sparse_tensor10CodegenEnv21isAdmissibleTensorExpEj(ptr noundef nonnull align 8 dereferenceable(860) %0, i32 noundef %.sroa.0.0.extract.trunc)
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 856
  store i32 %.sroa.0.0.extract.trunc, ptr %i.e, align 8, !tbaa !145
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i8 %.sroa.01.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i64 @_ZN4mlir13sparse_tensor6Merger24buildTensorExpFromLinalgENS_6linalg9GenericOpE(ptr noundef nonnull align 8 dereferenceable(472), ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4mlir13sparse_tensor10CodegenEnv21isAdmissibleTensorExpEj(ptr noundef nonnull align 8 dereferenceable(860) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::Value", align 8       ; 5 uses
  %3 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  %4 = alloca %"class.llvm::SmallVector.125", align 8 ; 7 uses
  %5 = alloca %"class.mlir::sparse_tensor::SparseTensorType", align 8 ; 4 uses
  %6 = alloca %"class.llvm::SmallVector.125", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE21getIteratorTypesArrayEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.125") align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %0)
  %i.a = load ptr, ptr %4, align 8, !tbaa !117    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !118  ; 2 uses
  %i.d = zext i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.d, 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not30 = icmp eq i32 %i.c, 0
  br i1 %.not30, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.02531, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.f, %i.e
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.02531 = phi ptr [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.g = load i32, ptr %.02531, align 4, !tbaa !120
  %.not26 = icmp eq i32 %i.g, 1
  br i1 %.not26, label %.thread, label %bb.b

.thread:                                          ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = call noundef zeroext i1 @_ZNK4mlir13sparse_tensor6Merger14hasNegateOnOutEj(ptr noundef nonnull align 8 dereferenceable(472) %i.h, i32 noundef %1) #16
  %not. = xor i1 %i.i, true
  %.pre = load ptr, ptr %4, align 8, !tbaa !117
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %.thread
  %i.j = phi ptr [ %.pre, %.thread ], [ %i.a, %bb.a ], [ %i.a, %bb.b ] ; 2 uses
  %.124 = phi i1 [ %not., %.thread ], [ true, %bb.a ], [ true, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  call void @free(ptr noundef %i.j) #16
  br label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit: ; preds = %.loopexit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br i1 %.124, label %bb.d, label %bb.m

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN4mlir6linalg9GenericOp17getOutputsMutableEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::MutableOperandRange") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %i.m = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4mlir19MutableOperandRangeixEj(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef 0) #16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !117  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE17getDpsInitOperandEl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef %i.o) #16
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE17getDpsInitOperandEl.exit

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE17getDpsInitOperandEl.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.r = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %i.m) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.s, align 8, !tbaa !121
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !149
  %i.u = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.v = inttoptr i64 %i.u to ptr
  call void @_ZN4mlir13sparse_tensor16SparseTensorTypeC2ENS_16RankedTensorTypeE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = call noundef zeroext i1 @_ZNK4mlir13sparse_tensor24SparseTensorEncodingAttr10isAllDenseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br i1 %i.x, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE17getDpsInitOperandEl.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = call noundef zeroext i1 @_ZNK4mlir13sparse_tensor6Merger17isSingleConditionEjj(ptr noundef nonnull align 8 dereferenceable(472) %i.y, i32 noundef %i.r, i32 noundef %1) #16
  br i1 %i.z, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 776
  store ptr %i.m, ptr %i.aa, align 8, !tbaa !122
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 3 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE21getIteratorTypesArrayEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.125") align 8 %6, ptr noundef nonnull align 1 dereferenceable(1) %0)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !123 ; 2 uses
  %.not35 = icmp eq i32 %i.ad, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph33.preheader

.lr.ph33.preheader:                               ; preds = %bb.g
  %wide.trip.count = zext i32 %i.ad to i64
  br label %.lr.ph33

.lr.ph33:                                         ; preds = %.lr.ph33.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph33.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.ae = load ptr, ptr %6, align 8, !tbaa !117
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !120
  %i.ah = call noundef zeroext i1 @_ZN4mlir6linalg19isReductionIteratorENS_5utils12IteratorTypeE(i32 noundef %i.ag) #16
  br i1 %i.ah, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %.lr.ph33
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !113
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !113
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph33, !llvm.loop !148

._crit_edge:                                      ; preds = %bb.h, %.lr.ph33, %bb.g
  %.sroa.0.0.copyload.i27 = load ptr, ptr %i.s, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.sroa.0.0.copyload.i27, ptr %2, align 8
  %i.ak = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !151
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !154
  %i.ao = icmp eq ptr %i.an, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  %7 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  %spec.select.i.i.i.i.i.i.i = and i1 %7, %i.ao
  br i1 %spec.select.i.i.i.i.i.i.i, label %_ZL15isMaterializingN4mlir5ValueE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.ap = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #16 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i1.i, label %_ZL15isMaterializingN4mlir5ValueE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i2.i = load ptr, ptr %i.aq, align 8, !tbaa !151
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i2.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !154
  %i.at = icmp eq ptr %i.as, @_ZN4mlir6detail14TypeIDResolverINS_13bufferization13AllocTensorOpEvE2idE
  %8 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_13bufferization13AllocTensorOpEvE2idE
  %spec.select.i.i.i.i.i.i3.i = and i1 %8, %i.at
  br label %_ZL15isMaterializingN4mlir5ValueE.exit

_ZL15isMaterializingN4mlir5ValueE.exit:           ; preds = %bb.i, %bb.j, %bb.k
  %i.au = phi i1 [ true, %bb.i ], [ %spec.select.i.i.i.i.i.i3.i, %bb.k ], [ false, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.av = load ptr, ptr %6, align 8, !tbaa !117   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit28, label %bb.l

bb.l:                                             ; preds = %_ZL15isMaterializingN4mlir5ValueE.exit
  call void @free(ptr noundef %i.av) #16
  br label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit28

_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit28: ; preds = %_ZL15isMaterializingN4mlir5ValueE.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.m

bb.m:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit28, %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE17getDpsInitOperandEl.exit, %bb.f, %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit
  %.4 = phi i1 [ false, %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit ], [ %i.au, %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit28 ], [ true, %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE17getDpsInitOperandEl.exit ], [ true, %bb.f ]
  ret i1 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir13sparse_tensor10CodegenEnv9startEmitENS_18SparseEmitStrategyE(ptr noundef nonnull align 8 dereferenceable(860) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::AffineMapAttr", align 8 ; 4 uses
  %3 = alloca %"class.mlir::ArrayAttr", align 8   ; 5 uses
  %4 = alloca %"class.llvm::SmallVector.91", align 8 ; 10 uses
  %5 = alloca %"class.mlir::AffineMap", align 8   ; 4 uses
  %6 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::function_ref", align 8 ; 3 uses
  %9 = alloca %class.anon, align 8                ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 792
  store ptr %.sroa.0.0.copyload.i, ptr %i.d, align 8, !tbaa !121
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.e, align 8, !tbaa !166
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !117
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.g, align 8, !tbaa !118
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 6, ptr %i.h, align 4, !tbaa !125
  %i.i = load ptr, ptr %0, align 8, !tbaa !167    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 8388608
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %._crit_edge37, label %_ZN4mlir9Operation13getOpOperandsEv.exit, !prof !126

_ZN4mlir9Operation13getOpOperandsEv.exit:         ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !168  ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 5
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.r
  %.not2234 = icmp eq i32 %i.p, 0
  br i1 %.not2234, label %._crit_edge37, label %.lr.ph36

.lr.ph36:                                         ; preds = %_ZN4mlir9Operation13getOpOperandsEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.e

._crit_edge37.loopexit:                           ; preds = %._crit_edge
  %.pre = load ptr, ptr %4, align 8, !tbaa !117
  %.pre42 = load i32, ptr %i.g, align 8, !tbaa !118
  %i.u = zext i32 %.pre42 to i64
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %bb.c, %._crit_edge37.loopexit, %_ZN4mlir9Operation13getOpOperandsEv.exit
  %i.v = phi i64 [ %i.u, %._crit_edge37.loopexit ], [ 0, %_ZN4mlir9Operation13getOpOperandsEv.exit ], [ 0, %bb.c ]
  %i.w = phi ptr [ %.pre, %._crit_edge37.loopexit ], [ %i.f, %_ZN4mlir9Operation13getOpOperandsEv.exit ], [ %i.f, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 496
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.w, i64 %i.v) #16
  %i.y = load ptr, ptr %0, align 8, !tbaa !167
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 6, ptr %i.ab, align 8, !tbaa !171
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.ac, align 1, !tbaa !172
  store ptr @.str, ptr %7, align 8, !tbaa !173
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 14, ptr %i.ad, align 8, !tbaa !173
  %i.ae = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(34) %7) #16
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.ag = icmp ne ptr %i.af, null
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store ptr %0, ptr %9, align 8, !tbaa !131
  store ptr @"_ZN4llvm12function_refIFSt6vectorISt4pairIjjESaIS3_EEjmEE11callback_fnIZN4mlir13sparse_tensor10CodegenEnv9startEmitENS9_18SparseEmitStrategyEE3$_0EES5_ljm", ptr %8, align 8, !tbaa !175
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ak = ptrtoint ptr %9 to i64
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !176
  %i.al = load i64, ptr %6, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.an = load i64, ptr %i.am, align 8
  call void @_ZN4mlir13sparse_tensor11LoopEmitter10initializeENS_10ValueRangeENS_10StringAttrEbbjN4llvm12function_refIFSt6vectorISt4pairIjjESaIS8_EEjmEEENS_18SparseEmitStrategyE(ptr noundef nonnull align 8 dereferenceable(280) %i.x, i64 %i.al, i64 %i.an, ptr %i.ae, i1 noundef zeroext true, i1 noundef zeroext %i.ag, i32 noundef %i.ai, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %8, i32 noundef %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.ao = load ptr, ptr %4, align 8, !tbaa !117   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.f
  br i1 %i.ap, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge37
  call void @free(ptr noundef %i.ao) #16
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit: ; preds = %._crit_edge37, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.e:                                             ; preds = %.lr.ph36, %._crit_edge
  %.02035 = phi ptr [ %i.n, %.lr.ph36 ], [ %i.bo, %._crit_edge ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02035, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i24 = load ptr, ptr %i.aq, align 8, !tbaa !121 ; 2 uses
  %i.ar = load i32, ptr %i.g, align 8, !tbaa !118 ; 2 uses
  %i.as = load i32, ptr %i.h, align 4, !tbaa !125
  %.not.i25 = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i25, label %bb.g, label %bb.f, !prof !177

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %.sroa.0.0.copyload.i24)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

bb.g:                                             ; preds = %bb.e
  %i.at = zext i32 %i.ar to i64
  %i.au = load ptr, ptr %4, align 8, !tbaa !117
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  store ptr %.sroa.0.0.copyload.i24, ptr %i.av, align 1
  %i.aw = load i32, ptr %i.g, align 8, !tbaa !118
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.g, align 8, !tbaa !118
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit: ; preds = %bb.f, %bb.g
  %i.ay = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %.02035) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.az = call ptr @_ZN4mlir6linalg9GenericOp15getIndexingMapsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  store ptr %i.az, ptr %3, align 8
  %i.ba = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #16, !noalias !178
  %i.bb = extractvalue { ptr, i64 } %i.ba, 0
  %i.bc = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #16, !noalias !178 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.bd = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %.02035) #16
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.be
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %2, align 8
  %i.bg = call ptr @_ZNK4mlir13AffineMapAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store ptr %i.bg, ptr %5, align 8
  %i.bh = call noundef i32 @_ZNK4mlir9AffineMap13getNumResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #16 ; 2 uses
  %i.bi = zext i32 %i.bh to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.sroa.0.0.copyload.i26 = load ptr, ptr %i.aq, align 8, !tbaa !121
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i26, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.bj, align 8
  %i.bk = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = call ptr @_ZN4mlir13sparse_tensor23getSparseTensorEncodingENS_4TypeE(ptr %i.bl) #16 ; 0 uses
  %.not38 = icmp eq i32 %i.bh, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit
  %i.bn = zext i32 %i.ay to i64
  br label %bb.h

._crit_edge:                                      ; preds = %_ZL18sortDependentLoopsRSt6vectorISt4pairIjjESaIS1_EE.exit, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %.02035, i64 32 ; 2 uses
  %.not22 = icmp eq ptr %i.bo, %i.s
  br i1 %.not22, label %._crit_edge37.loopexit, label %bb.e

bb.h:                                             ; preds = %.lr.ph, %_ZL18sortDependentLoopsRSt6vectorISt4pairIjjESaIS1_EE.exit
  %.033 = phi i64 [ 0, %.lr.ph ], [ %i.fv, %_ZL18sortDependentLoopsRSt6vectorISt4pairIjjESaIS1_EE.exit ] ; 2 uses
  %i.bp = load ptr, ptr %i.t, align 8, !tbaa !134
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.bn
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !137
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %.033 ; 2 uses
  %.val = load ptr, ptr %i.bs, align 8, !tbaa !139 ; 15 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %.val23 = load ptr, ptr %i.bt, align 8, !tbaa !139 ; 7 uses
end_hunk_0
