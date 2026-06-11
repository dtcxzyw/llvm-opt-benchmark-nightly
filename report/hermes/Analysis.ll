inline.NumInlined: 1525
inline.NumDeleted: 715
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvh::SmallPtrSet" = type { %"class.llvh::SmallPtrSetImpl.base", [16 x ptr] }
%"class.llvh::SmallPtrSetImpl.base" = type { %"class.llvh::SmallPtrSetImplBase.base" }
%"class.llvh::SmallPtrSetImplBase.base" = type <{ ptr, ptr, i32, i32, i32 }>
%"class.llvh::SmallVector" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage" }
%"class.llvh::SmallVectorImpl" = type { %"class.llvh::SmallVectorTemplateBase" }
%"class.llvh::SmallVectorTemplateBase" = type { %"class.llvh::SmallVectorTemplateCommon" }
%"class.llvh::SmallVectorTemplateCommon" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage" = type { [32 x %"struct.llvh::AlignedCharArrayUnion"] }
%"struct.llvh::AlignedCharArrayUnion" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::AlignedCharArray" = type { [40 x i8] }
%"struct.hermes::IRPrinter" = type { ptr, i32, ptr, ptr, i8, [7 x i8], %"struct.hermes::InstructionNamer", %"struct.hermes::InstructionNamer", %"struct.hermes::InstructionNamer" }
%"struct.hermes::InstructionNamer" = type <{ %"class.std::map.63", i32, [4 x i8] }>
%"class.std::map.63" = type { %"class.std::_Rb_tree.64" }
%"class.std::_Rb_tree.64" = type { %"struct.std::_Rb_tree<hermes::Value *, std::pair<hermes::Value *const, unsigned int>, std::_Select1st<std::pair<hermes::Value *const, unsigned int>>, std::less<hermes::Value *>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<hermes::Value *, std::pair<hermes::Value *const, unsigned int>, std::_Select1st<std::pair<hermes::Value *const, unsigned int>>, std::less<hermes::Value *>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.llvh::SmallDenseMap.73" = type { i32, i32, %"struct.llvh::AlignedCharArrayUnion.75" }
%"struct.llvh::AlignedCharArrayUnion.75" = type { %"struct.llvh::AlignedCharArray.72" }
%"struct.llvh::AlignedCharArray.72" = type { [256 x i8] }
%"class.llvh::SmallPtrSet.76" = type { %"class.llvh::SmallPtrSetImpl.base.78", [16 x ptr] }
%"class.llvh::SmallPtrSetImpl.base.78" = type { %"class.llvh::SmallPtrSetImplBase.base" }
%"class.llvh::SmallDenseMap.69" = type { i32, i32, %"struct.llvh::AlignedCharArrayUnion.71" }
%"struct.llvh::AlignedCharArrayUnion.71" = type { %"struct.llvh::AlignedCharArray.72" }
%"class.llvh::SmallDenseMap.79" = type { i32, i32, %"struct.llvh::AlignedCharArrayUnion.81" }
%"struct.llvh::AlignedCharArrayUnion.81" = type { %"struct.llvh::AlignedCharArray.82" }
%"struct.llvh::AlignedCharArray.82" = type { [896 x i8] }
%"class.llvh::SmallVector.83" = type { %"class.llvh::SmallVectorImpl.84", %"struct.llvh::SmallVectorStorage.87" }
%"class.llvh::SmallVectorImpl.84" = type { %"class.llvh::SmallVectorTemplateBase.85" }
%"class.llvh::SmallVectorTemplateBase.85" = type { %"class.llvh::SmallVectorTemplateCommon.86" }
%"class.llvh::SmallVectorTemplateCommon.86" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.87" = type { [16 x %"struct.llvh::AlignedCharArrayUnion.88"] }
%"struct.llvh::AlignedCharArrayUnion.88" = type { %"struct.llvh::AlignedCharArray.6" }
%"struct.llvh::AlignedCharArray.6" = type { [8 x i8] }
%"struct.std::pair.89" = type <{ %"class.llvh::DenseMapIterator", i8, [7 x i8] }>
%"class.llvh::DenseMapIterator" = type { ptr, ptr }
%"class.llvh::SmallPtrSet.92" = type { %"class.llvh::SmallPtrSetImpl.base", [2 x ptr] }
%"struct.llvh::AlignedCharArrayUnion.258" = type { %"struct.llvh::AlignedCharArray.72" }
%"struct.llvh::AlignedCharArrayUnion.259" = type { %"struct.llvh::AlignedCharArray.72" }
%"struct.llvh::AlignedCharArrayUnion.260" = type { %"struct.llvh::AlignedCharArray.82" }

$_ZN6hermes9IRVisitorINS_9IRPrinterEvE5visitERKNS_5ValueE = comdat any

$_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E11try_emplaceIJRiEEESt4pairINS_16DenseMapIteratorIS5_iS7_SA_Lb0EEEbERKS5_DpOT_ = comdat any

$_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_ = comdat any

$_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_iEEE4growEj = comdat any

$_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E18moveFromOldBucketsEPSA_SD_ = comdat any

$_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_ = comdat any

$_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_ = comdat any

$_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEE4growEj = comdat any

$_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E18moveFromOldBucketsEPSB_SE_ = comdat any

$_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_ = comdat any

$_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E16InsertIntoBucketIRKS5_JS8_EEEPSD_SJ_OT_DpOT0_ = comdat any

$_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEELj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEE4growEj = comdat any

$_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E18moveFromOldBucketsEPSD_SG_ = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_ = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E16FindAndConstructERKS5_ = comdat any

$_ZN4llvh8DenseMapIPKN6hermes9ScopeDescENS1_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE4growEj = comdat any

@.str = private unnamed_addr constant [9 x i8] c"Blocks: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"BB\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTVN6hermes9IRPrinterE = external unnamed_addr constant { [12 x ptr] }, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN6hermes17PostOrderAnalysisC1EPNS_8FunctionE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN6hermes17PostOrderAnalysisC2EPNS_8FunctionE
@_ZN6hermes12LoopAnalysisC1EPNS_8FunctionERKNS_13DominanceInfoE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6hermes12LoopAnalysisC2EPNS_8FunctionERKNS_13DominanceInfoE

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes17PostOrderAnalysis14visitPostOrderEPNS_10BasicBlockERSt6vectorIS2_SaIS2_EE(ptr noundef nonnull %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::SmallPtrSet", align 8 ; 11 uses
  %3 = alloca %"class.llvh::SmallVector", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 16, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  store i32 0, ptr %i.d, align 4, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store i32 0, ptr %i.g, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 32, ptr %i.h, align 4, !tbaa !18
  store ptr %0, ptr %i.f, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #11
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %.sroa.24.0..sroa_idx.i.i, align 8
  %i.k = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #11 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN4llvh15SmallVectorImplIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateE12emplace_backIJRS4_EEEvDpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = call noundef i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132) %i.k) #11
  br label %_ZN4llvh15SmallVectorImplIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateE12emplace_backIJRS4_EEEvDpOT_.exit

_ZN4llvh15SmallVectorImplIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateE12emplace_backIJRS4_EEEvDpOT_.exit: ; preds = %bb.a, %bb.b
  %.sink.i.i.i.i = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.k, ptr %i.m, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %.sink.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.n = load i32, ptr %i.g, align 8, !tbaa !17
  %i.o = add i32 %i.n, 1                          ; 2 uses
  store i32 %i.o, ptr %i.g, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE9push_backERKS2_.exit, %_ZN4llvh15SmallVectorImplIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateE12emplace_backIJRS4_EEEvDpOT_.exit
  %.val925 = phi i32 [ %i.ck, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE9push_backERKS2_.exit ], [ %i.o, %_ZN4llvh15SmallVectorImplIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateE12emplace_backIJRS4_EEEvDpOT_.exit ] ; 2 uses
  %.val824 = load ptr, ptr %3, align 8, !tbaa !15
  %i.r = zext i32 %.val925 to i64
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %.val824, i64 %i.r ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -24 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !24   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !24
  %.not26 = icmp eq i32 %i.u, %i.w
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.m
  %i.x = phi i32 [ %i.bj, %bb.m ], [ %i.u, %bb.c ] ; 2 uses
  %i.y = phi ptr [ %i.bi, %bb.m ], [ %i.t, %bb.c ]
  %i.z = phi ptr [ %i.bh, %bb.m ], [ %i.s, %bb.c ]
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aa, align 8
  %i.ab = add nsw i32 %i.x, 1
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !24
  %i.ac = call noundef ptr @_ZNK6hermes14TerminatorInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0.0.copyload.i, i32 noundef %i.x) #11 ; 7 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !11, !noalias !25
  %i.ae = load ptr, ptr %2, align 8, !tbaa !7, !noalias !25 ; 3 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %i.ag = load i32, ptr %i.d, align 4, !tbaa !13, !noalias !25 ; 4 uses
  %i.ah = zext i32 %i.ag to i64
  %.idx.i.i = shl nuw nsw i64 %i.ah, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i.i ; 2 uses
  %.not63.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not63.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.065.i.i = phi ptr [ %spec.select.i.i, %bb.e ], [ null, %bb.d ]
  %.04964.i.i = phi ptr [ %i.al, %bb.e ], [ %i.ae, %bb.d ] ; 3 uses
  %i.aj = load ptr, ptr %.04964.i.i, align 8, !tbaa !28, !noalias !25 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.aj, %i.ac
  br i1 %.not27.i.i, label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ak = icmp eq ptr %i.aj, inttoptr (i64 -2 to ptr)
  %spec.select.i.i = select i1 %i.ak, ptr %.04964.i.i, ptr %.065.i.i ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.04964.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, %i.ai
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !29

.critedge.i.i:                                    ; preds = %bb.e
  %.not28.i.i = icmp eq ptr %spec.select.i.i, null
  br i1 %.not28.i.i, label %.critedge.thread.i.i, label %bb.f

bb.f:                                             ; preds = %.critedge.i.i
  store ptr %i.ac, ptr %spec.select.i.i, align 8, !tbaa !28, !noalias !25
  %i.am = load i32, ptr %i.e, align 8, !tbaa !14, !noalias !25
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr %i.e, align 8, !tbaa !14, !noalias !25
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit

.critedge.thread.i.i:                             ; preds = %.critedge.i.i, %bb.d
  %i.ao = load i32, ptr %i.c, align 8, !tbaa !12, !noalias !25
  %i.ap = icmp ult i32 %i.ag, %i.ao
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge.thread.i.i
  %i.aq = add nuw i32 %i.ag, 1
  store i32 %i.aq, ptr %i.d, align 4, !tbaa !13, !noalias !25
  store ptr %i.ac, ptr %i.ai, align 8, !tbaa !28, !noalias !25
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit

bb.h:                                             ; preds = %.critedge.thread.i.i, %.lr.ph
  %i.ar = call { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef %i.ac) #11, !noalias !25
  %i.as = extractvalue { ptr, i8 } %i.ar, 1
  %i.at = trunc nuw i8 %i.as to i1
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit

_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.g, %bb.h
  %.fca.1.insert.merged.i.i = phi i1 [ %i.at, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ false, %.lr.ph.i.i ]
  %.val9.pre = load i32, ptr %i.g, align 8, !tbaa !17 ; 3 uses
  br i1 %.fca.1.insert.merged.i.i, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit
  %i.au = load i32, ptr %i.h, align 4, !tbaa !18
  %.not.i10 = icmp ult i32 %.val9.pre, %i.au
  br i1 %.not.i10, label %bb.k, label %bb.j, !prof !31

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.f, i64 noundef 0, i64 noundef 40) #11
  %.pre.i11 = load i32, ptr %i.g, align 8, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.av = phi i32 [ %.pre.i11, %bb.j ], [ %.val9.pre, %bb.i ]
  %i.aw = load ptr, ptr %3, align 8, !tbaa !15
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %i.ax ; 5 uses
  store ptr %i.ac, ptr %i.ay, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ac) #11
  store ptr %i.ba, ptr %i.az, align 8
  %.sroa.24.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i32 0, ptr %.sroa.24.0..sroa_idx.i.i12, align 8
  %i.bb = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ac) #11 ; 3 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i13, label %_ZN4llvh15SmallVectorImplIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateE12emplace_backIJRS4_EEEvDpOT_.exit16, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = call noundef i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132) %i.bb) #11
  br label %_ZN4llvh15SmallVectorImplIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateE12emplace_backIJRS4_EEEvDpOT_.exit16

