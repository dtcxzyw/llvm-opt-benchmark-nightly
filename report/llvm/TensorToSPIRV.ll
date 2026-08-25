Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TensorToSPIRV?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"class.llvm::ArrayRef" = type { ptr, i64 }
%"class.mlir::PatternBenefit" = type { i16 }
%"class.mlir::tensor::ExtractOpAdaptor" = type { %"class.mlir::tensor::ExtractOpGenericAdaptor" }
%"class.mlir::tensor::ExtractOpGenericAdaptor" = type { %"class.mlir::tensor::detail::ExtractOpGenericAdaptorBase", %"class.mlir::ValueRange" }
%"class.mlir::tensor::detail::ExtractOpGenericAdaptorBase" = type { %"class.mlir::DictionaryAttr", %"class.std::optional", [8 x i8], %"class.mlir::RegionRange" }
%"class.mlir::DictionaryAttr" = type { %"class.mlir::detail::StorageUserBase.98" }
%"class.mlir::detail::StorageUserBase.98" = type { %"class.mlir::Attribute" }
%"class.mlir::Attribute" = type { ptr }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base.base", [7 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<mlir::OperationName>::_Storage", i8 }>
%"union.std::_Optional_payload_base<mlir::OperationName>::_Storage" = type { %"class.mlir::OperationName" }
%"class.mlir::OperationName" = type { ptr }
%"class.mlir::RegionRange" = type { %"class.llvm::detail::indexed_accessor_range_base" }
%"class.llvm::detail::indexed_accessor_range_base" = type { %"class.llvm::PointerUnion", i64 }
%"class.llvm::PointerUnion" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers" }
%"class.llvm::pointer_union_detail::PointerUnionMembers" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.99" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.99" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.100" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.100" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.101" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.101" = type { %"struct.llvm::detail::PunnedPointer.102" }
%"struct.llvm::detail::PunnedPointer.102" = type { [8 x i8] }
%"class.mlir::ValueRange" = type { %"class.llvm::detail::indexed_accessor_range_base.103" }
%"class.llvm::detail::indexed_accessor_range_base.103" = type { %"class.llvm::PointerUnion.104", i64 }
%"class.llvm::PointerUnion.104" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.105" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.105" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.106" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.106" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.107" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.107" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.108" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.108" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.109" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.109" = type { %"struct.llvm::detail::PunnedPointer.102" }
%"class.mlir::tensor::ExtractOpGenericAdaptor.110" = type { %"class.mlir::tensor::detail::ExtractOpGenericAdaptorBase", %"class.llvm::ArrayRef.80" }
%"class.llvm::ArrayRef.80" = type { ptr, i64 }
%"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator" = type { %"class.llvm::indexed_accessor_iterator.304" }
%"class.llvm::indexed_accessor_iterator.304" = type { %"class.llvm::PointerUnion.104", i64 }
%class.anon = type { ptr }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.mlir::Type" = type { ptr }
%"class.mlir::tensor::ExtractOp" = type { %"class.mlir::Op.81" }
%"class.mlir::Op.81" = type { %"class.mlir::OpState" }
%"class.mlir::OpState" = type { ptr }
%"class.mlir::RankedTensorType" = type { %"class.mlir::detail::StorageUserBase.119" }
%"class.mlir::detail::StorageUserBase.119" = type { %"class.mlir::TensorType" }
%"class.mlir::TensorType" = type { %"class.mlir::Type" }
%"class.llvm::SmallVector.125" = type { %"class.llvm::SmallVectorImpl.126", %"struct.llvm::SmallVectorStorage.129" }
%"class.llvm::SmallVectorImpl.126" = type { %"class.llvm::SmallVectorTemplateBase.127" }
%"class.llvm::SmallVectorTemplateBase.127" = type { %"class.llvm::SmallVectorTemplateCommon.128" }
%"class.llvm::SmallVectorTemplateCommon.128" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.129" = type { [32 x i8] }
%"class.mlir::Value" = type { ptr }
%"class.llvm::FailureOr" = type { %"class.std::optional.330" }
%"class.std::optional.330" = type { %"struct.std::_Optional_base.331" }
%"struct.std::_Optional_base.331" = type { %"struct.std::_Optional_payload.333" }
%"struct.std::_Optional_payload.333" = type { %"struct.std::_Optional_payload.base.342", [7 x i8] }
%"struct.std::_Optional_payload.base.342" = type { %"struct.std::_Optional_payload_base.base.341" }
%"struct.std::_Optional_payload_base.base.341" = type <{ %"union.std::_Optional_payload_base<llvm::SmallVector<mlir::Value>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::SmallVector<mlir::Value>>::_Storage" = type { %"class.llvm::SmallVector.336" }
%"class.llvm::SmallVector.336" = type { %"class.llvm::SmallVectorImpl.337", %"struct.llvm::SmallVectorStorage.340" }
%"class.llvm::SmallVectorImpl.337" = type { %"class.llvm::SmallVectorTemplateBase.338" }
%"class.llvm::SmallVectorTemplateBase.338" = type { %"class.llvm::SmallVectorTemplateCommon.339" }
%"class.llvm::SmallVectorTemplateCommon.339" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.340" = type { [48 x i8] }

$_ZN4mlir14RewritePatternD2Ev = comdat any

$_ZNK4mlir19OpConversionPatternINS_6tensor9ExtractOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_6tensor9ExtractOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE = comdat any

$_ZNK4mlir19OpConversionPatternINS_6tensor9ExtractOpEE15matchAndRewriteES2_NS1_23ExtractOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6tensor9ExtractOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_6tensor9ExtractOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN12_GLOBAL__N_120TensorExtractPatternE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN12_GLOBAL__N_120TensorExtractPatternD0Ev, ptr @_ZNK4mlir17ConversionPattern15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK4mlir19OpConversionPatternINS_6tensor9ExtractOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_6tensor9ExtractOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE, ptr @_ZNK12_GLOBAL__N_120TensorExtractPattern15matchAndRewriteEN4mlir6tensor9ExtractOpENS2_16ExtractOpAdaptorERNS1_25ConversionPatternRewriterE, ptr @_ZNK4mlir19OpConversionPatternINS_6tensor9ExtractOpEE15matchAndRewriteES2_NS1_23ExtractOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE] }, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"tensor.extract\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"unsupported type\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"non-static tensor\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"exceeding byte count threshold\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5spirv10ConstantOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"pattern '\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"' does not support 1:N conversion\00", align 1
@.str.11 = private unnamed_addr constant [94 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TensorExtractPattern]\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir29populateTensorToSPIRVPatternsERKNS_18SPIRVTypeConverterElRNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(712) %0, i64 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::ArrayRef", align 8    ; 4 uses
  %4 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !36
  %i.b = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #12, !noalias !39 ; 11 uses
  call void @_ZN4mlir14PatternBenefitC1Ej(ptr noundef nonnull align 2 dereferenceable(2) %4, i32 noundef 1) #13, !noalias !39
  %i.c = load i16, ptr %4, align 2, !noalias !39
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !noalias !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_ZN4mlir7PatternC2EN4llvm9StringRefENS_14PatternBenefitEPNS_11MLIRContextENS1_8ArrayRefIS2_EE(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr nonnull @.str.5, i64 14, i16 %i.c, ptr noundef %i.a, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %3) #13, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !39
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  store ptr %0, ptr %i.e, align 8, !tbaa !42, !noalias !39
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN12_GLOBAL__N_120TensorExtractPatternE, i64 16), ptr %i.b, align 8, !tbaa !64, !noalias !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %1, ptr %i.f, align 8, !tbaa !66, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !36
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !69, !noalias !36
  %i.g = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i, 0
  br i1 %i.g, label %bb.b, label %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_120TensorExtractPatternEJRKNS_18SPIRVTypeConverterEPNS_11MLIRContextERlEEESt10unique_ptrIT_St14default_deleteISB_EEDpOT0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr getelementptr inbounds nuw (i8, ptr @.str.11, i64 49), ptr %i.h, align 8, !tbaa !70, !noalias !36
  store i64 43, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !69, !noalias !36
  br label %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_120TensorExtractPatternEJRKNS_18SPIRVTypeConverterEPNS_11MLIRContextERlEEESt10unique_ptrIT_St14default_deleteISB_EEDpOT0_.exit.i.i

