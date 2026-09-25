Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaDeclCXX?download=true
inline.NumInlined: 22648
inline.NumDeleted: 9795
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5clang4Sema34ConvertMemberDefaultInitExpressionEPNS_9FieldDeclEPNS_4ExprENS_14SourceLocationE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i64 %i.o
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema38ActOnFinishCXXInClassMemberInitializerEPNS_4DeclENS_14SourceLocationENS_12ActionResultIPNS_4ExprELb1EEE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, i32 %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.1501", align 8 ; 3 uses
  call void @_ZN5clang4Sema20PopFunctionScopeInfoEPKNS_4sema21AnalysisBasedWarnings6PolicyEPNS_4DeclENS_8QualTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.1501") align 8 %4, ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef null, ptr noundef %1, i64 0) #26
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1626 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5clang4sema17FunctionScopeInfoENS0_4Sema26PoppedFunctionScopeDeleterEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZNK5clang4Sema26PoppedFunctionScopeDeleterclEPNS_4sema17FunctionScopeInfoE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.b) #26
  br label %_ZNSt10unique_ptrIN5clang4sema17FunctionScopeInfoENS0_4Sema26PoppedFunctionScopeDeleterEED2Ev.exit

_ZNSt10unique_ptrIN5clang4sema17FunctionScopeInfoENS0_4Sema26PoppedFunctionScopeDeleterEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 127
  %i.f = icmp eq i32 %i.e, 49
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN5clang4sema17FunctionScopeInfoENS0_4Sema26PoppedFunctionScopeDeleterEED2Ev.exit
  call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #26
  br label %bb.l

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN5clang4sema17FunctionScopeInfoENS0_4Sema26PoppedFunctionScopeDeleterEED2Ev.exit
  %spec.select.i = icmp ugt i64 %3, 1
  br i1 %spec.select.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = and i64 %3, -2
  %i.h = inttoptr i64 %i.g to ptr                 ; 5 uses
  %i.i = call noundef zeroext i1 @_ZN5clang4Sema31DiagnoseUnexpandedParameterPackEPNS_4ExprENS0_30UnexpandedParameterPackContextE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.h, i32 noundef 11) #26
  br i1 %i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #26
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 8, !tbaa !92
  %i.k = call i64 @_ZN5clang4Sema18CreateRecoveryExprENS_14SourceLocationES1_N4llvm8ArrayRefIPNS_4ExprEEENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %2, i32 %2, ptr null, i64 0, i64 %.sroa.0.0.copyload.i) #26 ; 2 uses
  %spec.select.i16 = icmp ugt i64 %i.k, 1
  br i1 %spec.select.i16, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.l = and i64 %i.k, -2
  %i.m = inttoptr i64 %i.l to ptr
  call void @_ZN5clang9FieldDecl21setInClassInitializerEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %i.m) #26
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i17 = load i64, ptr %i.n, align 8, !tbaa !92
  %i.o = and i64 %.sroa.0.0.copyload.i17, -16
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !98
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 17
  %i.s = load i16, ptr %i.r, align 1
  %i.t = and i16 %i.s, 4
  %.not = icmp eq i16 %i.t, 0
  br i1 %.not, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.u = load i24, ptr %i.h, align 8
  %i.v = and i24 %i.u, 65536
  %.not33 = icmp eq i24 %i.v, 0
  br i1 %.not33, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.w = call i64 @_ZN5clang4Sema34ConvertMemberDefaultInitExpressionEPNS_9FieldDeclEPNS_4ExprENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, ptr noundef %i.h, i32 %2) ; 2 uses
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = and i64 %i.w, -2
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = call i64 @_ZN5clang4Sema19ActOnFinishFullExprEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.z, i1 noundef zeroext false) ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %.thread, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.k
  %.pre = and i64 %i.aa, -2
  %.pre34 = inttoptr i64 %.pre to ptr
  br label %.critedge

.thread:                                          ; preds = %bb.j, %bb.k
  call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #26
  br label %bb.l

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.h, %bb.i
  %.pre-phi35 = phi ptr [ %.pre34, %..critedge_crit_edge ], [ %i.h, %bb.h ], [ %i.h, %bb.i ]
  call void @_ZN5clang9FieldDecl21setInClassInitializerEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %.pre-phi35) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.g, %.thread, %.critedge, %bb.c
  ret void
}

declare void @_ZN5clang4Sema20PopFunctionScopeInfoEPKNS_4sema21AnalysisBasedWarnings6PolicyEPNS_4DeclENS_8QualTypeE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.1501") align 8, ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef, i64) local_unnamed_addr #2

declare void @_ZN5clang9FieldDecl21setInClassInitializerEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN5clang4Sema19ActOnFinishFullExprEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ %i.a, %bb.b ], [ 0, %bb.a ]
  %i.b = tail call i64 @_ZN5clang4Sema19ActOnFinishFullExprEPNS_4ExprENS_14SourceLocationEbbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, i32 %.sroa.0.0, i1 noundef zeroext %2, i1 noundef zeroext false, i1 noundef zeroext false) #26
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang4Sema19ActOnMemInitializerEPNS_4DeclEPNS_5ScopeERNS_12CXXScopeSpecEPNS_14IdentifierInfoENS_9OpaquePtrINS_8QualTypeEEERKNS_8DeclSpecENS_14SourceLocationEPNS_4ExprESF_(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %4, ptr %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %6, i32 %7, ptr noundef %8, i32 %9) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i64 @_ZN5clang4Sema19BuildMemInitializerEPNS_4DeclEPNS_5ScopeERNS_12CXXScopeSpecEPNS_14IdentifierInfoENS_9OpaquePtrINS_8QualTypeEEERKNS_8DeclSpecENS_14SourceLocationEPNS_4ExprESF_(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %4, ptr %5, ptr noundef nonnull align 8 dereferenceable(304) %6, i32 %7, ptr noundef %8, i32 %9)
  ret i64 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang4Sema19BuildMemInitializerEPNS_4DeclEPNS_5ScopeERNS_12CXXScopeSpecEPNS_14IdentifierInfoENS_9OpaquePtrINS_8QualTypeEEERKNS_8DeclSpecENS_14SourceLocationEPNS_4ExprESF_(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %4, ptr %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %6, i32 %7, ptr noundef %8, i32 %9) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %10 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %11 = alloca %"class.clang::SourceRange", align 4 ; 5 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %12 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %13 = alloca %"class.llvm::ArrayRef", align 8   ; 2 uses
  %14 = alloca %"class.clang::LookupResult", align 8 ; 20 uses
  %15 = alloca %"class.clang::TemplateName", align 8 ; 4 uses
  %16 = alloca %"class.clang::TemplateName", align 8 ; 5 uses
  %17 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %18 = alloca %"class.clang::SourceRange", align 4 ; 5 uses
  %19 = alloca %"class.clang::TypoCorrection", align 8 ; 19 uses
  %20 = alloca %"class.(anonymous namespace)::MemInitializerValidatorCCC", align 8 ; 9 uses
  %21 = alloca %"class.clang::TypoCorrection", align 8 ; 5 uses
  %22 = alloca %"class.clang::PartialDiagnostic", align 8 ; 10 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %23 = alloca %"class.clang::PartialDiagnostic", align 8 ; 10 uses
  %24 = alloca %"class.clang::PartialDiagnostic", align 8 ; 5 uses
  %25 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %26 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %27 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %28 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %29 = alloca %"class.clang::SourceRange", align 4 ; 5 uses
  %30 = alloca %"class.clang::TypeLocBuilder", align 8 ; 13 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !1398
  store ptr %4, ptr %i.b, align 8, !tbaa !1355
  %i.f = icmp ne ptr %1, null
  %i.g = icmp ne ptr %8, null
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %bb.b, label %bb.bj

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef ptr @_ZN5clang4Sema20AdjustDeclIfTemplateERPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26 ; 0 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !1398 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 127
  %i.m = icmp ne i32 %i.l, 39
  %.not351 = icmp eq ptr %i.i, null
  %.not = or i1 %.not351, %i.m
  br i1 %.not, label %bb.bj, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.o = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.n) #26
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8 ; 3 uses
  %i.q = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit

