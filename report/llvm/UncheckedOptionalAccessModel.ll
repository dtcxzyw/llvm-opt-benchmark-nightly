Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/UncheckedOptionalAccessModel?download=true
inline.NumInlined: 9687
inline.NumDeleted: 4631
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN5clang8dataflowL32isFullyQualifiedNamespaceEqualToIJPKcEEEbRKNS_13NamespaceDeclEN4llvm9StringRefEDpT_:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8 ; 3 uses
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 1
  %i.g = icmp eq i64 %i.f, 0
  %i.h = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.g, i64 %i.h, i64 0 ; 3 uses
  %i.i = icmp ugt i64 %spec.select.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.j = and i64 %spec.select.i.i.i.i.i.i.i.i.i, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  %i.k = and i64 %spec.select.i.i.i.i.i.i.i.i.i, -4
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 18624
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !117  ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 2632 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !130  ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = add i64 %i.q, 24                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 2640
  %i.t = load i64, ptr %i.s, align 8, !tbaa !131
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.f, label %bb.g, !prof !132

bb.f:                                             ; preds = %bb.e
  %i.v = inttoptr i64 %i.r to ptr
  store ptr %i.v, ptr %i.o, align 8, !tbaa !130
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.w to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i, %bb.g ], [ %i.q, %bb.f ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %bb.g ], [ %i.p, %bb.f ] ; 3 uses
  store ptr %i.n, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !134
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.x, align 8, !tbaa !135
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.d, ptr %i.y, align 8, !tbaa !136
  %i.z = or i64 %.pre-phi.i.i.i.i.i.i.i.i.i, 4
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.d to i64
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i

_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.sroa.0.1.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aa, %bb.i ], [ %i.z, %bb.h ]
  %i.ab = or i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i, 1  ; 2 uses
  store i64 %i.ab, ptr %i.e, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i, %bb.b
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i = phi i64 [ %i.ab, %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %bb.b ] ; 2 uses
  %i.ac = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  %i.ad = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, -6 ; 2 uses
  %.not.not14.i.i.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  %.not.not.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, %.not.not14.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !135
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !134 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !139 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i = icmp eq i32 %i.ag, %i.aj
  br i1 %.not12.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.aj, ptr %i.af, align 8, !tbaa !135
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !141
  %i.al = getelementptr i8, ptr %i.ak, i64 152, !nosanitize !142
  %i.am = load ptr, ptr %i.al, align 8, !nosanitize !142
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull %i.d) #23, !inline_history !0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.c
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %.not4 = icmp eq ptr %i.an, null
  br i1 %.not4, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.a, %bb.m
  %i.ao = phi ptr [ %i.an, %bb.m ], [ %i.b, %bb.a ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2180
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread
  %i.ar = phi ptr [ %i.aq, %.thread ], [ null, %bb.m ]
  ret ptr %i.ar
}

declare { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5clang8dataflow12_GLOBAL__N_18internal44matcher_hasOptionalOperatorObjectTypeMatcherD0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang12ast_matchers8internal16MatcherInterfaceINS_19CXXOperatorCallExprEE10dynMatchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = load ptr, ptr %0, align 8, !tbaa !141
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef %2, ptr noundef %3) #23
  ret i1 %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK5clang8dataflow12_GLOBAL__N_18internal44matcher_hasOptionalOperatorObjectTypeMatcher7matchesERKNS_19CXXOperatorCallExprEPNS_12ast_matchers8internal14ASTMatchFinderEPNS8_21BoundNodesTreeBuilderE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %1, align 8
  %i.c = lshr i32 %i.b, 19
  %i.d = and i32 %i.c, 1
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !469
  %i.h = tail call fastcc noundef zeroext i1 @_ZN5clang8dataflow12_GLOBAL__N_135hasReceiverTypeDesugaringToOptionalEPKNS_4ExprE(ptr noundef %i.g)
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang8dataflow12_GLOBAL__N_124transferMakeOptionalCallEPKNS_8CallExprERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(ptr noundef nonnull %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.c = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK5clang8dataflow11Environment23getResultObjectLocationERKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(228) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %0) #23 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !198
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !473  ; 2 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.h = load ptr, ptr %.in.i.i, align 8, !tbaa !475, !nonnull !142, !align !383
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang8dataflow5Arena13makeBoolValueERKNS0_7FormulaE(ptr noundef nonnull align 8 dereferenceable(344) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h) #23
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.l = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.19, i64 9) #23
  %i.m = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.k, ptr nonnull @.str.19, i64 9, i32 noundef %i.l) #23 ; 2 uses
  %i.n = icmp ne i32 %i.m, -1
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !478
  tail call void @llvm.assume(i1 %i.n)
  %i.p = sext i32 %i.m to i64                     ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.pre.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !479
  %.pre6.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  %i.q = icmp ne i64 %i.p, %.pre6.i.i.i.i
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !481
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !483
  tail call void @_ZN5clang8dataflow11Environment8setValueERKNS0_15StorageLocationERNS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(228) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.i) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang8dataflow12_GLOBAL__N_136transferValueOrConversionConstructorEPKNS_16CXXConstructExprERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !471, !nonnull !142, !align !383 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !486
  %i.e = tail call i64 @_ZNK5clang13CXXMethodDecl11getThisTypeEv(ptr noundef nonnull align 8 dereferenceable(168) %i.d) #23
  %i.f = and i64 %i.e, -16
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !151
  %i.i = tail call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.h) #23
  %i.j = load i16, ptr %0, align 8
  %i.k = and i16 %i.j, 511
  %.not.i.i.i.i = icmp eq i16 %i.k, 118           ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %0, ptr null
  %3 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %3, ptr %i.l
  %i.m = load ptr, ptr %spec.select.i.i.i.i, align 8, !tbaa !469
  %i.n = tail call fastcc noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang8dataflow12_GLOBAL__N_125valueOrConversionHasValueENS_8QualTypeERKNS_4ExprERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(i64 %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.o = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK5clang8dataflow11Environment23getResultObjectLocationERKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(228) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %0) #23 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.q = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.19, i64 9) #23
  %i.r = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.p, ptr nonnull @.str.19, i64 9, i32 noundef %i.q) #23 ; 2 uses
  %i.s = icmp ne i32 %i.r, -1
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !478
  tail call void @llvm.assume(i1 %i.s)
  %i.u = sext i32 %i.r to i64                     ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %.pre.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !479
  %.pre6.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i to i64
  %i.v = icmp ne i64 %i.u, %.pre6.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !481
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !483
  tail call void @_ZN5clang8dataflow11Environment8setValueERKNS0_15StorageLocationERNS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(228) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.n) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang8dataflow12_GLOBAL__N_135transferValueOrConversionAssignmentEPKNS_19CXXOperatorCallExprERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %0, align 8
  %i.c = lshr i32 %i.b, 19
  %i.d = and i32 %i.c, 1
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !469
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8, !tbaa !146 ; 3 uses
  %i.i = and i64 %.sroa.0.0.copyload.i, -16
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !151 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i8, ptr %i.l, align 16
  %i.n = and i8 %i.m, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.n, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !146
  %i.p = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !151
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i8, ptr %i.s, align 16
  %i.u = and i8 %i.t, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.u, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.b
  %i.v = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.k) #23 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %bb.a
  %.1.i8.i = phi ptr [ %i.v, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.k, %bb.a ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.1.i8.i, i64 16
  %i.x = load i24, ptr %i.w, align 16
  %i.y = and i24 %i.x, 1048576
  %.not4.i.i = icmp eq i24 %i.y, 0
  br i1 %.not4.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i
  %.05.i.i = phi ptr [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8
  %i.aa = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !151 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i8, ptr %i.ad, align 16
  %i.af = and i8 %i.ae, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.af, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ag = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ac) #23
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %.1.i.i.i = phi ptr [ %i.ag, %bb.c ], [ %i.ac, %.lr.ph.i.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.ai = load i24, ptr %i.ah, align 16
  %i.aj = and i24 %i.ai, 1048576
  %.not.i.i = icmp eq i24 %i.aj, 0
  br i1 %.not.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i, !llvm.loop !15

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i
  %.0.lcssa.i.i = phi ptr [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ], [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i = load i64, ptr %i.ak, align 8, !tbaa !146
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang8QualType19getNonReferenceTypeEv.exit:  ; preds = %bb.b, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i
  %.sroa.0.0.in.i.sroa.speculated = phi i64 [ %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ], [ %.sroa.0.0.copyload.i, %bb.b ], [ %.sroa.0.0.copyload.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ]
  %i.al = load i32, ptr %0, align 8
  %i.am = lshr i32 %i.al, 19
  %i.an = and i32 %i.am, 1
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !469
  %i.as = tail call fastcc noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang8dataflow12_GLOBAL__N_125valueOrConversionHasValueENS_8QualTypeERKNS_4ExprERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(i64 %.sroa.0.0.in.i.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.av = load i32, ptr %0, align 8
  %i.aw = lshr i32 %i.av, 19
  %i.ax = and i32 %i.aw, 1
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !469
  %i.bb = tail call noundef ptr @_ZNK5clang8dataflow11Environment18getStorageLocationERKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(228) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #23 ; 4 uses
  %.not.i6 = icmp eq ptr %i.bb, null
  br i1 %.not.i6, label %_ZN5clang8dataflow12_GLOBAL__N_118transferAssignmentEPKNS_19CXXOperatorCallExprERNS0_9BoolValueERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 48 ; 2 uses
  %i.be = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.19, i64 9) #23
  %i.bf = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.bd, ptr nonnull @.str.19, i64 9, i32 noundef %i.be) #23 ; 2 uses
  %i.bg = icmp ne i32 %i.bf, -1
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !478
  tail call void @llvm.assume(i1 %i.bg)
  %i.bi = sext i32 %i.bf to i64                   ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %.pre.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !479
  %.pre6.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i to i64
  %i.bj = icmp ne i64 %i.bi, %.pre6.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bi
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !481
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !483
  tail call void @_ZN5clang8dataflow11Environment8setValueERKNS0_15StorageLocationERNS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(228) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(48) %i.as) #23
  %i.bo = load ptr, ptr %i.at, align 8, !tbaa !471, !nonnull !142, !align !383
  tail call void @_ZN5clang8dataflow11Environment18setStorageLocationERKNS_4ExprERNS0_15StorageLocationE(ptr noundef nonnull align 8 dereferenceable(228) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bb) #23
  br label %_ZN5clang8dataflow12_GLOBAL__N_118transferAssignmentEPKNS_19CXXOperatorCallExprERNS0_9BoolValueERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE.exit

_ZN5clang8dataflow12_GLOBAL__N_118transferAssignmentEPKNS_19CXXOperatorCallExprERNS0_9BoolValueERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE.exit: ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang8dataflow12_GLOBAL__N_125transferNulloptAssignmentEPKNS_19CXXOperatorCallExprERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !473  ; 2 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 336
  %i.f = load ptr, ptr %.in.i.i, align 8, !tbaa !475, !nonnull !142, !align !383
  %i.g = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang8dataflow5Arena13makeBoolValueERKNS0_7FormulaE(ptr noundef nonnull align 8 dereferenceable(344) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f) #23
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i32, ptr %0, align 8
  %i.k = lshr i32 %i.j, 19
  %i.l = and i32 %i.k, 1
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !469
  %i.p = tail call noundef ptr @_ZNK5clang8dataflow11Environment18getStorageLocationERKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(228) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.o) #23 ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZN5clang8dataflow12_GLOBAL__N_118transferAssignmentEPKNS_19CXXOperatorCallExprERNS0_9BoolValueERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.s = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.19, i64 9) #23
  %i.t = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.r, ptr nonnull @.str.19, i64 9, i32 noundef %i.s) #23 ; 2 uses
  %i.u = icmp ne i32 %i.t, -1
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !478
  tail call void @llvm.assume(i1 %i.u)
  %i.w = sext i32 %i.t to i64                     ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %.pre.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !479
  %.pre6.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i to i64
  %i.x = icmp ne i64 %i.w, %.pre6.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !481
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !483
  tail call void @_ZN5clang8dataflow11Environment8setValueERKNS0_15StorageLocationERNS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(228) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.g) #23
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !471, !nonnull !142, !align !383
  tail call void @_ZN5clang8dataflow11Environment18setStorageLocationERKNS_4ExprERNS0_15StorageLocationE(ptr noundef nonnull align 8 dereferenceable(228) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.p) #23
  br label %_ZN5clang8dataflow12_GLOBAL__N_118transferAssignmentEPKNS_19CXXOperatorCallExprERNS0_9BoolValueERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE.exit