_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_120TensorExtractPatternEJRKNS_18SPIRVTypeConverterEPNS_11MLIRContextERlEEESt10unique_ptrIT_St14default_deleteISB_EEDpOT0_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !71   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.l = load i32, ptr %i.k, align 4, !tbaa !72
  %i.m = icmp ugt i32 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i

bb.c:                                             ; preds = %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_120TensorExtractPatternEJRKNS_18SPIRVTypeConverterEPNS_11MLIRContextERlEEESt10unique_ptrIT_St14default_deleteISB_EEDpOT0_.exit.i.i
  %i.n = zext i32 %i.j to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull %i.e, i64 noundef %i.n, i64 noundef 16) #13
  %.pre8.pre.i.i.i.i = load i32, ptr %i.i, align 8, !tbaa !71
  br label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i: ; preds = %bb.c, %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_120TensorExtractPatternEJRKNS_18SPIRVTypeConverterEPNS_11MLIRContextERlEEESt10unique_ptrIT_St14default_deleteISB_EEDpOT0_.exit.i.i
  %.pre8.i.i.i.i = phi i32 [ %i.j, %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_120TensorExtractPatternEJRKNS_18SPIRVTypeConverterEPNS_11MLIRContextERlEEESt10unique_ptrIT_St14default_deleteISB_EEDpOT0_.exit.i.i ], [ %.pre8.pre.i.i.i.i, %bb.c ]
  store i32 %.pre8.i.i.i.i, ptr %i.i, align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73   ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !74
  %.not.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i
  store ptr %i.b, ptr %i.r, align 8, !tbaa !75
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.u, ptr %i.q, align 8, !tbaa !73
  br label %_ZN4mlir17RewritePatternSet3addIJN12_GLOBAL__N_120TensorExtractPatternEERKNS_18SPIRVTypeConverterEJPNS_11MLIRContextERlEvEERS0_OT0_DpOT1_.exit

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !78   ; 10 uses
  %i.w = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 3 uses
  %i.y = sub i64 %i.w, %i.x                       ; 4 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #14
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i8.i.i = icmp ne i64 %i.ae, 0
  call void @llvm.assume(i1 %.not.i.i.i8.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #12 ; 10 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  store ptr %i.b, ptr %i.ah, align 8, !tbaa !75
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.r
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ai = add i64 %i.w, -8
  %i.aj = sub i64 %i.ai, %i.x                     ; 2 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.am = add i64 %i.w, -8
  %i.an = sub i64 %i.am, %i.x
  %i.ao = and i64 %i.an, -8
  %i.ap = add i64 %i.ao, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.ap
  %scevgep8 = getelementptr i8, ptr %i.v, i64 %i.ap
  %bound0 = icmp ult ptr %i.ag, %scevgep8
  %bound1 = icmp ult ptr %i.v, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.v, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.at ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.v, i64 %i.at ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.au = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !84, !alias.scope !85, !noalias !79
  %wide.load10 = load <2 x i64>, ptr %i.au, align 8, !tbaa !84, !alias.scope !85, !noalias !79
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !84, !alias.scope !88, !noalias !85
  store <2 x i64> %wide.load10, ptr %i.av, align 8, !tbaa !84, !alias.scope !88, !noalias !85
  %i.aw = getelementptr i8, ptr %next.gep9, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !84, !alias.scope !85, !noalias !79
  store <2 x ptr> splat (ptr null), ptr %i.aw, align 8, !tbaa !84, !alias.scope !85, !noalias !79
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.i.i.preheader12:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader12 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.ay = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !84, !alias.scope !82, !noalias !79
  store i64 %i.ay, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !84, !alias.scope !79, !noalias !82
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !84, !alias.scope !82, !noalias !79
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !94

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ag, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ar, %middle.block ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_120TensorExtractPatternES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.y) #15
  br label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_120TensorExtractPatternES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_120TensorExtractPatternES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.ag, ptr %i.p, align 8, !tbaa !78
  store ptr %i.bb, ptr %i.q, align 8, !tbaa !73
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.bc, ptr %i.s, align 8, !tbaa !74
  br label %_ZN4mlir17RewritePatternSet3addIJN12_GLOBAL__N_120TensorExtractPatternEERKNS_18SPIRVTypeConverterEJPNS_11MLIRContextERlEvEERS0_OT0_DpOT1_.exit