bb.e:                                             ; preds = %bb.c
  %i.t = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1249
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit

_ZN5clang13CXXMethodDecl9getParentEv.exit:        ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.v, %bb.e ] ; 4 uses
  %i.w = icmp eq ptr %.0.i.i.i, null
  %i.x = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -64 ; 3 uses
  %i.y = select i1 %i.w, ptr null, ptr %i.x       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.z, align 8, !tbaa !1284
  %i.aa = icmp ne i64 %.sroa.0.0.copyload.i.i.i, 0
  %i.ab = icmp ne ptr %5, null                    ; 2 uses
  %or.cond.i = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond.i, label %.critedge209, label %bb.f

bb.f:                                             ; preds = %_ZN5clang13CXXMethodDecl9getParentEv.exit
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !1355
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = call i64 @_ZNK5clang11DeclContext6lookupENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i.i, i64 %i.ad) #26 ; 2 uses
  %.not5860.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not5860.i.i, label %.critedge209.thread, label %.lr.ph.i.i

.critedge209.thread:                              ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store ptr null, ptr %i.c, align 8, !tbaa !1571
  br label %bb.u

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.g

bb.g:                                             ; preds = %_ZN5clang12DeclListNode8iteratorppEv.exit.i.i, %.lr.ph.i.i
  %.01562.i.i = phi ptr [ null, %.lr.ph.i.i ], [ %.3.ph.i.i, %_ZN5clang12DeclListNode8iteratorppEv.exit.i.i ] ; 5 uses
  %.sroa.032.061.i.i = phi i64 [ %i.ae, %.lr.ph.i.i ], [ %i.bf, %_ZN5clang12DeclListNode8iteratorppEv.exit.i.i ] ; 2 uses
  %i.ag = and i64 %.sroa.032.061.i.i, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ag, 0
  %i.ah = and i64 %.sroa.032.061.i.i, -5          ; 2 uses
  %i.ai = inttoptr i64 %i.ah to ptr               ; 3 uses
  %.not.not7.i.i.i = icmp eq i64 %i.ah, 0
  %.not.not.i.i.i = or i1 %.not.i.i.i.i.i.i, %.not.not7.i.i.i ; 2 uses
  br i1 %.not.not.i.i.i, label %_ZNK5clang12DeclListNode8iteratordeEv.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1593
  br label %_ZNK5clang12DeclListNode8iteratordeEv.exit.i.i

