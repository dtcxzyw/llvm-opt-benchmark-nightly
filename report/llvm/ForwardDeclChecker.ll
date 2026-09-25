Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ForwardDeclChecker?download=true
inline.NumInlined: 17038
inline.NumDeleted: 8781
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5clang19RecursiveASTVisitorIZNK12_GLOBAL__N_118ForwardDeclChecker12checkASTDeclEPKNS_19TranslationUnitDeclERNS_4ento15AnalysisManagerERNS6_11BugReporterEE12LocalVisitorE26TraverseCXXDefaultInitExprEPNS_18CXXDefaultInitExprEPN4llvm15SmallVectorImplINSF_14PointerIntPairIPNS_4StmtELj1EbNSF_21PointerLikeTypeTraitsISJ_EENSF_18PointerIntPairInfoISJ_Lj1ESL_EEEEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i1 %.not3.i.not21
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIZNK12_GLOBAL__N_118ForwardDeclChecker12checkASTDeclEPKNS_19TranslationUnitDeclERNS_4ento15AnalysisManagerERNS6_11BugReporterEE12LocalVisitorE25TraverseCXXDefaultArgExprEPNS_17CXXDefaultArgExprEPN4llvm15SmallVectorImplINSF_14PointerIntPairIPNS_4StmtELj1EbNSF_21PointerLikeTypeTraitsISJ_EENSF_18PointerIntPairInfoISJ_Lj1ESL_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::iterator_range", align 8 ; 6 uses
  %4 = alloca %"struct.clang::StmtIterator", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN5clang4Stmt8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %i.d = icmp eq ptr %i.c, %.sroa.0.0.copyload
  %i.e = load i64, ptr %i.b, align 8              ; 2 uses
  %i.f = icmp eq i64 %i.e, %.sroa.5.0.copyload
  %.not3.i.not22 = select i1 %i.d, i1 %i.f, i1 false
  br i1 %.not3.i.not22, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit
  %i.g = phi i64 [ %i.v, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ %i.e, %bb.a ]
  %i.h = phi ptr [ %i.t, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ %i.c, %bb.a ]
  %i.i = and i64 %i.g, 3
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5clang16StmtIteratorBase11GetDeclExprEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  br label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit

_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit: ; preds = %.lr.ph, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ %i.h, %.lr.ph ]
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !315
  %i.n = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIZNK12_GLOBAL__N_118ForwardDeclChecker12checkASTDeclEPKNS_19TranslationUnitDeclERNS_4ento15AnalysisManagerERNS6_11BugReporterEE12LocalVisitorE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINSF_14PointerIntPairISE_Lj1EbNSF_21PointerLikeTypeTraitsISE_EENSF_18PointerIntPairInfoISE_Lj1ESJ_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.m, ptr noundef %2) ; 3 uses
  br i1 %i.n, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit
  %i.o = load i64, ptr %i.b, align 8, !tbaa !351  ; 2 uses
  %i.p = and i64 %i.o, 3
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %4, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.s, ptr %4, align 8, !tbaa !51
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp ult i64 %i.o, 4
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5clang16StmtIteratorBase6NextVAEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

