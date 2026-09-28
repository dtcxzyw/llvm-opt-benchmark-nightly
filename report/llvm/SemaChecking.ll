Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaChecking?download=true
inline.NumInlined: 16706
inline.NumDeleted: 6578
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN5clang4Sema19CheckInfNaNFunctionEPKNS_8CallExprEPKNS_12FunctionDeclE:bb.a
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gg, align 8 ; 3 uses
  %i.gh = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gj = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i

bb.w:                                             ; preds = %bb.u
  %i.gk = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -5
  %i.gl = inttoptr i64 %i.gk to ptr
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !1507
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i

_ZNK5clang13CXXMethodDecl9getParentEv.exit.i:     ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i = phi ptr [ %i.gj, %bb.v ], [ %i.gm, %bb.w ] ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %.0.i.i.i.i.i, i64 -24
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !1256 ; 2 uses
  %i.gp = and i64 %i.go, 7
  %i.gq = icmp ne i64 %i.gp, 0
  %i.gr = and i64 %i.go, -8                       ; 2 uses
  %.not2.i22.i = icmp eq i64 %i.gr, 0
  %.not.i23.i = or i1 %i.gq, %.not2.i22.i
  br i1 %.not.i23.i, label %_ZL18IsInfinityFunctionPKN5clang12FunctionDeclE.exit.thread, label %_ZNK5clang9NamedDecl7getNameEv.exit28.i

_ZNK5clang9NamedDecl7getNameEv.exit28.i:          ; preds = %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i
  %i.gs = inttoptr i64 %i.gr to ptr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !1327 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !1329
  %i.gw = and i64 %i.gv, 4294967295
  %i.gx = icmp eq i64 %i.gw, 14
  br i1 %i.gx, label %_ZN4llvmneENS_9StringRefES0_.exit33.i, label %_ZL18IsInfinityFunctionPKN5clang12FunctionDeclE.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit33.i:            ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit28.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 1
  %i.ha = xor i64 %i.gz, 6873453396346369390
  %i.hb = getelementptr i8, ptr %i.gy, i64 6
  %i.hc = load i64, ptr %i.hb, align 1
  %i.hd = xor i64 %i.hc, 8319390330301210467
  %i.he = or i64 %i.ha, %i.hd
  %i.hf = icmp ne i64 %i.he, 0
  %i.hg = zext i1 %i.hf to i32
  %.not53.i = icmp eq i32 %i.hg, 0
  br i1 %.not53.i, label %_ZN4llvmneENS_9StringRefES0_.exit33.thread42.i, label %_ZL18IsInfinityFunctionPKN5clang12FunctionDeclE.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit33.thread42.i:   ; preds = %_ZN4llvmneENS_9StringRefES0_.exit33.i
  %i.hh = getelementptr inbounds i8, ptr %.0.i.i.i.i.i, i64 -48
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hh, align 8 ; 3 uses
  %i.hi = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.hj = icmp eq i64 %i.hi, 0
  br i1 %i.hj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4llvmneENS_9StringRefES0_.exit33.thread42.i
  %i.hk = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang4Decl14getDeclContextEv.exit.i

bb.y:                                             ; preds = %_ZN4llvmneENS_9StringRefES0_.exit33.thread42.i
  %i.hl = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.hm = inttoptr i64 %i.hl to ptr
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !1507
  br label %_ZNK5clang4Decl14getDeclContextEv.exit.i