_ZNK5clang12DeclListNode8iteratordeEv.exit.i.i:   ; preds = %bb.h, %bb.g
  %.1.i.i.i = phi ptr [ %i.aj, %bb.h ], [ %i.ai, %bb.g ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 28
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = and i32 %i.al, 127
  switch i32 %i.am, label %bb.q [
    i32 52, label %bb.i
    i32 51, label %bb.i
    i32 50, label %bb.i
    i32 33, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNK5clang12DeclListNode8iteratordeEv.exit.i.i, %_ZNK5clang12DeclListNode8iteratordeEv.exit.i.i, %_ZNK5clang12DeclListNode8iteratordeEv.exit.i.i, %_ZNK5clang12DeclListNode8iteratordeEv.exit.i.i
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !1172, !nonnull !107, !align !791
  %i.ao = call noundef zeroext i1 @_ZNK5clang9NamedDecl16isPlaceholderVarERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(48) %.1.i.i.i, ptr noundef nonnull align 8 dereferenceable(1136) %i.an) #26 ; 2 uses
  %.not.i.i = icmp eq ptr %.01562.i.i, null
  br i1 %.not.i.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.ao, label %bb.k, label %_ZN5clang4Sema27tryLookupCtorInitMemberDeclEPNS_13CXXRecordDeclERNS_12CXXScopeSpecENS_9OpaquePtrINS_8QualTypeEEEPNS_14IdentifierInfoE.exit.thread316

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i222 = load i64, ptr %i.ap, align 8 ; 3 uses
  %i.aq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i222, 4
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i222 to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.at = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i222, -5
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1249
  br label %_ZN5clang4Decl14getDeclContextEv.exit.i.i

_ZN5clang4Decl14getDeclContextEv.exit.i.i:        ; preds = %bb.m, %bb.l
  %.0.i.i.i223 = phi ptr [ %i.as, %bb.l ], [ %i.av, %bb.m ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.01562.i.i, i64 16
  %.0.copyload.i.i.i.i.i.i.i25.i.i = load i64, ptr %i.aw, align 8 ; 3 uses
  %i.ax = and i64 %.0.copyload.i.i.i.i.i.i.i25.i.i, 4
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN5clang4Decl14getDeclContextEv.exit.i.i
  %i.az = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i25.i.i to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit27.i.i

bb.o:                                             ; preds = %_ZN5clang4Decl14getDeclContextEv.exit.i.i
  %i.ba = and i64 %.0.copyload.i.i.i.i.i.i.i25.i.i, -5
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1249
  br label %_ZN5clang4Decl14getDeclContextEv.exit27.i.i

_ZN5clang4Decl14getDeclContextEv.exit27.i.i:      ; preds = %bb.o, %bb.n
  %.0.i26.i.i = phi ptr [ %i.az, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = icmp eq ptr %.0.i.i.i223, %.0.i26.i.i
  br i1 %i.bd, label %.critedge209, label %_ZN5clang4Sema27tryLookupCtorInitMemberDeclEPNS_13CXXRecordDeclERNS_12CXXScopeSpecENS_9OpaquePtrINS_8QualTypeEEEPNS_14IdentifierInfoE.exit.thread316

bb.p:                                             ; preds = %bb.i
  br i1 %i.ao, label %bb.q, label %_ZN5clang4Sema27tryLookupCtorInitMemberDeclEPNS_13CXXRecordDeclERNS_12CXXScopeSpecENS_9OpaquePtrINS_8QualTypeEEEPNS_14IdentifierInfoE.exit.thread316

bb.q:                                             ; preds = %bb.p, %_ZNK5clang12DeclListNode8iteratordeEv.exit.i.i
  %.3.ph.i.i = phi ptr [ %.1.i.i.i, %bb.p ], [ %.01562.i.i, %_ZNK5clang12DeclListNode8iteratordeEv.exit.i.i ] ; 3 uses
  br i1 %.not.not.i.i.i, label %_ZN5clang4Sema27tryLookupCtorInitMemberDeclEPNS_13CXXRecordDeclERNS_12CXXScopeSpecENS_9OpaquePtrINS_8QualTypeEEEPNS_14IdentifierInfoE.exit, label %_ZN5clang12DeclListNode8iteratorppEv.exit.i.i

_ZN5clang12DeclListNode8iteratorppEv.exit.i.i:    ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %.not58.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not58.i.i, label %_ZN5clang4Sema27tryLookupCtorInitMemberDeclEPNS_13CXXRecordDeclERNS_12CXXScopeSpecENS_9OpaquePtrINS_8QualTypeEEEPNS_14IdentifierInfoE.exit, label %bb.g

_ZN5clang4Sema27tryLookupCtorInitMemberDeclEPNS_13CXXRecordDeclERNS_12CXXScopeSpecENS_9OpaquePtrINS_8QualTypeEEEPNS_14IdentifierInfoE.exit: ; preds = %bb.q, %_ZN5clang12DeclListNode8iteratorppEv.exit.i.i
  %.not192 = icmp eq ptr %.3.ph.i.i, null
  br i1 %.not192, label %.critedge209, label %_ZN5clang4Sema27tryLookupCtorInitMemberDeclEPNS_13CXXRecordDeclERNS_12CXXScopeSpecENS_9OpaquePtrINS_8QualTypeEEEPNS_14IdentifierInfoE.exit.thread316

_ZN5clang4Sema27tryLookupCtorInitMemberDeclEPNS_13CXXRecordDeclERNS_12CXXScopeSpecENS_9OpaquePtrINS_8QualTypeEEEPNS_14IdentifierInfoE.exit.thread316: ; preds = %bb.p, %bb.j, %_ZN5clang4Decl14getDeclContextEv.exit27.i.i, %_ZN5clang4Sema27tryLookupCtorInitMemberDeclEPNS_13CXXRecordDeclERNS_12CXXScopeSpecENS_9OpaquePtrINS_8QualTypeEEEPNS_14IdentifierInfoE.exit
  %.0.i319 = phi ptr [ %.3.ph.i.i, %_ZN5clang4Sema27tryLookupCtorInitMemberDeclEPNS_13CXXRecordDeclERNS_12CXXScopeSpecENS_9OpaquePtrINS_8QualTypeEEEPNS_14IdentifierInfoE.exit ], [ %.01562.i.i, %bb.j ], [ %.01562.i.i, %_ZN5clang4Decl14getDeclContextEv.exit27.i.i ], [ %.1.i.i.i, %bb.p ]
  %.not352 = icmp eq i32 %9, 0
  br i1 %.not352, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN5clang4Sema27tryLookupCtorInitMemberDeclEPNS_13CXXRecordDeclERNS_12CXXScopeSpecENS_9OpaquePtrINS_8QualTypeEEEPNS_14IdentifierInfoE.exit.thread316
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i32 %9, i32 noundef 4893) #26
  %i.bh = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_14IdentifierInfoEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.bi = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #27
  %.sroa.3307.0.extract.shift = lshr i64 %i.bi, 32
  %.sroa.3307.0.extract.trunc = trunc nuw i64 %.sroa.3307.0.extract.shift to i32
  store i32 %7, ptr %11, align 4, !tbaa !116
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %.sroa.3307.0.extract.trunc, ptr %i.bj, align 4, !tbaa !116
  %i.bk = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bh, ptr noundef nonnull align 4 dereferenceable(8) %11) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN5clang4Sema27tryLookupCtorInitMemberDeclEPNS_13CXXRecordDeclERNS_12CXXScopeSpecENS_9OpaquePtrINS_8QualTypeEEEPNS_14IdentifierInfoE.exit.thread316
  %i.bl = call i64 @_ZN5clang4Sema22BuildMemberInitializerEPNS_9ValueDeclEPNS_4ExprENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %.0.i319, ptr noundef nonnull %8, i32 %7)
  br label %bb.bj

.critedge209:                                     ; preds = %_ZN5clang4Decl14getDeclContextEv.exit27.i.i, %_ZN5clang13CXXMethodDecl9getParentEv.exit, %_ZN5clang4Sema27tryLookupCtorInitMemberDeclEPNS_13CXXRecordDeclERNS_12CXXScopeSpecENS_9OpaquePtrINS_8QualTypeEEEPNS_14IdentifierInfoE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store ptr null, ptr %i.c, align 8, !tbaa !1571
  br i1 %i.ab, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.critedge209
  %i.bm = call i64 @_ZN5clang4Sema17GetTypeFromParserENS_9OpaquePtrINS_8QualTypeEEEPPNS_14TypeSourceInfoE(ptr nonnull %5, ptr noundef nonnull %i.c) #26 ; 2 uses
  %i.bn = icmp ult i64 %i.bm, 16
  br i1 %i.bn, label %bb.bi, label %._crit_edge

._crit_edge:                                      ; preds = %bb.t
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1571
  br label %bb.bg