_ZN5clang8dataflow12_GLOBAL__N_118transferAssignmentEPKNS_19CXXOperatorCallExprERNS0_9BoolValueERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang8dataflow12_GLOBAL__N_130isOptionalOperatorCallWithNameEN4llvm9StringRefERKSt8optionalINS_12ast_matchers8internal7MatcherINS_4StmtEEEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #2 {
end_hunk_0
begin_hunk_1_@_ZN5clang8dataflow12_GLOBAL__N_114hasNulloptTypeEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !2326
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !2326
  store ptr @.str.51, ptr %8, align 8, !tbaa !201, !noalias !2326
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 14, ptr %i.b, align 8, !tbaa !202, !noalias !2326
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !2327
  store ptr @.str.52, ptr %3, align 8, !tbaa !201, !noalias !2327
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 15, ptr %i.c, align 8, !tbaa !202, !noalias !2327
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !2327
  store ptr @.str.53, ptr %4, align 8, !tbaa !201, !noalias !2327
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 15, ptr %i.d, align 8, !tbaa !202, !noalias !2327
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !2327
  store ptr @.str.54, ptr %5, align 8, !tbaa !201, !noalias !2327
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 11, ptr %i.e, align 8, !tbaa !202, !noalias !2327
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !2327
  store ptr @.str.55, ptr %6, align 8, !tbaa !201, !noalias !2327
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 14, ptr %i.f, align 8, !tbaa !202, !noalias !2327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !2328
  store ptr %8, ptr %i.a, align 16, !tbaa !204, !noalias !2328
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.g, align 8, !tbaa !204, !noalias !2328
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %4, ptr %i.h, align 16, !tbaa !204, !noalias !2328
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %5, ptr %i.i, align 8, !tbaa !204, !noalias !2328
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %6, ptr %i.j, align 16, !tbaa !204, !noalias !2328
  call void @_ZN5clang12ast_matchers8internal14hasAnyNameFuncEN4llvm8ArrayRefIPKNS2_9StringRefEEE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::Matcher.106") align 8 %7, ptr nonnull %i.a, i64 5) #23, !noalias !2326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !2328
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2327
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !2327
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !2327
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !2327
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !2329
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !2329
  call void @llvm.experimental.noalias.scope.decl(metadata !2330)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 12, i1 false), !noalias !2329
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !155, !noalias !2331 ; 3 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !155, !alias.scope !2330, !noalias !2329
  %.not.i.i.i.i.i2.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i2.i.i.i.i, label %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_9NamedDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = atomicrmw add ptr %i.n, i32 1 monotonic, align 4, !noalias !2331 ; 0 uses
  br label %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_9NamedDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i.i

_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_9NamedDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i.i: ; preds = %bb.b, %bb.a
  call void @_ZNK5clang12ast_matchers8internal15DynTypedMatcher9dynCastToENS_11ASTNodeKindE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::DynTypedMatcher") align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 80) #23, !noalias !2329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !155, !noalias !2329 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i.i, label %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4DeclEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i.i

_ZN5clang12ast_matchers8internal15BindableMatcherINS_4DeclEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i.i: ; preds = %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_9NamedDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = atomicrmw add ptr %i.r, i32 1 monotonic, align 4, !noalias !2329 ; 0 uses
  %.pr.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !155, !noalias !2329 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4DeclEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.pr.i.i.i.i, i64 8
  %i.u = atomicrmw sub ptr %i.t, i32 1 acq_rel, align 4, !noalias !2329
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.d, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %.pr.i.i.i.i, align 8, !tbaa !141, !noalias !2329
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !2329
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(12) %.pr.i.i.i.i) #23, !noalias !2329, !inline_history !2321
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i.i