bb.g:                                             ; preds = %bb.e
  call void @_ZN5clang16StmtIteratorBase8NextDeclEb(ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext true) #19
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.t = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %i.u = icmp eq ptr %i.t, %.sroa.0.0.copyload
  %i.v = load i64, ptr %i.b, align 8              ; 2 uses
  %i.w = icmp eq i64 %i.v, %.sroa.5.0.copyload
  %.not3.i.not = select i1 %i.u, i1 %i.w, i1 false
  br i1 %.not3.i.not, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit, %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit, %bb.a
  %.not3.i.not21 = phi i1 [ true, %bb.a ], [ %i.n, %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit ], [ %i.n, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i1 %.not3.i.not21
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIZNK12_GLOBAL__N_118ForwardDeclChecker12checkASTDeclEPKNS_19TranslationUnitDeclERNS_4ento15AnalysisManagerERNS6_11BugReporterEE12LocalVisitorE24TraverseCXXConstructExprEPNS_16CXXConstructExprEPN4llvm15SmallVectorImplINSF_14PointerIntPairIPNS_4StmtELj1EbNSF_21PointerLikeTypeTraitsISJ_EENSF_18PointerIntPairInfoISJ_Lj1ESL_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::iterator_range", align 8 ; 6 uses
  %4 = alloca %"struct.clang::StmtIterator", align 8 ; 11 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !98
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val18 = load ptr, ptr %i.a, align 8, !tbaa !99
  tail call fastcc void @_ZN5clang19RecursiveASTVisitorIZNK12_GLOBAL__N_118ForwardDeclChecker12checkASTDeclEPKNS_19TranslationUnitDeclERNS_4ento15AnalysisManagerERNS6_11BugReporterEE12LocalVisitorE26WalkUpFromCXXConstructExprEPNS_16CXXConstructExprE(ptr %.val, ptr %.val18, ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN5clang4Stmt8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %i.e = icmp eq ptr %i.d, %.sroa.0.0.copyload
  %i.f = load i64, ptr %i.c, align 8              ; 2 uses
  %i.g = icmp eq i64 %i.f, %.sroa.5.0.copyload
  %.not3.i.not22 = select i1 %i.e, i1 %i.g, i1 false
  br i1 %.not3.i.not22, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit
  %i.h = phi i64 [ %i.w, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ %i.f, %bb.a ]
  %i.i = phi ptr [ %i.u, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ %i.d, %bb.a ]
  %i.j = and i64 %i.h, 3
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5clang16StmtIteratorBase11GetDeclExprEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  br label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit

_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit: ; preds = %.lr.ph, %bb.b
  %i.m = phi ptr [ %i.l, %bb.b ], [ %i.i, %.lr.ph ]
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !315
  %i.o = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIZNK12_GLOBAL__N_118ForwardDeclChecker12checkASTDeclEPKNS_19TranslationUnitDeclERNS_4ento15AnalysisManagerERNS6_11BugReporterEE12LocalVisitorE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINSF_14PointerIntPairISE_Lj1EbNSF_21PointerLikeTypeTraitsISE_EENSF_18PointerIntPairInfoISE_Lj1ESJ_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.n, ptr noundef %2) ; 3 uses
  br i1 %i.o, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit
  %i.p = load i64, ptr %i.c, align 8, !tbaa !351  ; 2 uses
  %i.q = and i64 %i.p, 3
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %4, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %4, align 8, !tbaa !51
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp ult i64 %i.p, 4
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5clang16StmtIteratorBase6NextVAEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

bb.g:                                             ; preds = %bb.e
  call void @_ZN5clang16StmtIteratorBase8NextDeclEb(ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext true) #19
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.u = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %i.v = icmp eq ptr %i.u, %.sroa.0.0.copyload
  %i.w = load i64, ptr %i.c, align 8              ; 2 uses
  %i.x = icmp eq i64 %i.w, %.sroa.5.0.copyload
  %.not3.i.not = select i1 %i.v, i1 %i.x, i1 false
  br i1 %.not3.i.not, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit, %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit, %bb.a
  %.not3.i.not21 = phi i1 [ true, %bb.a ], [ %i.o, %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit ], [ %i.o, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i1 %.not3.i.not21
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang19RecursiveASTVisitorIZNK12_GLOBAL__N_118ForwardDeclChecker12checkASTDeclEPKNS_19TranslationUnitDeclERNS_4ento15AnalysisManagerERNS6_11BugReporterEE12LocalVisitorE26WalkUpFromCXXConstructExprEPNS_16CXXConstructExprE(ptr %.0.val, ptr %.8.val, ptr noundef %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !275, !nonnull !70, !align !178 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(776) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #19, !inline_history !853
  %i.i = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #22 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit.thread.i.i, label %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit.i.i

_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit.i.i: ; preds = %bb.a
  %i.k = tail call noundef i32 @_ZNK5clang13SourceManager21getFileCharacteristicENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(776) %i.h, i32 %i.i) #19
  switch i32 %i.k, label %_ZZNK12_GLOBAL__N_118ForwardDeclChecker12checkASTDeclEPKN5clang19TranslationUnitDeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterEEN12LocalVisitor21VisitCXXConstructExprEPKNS1_16CXXConstructExprE.exit [
    i32 3, label %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit.thread.i.i
    i32 0, label %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit.thread.i.i
  ]

_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit.thread.i.i: ; preds = %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit.i.i, %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit.i.i, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !855  ; 5 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZZNK12_GLOBAL__N_118ForwardDeclChecker12checkASTDeclEPKN5clang19TranslationUnitDeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterEEN12LocalVisitor21VisitCXXConstructExprEPKNS1_16CXXConstructExprE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit.thread.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 120 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !384  ; 2 uses
  %i.p = tail call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.m) #19 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !384
  %i.s = tail call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.m) #19
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.t
  %i.v = icmp ult ptr %i.o, %i.u
  br i1 %i.v, label %bb.c, label %_ZZNK12_GLOBAL__N_118ForwardDeclChecker12checkASTDeclEPKN5clang19TranslationUnitDeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterEEN12LocalVisitor21VisitCXXConstructExprEPKNS1_16CXXConstructExprE.exit