bb.u:                                             ; preds = %.critedge209.thread, %.critedge209
  %i.bo = load i64, ptr %6, align 8
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = lshr i32 %i.bp, 12
  %i.br = and i32 %i.bq, 127
  switch i32 %i.br, label %bb.y [
    i32 33, label %bb.v
    i32 51, label %bb.w
    i32 55, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !92
  %i.bu = call i64 @_ZN5clang4Sema17BuildDecltypeTypeEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.bt, i1 noundef zeroext true) #26
  br label %.thread

bb.w:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 192
  %.sroa.0.0.copyload.i224 = load i32, ptr %i.bw, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.bv, i32 %.sroa.0.0.copyload.i224, i32 noundef 3623) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %12) #26
  br label %bb.bi

bb.x:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1627
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2494
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 160
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.cc, align 8, !tbaa !116
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 204
  %.sroa.0.0.copyload.i225 = load i32, ptr %i.cd, align 4, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.ce = call i64 @_ZN5clang4Sema21BuildPackIndexingTypeENS_8QualTypeEPNS_4ExprENS_14SourceLocationES4_bN4llvm8ArrayRefIS1_EE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %i.bz, ptr noundef %i.cb, i32 %.sroa.0.0.copyload.i.i, i32 %.sroa.0.0.copyload.i225, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %13) #26
  br label %.thread

bb.y:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !1355
  %i.cg = ptrtoint ptr %i.cf to i64
end_hunk_0
begin_hunk_1_@_ZN5clang4Sema19BuildMemInitializerEPNS_4DeclEPNS_5ScopeERNS_12CXXScopeSpecEPNS_14IdentifierInfoENS_9OpaquePtrINS_8QualTypeEEERKNS_8DeclSpecENS_14SourceLocationEPNS_4ExprESF_:bb.a
  %.not353 = icmp eq i64 %.sroa.0.0.copyload.i.i.i226, 0
  br i1 %.not353, label %bb.ai, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cn = call noundef zeroext i1 @_ZN5clang4Sema25isDependentScopeSpecifierERKNS_12CXXScopeSpecE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #26
  br i1 %i.cn, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.co = call noundef ptr @_ZN5clang4Sema18computeDeclContextERKNS_12CXXScopeSpecEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false) #26 ; 3 uses
  %.not.i.i227 = icmp eq ptr %i.co, null
  br i1 %.not.i.i227, label %.critedge211, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i16, ptr %i.cp, align 8
  %i.cr = and i16 %i.cq, 127
  %i.cs = add nsw i16 %i.cr, -60
  %i.ct = icmp ult i16 %i.cs, 3
  br i1 %i.ct, label %_ZN4llvm16dyn_cast_or_nullIN5clang13CXXRecordDeclENS1_11DeclContextEEEDaPT0_.exit, label %.critedge211

_ZN4llvm16dyn_cast_or_nullIN5clang13CXXRecordDeclENS1_11DeclContextEEEDaPT0_.exit: ; preds = %bb.ad
  %i.cu = getelementptr inbounds i8, ptr %i.co, i64 -64
  %i.cv = call noundef zeroext i1 @_ZNK5clang13CXXRecordDecl20hasAnyDependentBasesEv(ptr noundef nonnull align 8 dereferenceable(144) %i.cu) #26
  br i1 %i.cv, label %.critedge211, label %bb.ai

.critedge211:                                     ; preds = %bb.ac, %bb.ad, %_ZN4llvm16dyn_cast_or_nullIN5clang13CXXRecordDeclENS1_11DeclContextEEEDaPT0_.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !790, !nonnull !107, !align !791
  %i.cy = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(23904) %i.cx) #26 ; 2 uses
  %i.cz = extractvalue { i64, ptr } %i.cy, 0
  %i.da = extractvalue { i64, ptr } %i.cy, 1
  %i.db = load ptr, ptr %i.b, align 8, !tbaa !1355
  %i.dc = call i64 @_ZN5clang4Sema17CheckTypenameTypeENS_21ElaboratedTypeKeywordENS_14SourceLocationENS_22NestedNameSpecifierLocERKNS_14IdentifierInfoES2_b(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef 6, i32 0, i64 %i.cz, ptr %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i32 %7, i1 noundef zeroext true) #26 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  br i1 %i.dd, label %.critedge221, label %bb.ae

bb.ae:                                            ; preds = %.critedge211
  %i.de = load ptr, ptr %i.cw, align 8, !tbaa !790, !nonnull !107, !align !791
  %i.df = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.de, i64 %i.dc, i32 noundef 0) #26 ; 6 uses
  store ptr %i.df, ptr %i.c, align 8, !tbaa !1571
  %.sroa.0.0.copyload.i229 = load i64, ptr %i.df, align 8, !tbaa !92
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i229, 0
  br i1 %.not.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  store i32 %7, ptr %i.dh, align 8, !tbaa !116
  store i32 0, ptr %i.dg, align 8, !tbaa !116
  %i.di = load ptr, ptr %i.cw, align 8, !tbaa !790, !nonnull !107, !align !791
  %i.dj = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(23904) %i.di) #26
  %i.dk = extractvalue { i64, ptr } %i.dj, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !1629
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  store i32 0, ptr %14, align 8, !tbaa !1334
  %i.dm = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.dm, align 8, !tbaa !101
  %i.dn = getelementptr inbounds nuw i8, ptr %14, i64 88 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1342 ; 2 uses
  %.not.i233 = icmp eq ptr %i.do, null
  br i1 %.not.i233, label %_ZN5clang12LookupResult5clearEv.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.do) #26
  br label %_ZN5clang12LookupResult5clearEv.exit

