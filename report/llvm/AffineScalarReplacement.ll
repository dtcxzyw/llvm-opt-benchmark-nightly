Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AffineScalarReplacement?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"class.mlir::TypeID" = type { ptr }
%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.mlir::AnalysisManager" = type { ptr }
%"class.mlir::StringAttr" = type { %"class.mlir::detail::StorageUserBase" }
%"class.mlir::detail::StorageUserBase" = type { %"class.mlir::Attribute" }
%"class.mlir::Attribute" = type { ptr }
%"class.std::unique_ptr.26" = type { %"struct.std::__uniq_ptr_data.27" }
%"struct.std::__uniq_ptr_data.27" = type { %"class.std::__uniq_ptr_impl.28" }
%"class.std::__uniq_ptr_impl.28" = type { %"class.std::tuple.29" }
%"class.std::tuple.29" = type { %"struct.std::_Tuple_impl.30" }
%"struct.std::_Tuple_impl.30" = type { %"struct.std::_Head_base.33" }
%"struct.std::_Head_base.33" = type { ptr }
%"class.std::tuple.107" = type { %"struct.std::_Tuple_impl.108" }
%"struct.std::_Tuple_impl.108" = type { %"struct.std::_Head_base.109" }
%"struct.std::_Head_base.109" = type { ptr }
%"class.std::tuple.110" = type { %"struct.std::_Tuple_impl.111" }
%"struct.std::_Tuple_impl.111" = type { %"struct.std::_Head_base.112" }
%"struct.std::_Head_base.112" = type { ptr }
%"struct.std::pair.77" = type { %"class.mlir::TypeID", %"class.std::unique_ptr.79" }
%"class.std::unique_ptr.79" = type { %"struct.std::__uniq_ptr_data.80" }
%"struct.std::__uniq_ptr_data.80" = type { %"class.std::__uniq_ptr_impl.81" }
%"class.std::__uniq_ptr_impl.81" = type { %"class.std::tuple.82" }
%"class.std::tuple.82" = type { %"struct.std::_Tuple_impl.83" }
%"struct.std::_Tuple_impl.83" = type { %"struct.std::_Head_base.86" }
%"struct.std::_Head_base.86" = type { ptr }
%"class.llvm::DenseMap.59" = type { ptr, ptr, i32, i32 }

$_ZN4mlir4PassD2Ev = comdat any

$_ZN4mlir4Pass10initializeEPNS_11MLIRContextE = comdat any

$_ZNK4mlir13OperationPassINS_4func6FuncOpEE13canScheduleOnENS_23RegisteredOperationNameE = comdat any

$_ZNK4mlir4Pass13canScheduleOnEPNS_9OperationE = comdat any

$_ZN4mlir6detail11AnalysisMap15getAnalysisImplINS_13DominanceInfoENS_4func6FuncOpEEERT_PNS_16PassInstrumentorET0_RNS_15AnalysisManagerE = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_6detail15AnalysisConceptESt14default_deleteIS6_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESG_IJOS9_EEEEERSA_DpOT_ = comdat any

$_ZN4mlir6detail13AnalysisModelINS_13DominanceInfoEED2Ev = comdat any

$_ZN4mlir6detail13AnalysisModelINS_13DominanceInfoEED0Ev = comdat any

$_ZN4mlir6detail13AnalysisModelINS_13DominanceInfoEE10invalidateERNS0_17PreservedAnalysesE = comdat any

$_ZN4mlir6detail17PreservedAnalyses10unpreserveINS_13DominanceInfoEEEvv = comdat any

$_ZN4mlir6detail11AnalysisMap15getAnalysisImplINS_17PostDominanceInfoENS_4func6FuncOpEEERT_PNS_16PassInstrumentorET0_RNS_15AnalysisManagerE = comdat any

$_ZN4mlir6detail13AnalysisModelINS_17PostDominanceInfoEED2Ev = comdat any

$_ZN4mlir6detail13AnalysisModelINS_17PostDominanceInfoEED0Ev = comdat any

$_ZN4mlir6detail13AnalysisModelINS_17PostDominanceInfoEE10invalidateERNS0_17PreservedAnalysesE = comdat any

$_ZN4mlir6detail17PreservedAnalyses10unpreserveINS_17PostDominanceInfoEEEvv = comdat any

$_ZN4mlir6detail11AnalysisMap15getAnalysisImplINS_13AliasAnalysisENS_4func6FuncOpEEERT_PNS_16PassInstrumentorET0_RNS_15AnalysisManagerE = comdat any

$_ZN4mlir6detail13AnalysisModelINS_13AliasAnalysisEED2Ev = comdat any

$_ZN4mlir6detail13AnalysisModelINS_13AliasAnalysisEED0Ev = comdat any

$_ZN4mlir6detail13AnalysisModelINS_13AliasAnalysisEE10invalidateERNS0_17PreservedAnalysesE = comdat any