_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4DeclEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i.i, %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_9NamedDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i.i
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !155, !noalias !2329 ; 4 uses
  %.not.i.i.i.i3.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i3.i.i.i.i, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_9NamedDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = atomicrmw sub ptr %i.aa, i32 1 acq_rel, align 4, !noalias !2329
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.f, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_9NamedDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !141, !noalias !2329
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !2329
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(12) %i.z) #23, !noalias !2329, !inline_history !2322
  br label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_9NamedDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit.i

_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_9NamedDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit.i: ; preds = %bb.f, %bb.e, %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !2329
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !2329
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !155, !noalias !2326 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i, label %_ZN5clang8dataflow12_GLOBAL__N_115nulloptTypeDeclEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_9NamedDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = atomicrmw sub ptr %i.ah, i32 1 acq_rel, align 4, !noalias !2326
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %bb.h, label %_ZN5clang8dataflow12_GLOBAL__N_115nulloptTypeDeclEv.exit

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !141, !noalias !2326
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noalias !2326
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.ag) #23, !noalias !2326, !inline_history !2323
  br label %_ZN5clang8dataflow12_GLOBAL__N_115nulloptTypeDeclEv.exit

_ZN5clang8dataflow12_GLOBAL__N_115nulloptTypeDeclEv.exit: ; preds = %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_9NamedDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit.i, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !2326
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !2326
  call void @llvm.experimental.noalias.scope.decl(metadata !2332)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0, i64 12, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %i.an, align 8, !tbaa !155, !alias.scope !2332
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5clang8dataflow12_GLOBAL__N_115nulloptTypeDeclEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ap = atomicrmw add ptr %i.ao, i32 1 monotonic, align 4, !noalias !2332 ; 0 uses
  %i.aq = atomicrmw sub ptr %i.ao, i32 1 acq_rel, align 4
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %bb.j, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !141
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(12) %i.q) #23, !inline_history !23
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit: ; preds = %_ZN5clang8dataflow12_GLOBAL__N_115nulloptTypeDeclEv.exit, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

declare void @_ZN5clang8dataflow30isSmartPointerLikeOperatorStarEv(ptr dead_on_unwind writable sret(%"class.clang::ast_matchers::internal::Matcher.75") align 8) local_unnamed_addr #3

declare void @_ZN5clang8dataflow31isSmartPointerLikeOperatorArrowEv(ptr dead_on_unwind writable sret(%"class.clang::ast_matchers::internal::Matcher.75") align 8) local_unnamed_addr #3

declare void @_ZN5clang8dataflow33isSmartPointerLikeValueMethodCallEN4llvm9StringRefE(ptr dead_on_unwind writable sret(%"class.clang::ast_matchers::internal::Matcher.75") align 8, ptr, i64) local_unnamed_addr #3

declare void @_ZN5clang8dataflow31isSmartPointerLikeGetMethodCallEN4llvm9StringRefE(ptr dead_on_unwind writable sret(%"class.clang::ast_matchers::internal::Matcher.75") align 8, ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang8dataflow12_GLOBAL__N_139transferAssertionResultOperatorBoolCallEPKNS_17CXXMemberCallExprERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(ptr noundef nonnull %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.c = tail call noundef ptr @_ZN5clang8dataflow25getImplicitObjectLocationERKNS_17CXXMemberCallExprERKNS0_11EnvironmentE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(228) %i.b) #23 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.g = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.57, i64 7) #23
  %i.h = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.f, ptr nonnull @.str.57, i64 7, i32 noundef %i.g) #23 ; 2 uses
  %i.i = icmp ne i32 %i.h, -1
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !478
  tail call void @llvm.assume(i1 %i.i)
  %i.k = sext i32 %i.h to i64                     ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !479
  %.pre6.i.i.i = zext i32 %.pre.i.i.i to i64
  %i.l = icmp ne i64 %i.k, %.pre6.i.i.i
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !481
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !483
  %i.q = tail call noundef ptr @_ZNK5clang8dataflow11Environment8getValueERKNS0_15StorageLocationE(ptr noundef nonnull align 8 dereferenceable(228) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.p) #23 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !471, !nonnull !142, !align !383
  tail call void @_ZN5clang8dataflow11Environment8setValueERKNS_4ExprERNS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(228) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.q) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang8dataflow12_GLOBAL__N_144transferAssertionResultConstructFromBoolCallEPKNS_16CXXConstructExprERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) #2 {
bb.a:
  %i.a = load i16, ptr %0, align 8
  %i.b = and i16 %i.a, 511
  %.not.i.i.i.i = icmp eq i16 %i.b, 118           ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %0, ptr null
  %3 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %3, ptr %i.c
  %i.d = load ptr, ptr %spec.select.i.i.i.i, align 8, !tbaa !469
  %i.e = tail call noundef ptr @_ZN5clang4Expr14IgnoreImplicitEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #22
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.h = tail call noundef ptr @_ZNK5clang8dataflow11Environment8getValueERKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(228) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.j = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK5clang8dataflow11Environment23getResultObjectLocationERKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(228) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %0) #23 ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.m = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.57, i64 7) #23
  %i.n = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.l, ptr nonnull @.str.57, i64 7, i32 noundef %i.m) #23 ; 2 uses
  %i.o = icmp ne i32 %i.n, -1
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !478
  tail call void @llvm.assume(i1 %i.o)
  %i.q = sext i32 %i.n to i64                     ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !479
  %.pre6.i.i.i = zext i32 %.pre.i.i.i to i64
  %i.r = icmp ne i64 %i.q, %.pre6.i.i.i
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !481
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !483
  tail call void @_ZN5clang8dataflow11Environment8setValueERKNS0_15StorageLocationERNS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(228) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %i.h) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang8dataflow12_GLOBAL__N_148transferAssertionResultConstructFromOptionalCallEPKNS_16CXXConstructExprERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) #2 {