_ZN5clang12LookupResult5clearEv.exit:             ; preds = %bb.ag, %bb.ah
  %i.dp = getelementptr inbounds nuw i8, ptr %14, i64 166
  store i8 0, ptr %i.dp, align 2, !tbaa !1343
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i8 0, i64 16, i1 false)
  %i.dq = load ptr, ptr %i.b, align 8, !tbaa !1355
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %14, i64 120
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !1284
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN5clang12LookupResult5clearEv.exit, %_ZN4llvm16dyn_cast_or_nullIN5clang13CXXRecordDeclENS1_11DeclContextEEEDaPT0_.exit, %bb.ab, %bb.aa
  %i.dt = phi ptr [ %i.df, %_ZN5clang12LookupResult5clearEv.exit ], [ null, %_ZN4llvm16dyn_cast_or_nullIN5clang13CXXRecordDeclENS1_11DeclContextEEEDaPT0_.exit ], [ null, %bb.ab ], [ null, %bb.aa ]
  %.sroa.0297.0 = phi i64 [ %i.dc, %_ZN5clang12LookupResult5clearEv.exit ], [ 0, %_ZN4llvm16dyn_cast_or_nullIN5clang13CXXRecordDeclENS1_11DeclContextEEEDaPT0_.exit ], [ 0, %bb.ab ], [ 0, %bb.aa ] ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !1172, !nonnull !107, !align !791
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = and i64 %i.dw, 65568
  %or.cond350 = icmp eq i64 %i.dx, 32
  br i1 %or.cond350, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.dy = call noundef ptr @_ZNK5clang12LookupResult11getAsSingleINS_17ClassTemplateDeclEEEPT_v(ptr noundef nonnull align 8 dereferenceable(168) %14) ; 2 uses
  %.not197 = icmp eq ptr %i.dy, null
  br i1 %.not197, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !790, !nonnull !107, !align !791
  %i.eb = call i64 @_ZNK5clang17ClassTemplateDecl38getCanonicalInjectedSpecializationTypeERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(88) %i.dy, ptr noundef nonnull align 8 dereferenceable(23904) %i.ea) #26
  %i.ec = and i64 %i.eb, -16
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = load ptr, ptr %i.ed, align 16, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %.sroa.0.0.copyload.i235 = load i64, ptr %i.ef, align 16
  store i64 %.sroa.0.0.copyload.i235, ptr %15, align 8
  %i.eg = call { ptr, ptr } @_ZN5clang13CXXRecordDecl5basesEv(ptr noundef nonnull align 8 dereferenceable(144) %i.x) ; 2 uses
  %i.eh = extractvalue { ptr, ptr } %i.eg, 0      ; 2 uses
  %i.ei = extractvalue { ptr, ptr } %i.eg, 1      ; 2 uses
  %.not198362 = icmp eq ptr %i.eh, %i.ei
  br i1 %.not198362, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ak, %bb.am
  %.0176363 = phi ptr [ %i.ew, %bb.am ], [ %i.eh, %bb.ak ] ; 3 uses
  %i.ej = call i64 @_ZNK5clang16CXXBaseSpecifier7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %.0176363)
  %i.ek = and i64 %i.ej, -16
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = load ptr, ptr %i.el, align 16, !tbaa !98
  %i.en = call noundef ptr @_ZNK5clang4Type5getAsINS_26TemplateSpecializationTypeEEEPKT_v(ptr noundef nonnull align 16 dereferenceable(24) %i.em) #26 ; 2 uses
  %.not199 = icmp eq ptr %i.en, null
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  br i1 %.not199, label %.critedge, label %bb.al

bb.al:                                            ; preds = %.lr.ph
  %i.eo = load ptr, ptr %i.dz, align 8, !tbaa !790, !nonnull !107, !align !791
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %.sroa.0.0.copyload.i236 = load i64, ptr %i.ep, align 16
  store i64 %.sroa.0.0.copyload.i236, ptr %16, align 8
  %i.eq = call noundef zeroext i1 @_ZNK5clang10ASTContext19hasSameTemplateNameERKNS_12TemplateNameES3_b(ptr noundef nonnull align 8 dereferenceable(23904) %i.eo, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, i1 noundef zeroext true) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br i1 %i.eq, label %.critedge215, label %bb.am

.critedge215:                                     ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.er, i32 %7, i32 noundef 5856) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.es = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #27
  %.sroa.3281.0.extract.shift = lshr i64 %i.es, 32
  %.sroa.3281.0.extract.trunc = trunc nuw i64 %.sroa.3281.0.extract.shift to i32
  store i32 %7, ptr %18, align 4, !tbaa !116
  %i.et = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 %.sroa.3281.0.extract.trunc, ptr %i.et, align 4, !tbaa !116
  %i.eu = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %17, ptr noundef nonnull align 4 dereferenceable(8) %18) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.ev = call i64 @_ZNK5clang16CXXBaseSpecifier7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %.0176363)
  br label %.loopexit

.critedge:                                        ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.am

bb.am:                                            ; preds = %.critedge, %bb.al
  %i.ew = getelementptr inbounds nuw i8, ptr %.0176363, i64 24 ; 2 uses
  %.not198 = icmp eq ptr %i.ew, %i.ei
  br i1 %.not198, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.am, %bb.ak, %.critedge215
  %.sroa.0297.1 = phi i64 [ %i.ev, %.critedge215 ], [ %.sroa.0297.0, %bb.ak ], [ %.sroa.0297.0, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.aj, %.loopexit, %bb.ai
  %.sroa.0297.2 = phi i64 [ %.sroa.0297.0, %bb.ai ], [ %.sroa.0297.0, %bb.aj ], [ %.sroa.0297.1, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.ex = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %19, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %19, i8 0, i64 16, i1 false)
  store ptr %i.ey, ptr %i.ex, align 8, !tbaa !100
  %i.ez = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i32 0, ptr %i.ez, align 8, !tbaa !101
  %i.fa = getelementptr inbounds nuw i8, ptr %19, i64 28
  store i32 1, ptr %i.fa, align 4, !tbaa !112
  %i.fb = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.fc = getelementptr inbounds nuw i8, ptr %19, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(22) %i.fb, i8 0, i64 22, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.fd = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %20, i64 13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.fd, i8 1, i64 5, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.fe, i8 0, i64 19, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_126MemInitializerValidatorCCCE, i64 16), ptr %20, align 8, !tbaa !1195
  %i.ff = getelementptr inbounds nuw i8, ptr %20, i64 32
  store ptr %i.y, ptr %i.ff, align 8, !tbaa !1632
  %i.fg = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !101
  %.not.i.i.i = icmp eq i32 %i.fh, 0
  %i.fi = icmp ult i64 %.sroa.0297.2, 16          ; 2 uses
  br i1 %.not.i.i.i, label %bb.ao, label %bb.av

bb.ao:                                            ; preds = %bb.an
  br i1 %i.fi, label %.critedge217, label %.thread348

