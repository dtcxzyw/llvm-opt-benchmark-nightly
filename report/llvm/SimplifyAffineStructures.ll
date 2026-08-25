Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SimplifyAffineStructures?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.mlir::RewritePatternSet" = type { ptr, %"class.std::vector.49", %"class.mlir::PDLPatternModule" }
%"class.std::vector.49" = type { %"struct.std::_Vector_base.50" }
%"struct.std::_Vector_base.50" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::RewritePattern>, std::allocator<std::unique_ptr<mlir::RewritePattern>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::RewritePattern>, std::allocator<std::unique_ptr<mlir::RewritePattern>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::RewritePattern>, std::allocator<std::unique_ptr<mlir::RewritePattern>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::RewritePattern>, std::allocator<std::unique_ptr<mlir::RewritePattern>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.mlir::PDLPatternModule" = type { %"class.mlir::OwningOpRef", %"class.llvm::SmallVector.87", %"class.llvm::DenseMap.92", %"class.llvm::StringMap", %"class.llvm::StringMap" }
%"class.mlir::OwningOpRef" = type { %"class.mlir::ModuleOp" }
%"class.mlir::ModuleOp" = type { %"class.mlir::Op.54" }
%"class.mlir::Op.54" = type { %"class.mlir::OpState" }
%"class.mlir::OpState" = type { ptr }
%"class.llvm::SmallVector.87" = type { %"class.llvm::SmallVectorImpl.88", %"struct.llvm::SmallVectorStorage.91" }
%"class.llvm::SmallVectorImpl.88" = type { %"class.llvm::SmallVectorTemplateBase.89" }
%"class.llvm::SmallVectorTemplateBase.89" = type { %"class.llvm::SmallVectorTemplateCommon.90" }
%"class.llvm::SmallVectorTemplateCommon.90" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.91" = type { [48 x i8] }
%"class.llvm::DenseMap.92" = type { ptr, ptr, i32, i32 }
%"class.llvm::StringMap" = type { %"class.llvm::StringMapImpl.base", [4 x i8] }
%"class.llvm::StringMapImpl.base" = type <{ ptr, i32, i32, i32 }>
%"class.mlir::FrozenRewritePatternSet" = type { %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.llvm::SmallVector.94" = type { %"class.llvm::SmallVectorImpl.95", %"struct.llvm::SmallVectorStorage.98" }
%"class.llvm::SmallVectorImpl.95" = type { %"class.llvm::SmallVectorTemplateBase.96" }
%"class.llvm::SmallVectorTemplateBase.96" = type { %"class.llvm::SmallVectorTemplateCommon.97" }
%"class.llvm::SmallVectorTemplateCommon.97" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.98" = type { [48 x i8] }
%class.anon = type { ptr, ptr }
%"class.mlir::GreedyRewriteConfig" = type <{ ptr, i8, [3 x i8], i32, i64, i64, i32, [4 x i8], ptr, i8, i8, i8, [5 x i8] }>
%"class.mlir::StringAttr" = type { %"class.mlir::detail::StorageUserBase.129" }
%"class.mlir::detail::StorageUserBase.129" = type { %"class.mlir::Attribute" }
%"class.mlir::Attribute" = type { ptr }
%"class.std::unique_ptr.28" = type { %"struct.std::__uniq_ptr_data.29" }
%"struct.std::__uniq_ptr_data.29" = type { %"class.std::__uniq_ptr_impl.30" }
%"class.std::__uniq_ptr_impl.30" = type { %"class.std::tuple.31" }
%"class.std::tuple.31" = type { %"struct.std::_Tuple_impl.32" }
%"struct.std::_Tuple_impl.32" = type { %"struct.std::_Head_base.35" }
%"struct.std::_Head_base.35" = type { ptr }
%"class.mlir::IntegerSetAttr" = type { %"class.mlir::detail::StorageUserBase.131" }
%"class.mlir::detail::StorageUserBase.131" = type { %"class.mlir::Attribute" }
%"struct.mlir::MutableAffineMap" = type { %"class.llvm::SmallVector.148", i32, i32, ptr }
%"class.llvm::SmallVector.148" = type { %"class.llvm::SmallVectorImpl.149", %"struct.llvm::SmallVectorStorage.152" }
%"class.llvm::SmallVectorImpl.149" = type { %"class.llvm::SmallVectorTemplateBase.150" }
%"class.llvm::SmallVectorTemplateBase.150" = type { %"class.llvm::SmallVectorTemplateCommon.151" }
%"class.llvm::SmallVectorTemplateCommon.151" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.152" = type { [64 x i8] }
%"class.mlir::AffineMapAttr" = type { %"class.mlir::detail::StorageUserBase.127" }
%"class.mlir::detail::StorageUserBase.127" = type { %"class.mlir::Attribute" }
%"class.mlir::DictionaryAttr" = type { %"class.mlir::detail::StorageUserBase" }
%"class.mlir::detail::StorageUserBase" = type { %"class.mlir::Attribute" }
%"class.mlir::NamedAttribute" = type { %"class.mlir::Attribute", %"class.mlir::Attribute" }
%"class.mlir::NamedAttrList" = type { %"class.llvm::SmallVector.161", %"class.llvm::PointerIntPair.166" }
%"class.llvm::SmallVector.161" = type { %"class.llvm::SmallVectorImpl.162", %"struct.llvm::SmallVectorStorage.165" }
%"class.llvm::SmallVectorImpl.162" = type { %"class.llvm::SmallVectorTemplateBase.163" }
%"class.llvm::SmallVectorTemplateBase.163" = type { %"class.llvm::SmallVectorTemplateCommon.164" }
%"class.llvm::SmallVectorTemplateCommon.164" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.165" = type { [64 x i8] }
%"class.llvm::PointerIntPair.166" = type { %"struct.llvm::detail::PunnedPointer.167" }
%"struct.llvm::detail::PunnedPointer.167" = type { [8 x i8] }
%"class.llvm::DenseMap.25" = type { ptr, ptr, i32, i32 }

$_ZN4mlir4Pass10initializeEPNS_11MLIRContextE = comdat any

$_ZNK4mlir13OperationPassINS_4func6FuncOpEE13canScheduleOnENS_23RegisteredOperationNameE = comdat any

$_ZNK4mlir4Pass13canScheduleOnEPNS_9OperationE = comdat any

$_ZN4mlir4PassD2Ev = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E16shrink_and_clearEv = comdat any

$_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE = comdat any

$_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE15growAndPushBackES3_ = comdat any

$_ZN4mlir16PDLPatternModuleD2Ev = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8copyFromERKS9_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN12_GLOBAL__N_124SimplifyAffineStructuresE = internal unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_124SimplifyAffineStructuresD2Ev, ptr @_ZN12_GLOBAL__N_124SimplifyAffineStructuresD0Ev, ptr @_ZNK4mlir6affine4impl28SimplifyAffineStructuresBaseIN12_GLOBAL__N_124SimplifyAffineStructuresEE7getNameEv, ptr @_ZNK4mlir6affine4impl28SimplifyAffineStructuresBaseIN12_GLOBAL__N_124SimplifyAffineStructuresEE20getDependentDialectsERNS_15DialectRegistryE, ptr @_ZNK4mlir6affine4impl28SimplifyAffineStructuresBaseIN12_GLOBAL__N_124SimplifyAffineStructuresEE11getArgumentEv, ptr @_ZNK4mlir6affine4impl28SimplifyAffineStructuresBaseIN12_GLOBAL__N_124SimplifyAffineStructuresEE14getDescriptionEv, ptr @_ZN4mlir4Pass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEE, ptr @_ZN12_GLOBAL__N_124SimplifyAffineStructures14runOnOperationEv, ptr @_ZN4mlir4Pass10initializeEPNS_11MLIRContextE, ptr @_ZNK4mlir13OperationPassINS_4func6FuncOpEE13canScheduleOnENS_23RegisteredOperationNameE, ptr @_ZNK4mlir4Pass13canScheduleOnEPNS_9OperationE, ptr @_ZNK4mlir6affine4impl28SimplifyAffineStructuresBaseIN12_GLOBAL__N_124SimplifyAffineStructuresEE9clonePassEv, ptr @_ZN4mlir4Pass6anchorEv] }, align 8
@_ZZN4mlir6affine4impl28SimplifyAffineStructuresBaseIN12_GLOBAL__N_124SimplifyAffineStructuresEE13resolveTypeIDEvE2id = internal global %"class.mlir::SelfOwningTypeID" zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"func.func\00", align 1
@_ZTVN4mlir4PassE = external unnamed_addr constant { [15 x ptr] }, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"SimplifyAffineStructures\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"affine-simplify-structures\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"Simplify affine expressions in maps/sets and normalize memrefs\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13AffineMapAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_14IntegerSetAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6affine11AffineForOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6affine10AffineIfOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6affine13AffineApplyOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6affine34createSimplifyAffineStructuresPassEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
_ZNSt10unique_ptrIN12_GLOBAL__N_124SimplifyAffineStructuresESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(360) ptr @_Znwm(i64 noundef 360) #14, !noalias !8 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.b, i8 0, i64 240, i1 false), !noalias !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN4mlir6affine4impl28SimplifyAffineStructuresBaseIN12_GLOBAL__N_124SimplifyAffineStructuresEE13resolveTypeIDEvE2id, ptr %i.c, align 8, !tbaa !11, !noalias !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.5, ptr %i.d, align 8, !noalias !8
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 9, ptr %.sroa.45.0..sroa_idx.i.i.i.i, align 8, !noalias !8
  store i8 1, ptr %i.b, align 8, !noalias !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false), !noalias !8
  store ptr %i.g, ptr %i.f, align 8, !tbaa !14, !noalias !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i32 4, ptr %i.h, align 4, !tbaa !16, !noalias !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr %i.j, ptr %i.i, align 8, !tbaa !14, !noalias !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  store i32 4, ptr %i.k, align 4, !tbaa !16, !noalias !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, i8 0, i64 64, i1 false), !noalias !8
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_124SimplifyAffineStructuresE, i64 16), ptr %i.a, align 8, !tbaa !17, !noalias !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false), !noalias !8
  store ptr %i.a, ptr %0, align 8, !tbaa !19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_124SimplifyAffineStructuresD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_124SimplifyAffineStructuresE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIN4mlir9AttributeES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.f = zext i32 %i.b to i64                     ; 2 uses
  %i.g = shl nuw nsw i64 %i.f, 4
  %i.h = add nuw nsw i64 %i.f, 31
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741820
  %i.k = add nuw nsw i64 %i.j, %i.g
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.e, i64 noundef %i.k, i64 noundef 8) #15
  br label %_ZN4llvm8DenseMapIN4mlir9AttributeES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir9AttributeES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) #15
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_124SimplifyAffineStructuresD0Ev(ptr noundef nonnull align 8 dereferenceable(360) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_124SimplifyAffineStructuresE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN12_GLOBAL__N_124SimplifyAffineStructuresD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.f = zext i32 %i.b to i64                     ; 2 uses
  %i.g = shl nuw nsw i64 %i.f, 4
  %i.h = add nuw nsw i64 %i.f, 31
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741820
  %i.k = add nuw nsw i64 %i.j, %i.g
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.e, i64 noundef %i.k, i64 noundef 8) #15, !inline_history !27
  br label %_ZN12_GLOBAL__N_124SimplifyAffineStructuresD2Ev.exit