bb.a:
  %i.a = load i16, ptr %0, align 8
  %i.b = and i16 %i.a, 511
  %.not.i.i.i.i = icmp eq i16 %i.b, 118           ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %0, ptr null
  %3 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %3, ptr %i.c
  %i.d = load ptr, ptr %spec.select.i.i.i.i, align 8, !tbaa !469
  %i.e = tail call noundef ptr @_ZN5clang4Expr14IgnoreImplicitEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #22
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.h = tail call noundef ptr @_ZNK5clang8dataflow11Environment18getStorageLocationERKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(228) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.k = tail call fastcc noundef ptr @_ZN5clang8dataflow12_GLOBAL__N_111getHasValueERNS0_11EnvironmentEPNS0_21RecordStorageLocationE(ptr noundef nonnull align 8 dereferenceable(228) %i.j, ptr noundef nonnull %i.h) ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.m = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK5clang8dataflow11Environment23getResultObjectLocationERKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(228) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %0) #23 ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.p = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.57, i64 7) #23
  %i.q = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.o, ptr nonnull @.str.57, i64 7, i32 noundef %i.p) #23 ; 2 uses
  %i.r = icmp ne i32 %i.q, -1
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !478
  tail call void @llvm.assume(i1 %i.r)
  %i.t = sext i32 %i.q to i64                     ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !479
  %.pre6.i.i.i = zext i32 %.pre.i.i.i to i64
  %i.u = icmp ne i64 %i.t, %.pre6.i.i.i
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !481
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !483
  tail call void @_ZN5clang8dataflow11Environment8setValueERKNS0_15StorageLocationERNS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(228) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %i.k) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang8dataflow12_GLOBAL__N_123transferConstMemberCallEPKNS_17CXXMemberCallExprERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(ptr noundef nonnull %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.c = tail call noundef ptr @_ZN5clang8dataflow25getImplicitObjectLocationERKNS_17CXXMemberCallExprERKNS0_11EnvironmentE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(228) %i.b) #23
  tail call fastcc void @_ZN5clang8dataflow12_GLOBAL__N_134handleConstMemberCallWithFallbacksEPKNS_8CallExprEPNS0_21RecordStorageLocationERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang8dataflow12_GLOBAL__N_131transferConstMemberOperatorCallEPKNS_19CXXOperatorCallExprERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(ptr noundef %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %0, align 8
  %i.e = lshr i32 %i.d, 19
  %i.f = and i32 %i.e, 1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !469
  %i.j = tail call noundef ptr @_ZNK5clang8dataflow11Environment18getStorageLocationERKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(228) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.i) #23
  tail call fastcc void @_ZN5clang8dataflow12_GLOBAL__N_134handleConstMemberCallWithFallbacksEPKNS_8CallExprEPNS0_21RecordStorageLocationERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(ptr noundef nonnull %0, ptr noundef %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang8dataflow12_GLOBAL__N_132transferValue_NonConstMemberCallEPKNS_17CXXMemberCallExprERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(ptr noundef nonnull %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.c = tail call noundef ptr @_ZN5clang8dataflow25getImplicitObjectLocationERKNS_17CXXMemberCallExprERKNS0_11EnvironmentE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(228) %i.b) #23
  tail call fastcc void @_ZN5clang8dataflow12_GLOBAL__N_124handleNonConstMemberCallEPKNS_8CallExprEPNS0_21RecordStorageLocationERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang8dataflow12_GLOBAL__N_140transferValue_NonConstMemberOperatorCallEPKNS_19CXXOperatorCallExprERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(ptr noundef %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %0, align 8
  %i.e = lshr i32 %i.d, 19
  %i.f = and i32 %i.e, 1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !469
  %i.j = tail call noundef ptr @_ZNK5clang8dataflow11Environment18getStorageLocationERKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(228) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.i) #23
  tail call fastcc void @_ZN5clang8dataflow12_GLOBAL__N_124handleNonConstMemberCallEPKNS_8CallExprEPNS0_21RecordStorageLocationERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(ptr noundef nonnull %0, ptr noundef %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang8dataflow12_GLOBAL__N_129transferCallReturningOptionalEPKNS_8CallExprERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) #2 {
bb.a:
  %i.a = load i24, ptr %0, align 8
  %i.b = and i24 %i.a, 1536
  %i.c = icmp eq i24 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !471, !nonnull !142, !align !383 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK5clang8dataflow11Environment23getResultObjectLocationERKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(228) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %0) #23
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZNK5clang8dataflow11Environment18getStorageLocationERKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(228) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %0) #23 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.j = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5clang8dataflow11Environment21createStorageLocationERKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(228) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %0) #23 ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !471, !nonnull !142, !align !383
  tail call void @_ZN5clang8dataflow11Environment18setStorageLocationERKNS_4ExprERNS0_15StorageLocationE(ptr noundef nonnull align 8 dereferenceable(228) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.j, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.n = getelementptr inbounds nuw i8, ptr %.0, i64 48 ; 4 uses
  %i.o = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.19, i64 9) #23
  %i.p = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.n, ptr nonnull @.str.19, i64 9, i32 noundef %i.o) #23 ; 2 uses
  %i.q = icmp ne i32 %i.p, -1
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !478
  tail call void @llvm.assume(i1 %i.q)
  %i.s = sext i32 %i.p to i64                     ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.0, i64 56 ; 2 uses
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !479
  %.pre6.i.i.i = zext i32 %.pre.i.i.i to i64
  %i.t = icmp ne i64 %i.s, %.pre6.i.i.i
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !481
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !483
  %i.y = tail call noundef ptr @_ZNK5clang8dataflow11Environment8getValueERKNS0_15StorageLocationE(ptr noundef nonnull align 8 dereferenceable(228) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.x) #23
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !198
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !473 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 320 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !519 ; 2 uses
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !519
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang8dataflow5Arena11makeAtomRefENS0_4AtomE(ptr noundef nonnull align 8 dereferenceable(344) %i.ac, i32 noundef %i.ae) #23
  %i.ah = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang8dataflow5Arena13makeBoolValueERKNS0_7FormulaE(ptr noundef nonnull align 8 dereferenceable(344) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #23
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !471, !nonnull !142, !align !383
  %i.aj = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.19, i64 9) #23
  %i.ak = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.n, ptr nonnull @.str.19, i64 9, i32 noundef %i.aj) #23 ; 2 uses
  %i.al = icmp ne i32 %i.ak, -1
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !478
  tail call void @llvm.assume(i1 %i.al)
  %i.an = sext i32 %i.ak to i64                   ; 2 uses
  %.pre.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !479
  %.pre6.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  %i.ao = icmp ne i64 %i.an, %.pre6.i.i.i.i
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.an
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !481
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !483
  tail call void @_ZN5clang8dataflow11Environment8setValueERKNS0_15StorageLocationERNS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(228) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(48) %i.ah) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNO5clang8dataflow21CFGMatchSwitchBuilderINS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEEvE5BuildEv(ptr dead_on_unwind noalias writable sret(%"class.std::function") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 comdat align 2 {
_ZZNO5clang8dataflow21CFGMatchSwitchBuilderINS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEEvE5BuildEvENUlRKNS_10CFGElementERNS_10ASTContextERS6_E_D2Ev.exit:
  %2 = alloca %class.anon.1647, align 8           ; 8 uses
  %3 = alloca %class.anon.1581, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !2337
  call void @_ZN5clang8dataflow21ASTMatchSwitchBuilderINS_4StmtENS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEEvE12BuildMatcherEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::DynTypedMatcher") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %1), !noalias !2337
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load <2 x ptr>, ptr %i.b, align 8, !tbaa !521, !noalias !2337
  store <2 x ptr> %i.d, ptr %i.a, align 8, !tbaa !521, !noalias !2337
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !523, !noalias !2337
  store ptr %i.g, ptr %i.e, align 8, !tbaa !523, !noalias !2337
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false), !noalias !2337
  %i.h = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24, !noalias !2337 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 12, i1 false), !noalias !2337
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load <2 x ptr>, ptr %i.j, align 8, !tbaa !75, !noalias !2337
  store <2 x ptr> %i.k, ptr %i.i, align 8, !tbaa !75, !noalias !2337
end_hunk_1
begin_hunk_2_@_ZN5clang12ast_matchers8internal23matcher_hasType1MatcherINS_4ExprENS1_7MatcherINS_4DeclEEEED0Ev:bb.a
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5clang12ast_matchers8internal23matcher_hasType1MatcherINS_4ExprENS1_7MatcherINS_4DeclEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !2469
  br label %_ZN5clang12ast_matchers8internal23matcher_hasType1MatcherINS_4ExprENS1_7MatcherINS_4DeclEEEED2Ev.exit

_ZN5clang12ast_matchers8internal23matcher_hasType1MatcherINS_4ExprENS1_7MatcherINS_4DeclEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5clang12ast_matchers8internal23matcher_hasType1MatcherINS_4ExprENS1_7MatcherINS_4DeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.clang::DynTypedNode", align 8 ; 5 uses
  %5 = alloca %"class.clang::ast_matchers::internal::BindableMatcher", align 8 ; 7 uses
  %.sroa.0 = alloca [16 x i8], align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !146 ; 2 uses
  %i.b = icmp ult i64 %.sroa.0.0.copyload.i.i, 16
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(12) %i.c, i64 12, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !155, !noalias !2486 ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = atomicrmw add ptr %i.f, i32 1 monotonic, align 4, !noalias !2486 ; 0 uses
  br label %_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit

_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit: ; preds = %bb.b, %bb.c
  %i.h = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !2487 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store i32 0, ptr %i.i, align 4, !tbaa !206, !noalias !2487
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal21HasDeclarationMatcherINS_8QualTypeENS1_7MatcherINS_4DeclEEEEE, i64 16), ptr %i.h, align 8, !tbaa !141, !noalias !2487
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2488)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.j, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0, i64 12, i1 false), !noalias !2487
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.e, ptr %i.k, align 8, !tbaa !155, !alias.scope !2488, !noalias !2487
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_8QualTypeEEENS1_7MatcherIS4_EEXadL_ZNS1_18makeAllOfCompositeIS4_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IS9_EEEEEEEclIJEEES5_RKS7_DpRKT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = atomicrmw add ptr %i.l, i32 1 monotonic, align 4, !noalias !2489 ; 0 uses
  br label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_8QualTypeEEENS1_7MatcherIS4_EEXadL_ZNS1_18makeAllOfCompositeIS4_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IS9_EEEEEEEclIJEEES5_RKS7_DpRKT_.exit