bb.c:                                             ; preds = %bb.b, %bb.d
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %.018.i.i = phi ptr [ %i.af, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %i.w = load i32, ptr %i.q, align 8, !tbaa !856
  %i.x = zext i32 %i.w to i64
  %i.y = icmp samesign ult i64 %indvars.iv.i.i, %i.x
  br i1 %i.y, label %bb.d, label %_ZZNK12_GLOBAL__N_118ForwardDeclChecker12checkASTDeclEPKN5clang19TranslationUnitDeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterEEN12LocalVisitor21VisitCXXConstructExprEPKNS1_16CXXConstructExprE.exit

bb.d:                                             ; preds = %bb.c
  %i.z = load i16, ptr %0, align 8
  %i.aa = and i16 %i.z, 511
  %.not.i.i.i.i.i.i = icmp eq i16 %i.aa, 118
  %spec.select.v.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 48, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.v.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !137
  %i.ae = load ptr, ptr %.018.i.i, align 8, !tbaa !209
  tail call fastcc void @_ZNK12_GLOBAL__N_118ForwardDeclChecker12visitCallArgEPKN5clang4ExprEPKNS1_11ParmVarDeclEPKNS1_4DeclE(ptr noundef nonnull align 8 dereferenceable(232) %.0.val, ptr noundef %i.ad, ptr noundef %i.ae, ptr noundef %.8.val)
  %i.af = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8 ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !384
  %i.ah = tail call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.m) #19
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = icmp ult ptr %i.af, %i.aj
  br i1 %i.ak, label %bb.c, label %_ZZNK12_GLOBAL__N_118ForwardDeclChecker12checkASTDeclEPKN5clang19TranslationUnitDeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterEEN12LocalVisitor21VisitCXXConstructExprEPKNS1_16CXXConstructExprE.exit, !llvm.loop !854

_ZZNK12_GLOBAL__N_118ForwardDeclChecker12checkASTDeclEPKN5clang19TranslationUnitDeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterEEN12LocalVisitor21VisitCXXConstructExprEPKNS1_16CXXConstructExprE.exit: ; preds = %bb.c, %bb.d, %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit.i.i, %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit.thread.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIZNK12_GLOBAL__N_118ForwardDeclChecker12checkASTDeclEPKNS_19TranslationUnitDeclERNS_4ento15AnalysisManagerERNS6_11BugReporterEE12LocalVisitorE30TraverseCXXTemporaryObjectExprEPNS_22CXXTemporaryObjectExprEPN4llvm15SmallVectorImplINSF_14PointerIntPairIPNS_4StmtELj1EbNSF_21PointerLikeTypeTraitsISJ_EENSF_18PointerIntPairInfoISJ_Lj1ESL_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::iterator_range", align 8 ; 6 uses
  %4 = alloca %"struct.clang::StmtIterator", align 8 ; 11 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !98
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val19 = load ptr, ptr %i.a, align 8, !tbaa !99
  tail call fastcc void @_ZN5clang19RecursiveASTVisitorIZNK12_GLOBAL__N_118ForwardDeclChecker12checkASTDeclEPKNS_19TranslationUnitDeclERNS_4ento15AnalysisManagerERNS6_11BugReporterEE12LocalVisitorE26WalkUpFromCXXConstructExprEPNS_16CXXConstructExprE(ptr %.val, ptr %.val19, ptr noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !858  ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  %i.f = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIZNK12_GLOBAL__N_118ForwardDeclChecker12checkASTDeclEPKNS_19TranslationUnitDeclERNS_4ento15AnalysisManagerERNS6_11BugReporterEE12LocalVisitorE15TraverseTypeLocENS_7TypeLocEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.e, ptr nonnull %i.d, i1 noundef zeroext true)
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN5clang4Stmt8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.g, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %i.j = icmp ne ptr %i.i, %.sroa.0.0.copyload
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = icmp ne i64 %i.k, %.sroa.5.0.copyload
  %.not3.i20 = select i1 %i.j, i1 true, i1 %i.l
  br i1 %.not3.i20, label %.lr.ph, label %.sink.split

.lr.ph:                                           ; preds = %bb.b, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit
  %i.m = phi i64 [ %i.ab, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ %i.k, %bb.b ]
  %i.n = phi ptr [ %i.z, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ %i.i, %bb.b ]
  %i.o = and i64 %i.m, 3
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5clang16StmtIteratorBase11GetDeclExprEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  br label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit

_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit: ; preds = %.lr.ph, %bb.c
  %i.r = phi ptr [ %i.q, %bb.c ], [ %i.n, %.lr.ph ]
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !315
  %i.t = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIZNK12_GLOBAL__N_118ForwardDeclChecker12checkASTDeclEPKNS_19TranslationUnitDeclERNS_4ento15AnalysisManagerERNS6_11BugReporterEE12LocalVisitorE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINSF_14PointerIntPairISE_Lj1EbNSF_21PointerLikeTypeTraitsISE_EENSF_18PointerIntPairInfoISE_Lj1ESJ_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.s, ptr noundef %2) ; 3 uses
  br i1 %i.t, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit
  %i.u = load i64, ptr %i.h, align 8, !tbaa !351  ; 2 uses
  %i.v = and i64 %i.u, 3
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %4, align 8, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %4, align 8, !tbaa !51
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ult i64 %i.u, 4
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5clang16StmtIteratorBase6NextVAEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