$_ZN4mlir6detail17PreservedAnalyses10unpreserveINS_13AliasAnalysisEEEvv = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_13DominanceInfoEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_13DominanceInfoEvE13resolveTypeIDEvE2id = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZTVN4mlir6detail13AnalysisModelINS_13DominanceInfoEEE = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_17PostDominanceInfoEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_17PostDominanceInfoEvE13resolveTypeIDEvE2id = comdat any

$_ZTVN4mlir6detail13AnalysisModelINS_17PostDominanceInfoEEE = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_13AliasAnalysisEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_13AliasAnalysisEvE13resolveTypeIDEvE2id = comdat any

$_ZTVN4mlir6detail13AnalysisModelINS_13AliasAnalysisEEE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN12_GLOBAL__N_123AffineScalarReplacementE = internal unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr null, ptr @_ZN4mlir4PassD2Ev, ptr @_ZN12_GLOBAL__N_123AffineScalarReplacementD0Ev, ptr @_ZNK4mlir6affine4impl27AffineScalarReplacementBaseIN12_GLOBAL__N_123AffineScalarReplacementEE7getNameEv, ptr @_ZNK4mlir6affine4impl27AffineScalarReplacementBaseIN12_GLOBAL__N_123AffineScalarReplacementEE20getDependentDialectsERNS_15DialectRegistryE, ptr @_ZNK4mlir6affine4impl27AffineScalarReplacementBaseIN12_GLOBAL__N_123AffineScalarReplacementEE11getArgumentEv, ptr @_ZNK4mlir6affine4impl27AffineScalarReplacementBaseIN12_GLOBAL__N_123AffineScalarReplacementEE14getDescriptionEv, ptr @_ZN4mlir4Pass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEE, ptr @_ZN12_GLOBAL__N_123AffineScalarReplacement14runOnOperationEv, ptr @_ZN4mlir4Pass10initializeEPNS_11MLIRContextE, ptr @_ZNK4mlir13OperationPassINS_4func6FuncOpEE13canScheduleOnENS_23RegisteredOperationNameE, ptr @_ZNK4mlir4Pass13canScheduleOnEPNS_9OperationE, ptr @_ZNK4mlir6affine4impl27AffineScalarReplacementBaseIN12_GLOBAL__N_123AffineScalarReplacementEE9clonePassEv, ptr @_ZN4mlir4Pass6anchorEv] }, align 8
@_ZZN4mlir6affine4impl27AffineScalarReplacementBaseIN12_GLOBAL__N_123AffineScalarReplacementEE13resolveTypeIDEvE2id = internal global %"class.mlir::SelfOwningTypeID" zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"func.func\00", align 1
@_ZTVN4mlir4PassE = external unnamed_addr constant { [15 x ptr] }, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"AffineScalarReplacement\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"affine-scalrep\00", align 1
@.str.9 = private unnamed_addr constant [104 x i8] c"Replace affine memref accesses by scalars by forwarding stores to loads and eliminating redundant loads\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_13DominanceInfoEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_13DominanceInfoEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.10 = private unnamed_addr constant [70 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::DominanceInfo]\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTVN4mlir6detail13AnalysisModelINS_13DominanceInfoEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4mlir6detail13AnalysisModelINS_13DominanceInfoEED2Ev, ptr @_ZN4mlir6detail13AnalysisModelINS_13DominanceInfoEED0Ev, ptr @_ZN4mlir6detail13AnalysisModelINS_13DominanceInfoEE10invalidateERNS0_17PreservedAnalysesE] }, comdat, align 8
@_ZZN4mlir6detail14TypeIDResolverINS_17PostDominanceInfoEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_17PostDominanceInfoEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.13 = private unnamed_addr constant [74 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::PostDominanceInfo]\00", align 1
@_ZTVN4mlir6detail13AnalysisModelINS_17PostDominanceInfoEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4mlir6detail13AnalysisModelINS_17PostDominanceInfoEED2Ev, ptr @_ZN4mlir6detail13AnalysisModelINS_17PostDominanceInfoEED0Ev, ptr @_ZN4mlir6detail13AnalysisModelINS_17PostDominanceInfoEE10invalidateERNS0_17PreservedAnalysesE] }, comdat, align 8
@_ZZN4mlir6detail14TypeIDResolverINS_13AliasAnalysisEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_13AliasAnalysisEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.14 = private unnamed_addr constant [70 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::AliasAnalysis]\00", align 1
@_ZTVN4mlir6detail13AnalysisModelINS_13AliasAnalysisEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4mlir6detail13AnalysisModelINS_13AliasAnalysisEED2Ev, ptr @_ZN4mlir6detail13AnalysisModelINS_13AliasAnalysisEED0Ev, ptr @_ZN4mlir6detail13AnalysisModelINS_13AliasAnalysisEE10invalidateERNS0_17PreservedAnalysesE] }, comdat, align 8
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6affine33createAffineScalarReplacementPassEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
_ZNSt10unique_ptrIN12_GLOBAL__N_123AffineScalarReplacementESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #15, !noalias !8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.b, i8 0, i64 240, i1 false), !noalias !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN4mlir6affine4impl27AffineScalarReplacementBaseIN12_GLOBAL__N_123AffineScalarReplacementEE13resolveTypeIDEvE2id, ptr %i.c, align 8, !tbaa !11, !noalias !8
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
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_123AffineScalarReplacementE, i64 16), ptr %i.a, align 8, !tbaa !17, !noalias !8
  store ptr %i.a, ptr %0, align 8, !tbaa !19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4mlir4PassE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #16
  br label %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.i = load i32, ptr %i.h, align 4, !tbaa !27   ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.m = zext i32 %i.i to i64                     ; 2 uses
  %i.n = mul nuw nsw i64 %i.m, 24
  %i.o = add nuw nsw i64 %i.m, 31
  %i.p = lshr i64 %i.o, 3
  %i.q = and i64 %i.p, 1073741820
  %i.r = add nuw nsw i64 %i.q, %i.n
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.l, i64 noundef %i.r, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.t) #17
  br label %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i: ; preds = %bb.d, %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4mlir6detail11PassOptionsD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.x) #17
  br label %_ZN4mlir6detail11PassOptionsD2Ev.exit