.critedge217:                                     ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.fj = getelementptr inbounds nuw i8, ptr %14, i64 120
  %i.fk = getelementptr inbounds nuw i8, ptr %14, i64 152
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !1633
  call void @_ZN5clang4Sema11CorrectTypoERKNS_19DeclarationNameInfoENS0_14LookupNameKindEPNS_5ScopeEPNS_12CXXScopeSpecERNS_27CorrectionCandidateCallbackENS_15CorrectTypoKindEPNS_11DeclContextEbPKNS_21ObjCObjectPointerTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.clang::TypoCorrection") align 8 %21, ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.fj, i32 noundef %i.fl, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(32) %20, i32 noundef 1, ptr noundef %.0.i.i.i, i1 noundef zeroext false, ptr noundef null, i1 noundef zeroext true) #26
  %i.fm = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN5clang14TypoCorrectionaSEOS0_(ptr noundef nonnull align 8 dereferenceable(88) %19, ptr noundef nonnull align 8 dereferenceable(88) %21)
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !1477
  %.not354 = icmp eq i64 %i.fn, 0
  call void @_ZN5clang14TypoCorrectionD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br i1 %.not354, label %.thread341, label %bb.ap

bb.ap:                                            ; preds = %.critedge217
  %i.fo = call noundef ptr @_ZNK5clang14TypoCorrection19getCorrectionDeclAsINS_9FieldDeclEEEPT_v(ptr noundef nonnull align 8 dereferenceable(88) %19) ; 2 uses
  %.not200 = icmp eq ptr %i.fo, null
  br i1 %.not200, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase5PDiagEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::PartialDiagnostic") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %i.fp, i32 noundef 4228) #26
  %i.fq = load ptr, ptr %i.b, align 8, !tbaa !1355
  %i.fr = load ptr, ptr %22, align 8, !tbaa !1181 ; 2 uses
  %.not.i.i.i239 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i239, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %bb.au

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %bb.aq
  %i.fs = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !1182
  %i.fu = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ft) ; 2 uses
  store ptr %i.fu, ptr %22, align 8, !tbaa !1181
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  %i.fv = call noundef ptr @_ZNK5clang14TypoCorrection19getCorrectionDeclAsINS_8TypeDeclEEEPT_v(ptr noundef nonnull align 8 dereferenceable(88) %19) ; 3 uses
  %.not201 = icmp eq ptr %i.fv, null
  br i1 %.not201, label %.thread341, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !790, !nonnull !107, !align !791
  %i.fy = call i64 @_ZNK5clang10ASTContext15getTypeDeclTypeEPKNS_8TypeDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.fx, ptr noundef nonnull %i.fv) #26
  %i.fz = call fastcc noundef zeroext i1 @_ZL19FindBaseInitializerRN5clang4SemaEPNS_13CXXRecordDeclENS_8QualTypeERPKNS_16CXXBaseSpecifierES8_(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.x, i64 %i.fy, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br i1 %i.fz, label %bb.at, label %.thread336

.thread336:                                       ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %.thread341

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @_ZN5clang8SemaBase5PDiagEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::PartialDiagnostic") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %i.ga, i32 noundef 4228) #26
  %i.gb = load ptr, ptr %i.b, align 8, !tbaa !1355
  %i.gc = load ptr, ptr %23, align 8, !tbaa !1181 ; 2 uses
  %.not.i.i.i242 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i242, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i243, label %bb.aw

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i243: ; preds = %bb.at
  %i.gd = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !1182
  %i.gf = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ge) ; 2 uses
  store ptr %i.gf, ptr %23, align 8, !tbaa !1181
  br label %bb.aw

bb.au:                                            ; preds = %bb.aq, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.gg = phi ptr [ %i.fu, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.fr, %bb.aq ] ; 2 uses
  %i.gh = ptrtoint ptr %i.fq to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  %i.gj = load i8, ptr %i.gg, align 8, !tbaa !1309
  %i.gk = zext i8 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gk
  store i8 5, ptr %i.gl, align 1, !tbaa !92
  %i.gm = load ptr, ptr %22, align 8, !tbaa !1181 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = load i8, ptr %i.gm, align 8, !tbaa !1309 ; 2 uses
  %i.gp = add i8 %i.go, 1                         ; 2 uses
  store i8 %i.gp, ptr %i.gm, align 8, !tbaa !1309
  %i.gq = zext i8 %i.go to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gq
  store i64 %i.gh, ptr %i.gr, align 8, !tbaa !1284
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %i.gt = zext i8 %i.gp to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gt
  store i8 2, ptr %i.gu, align 1, !tbaa !92
  %i.gv = load ptr, ptr %22, align 8, !tbaa !1181 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load i8, ptr %i.gv, align 8, !tbaa !1309 ; 2 uses
  %i.gy = add i8 %i.gx, 1
  store i8 %i.gy, ptr %i.gv, align 8, !tbaa !1309
  %i.gz = zext i8 %i.gx to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gz
  store i64 1, ptr %i.ha, align 8, !tbaa !1284
  call void @_ZN5clang4Sema12diagnoseTypoERKNS_14TypoCorrectionERKNS_17PartialDiagnosticEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(88) %19, ptr noundef nonnull align 8 dereferenceable(20) %22, i1 noundef zeroext true) #26
  call void @_ZN5clang19StreamingDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.hb = call i64 @_ZN5clang4Sema22BuildMemberInitializerEPNS_9ValueDeclEPNS_4ExprENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.fo, ptr noundef nonnull %8, i32 %7)
  br label %.critedge219

bb.av:                                            ; preds = %bb.an
  br i1 %i.fi, label %.thread341, label %.thread348

.thread341:                                       ; preds = %bb.ar, %.thread336, %.critedge217, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %28, ptr noundef nonnull align 8 dereferenceable(8) %i.hc, i32 %7, i32 noundef 4227) #26
  %i.hd = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_14IdentifierInfoEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  %i.he = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #27
  %.sroa.3278.0.extract.shift = lshr i64 %i.he, 32
  %.sroa.3278.0.extract.trunc = trunc nuw i64 %.sroa.3278.0.extract.shift to i32
  store i32 %7, ptr %29, align 4, !tbaa !116
  %i.hf = getelementptr inbounds nuw i8, ptr %29, i64 4
  store i32 %.sroa.3278.0.extract.trunc, ptr %i.hf, align 4, !tbaa !116
  %i.hg = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.hd, ptr noundef nonnull align 4 dereferenceable(8) %29) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %28) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  br label %.critedge219

.thread348:                                       ; preds = %bb.av, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @_ZN5clang14TypoCorrectionD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.bf