_ZNK5clang4Decl14getDeclContextEv.exit.i:         ; preds = %bb.y, %bb.x
  %.0.i.i34.i = phi ptr [ %i.hk, %bb.x ], [ %i.hn, %bb.y ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i.i34.i, i64 8
  %i.hp = load i16, ptr %i.ho, align 8
  %i.hq = and i16 %i.hp, 127
  %.not54.i = icmp eq i16 %i.hq, 78
  br i1 %.not54.i, label %_ZL18IsInfinityFunctionPKN5clang12FunctionDeclE.exit, label %_ZL18IsInfinityFunctionPKN5clang12FunctionDeclE.exit.thread

_ZL18IsInfinityFunctionPKN5clang12FunctionDeclE.exit: ; preds = %_ZNK5clang4Decl14getDeclContextEv.exit.i
  %i.hr = tail call noundef zeroext i1 @_ZNK5clang11DeclContext14isStdNamespaceEv(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i34.i) #31
  br i1 %i.hr, label %bb.aa, label %_ZL18IsInfinityFunctionPKN5clang12FunctionDeclE.exit.thread

_ZL18IsInfinityFunctionPKN5clang12FunctionDeclE.exit.thread: ; preds = %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i, %_ZL13IsStdFunctionILm9EEbPKN5clang12FunctionDeclERAT__Kc.exit.thread, %_ZNK5clang9NamedDecl7getNameEv.exit28.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread39.i, %_ZNK5clang9NamedDecl7getNameEv.exit.i, %_ZN4llvmneENS_9StringRefES0_.exit33.i, %_ZN4llvmneENS_9StringRefES0_.exit.i, %_ZNK5clang4Decl14getDeclContextEv.exit.i, %_ZL18IsInfinityFunctionPKN5clang12FunctionDeclE.exit
  %i.hs = load i64, ptr %i.e, align 8, !tbaa !1256 ; 2 uses
  %i.ht = and i64 %i.hs, 7
  %i.hu = icmp ne i64 %i.ht, 0
  %i.hv = and i64 %i.hs, -8                       ; 2 uses
  %.not2.i41 = icmp eq i64 %i.hv, 0
  %.not.i42 = or i1 %i.hu, %.not2.i41
  br i1 %.not.i42, label %_ZNK5clang9NamedDecl7getNameEv.exit47, label %bb.z

bb.z:                                             ; preds = %_ZL18IsInfinityFunctionPKN5clang12FunctionDeclE.exit.thread
  %i.hw = inttoptr i64 %i.hv to ptr
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !1327 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !1329
  %i.ib = and i64 %i.ia, 4294967295
  br label %_ZNK5clang9NamedDecl7getNameEv.exit47

_ZNK5clang9NamedDecl7getNameEv.exit47:            ; preds = %_ZL18IsInfinityFunctionPKN5clang12FunctionDeclE.exit.thread, %bb.z
  %.sroa.3.0.i43 = phi i64 [ %i.ib, %bb.z ], [ 0, %_ZL18IsInfinityFunctionPKN5clang12FunctionDeclE.exit.thread ]
  %.sroa.0.0.i44 = phi ptr [ %i.hz, %bb.z ], [ @.str.101, %_ZL18IsInfinityFunctionPKN5clang12FunctionDeclE.exit.thread ]
  %i.ic = tail call fastcc noundef zeroext i1 @"_ZZL18IsInfOrNanFunctionN4llvm9StringRefE9MathCheckENK3$_0clESt16initializer_listIS0_E"(ptr nonnull readonly %.sroa.0.0.i44, i64 %.sroa.3.0.i43, ptr @constinit.177)
  br i1 %i.ic, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit47, %_ZL18IsInfinityFunctionPKN5clang12FunctionDeclE.exit, %_ZL13IsStdFunctionILm9EEbPKN5clang12FunctionDeclERAT__Kc.exit, %_ZL13IsStdFunctionILm6EEbPKN5clang12FunctionDeclERAT__Kc.exit34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ie = load i32, ptr %1, align 8               ; 4 uses
  %i.if = and i32 %i.ie, 16777216
  %.not.i48 = icmp eq i32 %i.if, 0
  br i1 %.not.i48, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !1103
  br label %_ZNK5clang8CallExpr11getBeginLocEv.exit54

bb.ac:                                            ; preds = %bb.aa
  %i.ii = and i32 %i.ie, 8388608
  %.not5.i50 = icmp eq i32 %i.ii, 0
  br i1 %.not5.i50, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ik = lshr i32 %i.ie, 19
  %i.il = and i32 %i.ik, 1
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.im
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !1154
  %i.ip = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.io) #32 ; 2 uses
  %.not6.i51 = icmp eq i32 %i.ip, 0
  br i1 %.not6.i51, label %bb.ae, label %_ZNK5clang8CallExpr11getBeginLocEv.exit54

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !1313
  %i.is = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ir) #32 ; 2 uses
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %bb.af, label %_ZNK5clang8CallExpr11getBeginLocEv.exit54