_ZN4mlir6detail11PassOptionsD2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir6detail11PassOptionsD2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #16
  br label %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit: ; preds = %_ZN4mlir6detail11PassOptionsD2Ev.exit, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !36, !range !39, !noundef !40
  %i.aj = trunc nuw i8 %i.ai to i1
  store i8 0, ptr %i.ah, align 8, !tbaa !36
  %.not.i.i.i1 = xor i1 %i.aj, true
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load i8, ptr %i.ak, align 8, !range !39
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i1, i1 true, i1 %i.am
  br i1 %or.cond.i.i.i, label %_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41
  tail call void @free(ptr noundef %i.ao) #17
  br label %_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_123AffineScalarReplacementD0Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 336) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZNK4mlir6affine4impl27AffineScalarReplacementBaseIN12_GLOBAL__N_123AffineScalarReplacementEE7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.7, i64 23 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZNK4mlir6affine4impl27AffineScalarReplacementBaseIN12_GLOBAL__N_123AffineScalarReplacementEE20getDependentDialectsERNS_15DialectRegistryE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZNK4mlir6affine4impl27AffineScalarReplacementBaseIN12_GLOBAL__N_123AffineScalarReplacementEE11getArgumentEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.8, i64 14 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZNK4mlir6affine4impl27AffineScalarReplacementBaseIN12_GLOBAL__N_123AffineScalarReplacementEE14getDescriptionEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.9, i64 103 }
}

declare i8 @_ZN4mlir4Pass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEE(ptr noundef nonnull align 8 dereferenceable(336), ptr, i64, ptr, i64) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_123AffineScalarReplacement14runOnOperationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::AnalysisManager", align 8 ; 4 uses
  %2 = alloca %"class.mlir::AnalysisManager", align 8 ; 4 uses
  %3 = alloca %"class.mlir::AnalysisManager", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !43 ; 3 uses
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 72
  %.sroa.0.0.copyload.i.i.i.i8.i.i.i.i.i = load i64, ptr %i.c, align 8 ; 2 uses
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i.i8.i.i.i.i.i, 4
  %i.e = icmp ne i64 %i.d, 0
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i8.i.i.i.i.i, -5 ; 3 uses
  %.not.not79.i.i.i.i.i = icmp eq i64 %i.f, 0
  %.not.not10.i.i.i.i.i = or i1 %i.e, %.not.not79.i.i.i.i.i
  br i1 %.not.not10.i.i.i.i.i, label %_ZN4mlir13OperationPassINS_4func6FuncOpEE11getAnalysisINS_13DominanceInfoEEERT_v.exit, label %tailrecurse.i.i.i.i.i

tailrecurse.i.i.i.i.i:                            ; preds = %bb.a, %tailrecurse.i.i.i.i.i
  %i.g = phi i64 [ %i.l, %tailrecurse.i.i.i.i.i ], [ %i.f, %bb.a ]
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8 ; 2 uses
  %i.j = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.k = icmp ne i64 %i.j, 0
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, -5 ; 3 uses
  %.not.not7.i.i.i.i.i = icmp eq i64 %i.l, 0
  %.not.not.i.i.i.i.i = or i1 %i.k, %.not.not7.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i, label %_ZN4mlir13OperationPassINS_4func6FuncOpEE11getAnalysisINS_13DominanceInfoEEERT_v.exit, label %tailrecurse.i.i.i.i.i

_ZN4mlir13OperationPassINS_4func6FuncOpEE11getAnalysisINS_13DominanceInfoEEERT_v.exit: ; preds = %tailrecurse.i.i.i.i.i, %bb.a
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.f, %bb.a ], [ %i.l, %tailrecurse.i.i.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 24 ; 2 uses
  %i.n = inttoptr i64 %.pre-phi.i.i.i.i.i to ptr
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.p = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6detail11AnalysisMap15getAnalysisImplINS_13DominanceInfoENS_4func6FuncOpEEERT_PNS_16PassInstrumentorET0_RNS_15AnalysisManagerE(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef %i.n, ptr %i.o, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
end_hunk_0
