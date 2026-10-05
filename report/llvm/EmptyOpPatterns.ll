Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/EmptyOpPatterns?download=true
inline.NumInlined: 963
inline.NumDeleted: 601
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"class.llvm::ArrayRef" = type { ptr, i64 }
%"class.mlir::PatternBenefit" = type { i16 }
%"class.mlir::ValueRange" = type { %"class.llvm::detail::indexed_accessor_range_base.114" }
%"class.llvm::detail::indexed_accessor_range_base.114" = type { %"class.llvm::PointerUnion", i64 }
%"class.llvm::PointerUnion" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers" }
%"class.llvm::pointer_union_detail::PointerUnionMembers" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.115" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.115" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.116" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.116" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.117" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.117" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.118" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.118" = type { %"struct.llvm::detail::PunnedPointer.119" }
%"struct.llvm::detail::PunnedPointer.119" = type { [8 x i8] }
%"class.mlir::ResultRange::UseIterator" = type { %"class.llvm::detail::indexed_accessor_range_base<mlir::ResultRange, mlir::detail::OpResultImpl *, mlir::OpResult, mlir::OpResult, mlir::OpResult>::iterator", %"class.llvm::detail::indexed_accessor_range_base<mlir::ResultRange, mlir::detail::OpResultImpl *, mlir::OpResult, mlir::OpResult, mlir::OpResult>::iterator", %"class.mlir::ValueUseIterator" }
%"class.llvm::detail::indexed_accessor_range_base<mlir::ResultRange, mlir::detail::OpResultImpl *, mlir::OpResult, mlir::OpResult, mlir::OpResult>::iterator" = type { %"class.llvm::indexed_accessor_iterator" }
%"class.llvm::indexed_accessor_iterator" = type { ptr, i64 }
%"class.mlir::ValueUseIterator" = type { ptr }
%"class.mlir::ResultRange" = type { %"class.llvm::detail::indexed_accessor_range_base.111" }
%"class.llvm::detail::indexed_accessor_range_base.111" = type { ptr, i64 }
%"class.mlir::tensor::ExtractSliceOp" = type { %"class.mlir::Op.35" }
%"class.mlir::Op.35" = type { %"class.mlir::OpState" }
%"class.mlir::OpState" = type { ptr }
%"struct.mlir::detail::TypedValue" = type { %"class.mlir::Value" }
%"class.mlir::Value" = type { ptr }
%"class.llvm::iterator_range" = type { %"class.mlir::ResultRange::UseIterator", %"class.mlir::ResultRange::UseIterator" }
%"class.mlir::RankedTensorType" = type { %"class.mlir::detail::StorageUserBase.92" }
%"class.mlir::detail::StorageUserBase.92" = type { %"class.mlir::TensorType" }
%"class.mlir::TensorType" = type { %"class.mlir::Type" }
%"class.mlir::Type" = type { ptr }
%"class.mlir::tensor::ExpandShapeOp" = type { %"class.mlir::Op.132" }
%"class.mlir::Op.132" = type { %"class.mlir::OpState" }
%"class.llvm::SmallVector.164" = type { %"class.llvm::SmallVectorImpl.165", %"struct.llvm::SmallVectorStorage.168" }
%"class.llvm::SmallVectorImpl.165" = type { %"class.llvm::SmallVectorTemplateBase.166" }
%"class.llvm::SmallVectorTemplateBase.166" = type { %"class.llvm::SmallVectorTemplateCommon.167" }
%"class.llvm::SmallVectorTemplateCommon.167" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.168" = type { [64 x i8] }
%class.anon.298 = type { ptr }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.mlir::tensor::ConcatOp" = type { %"class.mlir::Op.262" }
%"class.mlir::Op.262" = type { %"class.mlir::OpState" }

$_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6tensor14ExtractSliceOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE = comdat any

$_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6tensor13ExpandShapeOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE = comdat any

$_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6tensor15CollapseShapeOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE = comdat any

$_ZN4mlir14RewritePatternD2Ev = comdat any

$_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6tensor8ConcatOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6tensor8ConcatOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN12_GLOBAL__N_133FoldEmptyTensorWithExtractSliceOpE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN12_GLOBAL__N_133FoldEmptyTensorWithExtractSliceOpD0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6tensor14ExtractSliceOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK12_GLOBAL__N_133FoldEmptyTensorWithExtractSliceOp15matchAndRewriteEN4mlir6tensor14ExtractSliceOpERNS1_15PatternRewriterE] }, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"tensor.extract_slice\00", align 1
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.6 = private unnamed_addr constant [107 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldEmptyTensorWithExtractSliceOp]\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN12_GLOBAL__N_128FoldEmptyTensorWithReshapeOpIN4mlir6tensor13ExpandShapeOpEEE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN12_GLOBAL__N_128FoldEmptyTensorWithReshapeOpIN4mlir6tensor13ExpandShapeOpEED0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6tensor13ExpandShapeOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK12_GLOBAL__N_128FoldEmptyTensorWithReshapeOpIN4mlir6tensor13ExpandShapeOpEE15matchAndRewriteES3_RNS1_15PatternRewriterE] }, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"tensor.expand_shape\00", align 1
@.str.9 = private unnamed_addr constant [131 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldEmptyTensorWithReshapeOp<mlir::tensor::ExpandShapeOp>]\00", align 1
@_ZTVN12_GLOBAL__N_128FoldEmptyTensorWithReshapeOpIN4mlir6tensor15CollapseShapeOpEEE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN12_GLOBAL__N_128FoldEmptyTensorWithReshapeOpIN4mlir6tensor15CollapseShapeOpEED0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6tensor15CollapseShapeOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK12_GLOBAL__N_128FoldEmptyTensorWithReshapeOpIN4mlir6tensor15CollapseShapeOpEE15matchAndRewriteES3_RNS1_15PatternRewriterE] }, align 8
@.str.10 = private unnamed_addr constant [22 x i8] c"tensor.collapse_shape\00", align 1
@.str.11 = private unnamed_addr constant [133 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldEmptyTensorWithReshapeOp<mlir::tensor::CollapseShapeOp>]\00", align 1
@_ZTVN12_GLOBAL__N_118FoldConcatsOfEmptyE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN12_GLOBAL__N_118FoldConcatsOfEmptyD0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6tensor8ConcatOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS1_15PatternRewriterE] }, align 8
@.str.12 = private unnamed_addr constant [14 x i8] c"tensor.concat\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"not all operands are defined by an empty op\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"failed to get result shape\00", align 1
@.str.15 = private unnamed_addr constant [92 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldConcatsOfEmpty]\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6tensor31populateFoldTensorEmptyPatternsERNS_17RewritePatternSetEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef", align 8    ; 4 uses
  %3 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %4 = alloca %"class.llvm::ArrayRef", align 8    ; 4 uses
  %5 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %6 = alloca %"class.llvm::ArrayRef", align 8    ; 4 uses
  %7 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %8 = alloca %"class.llvm::ArrayRef", align 8    ; 4 uses
  %9 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %i.a = zext i1 %1 to i8                         ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !154    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !155
  %i.c = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #12, !noalias !156 ; 10 uses
  call void @_ZN4mlir14PatternBenefitC1Ej(ptr noundef nonnull align 2 dereferenceable(2) %9, i32 noundef 1) #13, !noalias !156
  %i.d = load i16, ptr %9, align 2, !noalias !156
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !156
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !noalias !156
  call void @_ZN4mlir7PatternC2EN4llvm9StringRefENS_14PatternBenefitEPNS_11MLIRContextENS1_8ArrayRefIS2_EE(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr nonnull @.str.5, i64 20, i16 %i.d, ptr noundef %i.b, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %8) #13, !noalias !156
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !156
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_133FoldEmptyTensorWithExtractSliceOpE, i64 16), ptr %i.c, align 8, !tbaa !16, !noalias !156
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  store i8 %i.a, ptr %i.f, align 8, !tbaa !40, !noalias !156
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !155
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !157, !noalias !155
  %i.g = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i, 0
  br i1 %i.g, label %bb.b, label %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_133FoldEmptyTensorWithExtractSliceOpEJPNS_11MLIRContextEiRbEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr getelementptr inbounds nuw (i8, ptr @.str.6, i64 49), ptr %i.h, align 8, !tbaa !158, !noalias !155
  store i64 56, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !157, !noalias !155
  br label %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_133FoldEmptyTensorWithExtractSliceOpEJPNS_11MLIRContextEiRbEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i