_ZN4llvh15SmallVectorImplIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateE12emplace_backIJRS4_EEEvDpOT_.exit16: ; preds = %bb.k, %bb.l
  %.sink.i.i.i.i14 = phi i32 [ %i.bc, %bb.l ], [ 0, %bb.k ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr %i.bb, ptr %i.bd, align 8
  %.sroa.2.0..sroa_idx.i.i15 = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store i32 %.sink.i.i.i.i14, ptr %.sroa.2.0..sroa_idx.i.i15, align 8
  %i.be = load i32, ptr %i.g, align 8, !tbaa !17
  %i.bf = add i32 %i.be, 1                        ; 2 uses
  store i32 %i.bf, ptr %i.g, align 8, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %_ZN4llvh15SmallVectorImplIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateE12emplace_backIJRS4_EEEvDpOT_.exit16, %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit
  %.val9 = phi i32 [ %i.bf, %_ZN4llvh15SmallVectorImplIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateE12emplace_backIJRS4_EEEvDpOT_.exit16 ], [ %.val9.pre, %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit ] ; 2 uses
  %.val8 = load ptr, ptr %3, align 8, !tbaa !15
  %i.bg = zext i32 %.val9 to i64
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %.val8, i64 %i.bg ; 4 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -24 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !24 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 -8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !24
  %.not = icmp eq i32 %i.bj, %i.bl
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.m, %bb.c
  %i.bm = phi i32 [ %.val925, %bb.c ], [ %.val9, %bb.m ] ; 2 uses
  %.lcssa23 = phi ptr [ %i.s, %bb.c ], [ %i.bh, %bb.m ]
  %i.bn = getelementptr inbounds i8, ptr %.lcssa23, i64 -40 ; 2 uses
  %i.bo = load ptr, ptr %i.p, align 8, !tbaa !33  ; 4 uses
  %i.bp = load ptr, ptr %i.q, align 8, !tbaa !36
  %.not.i17 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not.i17, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !37
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !37
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.br, ptr %i.p, align 8, !tbaa !33
  br label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE9push_backERKS2_.exit

bb.o:                                             ; preds = %._crit_edge
  %i.bs = load ptr, ptr %1, align 8, !tbaa !38    ; 4 uses
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 6 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775800
  br i1 %i.bw, label %bb.p, label %_ZNKSt6vectorIPN6hermes10BasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #12
  unreachable

_ZNKSt6vectorIPN6hermes10BasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.bx = ashr exact i64 %i.bv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = call i64 @llvm.umin.i64(i64 %i.by, i64 1152921504606846975)
  %i.cb = select i1 %i.bz, i64 1152921504606846975, i64 %i.ca ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cb, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cc = shl nuw nsw i64 %i.cb, 3
  %i.cd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #13 ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 %i.bv ; 2 uses
  %i.cf = load ptr, ptr %i.bn, align 8, !tbaa !37
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !37
  %i.cg = icmp sgt i64 %i.bv, 0
  br i1 %i.cg, label %bb.q, label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIPN6hermes10BasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr align 8 %i.bs, i64 %i.bv, i1 false)
  br label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.q, %_ZNKSt6vectorIPN6hermes10BasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bv) #14
  %.pre.pre = load i32, ptr %i.g, align 8, !tbaa !17
  br label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %.pre = phi i32 [ %.pre.pre, %bb.r ], [ %i.bm, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i ]
  store ptr %i.cd, ptr %1, align 8, !tbaa !38
  store ptr %i.ch, ptr %i.p, align 8, !tbaa !33
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cb
  store ptr %i.ci, ptr %i.q, align 8, !tbaa !36
  br label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.n, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.cj = phi i32 [ %i.bm, %bb.n ], [ %.pre, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.ck = add i32 %i.cj, -1                       ; 3 uses
  store i32 %i.ck, ptr %i.g, align 8, !tbaa !17
  %.not.i18 = icmp eq i32 %i.ck, 0
  br i1 %.not.i18, label %bb.s, label %bb.c, !llvm.loop !39

bb.s:                                             ; preds = %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE9push_backERKS2_.exit
  %4 = load ptr, ptr %3, align 8, !tbaa !15       ; 2 uses
  %i.cl = icmp eq ptr %4, %i.f
  br i1 %i.cl, label %_ZN4llvh11SmallVectorIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateLj32EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef %4) #11
  br label %_ZN4llvh11SmallVectorIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateLj32EED2Ev.exit