bb.af:                                            ; preds = %bb.ae
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !1108
  %.not1.i52 = icmp eq i32 %i.iv, 0
  br i1 %.not1.i52, label %_ZNK5clang8CallExpr11getBeginLocEv.exit54, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ix = lshr i32 %i.ie, 19
  %i.iy = and i32 %i.ix, 1
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.iz
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !1154 ; 2 uses
  %.not2.i53 = icmp eq ptr %i.jb, null
  br i1 %.not2.i53, label %_ZNK5clang8CallExpr11getBeginLocEv.exit54, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jc = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jb) #32
  br label %_ZNK5clang8CallExpr11getBeginLocEv.exit54

_ZNK5clang8CallExpr11getBeginLocEv.exit54:        ; preds = %bb.ab, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah
  %.sroa.0.0.i49 = phi i32 [ %i.ip, %bb.ad ], [ 0, %bb.af ], [ 0, %bb.ag ], [ %i.jc, %bb.ah ], [ %i.is, %bb.ae ], [ %i.ih, %bb.ab ]
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.id, i32 %.sroa.0.0.i49, i32 noundef 143) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i32 0, ptr %i.c, align 4, !tbaa !1103
  %i.jd = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i32 0, ptr %i.d, align 4, !tbaa !1103
  %i.je = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.jd, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.jf = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #32
  store i64 %i.jf, ptr %6, align 8
  %i.jg = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.je, ptr noundef nonnull align 4 dereferenceable(8) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK5clang8CallExpr11getBeginLocEv.exit, %_ZNK5clang8CallExpr11getBeginLocEv.exit54, %_ZNK5clang9NamedDecl7getNameEv.exit47, %bb.q, %bb.a
  ret void
}

declare void @_ZN5clang8SemaObjC37DiagnoseCStringFormatDirectiveInCFAPIEPKNS_9NamedDeclEPPNS_4ExprEj(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK5clang12FunctionDecl21getMemoryFunctionKindEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema24CheckStrlcpycatArgumentsEPKNS_8CallExprEPNS_14IdentifierInfoE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::NestedNameSpecifierLoc", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %5 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %6 = alloca %"class.llvm::SmallString.1440", align 8 ; 8 uses
  %7 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 13 uses
  %8 = alloca %"struct.clang::PrintingPolicy", align 8 ; 5 uses
  %9 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %10 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %11 = alloca %"class.clang::FixItHint", align 8 ; 6 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !1379
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1108
  %i.d = add i32 %i.c, -5
  %or.cond = icmp ult i32 %i.d, -2
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load i32, ptr %1, align 8                ; 3 uses
  %i.g = lshr i32 %i.f, 19
  %i.h = and i32 %i.g, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1154
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.n = tail call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.l) #32 ; 3 uses
  %i.o = load i16, ptr %i.n, align 8
  %i.p = and i16 %i.o, 510
  %spec.select.i.i.i.i.i.i.i.i.not6.i = icmp eq i16 %i.p, 122
  br i1 %spec.select.i.i.i.i.i.i.i.i.not6.i, label %.lr.ph.i, label %_ZL22ignoreLiteralAdditionsPKN5clang4ExprERNS_10ASTContextE.exit

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.077.i = phi ptr [ %.3.i, %bb.e ], [ %i.n, %bb.b ] ; 5 uses
  %i.q = load i32, ptr %.077.i, align 8
  %i.r = lshr i32 %i.q, 19
  %i.s = and i32 %i.r, 63
  %i.t = add nsw i32 %i.s, -5
  %i.u = icmp ult i32 %i.t, 2
  br i1 %i.u, label %bb.c, label %_ZL22ignoreLiteralAdditionsPKN5clang4ExprERNS_10ASTContextE.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %.077.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1313
  %i.x = tail call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.077.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1313
  %i.aa = tail call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #32 ; 2 uses
  %i.ab = load i16, ptr %i.x, align 8
  %i.ac = and i16 %i.ab, 511
  %i.ad = icmp eq i16 %i.ac, 54
  br i1 %i.ad, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load i16, ptr %i.aa, align 8
  %i.af = and i16 %i.ae, 511
  %i.ag = icmp eq i16 %i.af, 54
  br i1 %i.ag, label %bb.e, label %_ZL22ignoreLiteralAdditionsPKN5clang4ExprERNS_10ASTContextE.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %.3.i = phi ptr [ %i.aa, %bb.c ], [ %i.x, %bb.d ] ; 3 uses
  %i.ah = load i16, ptr %.3.i, align 8
  %i.ai = and i16 %i.ah, 510
  %spec.select.i.i.i.i.i.i.i.i.not.i = icmp eq i16 %i.ai, 122
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i, label %.lr.ph.i, label %_ZL22ignoreLiteralAdditionsPKN5clang4ExprERNS_10ASTContextE.exit