bb.h:                                             ; preds = %bb.f
  call void @_ZN5clang16StmtIteratorBase8NextDeclEb(ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext true) #19
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit: ; preds = %bb.e, %bb.g, %bb.h
  %i.z = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %i.aa = icmp ne ptr %i.z, %.sroa.0.0.copyload
  %i.ab = load i64, ptr %i.h, align 8             ; 2 uses
  %i.ac = icmp ne i64 %i.ab, %.sroa.5.0.copyload
  %.not3.i = select i1 %i.aa, i1 true, i1 %i.ac
  br i1 %.not3.i, label %.lr.ph, label %.sink.split

.sink.split:                                      ; preds = %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit, %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit, %bb.b
  %.3.ph = phi i1 [ true, %bb.b ], [ %i.t, %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit ], [ %i.t, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIZNK12_GLOBAL__N_118ForwardDeclChecker12checkASTDeclEPKNS_19TranslationUnitDeclERNS_4ento15AnalysisManagerERNS6_11BugReporterEE12LocalVisitorE26TraverseCXXBoolLiteralExprEPNS_18CXXBoolLiteralExprEPN4llvm15SmallVectorImplINSF_14PointerIntPairIPNS_4StmtELj1EbNSF_21PointerLikeTypeTraitsISJ_EENSF_18PointerIntPairInfoISJ_Lj1ESL_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::iterator_range", align 8 ; 6 uses
  %4 = alloca %"struct.clang::StmtIterator", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN5clang4Stmt8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %i.d = icmp eq ptr %i.c, %.sroa.0.0.copyload
  %i.e = load i64, ptr %i.b, align 8              ; 2 uses
  %i.f = icmp eq i64 %i.e, %.sroa.5.0.copyload
  %.not3.i.not21 = select i1 %i.d, i1 %i.f, i1 false
  br i1 %.not3.i.not21, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit
  %i.g = phi i64 [ %i.v, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ %i.e, %bb.a ]
  %i.h = phi ptr [ %i.t, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ %i.c, %bb.a ]
  %i.i = and i64 %i.g, 3
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5clang16StmtIteratorBase11GetDeclExprEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  br label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit

_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit: ; preds = %.lr.ph, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ %i.h, %.lr.ph ]
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !315
  %i.n = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIZNK12_GLOBAL__N_118ForwardDeclChecker12checkASTDeclEPKNS_19TranslationUnitDeclERNS_4ento15AnalysisManagerERNS6_11BugReporterEE12LocalVisitorE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINSF_14PointerIntPairISE_Lj1EbNSF_21PointerLikeTypeTraitsISE_EENSF_18PointerIntPairInfoISE_Lj1ESJ_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.m, ptr noundef %2) ; 3 uses
  br i1 %i.n, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit
  %i.o = load i64, ptr %i.b, align 8, !tbaa !351  ; 2 uses
  %i.p = and i64 %i.o, 3
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %4, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.s, ptr %4, align 8, !tbaa !51
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp ult i64 %i.o, 4
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5clang16StmtIteratorBase6NextVAEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

bb.g:                                             ; preds = %bb.e
  call void @_ZN5clang16StmtIteratorBase8NextDeclEb(ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext true) #19
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.t = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %i.u = icmp eq ptr %i.t, %.sroa.0.0.copyload
  %i.v = load i64, ptr %i.b, align 8              ; 2 uses
  %i.w = icmp eq i64 %i.v, %.sroa.5.0.copyload
  %.not3.i.not = select i1 %i.u, i1 %i.w, i1 false
  br i1 %.not3.i.not, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit, %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit, %bb.a
  %.not3.i.not20 = phi i1 [ true, %bb.a ], [ %i.n, %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit ], [ %i.n, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i1 %.not3.i.not20
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIZNK12_GLOBAL__N_118ForwardDeclChecker12checkASTDeclEPKNS_19TranslationUnitDeclERNS_4ento15AnalysisManagerERNS6_11BugReporterEE12LocalVisitorE28TraverseCXXBindTemporaryExprEPNS_20CXXBindTemporaryExprEPN4llvm15SmallVectorImplINSF_14PointerIntPairIPNS_4StmtELj1EbNSF_21PointerLikeTypeTraitsISJ_EENSF_18PointerIntPairInfoISJ_Lj1ESL_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::iterator_range", align 8 ; 6 uses
  %4 = alloca %"struct.clang::StmtIterator", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN5clang4Stmt8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
end_hunk_0