_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_133FoldEmptyTensorWithExtractSliceOpEJPNS_11MLIRContextEiRbEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !41   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.l = load i32, ptr %i.k, align 4, !tbaa !42
  %i.m = icmp ugt i32 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i

bb.c:                                             ; preds = %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_133FoldEmptyTensorWithExtractSliceOpEJPNS_11MLIRContextEiRbEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i
  %i.n = zext i32 %i.j to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 16) #13
  %.pre8.pre.i.i.i.i = load i32, ptr %i.i, align 8, !tbaa !41
  br label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i: ; preds = %bb.c, %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_133FoldEmptyTensorWithExtractSliceOpEJPNS_11MLIRContextEiRbEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i
  %.pre8.i.i.i.i = phi i32 [ %i.j, %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_133FoldEmptyTensorWithExtractSliceOpEJPNS_11MLIRContextEiRbEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i ], [ %.pre8.pre.i.i.i.i, %bb.c ]
  store i32 %.pre8.i.i.i.i, ptr %i.i, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !159  ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !160
  %.not.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i
  store ptr %i.c, ptr %i.r, align 8, !tbaa !163
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.u, ptr %i.q, align 8, !tbaa !159
  br label %_ZN4mlir17RewritePatternSet7addImplIN12_GLOBAL__N_133FoldEmptyTensorWithExtractSliceOpEJPNS_11MLIRContextEiRbEEENSt9enable_ifIXsr3std10is_base_ofINS_14RewritePatternET_EE5valueEvE4typeEN4llvm8ArrayRefINSC_9StringRefEEEDpOT0_.exit.i

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !164  ; 10 uses
  %i.w = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 3 uses
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #14
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i6.i.i = icmp ne i64 %i.ae, 0
  call void @llvm.assume(i1 %.not.i.i.i6.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #12 ; 10 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  store ptr %i.c, ptr %i.ah, align 8, !tbaa !163
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.r
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ai = add i64 %i.w, -8
  %i.aj = sub i64 %i.ai, %i.x                     ; 3 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader142, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.am = and i64 %i.aj, -8
  %i.an = add i64 %i.am, 8                        ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ag, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.v, i64 %i.an
  %bound0 = icmp ult ptr %i.ag, %i.ap
  %bound1 = icmp ult ptr %i.v, %i.ao
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader142, label %vector.ph

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
  %next.gep62 = getelementptr i8, ptr %i.v, i64 %i.at ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.au = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep62, align 8, !tbaa !167, !alias.scope !168, !noalias !165
  %wide.load63 = load <2 x i64>, ptr %i.au, align 8, !tbaa !167, !alias.scope !168, !noalias !165
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !167, !alias.scope !169, !noalias !168
  store <2 x i64> %wide.load63, ptr %i.av, align 8, !tbaa !167, !alias.scope !169, !noalias !168
  %i.aw = getelementptr i8, ptr %next.gep62, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep62, align 8, !tbaa !167, !alias.scope !168, !noalias !165
  store <2 x ptr> splat (ptr null), ptr %i.aw, align 8, !tbaa !167, !alias.scope !168, !noalias !165
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader142

.lr.ph.i.i.i.i.i.i.i.preheader142:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader142, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader142 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader142 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.ay = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !167, !alias.scope !166, !noalias !165
  store i64 %i.ay, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !167, !alias.scope !165, !noalias !166
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !167, !alias.scope !166, !noalias !165
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !95

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ag, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ar, %middle.block ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_133FoldEmptyTensorWithExtractSliceOpES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  %i.bc = load ptr, ptr %i.s, align 8, !tbaa !160
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.be) #15
  br label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_133FoldEmptyTensorWithExtractSliceOpES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_133FoldEmptyTensorWithExtractSliceOpES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.ag, ptr %i.p, align 8, !tbaa !164
  store ptr %i.bb, ptr %i.q, align 8, !tbaa !159
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.bf, ptr %i.s, align 8, !tbaa !160
  br label %_ZN4mlir17RewritePatternSet7addImplIN12_GLOBAL__N_133FoldEmptyTensorWithExtractSliceOpEJPNS_11MLIRContextEiRbEEENSt9enable_ifIXsr3std10is_base_ofINS_14RewritePatternET_EE5valueEvE4typeEN4llvm8ArrayRefINSC_9StringRefEEEDpOT0_.exit.i

_ZN4mlir17RewritePatternSet7addImplIN12_GLOBAL__N_133FoldEmptyTensorWithExtractSliceOpEJPNS_11MLIRContextEiRbEEENSt9enable_ifIXsr3std10is_base_ofINS_14RewritePatternET_EE5valueEvE4typeEN4llvm8ArrayRefINSC_9StringRefEEEDpOT0_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_133FoldEmptyTensorWithExtractSliceOpES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, %bb.d
end_hunk_0
begin_hunk_1_@_ZN4mlir6tensor31populateFoldTensorEmptyPatternsERNS_17RewritePatternSetEb:bb.a
  %i.ge = ashr exact i64 %i.gc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i14 = call i64 @llvm.umax.i64(i64 %i.ge, i64 1)
  %i.gf = add nsw i64 %.sroa.speculated.i.i.i.i.i14, %i.ge ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.ge
  %i.gh = call i64 @llvm.umin.i64(i64 %i.gf, i64 1152921504606846975)
  %i.gi = select i1 %i.gg, i64 1152921504606846975, i64 %i.gh ; 3 uses
  %.not.i.i.i5.i.i = icmp ne i64 %i.gi, 0
  call void @llvm.assume(i1 %.not.i.i.i5.i.i)
  %i.gj = shl nuw nsw i64 %i.gi, 3
  %i.gk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gj) #12 ; 10 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gc
  store ptr %i.fj, ptr %i.gl, align 8, !tbaa !163
  %.not10.i.i.i.i.i.i.i15 = icmp eq ptr %i.fz, %i.fw
  br i1 %.not10.i.i.i.i.i.i.i15, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i20, label %.lr.ph.i.i.i.i.i.i.i16.preheader

.lr.ph.i.i.i.i.i.i.i16.preheader:                 ; preds = %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i13
  %i.gm = add i64 %i.ga, -8
  %i.gn = sub i64 %i.gm, %i.gb                    ; 3 uses
  %i.go = lshr i64 %i.gn, 3
  %i.gp = add nuw nsw i64 %i.go, 1                ; 2 uses
  %min.iters.check119 = icmp ult i64 %i.gn, 136
  br i1 %min.iters.check119, label %.lr.ph.i.i.i.i.i.i.i16.preheader137, label %vector.memcheck120

vector.memcheck120:                               ; preds = %.lr.ph.i.i.i.i.i.i.i16.preheader
  %i.gq = and i64 %i.gn, -8
  %i.gr = add i64 %i.gq, 8                        ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gk, i64 %i.gr
  %i.gt = getelementptr i8, ptr %i.fz, i64 %i.gr
  %bound0121 = icmp ult ptr %i.gk, %i.gt
  %bound1122 = icmp ult ptr %i.fz, %i.gs
  %found.conflict123 = and i1 %bound0121, %bound1122
  br i1 %found.conflict123, label %.lr.ph.i.i.i.i.i.i.i16.preheader137, label %vector.ph124