_ZL22ignoreLiteralAdditionsPKN5clang4ExprERNS_10ASTContextE.exit: ; preds = %.lr.ph.i, %bb.d, %bb.e, %bb.b
  %.07.lcssa.i = phi ptr [ %i.n, %bb.b ], [ %.077.i, %bb.d ], [ %.077.i, %.lr.ph.i ], [ %.3.i, %bb.e ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1154
  %i.al = tail call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ak) #32 ; 3 uses
  %i.am = load i16, ptr %i.al, align 8
  %i.an = and i16 %i.am, 510
  %spec.select.i.i.i.i.i.i.i.i.not6.i47 = icmp eq i16 %i.an, 122
  br i1 %spec.select.i.i.i.i.i.i.i.i.not6.i47, label %.lr.ph.i49, label %_ZL22ignoreLiteralAdditionsPKN5clang4ExprERNS_10ASTContextE.exit53

.lr.ph.i49:                                       ; preds = %_ZL22ignoreLiteralAdditionsPKN5clang4ExprERNS_10ASTContextE.exit, %bb.h
  %.077.i50 = phi ptr [ %.3.i51, %bb.h ], [ %i.al, %_ZL22ignoreLiteralAdditionsPKN5clang4ExprERNS_10ASTContextE.exit ] ; 5 uses
  %i.ao = load i32, ptr %.077.i50, align 8
  %i.ap = lshr i32 %i.ao, 19
  %i.aq = and i32 %i.ap, 63
  %i.ar = add nsw i32 %i.aq, -5
  %i.as = icmp ult i32 %i.ar, 2
  br i1 %i.as, label %bb.f, label %_ZL22ignoreLiteralAdditionsPKN5clang4ExprERNS_10ASTContextE.exit53

bb.f:                                             ; preds = %.lr.ph.i49
  %i.at = getelementptr inbounds nuw i8, ptr %.077.i50, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1313
  %i.av = tail call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.077.i50, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1313
  %i.ay = tail call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #32 ; 2 uses
  %i.az = load i16, ptr %i.av, align 8
  %i.ba = and i16 %i.az, 511
  %i.bb = icmp eq i16 %i.ba, 54
  br i1 %i.bb, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = load i16, ptr %i.ay, align 8
  %i.bd = and i16 %i.bc, 511
  %i.be = icmp eq i16 %i.bd, 54
  br i1 %i.be, label %bb.h, label %_ZL22ignoreLiteralAdditionsPKN5clang4ExprERNS_10ASTContextE.exit53

bb.h:                                             ; preds = %bb.g, %bb.f
  %.3.i51 = phi ptr [ %i.ay, %bb.f ], [ %i.av, %bb.g ] ; 3 uses
  %i.bf = load i16, ptr %.3.i51, align 8
  %i.bg = and i16 %i.bf, 510
  %spec.select.i.i.i.i.i.i.i.i.not.i52 = icmp eq i16 %i.bg, 122
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i52, label %.lr.ph.i49, label %_ZL22ignoreLiteralAdditionsPKN5clang4ExprERNS_10ASTContextE.exit53