_ZN4llvh11SmallVectorIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateLj32EED2Ev.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %i.cn = load ptr, ptr %2, align 8, !tbaa !7
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvh11SmallVectorIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateLj32EED2Ev.exit
  call void @free(ptr noundef %i.cm) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZN4llvh11SmallVectorIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateLj32EED2Ev.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes17PostOrderAnalysisC2EPNS_8FunctionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZNK6hermes8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(304) %1) #11
  store ptr %i.a, ptr %0, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  tail call void @_ZN6hermes17PostOrderAnalysis14visitPostOrderEPNS_10BasicBlockERSt6vectorIS2_SaIS2_EE(ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  ret void
}

declare noundef nonnull align 8 dereferenceable(656) ptr @_ZNK6hermes8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes17PostOrderAnalysis4dumpEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.hermes::IRPrinter", align 8 ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.a = load ptr, ptr %0, align 8, !tbaa !45, !nonnull !50, !align !51
  %i.b = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #11
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6hermes9IRPrinterE, i64 16), ptr %1, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70, !nonnull !50, !align !51
  store ptr %i.f, ptr %i.d, align 8, !tbaa !128
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.b, ptr %i.g, align 8, !tbaa !129
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 0, ptr %i.h, align 8, !tbaa !130
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !131
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !132
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.i, ptr %i.k, align 8, !tbaa !133
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.i, ptr %i.l, align 8, !tbaa !134
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 0, ptr %i.m, align 8, !tbaa !135
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 0, ptr %i.n, align 8, !tbaa !136
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  store i32 0, ptr %i.o, align 8, !tbaa !131
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !132
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.o, ptr %i.q, align 8, !tbaa !133
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.o, ptr %i.r, align 8, !tbaa !134
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 0, ptr %i.s, align 8, !tbaa !135
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 0, ptr %i.t, align 8, !tbaa !136
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  store i32 0, ptr %i.u, align 8, !tbaa !131
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !132
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %i.u, ptr %i.w, align 8, !tbaa !133
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr %i.u, ptr %i.x, align 8, !tbaa !134
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.y, align 8, !tbaa !135
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i32 0, ptr %i.z, align 8, !tbaa !136
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !137
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  call void @_ZN6hermes9IRVisitorINS_9IRPrinterEvE5visitERKNS_5ValueE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.af)
  %i.ag = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #11 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !157
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !161 ; 2 uses
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ult i64 %i.an, 8
  br i1 %i.ao, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ap = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ag, ptr noundef nonnull @.str, i64 noundef 8) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i64 2322295462929853506, ptr %i.ak, align 1
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !161
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !161
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.as = load ptr, ptr %i.aa, align 8, !tbaa !162 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !162 ; 2 uses
  %.not16 = icmp eq ptr %i.as, %i.au
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit12, %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.aw = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #11 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !157
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !161 ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.bc = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.aw, ptr noundef nonnull @.str.3, i64 noundef 1) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit6