vector.ph124:                                     ; preds = %vector.memcheck120
  %n.vec125 = and i64 %i.gp, 4611686018427387900  ; 3 uses
  %i.gu = shl i64 %n.vec125, 3                    ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gk, i64 %i.gu  ; 2 uses
  %i.gw = getelementptr i8, ptr %i.fz, i64 %i.gu
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph124
  %index127 = phi i64 [ 0, %vector.ph124 ], [ %index.next132, %vector.body126 ] ; 2 uses
  %i.gx = shl i64 %index127, 3                    ; 2 uses
  %next.gep128 = getelementptr i8, ptr %i.gk, i64 %i.gx ; 2 uses
  %next.gep129 = getelementptr i8, ptr %i.fz, i64 %i.gx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.gy = getelementptr i8, ptr %next.gep129, i64 16
  %wide.load130 = load <2 x i64>, ptr %next.gep129, align 8, !tbaa !167, !alias.scope !188, !noalias !186
  %wide.load131 = load <2 x i64>, ptr %i.gy, align 8, !tbaa !167, !alias.scope !188, !noalias !186
  %i.gz = getelementptr i8, ptr %next.gep128, i64 16
  store <2 x i64> %wide.load130, ptr %next.gep128, align 8, !tbaa !167, !alias.scope !189, !noalias !188
  store <2 x i64> %wide.load131, ptr %i.gz, align 8, !tbaa !167, !alias.scope !189, !noalias !188
  %i.ha = getelementptr i8, ptr %next.gep129, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep129, align 8, !tbaa !167, !alias.scope !188, !noalias !186
  store <2 x ptr> splat (ptr null), ptr %i.ha, align 8, !tbaa !167, !alias.scope !188, !noalias !186
  %index.next132 = add nuw i64 %index127, 4       ; 2 uses
  %i.hb = icmp eq i64 %index.next132, %n.vec125
  br i1 %i.hb, label %middle.block133, label %vector.body126, !llvm.loop !130

middle.block133:                                  ; preds = %vector.body126
  %cmp.n134 = icmp eq i64 %i.gp, %n.vec125
  br i1 %cmp.n134, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i20, label %.lr.ph.i.i.i.i.i.i.i16.preheader137

.lr.ph.i.i.i.i.i.i.i16.preheader137:              ; preds = %vector.memcheck120, %.lr.ph.i.i.i.i.i.i.i16.preheader, %middle.block133
  %.012.i.i.i.i.i.i.i17.ph = phi ptr [ %i.gk, %vector.memcheck120 ], [ %i.gk, %.lr.ph.i.i.i.i.i.i.i16.preheader ], [ %i.gv, %middle.block133 ]
  %.0911.i.i.i.i.i.i.i18.ph = phi ptr [ %i.fz, %vector.memcheck120 ], [ %i.fz, %.lr.ph.i.i.i.i.i.i.i16.preheader ], [ %i.gw, %middle.block133 ]
  br label %.lr.ph.i.i.i.i.i.i.i16

.lr.ph.i.i.i.i.i.i.i16:                           ; preds = %.lr.ph.i.i.i.i.i.i.i16.preheader137, %.lr.ph.i.i.i.i.i.i.i16
  %.012.i.i.i.i.i.i.i17 = phi ptr [ %i.he, %.lr.ph.i.i.i.i.i.i.i16 ], [ %.012.i.i.i.i.i.i.i17.ph, %.lr.ph.i.i.i.i.i.i.i16.preheader137 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i18 = phi ptr [ %i.hd, %.lr.ph.i.i.i.i.i.i.i16 ], [ %.0911.i.i.i.i.i.i.i18.ph, %.lr.ph.i.i.i.i.i.i.i16.preheader137 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.hc = load i64, ptr %.0911.i.i.i.i.i.i.i18, align 8, !tbaa !167, !alias.scope !187, !noalias !186
  store i64 %i.hc, ptr %.012.i.i.i.i.i.i.i17, align 8, !tbaa !167, !alias.scope !186, !noalias !187
  store ptr null, ptr %.0911.i.i.i.i.i.i.i18, align 8, !tbaa !167, !alias.scope !187, !noalias !186
  %i.hd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i18, i64 8 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i17, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i19 = icmp eq ptr %i.hd, %i.fw
  br i1 %.not.i.i.i.i.i.i.i19, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i20, label %.lr.ph.i.i.i.i.i.i.i16, !llvm.loop !131

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i20: ; preds = %.lr.ph.i.i.i.i.i.i.i16, %middle.block133, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i13
  %.0.lcssa.i.i.i.i.i.i.i21 = phi ptr [ %i.gk, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i13 ], [ %i.gv, %middle.block133 ], [ %i.he, %.lr.ph.i.i.i.i.i.i.i16 ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i21, i64 8
  %.not.i23.i.i.i.i22 = icmp eq ptr %i.fz, null
  br i1 %.not.i23.i.i.i.i22, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_118FoldConcatsOfEmptyES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i20
  %i.hg = load ptr, ptr %i.s, align 8, !tbaa !160
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = sub i64 %i.hh, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.hi) #15
  br label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_118FoldConcatsOfEmptyES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_118FoldConcatsOfEmptyES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i: ; preds = %bb.y, %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i20
  store ptr %i.gk, ptr %i.p, align 8, !tbaa !164
  store ptr %i.hf, ptr %i.q, align 8, !tbaa !159
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gi
  store ptr %i.hj, ptr %i.s, align 8, !tbaa !160
  br label %_ZN4mlir17RewritePatternSet3addIJN12_GLOBAL__N_118FoldConcatsOfEmptyEEPNS_11MLIRContextEJiEvEERS0_OT0_DpOT1_.exit

_ZN4mlir17RewritePatternSet3addIJN12_GLOBAL__N_118FoldConcatsOfEmptyEEPNS_11MLIRContextEJiEvEERS0_OT0_DpOT1_.exit: ; preds = %bb.v, %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_118FoldConcatsOfEmptyES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i
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

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_133FoldEmptyTensorWithExtractSliceOpD0Ev(ptr noundef nonnull align 8 dereferenceable(97) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #13
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #13
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6tensor14ExtractSliceOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  ret i8 %i.d
}

declare void @_ZN4mlir14RewritePattern6anchorEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_133FoldEmptyTensorWithExtractSliceOp15matchAndRewriteEN4mlir6tensor14ExtractSliceOpERNS1_15PatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %4 = alloca %"class.mlir::ResultRange::UseIterator", align 8 ; 5 uses
  %5 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %6 = alloca %"class.mlir::tensor::ExtractSliceOp", align 8 ; 9 uses
  %7 = alloca %"struct.mlir::detail::TypedValue", align 8 ; 5 uses
  %8 = alloca %"class.llvm::iterator_range", align 8 ; 8 uses
  %9 = alloca %"class.mlir::RankedTensorType", align 8 ; 4 uses
  %10 = alloca %"class.mlir::RankedTensorType", align 8 ; 4 uses
  %11 = alloca %"class.mlir::RankedTensorType", align 8 ; 4 uses
  store ptr %1, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.a = call i64 @_ZN4mlir6tensor14ExtractSliceOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0) #13
  %i.b = load ptr, ptr %6, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.e = and i64 %i.a, 4294967295
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !58
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %7, align 8
  %i.h = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #13 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.l = icmp eq ptr %i.k, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  %12 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %12, %i.l
  br i1 %spec.select.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load i8, ptr %i.m, align 8, !tbaa !40, !range !64, !noundef !65
  %i.o = trunc nuw i8 %i.n to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  br i1 %i.o, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13, !noalias !195
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !81, !noalias !195 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  %i.s = getelementptr inbounds i8, ptr %i.h, i64 -16
  %i.t = zext i32 %i.q to i64
  %.sroa.0.0.i.i = select i1 %i.r, ptr null, ptr %i.s
  store ptr %.sroa.0.0.i.i, ptr %5, align 8, !noalias !195
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.t, ptr %i.u, align 8, !noalias !195
  call void @_ZNK4mlir11ResultRange7getUsesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13, !noalias !195
  %.sroa.4.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.4.0.copyload7.i = load ptr, ptr %.sroa.4.0..sroa_idx6.i, align 8 ; 2 uses
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 72
  %.sroa.33.0.copyload.i = load ptr, ptr %.sroa.33.0..sroa_idx.i, align 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.4.0.copyload7.i, %.sroa.33.0.copyload.i
  br i1 %.not.i, label %_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit.thread, label %_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit

_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.h

_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(80) %8, i64 32, i1 false)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %.sroa.4.0.copyload7.i, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.v = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4mlir11ResultRange11UseIteratorppEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #13, !noalias !196 ; 0 uses
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.w = icmp eq ptr %.sroa.3.0.copyload.i, %.sroa.33.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br i1 %i.w, label %bb.f, label %bb.h