_ZN12_GLOBAL__N_124SimplifyAffineStructuresD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(360) %0) #15, !inline_history !27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 360) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZNK4mlir6affine4impl28SimplifyAffineStructuresBaseIN12_GLOBAL__N_124SimplifyAffineStructuresEE7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.7, i64 24 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZNK4mlir6affine4impl28SimplifyAffineStructuresBaseIN12_GLOBAL__N_124SimplifyAffineStructuresEE20getDependentDialectsERNS_15DialectRegistryE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZNK4mlir6affine4impl28SimplifyAffineStructuresBaseIN12_GLOBAL__N_124SimplifyAffineStructuresEE11getArgumentEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.8, i64 26 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZNK4mlir6affine4impl28SimplifyAffineStructuresBaseIN12_GLOBAL__N_124SimplifyAffineStructuresEE14getDescriptionEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.9, i64 62 }
}

declare i8 @_ZN4mlir4Pass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEE(ptr noundef nonnull align 8 dereferenceable(336), ptr, i64, ptr, i64) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_124SimplifyAffineStructures14runOnOperationEv(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::RewritePatternSet", align 8 ; 18 uses
  %2 = alloca %"class.mlir::FrozenRewritePatternSet", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.94", align 8 ; 9 uses
  %4 = alloca %class.anon, align 8                ; 5 uses
  %5 = alloca %"class.mlir::GreedyRewriteConfig", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = shl i32 %i.f, 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.j = load i32, ptr %i.i, align 4, !tbaa !22   ; 3 uses
  %i.k = icmp ult i32 %i.h, %i.j
  %i.l = icmp ugt i32 %i.j, 64
  %or.cond.i = and i1 %i.k, %i.l
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5clearEv.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.o = zext i32 %i.j to i64
  %i.p = add nuw nsw i64 %i.o, 31
  %i.q = lshr i64 %i.p, 3
  %i.r = and i64 %i.q, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.n, i8 0, i64 %i.r, i1 false)
  store i32 0, ptr %i.e, align 8, !tbaa !28
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5clearEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5clearEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.t = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #15
  store ptr %i.t, ptr %1, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 32, i1 false)
  store ptr %i.w, ptr %i.v, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 0, ptr %i.x, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 6, ptr %i.y, align 4, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i8 0, i64 40, i1 false)
  store i32 40, ptr %i.aa, align 8, !tbaa !56
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ab, i8 0, i64 16, i1 false)
  store i32 40, ptr %i.ac, align 8, !tbaa !56
  %i.ad = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #15
  call void @_ZN4mlir6affine13AffineApplyOp27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %i.ad) #15
  %i.ae = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #15 ; 0 uses
  %i.af = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #15
  call void @_ZN4mlir6affine10AffineIfOp27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %i.af) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN4mlir23FrozenRewritePatternSetC1EONS_17RewritePatternSetEN4llvm8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr null, i64 0, ptr null, i64 0) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.ag, ptr %3, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 6, ptr %i.ai, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %0, ptr %4, align 8, !tbaa !57
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.aj, align 8, !tbaa !61
  %i.ak = ptrtoint ptr %4 to i64
  call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr nonnull @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZN12_GLOBAL__N_124SimplifyAffineStructures14runOnOperationEvE3$_0EEvlS3_", i64 %i.ak, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.al = load ptr, ptr %3, align 8, !tbaa !14
  %i.am = load i32, ptr %i.ah, align 8, !tbaa !55
  %i.an = zext i32 %i.am to i64
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.15.0..sroa_idx, i8 0, i64 5, i1 false)
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  store i32 2, ptr %.sroa.61.0..sroa_idx, align 4, !tbaa !62
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 10, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !64
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 -1, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !64
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 1, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !66
end_hunk_0