bb.e:                                             ; preds = %._crit_edge
  store i8 10, ptr %i.ba, align 1
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !161
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store ptr %i.be, ptr %i.az, align 8, !tbaa !161
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit6

_ZN4llvh11raw_ostreamlsEPKc.exit6:                ; preds = %bb.d, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6hermes9IRPrinterE, i64 16), ptr %1, align 8, !tbaa !52
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bg = load ptr, ptr %i.v, align 8, !tbaa !132
  call void @_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(52) %i.bf, ptr noundef %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bi = load ptr, ptr %i.p, align 8, !tbaa !132
  call void @_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(52) %i.bh, ptr noundef %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !132
  call void @_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(52) %i.bj, ptr noundef %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZN4llvh11raw_ostreamlsEPKc.exit12
  %.sroa.013.017 = phi ptr [ %i.as, %.lr.ph ], [ %i.cl, %_ZN4llvh11raw_ostreamlsEPKc.exit12 ] ; 2 uses
  %i.bl = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #11 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !157
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !161 ; 2 uses
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = icmp ult i64 %i.bs, 2
  br i1 %i.bt, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bu = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.bl, ptr noundef nonnull @.str.1, i64 noundef 2) #11
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit9

bb.h:                                             ; preds = %bb.f
  store i16 16962, ptr %i.bp, align 1
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !161
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  store ptr %i.bw, ptr %i.bo, align 8, !tbaa !161
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit9

_ZN4llvh11raw_ostreamlsEPKc.exit9:                ; preds = %bb.g, %bb.h
  %.0.i.i8 = phi ptr [ %i.bu, %bb.g ], [ %i.bl, %bb.h ]
  %i.bx = load ptr, ptr %.sroa.013.017, align 8, !tbaa !37 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
end_hunk_0