_ZL22ignoreLiteralAdditionsPKN5clang4ExprERNS_10ASTContextE.exit53: ; preds = %.lr.ph.i49, %bb.g, %bb.h, %_ZL22ignoreLiteralAdditionsPKN5clang4ExprERNS_10ASTContextE.exit
  %.07.lcssa.i48 = phi ptr [ %i.al, %_ZL22ignoreLiteralAdditionsPKN5clang4ExprERNS_10ASTContextE.exit ], [ %.077.i50, %bb.g ], [ %.077.i50, %.lr.ph.i49 ], [ %.3.i51, %bb.h ] ; 8 uses
  %i.bh = and i32 %i.f, 16777216
  %.not.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZL22ignoreLiteralAdditionsPKN5clang4ExprERNS_10ASTContextE.exit53
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !1103
  br label %_ZNK5clang8CallExpr11getBeginLocEv.exit

bb.j:                                             ; preds = %_ZL22ignoreLiteralAdditionsPKN5clang4ExprERNS_10ASTContextE.exit53
  %i.bk = and i32 %i.f, 8388608
  %.not5.i = icmp eq i32 %i.bk, 0
  br i1 %.not5.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !1154
  %i.bm = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bl) #32 ; 2 uses
  %.not6.i = icmp eq i32 %i.bm, 0
  br i1 %.not6.i, label %bb.l, label %_ZNK5clang8CallExpr11getBeginLocEv.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1313
  %i.bp = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #32 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.m, label %_ZNK5clang8CallExpr11getBeginLocEv.exit

bb.m:                                             ; preds = %bb.l
  %i.br = load ptr, ptr %i.j, align 8, !tbaa !1154 ; 2 uses
  %.not2.i = icmp eq ptr %i.br, null
  br i1 %.not2.i, label %_ZNK5clang8CallExpr11getBeginLocEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.br) #32
  br label %_ZNK5clang8CallExpr11getBeginLocEv.exit

_ZNK5clang8CallExpr11getBeginLocEv.exit:          ; preds = %bb.i, %bb.k, %bb.l, %bb.m, %bb.n
  %.sroa.0.0.i = phi i32 [ %i.bm, %bb.k ], [ %i.bj, %bb.i ], [ 0, %bb.m ], [ %i.bs, %bb.n ], [ %i.bp, %bb.l ]
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i = load i32, ptr %i.bt, align 4, !tbaa !1103
  %i.bu = tail call fastcc noundef zeroext i1 @_ZL30CheckMemorySizeofForComparisonRN5clang4SemaEPKNS_4ExprEPKNS_14IdentifierInfoENS_14SourceLocationES8_(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %.07.lcssa.i48, ptr noundef %2, i32 %.sroa.0.0.i, i32 %.sroa.0.0.copyload.i)
  br i1 %i.bu, label %.thread, label %bb.o

bb.o:                                             ; preds = %_ZNK5clang8CallExpr11getBeginLocEv.exit
  %i.bv = load i16, ptr %.07.lcssa.i48, align 8
  %i.bw = and i16 %i.bv, 511                      ; 2 uses
  %.not.i.i = icmp eq i16 %i.bw, 5
  br i1 %.not.i.i, label %bb.p, label %_ZL16getSizeOfExprArgPKN5clang4ExprE.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bx = load i24, ptr %.07.lcssa.i48, align 8
  %or.cond.not.i = icmp ult i24 %i.bx, 524288
  br i1 %or.cond.not.i, label %_ZL16getSizeOfExprArgPKN5clang4ExprE.exit, label %.thread

_ZL16getSizeOfExprArgPKN5clang4ExprE.exit:        ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %.07.lcssa.i48, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1129
  %i.ca = tail call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #32 ; 2 uses
  %.not = icmp eq ptr %i.ca, null
  br i1 %.not, label %.thread, label %.thread65