.critedge:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.x = load ptr, ptr %6, align 8, !tbaa !53
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -16
  %i.z = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 noundef 0) #13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8
  %i.ab = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.ac = inttoptr i64 %i.ab to ptr
  store ptr %i.ac, ptr %9, align 8
  %i.ad = call { ptr, i64 } @_ZNK4mlir16RankedTensorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #13 ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0
  %i.af = extractvalue { ptr, i64 } %i.ad, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.ag = load ptr, ptr %6, align 8, !tbaa !53
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -16
  %i.ai = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 noundef 0) #13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i6 = load i64, ptr %i.aj, align 8
  %i.ak = and i64 %.0.copyload.i.i.i.i.i.i.i.i6, -8
  %i.al = inttoptr i64 %i.ak to ptr
  store ptr %i.al, ptr %10, align 8
  %i.am = call ptr @_ZNK4mlir16RankedTensorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.an = load ptr, ptr %6, align 8, !tbaa !53
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -16
  %i.ap = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 noundef 0) #13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i7 = load i64, ptr %i.aq, align 8
  %i.ar = and i64 %.0.copyload.i.i.i.i.i.i.i.i7, -8
  %i.as = inttoptr i64 %i.ar to ptr
  store ptr %i.as, ptr %11, align 8
  %i.at = call ptr @_ZNK4mlir16RankedTensorType11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  %i.au = call ptr @_ZN4mlir16RankedTensorType3getEN4llvm8ArrayRefIlEENS_4TypeENS_9AttributeE(ptr %i.ae, i64 %i.af, ptr %i.am, ptr %i.at) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %i.av = load ptr, ptr %6, align 8, !tbaa !53    ; 2 uses
  %i.aw = call i64 @_ZN4mlir6tensor14ExtractSliceOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2) #13 ; 3 uses
  %i.ax = load ptr, ptr %6, align 8, !tbaa !53    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 44
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = and i32 %i.az, 8388608
  %.not.i.i.i.i.i8 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i.i8, label %_ZN4mlir6tensor14ExtractSliceOp8getSizesEv.exit, label %bb.g, !prof !82

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !56
  br label %_ZN4mlir6tensor14ExtractSliceOp8getSizesEv.exit

_ZN4mlir6tensor14ExtractSliceOp8getSizesEv.exit:  ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.bc, %bb.g ], [ null, %bb.f ]
  %i.bd = and i64 %i.aw, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.aw, 32
  %i.be = add i64 %.sroa.5.0.extract.shift.i.i, %i.aw
  %i.bf = and i64 %i.be, 4294967295
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.bd
  %i.bh = sub nsw i64 %i.bf, %i.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bj, align 8
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %i.bg, i64 %i.bh) #13
  %i.bk = load i64, ptr %3, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = call ptr @_ZN4mlir6tensor7EmptyOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr %.sroa.0.0.copyload.i.i, ptr %i.au, i64 %i.bk, i64 %i.bm) #13
  %i.bo = load ptr, ptr %2, align 8, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.av, ptr noundef %i.bn) #13, !inline_history !194
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit, %_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit.thread, %_ZN4mlir6tensor14ExtractSliceOp8getSizesEv.exit, %bb.c
  %.sroa.05.0 = phi i8 [ 0, %bb.c ], [ 1, %_ZN4mlir6tensor14ExtractSliceOp8getSizesEv.exit ], [ 0, %_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit.thread ], [ 0, %_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit ]
  ret i8 %.sroa.05.0
}

declare void @_ZN4mlir7PatternC2EN4llvm9StringRefENS_14PatternBenefitEPNS_11MLIRContextENS1_8ArrayRefIS2_EE(ptr noundef nonnull align 8 dereferenceable(88), ptr, i64, i16, ptr noundef, ptr noundef byval(%"class.llvm::ArrayRef") align 8) unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare ptr @_ZN4mlir16RankedTensorType3getEN4llvm8ArrayRefIlEENS_4TypeENS_9AttributeE(ptr, i64, ptr, ptr) local_unnamed_addr #5

declare { ptr, i64 } @_ZNK4mlir16RankedTensorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare ptr @_ZNK4mlir16RankedTensorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare ptr @_ZNK4mlir16RankedTensorType11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare i64 @_ZN4mlir6tensor14ExtractSliceOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN4mlir11ResultRange11UseIteratorppEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare void @_ZNK4mlir11ResultRange7getUsesEv(ptr dead_on_unwind writable sret(%"class.llvm::iterator_range") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #5

declare ptr @_ZN4mlir6tensor7EmptyOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, i64, i64) local_unnamed_addr #5

declare void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #5

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_128FoldEmptyTensorWithReshapeOpIN4mlir6tensor13ExpandShapeOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(97) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #13
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #13
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6tensor13ExpandShapeOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_128FoldEmptyTensorWithReshapeOpIN4mlir6tensor13ExpandShapeOpEE15matchAndRewriteES3_RNS1_15PatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::ResultRange::UseIterator", align 8 ; 5 uses
  %4 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %5 = alloca %"class.mlir::tensor::ExpandShapeOp", align 8 ; 8 uses
  %6 = alloca %"struct.mlir::detail::TypedValue", align 8 ; 5 uses
  %7 = alloca %"class.llvm::iterator_range", align 8 ; 8 uses
  %8 = alloca %"class.llvm::SmallVector.164", align 8 ; 10 uses
  %9 = alloca %"class.mlir::RankedTensorType", align 8 ; 4 uses
  %10 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %11 = alloca %"class.mlir::RankedTensorType", align 8 ; 4 uses
  store ptr %1, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.a = call i64 @_ZN4mlir6tensor13ExpandShapeOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #13
  %i.b = load ptr, ptr %5, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.e = and i64 %i.a, 4294967295
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !58
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %6, align 8
  %i.h = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #13 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.l = icmp eq ptr %i.k, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  %12 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %12, %i.l
  br i1 %spec.select.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load i8, ptr %i.m, align 8, !tbaa !47, !range !64, !noundef !65
  %i.o = trunc nuw i8 %i.n to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  br i1 %i.o, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13, !noalias !201
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !81, !noalias !201 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  %i.s = getelementptr inbounds i8, ptr %i.h, i64 -16
  %i.t = zext i32 %i.q to i64
  %.sroa.0.0.i.i = select i1 %i.r, ptr null, ptr %i.s
  store ptr %.sroa.0.0.i.i, ptr %4, align 8, !noalias !201
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.t, ptr %i.u, align 8, !noalias !201
  call void @_ZNK4mlir11ResultRange7getUsesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13, !noalias !201
  %.sroa.4.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.4.0.copyload7.i = load ptr, ptr %.sroa.4.0..sroa_idx6.i, align 8 ; 2 uses
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 72
  %.sroa.33.0.copyload.i = load ptr, ptr %.sroa.33.0..sroa_idx.i, align 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.4.0.copyload7.i, %.sroa.33.0.copyload.i
  br i1 %.not.i, label %_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit.thread, label %_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit

_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.q

_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(80) %7, i64 32, i1 false)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %.sroa.4.0.copyload7.i, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.v = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4mlir11ResultRange11UseIteratorppEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #13, !noalias !202 ; 0 uses
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.w = icmp eq ptr %.sroa.3.0.copyload.i, %.sroa.33.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br i1 %i.w, label %bb.f, label %bb.q

.critedge:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit
  %i.x = load ptr, ptr %5, align 8, !tbaa !53     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.z, ptr %8, align 8, !tbaa !52
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 1, ptr %i.ab, align 4, !tbaa !42
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ad = call i8 @_ZN4mlir17reifyResultShapesERNS_9OpBuilderEPNS_9OperationERN4llvm11SmallVectorINS5_INS_12OpFoldResultELj6EEELj1EEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef %i.x, ptr noundef nonnull align 8 dereferenceable(80) %8) #13
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %thread-pre-split

bb.g:                                             ; preds = %bb.f
  %i.af = load i32, ptr %i.aa, align 8, !tbaa !41 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.ah = load ptr, ptr %5, align 8, !tbaa !53
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -16
  %i.aj = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 noundef 0) #13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ak, align 8
  %i.al = and i64 %.0.copyload.i.i.i.i.i.i.i, -8  ; 2 uses
  %i.am = inttoptr i64 %i.al to ptr
  store ptr %i.am, ptr %9, align 8
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = call ptr @_ZNK4mlir16RankedTensorType11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.027.0 = phi ptr [ %i.an, %bb.i ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.ao = load ptr, ptr %8, align 8, !tbaa !52    ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !41
  %i.as = zext i32 %i.ar to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.at = load ptr, ptr %5, align 8, !tbaa !53
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -16
  %i.av = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 noundef 0) #13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.0.copyload.i.i.i.i.i.i.i15 = load i64, ptr %i.aw, align 8
  %i.ax = and i64 %.0.copyload.i.i.i.i.i.i.i15, -8
  %i.ay = inttoptr i64 %i.ax to ptr
  store ptr %i.ay, ptr %11, align 8
  %i.az = call ptr @_ZNK4mlir16RankedTensorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  %i.ba = call ptr @_ZN4mlir6tensor7EmptyOp6createERNS_9OpBuilderENS_8LocationEN4llvm8ArrayRefINS_12OpFoldResultEEENS_4TypeENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr %.sroa.0.0.copyload.i.i, ptr %i.ap, i64 %i.as, ptr %i.az, ptr %.sroa.027.0) #13 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -16 ; 2 uses
  store ptr %i.bb, ptr %10, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.bc, align 8
  %i.bd = load ptr, ptr %5, align 8, !tbaa !53
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -16
  %i.bf = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 noundef 0) #13
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.0.copyload.i.i.i.i.i.i.i16 = load i64, ptr %i.bg, align 8
  %i.bh = xor i64 %.0.copyload.i.i.i.i.i.i.i16, %.0.copyload.i.i.i.i.i
  %.not31 = icmp ult i64 %i.bh, 8
  %i.bi = load ptr, ptr %5, align 8, !tbaa !53    ; 4 uses
  br i1 %.not31, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -16
  %i.bk = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 noundef 0) #13
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.0.copyload.i.i.i.i.i.i.i17 = load i64, ptr %i.bl, align 8
  %i.bm = and i64 %.0.copyload.i.i.i.i.i.i.i17, -8
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %.sroa.0.0.copyload.i.i18 = load ptr, ptr %i.bo, align 8
  %i.bp = call ptr @_ZN4mlir6tensor6CastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr %.sroa.0.0.copyload.i.i18, ptr %i.bn, ptr nonnull %i.bb) #13
  %i.bq = load ptr, ptr %2, align 8, !tbaa !16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.bi, ptr noundef %i.bp) #13, !inline_history !0
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bt = ptrtoint ptr %10 to i64
  %i.bu = load ptr, ptr %2, align 8, !tbaa !16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.bi, i64 %i.bt, i64 1) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.m, %bb.f
  %.sroa.014.0.ph = phi i8 [ 0, %bb.f ], [ 1, %bb.m ]
  %.pr = load i32, ptr %i.aa, align 8, !tbaa !41
  br label %bb.n

bb.n:                                             ; preds = %thread-pre-split, %bb.g
  %i.bw = phi i32 [ %.pr, %thread-pre-split ], [ %i.af, %bb.g ] ; 2 uses
  %.sroa.014.0 = phi i8 [ %.sroa.014.0.ph, %thread-pre-split ], [ 0, %bb.g ]
  %i.bx = load ptr, ptr %8, align 8, !tbaa !52    ; 3 uses
  %.not4.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.n
  %i.by = zext i32 %i.bw to i64
  %.idx.i = shl nuw nsw i64 %i.by, 6
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i
  br label %.lr.ph.i.i20

.lr.ph.i.i20:                                     ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.ca, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i ], [ %i.bz, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.05.i.i, i64 -64 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !52 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.05.i.i, i64 -48
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i20
  call void @free(ptr noundef %i.cb) #13
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i: ; preds = %bb.o, %.lr.ph.i.i20
  %.not.i.i = icmp eq ptr %i.bx, %i.ca
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, label %.lr.ph.i.i20, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !52
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, %bb.n
  %i.ce = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i ], [ %i.bx, %bb.n ] ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.z
  br i1 %i.cf, label %_ZN4llvm11SmallVectorINS0_IN4mlir12OpFoldResultELj6EEELj1EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i
  call void @free(ptr noundef %i.ce) #13
  br label %_ZN4llvm11SmallVectorINS0_IN4mlir12OpFoldResultELj6EEELj1EED2Ev.exit

_ZN4llvm11SmallVectorINS0_IN4mlir12OpFoldResultELj6EEELj1EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.q

bb.q:                                             ; preds = %_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit, %_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit.thread, %_ZN4llvm11SmallVectorINS0_IN4mlir12OpFoldResultELj6EEELj1EED2Ev.exit, %bb.c
  %.sroa.014.1 = phi i8 [ 0, %bb.c ], [ %.sroa.014.0, %_ZN4llvm11SmallVectorINS0_IN4mlir12OpFoldResultELj6EEELj1EED2Ev.exit ], [ 0, %_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit.thread ], [ 0, %_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit ]
  ret i8 %.sroa.014.1
}

declare i8 @_ZN4mlir17reifyResultShapesERNS_9OpBuilderEPNS_9OperationERN4llvm11SmallVectorINS5_INS_12OpFoldResultELj6EEELj1EEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

declare ptr @_ZN4mlir6tensor7EmptyOp6createERNS_9OpBuilderENS_8LocationEN4llvm8ArrayRefINS_12OpFoldResultEEENS_4TypeENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, i64, ptr, ptr) local_unnamed_addr #5

declare i64 @_ZN4mlir6tensor13ExpandShapeOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