bb.aw:                                            ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i243, %bb.at
  %i.hh = phi ptr [ %i.gf, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i243 ], [ %i.gc, %bb.at ] ; 2 uses
  %i.hi = ptrtoint ptr %i.gb to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 1
  %i.hk = load i8, ptr %i.hh, align 8, !tbaa !1309
  %i.hl = zext i8 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hl
  store i8 5, ptr %i.hm, align 1, !tbaa !92
  %i.hn = load ptr, ptr %23, align 8, !tbaa !1181 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load i8, ptr %i.hn, align 8, !tbaa !1309 ; 2 uses
  %i.hq = add i8 %i.hp, 1                         ; 2 uses
  store i8 %i.hq, ptr %i.hn, align 8, !tbaa !1309
  %i.hr = zext i8 %i.hp to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hr
  store i64 %i.hi, ptr %i.hs, align 8, !tbaa !1284
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  %i.hu = zext i8 %i.hq to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hu
  store i8 2, ptr %i.hv, align 1, !tbaa !92
  %i.hw = load ptr, ptr %23, align 8, !tbaa !1181 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load i8, ptr %i.hw, align 8, !tbaa !1309 ; 2 uses
  %i.hz = add i8 %i.hy, 1
  store i8 %i.hz, ptr %i.hw, align 8, !tbaa !1309
  %i.ia = zext i8 %i.hy to i64
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.ia
  store i64 0, ptr %i.ib, align 8, !tbaa !1284
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  call void @_ZN5clang8SemaBase5PDiagEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::PartialDiagnostic") align 8 %24, ptr noundef nonnull align 8 dereferenceable(8) %i.ga, i32 noundef 0) #26
  call void @_ZN5clang4Sema12diagnoseTypoERKNS_14TypoCorrectionERKNS_17PartialDiagnosticES6_b(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(88) %19, ptr noundef nonnull align 8 dereferenceable(20) %23, ptr noundef nonnull align 8 dereferenceable(20) %24, i1 noundef zeroext true) #26
  call void @_ZN5clang19StreamingDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @_ZN5clang19StreamingDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.ic = load ptr, ptr %i.d, align 8, !tbaa !1582 ; 2 uses
  %.not202 = icmp eq ptr %i.ic, null
  %i.id = load ptr, ptr %i.e, align 8
  %i.ie = select i1 %.not202, ptr %i.id, ptr %i.ic ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  %.sroa.0.0.copyload.i.i248 = load i32, ptr %i.ie, align 4, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %25, ptr noundef nonnull align 8 dereferenceable(8) %i.ga, i32 %.sroa.0.0.copyload.i.i248, i32 noundef 5957) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  %i.if = call i64 @_ZNK5clang16CXXBaseSpecifier7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ie)
  store i64 %i.if, ptr %26, align 8
  %i.ig = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_8QualTypeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %25, ptr noundef nonnull align 8 dereferenceable(8) %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  %.sroa.0.0.copyload.i249 = load i64, ptr %i.ie, align 8
  store i64 %.sroa.0.0.copyload.i249, ptr %27, align 8
  %i.ih = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ig, ptr noundef nonnull align 4 dereferenceable(8) %27) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @_ZN5clang14TypoCorrectionD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %.thread343

.thread343:                                       ; preds = %bb.y, %bb.aw
  %.5174346 = phi ptr [ %i.fv, %bb.aw ], [ %i.ci, %bb.y ] ; 7 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.5174346, i64 24
  %.sroa.0.0.copyload.i253 = load i32, ptr %i.ii, align 8, !tbaa !116
  call void @_ZN5clang4Sema21MarkAnyDeclReferencedENS_14SourceLocationEPNS_4DeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.0.0.copyload.i253, ptr noundef nonnull %.5174346, i1 noundef zeroext false) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  %i.ij = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 2 uses
  store ptr %i.ij, ptr %30, align 8, !tbaa !2496
  %i.ik = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  store i64 32, ptr %i.ik, align 8, !tbaa !2497
  %i.il = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 3 uses
  store i64 32, ptr %i.il, align 8, !tbaa !2498
  %i.im = getelementptr inbounds nuw i8, ptr %30, i64 56
  store i32 0, ptr %i.im, align 8, !tbaa !2499
  %i.in = getelementptr inbounds nuw i8, ptr %30, i64 60
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_125UninitializedFieldVisitor21VisitImplicitCastExprEPN5clang16ImplicitCastExprE:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2213
  tail call fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor11HandleValueEPN5clang4ExprEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %i.e, i1 noundef zeroext false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE9VisitStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK5clang8CallExpr15isCallToStdMoveEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #26
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load i32, ptr %1, align 8
  %i.d = lshr i32 %i.c, 19
  %i.e = and i32 %i.d, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  tail call fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor11HandleValueEPN5clang4ExprEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %i.h, i1 noundef zeroext false)
  br label %_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE13VisitCallExprEPNS_8CallExprE.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !2214, !nonnull !107, !align !791
  %i.j = tail call noundef zeroext i1 @_ZNK5clang8CallExpr24isUnevaluatedBuiltinCallERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.i) #26, !inline_history !3226
  br i1 %i.j, label %_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE13VisitCallExprEPNS_8CallExprE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE9VisitStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1), !inline_history !3226
  br label %_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE13VisitCallExprEPNS_8CallExprE.exit

_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE13VisitCallExprEPNS_8CallExprE.exit: ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor24VisitCXXOperatorCallExprEPN5clang19CXXOperatorCallExprE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1506 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, 511
  %i.e = icmp eq i16 %i.d, 24
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZNK5clang8CallExpr15isCallToStdMoveEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #26, !inline_history !2215
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %1, align 8
  %i.i = lshr i32 %i.h, 19
  %i.j = and i32 %i.i, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !115
  tail call fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor11HandleValueEPN5clang4ExprEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %i.m, i1 noundef zeroext false), !inline_history !2215
  br label %_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !2214, !nonnull !107, !align !791
  %i.o = tail call noundef zeroext i1 @_ZNK5clang8CallExpr24isUnevaluatedBuiltinCallERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.n) #26, !inline_history !53
  br i1 %i.o, label %_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE9VisitStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull %1), !inline_history !53
  br label %_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load i32, ptr %1, align 8
  %i.r = lshr i32 %i.q, 19
  %i.s = and i32 %i.r, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !2199 ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx = shl nuw nsw i64 %i.x, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %.not13 = icmp eq i32 %i.w, 0
  br i1 %.not13, label %_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.sroa.08.014 = phi ptr [ %i.ab, %.lr.ph ], [ %i.u, %bb.f ] ; 2 uses
  %i.z = load ptr, ptr %.sroa.08.014, align 8, !tbaa !1506
  %i.aa = tail call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #27
  tail call fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor11HandleValueEPN5clang4ExprEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %i.aa, i1 noundef zeroext false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.08.014, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.y
  br i1 %.not, label %_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit, label %.lr.ph