_ZN4mlir17RewritePatternSet3addIJN12_GLOBAL__N_120TensorExtractPatternEERKNS_18SPIRVTypeConverterEJPNS_11MLIRContextERlEvEERS0_OT0_DpOT1_.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_120TensorExtractPatternES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare void @_ZN4mlir14PatternBenefitC1Ej(ptr noundef nonnull align 2 dereferenceable(2), i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir14RewritePatternD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #13
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir7PatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #13
  br label %_ZN4mlir7PatternD2Ev.exit

_ZN4mlir7PatternD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120TensorExtractPatternD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #13
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #13
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #15
  ret void
}

declare i8 @_ZNK4mlir17ConversionPattern15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #5

declare void @_ZN4mlir14RewritePattern6anchorEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_6tensor9ExtractOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::tensor::ExtractOpAdaptor", align 8 ; 3 uses
  %6 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %2, i64 %3) #13
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.b = load <2 x i64>, ptr %6, align 16
  call void @_ZN4mlir6tensor6detail27ExtractOpGenericAdaptorBaseC2ENS0_9ExtractOpE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %1) #13
  store <2 x i64> %i.b, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call i8 %i.e(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::tensor::ExtractOpAdaptor") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #13
  ret i8 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_6tensor9ExtractOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::tensor::ExtractOpGenericAdaptor.110", align 8 ; 4 uses
  call void @_ZN4mlir6tensor6detail27ExtractOpGenericAdaptorBaseC2ENS0_9ExtractOpE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %1) #13
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %2, ptr %i.a, align 8, !tbaa !96
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !69
  %i.b = load ptr, ptr %0, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i8 %i.d(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::tensor::ExtractOpGenericAdaptor.110") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #13
  ret i8 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_120TensorExtractPattern15matchAndRewriteEN4mlir6tensor9ExtractOpENS2_16ExtractOpAdaptorERNS1_25ConversionPatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr %1, ptr noundef byval(%"class.mlir::tensor::ExtractOpAdaptor") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %5 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %6 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %7 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %8 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %9 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %10 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %11 = alloca %class.anon, align 8               ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %"class.mlir::Type", align 8       ; 4 uses
  %14 = alloca %class.anon, align 8               ; 4 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %16 = alloca %class.anon, align 8               ; 4 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %18 = alloca %"class.mlir::tensor::ExtractOp", align 8 ; 8 uses
  %19 = alloca %"class.mlir::RankedTensorType", align 8 ; 10 uses
  %20 = alloca %"class.llvm::SmallVector.125", align 8 ; 14 uses
  %21 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %22 = alloca %"class.mlir::Value", align 8      ; 4 uses
  store ptr %1, ptr %18, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  %i.a = call i64 @_ZN4mlir6tensor9ExtractOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 0) #13
  %i.b = load ptr, ptr %18, align 8, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99
  %i.e = and i64 %i.a, 4294967295
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.h, align 8
  %i.i = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.j = inttoptr i64 %i.i to ptr
  store ptr %i.j, ptr %19, align 8
  %i.k = call ptr @_ZNK4mlir16RankedTensorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #13
  %i.l = call noundef zeroext i1 @_ZN4mlir5spirv10ScalarType7classofENS_4TypeE(ptr %i.k) #13
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  %i.m = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %17, i64 33
  store i8 1, ptr %i.n, align 1, !tbaa !104
  store ptr @.str.6, ptr %17, align 8, !tbaa !107
  store i8 3, ptr %i.m, align 8, !tbaa !108
  %i.o = load ptr, ptr %18, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  store ptr %17, ptr %16, align 8, !tbaa !109
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor9ExtractOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.q) #13
  br i1 %i.r, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor9ExtractOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.0.0.copyload.i.i.i.i35 = load ptr, ptr %i.s, align 8
  %i.t = ptrtoint ptr %16 to i64
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr %.sroa.0.0.copyload.i.i.i.i35, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6tensor9ExtractOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.t) #13, !inline_history !118
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor9ExtractOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor9ExtractOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.b, %bb.c, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
end_hunk_0