_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_8QualTypeEEENS1_7MatcherIS4_EEXadL_ZNS1_18makeAllOfCompositeIS4_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IS9_EEEEEEEclIJEEES5_RKS7_DpRKT_.exit: ; preds = %_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit, %bb.d
  %i.n = atomicrmw add ptr %i.i, i32 1 monotonic, align 4, !noalias !2487 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2492)
  store i8 0, ptr %5, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 6, ptr %.sroa.410.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 6, ptr %.sroa.5.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.o, align 8, !tbaa !155, !alias.scope !2493
  %i.p = atomicrmw add ptr %i.i, i32 1 monotonic, align 4, !noalias !2493 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i32 6, ptr %4, align 8, !tbaa !73, !alias.scope !2494
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.q, align 8, !tbaa !146, !alias.scope !2494
  %i.r = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal15DynTypedMatcher7matchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %2, ptr noundef %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !155  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_8QualTypeEEENS1_7MatcherIS4_EEXadL_ZNS1_18makeAllOfCompositeIS4_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IS9_EEEEEEEclIJEEES5_RKS7_DpRKT_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = atomicrmw sub ptr %i.t, i32 1 acq_rel, align 4
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.f, label %_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !141
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #23, !inline_history !25
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEED2Ev.exit: ; preds = %bb.f, %bb.e, %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_8QualTypeEEENS1_7MatcherIS4_EEXadL_ZNS1_18makeAllOfCompositeIS4_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IS9_EEEEEEEclIJEEES5_RKS7_DpRKT_.exit
  %i.z = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.g, label %_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEED2Ev.exit6

bb.g:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEED2Ev.exit
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !141
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(12) %i.h) #23, !inline_history !25
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEED2Ev.exit6

_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEED2Ev.exit6: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEED2Ev.exit, %bb.g
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal18PolymorphicMatcherINS1_21HasDeclarationMatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_10CXXNewExprENS_11DeclRefExprENS_8EnumTypeENS_21InjectedClassNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS_10RecordTypeENS_7TagTypeENS_9UsingTypeENS_26TemplateSpecializationTypeENS_20TemplateTypeParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprENS_17ObjCInterfaceDeclEEEEEJNS1_7MatcherINS_4DeclEEEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEED2Ev.exit6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.af = atomicrmw sub ptr %i.ae, i32 1 acq_rel, align 4
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.i, label %_ZN5clang12ast_matchers8internal18PolymorphicMatcherINS1_21HasDeclarationMatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_10CXXNewExprENS_11DeclRefExprENS_8EnumTypeENS_21InjectedClassNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS_10RecordTypeENS_7TagTypeENS_9UsingTypeENS_26TemplateSpecializationTypeENS_20TemplateTypeParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprENS_17ObjCInterfaceDeclEEEEEJNS1_7MatcherINS_4DeclEEEEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !141
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(12) %i.e) #23, !inline_history !31
  br label %_ZN5clang12ast_matchers8internal18PolymorphicMatcherINS1_21HasDeclarationMatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_10CXXNewExprENS_11DeclRefExprENS_8EnumTypeENS_21InjectedClassNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS_10RecordTypeENS_7TagTypeENS_9UsingTypeENS_26TemplateSpecializationTypeENS_20TemplateTypeParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprENS_17ObjCInterfaceDeclEEEEEJNS1_7MatcherINS_4DeclEEEEED2Ev.exit

_ZN5clang12ast_matchers8internal18PolymorphicMatcherINS1_21HasDeclarationMatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_10CXXNewExprENS_11DeclRefExprENS_8EnumTypeENS_21InjectedClassNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS_10RecordTypeENS_7TagTypeENS_9UsingTypeENS_26TemplateSpecializationTypeENS_20TemplateTypeParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprENS_17ObjCInterfaceDeclEEEEEJNS1_7MatcherINS_4DeclEEEEED2Ev.exit: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEED2Ev.exit6, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN5clang12ast_matchers8internal18PolymorphicMatcherINS1_21HasDeclarationMatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_10CXXNewExprENS_11DeclRefExprENS_8EnumTypeENS_21InjectedClassNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS_10RecordTypeENS_7TagTypeENS_9UsingTypeENS_26TemplateSpecializationTypeENS_20TemplateTypeParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprENS_17ObjCInterfaceDeclEEEEEJNS1_7MatcherINS_4DeclEEEEED2Ev.exit
  %.0 = phi i1 [ %i.r, %_ZN5clang12ast_matchers8internal18PolymorphicMatcherINS1_21HasDeclarationMatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_10CXXNewExprENS_11DeclRefExprENS_8EnumTypeENS_21InjectedClassNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS_10RecordTypeENS_7TagTypeENS_9UsingTypeENS_26TemplateSpecializationTypeENS_20TemplateTypeParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprENS_17ObjCInterfaceDeclEEEEEJNS1_7MatcherINS_4DeclEEEEED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEEE, i64 16), ptr %0, align 8, !tbaa !141
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !9
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEEE, i64 16), ptr %0, align 8, !tbaa !141
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !2495
  br label %_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEED2Ev.exit

_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.clang::DynTypedNode", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !220  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !545
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %1, align 8
  %i.f = and i16 %i.e, 511
  %.not.i.i.i.i = icmp eq i16 %i.f, 118           ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %1, ptr null
  %5 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %5, ptr %i.g
  %i.h = zext i32 %i.b to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i.i.i, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !469  ; 2 uses
  %i.k = tail call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal14ASTMatchFinder32isTraversalIgnoringImplicitNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #23
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i16, ptr %i.j, align 8
  %i.m = and i16 %i.l, 511
  %i.n = icmp eq i16 %i.m, 116
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = tail call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  %i.q = tail call i32 @_ZN5clang11ASTNodeKind11getFromNodeERKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #23, !noalias !2502
  store i32 %i.q, ptr %4, align 8, !tbaa !73, !alias.scope !2502
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.p, ptr %i.r, align 8, !tbaa !75, !alias.scope !2502
  %i.s = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal15DynTypedMatcher7matchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %2, ptr noundef %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.s, %bb.d ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang8dataflow12_GLOBAL__N_131desugarsToOptionalOrDerivedTypeEv(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 1), (4, 12), (16, 24)) %0) unnamed_addr #2 {
_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_13CXXRecordDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i:
  %1 = alloca %"class.clang::ast_matchers::internal::Matcher.121", align 8 ; 5 uses
  %2 = alloca %"class.clang::ast_matchers::internal::BindableMatcher.1121", align 8 ; 7 uses
  %3 = alloca %"class.clang::ast_matchers::internal::Matcher.60", align 8 ; 5 uses
  %4 = alloca %"class.clang::ast_matchers::internal::BindableMatcher.1126", align 8 ; 7 uses
  %.sroa.027 = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.014 = alloca [16 x i8], align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.027)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014)
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24, !noalias !2534 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !noalias !2534
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang8dataflow12_GLOBAL__N_18internal37matcher_optionalOrDerivedClassMatcherE, i64 16), ptr %i.a, align 16, !tbaa !141, !noalias !2534
  %i.c = atomicrmw add ptr %i.b, i32 1 monotonic, align 4, !noalias !2534 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !2535
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !2535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2536)
  store i8 0, ptr %4, align 8, !noalias !2535
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 148, ptr %.sroa.411.0..sroa_idx, align 4, !noalias !2535
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 148, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2535
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !155, !alias.scope !2536, !noalias !2535
  %i.e = atomicrmw add ptr %i.b, i32 1 monotonic, align 4, !noalias !2537 ; 0 uses
  call void @_ZNK5clang12ast_matchers8internal15DynTypedMatcher9dynCastToENS_11ASTNodeKindE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::DynTypedMatcher") align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 80) #23, !noalias !2535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.014, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !155, !noalias !2535 ; 10 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null  ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i, label %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4DeclEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i

_ZN5clang12ast_matchers8internal15BindableMatcherINS_4DeclEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i: ; preds = %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_13CXXRecordDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = atomicrmw add ptr %i.h, i32 1 monotonic, align 4, !noalias !2535 ; 0 uses
  %.pr.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !155, !noalias !2535 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i, label %bb.a

bb.a:                                             ; preds = %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4DeclEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 8
  %i.k = atomicrmw sub ptr %i.j, i32 1 acq_rel, align 4, !noalias !2535
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.b, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %.pr.i.i.i, align 8, !tbaa !141, !noalias !2535
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2535
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(12) %.pr.i.i.i) #23, !noalias !2535, !inline_history !2513
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i