_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit: ; preds = %.lr.ph, %bb.f, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor22VisitCXXMemberCallExprEPN5clang17CXXMemberCallExprE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1506 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, 511
  %i.e = icmp eq i16 %i.d, 46
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor11HandleValueEPN5clang4ExprEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %i.b, i1 noundef zeroext false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i32, ptr %1, align 8
  %i.h = lshr i32 %i.g, 19
  %i.i = and i32 %i.h, 1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !2199 ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx = shl nuw nsw i64 %i.n, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.08.014 = phi ptr [ %i.q, %.lr.ph ], [ %i.k, %bb.b ] ; 2 uses
  %i.p = load ptr, ptr %.sroa.08.014, align 8, !tbaa !1506
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.014, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.o
  br i1 %.not, label %_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit, label %.lr.ph

bb.c:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_ZNK5clang8CallExpr15isCallToStdMoveEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #26, !inline_history !2215
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i32, ptr %1, align 8
  %i.u = lshr i32 %i.t, 19
  %i.v = and i32 %i.u, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !115
  tail call fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor11HandleValueEPN5clang4ExprEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %i.y, i1 noundef zeroext false), !inline_history !2215
  br label %_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit

bb.e:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %0, align 8, !tbaa !2214, !nonnull !107, !align !791
  %i.aa = tail call noundef zeroext i1 @_ZNK5clang8CallExpr24isUnevaluatedBuiltinCallERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.z) #26, !inline_history !53
  br i1 %i.aa, label %_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE9VisitStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull %1), !inline_history !53
  br label %_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit

_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit: ; preds = %.lr.ph, %bb.b, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE18VisitCXXTypeidExprEPNS_13CXXTypeidExprE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK5clang13CXXTypeidExpr22isPotentiallyEvaluatedEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #26
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.b, align 8
  %i.c = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.d = inttoptr i64 %i.c to ptr
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor21VisitCXXConstructExprEPN5clang16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !116
  %i.d = call noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl17isCopyConstructorERj(ptr noundef nonnull align 8 dereferenceable(176) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %1, align 8
  %i.f = and i16 %i.e, 511
  %.not.i.i.i = icmp eq i16 %i.f, 118
  %spec.select.v.i.i.i = select i1 %.not.i.i.i, i64 48, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115  ; 5 uses
  %i.i = load i16, ptr %i.h, align 8              ; 3 uses
  %i.j = and i16 %i.i, 511
  %.not = icmp eq i16 %i.j, 55
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1641
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !1640 ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = and i64 %i.q, 34359738360
  %i.s = icmp eq i64 %i.r, 8
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !1506 ; 2 uses
  %.pre = load i16, ptr %i.t, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.u = phi i16 [ %.pre, %bb.d ], [ %i.i, %bb.c ], [ %i.i, %bb.b ]
  %.0 = phi ptr [ %i.t, %bb.d ], [ %i.h, %bb.c ], [ %i.h, %bb.b ] ; 4 uses
  %i.v = and i16 %i.u, 511
  %.not19 = icmp eq i16 %i.v, 81
  br i1 %.not19, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %.0, align 8
  %i.x = and i32 %i.w, 66584576
  %i.y = icmp eq i32 %i.x, 2621440
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2213
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.1 = phi ptr [ %i.aa, %bb.g ], [ %.0, %bb.f ], [ %.0, %bb.e ]
  call fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor11HandleValueEPN5clang4ExprEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %.1, i1 noundef zeroext false)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE9VisitStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor19VisitBinaryOperatorEPN5clang14BinaryOperatorE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = and i32 %i.a, 33030144
  %i.c = icmp eq i32 %i.b, 11010048
  br i1 %i.c, label %bb.b, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1506 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8
  %i.g = and i16 %i.f, 511
  %.not = icmp eq i16 %i.g, 46
  br i1 %.not, label %bb.c, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2216 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 127
  %i.m = add nsw i32 %i.l, -53
  %i.n = icmp ult i32 %i.m, -3
  %.not1316 = icmp eq ptr %i.i, null
  %.not13 = or i1 %.not1316, %i.n
  br i1 %.not13, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.o, align 8, !tbaa !92
  %i.p = and i64 %.sroa.0.0.copyload.i, -16
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !98
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !92
  %i.t = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i8, ptr %i.w, align 16
  %i.y = and i8 %i.x, -2
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.y, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !101 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !112
  %.not.i = icmp ult i32 %i.ab, %i.ad
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !113

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull %i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = zext i32 %i.ab to i64
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !100
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  store ptr %i.i, ptr %i.ag, align 1
  %i.ah = load i32, ptr %i.aa, align 8, !tbaa !101
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.aa, align 8, !tbaa !101
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit: ; preds = %bb.g, %bb.f, %bb.b, %bb.d, %bb.c, %bb.a
  %i.aj = load i32, ptr %1, align 8
  %i.ak = lshr i32 %i.aj, 19
  %i.al = and i32 %i.ak, 62
  %i.am = add nsw i32 %i.al, -22
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1506
  tail call fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor11HandleValueEPN5clang4ExprEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %i.ap, i1 noundef zeroext false)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1506
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.ar)
  br label %bb.j

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE9VisitStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE9VisitStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::iterator_range.2468", align 8 ; 6 uses
  %3 = alloca %"struct.clang::StmtIterator", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN5clang4Stmt8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.2468") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !92     ; 2 uses
  %i.d = icmp ne ptr %i.c, %.sroa.0.0.copyload
  %i.e = load i64, ptr %i.b, align 8              ; 2 uses
  %i.f = icmp ne i64 %i.e, %.sroa.4.0.copyload
  %.not3.i6 = select i1 %i.d, i1 true, i1 %i.f
  br i1 %.not3.i6, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit
  %i.g = phi i64 [ %i.u, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ %i.e, %bb.a ]
  %i.h = phi ptr [ %i.s, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ %i.c, %bb.a ]
  %i.i = and i64 %i.g, 3
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5clang16StmtIteratorBase11GetDeclExprEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #26
  br label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit

_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit: ; preds = %.lr.ph, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ %i.h, %.lr.ph ]
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1506 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit
  call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.m)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit
  %i.n = load i64, ptr %i.b, align 8, !tbaa !1508 ; 2 uses
  %i.o = and i64 %i.n, 3
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_2
