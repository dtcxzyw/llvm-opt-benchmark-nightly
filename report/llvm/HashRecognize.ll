Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HashRecognize?download=true
inline.NumInlined: 1543
inline.NumDeleted: 1035
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.llvm::AnalysisSetKey" = type { [8 x i8] }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [48 x i8] }
%"struct.llvm::CRCTable" = type { %"struct.std::array" }
%"struct.std::array" = type { [256 x %"class.llvm::APInt"] }
%"class.llvm::APInt" = type <{ %union.anon, i32, [4 x i8] }>
%union.anon = type { i64 }
%"class.std::variant" = type { %"struct.std::__detail::__variant::_Variant_base.base", [7 x i8] }
%"struct.std::__detail::__variant::_Variant_base.base" = type { %"struct.std::__detail::__variant::_Move_assign_base.base" }
%"struct.std::__detail::__variant::_Move_assign_base.base" = type { %"struct.std::__detail::__variant::_Copy_assign_base.base" }
%"struct.std::__detail::__variant::_Copy_assign_base.base" = type { %"struct.std::__detail::__variant::_Move_ctor_base.base" }
%"struct.std::__detail::__variant::_Move_ctor_base.base" = type { %"struct.std::__detail::__variant::_Copy_ctor_base.base" }
%"struct.std::__detail::__variant::_Copy_ctor_base.base" = type { %"struct.std::__detail::__variant::_Variant_storage.base" }
%"struct.std::__detail::__variant::_Variant_storage.base" = type <{ %"union.std::__detail::__variant::_Variadic_union", i8 }>
%"union.std::__detail::__variant::_Variadic_union" = type { %"union.std::__detail::__variant::_Variadic_union.9", [40 x i8] }
%"union.std::__detail::__variant::_Variadic_union.9" = type { %"struct.std::__detail::__variant::_Uninitialized.10" }
%"struct.std::__detail::__variant::_Uninitialized.10" = type { %"class.llvm::StringRef" }
%"class.llvm::StringRef" = type { ptr, i64 }
%struct.RecurrenceInfo = type { ptr, ptr, ptr, ptr, ptr, %"class.std::optional" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base", [7 x i8] }
%"struct.std::_Optional_payload.base" = type { %"struct.std::_Optional_payload_base.base" }
%"struct.std::_Optional_payload_base.base" = type { %"union.std::_Optional_payload_base<llvm::APInt>::_Storage", i8 }
%"union.std::_Optional_payload_base<llvm::APInt>::_Storage" = type { %"class.llvm::APInt" }
%"struct.std::pair" = type { %struct.RecurrenceInfo, %struct.RecurrenceInfo }
%"class.std::optional.69" = type { %"struct.std::_Optional_base.70" }
%"struct.std::_Optional_base.70" = type { %"struct.std::_Optional_payload.72" }
%"struct.std::_Optional_payload.72" = type { %"struct.std::_Optional_payload.base.76", [7 x i8] }
%"struct.std::_Optional_payload.base.76" = type { %"struct.std::_Optional_payload_base.base.75" }
%"struct.std::_Optional_payload_base.base.75" = type <{ %"union.std::_Optional_payload_base<std::pair<RecurrenceInfo, RecurrenceInfo>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<std::pair<RecurrenceInfo, RecurrenceInfo>>::_Storage" = type { %"struct.std::pair" }
%"class.llvm::SmallVector.86" = type { %"class.llvm::SmallVectorImpl.87", %"struct.llvm::SmallVectorStorage.90" }
%"class.llvm::SmallVectorImpl.87" = type { %"class.llvm::SmallVectorTemplateBase.88" }
%"class.llvm::SmallVectorTemplateBase.88" = type { %"class.llvm::SmallVectorTemplateCommon.89" }
%"class.llvm::SmallVectorTemplateCommon.89" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.90" = type { [48 x i8] }
%"struct.llvm::PolynomialInfo" = type { i32, ptr, %"class.llvm::APInt", ptr, i8, ptr }
%"struct.llvm::PatternMatch::BinaryOp_match" = type { %"struct.llvm::PatternMatchHelpers::match_combine_or", %"struct.llvm::PatternMatchHelpers::match_combine_or" }
%"struct.llvm::PatternMatchHelpers::match_combine_or" = type { %"struct.llvm::PatternMatchHelpers::match_combine_or.148", %"struct.llvm::PatternMatch::CastInst_match.151" }
%"struct.llvm::PatternMatchHelpers::match_combine_or.148" = type { %"struct.llvm::PatternMatchHelpers::match_combine_or.149", %"struct.llvm::PatternMatch::CastInst_match" }
%"struct.llvm::PatternMatchHelpers::match_combine_or.149" = type { %"struct.llvm::PatternMatch::specificval_ty" }
%"struct.llvm::PatternMatch::specificval_ty" = type { ptr }
%"struct.llvm::PatternMatch::CastInst_match" = type { %"struct.llvm::PatternMatch::specificval_ty" }
%"struct.llvm::PatternMatch::CastInst_match.151" = type { %"struct.llvm::PatternMatch::specificval_ty" }
%"class.llvm::CmpPredicate" = type <{ i32, i8, [3 x i8] }>
%"struct.llvm::PatternMatch::ThreeOps_match.153" = type { %"struct.llvm::PatternMatch::CmpClass_match", %"struct.llvm::PatternMatchHelpers::match_bind", %"struct.llvm::PatternMatchHelpers::match_bind" }
%"struct.llvm::PatternMatch::CmpClass_match" = type { ptr, %"struct.llvm::PatternMatchHelpers::match_bind.154", %"struct.llvm::PatternMatch::ap_match" }
%"struct.llvm::PatternMatchHelpers::match_bind.154" = type { ptr }
%"struct.llvm::PatternMatch::ap_match" = type <{ ptr, i8, [7 x i8] }>
%"struct.llvm::PatternMatchHelpers::match_bind" = type { ptr }
%"struct.llvm::PatternMatchHelpers::match_combine_or.155" = type { %"struct.llvm::PatternMatchHelpers::match_combine_or.156", %"struct.llvm::PatternMatch::specificval_ty" }
%"struct.llvm::PatternMatchHelpers::match_combine_or.156" = type { [8 x i8], %"struct.llvm::PatternMatch::BinaryOp_match" }
%"struct.llvm::PatternMatch::BinaryOp_match.157" = type { %"struct.llvm::PatternMatchHelpers::match_combine_or.155", %"struct.llvm::PatternMatch::cstval_pred_ty" }
%"struct.llvm::PatternMatch::cstval_pred_ty" = type { ptr }
%"struct.llvm::KnownBits" = type { %"class.llvm::APInt", %"class.llvm::APInt" }
%"class.llvm::ConstantRange" = type { %"class.llvm::APInt", %"class.llvm::APInt" }
%"struct.llvm::PatternMatch::BinaryOp_match.158" = type { %"struct.llvm::PatternMatch::specificval_ty", %"struct.llvm::PatternMatch::specific_intval" }
%"struct.llvm::PatternMatch::specific_intval" = type { ptr }
%"class.llvm::SmallPtrSet.163" = type { %"class.llvm::SmallPtrSetImpl.base.165", [16 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.165" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallPtrSetImplBase.base" = type <{ ptr, i32, i32, i8 }>
%"class.llvm::SmallVector.166" = type { %"class.llvm::SmallVectorImpl.87", %"struct.llvm::SmallVectorStorage.167" }
%"struct.llvm::SmallVectorStorage.167" = type { [128 x i8] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.126 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.126 = type { i64, [8 x i8] }
%"class.std::optional.127" = type { %"struct.std::_Optional_base.128" }
%"struct.std::_Optional_base.128" = type { %"struct.std::_Optional_payload.130" }
%"struct.std::_Optional_payload.130" = type { %"struct.std::_Optional_payload.base.134", [7 x i8] }
%"struct.std::_Optional_payload.base.134" = type { %"struct.std::_Optional_payload_base.base.133" }
%"struct.std::_Optional_payload_base.base.133" = type <{ %"union.std::_Optional_payload_base<llvm::PolynomialInfo>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::PolynomialInfo>::_Storage" = type { %"struct.llvm::PolynomialInfo" }
%"class.llvm::HashRecognize" = type { ptr, ptr }
%"class.llvm::PreservedAnalyses" = type { %"class.llvm::SmallPtrSet.137", %"class.llvm::SmallPtrSet.140" }
%"class.llvm::SmallPtrSet.137" = type { %"class.llvm::SmallPtrSetImpl.base.139", [2 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.139" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallPtrSet.140" = type { %"class.llvm::SmallPtrSetImpl.base.142", [2 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.142" = type { %"class.llvm::SmallPtrSetImplBase.base" }

$_ZN4llvm23SmallVectorTemplateBaseIPKNS_11InstructionELb1EE9push_backES3_ = comdat any

$_ZNK4llvm12PatternMatch14BinaryOp_matchINS_19PatternMatchHelpers16match_combine_orIJNS0_14CastInst_matchINS0_14specificval_tyENS_8ZExtInstEEENS4_IS5_NS_9TruncInstEEES5_EEESA_Lj31ELb1EE5matchIKNS_11InstructionEEEbPT_ = comdat any

$_ZN4llvm9KnownBits12makeConstantERKNS_5APIntE = comdat any

$_ZNK4llvm12PatternMatch14ThreeOps_matchINS0_14CmpClass_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEENS0_8ap_matchINS_5APIntEEENS_8ICmpInstELb0EEENS4_INS_11InstructionEEESE_Lj59ELb0EE5matchINS_10SelectInstEEEbPT_ = comdat any

$_ZNK4llvm12PatternMatch14BinaryOp_matchINS_19PatternMatchHelpers16match_combine_orIJNS0_14CastInst_matchINS0_14specificval_tyENS_8ZExtInstEEENS4_IS5_NS_9TruncInstEEES5_EEESA_Lj31ELb1EE5matchIKNS_5ValueEEEbPT_ = comdat any

$_ZNK4llvm12PatternMatch14BinaryOp_matchINS_19PatternMatchHelpers16match_combine_orIJNS0_14specificval_tyENS1_INS3_IJNS0_14CastInst_matchIS4_NS_8ZExtInstEEENS5_IS4_NS_9TruncInstEEES4_EEESA_Lj31ELb1EEEEEENS0_14cstval_pred_tyINS0_6is_oneENS_11ConstantIntELb1EEELj29ELb1EE5matchIKNS_5ValueEEEbjPT_ = comdat any

$_ZNK4llvm12PatternMatch14BinaryOp_matchINS_19PatternMatchHelpers16match_combine_orIJNS0_14CastInst_matchINS0_14specificval_tyENS_8ZExtInstEEENS4_IS5_NS_9TruncInstEEES5_EEESA_Lj31ELb1EE5matchINS_5ValueEEEbPT_ = comdat any

$_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_6is_oneENS_11ConstantIntELb1EE11matchVectorEPKNS_5ValueE = comdat any

$_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_14specificval_tyENS0_15specific_intvalILb0EEELj31ELb1EE5matchINS_11InstructionEEEbjPT_ = comdat any

$_ZN4llvm5APInt11isSameValueERKS0_S2_b = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPKNS_11InstructionELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [22 x i8] c"Loop is not innermost\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Loop not in canonical form\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Unable to find a small constant byte-multiple trip count\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Found stray PHI\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Unable to find conditional recurrence\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Loop with non-unit bitshifts\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Recurrences have stray uses\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Recurrences not intertwined with XOR\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Loop iterations exceed bitwidth of data\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"Unable to find use of computed value in loop exit block\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Malformed significant-bit check\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Found stray unvisited instructions\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"HashRecognize: Checking a loop in '\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"' from \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Did not find a hash algorithm\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Reason: \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"Found\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c" big-endian \00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c" little-endian \00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"CRC-\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c" loop with trip count \00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"Initial CRC: \00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"Generating polynomial: \00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"Computed CRC: \00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"Auxiliary data: \00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"Computed CRC lookup table:\0A\00", align 1
@_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE = external global %"struct.llvm::AnalysisSetKey", align 8

@_ZN4llvm14PolynomialInfoC1EjPNS_5ValueERKNS_5APIntES2_bS2_ = unnamed_addr alias void (ptr, i32, ptr, ptr, ptr, i1, ptr), ptr @_ZN4llvm14PolynomialInfoC2EjPNS_5ValueERKNS_5APIntES2_bS2_
@_ZN4llvm13HashRecognizeC1ERKNS_4LoopERNS_15ScalarEvolutionE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4llvm13HashRecognizeC2ERKNS_4LoopERNS_15ScalarEvolutionE

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN14RecurrenceInfo21matchSimpleRecurrenceEPKN4llvm7PHINodeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = tail call noundef zeroext i1 @_ZN4llvm21matchSimpleRecurrenceEPKNS_7PHINodeERPNS_14BinaryOperatorERPNS_5ValueES8_(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #12 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

declare noundef zeroext i1 @_ZN4llvm21matchSimpleRecurrenceEPKNS_7PHINodeERPNS_14BinaryOperatorERPNS_5ValueES8_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN14RecurrenceInfo13digRecurrenceEPN4llvm11InstructionENS1_9BinaryOpsE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit:
  %3 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 6, ptr %i.c, align 4, !tbaa !24
  store ptr %1, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br label %bb.a

thread-pre-splitthread-pre-split:                 ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit23, %_ZN4llvm4User8operandsEv.exit
  %.pr.pr = load i32, ptr %i.b, align 8, !tbaa !25
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-splitthread-pre-split, %bb.a
  %.pr = phi i32 [ %.pr.pr, %thread-pre-splitthread-pre-split ], [ %i.n, %bb.a ] ; 2 uses
  %.not.i18 = icmp eq i32 %.pr, 0
  br i1 %.not.i18, label %thread-pre-split..thread_crit_edge, label %bb.a

thread-pre-split..thread_crit_edge:               ; preds = %thread-pre-split
  %.pre = load ptr, ptr %3, align 8, !tbaa !23
  br label %.thread

bb.a:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit, %thread-pre-split
  %i.h = phi i32 [ 1, %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit ], [ %.pr, %thread-pre-split ] ; 2 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !23     ; 4 uses
  %i.j = zext i32 %i.h to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27   ; 10 uses
  %i.n = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.n, ptr %i.b, align 8, !tbaa !25
  %i.o = load i8, ptr %i.m, align 8, !tbaa !32    ; 3 uses
  %i.p = icmp eq i8 %i.o, 87
  br i1 %i.p, label %thread-pre-split, label %bb.b, !llvm.loop !103

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %i.r = add i8 %i.o, -44
  %i.s = icmp ult i8 %i.r, 18                     ; 2 uses
  br i1 %i.s, label %bb.c, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_17AnyBinaryOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEENS0_14specificval_tyELb1EEEEEbPT_RKT0_.exit.thread39

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds i8, ptr %i.m, i64 -32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !38
  %i.v = icmp eq ptr %i.u, %i.q
  br i1 %i.v, label %.thread, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_17AnyBinaryOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEENS0_14specificval_tyELb1EEEEEbPT_RKT0_.exit

_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_17AnyBinaryOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEENS0_14specificval_tyELb1EEEEEbPT_RKT0_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds i8, ptr %i.m, i64 -64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.y = icmp eq ptr %i.x, %i.q
  br i1 %i.y, label %.thread, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_17AnyBinaryOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEENS0_14specificval_tyELb1EEEEEbPT_RKT0_.exit.thread39

_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_17AnyBinaryOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEENS0_14specificval_tyELb1EEEEEbPT_RKT0_.exit.thread39: ; preds = %bb.b, %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_17AnyBinaryOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEENS0_14specificval_tyELb1EEEEEbPT_RKT0_.exit
  %i.z = zext i8 %i.o to i32
  %i.aa = add nsw i32 %i.z, -30
  %i.ab = icmp eq i32 %i.aa, %2
  br i1 %i.ab, label %bb.d, label %_ZNSt8optionalIN4llvm5APIntEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit

bb.d:                                             ; preds = %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_17AnyBinaryOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEENS0_14specificval_tyELb1EEEEEbPT_RKT0_.exit.thread39
  %i.ac = load i8, ptr %i.e, align 8, !tbaa !39, !range !40, !noundef !41
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.s, label %bb.f, label %_ZNSt8optionalIN4llvm5APIntEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds i8, ptr %i.m, i64 -64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38 ; 4 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !32  ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 5
  br i1 %i.ah, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !42
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = and i32 %i.al, 254
  %spec.select.i.i10.i.i = icmp ne i32 %i.am, 18
  %i.an = icmp ugt i8 %i.ag, 22
  %or.cond.i.i.i = or i1 %i.an, %spec.select.i.i10.i.i
  br i1 %or.cond.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = call noundef ptr @_ZNK4llvm8Constant13getSplatValueEb(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i1 noundef zeroext false) #12 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !32
  %i.aq = icmp eq i8 %i.ap, 5
  br i1 %i.aq, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ar = getelementptr inbounds i8, ptr %i.m, i64 -32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !38 ; 4 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !32  ; 2 uses
  %i.au = icmp eq i8 %i.at, 5
  br i1 %i.au, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = and i32 %i.ay, 254
  %spec.select.i.i11.i.i = icmp ne i32 %i.az, 18
  %i.ba = icmp ugt i8 %i.at, 22
  %or.cond.i12.i.i = or i1 %i.ba, %spec.select.i.i11.i.i
  br i1 %or.cond.i12.i.i, label %_ZNSt8optionalIN4llvm5APIntEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = call noundef ptr @_ZNK4llvm8Constant13getSplatValueEb(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i1 noundef zeroext false) #12 ; 3 uses
  %.not.i.i.i13.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i13.i.i, label %_ZNSt8optionalIN4llvm5APIntEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !32
  %i.bd = icmp eq i8 %i.bc, 5
  br i1 %i.bd, label %bb.n, label %_ZNSt8optionalIN4llvm5APIntEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.i, %bb.f
  %.sink28.i.sink.i.i = phi ptr [ %i.ao, %bb.i ], [ %i.af, %bb.f ], [ %i.as, %bb.j ], [ %i.bb, %bb.m ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sink28.i.sink.i.i, i64 24 ; 4 uses
  %i.bf = load i8, ptr %i.e, align 8, !tbaa !39, !range !40, !noundef !41
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bh = load i32, ptr %i.g, align 8, !tbaa !44
  %i.bi = icmp ult i32 %i.bh, 65
  br i1 %i.bi, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink28.i.sink.i.i, i64 32 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !44
  %i.bl = icmp ult i32 %i.bk, 65
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !45
  store i64 %i.bm, ptr %i.d, align 8, !tbaa !45
  %i.bn = load i32, ptr %i.bj, align 8, !tbaa !44
  store i32 %i.bn, ptr %i.g, align 8, !tbaa !44
  br label %_ZNSt8optionalIN4llvm5APIntEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit

bb.r:                                             ; preds = %bb.p, %bb.o
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(12) %i.be) #12
  br label %_ZNSt8optionalIN4llvm5APIntEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit

bb.s:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.sink28.i.sink.i.i, i64 32
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !44 ; 2 uses
  store i32 %i.bp, ptr %i.g, align 8, !tbaa !44
  %i.bq = icmp ult i32 %i.bp, 65
  br i1 %i.bq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.br = load i64, ptr %i.be, align 8, !tbaa !45
  store i64 %i.br, ptr %i.d, align 8, !tbaa !45
  br label %_ZNSt19_Optional_base_implIN4llvm5APIntESt14_Optional_baseIS1_Lb0ELb0EEE12_M_constructIJRKS1_EEEvDpOT_.exit.i

bb.u:                                             ; preds = %bb.s
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(12) %i.be) #12
  br label %_ZNSt19_Optional_base_implIN4llvm5APIntESt14_Optional_baseIS1_Lb0ELb0EEE12_M_constructIJRKS1_EEEvDpOT_.exit.i

_ZNSt19_Optional_base_implIN4llvm5APIntESt14_Optional_baseIS1_Lb0ELb0EEE12_M_constructIJRKS1_EEEvDpOT_.exit.i: ; preds = %bb.u, %bb.t
  store i8 1, ptr %i.e, align 8, !tbaa !39
  br label %_ZNSt8optionalIN4llvm5APIntEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit

_ZNSt8optionalIN4llvm5APIntEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit: ; preds = %bb.q, %bb.r, %_ZNSt19_Optional_base_implIN4llvm5APIntESt14_Optional_baseIS1_Lb0ELb0EEE12_M_constructIJRKS1_EEEvDpOT_.exit.i, %bb.m, %bb.k, %bb.e, %bb.l, %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_17AnyBinaryOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEENS0_14specificval_tyELb1EEEEEbPT_RKT0_.exit.thread39
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.bt = load i32, ptr %i.bs, align 4            ; 3 uses
  %i.bu = and i32 %i.bt, 1073741824
  %.not.i.i.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt8optionalIN4llvm5APIntEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit
  %i.bv = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !46
  %.pre.i.i = and i32 %i.bt, 268435455
  %.pre1.i.i = zext nneg i32 %.pre.i.i to i64
  br label %_ZN4llvm4User8operandsEv.exit

bb.w:                                             ; preds = %_ZNSt8optionalIN4llvm5APIntEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit
  %i.bx = and i32 %i.bt, 268435455
  %i.by = zext nneg i32 %i.bx to i64              ; 2 uses
  %i.bz = sub nsw i64 0, %i.by
  %i.ca = getelementptr inbounds [32 x i8], ptr %i.m, i64 %i.bz
  br label %_ZN4llvm4User8operandsEv.exit

_ZN4llvm4User8operandsEv.exit:                    ; preds = %bb.v, %bb.w
  %i.cb = phi ptr [ %i.bw, %bb.v ], [ %i.ca, %bb.w ] ; 2 uses
  %.pre-phi2.i.i = phi i64 [ %.pre1.i.i, %bb.v ], [ %i.by, %bb.w ] ; 2 uses
  %.idx = shl nuw nsw i64 %.pre-phi2.i.i, 5
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx
  %.not49 = icmp eq i64 %.pre-phi2.i.i, 0
  br i1 %.not49, label %thread-pre-splitthread-pre-split, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm4User8operandsEv.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit23
  %.050 = phi ptr [ %i.dc, %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit23 ], [ %i.cb, %_ZN4llvm4User8operandsEv.exit ] ; 2 uses
  %i.cd = load ptr, ptr %.050, align 8, !tbaa !38 ; 4 uses
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !32
  %i.cf = icmp ult i8 %i.ce, 30
  br i1 %i.cf, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit23, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  %i.cg = load ptr, ptr %0, align 8, !tbaa !104, !nonnull !41, !align !47 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !50 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 56 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !52, !range !40, !noundef !41
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.y, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit

bb.y:                                             ; preds = %bb.x
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !53 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 68
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !54 ; 2 uses
  %i.cq = zext i32 %i.cp to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i.i.i
  %.not17.i.i.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not17.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit23, label %.lr.ph.i.i.i.i

bb.z:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.cs, %i.cr
  br i1 %.not.i.i.i.i21, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit23, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y, %bb.z
  %.01218.i.i.i.i = phi ptr [ %i.cs, %bb.z ], [ %i.cn, %bb.y ] ; 2 uses
  %i.ct = load ptr, ptr %.01218.i.i.i.i, align 8, !tbaa !55
  %.not15.i.i.i.i = icmp eq ptr %i.ct, %i.ci
  br i1 %.not15.i.i.i.i, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit.thread43, label %bb.z

_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit: ; preds = %bb.x
  %i.cu = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.cj, ptr noundef %i.ci) #12
  %.not48 = icmp eq ptr %i.cu, null
  br i1 %.not48, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit23, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit.thread43

_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit.thread43: ; preds = %.lr.ph.i.i.i.i, %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit
  %i.cv = load i32, ptr %i.b, align 8, !tbaa !25  ; 2 uses
  %i.cw = load i32, ptr %i.c, align 4, !tbaa !24
  %.not.i22 = icmp ult i32 %i.cv, %i.cw
  br i1 %.not.i22, label %bb.ab, label %bb.aa, !prof !56

bb.aa:                                            ; preds = %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit.thread43
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.cd)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit23

bb.ab:                                            ; preds = %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit.thread43
  %i.cx = zext i32 %i.cv to i64
  %i.cy = load ptr, ptr %3, align 8, !tbaa !23
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cx
  store ptr %i.cd, ptr %i.cz, align 1
  %i.da = load i32, ptr %i.b, align 8, !tbaa !25
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.b, align 8, !tbaa !25
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit23

_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit23: ; preds = %bb.z, %bb.y, %bb.ab, %bb.aa, %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit, %.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %.050, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.dc, %i.cc
  br i1 %.not, label %thread-pre-splitthread-pre-split, label %.lr.ph

.thread:                                          ; preds = %bb.c, %bb.d, %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_17AnyBinaryOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEENS0_14specificval_tyELb1EEEEEbPT_RKT0_.exit, %thread-pre-split..thread_crit_edge
  %i.dd = phi ptr [ %.pre, %thread-pre-split..thread_crit_edge ], [ %i.i, %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_17AnyBinaryOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEENS0_14specificval_tyELb1EEEEEbPT_RKT0_.exit ], [ %i.i, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %.2 = phi ptr [ null, %thread-pre-split..thread_crit_edge ], [ %i.m, %bb.c ], [ null, %bb.d ], [ %i.m, %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_17AnyBinaryOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEENS0_14specificval_tyELb1EEEEEbPT_RKT0_.exit ]
  %i.de = icmp eq ptr %i.dd, %i.a
  br i1 %i.de, label %_ZN4llvm11SmallVectorIPNS_11InstructionELj6EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %.thread
  call void @free(ptr noundef %i.dd) #12
  br label %_ZN4llvm11SmallVectorIPNS_11InstructionELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_11InstructionELj6EED2Ev.exit: ; preds = %.thread, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret ptr %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN14RecurrenceInfo26matchConditionalRecurrenceEPKN4llvm7PHINodeENS0_11Instruction9BinaryOpsE(ptr noundef nonnull align 8 dereferenceable(64) initializes((8, 16)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 268435455
  %.not = icmp eq i32 %i.d, 2
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %1, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38   ; 8 uses
  %i.j = load i8, ptr %i.g, align 8, !tbaa !32
  %i.k = icmp eq i8 %i.j, 89
  br i1 %i.k, label %bb.b, label %bb.i

bb.b:                                             ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %i.n = and i32 %i.m, 1073741824
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm4User10getOperandEj.exit.i.i, label %_ZNK4llvm4User10getOperandEj.exit.thread.i.i

_ZNK4llvm4User10getOperandEj.exit.i.i:            ; preds = %bb.b
  %i.o = and i32 %i.m, 268435455
  %i.p = zext nneg i32 %i.o to i64
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [32 x i8], ptr %i.g, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.t = load i8, ptr %i.s, align 8, !tbaa !32
  %i.u = add i8 %i.t, -85
  %i.v = icmp ult i8 %i.u, 2
  br i1 %i.v, label %_ZNK4llvm4User10getOperandEj.exit8.i.i, label %bb.i

_ZNK4llvm4User10getOperandEj.exit.thread.i.i:     ; preds = %bb.b
  %i.w = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46   ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.z = load i8, ptr %i.y, align 8, !tbaa !32
  %i.aa = add i8 %i.z, -85
  %i.ab = icmp ult i8 %i.aa, 2
  br i1 %i.ab, label %_ZNK4llvm4User10getOperandEj.exit8.i.i.thread, label %bb.i

_ZNK4llvm4User10getOperandEj.exit8.i.i:           ; preds = %_ZNK4llvm4User10getOperandEj.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !38 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !32
  %i.af = icmp ugt i8 %i.ae, 29
  br i1 %i.af, label %bb.d, label %bb.i

_ZNK4llvm4User10getOperandEj.exit8.i.i.thread:    ; preds = %_ZNK4llvm4User10getOperandEj.exit.thread.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !32
  %i.aj = icmp ugt i8 %i.ai, 29
  br i1 %i.aj, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit8.i.i.thread
  %i.ak = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !46
  br label %_ZNK4llvm4User10getOperandEj.exit10.i.i

bb.d:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit8.i.i
  %i.am = and i32 %i.m, 268435455
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [32 x i8], ptr %i.g, i64 %i.ao
  br label %_ZNK4llvm4User10getOperandEj.exit10.i.i

_ZNK4llvm4User10getOperandEj.exit10.i.i:          ; preds = %bb.d, %bb.c
  %i.aq = phi ptr [ %i.ah, %bb.c ], [ %i.ad, %bb.d ]
  %i.ar = phi ptr [ %i.al, %bb.c ], [ %i.ap, %bb.d ]
end_hunk_0