_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i: ; preds = %bb.b, %bb.a, %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4DeclEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i, %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_13CXXRecordDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !155, !noalias !2535 ; 4 uses
  %.not.i.i.i.i3.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i3.i.i.i, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_13CXXRecordDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = atomicrmw sub ptr %i.q, i32 1 acq_rel, align 4, !noalias !2535
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.d, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_13CXXRecordDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !141, !noalias !2535
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !2535
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(12) %i.p) #23, !noalias !2535, !inline_history !2514
  br label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_13CXXRecordDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit

_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_13CXXRecordDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !2535
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !2535
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_13CXXRecordDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.x = atomicrmw add ptr %i.w, i32 1 monotonic, align 4, !noalias !2538 ; 0 uses
  br label %_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit

_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit: ; preds = %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_13CXXRecordDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit, %bb.e
  %i.y = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !2539 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  store i32 0, ptr %i.z, align 4, !tbaa !206, !noalias !2539
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal21HasDeclarationMatcherINS_10RecordTypeENS1_7MatcherINS_4DeclEEEEE, i64 16), ptr %i.y, align 8, !tbaa !141, !noalias !2539
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !2540)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aa, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.014, i64 12, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr %i.g, ptr %i.ab, align 8, !tbaa !155, !alias.scope !2540, !noalias !2539
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_10RecordTypeEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ad = atomicrmw add ptr %i.ac, i32 1 monotonic, align 4, !noalias !2541 ; 0 uses
  br label %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_10RecordTypeEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i

_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_10RecordTypeEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i: ; preds = %_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit, %bb.f
  %i.ae = atomicrmw add ptr %i.z, i32 1 monotonic, align 4, !noalias !2539 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !2542
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !2542
  call void @llvm.experimental.noalias.scope.decl(metadata !2543)
  store i8 0, ptr %2, align 8, !noalias !2542
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 531, ptr %.sroa.422.0..sroa_idx, align 4, !noalias !2542
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 531, ptr %.sroa.523.0..sroa_idx, align 8, !noalias !2542
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.y, ptr %i.af, align 8, !tbaa !155, !alias.scope !2543, !noalias !2542
  %i.ag = atomicrmw add ptr %i.z, i32 1 monotonic, align 4, !noalias !2544 ; 0 uses
  call void @_ZNK5clang12ast_matchers8internal15DynTypedMatcher9dynCastToENS_11ASTNodeKindE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::DynTypedMatcher") align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 473) #23, !noalias !2542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.027, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !155, !noalias !2542 ; 6 uses
  %.not.i.i.i.i.i.i.i.i3 = icmp eq ptr %i.ai, null ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i3, label %_ZN5clang12ast_matchers8internal7MatcherINS_4TypeEED2Ev.exit.i.i.i, label %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4TypeEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i

_ZN5clang12ast_matchers8internal15BindableMatcherINS_4TypeEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i: ; preds = %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_10RecordTypeEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = atomicrmw add ptr %i.aj, i32 1 monotonic, align 4, !noalias !2542 ; 0 uses
  %.pr.i.i.i4 = load ptr, ptr %i.ah, align 8, !tbaa !155, !noalias !2542 ; 4 uses
  %.not.i.i.i.i.i.i.i5 = icmp eq ptr %.pr.i.i.i4, null
  br i1 %.not.i.i.i.i.i.i.i5, label %_ZN5clang12ast_matchers8internal7MatcherINS_4TypeEED2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4TypeEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.pr.i.i.i4, i64 8
  %i.am = atomicrmw sub ptr %i.al, i32 1 acq_rel, align 4, !noalias !2542
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.h, label %_ZN5clang12ast_matchers8internal7MatcherINS_4TypeEED2Ev.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %.pr.i.i.i4, align 8, !tbaa !141, !noalias !2542
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !2542
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(12) %.pr.i.i.i4) #23, !noalias !2542, !inline_history !2529
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4TypeEED2Ev.exit.i.i.i

_ZN5clang12ast_matchers8internal7MatcherINS_4TypeEED2Ev.exit.i.i.i: ; preds = %bb.h, %bb.g, %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4TypeEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i, %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_10RecordTypeEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !155, !noalias !2542 ; 4 uses
  %.not.i.i.i.i3.i.i.i6 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i3.i.i.i6, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4TypeEEENS1_7MatcherINS_10RecordTypeEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4TypeEED2Ev.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = atomicrmw sub ptr %i.as, i32 1 acq_rel, align 4, !noalias !2542
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.j, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4TypeEEENS1_7MatcherINS_10RecordTypeEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !141, !noalias !2542
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !2542
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(12) %i.ar) #23, !noalias !2542, !inline_history !2530
  br label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4TypeEEENS1_7MatcherINS_10RecordTypeEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit

_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4TypeEEENS1_7MatcherINS_10RecordTypeEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4TypeEED2Ev.exit.i.i.i, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !2542
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !2542
  call void @llvm.experimental.noalias.scope.decl(metadata !2545)
  %i.ay = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !2545 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  store i32 0, ptr %i.az, align 4, !tbaa !206, !noalias !2545
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal43matcher_hasUnqualifiedDesugaredType0MatcherE, i64 16), ptr %i.ay, align 8, !tbaa !141, !noalias !2545
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ba, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.027, i64 12, i1 false), !noalias !2545
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store ptr %i.ai, ptr %i.bb, align 8, !tbaa !155, !noalias !2545
  br i1 %.not.i.i.i.i.i.i.i.i3, label %_ZN5clang12ast_matchers27hasUnqualifiedDesugaredTypeERKNS0_8internal7MatcherINS_4TypeEEE.exit.thread, label %bb.k

end_hunk_2
begin_hunk_3_@_ZNO5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_18PolymorphicMatcherINS1_21HasDeclarationMatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_10CXXNewExprENS_11DeclRefExprENS_8EnumTypeENS_21InjectedClassNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS_10RecordTypeENS_7TagTypeENS_9UsingTypeENS_26TemplateSpecializationTypeENS_20TemplateTypeParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprENS_17ObjCInterfaceDeclEEEEEJNS1_7MatcherINS_4DeclEEEEEEEEcvNSR_IT_EEIS7_EEv:bb.a
  br label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit

_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit: ; preds = %_ZNKR5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_18PolymorphicMatcherINS1_21HasDeclarationMatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_10CXXNewExprENS_11DeclRefExprENS_8EnumTypeENS_21InjectedClassNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS_10RecordTypeENS_7TagTypeENS_9UsingTypeENS_26TemplateSpecializationTypeENS_20TemplateTypeParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprENS_17ObjCInterfaceDeclEEEEEJNS1_7MatcherINS_4DeclEEEEEEEE11getMatchersIS7_JLm0EEEESt6vectorINS1_15DynTypedMatcherESaISY_EESt16integer_sequenceImJXspT0_EEE.exit, %bb.e, %bb.f
  %i.ae = load ptr, ptr %3, align 8, !tbaa !416   ; 3 uses
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !417 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit, %_ZSt8_DestroyIN5clang12ast_matchers8internal15DynTypedMatcherEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ao, %_ZSt8_DestroyIN5clang12ast_matchers8internal15DynTypedMatcherEEvPT_.exit.i.i.i ], [ %i.ae, %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !155 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5clang12ast_matchers8internal15DynTypedMatcherEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = atomicrmw sub ptr %i.ai, i32 1 acq_rel, align 4
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.h, label %_ZSt8_DestroyIN5clang12ast_matchers8internal15DynTypedMatcherEEvPT_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !141
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(12) %i.ah) #23, !inline_history !30
  br label %_ZSt8_DestroyIN5clang12ast_matchers8internal15DynTypedMatcherEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5clang12ast_matchers8internal15DynTypedMatcherEEvPT_.exit.i.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.ao, %i.af
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !27

_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5clang12ast_matchers8internal15DynTypedMatcherEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !416
  br label %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exit.i