_ZL16getSizeOfExprArgPKN5clang4ExprE.exit.thread: ; preds = %bb.o
  %i.cb = add nsw i16 %i.bw, -96
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i16 %i.cb, -5
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %.thread, label %bb.q

bb.q:                                             ; preds = %_ZL16getSizeOfExprArgPKN5clang4ExprE.exit.thread
  %i.cc = tail call noundef i32 @_ZNK5clang8CallExpr16getBuiltinCalleeEv(ptr noundef nonnull align 8 dereferenceable(24) %.07.lcssa.i48) #31
  %i.cd = icmp eq i32 %i.cc, 1435
  br i1 %i.cd, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.07.lcssa.i48, i64 16
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !1108
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %.07.lcssa.i48, i64 40
  %i.ci = load i32, ptr %.07.lcssa.i48, align 8
  %i.cj = lshr i32 %i.ci, 19
  %i.ck = and i32 %i.cj, 1
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1154
  %i.co = tail call fastcc noundef ptr @_ZL22ignoreLiteralAdditionsPKN5clang4ExprERNS_10ASTContextE(ptr noundef %i.cn) ; 2 uses
  %.not43 = icmp eq ptr %i.co, null
  br i1 %.not43, label %.thread, label %.thread65

.thread65:                                        ; preds = %_ZL16getSizeOfExprArgPKN5clang4ExprE.exit, %bb.s
  %.168 = phi ptr [ %i.co, %bb.s ], [ %i.ca, %_ZL16getSizeOfExprArgPKN5clang4ExprE.exit ] ; 6 uses
  %i.cp = load i16, ptr %.07.lcssa.i, align 8
  %i.cq = and i16 %i.cp, 511
  %.not70 = icmp eq i16 %i.cq, 73
  br i1 %.not70, label %bb.t, label %.thread

bb.t:                                             ; preds = %.thread65
  %i.cr = load i16, ptr %.168, align 8
  %i.cs = and i16 %i.cr, 511
  %.not71 = icmp eq i16 %i.cs, 73
  br i1 %.not71, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.ct = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1371
  %i.cv = getelementptr inbounds nuw i8, ptr %.168, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1371
  %.not46 = icmp eq ptr %i.cu, %i.cw
  br i1 %.not46, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.cx = load i32, ptr %1, align 8
  %i.cy = lshr i32 %i.cx, 19
  %i.cz = and i32 %i.cy, 1
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1154 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.df = load i32, ptr %.168, align 8
  %i.dg = and i32 %i.df, 524288
  %.not.i56 = icmp eq i32 %i.dg, 0
  br i1 %.not.i56, label %bb.w, label %_ZNK5clang11DeclRefExpr15getQualifierLocEv.exit.i

_ZNK5clang11DeclRefExpr15getQualifierLocEv.exit.i: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.dh = getelementptr inbounds nuw i8, ptr %.168, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.dh, align 8, !tbaa !1130
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.168, i64 40
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !1225
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %i.di, align 8
  %i.dj = call i32 @_ZNK5clang22NestedNameSpecifierLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZNK5clang11DeclRefExpr11getBeginLocEv.exit

bb.w:                                             ; preds = %bb.v
  %i.dk = getelementptr inbounds nuw i8, ptr %.168, i64 4
  %.sroa.0.0.copyload.i58 = load i32, ptr %i.dk, align 4, !tbaa !1103
  br label %_ZNK5clang11DeclRefExpr11getBeginLocEv.exit