declare ptr @_ZN4mlir6tensor6CastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_128FoldEmptyTensorWithReshapeOpIN4mlir6tensor15CollapseShapeOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(97) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #13
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #13
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6tensor15CollapseShapeOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_128FoldEmptyTensorWithReshapeOpIN4mlir6tensor15CollapseShapeOpEE15matchAndRewriteES3_RNS1_15PatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::ResultRange::UseIterator", align 8 ; 5 uses
  %4 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %5 = alloca %"struct.mlir::detail::TypedValue", align 8 ; 5 uses
  %6 = alloca %"class.llvm::iterator_range", align 8 ; 8 uses
  %7 = alloca %"class.llvm::SmallVector.164", align 8 ; 10 uses
  %8 = alloca %"class.mlir::RankedTensorType", align 8 ; 4 uses
  %9 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %10 = alloca %"class.mlir::RankedTensorType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !58
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %5, align 8
  %i.d = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #13 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.h = icmp eq ptr %i.g, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  %11 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %11, %i.h
  br i1 %spec.select.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load i8, ptr %i.i, align 8, !tbaa !51, !range !64, !noundef !65
  %i.k = trunc nuw i8 %i.j to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  br i1 %i.k, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13, !noalias !207
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !81, !noalias !207 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  %i.o = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.p = zext i32 %i.m to i64
  %.sroa.0.0.i.i = select i1 %i.n, ptr null, ptr %i.o
  store ptr %.sroa.0.0.i.i, ptr %4, align 8, !noalias !207
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.p, ptr %i.q, align 8, !noalias !207
  call void @_ZNK4mlir11ResultRange7getUsesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13, !noalias !207
  %.sroa.4.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.4.0.copyload7.i = load ptr, ptr %.sroa.4.0..sroa_idx6.i, align 8 ; 2 uses
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 72
  %.sroa.33.0.copyload.i = load ptr, ptr %.sroa.33.0..sroa_idx.i, align 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.4.0.copyload7.i, %.sroa.33.0.copyload.i
  br i1 %.not.i, label %_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit.thread, label %_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit

_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.q

_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(80) %6, i64 32, i1 false)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %.sroa.4.0.copyload7.i, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.r = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4mlir11ResultRange11UseIteratorppEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #13, !noalias !208 ; 0 uses
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.s = icmp eq ptr %.sroa.3.0.copyload.i, %.sroa.33.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br i1 %i.s, label %bb.f, label %bb.q

.critedge:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.u, ptr %7, align 8, !tbaa !52
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 0, ptr %i.v, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 1, ptr %i.w, align 4, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.y = call i8 @_ZN4mlir17reifyResultShapesERNS_9OpBuilderEPNS_9OperationERN4llvm11SmallVectorINS5_INS_12OpFoldResultELj6EEELj1EEE(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(80) %7) #13
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.g, label %thread-pre-split

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.v, align 8, !tbaa !41  ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.ac = getelementptr inbounds i8, ptr %1, i64 -16 ; 4 uses
  %i.ad = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef 0) #13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ae, align 8
  %i.af = and i64 %.0.copyload.i.i.i.i.i.i.i, -8  ; 2 uses
  %i.ag = inttoptr i64 %i.af to ptr
  store ptr %i.ag, ptr %8, align 8
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = call ptr @_ZNK4mlir16RankedTensorType11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.027.0 = phi ptr [ %i.ah, %bb.i ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.ai = load ptr, ptr %7, align 8, !tbaa !52    ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !41
  %i.am = zext i32 %i.al to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.an = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef 0) #13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.0.copyload.i.i.i.i.i.i.i15 = load i64, ptr %i.ao, align 8
  %i.ap = and i64 %.0.copyload.i.i.i.i.i.i.i15, -8
  %i.aq = inttoptr i64 %i.ap to ptr
  store ptr %i.aq, ptr %10, align 8
  %i.ar = call ptr @_ZNK4mlir16RankedTensorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #13
  %i.as = call ptr @_ZN4mlir6tensor7EmptyOp6createERNS_9OpBuilderENS_8LocationEN4llvm8ArrayRefINS_12OpFoldResultEEENS_4TypeENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr %.sroa.0.0.copyload.i.i, ptr %i.aj, i64 %i.am, ptr %i.ar, ptr %.sroa.027.0) #13 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -16 ; 2 uses
  store ptr %i.at, ptr %9, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.au, align 8
  %i.av = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef 0) #13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.0.copyload.i.i.i.i.i.i.i16 = load i64, ptr %i.aw, align 8
  %i.ax = xor i64 %.0.copyload.i.i.i.i.i.i.i16, %.0.copyload.i.i.i.i.i
  %.not40 = icmp ult i64 %i.ax, 8
  br i1 %.not40, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef 0) #13
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.0.copyload.i.i.i.i.i.i.i17 = load i64, ptr %i.az, align 8
  %i.ba = and i64 %.0.copyload.i.i.i.i.i.i.i17, -8
  %i.bb = inttoptr i64 %i.ba to ptr
  %.sroa.0.0.copyload.i.i18 = load ptr, ptr %i.t, align 8
  %i.bc = call ptr @_ZN4mlir6tensor6CastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr %.sroa.0.0.copyload.i.i18, ptr %i.bb, ptr nonnull %i.at) #13
  %i.bd = load ptr, ptr %2, align 8, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %1, ptr noundef %i.bc) #13, !inline_history !0
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bg = ptrtoint ptr %9 to i64
  %i.bh = load ptr, ptr %2, align 8, !tbaa !16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %1, i64 %i.bg, i64 1) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.m, %bb.f
  %.sroa.014.0.ph = phi i8 [ 0, %bb.f ], [ 1, %bb.m ]
  %.pr = load i32, ptr %i.v, align 8, !tbaa !41
  br label %bb.n

bb.n:                                             ; preds = %thread-pre-split, %bb.g
  %i.bj = phi i32 [ %.pr, %thread-pre-split ], [ %i.aa, %bb.g ] ; 2 uses
  %.sroa.014.0 = phi i8 [ %.sroa.014.0.ph, %thread-pre-split ], [ 0, %bb.g ]
  %i.bk = load ptr, ptr %7, align 8, !tbaa !52    ; 3 uses
  %.not4.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.n
  %i.bl = zext i32 %i.bj to i64
  %.idx.i = shl nuw nsw i64 %i.bl, 6
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i
  br label %.lr.ph.i.i20

.lr.ph.i.i20:                                     ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.bn, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i ], [ %i.bm, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %.05.i.i, i64 -64 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !52 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.05.i.i, i64 -48
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i20
  call void @free(ptr noundef %i.bo) #13
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i: ; preds = %bb.o, %.lr.ph.i.i20
  %.not.i.i = icmp eq ptr %i.bk, %i.bn
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, label %.lr.ph.i.i20, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !52
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, %bb.n
  %i.br = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i ], [ %i.bk, %bb.n ] ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.u
  br i1 %i.bs, label %_ZN4llvm11SmallVectorINS0_IN4mlir12OpFoldResultELj6EEELj1EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i
  call void @free(ptr noundef %i.br) #13
  br label %_ZN4llvm11SmallVectorINS0_IN4mlir12OpFoldResultELj6EEELj1EED2Ev.exit

_ZN4llvm11SmallVectorINS0_IN4mlir12OpFoldResultELj6EEELj1EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.q

bb.q:                                             ; preds = %_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit, %_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit.thread, %_ZN4llvm11SmallVectorINS0_IN4mlir12OpFoldResultELj6EEELj1EED2Ev.exit, %bb.c
  %.sroa.014.1 = phi i8 [ 0, %bb.c ], [ %.sroa.014.0, %_ZN4llvm11SmallVectorINS0_IN4mlir12OpFoldResultELj6EEELj1EED2Ev.exit ], [ 0, %_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit.thread ], [ 0, %_ZN4llvm16hasSingleElementINS_14iterator_rangeIN4mlir11ResultRange11UseIteratorEEEEEbOT_.exit ]
  ret i8 %.sroa.014.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir14RewritePatternD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #13
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
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
define internal void @_ZN12_GLOBAL__N_118FoldConcatsOfEmptyD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #13
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #13
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6tensor8ConcatOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.anon.298, align 8            ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %class.anon.298, align 8            ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.mlir::Value", align 8       ; 5 uses
  %8 = alloca %"class.mlir::Value", align 8       ; 5 uses
  %9 = alloca %"class.mlir::Value", align 8       ; 5 uses
  %10 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %11 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %12 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %13 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %14 = alloca %"class.mlir::tensor::ConcatOp", align 8 ; 8 uses
  %15 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %16 = alloca %"class.llvm::SmallVector.164", align 8 ; 10 uses
  %17 = alloca %"class.mlir::RankedTensorType", align 8 ; 5 uses
  store ptr %1, ptr %14, align 8
  %i.a = call i64 @_ZN4mlir6tensor8ConcatOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 0) #13 ; 3 uses
  %i.b = load ptr, ptr %14, align 8, !tbaa !53    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 8388608
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6tensor8ConcatOp9getInputsEv.exit, label %bb.b, !prof !82

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56
  br label %_ZN4mlir6tensor8ConcatOp9getInputsEv.exit