_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exitthread-pre-split.i, %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit
  %i.ap = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exitthread-pre-split.i ], [ %i.ae, %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exit.i
  %i.aq = load ptr, ptr %i.n, align 8, !tbaa !411
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #25
  br label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EED2Ev.exit

_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNO5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_18PolymorphicMatcherINS1_23matcher_hasType1MatcherEFvNS1_8TypeListIJNS_4ExprENS_10FriendDeclENS_9ValueDeclENS_16CXXBaseSpecifierENS_17ObjCInterfaceDeclEEEEEJNS1_7MatcherINS_4DeclEEEEEEEEcvNSD_IT_EEIS6_EEv(ptr dead_on_unwind noalias writable sret(%"class.clang::ast_matchers::internal::Matcher") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.clang::ast_matchers::internal::DynTypedMatcher", align 8 ; 5 uses
  %3 = alloca %"class.std::vector.962", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = load i32, ptr %1, align 8, !tbaa !256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2705)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !2706 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store i32 0, ptr %i.d, align 4, !tbaa !206, !noalias !2706
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal23matcher_hasType1MatcherINS_4ExprENS1_7MatcherINS_4DeclEEEEE, i64 16), ptr %i.c, align 8, !tbaa !141, !noalias !2706
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 12, i1 false), !noalias !2706
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !155, !noalias !2706 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !155, !noalias !2706
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = atomicrmw add ptr %i.i, i32 1 monotonic, align 4, !noalias !2706 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = atomicrmw add ptr %i.d, i32 1 monotonic, align 4, !noalias !2706 ; 0 uses
  %i.l = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24, !noalias !2705 ; 6 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !416, !alias.scope !2705
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !411, !alias.scope !2705
  store i8 0, ptr %i.l, align 8, !noalias !2705
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 190, ptr %.sroa.45.0..sroa_idx.i, align 4, !noalias !2705
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 190, ptr %.sroa.5.0..sroa_idx6.i, align 8, !noalias !2705
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.c, ptr %i.o, align 8, !tbaa !155, !noalias !2705
  %i.p = atomicrmw add ptr %i.d, i32 1 monotonic, align 4, !noalias !2705 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.q, align 8, !tbaa !417, !alias.scope !2705
  %i.r = atomicrmw sub ptr %i.d, i32 1 acq_rel, align 4, !noalias !2705
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.d, label %_ZNKR5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_18PolymorphicMatcherINS1_23matcher_hasType1MatcherEFvNS1_8TypeListIJNS_4ExprENS_10FriendDeclENS_9ValueDeclENS_16CXXBaseSpecifierENS_17ObjCInterfaceDeclEEEEEJNS1_7MatcherINS_4DeclEEEEEEEE11getMatchersIS6_JLm0EEEESt6vectorINS1_15DynTypedMatcherESaISK_EESt16integer_sequenceImJXspT0_EEE.exit

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !141, !noalias !2705
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !2705
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(12) %i.c) #23, !noalias !2705, !inline_history !2704
  br label %_ZNKR5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_18PolymorphicMatcherINS1_23matcher_hasType1MatcherEFvNS1_8TypeListIJNS_4ExprENS_10FriendDeclENS_9ValueDeclENS_16CXXBaseSpecifierENS_17ObjCInterfaceDeclEEEEEJNS1_7MatcherINS_4DeclEEEEEEEE11getMatchersIS6_JLm0EEEESt6vectorINS1_15DynTypedMatcherESaISK_EESt16integer_sequenceImJXspT0_EEE.exit

_ZNKR5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_18PolymorphicMatcherINS1_23matcher_hasType1MatcherEFvNS1_8TypeListIJNS_4ExprENS_10FriendDeclENS_9ValueDeclENS_16CXXBaseSpecifierENS_17ObjCInterfaceDeclEEEEEJNS1_7MatcherINS_4DeclEEEEEEEE11getMatchersIS6_JLm0EEEESt6vectorINS1_15DynTypedMatcherESaISK_EESt16integer_sequenceImJXspT0_EEE.exit: ; preds = %bb.c, %bb.d
  call void @_ZN5clang12ast_matchers8internal15DynTypedMatcher17constructVariadicENS2_16VariadicOperatorENS_11ASTNodeKindESt6vectorIS2_SaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::DynTypedMatcher") align 8 %2, i32 noundef %i.a, i32 190, ptr nofree noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @_ZNK5clang12ast_matchers8internal15DynTypedMatcher9dynCastToENS_11ASTNodeKindE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::DynTypedMatcher") align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 190) #23
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !155  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKR5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_18PolymorphicMatcherINS1_23matcher_hasType1MatcherEFvNS1_8TypeListIJNS_4ExprENS_10FriendDeclENS_9ValueDeclENS_16CXXBaseSpecifierENS_17ObjCInterfaceDeclEEEEEJNS1_7MatcherINS_4DeclEEEEEEEE11getMatchersIS6_JLm0EEEESt6vectorINS1_15DynTypedMatcherESaISK_EESt16integer_sequenceImJXspT0_EEE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw sub ptr %i.y, i32 1 acq_rel, align 4
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.f, label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !141
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(12) %i.x) #23, !inline_history !29
  br label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit

_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit: ; preds = %_ZNKR5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_18PolymorphicMatcherINS1_23matcher_hasType1MatcherEFvNS1_8TypeListIJNS_4ExprENS_10FriendDeclENS_9ValueDeclENS_16CXXBaseSpecifierENS_17ObjCInterfaceDeclEEEEEJNS1_7MatcherINS_4DeclEEEEEEEE11getMatchersIS6_JLm0EEEESt6vectorINS1_15DynTypedMatcherESaISK_EESt16integer_sequenceImJXspT0_EEE.exit, %bb.e, %bb.f
  %i.ae = load ptr, ptr %3, align 8, !tbaa !416   ; 3 uses
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !417 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit, %_ZSt8_DestroyIN5clang12ast_matchers8internal15DynTypedMatcherEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ao, %_ZSt8_DestroyIN5clang12ast_matchers8internal15DynTypedMatcherEEvPT_.exit.i.i.i ], [ %i.ae, %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !155 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5clang12ast_matchers8internal15DynTypedMatcherEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = atomicrmw sub ptr %i.ai, i32 1 acq_rel, align 4
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.h, label %_ZSt8_DestroyIN5clang12ast_matchers8internal15DynTypedMatcherEEvPT_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !141
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(12) %i.ah) #23, !inline_history !30
  br label %_ZSt8_DestroyIN5clang12ast_matchers8internal15DynTypedMatcherEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5clang12ast_matchers8internal15DynTypedMatcherEEvPT_.exit.i.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.ao, %i.af
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !27

_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5clang12ast_matchers8internal15DynTypedMatcherEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !416
  br label %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exit.i