_ZNK5clang11DeclRefExpr11getBeginLocEv.exit:      ; preds = %_ZNK5clang11DeclRefExpr15getQualifierLocEv.exit.i, %bb.w
  %.sroa.0.0.i57 = phi i32 [ %i.dj, %_ZNK5clang11DeclRefExpr15getQualifierLocEv.exit.i ], [ %.sroa.0.0.copyload.i58, %bb.w ]
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.de, i32 %.sroa.0.0.i57, i32 noundef 7655) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.dl = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dd) #32
  store i64 %i.dl, ptr %5, align 8
  %i.dm = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
  %i.dn = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_14IdentifierInfoEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.dm, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.do = load i32, ptr %1, align 8
  %i.dp = lshr i32 %i.do, 19
  %i.dq = and i32 %i.dp, 1
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1154
  %i.du = call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #32 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %.sroa.0.0.copyload.i59 = load i64, ptr %i.dv, align 8, !tbaa !1129 ; 2 uses
  %i.dw = load ptr, ptr %i.m, align 8, !tbaa !737, !nonnull !734, !align !735
  %i.dx = call noundef ptr @_ZNK5clang10ASTContext14getAsArrayTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.dw, i64 %.sroa.0.0.copyload.i59) #31 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %_ZNK5clang11DeclRefExpr11getBeginLocEv.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 16
  %i.ea = and i8 %i.dz, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ea, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.i, label %bb.z

_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.i: ; preds = %bb.x
  %i.eb = load i32, ptr %i.dy, align 16
  %i.ec = and i32 %i.eb, 33554432
  %.not.i.i60 = icmp eq i32 %i.ec, 0
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 40 ; 2 uses
  br i1 %.not.i.i60, label %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.i
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1129 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !1247
  %i.eh = icmp ult i32 %i.eg, 65
  %i.ei = load ptr, ptr %i.ee, align 8
  %spec.select.i.i.i = select i1 %i.eh, ptr %i.ee, ptr %i.ei
  br label %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit.i

_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit.i: ; preds = %bb.y, %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.i
  %.in.i.i = phi ptr [ %spec.select.i.i.i, %bb.y ], [ %i.ed, %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.i ]
  %i.ej = load i64, ptr %.in.i.i, align 8, !tbaa !1129
  %i.ek = icmp ult i64 %i.ej, 2
  br i1 %i.ek, label %.thread, label %_ZL41isConstantSizeArrayWithMoreThanOneElementN5clang8QualTypeERNS_10ASTContextE.exit

bb.z:                                             ; preds = %bb.x, %_ZNK5clang11DeclRefExpr11getBeginLocEv.exit
  %i.el = and i64 %.sroa.0.0.copyload.i59, -16
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = load ptr, ptr %i.em, align 16, !tbaa !1324
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.eo, align 8, !tbaa !1129
  %i.ep = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.eq = inttoptr i64 %i.ep to ptr
  %i.er = load ptr, ptr %i.eq, align 16, !tbaa !1324
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load i8, ptr %i.es, align 16
  %i.eu = icmp eq i8 %i.et, 6
  br i1 %i.eu, label %_ZL41isConstantSizeArrayWithMoreThanOneElementN5clang8QualTypeERNS_10ASTContextE.exit, label %.thread

_ZL41isConstantSizeArrayWithMoreThanOneElementN5clang8QualTypeERNS_10ASTContextE.exit: ; preds = %bb.z, %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.ev, ptr %6, align 8, !tbaa !1251
  %i.ew = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ew, align 8, !tbaa !1252
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 128, ptr %i.ex, align 8, !tbaa !1253
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 2, ptr %i.ey, align 8, !tbaa !1340
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 0, ptr %i.ez, align 8, !tbaa !1341
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 44
  store i32 1, ptr %i.fa, align 4, !tbaa !1342
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %7, align 8, !tbaa !1143
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store ptr %6, ptr %i.fc, align 8, !tbaa !1344
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef null, i64 noundef 0, i32 noundef 0) #31
  %i.fd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.57) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.fe = load ptr, ptr %i.m, align 8, !tbaa !737, !nonnull !734, !align !735
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !1508
  %i.fh = call { i64, ptr } @_ZN5clang4Sema17getPrintingPolicyERKNS_10ASTContextERKNS_12PreprocessorE(ptr noundef nonnull align 8 dereferenceable(23904) %i.fe, ptr noundef nonnull align 1 %i.fg) #31 ; 2 uses
end_hunk_0