_ZN4mlir6tensor8ConcatOp9getInputsEv.exit:        ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.h = and i64 %i.a, 4294967295                 ; 3 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.a, 32
  %i.i = add i64 %.sroa.5.0.extract.shift.i.i, %i.a
  %i.j = and i64 %i.i, 4294967295                 ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.h ; 2 uses
  %i.l = icmp eq i64 %i.j, %i.h
  br i1 %i.l, label %bb.x, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir6tensor8ConcatOp9getInputsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !58
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %15, align 8
  %i.n = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #13 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !63
  %i.r = icmp eq ptr %i.q, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  %18 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %18, %i.r
  br i1 %spec.select.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br label %bb.x

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  %i.s = xor i64 %i.h, -1
  %i.t = add nsw i64 %i.j, %i.s                   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 7 uses
  %i.v = ashr i64 %i.t, 2                         ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.j
  %.0122.i.i.i.i.i = phi i64 [ %i.az, %bb.j ], [ %i.v, %bb.f ] ; 2 uses
  %.sroa.15.0121.i.i.i.i.i = phi i64 [ %i.ay, %bb.j ], [ 0, %bb.f ] ; 7 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.15.0121.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, ptr %13, align 8
  %i.z = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #13 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit.thread.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit.thread.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit

_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !60
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !63
  %.not107.i.i.i.i.i = icmp eq ptr %i.ac, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br i1 %.not107.i.i.i.i.i, label %bb.g, label %_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit.i.i.i.i.i
  %i.ad = or disjoint i64 %.sroa.15.0121.i.i.i.i.i, 1 ; 3 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.0.0.copyload.i.i.i.i36.i.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %.sroa.0.0.copyload.i.i.i.i36.i.i.i.i.i, ptr %12, align 8
  %i.ag = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #13 ; 2 uses
  %.not.i.i.i.i.i37.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i37.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit40.thread.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit40.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit40.thread.i.i.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit

_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit40.i.i.i.i.i: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i38.i.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !60
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i38.i.i.i.i.i, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !63
  %.not108.i.i.i.i.i = icmp eq ptr %i.aj, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br i1 %.not108.i.i.i.i.i, label %bb.h, label %_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit40.i.i.i.i.i
  %i.ak = or disjoint i64 %.sroa.15.0121.i.i.i.i.i, 2 ; 3 uses
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.0.0.copyload.i.i.i.i41.i.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %.sroa.0.0.copyload.i.i.i.i41.i.i.i.i.i, ptr %11, align 8
  %i.an = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #13 ; 2 uses
  %.not.i.i.i.i.i42.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit45.thread.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit45.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit45.thread.i.i.i.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit

_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit45.i.i.i.i.i: ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i43.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !60
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i43.i.i.i.i.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !63
  %.not109.i.i.i.i.i = icmp eq ptr %i.aq, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br i1 %.not109.i.i.i.i.i, label %bb.i, label %_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit45.i.i.i.i.i
  %i.ar = or disjoint i64 %.sroa.15.0121.i.i.i.i.i, 3 ; 3 uses
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.0.0.copyload.i.i.i.i46.i.i.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %.sroa.0.0.copyload.i.i.i.i46.i.i.i.i.i, ptr %10, align 8
  %i.au = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #13 ; 2 uses
  %.not.i.i.i.i.i47.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i47.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit50.thread.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit50.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit50.thread.i.i.i.i.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit

_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit50.i.i.i.i.i: ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i48.i.i.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !60
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i48.i.i.i.i.i, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !63
  %.not110.i.i.i.i.i = icmp eq ptr %i.ax, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br i1 %.not110.i.i.i.i.i, label %bb.j, label %_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit50.i.i.i.i.i
  %i.ay = add nuw nsw i64 %.sroa.15.0121.i.i.i.i.i, 4 ; 2 uses
  %i.az = add nsw i64 %.0122.i.i.i.i.i, -1
  %i.ba = icmp sgt i64 %.0122.i.i.i.i.i, 1
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !209