_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exitthread-pre-split.i, %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit
  %i.ap = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exitthread-pre-split.i ], [ %i.ae, %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exit.i
  %i.aq = load ptr, ptr %i.n, align 8, !tbaa !411
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #25
  br label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EED2Ev.exit

_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal31matcher_argumentCountIs0MatcherINS_16CXXConstructExprEjED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5clang12ast_matchers8internal31matcher_argumentCountIs0MatcherINS_16CXXConstructExprEjE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !545  ; 3 uses
  %i.c = tail call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal14ASTMatchFinder32isTraversalIgnoringImplicitNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #23
  br i1 %i.c, label %.preheader.a, label %.split.loop.exit11

.preheader.a:                                     ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.not15 = icmp eq i32 %i.b, 0
  br i1 %.not15, label %.split.loop.exit11, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.a
  %i.d = zext i32 %i.b to i64
  %i.e = load i16, ptr %1, align 8
  %i.f = and i16 %i.e, 511
  %.not.i.i.i.i = icmp eq i16 %i.f, 118           ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %1, ptr null
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.g, ptr %4
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.split.loop.exit11, label %bb.c, !llvm.loop !2707

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv16 = phi i64 [ %i.d, %.lr.ph ], [ %i.h, %bb.b ] ; 2 uses
  %i.h = add nsw i64 %indvars.iv16, -1            ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i.i.i, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !469
  %i.k = load i16, ptr %i.j, align 8
  %i.l = and i16 %i.k, 511
  %i.m = icmp eq i16 %i.l, 116
  br i1 %i.m, label %bb.b, label %.split.loop.exit, !llvm.loop !2707

.split.loop.exit:                                 ; preds = %bb.c
  %i.n = trunc nuw i64 %indvars.iv16 to i32
  br label %.split.loop.exit11

.split.loop.exit11:                               ; preds = %bb.b, %.preheader.a, %.split.loop.exit, %bb.a
  %.0.lcssa.sink = phi i32 [ %i.b, %bb.a ], [ %i.n, %.split.loop.exit ], [ 0, %.preheader.a ], [ 0, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !566
  %i.q = icmp eq i32 %.0.lcssa.sink, %i.p
  ret i1 %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang8dataflow12_GLOBAL__N_125valueOrConversionHasValueENS_8QualTypeERKNS_4ExprERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(i64 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2718
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.e, %bb.a
  %accumulator.tr.i = phi i32 [ 0, %bb.a ], [ %i.ab, %bb.e ] ; 2 uses
  %.tr6.i = phi i64 [ %0, %bb.a ], [ %i.aa, %bb.e ]
  %i.c = and i64 %.tr6.i, -16
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !151
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !146
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !151 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i8, ptr %i.j, align 16              ; 3 uses
  %i.l = add i8 %i.k, -47
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.l, 3
  %.not.i7.i.i = icmp ne ptr %i.i, null
  %.not.i.not8.i.i = and i1 %.not.i7.i.i, %switch.i.i.i.i.i.i.i.i.i.i.i
  %i.m = and i8 %i.k, 62
  %spec.select.i.i.i.i = icmp eq i8 %i.m, 48
  %or.cond.i.i = and i1 %spec.select.i.i.i.i, %.not.i.not8.i.i
  br i1 %or.cond.i.i, label %bb.b, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i

bb.b:                                             ; preds = %tailrecurse.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !456  ; 3 uses
  %i.p = icmp eq i8 %i.k, 49
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 127
  %i.t = add nsw i32 %i.s, -60
  %i.u = icmp ult i32 %i.t, 3
  br i1 %i.u, label %bb.d, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.o), !inline_history !2708 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.v, null
  %spec.select.i.i.i = select i1 %.not.not.i.i.i, ptr %i.o, ptr %i.v
  br label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i:     ; preds = %bb.d, %bb.c, %tailrecurse.i
  %.1.i.i = phi ptr [ null, %bb.c ], [ null, %tailrecurse.i ], [ %spec.select.i.i.i, %bb.d ]
  %i.w = tail call fastcc noundef ptr @_ZN5clang8dataflowL20getOptionalBaseClassEPKNS_13CXXRecordDeclE(ptr noundef %.1.i.i), !inline_history !2708 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN5clang8dataflow12_GLOBAL__N_121countOptionalWrappersERKNS_10ASTContextENS_8QualTypeE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i
  %i.y = getelementptr i8, ptr %i.w, i64 168
  %.val.i = load ptr, ptr %i.y, align 8, !tbaa !578
  %i.z = getelementptr i8, ptr %.val.i, i64 16
  %.val.val.i = load i64, ptr %i.z, align 8, !tbaa !146
  %i.aa = tail call i64 @_ZN5clang8QualType16getDesugaredTypeES0_RKNS_10ASTContextE(i64 %.val.val.i, ptr noundef nonnull align 8 dereferenceable(23904) %i.b) #23, !inline_history !2708
  %i.ab = add i32 %accumulator.tr.i, 1
  br label %tailrecurse.i

_ZN5clang8dataflow12_GLOBAL__N_121countOptionalWrappersERKNS_10ASTContextENS_8QualTypeE.exit: ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !2718
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.ad, align 8, !tbaa !146 ; 3 uses
  %i.ae = and i64 %.sroa.0.0.copyload.i, -16
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !151 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i8, ptr %i.ah, align 16
  %i.aj = and i8 %i.ai, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.aj, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, label %bb.f

bb.f:                                             ; preds = %_ZN5clang8dataflow12_GLOBAL__N_121countOptionalWrappersERKNS_10ASTContextENS_8QualTypeE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i18 = load i64, ptr %i.ak, align 8, !tbaa !146
  %i.al = and i64 %.sroa.0.0.copyload.i.i.i.i.i18, -16
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !151
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i8, ptr %i.ao, align 16
  %i.aq = and i8 %i.ap, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.aq, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %tailrecurse.i19.preheader

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.f
  %i.ar = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ag) #23 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %tailrecurse.i19.preheader, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZN5clang8dataflow12_GLOBAL__N_121countOptionalWrappersERKNS_10ASTContextENS_8QualTypeE.exit
  %.1.i8.i = phi ptr [ %i.ar, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.ag, %_ZN5clang8dataflow12_GLOBAL__N_121countOptionalWrappersERKNS_10ASTContextENS_8QualTypeE.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i8.i, i64 16
  %i.at = load i24, ptr %i.as, align 16
  %i.au = and i24 %i.at, 1048576
  %.not4.i.i = icmp eq i24 %i.au, 0
  br i1 %.not4.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i
  %.05.i.i = phi ptr [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.av, align 8
  %i.aw = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load ptr, ptr %i.ax, align 16, !tbaa !151 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i8, ptr %i.az, align 16
  %i.bb = and i8 %i.ba, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.bb, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.bc = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ay) #23
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i: ; preds = %bb.g, %.lr.ph.i.i
  %.1.i.i.i = phi ptr [ %i.bc, %bb.g ], [ %i.ay, %.lr.ph.i.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.be = load i24, ptr %i.bd, align 16
  %i.bf = and i24 %i.be, 1048576
  %.not.i.i = icmp eq i24 %i.bf, 0
  br i1 %.not.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i, !llvm.loop !15

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i
  %.0.lcssa.i.i = phi ptr [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ], [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i = load i64, ptr %i.bg, align 8, !tbaa !146
  br label %tailrecurse.i19.preheader

tailrecurse.i19.preheader:                        ; preds = %bb.f, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i
  %.tr6.i21.ph = phi i64 [ %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ], [ %.sroa.0.0.copyload.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %.sroa.0.0.copyload.i, %bb.f ]
  br label %tailrecurse.i19

tailrecurse.i19:                                  ; preds = %tailrecurse.i19.preheader, %bb.k
  %accumulator.tr.i20 = phi i32 [ %i.cg, %bb.k ], [ 0, %tailrecurse.i19.preheader ] ; 2 uses
  %.tr6.i21 = phi i64 [ %i.cf, %bb.k ], [ %.tr6.i21.ph, %tailrecurse.i19.preheader ]
  %i.bh = and i64 %.tr6.i21, -16
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load ptr, ptr %i.bi, align 16, !tbaa !151
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i22 = load i64, ptr %i.bk, align 8, !tbaa !146
  %i.bl = and i64 %.sroa.0.0.copyload.i.i.i.i.i22, -16
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load ptr, ptr %i.bm, align 16, !tbaa !151 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load i8, ptr %i.bo, align 16            ; 3 uses
  %i.bq = add i8 %i.bp, -47
  %switch.i.i.i.i.i.i.i.i.i.i.i23 = icmp ult i8 %i.bq, 3
  %.not.i7.i.i24 = icmp ne ptr %i.bn, null
  %.not.i.not8.i.i25 = and i1 %.not.i7.i.i24, %switch.i.i.i.i.i.i.i.i.i.i.i23
  %i.br = and i8 %i.bp, 62
  %spec.select.i.i.i.i26 = icmp eq i8 %i.br, 48
  %or.cond.i.i27 = and i1 %spec.select.i.i.i.i26, %.not.i.not8.i.i25
  br i1 %or.cond.i.i27, label %bb.h, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i28

bb.h:                                             ; preds = %tailrecurse.i19
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !456 ; 3 uses
  %i.bu = icmp eq i8 %i.bp, 49
  br i1 %i.bu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 28
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = and i32 %i.bw, 127
  %i.by = add nsw i32 %i.bx, -60
  %i.bz = icmp ult i32 %i.by, 3
  br i1 %i.bz, label %bb.j, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i28

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ca = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.bt), !inline_history !2708 ; 2 uses
  %.not.not.i.i.i32 = icmp eq ptr %i.ca, null
  %spec.select.i.i.i33 = select i1 %.not.not.i.i.i32, ptr %i.bt, ptr %i.ca
  br label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i28

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i28:   ; preds = %bb.j, %bb.i, %tailrecurse.i19
  %.1.i.i29 = phi ptr [ null, %bb.i ], [ null, %tailrecurse.i19 ], [ %spec.select.i.i.i33, %bb.j ]
  %i.cb = tail call fastcc noundef ptr @_ZN5clang8dataflowL20getOptionalBaseClassEPKNS_13CXXRecordDeclE(ptr noundef %.1.i.i29), !inline_history !2708 ; 2 uses
end_hunk_3