._crit_edge.i.i.i.i.i:                            ; preds = %bb.j, %bb.f
  %.sroa.15.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.f ], [ %i.ay, %bb.j ] ; 7 uses
  %i.bb = sub nsw i64 %i.t, %.sroa.15.0.lcssa.i.i.i.i.i
  switch i64 %i.bb, label %_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit.thread [
    i64 3, label %bb.k
    i64 2, label %bb.m
    i64 1, label %bb.o
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bc = getelementptr inbounds [32 x i8], ptr %i.u, i64 %.sroa.15.0.lcssa.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %.sroa.0.0.copyload.i.i.i.i51.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %.sroa.0.0.copyload.i.i.i.i51.i.i.i.i.i, ptr %9, align 8
  %i.be = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #13 ; 2 uses
  %.not.i.i.i.i.i52.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i52.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit55.thread.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit55.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit55.thread.i.i.i.i.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit

_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit55.i.i.i.i.i: ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i53.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i53.i.i.i.i.i, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !63
  %.not.i.i.i.i.i9 = icmp eq ptr %i.bh, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br i1 %.not.i.i.i.i.i9, label %bb.l, label %_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit55.i.i.i.i.i
  %i.bi = add nsw i64 %.sroa.15.0.lcssa.i.i.i.i.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i.i
  %.sroa.15.1.i.i.i.i.i = phi i64 [ %i.bi, %bb.l ], [ %.sroa.15.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 4 uses
  %i.bj = getelementptr inbounds [32 x i8], ptr %i.u, i64 %.sroa.15.1.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.sroa.0.0.copyload.i.i.i.i56.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %.sroa.0.0.copyload.i.i.i.i56.i.i.i.i.i, ptr %8, align 8
  %i.bl = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #13 ; 2 uses
  %.not.i.i.i.i.i57.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i57.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit60.thread.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit60.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit60.thread.i.i.i.i.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit

_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit60.i.i.i.i.i: ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i58.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !tbaa !60
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i58.i.i.i.i.i, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !63
  %.not105.i.i.i.i.i = icmp eq ptr %i.bo, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br i1 %.not105.i.i.i.i.i, label %bb.n, label %_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit60.i.i.i.i.i
  %i.bp = add nsw i64 %.sroa.15.1.i.i.i.i.i, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i.i
  %.sroa.15.2.i.i.i.i.i = phi i64 [ %i.bp, %bb.n ], [ %.sroa.15.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.bq = getelementptr inbounds [32 x i8], ptr %i.u, i64 %.sroa.15.2.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.sroa.0.0.copyload.i.i.i.i61.i.i.i.i.i = load ptr, ptr %i.br, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.0.0.copyload.i.i.i.i61.i.i.i.i.i, ptr %7, align 8
  %i.bs = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #13 ; 2 uses
  %.not.i.i.i.i.i62.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i62.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit65.thread.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit65.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit65.thread.i.i.i.i.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit

_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit65.i.i.i.i.i: ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i63.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !tbaa !60
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i63.i.i.i.i.i, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !63
  %.not106.i.i.i.i.i = icmp eq ptr %i.bv, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %.not106.i.i.i.i.i, label %_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit.thread, label %_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit

_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit40.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit45.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit50.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit.thread.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit40.thread.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit45.thread.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit50.thread.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit55.thread.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit55.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit60.thread.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit60.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit65.thread.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit65.i.i.i.i.i
  %.sroa.9.0.i.i.i.i.i = phi i64 [ %.sroa.15.1.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit60.i.i.i.i.i ], [ %.sroa.15.0.lcssa.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit55.thread.i.i.i.i.i ], [ %.sroa.15.1.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit60.thread.i.i.i.i.i ], [ %.sroa.15.2.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit65.thread.i.i.i.i.i ], [ %i.ar, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit50.thread.i.i.i.i.i ], [ %.sroa.15.2.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit65.i.i.i.i.i ], [ %.sroa.15.0.lcssa.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit55.i.i.i.i.i ], [ %.sroa.15.0121.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit.thread.i.i.i.i.i ], [ %i.ad, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit40.thread.i.i.i.i.i ], [ %i.ak, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit45.thread.i.i.i.i.i ], [ %i.ak, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit45.i.i.i.i.i ], [ %i.ar, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit50.i.i.i.i.i ], [ %.sroa.15.0121.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit.i.i.i.i.i ], [ %i.ad, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit40.i.i.i.i.i ]
  %i.bw = icmp eq i64 %i.t, %.sroa.9.0.i.i.i.i.i
  br i1 %i.bw, label %_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.by, align 1, !tbaa !214
  store ptr @.str.13, ptr %6, align 8, !tbaa !215
  store i8 3, ptr %i.bx, align 8, !tbaa !216
  %i.bz = load ptr, ptr %14, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr %6, ptr %5, align 8, !tbaa !217
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !223 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor8ConcatOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.cb) #13
  br i1 %i.cc, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor8ConcatOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %.sroa.0.0.copyload.i.i.i.i10 = load ptr, ptr %i.cd, align 8
  %i.ce = ptrtoint ptr %5 to i64
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(12) %i.cb, ptr %.sroa.0.0.copyload.i.i.i.i10, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6tensor8ConcatOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ce) #13, !inline_history !210
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor8ConcatOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor8ConcatOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.p, %bb.q, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.x

_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit.thread: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteEN4mlir6tensor8ConcatOpERNS4_15PatternRewriterEEUlNS4_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS4_12OperandRangeEPNS4_9OpOperandES9_S9_S9_E8iteratorEEEbT_.exit65.i.i.i.i.i, %._crit_edge.i.i.i.i.i, %_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  %i.ci = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.ci, ptr %16, align 8, !tbaa !52
  %i.cj = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i32 0, ptr %i.cj, align 8, !tbaa !41
  %i.ck = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 1, ptr %i.ck, align 4, !tbaa !42
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cm = call i8 @_ZN4mlir6tensor8ConcatOp17reifyResultShapesERNS_9OpBuilderERN4llvm11SmallVectorINS5_INS_12OpFoldResultELj6EEELj1EEE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(80) %16) #13
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.cp, align 1, !tbaa !214
  store ptr @.str.14, ptr %4, align 8, !tbaa !215
  store i8 3, ptr %i.co, align 8, !tbaa !216
  %i.cq = load ptr, ptr %14, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %4, ptr %3, align 8, !tbaa !217
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !223 ; 4 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i11, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor8ConcatOpEEEN4llvm13LogicalResultEOT_PKc.exit14, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.cs) #13
  br i1 %i.ct, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i12, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor8ConcatOpEEEN4llvm13LogicalResultEOT_PKc.exit14

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i12: ; preds = %bb.s
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %.sroa.0.0.copyload.i.i.i.i13 = load ptr, ptr %i.cu, align 8
  %i.cv = ptrtoint ptr %3 to i64
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 88
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(12) %i.cs, ptr %.sroa.0.0.copyload.i.i.i.i13, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6tensor8ConcatOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.cv) #13, !inline_history !210
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor8ConcatOpEEEN4llvm13LogicalResultEOT_PKc.exit14

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor8ConcatOpEEEN4llvm13LogicalResultEOT_PKc.exit14: ; preds = %bb.r, %bb.s, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.u

bb.t:                                             ; preds = %_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118FoldConcatsOfEmpty15matchAndRewriteENS1_6tensor8ConcatOpERNS1_15PatternRewriterEEUlNS1_5ValueEE_EEbOT_T0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  %i.cz = load ptr, ptr %14, align 8, !tbaa !53
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -16
  %i.db = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i64 noundef 0) #13
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.dc, align 8
  %i.dd = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.de = inttoptr i64 %i.dd to ptr
  store ptr %i.de, ptr %17, align 8
  %i.df = load ptr, ptr %14, align 8, !tbaa !53   ; 2 uses
  %i.dg = load ptr, ptr %16, align 8, !tbaa !52   ; 2 uses
  %i.dh = call ptr @_ZNK4mlir16RankedTensorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #13
  %i.di = call ptr @_ZNK4mlir16RankedTensorType11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #13
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.dj, align 8
  %i.dk = load ptr, ptr %i.dg, align 8, !tbaa !52
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !41
  %i.dn = zext i32 %i.dm to i64
  %i.do = call ptr @_ZN4mlir6tensor7EmptyOp6createERNS_9OpBuilderENS_8LocationEN4llvm8ArrayRefINS_12OpFoldResultEEENS_4TypeENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr %.sroa.0.0.copyload.i.i, ptr %i.dk, i64 %i.dn, ptr %i.dh, ptr %i.di) #13
  %i.dp = load ptr, ptr %2, align 8, !tbaa !16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.df, ptr noundef %i.do) #13, !inline_history !211
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor8ConcatOpEEEN4llvm13LogicalResultEOT_PKc.exit14
  %.sroa.05.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor8ConcatOpEEEN4llvm13LogicalResultEOT_PKc.exit14 ], [ 1, %bb.t ]
  %i.ds = load ptr, ptr %16, align 8, !tbaa !52   ; 3 uses
  %i.dt = load i32, ptr %i.cj, align 8, !tbaa !41 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.u
  %i.du = zext i32 %i.dt to i64
  %.idx.i = shl nuw nsw i64 %i.du, 6
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.dw, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i ], [ %i.dv, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %.05.i.i, i64 -64 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !52 ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %.05.i.i, i64 -48
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  call void @free(ptr noundef %i.dx) #13
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i: ; preds = %bb.v, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.ds, %i.dw
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %16, align 8, !tbaa !52
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, %bb.u
  %i.ea = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i ], [ %i.ds, %bb.u ] ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.ci
  br i1 %i.eb, label %_ZN4llvm11SmallVectorINS0_IN4mlir12OpFoldResultELj6EEELj1EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i
  call void @free(ptr noundef %i.ea) #13
  br label %_ZN4llvm11SmallVectorINS0_IN4mlir12OpFoldResultELj6EEELj1EED2Ev.exit

_ZN4llvm11SmallVectorINS0_IN4mlir12OpFoldResultELj6EEELj1EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  br label %bb.x

bb.x:                                             ; preds = %bb.e, %_ZN4llvm11SmallVectorINS0_IN4mlir12OpFoldResultELj6EEELj1EED2Ev.exit, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor8ConcatOpEEEN4llvm13LogicalResultEOT_PKc.exit, %_ZN4mlir6tensor8ConcatOp9getInputsEv.exit
  %.sroa.05.2 = phi i8 [ 0, %_ZN4mlir6tensor8ConcatOp9getInputsEv.exit ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor8ConcatOpEEEN4llvm13LogicalResultEOT_PKc.exit ], [ %.sroa.05.0, %_ZN4llvm11SmallVectorINS0_IN4mlir12OpFoldResultELj6EEELj1EED2Ev.exit ], [ 0, %bb.e ]
  ret i8 %.sroa.05.2
}

declare i8 @_ZN4mlir6tensor8ConcatOp17reifyResultShapesERNS_9OpBuilderERN4llvm11SmallVectorINS5_INS_12OpFoldResultELj6EEELj1EEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

declare i64 @_ZN4mlir6tensor8ConcatOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6tensor8ConcatOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(192) %1) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225, !nonnull !65, !align !226
  %i.c = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(34) %i.b) #13 ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
