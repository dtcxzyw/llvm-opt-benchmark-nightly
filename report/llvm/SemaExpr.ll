Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaExpr?download=true
inline.NumInlined: 75953
inline.NumDeleted: 20715
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5clang4Sema24BuildDeclarationNameExprERKNS_12CXXScopeSpecERKNS_19DeclarationNameInfoEPNS_9NamedDeclES8_PKNS_24TemplateArgumentListInfoEb:bb.a
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.c, align 8
  %.sroa.0.0.i = select i1 %.not.i, i32 %.sroa.0.0.copyload.i.i, i32 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 19336
  %.sroa.0.0.copyload.i.i94 = load i64, ptr %i.p, align 8, !tbaa !788
  %i.q = tail call noundef ptr @_ZN5clang12RecoveryExpr6CreateERNS_10ASTContextENS_8QualTypeENS_14SourceLocationES4_N4llvm8ArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(23904) %i.g, i64 %.sroa.0.0.copyload.i.i94, i32 %.sroa.0.0.copyload.i92, i32 %.sroa.0.0.i, ptr null, i64 0) #30
  %i.r = ptrtoint ptr %i.q to i64
  br label %_ZN5clang4Sema18CreateRecoveryExprENS_14SourceLocationES1_N4llvm8ArrayRefIPNS_4ExprEEENS_8QualTypeE.exit

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 127                        ; 3 uses
  %i.v = add nsw i32 %i.u, -76
  %i.w = icmp ult i32 %i.v, -7
  %.not83158 = icmp eq ptr %3, null
  %.not83 = or i1 %.not83158, %i.w
  br i1 %.not83, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5clang4Sema32diagnoseMissingTemplateArgumentsERKNS_12CXXScopeSpecEbPNS_12TemplateDeclENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext false, ptr noundef nonnull %3, i32 %.sroa.0.0.copyload.i) #30
  br label %_ZN5clang4Sema18CreateRecoveryExprENS_14SourceLocationES1_N4llvm8ArrayRefIPNS_4ExprEEENS_8QualTypeE.exit

.critedge:                                        ; preds = %bb.d
  %i.x = add nsw i32 %i.u, -27
  %i.y = icmp ult i32 %i.x, 27
  %i.z = icmp eq i32 %i.u, 58
  %spec.select.i = or i1 %i.z, %i.y
  br i1 %spec.select.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i32 %.sroa.0.0.copyload.i, i32 noundef 5035) #30
  %i.ab = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_9NamedDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %.sroa.0.0.copyload.i96 = load i64, ptr %1, align 8, !tbaa !795
  store i64 %.sroa.0.0.copyload.i96, ptr %9, align 8
  %i.ac = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ab, ptr noundef nonnull align 4 dereferenceable(8) %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !853
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.0.0.copyload.i97 = load i32, ptr %i.ae, align 8, !tbaa !795
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i32 %.sroa.0.0.copyload.i97, i32 noundef 108) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %10) #30
  br label %_ZN5clang4Sema18CreateRecoveryExprENS_14SourceLocationES1_N4llvm8ArrayRefIPNS_4ExprEEENS_8QualTypeE.exit

bb.g:                                             ; preds = %.critedge
  %i.af = call noundef zeroext i1 @_ZN5clang4Sema17DiagnoseUseOfDeclEPNS_9NamedDeclEN4llvm8ArrayRefINS_14SourceLocationEEEPKNS_17ObjCInterfaceDeclEbbPS7_b(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %3, ptr nonnull %7, i64 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, i1 noundef zeroext false)
  br i1 %i.af, label %_ZN5clang4Sema18CreateRecoveryExprENS_14SourceLocationES1_N4llvm8ArrayRefIPNS_4ExprEEENS_8QualTypeE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load i32, ptr %i.s, align 4             ; 2 uses
  %i.ah = and i32 %i.ag, 128
  %.not159 = icmp eq i32 %i.ah, 0
  %or.cond = or i1 %6, %.not159
  br i1 %or.cond, label %bb.i, label %_ZN5clang4Sema18CreateRecoveryExprENS_14SourceLocationES1_N4llvm8ArrayRefIPNS_4ExprEEENS_8QualTypeE.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = and i32 %i.ag, 127
  %.not168 = icmp eq i32 %i.ai, 33
  br i1 %.not168, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = call noundef zeroext i1 @_ZNK5clang9NamedDecl16isCXXClassMemberEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
  br i1 %i.aj, label %bb.k, label %.critedge91

.critedge91:                                      ; preds = %bb.j
  %.sroa.0.0.copyload.i99 = load i32, ptr %i.c, align 8, !tbaa !795
  %i.ak = call i64 @_ZN5clang4Sema40BuildAnonymousStructUnionMemberReferenceERKNS_12CXXScopeSpecENS_14SourceLocationEPNS_17IndirectFieldDeclENS_14DeclAccessPairEPNS_4ExprES4_(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 %.sroa.0.0.copyload.i99, ptr noundef nonnull %3, i64 3, ptr noundef null, i32 0) #30
  br label %_ZN5clang4Sema18CreateRecoveryExprENS_14SourceLocationES1_N4llvm8ArrayRefIPNS_4ExprEEENS_8QualTypeE.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i100 = load i64, ptr %i.al, align 8, !tbaa !788 ; 2 uses
  store i64 %.sroa.0.0.copyload.i100, ptr %11, align 8
  %i.am = icmp ult i64 %.sroa.0.0.copyload.i100, 16
  br i1 %i.am, label %bb.ap, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = call i64 @_ZNK5clang8QualType23getNonPackExpansionTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #30 ; 4 uses
  store i64 %i.an, ptr %11, align 8, !tbaa !788
  %i.ao = load i32, ptr %i.s, align 4
  %i.ap = and i32 %i.ao, 127
  switch i32 %i.ap, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread [
    i32 39, label %bb.am
    i32 37, label %bb.am
    i32 38, label %bb.am
    i32 36, label %bb.ai
    i32 30, label %bb.ah
    i32 31, label %bb.ah
    i32 32, label %bb.ah
    i32 49, label %bb.ah
    i32 34, label %bb.am
    i32 35, label %bb.x
    i32 44, label %_ZNK5clang8QualType13hasQualifiersEv.exit.thread
    i32 46, label %_ZNK5clang8QualType13hasQualifiersEv.exit.thread
    i32 45, label %bb.u
    i32 53, label %bb.u
    i32 47, label %bb.u
    i32 43, label %bb.u
    i32 42, label %bb.u
    i32 41, label %bb.u
    i32 48, label %bb.n
    i32 51, label %bb.m
    i32 33, label %bb.m
    i32 50, label %bb.m
    i32 28, label %bb.am
    i32 27, label %bb.am
    i32 29, label %bb.am
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l
  %i.aq = call i64 @_ZNK5clang8QualType19getNonReferenceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
  store i64 %i.aq, ptr %11, align 8, !tbaa !788
  br label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.ar = and i64 %i.an, -16
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !791
  %i.au = call noundef ptr @_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v(ptr noundef nonnull align 16 dereferenceable(24) %i.at) ; 2 uses
  %.not85 = icmp eq ptr %i.au, null
  br i1 %.not85, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = call i64 @_ZNK5clang13ReferenceType14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(40) %i.au)
  store i64 %i.av, ptr %11, align 8, !tbaa !788
  br label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread

bb.p:                                             ; preds = %bb.n
  %.0.copyload.i.i.i.i.i101 = load i64, ptr %11, align 8 ; 3 uses
  %i.aw = and i64 %.0.copyload.i.i.i.i.i101, -16
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load ptr, ptr %i.ax, align 16, !tbaa !791 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.az, align 8, !tbaa !788 ; 2 uses
  %i.ba = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load ptr, ptr %i.bb, align 16, !tbaa !791
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 16
  %i.bf = icmp eq i8 %i.be, 49
  %i.bg = and i64 %.sroa.0.0.copyload.i.i.i.i, 15
  %.not.i104 = icmp eq i64 %i.bg, 0               ; 2 uses
  br i1 %i.bf, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i104, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.0.copyload.i.i.i.i.i101) #30
  %i.bi = extractvalue { ptr, i64 } %i.bh, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit:   ; preds = %bb.q, %bb.r
  %.sroa.03.0.in.in.i = phi ptr [ %i.bi, %bb.r ], [ %i.ay, %bb.q ]
  %.sroa.03.0.in.i = ptrtoint ptr %.sroa.03.0.in.in.i to i64
  %.sroa.03.0.i = and i64 %.sroa.03.0.in.i, -8
  %i.bj = or disjoint i64 %.sroa.03.0.i, 1
  store i64 %i.bj, ptr %11, align 8, !tbaa !788
  br label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread

bb.s:                                             ; preds = %bb.p
  br i1 %.not.i104, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit111, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.0.copyload.i.i.i.i.i101) #30
  %i.bl = extractvalue { ptr, i64 } %i.bk, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit111

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit111: ; preds = %bb.s, %bb.t
  %.sroa.03.0.in.in.i108 = phi ptr [ %i.bl, %bb.t ], [ %i.ay, %bb.s ]
  %.sroa.03.0.in.i109 = ptrtoint ptr %.sroa.03.0.in.in.i108 to i64
  %.sroa.03.0.i110 = and i64 %.sroa.03.0.in.i109, -8
  store i64 %.sroa.03.0.i110, ptr %11, align 8, !tbaa !788
  br label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread

bb.u:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = and i64 %i.bo, 4096
  %.not86 = icmp eq i64 %i.bp, 0
  %i.bq = and i64 %i.an, 15
  %.not.i112 = icmp eq i64 %i.bq, 0
  %or.cond157 = select i1 %.not86, i1 %.not.i112, i1 false
  br i1 %or.cond157, label %_ZNK5clang8QualType13hasQualifiersEv.exit, label %_ZNK5clang8QualType13hasQualifiersEv.exit.thread

_ZNK5clang8QualType13hasQualifiersEv.exit:        ; preds = %bb.u
  %i.br = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.0.copyload.i.i.i.i.i1.i = load i64, ptr %i.bs, align 8
  %i.bt = and i64 %.0.copyload.i.i.i.i.i1.i, 15
  %.not = icmp eq i64 %i.bt, 0
  br i1 %.not, label %bb.v, label %_ZNK5clang8QualType13hasQualifiersEv.exit.thread

bb.v:                                             ; preds = %_ZNK5clang8QualType13hasQualifiersEv.exit
  %i.bu = load ptr, ptr %i.br, align 16, !tbaa !791
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bv, align 8, !tbaa !788
  %i.bw = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load ptr, ptr %i.bx, align 16, !tbaa !791 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 16
  %i.cb = icmp eq i8 %i.ca, 13
  %.not7.i.i = icmp ne ptr %i.by, null
  %.not.not.not.i.i = and i1 %.not7.i.i, %i.cb
  br i1 %.not.not.not.i.i, label %_ZNK5clang4Type10isVoidTypeEv.exit, label %_ZNK5clang8QualType13hasQualifiersEv.exit.thread

_ZNK5clang4Type10isVoidTypeEv.exit:               ; preds = %bb.v
  %i.cc = load i32, ptr %i.bz, align 16
  %i.cd = and i32 %i.cc, 536346624
  %i.ce = icmp eq i32 %i.cd, 236978176
  br i1 %i.ce, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread, label %_ZNK5clang8QualType13hasQualifiersEv.exit.thread

_ZNK5clang8QualType13hasQualifiersEv.exit.thread: ; preds = %bb.v, %bb.u, %_ZNK5clang8QualType13hasQualifiersEv.exit, %_ZNK5clang4Type10isVoidTypeEv.exit, %bb.l, %bb.l
  %i.cf = call i64 @_ZNK5clang8QualType19getNonReferenceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
  store i64 %i.cf, ptr %11, align 8, !tbaa !788
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 4592
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !858
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !859
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [792 x i8], ptr %i.ch, i64 %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -792
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !1655
  switch i32 %i.cn, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit [
    i32 0, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread
    i32 3, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread
    i32 1, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread
  ]

_ZNK5clang4Sema20isUnevaluatedContextEv.exit:     ; preds = %_ZNK5clang8QualType13hasQualifiersEv.exit.thread
  %.sroa.020.0.copyload = load i32, ptr %7, align 4, !tbaa !795
  %i.co = call i64 @_ZN5clang4Sema22getCapturedDeclRefTypeEPNS_9ValueDeclENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %3, i32 %.sroa.020.0.copyload) ; 2 uses
  %i.cp = icmp ult i64 %i.co, 16
  br i1 %i.cp, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread, label %bb.w

bb.w:                                             ; preds = %_ZNK5clang4Sema20isUnevaluatedContextEv.exit
  store i64 %i.co, ptr %11, align 8, !tbaa !788
  br label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread

bb.x:                                             ; preds = %bb.l
  %i.cq = call noundef i32 @_ZNK5clang12FunctionDecl12getBuiltinIDEb(ptr noundef nonnull align 8 dereferenceable(168) %3, i1 noundef zeroext false) #30 ; 2 uses
  %.not87 = icmp eq i32 %i.cq, 0
  br i1 %.not87, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 17784
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1589, !nonnull !97, !align !787
  %i.cv = call noundef zeroext i1 @_ZNK5clang7Builtin7Context21isDirectlyAddressableEj(ptr noundef nonnull align 8 dereferenceable(176) %i.cu, i32 noundef %i.cq)
  br i1 %i.cv, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 19376
  %.sroa.0.0.copyload.i116 = load i64, ptr %i.cx, align 8, !tbaa !788
  store i64 %.sroa.0.0.copyload.i116, ptr %11, align 8, !tbaa !788
  br label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread

bb.aa:                                            ; preds = %bb.y, %bb.x
  %.0.copyload.i.i.i.i.i117 = load i64, ptr %11, align 8
  %i.cy = and i64 %.0.copyload.i.i.i.i.i117, -16
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = load ptr, ptr %i.cz, align 16, !tbaa !791 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i8, ptr %i.db, align 16
  %i.dd = add i8 %i.dc, -25
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.dd, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.ab, label %_ZNK5clang4Type6castAsINS_12FunctionTypeEEEPKT_v.exit

bb.ab:                                            ; preds = %bb.aa
  %i.de = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.da) #30
  br label %_ZNK5clang4Type6castAsINS_12FunctionTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_12FunctionTypeEEEPKT_v.exit: ; preds = %bb.aa, %bb.ab
  %.1.i = phi ptr [ %i.de, %bb.ab ], [ %i.da, %bb.aa ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %.sroa.0.0.copyload.i118 = load i64, ptr %i.df, align 8, !tbaa !788 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1116, !nonnull !97, !align !787 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 19368
  %.sroa.0.0.copyload.i119 = load i64, ptr %i.di, align 8, !tbaa !788
  %i.dj = icmp eq i64 %.sroa.0.0.copyload.i118, %.sroa.0.0.copyload.i119
  br i1 %i.dj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNK5clang4Type6castAsINS_12FunctionTypeEEEPKT_v.exit
  store i64 %.sroa.0.0.copyload.i118, ptr %11, align 8, !tbaa !788
  br label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread

bb.ad:                                            ; preds = %_ZNK5clang4Type6castAsINS_12FunctionTypeEEEPKT_v.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = and i64 %i.dm, 4096
  %.not88 = icmp eq i64 %i.dn, 0
  br i1 %.not88, label %bb.ae, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.dp = load i32, ptr %i.do, align 8
  %i.dq = and i32 %i.dp, 3145728
  %.not161 = icmp eq i32 %i.dq, 0
  br i1 %.not161, label %bb.af, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.dr = getelementptr inbounds nuw i8, ptr %.1.i, i64 16 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 16
  %i.dt = icmp eq i8 %i.ds, 24
  br i1 %i.dt, label %bb.ag, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.du = load i64, ptr %i.dr, align 16
  %i.dv = lshr i64 %i.du, 34
  %i.dw = trunc i64 %i.dv to i16
  %i.dx = and i16 %i.dw, 16383
  store i16 %i.dx, ptr %12, align 2
  %i.dy = call i64 @_ZNK5clang10ASTContext22getFunctionNoProtoTypeENS_8QualTypeERKNS_12FunctionType7ExtInfoE(ptr noundef nonnull align 8 dereferenceable(23904) %i.dh, i64 %.sroa.0.0.copyload.i118, ptr noundef nonnull align 2 dereferenceable(2) %12) #30
  store i64 %i.dy, ptr %11, align 8, !tbaa !788
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread

bb.ah:                                            ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  br label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread

bb.ai:                                            ; preds = %bb.l
  %.sroa.0.0.copyload.i123 = load i64, ptr %i.al, align 8, !tbaa !788
  %i.dz = and i64 %.sroa.0.0.copyload.i123, -16
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = load ptr, ptr %i.ea, align 16, !tbaa !791 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load i8, ptr %i.ec, align 16
  %i.ee = icmp ne i8 %i.ed, 24
  %.not89162 = icmp eq ptr %i.eb, null
  %.not89 = or i1 %.not89162, %i.ee
  br i1 %.not89, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %.sroa.0.0.copyload.i124 = load i64, ptr %i.ef, align 8, !tbaa !788 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 19368
  %.sroa.0.0.copyload.i125 = load i64, ptr %i.ei, align 8, !tbaa !788
  %i.ej = icmp eq i64 %.sroa.0.0.copyload.i124, %.sroa.0.0.copyload.i125
  br i1 %i.ej, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i64 %.sroa.0.0.copyload.i124, ptr %11, align 8, !tbaa !788
  br label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.ek = call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl8isStaticEv(ptr noundef nonnull align 8 dereferenceable(168) %3) #30
  br i1 %i.ek, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.al, %bb.l, %bb.l, %bb.l
  br label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread

_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread: ; preds = %_ZNK5clang8QualType13hasQualifiersEv.exit.thread, %_ZNK5clang8QualType13hasQualifiersEv.exit.thread, %_ZNK5clang8QualType13hasQualifiersEv.exit.thread, %bb.ak, %bb.ac, %bb.ad, %bb.ag, %bb.af, %bb.ae, %bb.z, %_ZNK5clang4Sema20isUnevaluatedContextEv.exit, %bb.w, %bb.o, %bb.al, %_ZNK5clang4Type10isVoidTypeEv.exit, %bb.am, %bb.ah, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit111, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit, %bb.m, %bb.l
  %.476 = phi i32 [ 0, %bb.l ], [ 0, %bb.am ], [ 1, %bb.o ], [ 0, %bb.ak ], [ 1, %bb.ah ], [ 0, %_ZNK5clang4Type10isVoidTypeEv.exit ], [ 1, %_ZNK5clang4Sema20isUnevaluatedContextEv.exit ], [ 0, %bb.z ], [ 0, %bb.ae ], [ 1, %bb.al ], [ 1, %bb.m ], [ 1, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit ], [ 0, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit111 ], [ 1, %bb.w ], [ 0, %bb.ac ], [ 1, %bb.ad ], [ 0, %bb.ag ], [ 0, %bb.af ], [ 1, %_ZNK5clang8QualType13hasQualifiersEv.exit.thread ], [ 1, %_ZNK5clang8QualType13hasQualifiersEv.exit.thread ], [ 1, %_ZNK5clang8QualType13hasQualifiersEv.exit.thread ]
  %.sroa.07.0.copyload = load i64, ptr %11, align 8, !tbaa !788
  %i.el = call noundef ptr @_ZN5clang4Sema16BuildDeclRefExprEPNS_9ValueDeclENS_8QualTypeENS_13ExprValueKindERKNS_19DeclarationNameInfoEPKNS_12CXXScopeSpecEPNS_9NamedDeclENS_14SourceLocationEPKNS_24TemplateArgumentListInfoE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %3, i64 %.sroa.07.0.copyload, i32 noundef %.476, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %1, ptr noundef %4, i32 0, ptr noundef %5) ; 5 uses
  %i.em = load i32, ptr %i.s, align 4
  %i.en = and i32 %i.em, 128
  %i.eo = icmp ne i32 %i.en, 0
  %i.ep = icmp ne ptr %i.el, null
  %or.cond4 = and i1 %i.ep, %i.eo
  br i1 %or.cond4, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread
  %i.eq = call i32 @_ZNK5clang11DeclRefExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(32) %i.el)
  %i.er = call i32 @_ZNK5clang11DeclRefExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(32) %i.el) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store ptr %i.el, ptr %i.b, align 8, !tbaa !1514
  %i.es = call i64 @_ZN5clang4Sema18CreateRecoveryExprENS_14SourceLocationES1_N4llvm8ArrayRefIPNS_4ExprEEENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %i.eq, i32 %i.er, ptr nonnull %i.b, i64 1, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.ap

bb.ao:                                            ; preds = %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread
  %i.et = ptrtoint ptr %i.el to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.k, %bb.an, %bb.ao
  %.sroa.0148.0 = phi i64 [ %i.et, %bb.ao ], [ %i.es, %bb.an ], [ 1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %_ZN5clang4Sema18CreateRecoveryExprENS_14SourceLocationES1_N4llvm8ArrayRefIPNS_4ExprEEENS_8QualTypeE.exit

_ZN5clang4Sema18CreateRecoveryExprENS_14SourceLocationES1_N4llvm8ArrayRefIPNS_4ExprEEENS_8QualTypeE.exit: ; preds = %bb.h, %bb.g, %bb.c, %bb.b, %bb.e, %bb.ap, %.critedge91, %bb.f
  %.sroa.0148.1 = phi i64 [ 1, %bb.e ], [ 1, %bb.b ], [ %.sroa.0148.0, %bb.ap ], [ %i.ak, %.critedge91 ], [ 1, %bb.g ], [ 1, %bb.f ], [ %i.r, %bb.c ], [ 1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret i64 %.sroa.0148.1
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
begin_hunk_1_@_ZN5clang4Sema24CheckStaticArrayArgumentENS_14SourceLocationEPNS_11ParmVarDeclEPKNS_4ExprE:bb.a
  %i.bj = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #31
  store i64 %i.bj, ptr %9, align 8
  %i.bk = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %8, ptr noundef nonnull align 4 dereferenceable(8) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.bl = load i32, ptr %i.ac, align 16
  %i.bm = and i32 %i.bl, 33554432
  %.not.i = icmp eq i32 %i.bm, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  br i1 %.not.i, label %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !788 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !1770
  %i.br = icmp ult i32 %i.bq, 65
  %i.bs = load ptr, ptr %i.bo, align 8
  %spec.select.i.i46 = select i1 %i.br, ptr %i.bo, ptr %i.bs
  br label %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit

_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit: ; preds = %bb.o, %bb.p
  %.in.i = phi ptr [ %spec.select.i.i46, %bb.p ], [ %i.bn, %bb.o ]
  %i.bt = load i64, ptr %.in.i, align 8, !tbaa !788
  %i.bu = trunc i64 %i.bt to i32
  store i32 %i.bu, ptr %i.a, align 4, !tbaa !795
  %i.bv = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bk, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.bw = load i32, ptr %i.o, align 16
  %i.bx = and i32 %i.bw, 33554432
  %.not.i47 = icmp eq i32 %i.bx, 0
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  br i1 %.not.i47, label %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit50, label %bb.q

bb.q:                                             ; preds = %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !788 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !1770
  %i.cc = icmp ult i32 %i.cb, 65
  %i.cd = load ptr, ptr %i.bz, align 8
  %spec.select.i.i48 = select i1 %i.cc, ptr %i.bz, ptr %i.cd
  br label %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit50

_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit50: ; preds = %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit, %bb.q
  %.in.i49 = phi ptr [ %spec.select.i.i48, %bb.q ], [ %i.by, %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit ]
  %i.ce = load i64, ptr %.in.i49, align 8, !tbaa !788
  %i.cf = trunc i64 %i.ce to i32
  store i32 %i.cf, ptr %i.b, align 4, !tbaa !795
  %i.cg = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bv, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i32 0, ptr %i.c, align 4, !tbaa !795
  %i.ch = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.cg, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread.sink.split

bb.r:                                             ; preds = %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit
  %i.ci = load ptr, ptr %i.l, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.cj = tail call { i64, i8 } @_ZNK5clang10ASTContext25getTypeSizeInCharsIfKnownEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ci, ptr noundef nonnull %i.ab) ; 2 uses
  %i.ck = extractvalue { i64, i8 } %i.cj, 0       ; 2 uses
  %i.cl = extractvalue { i64, i8 } %i.cj, 1
  %i.cm = load ptr, ptr %i.l, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.cn = tail call { i64, i8 } @_ZNK5clang10ASTContext25getTypeSizeInCharsIfKnownEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.cm, ptr noundef nonnull %i.n) ; 2 uses
  %i.co = extractvalue { i64, i8 } %i.cn, 0       ; 2 uses
  %i.cp = extractvalue { i64, i8 } %i.cn, 1
  %i.cq = trunc nuw i8 %i.cl to i1
  %i.cr = trunc nuw i8 %i.cp to i1
  %or.cond = select i1 %i.cq, i1 %i.cr, i1 false
  %i.cs = icmp slt i64 %i.ck, %i.co
  %or.cond58 = select i1 %or.cond, i1 %i.cs, i1 false
  br i1 %or.cond58, label %bb.s, label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.ct, i32 %1, i32 noundef 7643) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.cu = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #31
  store i64 %i.cu, ptr %11, align 8
  %i.cv = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %10, ptr noundef nonnull align 4 dereferenceable(8) %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.cw = trunc i64 %i.ck to i32
  store i32 %i.cw, ptr %i.d, align 4, !tbaa !795
  %i.cx = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.cv, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %i.cy = trunc i64 %i.co to i32
  store i32 %i.cy, ptr %i.e, align 4, !tbaa !795
  %i.cz = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.cx, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  store i32 1, ptr %i.f, align 4, !tbaa !795
  %i.da = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.cz, ptr noundef nonnull align 4 dereferenceable(4) %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread.sink.split

_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread.sink.split: ; preds = %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit50, %bb.f, %bb.s
  call fastcc void @_ZL30DiagnoseCalleeStaticArrayParamRN5clang4SemaEPNS_11ParmVarDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %2)
  br label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread

_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread: ; preds = %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread.sink.split, %bb.h, %bb.i, %bb.r, %bb.d, %bb.c, %_ZN4llvm5APIntD2Ev.exit45, %bb.g, %bb.a, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZNK5clang12FunctionDecl9isExternCEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang4Sema18checkUnknownAnyArgENS_14SourceLocationEPNS_4ExprERNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef nonnull %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::InitializedEntity", align 8 ; 8 uses
  %i.a = tail call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #31 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 511
  %i.d = add nsw i16 %i.c, -91
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i16 %i.d, -9
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @_ZN5clang4Sema24DefaultArgumentPromotionEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %2) ; 3 uses
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i64 %i.e, -2
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8, !tbaa !788
  store i64 %.sroa.0.0.copyload.i, ptr %3, align 8, !tbaa !788
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2097
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.k, align 8, !tbaa !788 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !tbaa !788
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1116, !nonnull !97, !align !787
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3604)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %i.o, align 8, !alias.scope !3604
  store i32 1, ptr %4, align 8, !tbaa !1672, !alias.scope !3604
  %i.p = tail call i64 @_ZNK5clang10ASTContext27getVariableArrayDecayedTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.m, i64 %.sroa.0.0.copyload.i.i) #30, !noalias !3604
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.p, ptr %i.q, align 8, !tbaa !788, !alias.scope !3604
  store ptr null, ptr %i.n, align 8, !tbaa !1673, !alias.scope !3604
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.r, align 8, !tbaa !788, !alias.scope !3604
  %i.s = ptrtoint ptr %2 to i64
  %i.t = call i64 @_ZN5clang4Sema25PerformCopyInitializationERKNS_17InitializedEntityENS_14SourceLocationENS_12ActionResultIPNS_4ExprELb1EEEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(48) %4, i32 %1, i64 %i.s, i1 noundef zeroext false, i1 noundef zeroext false) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.sroa.013.1 = phi i64 [ %i.t, %bb.d ], [ %i.e, %bb.c ], [ 1, %bb.b ]
  ret i64 %.sroa.013.1
}

declare noundef ptr @_ZNK5clang10ASTContext14getAsArrayTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904), i64) local_unnamed_addr #2

declare noundef i32 @_ZNK5clang4Expr21isNullPointerConstantERNS_10ASTContextENS0_34NullPointerConstantValueDependenceE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(23904), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL30DiagnoseCalleeStaticArrayParamRN5clang4SemaEPNS_11ParmVarDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %3 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8 ; 3 uses
  %i.b = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2101
  br label %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit

bb.c:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit

_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8, !tbaa !788 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 4 uses
  %i.k = and i64 %.sroa.0.0.copyload.i, 15
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN5clang25InheritingConcreteTypeLocINS_15AdjustedTypeLocENS_14DecayedTypeLocENS_11DecayedTypeEE6isKindERKNS_7TypeLocE.exit.i, label %_ZNK5clang7TypeLoc5getAsINS_14DecayedTypeLocEEET_v.exit.thread

_ZN5clang25InheritingConcreteTypeLocINS_15AdjustedTypeLocENS_14DecayedTypeLocENS_11DecayedTypeEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit
  %i.l = load ptr, ptr %i.j, align 16, !tbaa !791
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i8, ptr %i.m, align 16
  %i.o = icmp eq i8 %i.n, 1
  br i1 %i.o, label %bb.d, label %_ZNK5clang7TypeLoc5getAsINS_14DecayedTypeLocEEET_v.exit.thread

bb.d:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15AdjustedTypeLocENS_14DecayedTypeLocENS_11DecayedTypeEE6isKindERKNS_7TypeLocE.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.p, align 16, !tbaa !788 ; 2 uses
  %i.q = ptrtoint ptr %i.i to i64
  %i.r = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #30
  %i.s = add i64 %i.q, -1
  %i.t = zext i32 %i.r to i64                     ; 2 uses
  %i.u = udiv i64 %i.s, %i.t
  %i.v = add i64 %i.u, 1
  %i.w = mul i64 %i.v, %i.t
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr
  br label %_ZNK5clang7TypeLoc5getAsINS_14DecayedTypeLocEEET_v.exit.thread

_ZNK5clang7TypeLoc5getAsINS_14DecayedTypeLocEEET_v.exit.thread: ; preds = %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit, %_ZN5clang25InheritingConcreteTypeLocINS_15AdjustedTypeLocENS_14DecayedTypeLocENS_11DecayedTypeEE6isKindERKNS_7TypeLocE.exit.i, %bb.d
  %.sroa.6.0 = phi ptr [ %i.x, %bb.d ], [ %i.i, %_ZN5clang25InheritingConcreteTypeLocINS_15AdjustedTypeLocENS_14DecayedTypeLocENS_11DecayedTypeEE6isKindERKNS_7TypeLocE.exit.i ], [ %i.i, %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit ]
  %.sroa.016.0 = phi ptr [ %i.y, %bb.d ], [ %i.j, %_ZN5clang25InheritingConcreteTypeLocINS_15AdjustedTypeLocENS_14DecayedTypeLocENS_11DecayedTypeEE6isKindERKNS_7TypeLocE.exit.i ], [ %i.j, %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit ] ; 2 uses
  %i.z = ptrtoint ptr %.sroa.016.0 to i64
  %i.aa = and i64 %i.z, 15
  %.not.i.i6 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i6, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_12ArrayTypeLocENS_9ArrayTypeENS_12ArrayLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %_ZNK5clang7TypeLoc5getAsINS_12ArrayTypeLocEEET_v.exit.thread

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_12ArrayTypeLocENS_9ArrayTypeENS_12ArrayLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %_ZNK5clang7TypeLoc5getAsINS_14DecayedTypeLocEEET_v.exit.thread
  %i.ab = load ptr, ptr %.sroa.016.0, align 16, !tbaa !791
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i8, ptr %i.ac, align 16
  %i.ae = add i8 %i.ad, -2
  %switch.i.i.i.i = icmp ult i8 %i.ae, 5
  br i1 %switch.i.i.i.i, label %bb.e, label %_ZNK5clang7TypeLoc5getAsINS_12ArrayTypeLocEEET_v.exit.thread

bb.e:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_12ArrayTypeLocENS_9ArrayTypeENS_12ArrayLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.ag, align 8, !tbaa !795
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.af, i32 %.sroa.0.0.copyload.i13, i32 noundef 5966) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.6.0, align 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8
  %i.ah = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 4 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %_ZNK5clang7TypeLoc5getAsINS_12ArrayTypeLocEEET_v.exit.thread

_ZNK5clang7TypeLoc5getAsINS_12ArrayTypeLocEEET_v.exit.thread: ; preds = %_ZNK5clang7TypeLoc5getAsINS_14DecayedTypeLocEEET_v.exit.thread, %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_12ArrayTypeLocENS_9ArrayTypeENS_12ArrayLocInfoEE6isKindERKNS_7TypeLocE.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang17ConstantArrayType7getSizeEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 16 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 16             ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !788  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1770 ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !1770
  %i.i = icmp ult i32 %i.h, 65
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.e, align 8, !tbaa !788
  store i64 %i.j, ptr %0, align 8, !tbaa !788
  br label %_ZN4llvm5APIntC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.e) #30
  br label %_ZN4llvm5APIntC2ERKS0_.exit

bb.e:                                             ; preds = %bb.a
  %i.k = lshr i32 %i.b, 23
  %i.l = and i32 %i.k, 248                        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !788  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.l, ptr %i.o, align 8, !tbaa !1770
  %i.p = icmp samesign ult i32 %i.l, 65
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 %i.n, ptr %0, align 8, !tbaa !788
  br label %_ZN4llvm5APIntC2ERKS0_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %i.n, i1 noundef zeroext false) #30
  br label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i8 } @_ZNK5clang10ASTContext25getTypeSizeInCharsIfKnownEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, -8
  %i.c = and i64 %i.a, -16
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !791
  %i.f = tail call noundef zeroext i1 @_ZNK5clang4Type16isIncompleteTypeEPPNS_9NamedDeclE(ptr noundef nonnull align 16 dereferenceable(24) %i.e, ptr noundef null) #30
  br i1 %i.f, label %_ZNK5clang10ASTContext25getTypeSizeInCharsIfKnownENS_8QualTypeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.d, align 16, !tbaa !791 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  %i.i = load i16, ptr %i.h, align 1
  %i.j = and i16 %i.i, 4
  %.not.i = icmp eq i16 %i.j, 0
  br i1 %.not.i, label %bb.c, label %_ZNK5clang10ASTContext25getTypeSizeInCharsIfKnownENS_8QualTypeE.exit

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef ptr @_ZNK5clang4Type23getContainedDeducedTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.g) #30 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNK5clang4Type15isUndeducedTypeEv.exit.thread.i, label %_ZNK5clang4Type15isUndeducedTypeEv.exit.i

_ZNK5clang4Type15isUndeducedTypeEv.exit.i:        ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 16
  %i.n = and i32 %i.m, 402653184
  %.not3.i.i = icmp eq i32 %i.n, 0
  br i1 %.not3.i.i, label %_ZNK5clang10ASTContext25getTypeSizeInCharsIfKnownENS_8QualTypeE.exit, label %_ZNK5clang4Type15isUndeducedTypeEv.exit.thread.i

_ZNK5clang4Type15isUndeducedTypeEv.exit.thread.i: ; preds = %_ZNK5clang4Type15isUndeducedTypeEv.exit.i, %bb.c
  %i.o = load ptr, ptr %i.d, align 16, !tbaa !791
  %i.p = tail call noundef zeroext i1 @_ZNK5clang4Type14isSizelessTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.o) #30
  br i1 %i.p, label %_ZNK5clang10ASTContext25getTypeSizeInCharsIfKnownENS_8QualTypeE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang4Type15isUndeducedTypeEv.exit.thread.i
  %i.q = tail call i64 @_ZNK5clang10ASTContext18getTypeSizeInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.b) #30
  br label %_ZNK5clang10ASTContext25getTypeSizeInCharsIfKnownENS_8QualTypeE.exit

_ZNK5clang10ASTContext25getTypeSizeInCharsIfKnownENS_8QualTypeE.exit: ; preds = %bb.a, %bb.b, %_ZNK5clang4Type15isUndeducedTypeEv.exit.i, %_ZNK5clang4Type15isUndeducedTypeEv.exit.thread.i, %bb.d
  %.sroa.09.0.i = phi i64 [ %i.q, %bb.d ], [ undef, %_ZNK5clang4Type15isUndeducedTypeEv.exit.thread.i ], [ undef, %_ZNK5clang4Type15isUndeducedTypeEv.exit.i ], [ undef, %bb.b ], [ undef, %bb.a ]
  %.sroa.2.0.i = phi i8 [ 1, %bb.d ], [ 0, %_ZNK5clang4Type15isUndeducedTypeEv.exit.thread.i ], [ 0, %_ZNK5clang4Type15isUndeducedTypeEv.exit.i ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.fca.0.insert.i = insertvalue { i64, i8 } poison, i64 %.sroa.09.0.i, 0
  %.fca.1.insert.i = insertvalue { i64, i8 } %.fca.0.insert.i, i8 %.sroa.2.0.i, 1
  ret { i64, i8 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang4Sema13ActOnCallExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_S4_(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef %2, i32 %3, ptr %4, i64 %5, i32 %6, ptr noundef %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.clang::FixItHint", align 8 ; 6 uses
  %11 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %12 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %i.a = tail call i64 @_ZN5clang4Sema13BuildCallExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_S4_bb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef %2, i32 %3, ptr %4, i64 %5, i32 %6, ptr noundef %7, i1 noundef zeroext false, i1 noundef zeroext true) ; 3 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %_ZN4llvm15SmallPtrSetImplIPN5clang11DeclRefExprEE5eraseES3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %2, align 8
  %i.d = and i16 %i.c, 511
  %.not = icmp eq i16 %i.d, 24
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %2, align 8                ; 2 uses
  %i.f = and i32 %i.e, 524288
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %.critedge, label %_ZNK5clang12OverloadExpr12getLAngleLocEv.exit.i

_ZNK5clang12OverloadExpr12getLAngleLocEv.exit.i:  ; preds = %bb.c
  %i.g = and i32 %i.e, 511
  %i.h = icmp eq i32 %i.g, 24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !788  ; 3 uses
  %i.k = zext i32 %i.j to i64
  %.1.i.i.v.v.i.i = select i1 %i.h, i64 64, i64 80
  %.1.i.i.v.i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.1.i.i.v.v.i.i
  %.1.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.1.i.i.v.i.i, i64 %i.k ; 2 uses
  %i.l = load i32, ptr %.1.i.i.i.i, align 8, !tbaa !795
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZNK5clang12OverloadExpr23hasExplicitTemplateArgsEv.exit, label %_ZNK5clang12OverloadExpr23hasExplicitTemplateArgsEv.exit.thread

_ZNK5clang12OverloadExpr23hasExplicitTemplateArgsEv.exit: ; preds = %_ZNK5clang12OverloadExpr12getLAngleLocEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !1534
  %.not53 = icmp ne i32 %i.n, 0
  %i.o = icmp eq i32 %i.j, 0
  %or.cond = and i1 %.not53, %i.o
  br i1 %or.cond, label %bb.d, label %.critedge

_ZNK5clang12OverloadExpr23hasExplicitTemplateArgsEv.exit.thread: ; preds = %_ZNK5clang12OverloadExpr12getLAngleLocEv.exit.i
  %.old = icmp eq i32 %i.j, 0
  br i1 %.old, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZNK5clang12OverloadExpr23hasExplicitTemplateArgsEv.exit, %_ZNK5clang12OverloadExpr23hasExplicitTemplateArgsEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #31
  call void @_ZN5clang8SemaBase10DiagCompatENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i32 %i.q, i32 noundef 17) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.r, align 8, !tbaa !815
  store i64 %.sroa.0.0.copyload.i.i, ptr %12, align 8
  %i.s = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %11, ptr noundef nonnull align 8 dereferenceable(8) %12) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %_ZNK5clang12OverloadExpr23hasExplicitTemplateArgsEv.exit, %bb.b, %bb.d, %_ZNK5clang12OverloadExpr23hasExplicitTemplateArgsEv.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !786, !nonnull !97, !align !787 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.w = load i64, ptr %i.v, align 8
  %i.x = and i64 %i.w, 4294967295
  %.not29 = icmp eq i64 %i.x, 0
  br i1 %.not29, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !907
  %i.aa = call i64 @_ZN5clang10SemaOpenMP15ActOnOpenMPCallENS_12ActionResultIPNS_4ExprELb1EEEPNS_5ScopeENS_14SourceLocationEN4llvm15MutableArrayRefIS3_EES7_S3_(ptr noundef nonnull align 8 dereferenceable(552) %i.z, i64 %i.a, ptr noundef %1, i32 %3, ptr %4, i64 %5, i32 %6, ptr noundef %7) #30
end_hunk_1
begin_hunk_2_@_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE33TransformUnaryExprOrTypeTraitExprEPNS_24UnaryExprOrTypeTraitExprE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !788  ; 2 uses
  %i.f = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.e) ; 3 uses
  %.not38 = icmp eq ptr %i.f, null
  br i1 %.not38, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %1 to i64
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.i, align 8, !tbaa !795
  %i.j = load i24, ptr %1, align 8
  %i.k = lshr i24 %i.j, 19
  %i.l = and i24 %i.k, 15
  %i.m = zext nneg i24 %i.l to i32
  %i.n = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #31
  %.val.i = load ptr, ptr %0, align 8, !tbaa !2407
  %i.o = tail call i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_14TypeSourceInfoENS_14SourceLocationENS_20UnaryExprOrTypeTraitENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, ptr noundef nonnull %i.f, i32 %.sroa.0.0.copyload.i, i32 noundef %i.m, i64 %i.n), !inline_history !4224
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4592
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !858
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4600
  %i.t = load i32, ptr %i.s, align 8, !tbaa !859
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [792 x i8], ptr %i.r, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -672
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2224
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %i.p, i32 noundef 0, ptr noundef %i.x, i32 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store ptr null, ptr %i.a, align 8, !tbaa !1778
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !788  ; 6 uses
  %i.aa = load i16, ptr %i.z, align 8
  %i.ab = and i16 %i.aa, 511
  %.not = icmp eq i16 %i.ab, 20
  br i1 %.not, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1913 ; 3 uses
  %i.ae = load i16, ptr %i.ad, align 8
  %i.af = and i16 %i.ae, 511
  %i.ag = icmp eq i16 %i.af, 71
  br i1 %i.ag, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ah = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE34TransformDependentScopeDeclRefExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ad, i1 noundef zeroext false, ptr noundef nonnull %i.a), !inline_history !4225 ; 3 uses
  %spec.select.i = icmp ugt i64 %i.ah, 1
  br i1 %spec.select.i, label %bb.i, label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = and i64 %i.ah, -2
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = icmp eq ptr %i.ad, %i.aj
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = ptrtoint ptr %i.z to i64
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit

bb.k:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.0.0.copyload.i46 = load i32, ptr %i.am, align 8, !tbaa !795
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %.sroa.0.0.copyload.i45 = load i32, ptr %i.an, align 4, !tbaa !795
  %.val.i44 = load ptr, ptr %0, align 8, !tbaa !2407
  %i.ao = call i64 @_ZN5clang4Sema14ActOnParenExprENS_14SourceLocationES1_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i44, i32 %.sroa.0.0.copyload.i46, i32 %.sroa.0.0.copyload.i45, ptr noundef %i.aj), !inline_history !4226
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.ap = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.z)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit

_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit: ; preds = %bb.k, %bb.j, %bb.h, %bb.l
  %storemerge = phi i64 [ %i.ap, %bb.l ], [ %i.al, %bb.j ], [ %i.ao, %bb.k ], [ %i.ah, %bb.h ] ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !1778 ; 2 uses
  %.not37 = icmp eq ptr %i.aq, null
  br i1 %.not37, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i40 = load i32, ptr %i.ar, align 8, !tbaa !795
  %i.as = load i24, ptr %1, align 8
  %i.at = lshr i24 %i.as, 19
  %i.au = and i24 %i.at, 15
  %i.av = zext nneg i24 %i.au to i32
  %i.aw = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #31
  %.val.i41 = load ptr, ptr %0, align 8, !tbaa !2407
  %i.ax = call i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_14TypeSourceInfoENS_14SourceLocationENS_20UnaryExprOrTypeTraitENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i41, ptr noundef nonnull %i.aq, i32 %.sroa.0.0.copyload.i40, i32 noundef %i.av, i64 %i.aw), !inline_history !4224
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.n:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit
  %i.ay = icmp eq i64 %storemerge, 1
  br i1 %i.ay, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = and i64 %storemerge, -2
  %i.ba = inttoptr i64 %i.az to ptr               ; 2 uses
  %i.bb = load ptr, ptr %i.y, align 8, !tbaa !788
  %i.bc = icmp eq ptr %i.bb, %i.ba
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bd = ptrtoint ptr %1 to i64
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i42 = load i32, ptr %i.be, align 8, !tbaa !795
  %i.bf = load i24, ptr %1, align 8
  %i.bg = lshr i24 %i.bf, 19
  %i.bh = and i24 %i.bg, 15
  %i.bi = zext nneg i24 %i.bh to i32
  %.val.i43 = load ptr, ptr %0, align 8, !tbaa !2407
  %i.bj = call i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_4ExprENS_14SourceLocationENS_20UnaryExprOrTypeTraitE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i43, ptr noundef %i.ba, i32 %.sroa.0.0.copyload.i42, i32 noundef %i.bi), !inline_history !4227
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.q, %bb.n, %bb.p, %bb.m
  %.sroa.050.0 = phi i64 [ %i.ax, %bb.m ], [ %i.bd, %bb.p ], [ 1, %bb.n ], [ %i.bj, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.p), !inline_history !7
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.d, %bb.e, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  %.sroa.050.1 = phi i64 [ %.sroa.050.0, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ], [ %i.h, %bb.d ], [ %i.o, %bb.e ], [ 1, %bb.b ]
  ret i64 %.sroa.050.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformTypeTraitExprEPNS_13TypeTraitExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2684", align 8 ; 14 uses
  %3 = alloca %"class.clang::TypeLocBuilder", align 8 ; 12 uses
  %4 = alloca %"class.clang::TypeLoc", align 8    ; 9 uses
  %5 = alloca %"class.llvm::SmallVector.2597", align 8 ; 8 uses
  %6 = alloca %"class.clang::TypeLocBuilder", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  store i32 4, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !788  ; 2 uses
  %.not216 = icmp eq i32 %i.e, 0
  br i1 %.not216, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 60
  %i.u = zext i32 %i.e to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %.not, label %.thread211, label %bb.c, !llvm.loop !4228

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.0219 = phi i1 [ false, %.lr.ph ], [ %.3, %bb.b ] ; 3 uses
  %i.v = load i32, ptr %1, align 8
  %i.w = lshr i32 %i.v, 27
  %.lobit.i.i.i.i.i.i.i = and i32 %i.w, 1
  %i.x = xor i32 %.lobit.i.i.i.i.i.i.i, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1778 ; 6 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ab, align 8, !tbaa !788 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 4 uses
  %i.ae = and i64 %.sroa.0.0.copyload.i, 15
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %bb.d

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %bb.c
  %i.af = load ptr, ptr %i.ad, align 16, !tbaa !791
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i8, ptr %i.ag, align 16
  %i.ai = icmp eq i8 %i.ah, 36
  br i1 %i.ai, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %i.g, ptr %3, align 8, !tbaa !1897
  store i64 32, ptr %i.h, align 8, !tbaa !1898
  store i64 32, ptr %i.i, align 8, !tbaa !1899
  store i32 0, ptr %i.j, align 8, !tbaa !1900
  store i8 0, ptr %i.k, align 4, !tbaa !1901
  %i.aj = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i) #30
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = load i64, ptr %i.h, align 8, !tbaa !1898
  %i.am = icmp ult i64 %i.al, %i.ak
  br i1 %i.am, label %bb.e, label %_ZN5clang14TypeLocBuilder7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 noundef %i.ak) #30
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit

_ZN5clang14TypeLocBuilder7reserveEm.exit:         ; preds = %bb.d, %bb.e
  %i.an = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr %i.ad, ptr nonnull %i.ac) ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  br i1 %i.ao, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %.sroa.0.0.copyload.i78 = load i64, ptr %i.ab, align 8, !tbaa !788
  %i.ap = icmp eq i64 %i.an, %.sroa.0.0.copyload.i78
  br i1 %i.ap, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !859 ; 2 uses
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !856

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ab)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

bb.i:                                             ; preds = %bb.g
  %i.as = zext i32 %i.aq to i64
  %i.at = load ptr, ptr %2, align 8, !tbaa !858
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  store ptr %i.ab, ptr %i.au, align 1
  %i.av = load i32, ptr %i.b, align 8, !tbaa !859
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

bb.j:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 232
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !1898
  %i.bb = load i64, ptr %i.i, align 8, !tbaa !1899
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.az, i64 %i.an, i32 noundef %i.bd) #30 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %3, align 8, !tbaa !1897
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !1899
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr align 1 %i.bi, i64 %i.bc, i1 false)
  %i.bj = load i32, ptr %i.b, align 8, !tbaa !859 ; 2 uses
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i80 = icmp ult i32 %i.bj, %i.bk
  br i1 %.not.i80, label %bb.l, label %bb.k, !prof !856

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.be)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

bb.l:                                             ; preds = %bb.j
  %i.bl = zext i32 %i.bj to i64
  %i.bm = load ptr, ptr %2, align 8, !tbaa !858
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  store ptr %i.be, ptr %i.bn, align 1
  %i.bo = load i32, ptr %i.b, align 8, !tbaa !859
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit: ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %.065 = phi i32 [ 4, %bb.i ], [ 1, %_ZN5clang14TypeLocBuilder7reserveEm.exit ], [ 4, %bb.h ], [ 4, %bb.k ], [ 4, %bb.l ]
  %.2 = phi i1 [ %.0219, %bb.i ], [ %.0219, %_ZN5clang14TypeLocBuilder7reserveEm.exit ], [ %.0219, %bb.h ], [ true, %bb.k ], [ true, %bb.l ]
  %i.bq = load ptr, ptr %3, align 8, !tbaa !1897  ; 3 uses
  %.not.i82 = icmp eq ptr %i.bq, %i.g
  %i.br = icmp eq ptr %i.bq, null
  %or.cond.i = or i1 %.not.i82, %i.br
  br i1 %or.cond.i, label %_ZN5clang14TypeLocBuilderD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #32
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit

_ZN5clang14TypeLocBuilderD2Ev.exit:               ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.v

bb.n:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bs, align 16, !tbaa !788 ; 2 uses
  %i.bt = ptrtoint ptr %i.ac to i64
  %i.bu = add i64 %i.bt, 4                        ; 2 uses
  %i.bv = call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #30
  %i.bw = icmp ne i64 %i.bu, 0
  %i.bx = zext i1 %i.bw to i64                    ; 2 uses
  %i.by = sub i64 %i.bu, %i.bx
  %i.bz = zext i32 %i.bv to i64                   ; 2 uses
  %i.ca = udiv i64 %i.by, %i.bz
  %i.cb = add i64 %i.ca, %i.bx
  %i.cc = mul i64 %i.cb, %i.bz
  %i.cd = inttoptr i64 %i.cc to ptr               ; 2 uses
  %i.ce = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr ; 2 uses
  store ptr %i.ce, ptr %4, align 8
  store ptr %i.cd, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.m, ptr %5, align 8, !tbaa !858
  store i32 0, ptr %i.n, align 8, !tbaa !859
  store i32 2, ptr %i.o, align 4, !tbaa !876
  %i.cf = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksENS_7TypeLocERN4llvm15SmallVectorImplISt4pairINS2_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cf, ptr %i.ce, ptr %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %5) #30
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !788
  %i.ci = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #30 ; 0 uses
  %i.cj = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #30 ; 0 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.ck = getelementptr inbounds nuw i8, ptr %.val, i64 13800 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ck, align 4, !tbaa !795
  store i32 0, ptr %i.ck, align 4, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.p, ptr %6, align 8, !tbaa !1897
  store i64 32, ptr %i.q, align 8, !tbaa !1898
  store i64 32, ptr %i.r, align 8, !tbaa !1899
  store i32 0, ptr %i.s, align 8, !tbaa !1900
  store i8 0, ptr %i.t, align 4, !tbaa !1901
  %.sroa.0.0.copyload.i87 = load i64, ptr %i.ab, align 8, !tbaa !788
  %i.cl = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i87) #30
  %i.cm = zext i32 %i.cl to i64                   ; 2 uses
  %i.cn = load i64, ptr %i.q, align 8, !tbaa !1898
  %i.co = icmp ult i64 %i.cn, %i.cm
  br i1 %i.co, label %bb.o, label %_ZN5clang14TypeLocBuilder7reserveEm.exit90

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %6, i64 noundef %i.cm) #30
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit90

_ZN5clang14TypeLocBuilder7reserveEm.exit90:       ; preds = %bb.n, %bb.o
  %.sroa.034.0.copyload = load ptr, ptr %4, align 8, !tbaa !100
  %.sroa.235.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !100
  %i.cp = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %6, ptr %.sroa.034.0.copyload, ptr %.sroa.235.0.copyload) ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 16
  br i1 %i.cq, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit100, label %bb.p

bb.p:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit90
  %i.cr = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #30
  %i.cs = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #30
  %.sroa.2.0.insert.ext.i92 = zext i32 %i.cs to i64
  %.sroa.2.0.insert.shift.i93 = shl nuw i64 %.sroa.2.0.insert.ext.i92, 32
  %.sroa.0.0.insert.ext.i94 = zext i32 %i.cr to i64
  %.sroa.0.0.insert.insert.i95 = or disjoint i64 %.sroa.2.0.insert.shift.i93, %.sroa.0.0.insert.ext.i94
  %.sroa.0.0.copyload.i96 = load i32, ptr %i.ac, align 8, !tbaa !795
  %.val74 = load ptr, ptr %0, align 8, !tbaa !2407
  %i.ct = call i64 @_ZN5clang4Sema18CheckPackExpansionENS_8QualTypeENS_11SourceRangeENS_14SourceLocationENS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val74, i64 %i.cp, i64 %.sroa.0.0.insert.insert.i95, i32 %.sroa.0.0.copyload.i96, i32 %i.ch) #30 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  br i1 %i.cu, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit100, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %6, i64 %i.ct, i64 noundef 4, i32 noundef 4) #30
  %i.cw = extractvalue { ptr, ptr } %i.cv, 1
  %.sroa.0.0.copyload.i98 = load i32, ptr %i.ac, align 8, !tbaa !795
  store i32 %.sroa.0.0.copyload.i98, ptr %i.cw, align 4, !tbaa !795
  %i.cx = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 232
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.da = load i64, ptr %i.q, align 8, !tbaa !1898
  %i.db = load i64, ptr %i.r, align 8, !tbaa !1899
  %i.dc = sub i64 %i.da, %i.db                    ; 2 uses
  %i.dd = trunc i64 %i.dc to i32
  %i.de = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.cz, i64 %i.ct, i32 noundef %i.dd) #30 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %6, align 8, !tbaa !1897
  %i.dh = load i64, ptr %i.r, align 8, !tbaa !1899
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.df, ptr align 1 %i.di, i64 %i.dc, i1 false)
  %i.dj = load i32, ptr %i.b, align 8, !tbaa !859 ; 2 uses
  %i.dk = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i99 = icmp ult i32 %i.dj, %i.dk
  br i1 %.not.i99, label %bb.s, label %bb.r, !prof !856

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.de)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit100

bb.s:                                             ; preds = %bb.q
  %i.dl = zext i32 %i.dj to i64
end_hunk_2
begin_hunk_3_@_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE28TransformConditionalOperatorEPNS_19ConditionalOperatorE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1587
  %i.g = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1587
  %i.k = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.j) ; 3 uses
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = and i64 %i.c, -2
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !1587
  %i.p = icmp eq ptr %i.o, %i.n
  %i.q = and i64 %i.g, -2
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  br i1 %i.p, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !1587
  %i.t = icmp eq ptr %i.s, %i.r
  br i1 %i.t, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.u = and i64 %i.k, -2
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !1587
  %i.x = icmp eq ptr %i.w, %i.v
  br i1 %i.x, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.y = ptrtoint ptr %1 to i64
  br label %bb.h

._crit_edge:                                      ; preds = %bb.d, %bb.f, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i = load i32, ptr %i.z, align 8, !tbaa !795
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.aa, align 4, !tbaa !795
  %i.ab = and i64 %i.k, -2
  %i.ac = inttoptr i64 %i.ab to ptr
  %.val.i = load ptr, ptr %0, align 8, !tbaa !2407
  %i.ad = tail call i64 @_ZN5clang4Sema18ActOnConditionalOpENS_14SourceLocationES1_PNS_4ExprES3_S3_(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i11, ptr noundef %i.n, ptr noundef %i.r, ptr noundef %i.ac), !inline_history !39
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.c, %._crit_edge, %bb.g, %bb.a
  %.sroa.020.2 = phi i64 [ 1, %bb.a ], [ 1, %bb.b ], [ %i.ad, %._crit_edge ], [ %i.y, %bb.g ], [ 1, %bb.c ]
  ret i64 %.sroa.020.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE34TransformBinaryConditionalOperatorEPNS_25BinaryConditionalOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1587
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1587
  %i.g = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.c, -2
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !1587
  %i.l = icmp eq ptr %i.k, %i.j
  %i.m = and i64 %i.g, -2
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  br i1 %i.l, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !1587
  %i.p = icmp eq ptr %i.o, %i.n
  br i1 %i.p, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.q = ptrtoint ptr %1 to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i = load i32, ptr %i.r, align 8, !tbaa !795
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.s, align 4, !tbaa !795
  %.val.i = load ptr, ptr %0, align 8, !tbaa !2407
  %i.t = tail call i64 @_ZN5clang4Sema18ActOnConditionalOpENS_14SourceLocationES1_PNS_4ExprES3_S3_(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, ptr noundef %i.j, ptr noundef null, ptr noundef %i.n), !inline_history !39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge, %bb.b, %bb.a
  %.sroa.015.1 = phi i64 [ 1, %bb.a ], [ %i.t, %._crit_edge ], [ %i.q, %bb.e ], [ 1, %bb.b ]
  ret i64 %.sroa.015.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %3 = alloca %"class.clang::TypeLocBuilder", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !788
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  store ptr %i.b, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.c, align 8
  %i.d = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.sroa.0.0.copyload.i11 = load i64, ptr %1, align 8, !tbaa !788 ; 3 uses
  %i.e = icmp ult i64 %.sroa.0.0.copyload.i11, 16
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !1897
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 32, ptr %i.g, align 8, !tbaa !1898
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 32, ptr %i.h, align 8, !tbaa !1899
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.i, align 8, !tbaa !1900
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 0, ptr %i.j, align 4, !tbaa !1901
  %i.k = inttoptr i64 %.sroa.0.0.copyload.i11 to ptr
  %i.l = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i11) #30
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = load i64, ptr %i.g, align 8, !tbaa !1898
  %i.o = icmp ult i64 %i.n, %i.m
  br i1 %i.o, label %bb.c, label %_ZN5clang14TypeLocBuilder7reserveEm.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 noundef %i.m) #30
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit

_ZN5clang14TypeLocBuilder7reserveEm.exit:         ; preds = %bb.b, %bb.c
  %i.p = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.k, ptr nonnull %i.a) ; 2 uses
  %i.q = icmp ult i64 %i.p, 16
  br i1 %i.q, label %_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge, label %bb.d

_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge: ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %.pre = load ptr, ptr %3, align 8, !tbaa !1897
  br label %bb.e

bb.d:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %i.r = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 232
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.u = load i64, ptr %i.g, align 8, !tbaa !1898
  %i.v = load i64, ptr %i.h, align 8, !tbaa !1899
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.t, i64 %i.p, i32 noundef %i.x) #30 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %3, align 8, !tbaa !1897  ; 2 uses
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !1899
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ac, i64 %i.w, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge, %bb.d
  %i.ad = phi ptr [ %i.aa, %bb.d ], [ %.pre, %_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge ] ; 3 uses
  %.0 = phi ptr [ %i.y, %bb.d ], [ null, %_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge ]
  %.not.i = icmp eq ptr %i.ad, %i.f
  %i.ae = icmp eq ptr %i.ad, null
  %or.cond.i = or i1 %.not.i, %i.ae
  br i1 %or.cond.i, label %_ZN5clang14TypeLocBuilderD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #32
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit

_ZN5clang14TypeLocBuilderD2Ev.exit:               ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN5clang14TypeLocBuilderD2Ev.exit
  %.1 = phi ptr [ %.0, %_ZN5clang14TypeLocBuilderD2Ev.exit ], [ %1, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 14 uses
  %i.b = and i64 %i.a, 15
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit:       ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 16, !tbaa !791
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 16
  switch i8 %i.e, label %bb.bl [
    i8 60, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %bb.l
    i8 6, label %bb.m
    i8 7, label %bb.n
    i8 8, label %bb.o
    i8 59, label %bb.bk
    i8 10, label %bb.p
    i8 11, label %bb.q
    i8 12, label %bb.r
    i8 13, label %bb.s
    i8 14, label %bb.t
    i8 15, label %bb.u
    i8 16, label %bb.v
    i8 17, label %bb.w
    i8 18, label %bb.x
    i8 19, label %bb.y
    i8 20, label %bb.z
    i8 21, label %bb.aa
    i8 22, label %bb.ab
    i8 23, label %bb.ac
    i8 24, label %bb.ad
    i8 25, label %bb.ae
    i8 26, label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit
    i8 27, label %bb.af
    i8 28, label %bb.ag
    i8 29, label %bb.ah
    i8 30, label %bb.ai
    i8 31, label %bb.aj
    i8 32, label %bb.ak
    i8 33, label %bb.al
    i8 34, label %bb.am
    i8 35, label %bb.an
    i8 36, label %bb.ao
    i8 37, label %bb.ap
    i8 38, label %bb.aq
    i8 39, label %bb.ar
    i8 40, label %bb.as
    i8 58, label %bb.bj
    i8 42, label %bb.at
    i8 43, label %bb.au
    i8 44, label %bb.av
    i8 45, label %bb.aw
    i8 46, label %bb.ax
    i8 47, label %bb.ay
    i8 48, label %bb.az
    i8 49, label %bb.ba
    i8 50, label %bb.bb
    i8 51, label %bb.bc
    i8 52, label %bb.bd
    i8 53, label %bb.be
    i8 54, label %bb.bf
    i8 55, label %bb.bg
    i8 56, label %bb.bh
    i8 57, label %bb.bi
  ]

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread: ; preds = %bb.a, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.f = and i64 %i.a, -16
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !791
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, -8
  %i.k = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %i.j) #30, !inline_history !4451
  %i.l = ptrtoint ptr %3 to i64
  %i.m = icmp ne ptr %3, null
  %i.n = zext i1 %i.m to i64                      ; 2 uses
  %i.o = sub i64 %i.l, %i.n
  %i.p = zext i32 %i.k to i64                     ; 2 uses
  %i.q = udiv i64 %i.o, %i.p
  %i.r = add i64 %i.q, %i.n
  %i.s = mul i64 %i.r, %i.p
  %i.t = load ptr, ptr %i.g, align 16, !tbaa !791 ; 3 uses
  %i.u = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 5 uses
  %i.w = and i64 %i.v, 15
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i, label %bb.d

_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
  %i.x = load ptr, ptr %i.t, align 16, !tbaa !791
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i8, ptr %i.y, align 16
  switch i8 %i.z, label %bb.d [
    i8 51, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i
  %i.aa = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.v, i64 noundef 4, i32 noundef 4) #30, !inline_history !4451
  %i.ab = extractvalue { ptr, ptr } %i.aa, 1
  %.sroa.0.0.copyload.i.i.i.i486 = load i32, ptr %i.u, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i.i.i.i486, ptr %i.ab, align 4, !tbaa !795
  br label %bb.e

bb.c:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i
  %i.ac = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.v, i64 noundef 4, i32 noundef 4) #30, !inline_history !4451
  %i.ad = extractvalue { ptr, ptr } %i.ac, 1
  %.sroa.0.0.copyload.i.i.i29.i = load i32, ptr %i.u, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i.i.i29.i, ptr %i.ad, align 4, !tbaa !795
  br label %bb.e

bb.d:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
  %i.ae = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.t, ptr %i.u), !inline_history !4451
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.037.0.i = phi i64 [ %i.v, %bb.b ], [ %i.ae, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.af = icmp ult i64 %.sroa.037.0.i, 16
  br i1 %i.af, label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE20RebuildQualifiedTypeENS_8QualTypeENS_16QualifiedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.037.0.i, ptr %2, ptr %3), !inline_history !4451 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 16
  %spec.select.i = select i1 %i.ah, i64 0, i64 %i.ag
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.g:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ai = getelementptr i8, ptr %2, i64 32
  %.val = load i64, ptr %i.ai, align 16, !tbaa !788
  %i.aj = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE21TransformAdjustedTypeERNS_14TypeLocBuilderENS_15AdjustedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.val, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.h:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ak = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE20TransformDecayedTypeERNS_14TypeLocBuilderENS_14DecayedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.i:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.al = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformConstantArrayTypeERNS_14TypeLocBuilderENS_20ConstantArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.j:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.am = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE27TransformArrayParameterTypeERNS_14TypeLocBuilderENS_21ArrayParameterTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.k:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.an = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE32TransformDependentSizedArrayTypeERNS_14TypeLocBuilderENS_26DependentSizedArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.l:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ao = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE28TransformIncompleteArrayTypeERNS_14TypeLocBuilderENS_22IncompleteArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.m:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ap = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformVariableArrayTypeERNS_14TypeLocBuilderENS_20VariableArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.n:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.aq = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE19TransformAtomicTypeERNS_14TypeLocBuilderENS_13AtomicTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.o:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ar = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE23TransformAttributedTypeERNS_14TypeLocBuilderENS_17AttributedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.p:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.as = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.a, i64 noundef 4, i32 noundef 4) #30
  %i.at = extractvalue { ptr, ptr } %i.as, 1
  %.sroa.0.0.copyload.i.i = load i32, ptr %3, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.at, align 4, !tbaa !795
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.q:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.au = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE25TransformBlockPointerTypeERNS_14TypeLocBuilderENS_19BlockPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.r:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.av = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE28TransformCountAttributedTypeERNS_14TypeLocBuilderENS_22CountAttributedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.s:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.aw = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE20TransformBuiltinTypeERNS_14TypeLocBuilderENS_14BuiltinTypeLocE(ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.t:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ax = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.a, i64 noundef 4, i32 noundef 4) #30
  %i.ay = extractvalue { ptr, ptr } %i.ax, 1
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %3, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.ay, align 4, !tbaa !795
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.u:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.az = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE21TransformDecltypeTypeERNS_14TypeLocBuilderENS_15DecltypeTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.v:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ba = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE17TransformAutoTypeERNS_14TypeLocBuilderENS_11AutoTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.w:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bb = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE42TransformDeducedTemplateSpecializationTypeERNS_14TypeLocBuilderENS_36DeducedTemplateSpecializationTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.x:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bc = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE34TransformDependentAddressSpaceTypeERNS_14TypeLocBuilderENS_28DependentAddressSpaceTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.y:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bd = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE28TransformDependentBitIntTypeERNS_14TypeLocBuilderENS_22DependentBitIntTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.z:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.be = tail call fastcc range(i64 16, 1) i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull readonly %2, ptr readonly %3, i1 noundef zeroext false, i64 0, ptr noundef null), !inline_history !4452
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.aa:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bf = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE36TransformDependentSizedExtVectorTypeERNS_14TypeLocBuilderENS_30DependentSizedExtVectorTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ab:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bg = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE28TransformDependentVectorTypeERNS_14TypeLocBuilderENS_22DependentVectorTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ac:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bh = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE28TransformFunctionNoProtoTypeERNS_14TypeLocBuilderENS_22FunctionNoProtoTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ad:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bi = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformFunctionProtoTypeERNS_14TypeLocBuilderENS_20FunctionProtoTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ae:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bj = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE35TransformHLSLAttributedResourceTypeERNS_14TypeLocBuilderENS_29HLSLAttributedResourceTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.af:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bk = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE27TransformMacroQualifiedTypeERNS_14TypeLocBuilderENS_21MacroQualifiedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ag:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bl = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE27TransformConstantMatrixTypeERNS_14TypeLocBuilderENS_21ConstantMatrixTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ah:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bm = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE33TransformDependentSizedMatrixTypeERNS_14TypeLocBuilderENS_27DependentSizedMatrixTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ai:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bn = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformMemberPointerTypeERNS_14TypeLocBuilderENS_20MemberPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.aj:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bo = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE30TransformObjCObjectPointerTypeERNS_14TypeLocBuilderENS_24ObjCObjectPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ak:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bp = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE23TransformObjCObjectTypeERNS_14TypeLocBuilderENS_17ObjCObjectTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.al:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang14TypeLocBuilder12pushFullCopyENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3) #30
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.am:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bq = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformObjCTypeParamTypeERNS_14TypeLocBuilderENS_20ObjCTypeParamTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.an:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.br = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE29TransformOverflowBehaviorTypeERNS_14TypeLocBuilderENS_23OverflowBehaviorTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ao:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bs = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformPackExpansionTypeERNS_14TypeLocBuilderENS_20PackExpansionTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ap:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bt = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE25TransformPackIndexingTypeERNS_14TypeLocBuilderENS_19PackIndexingTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.aq:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bu = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE18TransformParenTypeERNS_14TypeLocBuilderENS_12ParenTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ar:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bv = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE17TransformPipeTypeERNS_14TypeLocBuilderENS_11PipeTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.as:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bw = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE20TransformPointerTypeERNS_14TypeLocBuilderENS_14PointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

end_hunk_3
begin_hunk_4_@_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformMemberPointerTypeERNS_14TypeLocBuilderENS_20MemberPointerTypeLocE:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1593
  call void @free(ptr noundef %i.bt) #30
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit49

_ZN5clang12CXXScopeSpecD2Ev.exit49:               ; preds = %.critedge41, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %_ZN5clang12CXXScopeSpecD2Ev.exit49
  %.sroa.060.0 = phi i64 [ %i.bm, %_ZN5clang12CXXScopeSpecD2Ev.exit49 ], [ %i.bj, %bb.h ] ; 3 uses
  %i.bu = and i64 %.sroa.060.0, -16
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load ptr, ptr %i.bv, align 16, !tbaa !791 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i8, ptr %i.bx, align 16
  %.not.i50 = icmp eq i8 %i.by, 30
  br i1 %.not.i50, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread87, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.0.0.copyload.i.i.i.i51 = load i64, ptr %i.bz, align 8, !tbaa !788
  %i.ca = and i64 %.sroa.0.0.copyload.i.i.i.i51, -16
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !791
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load i8, ptr %i.cd, align 16
  %i.cf = icmp eq i8 %i.ce, 30
  br i1 %i.cf, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit, label %.critedge2

_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit: ; preds = %bb.m
  %i.cg = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bw) #30 ; 2 uses
  %.not39 = icmp eq ptr %i.cg, null
  br i1 %.not39, label %.critedge2, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread87

_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread87: ; preds = %bb.l, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit
  %.1.i90 = phi ptr [ %i.cg, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit ], [ %i.bw, %bb.l ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.1.i90, i64 32
  %.sroa.0.0.copyload.i52 = load i64, ptr %i.ch, align 16, !tbaa !788 ; 2 uses
  %.not96 = icmp eq i64 %i.n, %.sroa.0.0.copyload.i52
  br i1 %.not96, label %.critedge2, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread87
  %i.ci = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.sroa.0.0.copyload.i52, i64 noundef 0, i32 noundef 1) #30 ; 0 uses
  br label %.critedge2

.critedge2:                                       ; preds = %bb.m, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit, %bb.n, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread87
  %i.cj = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.sroa.060.0, i64 noundef 16, i32 noundef 8) #30
  %i.ck = extractvalue { ptr, ptr } %i.cj, 1      ; 2 uses
  %.sroa.0.0.copyload.i56 = load i32, ptr %3, align 8, !tbaa !795
  store i32 %.sroa.0.0.copyload.i56, ptr %i.ck, align 8, !tbaa !795
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.u, ptr %i.cl, align 8, !tbaa !2674
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %_ZN5clang12CXXScopeSpecD2Ev.exit, %.critedge2, %bb.a
  %.sroa.084.2 = phi i64 [ 0, %bb.a ], [ 0, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ 0, %bb.b ], [ 0, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ %.sroa.060.0, %.critedge2 ]
  ret i64 %.sroa.084.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE30TransformObjCObjectPointerTypeERNS_14TypeLocBuilderENS_24ObjCObjectPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 16, !tbaa !788 ; 2 uses
  %i.b = ptrtoint ptr %3 to i64
  %i.c = add i64 %i.b, 4                          ; 2 uses
  %i.d = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #30
  %i.e = icmp ne i64 %i.c, 0
  %i.f = zext i1 %i.e to i64                      ; 2 uses
  %i.g = sub i64 %i.c, %i.f
  %i.h = zext i32 %i.d to i64                     ; 2 uses
  %i.i = udiv i64 %i.g, %i.h
  %i.j = add i64 %i.i, %i.f
  %i.k = mul i64 %i.j, %i.h
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr
  %i.n = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.m, ptr %i.l) ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  br i1 %i.o, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = ptrtoint ptr %2 to i64
  %.sroa.0.0.copyload.i.i.i.i8 = load i64, ptr %i.a, align 16, !tbaa !788 ; 2 uses
  %i.q = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i8) #30 ; 0 uses
  %.not = icmp eq i64 %i.n, %.sroa.0.0.copyload.i.i.i.i8
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.r = getelementptr i8, ptr %.val, i64 232
  %.val.val = load ptr, ptr %i.r, align 8, !tbaa !1116
  %i.s = tail call i64 @_ZNK5clang10ASTContext24getObjCObjectPointerTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %.val.val, i64 %i.n) #30 ; 2 uses
  %i.t = icmp ult i64 %i.s, 16
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.016.0 = phi i64 [ %i.s, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.u = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.sroa.016.0, i64 noundef 4, i32 noundef 4) #30
  %i.v = extractvalue { ptr, ptr } %i.u, 1
  %.sroa.0.0.copyload.i.i13 = load i32, ptr %3, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i.i13, ptr %i.v, align 4, !tbaa !795
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.029.1 = phi i64 [ 0, %bb.a ], [ %.sroa.016.0, %bb.d ], [ 0, %bb.c ]
  ret i64 %.sroa.029.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE23TransformObjCObjectTypeERNS_14TypeLocBuilderENS_17ObjCObjectTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::ArrayRef", align 8    ; 5 uses
  %5 = alloca %"class.llvm::ArrayRef.2689", align 8 ; 5 uses
  %6 = alloca %"class.clang::ObjCObjectTypeLoc", align 8 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.2684", align 8 ; 15 uses
  %8 = alloca %"class.llvm::SmallVector.2597", align 8 ; 10 uses
  %9 = alloca %"class.clang::TypeLoc", align 8    ; 9 uses
  %10 = alloca %"class.clang::TypeLocBuilder", align 8 ; 14 uses
  %11 = alloca %"class.clang::TypeLocBuilder", align 8 ; 14 uses
  store ptr %2, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !788 ; 2 uses
  %i.c = ptrtoint ptr %3 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 16             ; 2 uses
  %i.f = lshr i32 %i.e, 16
  %i.g = and i32 %i.f, 1016
  %i.h = lshr i32 %i.e, 24
  %i.i = add nuw nsw i32 %i.h, 20
  %.lhs.trunc.i.i.i.i = add nuw nsw i32 %i.i, %i.g
  %.zext.i.i.i.i = and i32 %.lhs.trunc.i.i.i.i, 2040
  %i.j = add nuw nsw i32 %.zext.i.i.i.i, 8
  %i.k = zext nneg i32 %i.j to i64
  %i.l = add i64 %i.k, %i.c                       ; 2 uses
  %i.m = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #30
  %i.n = icmp ne i64 %i.l, 0
  %i.o = zext i1 %i.n to i64                      ; 2 uses
  %i.p = sub i64 %i.l, %i.o
  %i.q = zext i32 %i.m to i64                     ; 2 uses
  %i.r = udiv i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.o
  %i.t = mul i64 %i.s, %i.q
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr
  %i.w = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.v, ptr %i.u) ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  br i1 %i.x, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i.i80 = load i64, ptr %i.b, align 8, !tbaa !788 ; 2 uses
  %i.y = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i80) #30 ; 0 uses
  %i.z = icmp ne i64 %i.w, %.sroa.0.0.copyload.i.i.i.i80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !858
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 11 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !859
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 4 uses
  store i32 4, ptr %i.ac, align 4, !tbaa !876
  %i.ad = load i32, ptr %i.d, align 16
  %i.ae = lshr i32 %i.ad, 19
  %i.af = and i32 %i.ae, 127                      ; 2 uses
  %.not195 = icmp eq i32 %i.af, 0
  br i1 %.not195, label %.thread190, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 60
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 60
  %i.au = zext nneg i32 %i.af to i64
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 2 uses
  %.066198 = phi i1 [ %i.z, %.lr.ph ], [ %.369.jt4, %bb.y ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1778 ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ax, align 8, !tbaa !788 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.az = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 3 uses
  %i.ba = and i64 %.sroa.0.0.copyload.i, 15
  %.not.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %bb.n

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %bb.c
  %i.bb = load ptr, ptr %i.az, align 16, !tbaa !791 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i8, ptr %i.bc, align 16
  %i.be = icmp eq i8 %i.bd, 36
  br i1 %i.be, label %._crit_edge215, label %bb.n

._crit_edge215:                                   ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !2407
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store ptr %i.al, ptr %8, align 8, !tbaa !858
  store i32 0, ptr %i.am, align 8, !tbaa !859
  store i32 2, ptr %i.an, align 4, !tbaa !876
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %.sroa.0.0.copyload.i89 = load i64, ptr %i.bf, align 16, !tbaa !788
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksENS_8QualTypeERN4llvm15SmallVectorImplISt4pairINS2_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.pre, i64 %.sroa.0.0.copyload.i89, ptr noundef nonnull align 8 dereferenceable(16) %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %.sroa.0.0.copyload.i.i.i.i90 = load i64, ptr %i.bg, align 16, !tbaa !788 ; 2 uses
  %i.bh = ptrtoint ptr %i.ay to i64
  %i.bi = add i64 %i.bh, 4                        ; 2 uses
  %i.bj = call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i90) #30
  %i.bk = icmp ne i64 %i.bi, 0
  %i.bl = zext i1 %i.bk to i64                    ; 2 uses
  %i.bm = sub i64 %i.bi, %i.bl
  %i.bn = zext i32 %i.bj to i64                   ; 2 uses
  %i.bo = udiv i64 %i.bm, %i.bn
  %i.bp = add i64 %i.bo, %i.bl
  %i.bq = mul i64 %i.bp, %i.bn
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i90 to ptr
  store ptr %i.bs, ptr %9, align 8
  store ptr %i.br, ptr %i.ao, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !788
  %i.bv = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #30 ; 0 uses
  %i.bw = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #30 ; 0 uses
  %.val78 = load ptr, ptr %0, align 8, !tbaa !2407
  %i.bx = getelementptr inbounds nuw i8, ptr %.val78, i64 13800 ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.bx, align 4, !tbaa !795 ; 2 uses
  store i32 0, ptr %i.bx, align 4, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store ptr %i.ap, ptr %10, align 8, !tbaa !1897
  store i64 32, ptr %i.aq, align 8, !tbaa !1898
  store i64 32, ptr %i.ar, align 8, !tbaa !1899
  store i32 0, ptr %i.as, align 8, !tbaa !1900
  store i8 0, ptr %i.at, align 4, !tbaa !1901
  %i.by = load ptr, ptr %9, align 8, !tbaa !2649
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %i.bz) #30
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = load i64, ptr %i.aq, align 8, !tbaa !1898
  %i.cd = icmp ult i64 %i.cc, %i.cb
  br i1 %i.cd, label %bb.d, label %_ZN5clang14TypeLocBuilder7reserveEm.exit

bb.d:                                             ; preds = %._crit_edge215
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %10, i64 noundef %i.cb) #30
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit

_ZN5clang14TypeLocBuilder7reserveEm.exit:         ; preds = %._crit_edge215, %bb.d
  %.sroa.041.0.copyload = load ptr, ptr %9, align 8, !tbaa !100
  %.sroa.242.0.copyload = load ptr, ptr %i.ao, align 8, !tbaa !100
  %i.ce = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %10, ptr %.sroa.041.0.copyload, ptr %.sroa.242.0.copyload) ; 2 uses
  %i.cf = icmp ult i64 %i.ce, 16
  br i1 %i.cf, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1, label %bb.e

bb.e:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %i.cg = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 232
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.cj = call i64 @_ZNK5clang10ASTContext20getPackExpansionTypeENS_8QualTypeENS_16OptionalUnsignedIjEEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.ci, i64 %i.ce, i32 %i.bu, i1 noundef zeroext true) #30 ; 2 uses
  %i.ck = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.cj, i64 noundef 4, i32 noundef 4) #30
  %i.cl = extractvalue { ptr, ptr } %i.ck, 1
  %.sroa.0.0.copyload.i95 = load i32, ptr %i.ay, align 8, !tbaa !795
  store i32 %.sroa.0.0.copyload.i95, ptr %i.cl, align 4, !tbaa !795
  %i.cm = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 232
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.cp = load i64, ptr %i.aq, align 8, !tbaa !1898
  %i.cq = load i64, ptr %i.ar, align 8, !tbaa !1899
  %i.cr = sub i64 %i.cp, %i.cq                    ; 2 uses
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.co, i64 %i.cj, i32 noundef %i.cs) #30 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %10, align 8, !tbaa !1897
  %i.cw = load i64, ptr %i.ar, align 8, !tbaa !1899
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr align 1 %i.cx, i64 %i.cr, i1 false)
  %i.cy = load i32, ptr %i.ab, align 8, !tbaa !859 ; 2 uses
  %i.cz = load i32, ptr %i.ac, align 4, !tbaa !876
  %.not.i96 = icmp ult i32 %i.cy, %i.cz
  br i1 %.not.i96, label %bb.g, label %bb.f, !prof !856

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.ct)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4

bb.g:                                             ; preds = %bb.e
  %i.da = zext i32 %i.cy to i64
  %i.db = load ptr, ptr %7, align 8, !tbaa !858
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.da
  store ptr %i.ct, ptr %i.dc, align 1
  %i.dd = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.ab, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4

_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4: ; preds = %bb.g, %bb.f
  %i.df = load ptr, ptr %10, align 8, !tbaa !1897 ; 3 uses
  %.not.i97.jt4 = icmp eq ptr %i.df, %i.ap
  %i.dg = icmp eq ptr %i.df, null
  %or.cond.i.jt4 = or i1 %.not.i97.jt4, %i.dg
  br i1 %or.cond.i.jt4, label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4, label %bb.h

_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1: ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %i.dh = load ptr, ptr %10, align 8, !tbaa !1897 ; 3 uses
  %.not.i97.jt1 = icmp eq ptr %i.dh, %i.ap
  %i.di = icmp eq ptr %i.dh, null
  %or.cond.i.jt1 = or i1 %.not.i97.jt1, %i.di
  br i1 %or.cond.i.jt1, label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4
  call void @_ZdaPv(ptr noundef nonnull %i.df) #32
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1
  call void @_ZdaPv(ptr noundef nonnull %i.dh) #32
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1

_ZN5clang14TypeLocBuilderD2Ev.exit.jt4:           ; preds = %bb.h, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.bx, align 8, !tbaa !795
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.dj = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.al
  br i1 %i.dk, label %bb.l, label %bb.j

_ZN5clang14TypeLocBuilderD2Ev.exit.jt1:           ; preds = %bb.i, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.bx, align 8, !tbaa !795
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.dl = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.al
  br i1 %i.dm, label %bb.m, label %bb.k

bb.j:                                             ; preds = %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4
  call void @free(ptr noundef %i.dj) #30
  br label %bb.l

bb.k:                                             ; preds = %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1
  call void @free(ptr noundef %i.dl) #30
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.y

bb.m:                                             ; preds = %bb.k, %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.loopexit

bb.n:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store ptr %i.ag, ptr %11, align 8, !tbaa !1897
  store i64 32, ptr %i.ah, align 8, !tbaa !1898
  store i64 32, ptr %i.ai, align 8, !tbaa !1899
  store i32 0, ptr %i.aj, align 8, !tbaa !1900
  store i8 0, ptr %i.ak, align 4, !tbaa !1901
  %i.dn = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i) #30
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %i.dp = load i64, ptr %i.ah, align 8, !tbaa !1898
  %i.dq = icmp ult i64 %i.dp, %i.do
  br i1 %i.dq, label %bb.o, label %_ZN5clang14TypeLocBuilder7reserveEm.exit106

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %11, i64 noundef %i.do) #30
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit106

_ZN5clang14TypeLocBuilder7reserveEm.exit106:      ; preds = %bb.n, %bb.o
  %i.dr = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %11, ptr %i.az, ptr nonnull %i.ay) ; 3 uses
  %i.ds = icmp ult i64 %i.dr, 16
  br i1 %i.ds, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit111.jt1, label %bb.p

bb.p:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit106
  %i.dt = icmp eq i64 %i.dr, %.sroa.0.0.copyload.i
  br i1 %i.dt, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.du = load i32, ptr %i.ab, align 8, !tbaa !859 ; 2 uses
  %i.dv = load i32, ptr %i.ac, align 4, !tbaa !876
  %.not.i110 = icmp ult i32 %i.du, %i.dv
  br i1 %.not.i110, label %bb.s, label %bb.r, !prof !856

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.ax)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit111.jt4

bb.s:                                             ; preds = %bb.q
  %i.dw = zext i32 %i.du to i64
  %i.dx = load ptr, ptr %7, align 8, !tbaa !858
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw
  store ptr %i.ax, ptr %i.dy, align 1
end_hunk_4
begin_hunk_5_@_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit

_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i91, %bb.s, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i101, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i112
  %.sroa.6.0.i.i = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i91 ], [ %.0.copyload.i14.i.i, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i101 ], [ %.0.copyload.i.i.i92, %bb.s ], [ %.0.copyload.i16.i.i, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i112 ]
  call void @_ZN5clang12CXXScopeSpec6ExtendERNS_10ASTContextEPNS_17NamespaceBaseDeclENS_14SourceLocationES5_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.cp, ptr noundef %.0.i, i32 %.sroa.0.0.i.i67.ph, i32 %.sroa.6.0.i.i) #30
  br label %bb.bg

bb.v:                                             ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit
  %i.ef = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 232
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.ei = call i32 @_ZNK5clang22NestedNameSpecifierLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #30
  call void @_ZN5clang12CXXScopeSpec10MakeGlobalERNS_10ASTContextENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.eh, i32 %i.ei) #30
  br label %bb.bg

_ZNK5clang19NestedNameSpecifier15getAsRecordDeclEv.exit: ; preds = %bb.h
  %i.ej = load ptr, ptr %i.y, align 8, !tbaa !2065, !noalias !4587 ; 3 uses
  %i.ek = load ptr, ptr %i.z, align 8, !tbaa !2416, !noalias !4587 ; 2 uses
  %i.el = load i32, ptr %i.aa, align 4, !tbaa !2028, !noalias !4587 ; 4 uses
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %.loopexit.i.i.i117, label %bb.w

bb.w:                                             ; preds = %_ZNK5clang19NestedNameSpecifier15getAsRecordDeclEv.exit
  %i.en = add i32 %i.el, -1                       ; 2 uses
  %i.eo = mul i64 %i.ao, -4658895280553007687     ; 2 uses
  %i.ep = lshr i64 %i.eo, 31
  %i.eq = xor i64 %i.ep, %i.eo
  %i.er = trunc i64 %i.eq to i32
  %i.es = and i32 %i.en, %i.er                    ; 3 uses
  %i.et = zext i32 %i.es to i64                   ; 2 uses
  %i.eu = lshr i64 %i.et, 5
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !795, !noalias !4588
  %i.ex = and i32 %i.es, 31
  %i.ey = lshr i32 %i.ew, %i.ex
  %i.ez = trunc i32 %i.ey to i1
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i123, label %.loopexit.i.i.i117, !prof !854

.lr.ph.i.i.i.i.i123:                              ; preds = %bb.w, %bb.x
  %i.fa = phi i64 [ %i.fg, %bb.x ], [ %i.et, %bb.w ]
  %.017.i.i.i.i.i124 = phi i32 [ %i.ff, %bb.x ], [ %i.es, %bb.w ]
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.fa ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !855, !noalias !4588
  %i.fd = icmp eq ptr %i.fc, %i.ap
  br i1 %i.fd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i125, label %bb.x, !prof !856

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i123
  %i.fe = add nuw i32 %.017.i.i.i.i.i124, 1
  %i.ff = and i32 %i.fe, %i.en                    ; 3 uses
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = lshr i64 %i.fg, 5
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !795, !noalias !4588
  %i.fk = and i32 %i.ff, 31
  %i.fl = lshr i32 %i.fj, %i.fk
  %i.fm = trunc i32 %i.fl to i1
  br i1 %i.fm, label %.lr.ph.i.i.i.i.i123, label %.loopexit.i.i.i117, !prof !857

.loopexit.i.i.i117:                               ; preds = %bb.x, %bb.w, %_ZNK5clang19NestedNameSpecifier15getAsRecordDeclEv.exit
  %i.fn = zext i32 %i.el to i64                   ; 2 uses
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.fn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i125: ; preds = %.lr.ph.i.i.i.i.i123
  %.pre.i126 = zext i32 %i.el to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i125, %.loopexit.i.i.i117
  %.pre-phi.i119 = phi i64 [ %.pre.i126, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i125 ], [ %i.fn, %.loopexit.i.i.i117 ]
  %.lcssa.sink.i.i.i120 = phi ptr [ %i.fb, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i125 ], [ %i.fo, %.loopexit.i.i.i117 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %.pre-phi.i119
  %.not.i121 = icmp eq ptr %.lcssa.sink.i.i.i120, %i.fp
  br i1 %.not.i121, label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit127, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118
  %i.fq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i120, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit127

_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit127: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118, %bb.y
  %.0.i122 = phi ptr [ %i.fr, %bb.y ], [ %i.ap, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118 ]
  %i.fs = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 232
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.fv = call i32 @_ZNK5clang22NestedNameSpecifierLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #30
  %i.fw = load i64, ptr %12, align 8, !tbaa !2705 ; 5 uses
  %i.fx = icmp ugt i64 %i.fw, 7
  br i1 %i.fx, label %bb.z, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i128

bb.z:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit127
  %i.fy = trunc i64 %i.fw to i32
  %i.fz = lshr i32 %i.fy, 1
  %i.ga = and i32 %i.fz, 3
  switch i32 %i.ga, label %default.unreachable529 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i151
    i32 3, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147
    i32 2, label %.lr.ph.i.i.i133.preheader
  ]

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i128: ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit127
  %i.gb = icmp samesign ult i64 %i.fw, 2
  br i1 %i.gb, label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i128
  %i.gc = load ptr, ptr %i.q, align 8, !tbaa !2706
  %.0.copyload.i.i.i129 = load i32, ptr %i.gc, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147: ; preds = %bb.z
  %i.gd = and i64 %i.fw, -8
  %i.ge = inttoptr i64 %i.gd to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i148 = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %.sroa.3.0.copyload.i.i.i149 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i148, align 8, !tbaa !815 ; 2 uses
  %.not8.i.i.i150 = icmp eq i64 %.sroa.3.0.copyload.i.i.i149, 0
  br i1 %.not8.i.i.i150, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139, label %.lr.ph.i.i.i133.preheader

.lr.ph.i.i.i133.preheader:                        ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147, %bb.z
  %storemerge9.i.i.i135.ph = phi i64 [ 2, %bb.z ], [ %.sroa.3.0.copyload.i.i.i149, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147 ]
  br label %.lr.ph.i.i.i133

.lr.ph.i.i.i133:                                  ; preds = %.lr.ph.i.i.i133.preheader, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141
  %.010.i.i.i134 = phi i32 [ %i.gi, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141 ], [ 0, %.lr.ph.i.i.i133.preheader ]
  %storemerge9.i.i.i135 = phi i64 [ %.sroa.3.0.i.i.i.i142, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141 ], [ %storemerge9.i.i.i135.ph, %.lr.ph.i.i.i133.preheader ] ; 4 uses
  %i.gf = icmp ugt i64 %storemerge9.i.i.i135, 7   ; 2 uses
  %i.gg = and i64 %storemerge9.i.i.i135, 6
  %i.gh = icmp eq i64 %i.gg, 0
  %spec.select.i.i.i.i136 = select i1 %i.gh, i32 12, i32 8
  %.0.i.i.i.i137 = select i1 %i.gf, i32 %spec.select.i.i.i.i136, i32 4
  %i.gi = add i32 %.0.i.i.i.i137, %.010.i.i.i134  ; 2 uses
  br i1 %i.gf, label %bb.ab, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138

bb.ab:                                            ; preds = %.lr.ph.i.i.i133
  %i.gj = trunc i64 %storemerge9.i.i.i135 to i32
  %i.gk = lshr i32 %i.gj, 1
  %i.gl = and i32 %i.gk, 3
  switch i32 %i.gl, label %default.unreachable529 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138
    i32 3, label %bb.ac
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.gm = and i64 %storemerge9.i.i.i135, -8
  %i.gn = inttoptr i64 %i.gm to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i144 = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.sroa.3.0.copyload.i.i.i.i145 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i144, align 8, !tbaa !815
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141: ; preds = %bb.ac, %bb.ab
  %.sroa.3.0.i.i.i.i142 = phi i64 [ %.sroa.3.0.copyload.i.i.i.i145, %bb.ac ], [ 2, %bb.ab ] ; 2 uses
  %.not.i.i.i143 = icmp eq i64 %.sroa.3.0.i.i.i.i142, 0
  br i1 %.not.i.i.i143, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138, label %.lr.ph.i.i.i133, !llvm.loop !42

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141, %bb.ab, %bb.ab, %.lr.ph.i.i.i133
  %i.go = add i32 %i.gi, 4
  %i.gp = zext i32 %i.go to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139: ; preds = %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147, %bb.z
  %i.gq = phi i64 [ 4, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147 ], [ 4, %bb.z ], [ %i.gp, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138 ]
  %i.gr = load ptr, ptr %i.q, align 8, !tbaa !2706
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gq
  %.0.copyload.i14.i.i140 = load i32, ptr %i.gs, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i151: ; preds = %bb.z
  %i.gt = load ptr, ptr %i.q, align 8, !tbaa !2706
  %.0.copyload.i15.i.i152 = load ptr, ptr %i.gt, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.gu = and i64 %i.fw, -8
  %i.gv = inttoptr i64 %i.gu to ptr
  store ptr %i.gv, ptr %7, align 8, !tbaa !2649
  store ptr %.0.copyload.i15.i.i152, ptr %i.ab, align 8, !tbaa !2648
  %i.gw = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #30 ; 0 uses
  %i.gx = load ptr, ptr %i.q, align 8, !tbaa !2706
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %.0.copyload.i16.i.i153 = load i32, ptr %i.gy, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit

_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i128, %bb.aa, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i151
  %.sroa.6.0.i.i130 = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i128 ], [ %.0.copyload.i14.i.i140, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139 ], [ %.0.copyload.i.i.i129, %bb.aa ], [ %.0.copyload.i16.i.i153, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i151 ]
  call void @_ZN5clang12CXXScopeSpec18MakeMicrosoftSuperERNS_10ASTContextEPNS_13CXXRecordDeclENS_14SourceLocationES5_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.fu, ptr noundef %.0.i122, i32 %i.fv, i32 %.sroa.6.0.i.i130) #30
  br label %bb.bg

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread261: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.gz = and i64 %.sroa.0.0.copyload.i, -8       ; 3 uses
  %i.ha = inttoptr i64 %i.gz to ptr               ; 9 uses
  %.0.copyload.i.i = load ptr, ptr %.sroa.2.0.copyload.i, align 1 ; 7 uses
  store ptr %i.ha, ptr %13, align 8
  store ptr %.0.copyload.i.i, ptr %i.r, align 8
  %i.hb = and i64 %.sroa.0.0.copyload.i, 8
  %.not.i.i156 = icmp eq i64 %i.hb, 0             ; 2 uses
  br i1 %.not.i.i156, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %bb.am

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread261
  %i.hc = load ptr, ptr %i.ha, align 16, !tbaa !791
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load i8, ptr %i.hd, align 16
  %i.hf = icmp eq i8 %i.he, 20
  br i1 %i.hf, label %bb.ad, label %bb.am

bb.ad:                                            ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.hg, align 16, !tbaa !815 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.0.copyload.i.i, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !2708 ; 2 uses
  %.not284 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not284, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hj = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i.i, ptr %i.hi, i64 %3, ptr noundef %4) ; 2 uses
  %i.hk = extractvalue { i64, ptr } %i.hj, 0      ; 2 uses
  %i.hl = extractvalue { i64, ptr } %i.hj, 1
  %.not285 = icmp eq i64 %i.hk, 0
  br i1 %.not285, label %.critedge53, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.8.0 = phi ptr [ %i.hi, %bb.ad ], [ %i.hl, %bb.ae ]
  %.sroa.0243.0 = phi i64 [ 0, %bb.ad ], [ %i.hk, %bb.ae ]
  %.1 = phi ptr [ %4, %bb.ad ], [ null, %bb.ae ]
  %.sroa.043.1 = phi i64 [ %3, %bb.ad ], [ 0, %bb.ae ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %11, i64 %.sroa.0243.0, ptr %.sroa.8.0) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !2710
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.copyload.i.i, i64 16
  %.sroa.0.0.copyload.i161 = load i32, ptr %i.ho, align 8, !tbaa !795
  %i.hp = load i64, ptr %12, align 8, !tbaa !2705 ; 5 uses
  %i.hq = icmp ugt i64 %i.hp, 7
  br i1 %i.hq, label %bb.ag, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i162

bb.ag:                                            ; preds = %bb.af
  %i.hr = trunc i64 %i.hp to i32
  %i.hs = lshr i32 %i.hr, 1
  %i.ht = and i32 %i.hs, 3
  switch i32 %i.ht, label %default.unreachable529 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i185
    i32 3, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181
    i32 2, label %.lr.ph.i.i.i167.preheader
  ]

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i162: ; preds = %bb.af
  %i.hu = icmp samesign ult i64 %i.hp, 2
  br i1 %i.hu, label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i162
  %i.hv = load ptr, ptr %i.q, align 8, !tbaa !2706
  %.0.copyload.i.i.i163 = load i32, ptr %i.hv, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181: ; preds = %bb.ag
  %i.hw = and i64 %i.hp, -8
  %i.hx = inttoptr i64 %i.hw to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i182 = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %.sroa.3.0.copyload.i.i.i183 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i182, align 8, !tbaa !815 ; 2 uses
  %.not8.i.i.i184 = icmp eq i64 %.sroa.3.0.copyload.i.i.i183, 0
  br i1 %.not8.i.i.i184, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173, label %.lr.ph.i.i.i167.preheader

.lr.ph.i.i.i167.preheader:                        ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181, %bb.ag
  %storemerge9.i.i.i169.ph = phi i64 [ 2, %bb.ag ], [ %.sroa.3.0.copyload.i.i.i183, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181 ]
  br label %.lr.ph.i.i.i167

.lr.ph.i.i.i167:                                  ; preds = %.lr.ph.i.i.i167.preheader, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175
  %.010.i.i.i168 = phi i32 [ %i.ib, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175 ], [ 0, %.lr.ph.i.i.i167.preheader ]
  %storemerge9.i.i.i169 = phi i64 [ %.sroa.3.0.i.i.i.i176, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175 ], [ %storemerge9.i.i.i169.ph, %.lr.ph.i.i.i167.preheader ] ; 4 uses
  %i.hy = icmp ugt i64 %storemerge9.i.i.i169, 7   ; 2 uses
  %i.hz = and i64 %storemerge9.i.i.i169, 6
  %i.ia = icmp eq i64 %i.hz, 0
  %spec.select.i.i.i.i170 = select i1 %i.ia, i32 12, i32 8
  %.0.i.i.i.i171 = select i1 %i.hy, i32 %spec.select.i.i.i.i170, i32 4
  %i.ib = add i32 %.0.i.i.i.i171, %.010.i.i.i168  ; 2 uses
  br i1 %i.hy, label %bb.ai, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172

bb.ai:                                            ; preds = %.lr.ph.i.i.i167
  %i.ic = trunc i64 %storemerge9.i.i.i169 to i32
  %i.id = lshr i32 %i.ic, 1
  %i.ie = and i32 %i.id, 3
  switch i32 %i.ie, label %default.unreachable529 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172
    i32 3, label %bb.aj
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.if = and i64 %storemerge9.i.i.i169, -8
  %i.ig = inttoptr i64 %i.if to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i178 = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %.sroa.3.0.copyload.i.i.i.i179 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i178, align 8, !tbaa !815
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175: ; preds = %bb.aj, %bb.ai
  %.sroa.3.0.i.i.i.i176 = phi i64 [ %.sroa.3.0.copyload.i.i.i.i179, %bb.aj ], [ 2, %bb.ai ] ; 2 uses
  %.not.i.i.i177 = icmp eq i64 %.sroa.3.0.i.i.i.i176, 0
  br i1 %.not.i.i.i177, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172, label %.lr.ph.i.i.i167, !llvm.loop !42

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175, %bb.ai, %bb.ai, %.lr.ph.i.i.i167
  %i.ih = add i32 %i.ib, 4
  %i.ii = zext i32 %i.ih to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173: ; preds = %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181, %bb.ag
  %i.ij = phi i64 [ 4, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181 ], [ 4, %bb.ag ], [ %i.ii, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172 ]
  %i.ik = load ptr, ptr %i.q, align 8, !tbaa !2706
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ij
  %.0.copyload.i14.i.i174 = load i32, ptr %i.il, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i185: ; preds = %bb.ag
  %i.im = load ptr, ptr %i.q, align 8, !tbaa !2706
  %.0.copyload.i15.i.i186 = load ptr, ptr %i.im, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.in = and i64 %i.hp, -8
  %i.io = inttoptr i64 %i.in to ptr
  store ptr %i.io, ptr %6, align 8, !tbaa !2649
  %i.ip = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.0.copyload.i15.i.i186, ptr %i.ip, align 8, !tbaa !2648
  %i.iq = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #30 ; 0 uses
  %i.ir = load ptr, ptr %i.q, align 8, !tbaa !2706
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %.0.copyload.i16.i.i187 = load i32, ptr %i.is, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188

_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i162, %bb.ah, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i185
  %.sroa.6.0.i.i164 = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i162 ], [ %.0.copyload.i14.i.i174, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173 ], [ %.0.copyload.i.i.i163, %bb.ah ], [ %.0.copyload.i16.i.i187, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i185 ]
  %i.it = inttoptr i64 %.sroa.043.1 to ptr
  store ptr %i.it, ptr %14, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.hn, ptr %i.iu, align 8, !tbaa !2712
  %i.iv = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %.sroa.0.0.copyload.i161, ptr %i.iv, align 8, !tbaa !795
  %i.iw = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 %.sroa.6.0.i.i164, ptr %i.iw, align 4, !tbaa !795
  %i.ix = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.iy = call noundef zeroext i1 @_ZN5clang4Sema27BuildCXXNestedNameSpecifierEPNS_5ScopeERNS0_18NestedNameSpecInfoEbRNS_12CXXScopeSpecEPNS_9NamedDeclEbPbb(ptr noundef nonnull align 8 dereferenceable(18640) %i.ix, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %14, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %.1, i1 noundef zeroext false, ptr noundef null, i1 noundef zeroext false) #30
  br i1 %i.iy, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188
  %i.iz = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 232
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.jc = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.jb) #30 ; 2 uses
  %i.jd = extractvalue { i64, ptr } %i.jc, 0
  %i.je = extractvalue { i64, ptr } %i.jc, 1
  br label %bb.al

bb.al:                                            ; preds = %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188, %bb.ak
  %.sroa.13.1 = phi ptr [ %i.je, %bb.ak ], [ null, %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188 ]
  %.sroa.0259.1 = phi i64 [ %i.jd, %bb.ak ], [ 0, %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %.critedge53

bb.am:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread261, %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  store i64 %i.gz, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  store ptr %i.s, ptr %16, align 8, !tbaa !1897
  store i64 32, ptr %i.t, align 8, !tbaa !1898
  store i64 32, ptr %i.u, align 8, !tbaa !1899
  store i32 0, ptr %i.v, align 8, !tbaa !1900
  store i8 0, ptr %i.w, align 4, !tbaa !1901
  %i.jf = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.jf, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %.not.i.i156, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i:     ; preds = %bb.an
  %i.jg = load ptr, ptr %i.ha, align 16, !tbaa !791
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load i8, ptr %i.jh, align 16
  switch i8 %i.ji, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i [
    i8 50, label %bb.ao
    i8 20, label %bb.ap
  ]

bb.ao:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.jj = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE35TransformTemplateSpecializationTypeERNS_14TypeLocBuilderENS_29TemplateSpecializationTypeLocENS_8QualTypeEPNS_9NamedDeclEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %16, ptr nonnull %i.ha, ptr %.0.copyload.i.i, i64 %3, ptr noundef %4, i1 noundef zeroext true), !inline_history !43
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

bb.ap:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.jk = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %16, ptr nonnull %i.ha, ptr %.0.copyload.i.i, i1 noundef zeroext false, i64 %3, ptr noundef %4), !inline_history !43
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, %bb.an
  %i.jl = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %16, ptr %i.ha, ptr %.0.copyload.i.i), !inline_history !43
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit: ; preds = %bb.ao, %bb.ap, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i
  %.sroa.014.0.i = phi i64 [ %i.jl, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i ], [ %i.jj, %bb.ao ], [ %i.jk, %bb.ap ] ; 4 uses
  store i64 %.sroa.014.0.i, ptr %15, align 8, !tbaa !788
  %i.jm = icmp ult i64 %.sroa.014.0.i, 16
  br i1 %i.jm, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit
  %i.jn = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 232
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !1116, !nonnull !97, !align !787 ; 2 uses
  %i.jq = load i64, ptr %i.t, align 8, !tbaa !1898
  %i.jr = load i64, ptr %i.u, align 8, !tbaa !1899 ; 2 uses
  %i.js = sub i64 %i.jq, %i.jr                    ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 2632 ; 3 uses
  %i.ju = add i64 %i.js, 7
  %i.jv = and i64 %i.ju, -8                       ; 2 uses
  %i.jw = load ptr, ptr %i.jt, align 8, !tbaa !1522 ; 2 uses
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = add i64 %i.jv, %i.jx                    ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jp, i64 2640
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !1523
  %i.kb = icmp ult i64 %i.jy, %i.ka
  br i1 %i.kb, label %bb.ar, label %bb.as, !prof !856

bb.ar:                                            ; preds = %bb.aq
  %i.kc = inttoptr i64 %i.jy to ptr
  store ptr %i.kc, ptr %i.jt, align 8, !tbaa !1522
  br label %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit

bb.as:                                            ; preds = %bb.aq
  %i.kd = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.jt, i64 noundef %i.js, i64 noundef %i.jv, i8 3)
  %.pre.i189 = load i64, ptr %i.u, align 8, !tbaa !1899
  br label %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit

_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit: ; preds = %bb.ar, %bb.as
  %i.ke = phi i64 [ %i.jr, %bb.ar ], [ %.pre.i189, %bb.as ]
  %.0.i.i.i.i190 = phi ptr [ %i.jw, %bb.ar ], [ %i.kd, %bb.as ] ; 3 uses
  %i.kf = load ptr, ptr %16, align 8, !tbaa !1897
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.ke
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i.i190, ptr align 1 %i.kg, i64 %i.js, i1 false)
  %i.kh = inttoptr i64 %.sroa.014.0.i to ptr      ; 2 uses
  store ptr %i.kh, ptr %13, align 8, !tbaa !100
  store ptr %.0.i.i.i.i190, ptr %i.r, align 8, !tbaa !100
  br label %bb.at

bb.at:                                            ; preds = %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit, %bb.am
  %.sroa.2.0.copyload370 = phi ptr [ %.0.i.i.i.i190, %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit ], [ %.0.copyload.i.i, %bb.am ] ; 2 uses
  %.sroa.07.0.copyload368 = phi ptr [ %i.kh, %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit ], [ %i.ha, %bb.am ] ; 2 uses
  %.0.copyload.i.i.i.i.i = phi i64 [ %.sroa.014.0.i, %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit ], [ %i.gz, %bb.am ]
  %i.ki = and i64 %.0.copyload.i.i.i.i.i, -16
  %i.kj = inttoptr i64 %i.ki to ptr
  %i.kk = load ptr, ptr %i.kj, align 16, !tbaa !791 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 17
  %i.km = load i16, ptr %i.kl, align 1
  %i.kn = and i16 %i.km, 4
  %.not281 = icmp eq i16 %i.kn, 0
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ko, align 8, !tbaa !788 ; 2 uses
  br i1 %.not281, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.kp = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.kq = inttoptr i64 %i.kp to ptr
  %i.kr = load ptr, ptr %i.kq, align 16, !tbaa !791
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load i8, ptr %i.ks, align 16            ; 2 uses
  %i.ku = icmp eq i8 %i.kt, 49
  %.pre366.pre374 = load ptr, ptr %0, align 8, !tbaa !2407 ; 3 uses
  br i1 %i.ku, label %.critedge55, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kv = getelementptr inbounds nuw i8, ptr %.pre366.pre374, i64 216
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.kx = load i64, ptr %i.kw, align 8
  %i.ky = and i64 %i.kx, 8192
  %.not = icmp ne i64 %i.ky, 0
  %i.kz = icmp eq i8 %i.kt, 47
  %or.cond = and i1 %i.kz, %.not
  br i1 %or.cond, label %.thread, label %bb.bc

bb.aw:                                            ; preds = %bb.at
  %.pre366.pre = load ptr, ptr %0, align 8, !tbaa !2407 ; 2 uses
  %.pre376 = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %.pre377 = inttoptr i64 %.pre376 to ptr
  %.pre506 = load ptr, ptr %.pre377, align 16, !tbaa !791
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre506, i64 16
  %.pre507 = load i8, ptr %.phi.trans.insert, align 16
  %i.la = icmp eq i8 %.pre507, 47
  br i1 %i.la, label %.thread, label %.critedge55

.thread:                                          ; preds = %bb.av, %bb.aw
  %.pre366531 = phi ptr [ %.pre366.pre, %bb.aw ], [ %.pre366.pre374, %bb.av ]
  %i.lb = getelementptr inbounds nuw i8, ptr %.pre366531, i64 8
  %i.lc = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #30
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.lb, i32 %i.lc, i32 noundef 6967) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %17) #30
  %.pre365 = load ptr, ptr %0, align 8, !tbaa !2407
  %.sroa.07.0.copyload.pre = load ptr, ptr %13, align 8, !tbaa !100
  %.sroa.2.0.copyload.pre = load ptr, ptr %i.r, align 8, !tbaa !100
  br label %.critedge55

.critedge55:                                      ; preds = %bb.au, %.thread, %bb.aw
  %.sroa.2.0.copyload = phi ptr [ %.sroa.2.0.copyload.pre, %.thread ], [ %.sroa.2.0.copyload370, %bb.aw ], [ %.sroa.2.0.copyload370, %bb.au ]
  %.sroa.07.0.copyload = phi ptr [ %.sroa.07.0.copyload.pre, %.thread ], [ %.sroa.07.0.copyload368, %bb.aw ], [ %.sroa.07.0.copyload368, %bb.au ]
  %i.ld = phi ptr [ %.pre365, %.thread ], [ %.pre366.pre, %bb.aw ], [ %.pre366.pre374, %bb.au ]
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 232
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.lg = load i64, ptr %12, align 8, !tbaa !2705 ; 5 uses
  %i.lh = icmp ugt i64 %i.lg, 7
  br i1 %i.lh, label %bb.ax, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i198

bb.ax:                                            ; preds = %.critedge55
  %i.li = trunc i64 %i.lg to i32
  %i.lj = lshr i32 %i.li, 1
  %i.lk = and i32 %i.lj, 3
  switch i32 %i.lk, label %default.unreachable529 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i209
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i221
    i32 3, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i217
    i32 2, label %.lr.ph.i.i.i203.preheader
  ]

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i198: ; preds = %.critedge55
  %i.ll = icmp samesign ult i64 %i.lg, 2
  br i1 %i.ll, label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit224, label %bb.ay

bb.ay:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i198
  %i.lm = load ptr, ptr %i.q, align 8, !tbaa !2706
  %.0.copyload.i.i.i199 = load i32, ptr %i.lm, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit224

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i217: ; preds = %bb.ax
  %i.ln = and i64 %i.lg, -8
  %i.lo = inttoptr i64 %i.ln to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i218 = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %.sroa.3.0.copyload.i.i.i219 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i218, align 8, !tbaa !815 ; 2 uses
  %.not8.i.i.i220 = icmp eq i64 %.sroa.3.0.copyload.i.i.i219, 0
  br i1 %.not8.i.i.i220, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i209, label %.lr.ph.i.i.i203.preheader

.lr.ph.i.i.i203.preheader:                        ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i217, %bb.ax
  %storemerge9.i.i.i205.ph = phi i64 [ 2, %bb.ax ], [ %.sroa.3.0.copyload.i.i.i219, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i217 ]
  br label %.lr.ph.i.i.i203

.lr.ph.i.i.i203:                                  ; preds = %.lr.ph.i.i.i203.preheader, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211
  %.010.i.i.i204 = phi i32 [ %i.ls, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211 ], [ 0, %.lr.ph.i.i.i203.preheader ]
  %storemerge9.i.i.i205 = phi i64 [ %.sroa.3.0.i.i.i.i212, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211 ], [ %storemerge9.i.i.i205.ph, %.lr.ph.i.i.i203.preheader ] ; 4 uses
  %i.lp = icmp ugt i64 %storemerge9.i.i.i205, 7   ; 2 uses
  %i.lq = and i64 %storemerge9.i.i.i205, 6
  %i.lr = icmp eq i64 %i.lq, 0
  %spec.select.i.i.i.i206 = select i1 %i.lr, i32 12, i32 8
  %.0.i.i.i.i207 = select i1 %i.lp, i32 %spec.select.i.i.i.i206, i32 4
  %i.ls = add i32 %.0.i.i.i.i207, %.010.i.i.i204  ; 2 uses
  br i1 %i.lp, label %bb.az, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i208

bb.az:                                            ; preds = %.lr.ph.i.i.i203
  %i.lt = trunc i64 %storemerge9.i.i.i205 to i32
  %i.lu = lshr i32 %i.lt, 1
  %i.lv = and i32 %i.lu, 3
  switch i32 %i.lv, label %default.unreachable529 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i208
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i208
    i32 3, label %bb.ba
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211
  ]

bb.ba:                                            ; preds = %bb.az
  %i.lw = and i64 %storemerge9.i.i.i205, -8
  %i.lx = inttoptr i64 %i.lw to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i214 = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %.sroa.3.0.copyload.i.i.i.i215 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i214, align 8, !tbaa !815
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211: ; preds = %bb.ba, %bb.az
  %.sroa.3.0.i.i.i.i212 = phi i64 [ %.sroa.3.0.copyload.i.i.i.i215, %bb.ba ], [ 2, %bb.az ] ; 2 uses
  %.not.i.i.i213 = icmp eq i64 %.sroa.3.0.i.i.i.i212, 0
  br i1 %.not.i.i.i213, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i208, label %.lr.ph.i.i.i203, !llvm.loop !42

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i208: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211, %bb.az, %bb.az, %.lr.ph.i.i.i203
  %i.ly = add i32 %i.ls, 4
  %i.lz = zext i32 %i.ly to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i209
end_hunk_5
begin_hunk_6_@_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26RebuildCXXOperatorCallExprENS_22OverloadedOperatorKindENS_14SourceLocationESK_bRKNS_17UnresolvedSetImplEPNS_4ExprESP_:bb.a
    i8 6, label %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155
    i8 5, label %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155
    i8 4, label %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155
    i8 3, label %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155
    i8 2, label %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155
    i8 40, label %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155
    i8 31, label %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155
    i8 30, label %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155
  ]

_ZNK5clang4Type18isOverloadableTypeEv.exit120:    ; preds = %_ZNK5clang4Type18isOverloadableTypeEv.exit113.thread152
  switch i8 %i.de, label %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155 [
    i8 49, label %.critedge
    i8 47, label %.critedge
  ]

_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155: ; preds = %_ZNK5clang4Type18isOverloadableTypeEv.exit120, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v
  %i.df = tail call noundef i32 @_ZN5clang14BinaryOperator19getOverloadedOpcodeENS_22OverloadedOperatorKindE(i32 noundef %1) #30
  %i.dg = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.dh = tail call i64 @_ZN5clang4Sema18CreateBuiltinBinOpENS_14SourceLocationENS_18BinaryOperatorKindEPNS_4ExprES4_b(ptr noundef nonnull align 8 dereferenceable(18640) %i.dg, i32 %2, i32 noundef %i.df, ptr noundef nonnull %.2, ptr noundef nonnull %.182, i1 noundef zeroext false)
  br label %.thread139

.critedge:                                        ; preds = %_ZNK5clang4Type18isOverloadableTypeEv.exit120, %_ZNK5clang4Type18isOverloadableTypeEv.exit120, %_ZNK5clang4Type18isOverloadableTypeEv.exit113, %_ZNK5clang4Type18isOverloadableTypeEv.exit113, %_ZNK5clang4Type18isOverloadableTypeEv.exit97, %_ZNK5clang4Type18isOverloadableTypeEv.exit97, %_ZNK5clang4Type18isOverloadableTypeEv.exit, %_ZNK5clang4Type18isOverloadableTypeEv.exit, %bb.v, %bb.u, %bb.k, %bb.j, %bb.s, %bb.r, %_ZNK5clang4Type18isOverloadableTypeEv.exit106.thread, %bb.q
  %i.di = icmp eq ptr %.182, null
  %or.cond10 = or i1 %i.c, %i.di
  br i1 %or.cond10, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.critedge
  %i.dj = tail call noundef i32 @_ZN5clang13UnaryOperator19getOverloadedOpcodeENS_22OverloadedOperatorKindEb(i32 noundef %1, i1 noundef zeroext %i.c) #30
  %i.dk = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.dl = tail call i64 @_ZN5clang4Sema23CreateOverloadedUnaryOpENS_14SourceLocationENS_17UnaryOperatorKindERKNS_17UnresolvedSetImplEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.dk, i32 %2, i32 noundef %i.dj, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull %.2, i1 noundef zeroext %4) #30
  br label %.thread139

bb.x:                                             ; preds = %.critedge
  %i.dm = tail call noundef i32 @_ZN5clang14BinaryOperator19getOverloadedOpcodeENS_22OverloadedOperatorKindE(i32 noundef %1) #30
  %i.dn = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.do = tail call i64 @_ZN5clang4Sema21CreateOverloadedBinOpENS_14SourceLocationENS_18BinaryOperatorKindERKNS_17UnresolvedSetImplEPNS_4ExprES7_bbPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %i.dn, i32 %2, i32 noundef %i.dm, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull %.2, ptr noundef nonnull %.182, i1 noundef zeroext %4, i1 noundef zeroext true, ptr noundef null) #30
  br label %.thread139

.thread139:                                       ; preds = %bb.x, %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155, %bb.f, %bb.l, %bb.c, %.thread, %bb.w, %.critedge4, %bb.m, %_ZNK5clang4Type18isOverloadableTypeEv.exit97.thread146
  %.sroa.079.6 = phi i64 [ %i.dl, %bb.w ], [ %i.dh, %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155 ], [ %i.az, %_ZNK5clang4Type18isOverloadableTypeEv.exit97.thread146 ], [ 1, %bb.c ], [ %i.bi, %bb.m ], [ %i.ca, %.critedge4 ], [ 1, %bb.l ], [ %i.do, %bb.x ], [ %i.m, %.thread ], [ 1, %bb.f ]
  ret i64 %.sroa.079.6
}

declare i64 @_ZN5clang4Sema24BuildOverloadedArrowExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEPb(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef, i32, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN5clang13UnaryOperator19getOverloadedOpcodeENS_22OverloadedOperatorKindEb(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema14BuildCXXUuidofENS_8QualTypeENS_14SourceLocationEPNS_14TypeSourceInfoES2_(ptr noundef nonnull align 8 dereferenceable(18640), i64, i32, ptr noundef, i32) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema14BuildCXXUuidofENS_8QualTypeENS_14SourceLocationEPNS_4ExprES2_(ptr noundef nonnull align 8 dereferenceable(18640), i64, i32, ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang13CXXRecordDecl13isPolymorphicEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1676 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8 ; 3 uses
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 1
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.e, i64 %i.f, i64 0 ; 3 uses
  %i.g = icmp ugt i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 2
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  %i.i = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, -4
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 18624
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1677 ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2632 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1522 ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = add i64 %i.o, 24                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 2640
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1523
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %bb.f, !prof !856

bb.e:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %i.p to ptr
  store ptr %i.t, ptr %i.m, align 8, !tbaa !1522
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.u to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.o, %bb.e ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.n, %bb.e ] ; 3 uses
  store ptr %i.l, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1679
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !1680
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.b, ptr %i.w, align 8, !tbaa !1681
  %i.x = or i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i, 4
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.y = ptrtoint ptr %i.b to i64
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i

_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.y, %bb.h ], [ %i.x, %bb.g ]
  %i.z = or i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.z, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i, %bb.a
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i = phi i64 [ %i.z, %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %bb.a ] ; 2 uses
  %i.aa = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  %i.ab = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i, -6 ; 2 uses
  %.not.not14.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  %.not.not.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, %.not.not14.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1680
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !1679 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1684 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, %i.ah
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ah, ptr %i.ad, align 8, !tbaa !1680
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !102
  %i.aj = getelementptr i8, ptr %i.ai, i64 152, !nosanitize !97
  %i.ak = load ptr, ptr %i.aj, align 8, !nosanitize !97
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull %i.b) #30, !inline_history !5
  br label %_ZNK5clang13CXXRecordDecl4dataEv.exit

_ZNK5clang13CXXRecordDecl4dataEv.exit:            ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !905
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = and i64 %i.an, 1024
  %i.ap = icmp ne i64 %i.ao, 0
  ret i1 %i.ap
}

declare i64 @_ZN5clang4Sema14BuildCXXTypeIdENS_8QualTypeENS_14SourceLocationEPNS_14TypeSourceInfoES2_(ptr noundef nonnull align 8 dereferenceable(18640), i64, i32, ptr noundef, i32) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema14BuildCXXTypeIdENS_8QualTypeENS_14SourceLocationEPNS_4ExprES2_(ptr noundef nonnull align 8 dereferenceable(18640), i64, i32, ptr noundef, i32) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema13BuildCXXThrowENS_14SourceLocationEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5clang4Sema18MarkThisReferencedEPNS_11CXXThisExprE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5clang4Sema16CheckCXXThisTypeENS_14SourceLocationENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i64) local_unnamed_addr #2

declare noundef ptr @_ZN5clang4Sema16BuildCXXThisExprENS_14SourceLocationENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(18640), i32, i64, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(read, argmem: readwrite)
declare void @_ZNK5clang26CXXRewrittenBinaryOperator17getDecomposedFormEv(ptr dead_on_unwind writable sret(%"struct.clang::CXXRewrittenBinaryOperator::DecomposedForm") align 8, ptr noundef nonnull readonly align 8 dereferenceable(24)) local_unnamed_addr #26

declare i64 @_ZN5clang4Sema28ActOnStartCXXMemberReferenceEPNS_5ScopeEPNS_4ExprENS_14SourceLocationENS_3tok9TokenKindERNS_9OpaquePtrINS_8QualTypeEEERb(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef, i32, i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::TypeLocBuilder", align 8 ; 13 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !788 ; 3 uses
  %i.a = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !1897
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 32, ptr %i.c, align 8, !tbaa !1898
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 32, ptr %i.d, align 8, !tbaa !1899
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.e, align 8, !tbaa !1900
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 0, ptr %i.f, align 4, !tbaa !1901
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 4 uses
  %i.i = and i64 %.sroa.0.0.copyload.i, 15
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i:     ; preds = %bb.b
  %i.j = load ptr, ptr %i.h, align 16, !tbaa !791
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i8, ptr %i.k, align 16
  switch i8 %i.l, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i [
    i8 50, label %bb.c
    i8 20, label %bb.d
  ]

bb.c:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE35TransformTemplateSpecializationTypeERNS_14TypeLocBuilderENS_29TemplateSpecializationTypeLocENS_8QualTypeEPNS_9NamedDeclEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.h, ptr nonnull %i.g, i64 %2, ptr noundef null, i1 noundef zeroext true), !inline_history !43
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

bb.d:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.n = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.h, ptr nonnull %i.g, i1 noundef zeroext false, i64 %2, ptr noundef null), !inline_history !43
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, %bb.b
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.h, ptr nonnull %i.g), !inline_history !43
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit: ; preds = %bb.c, %bb.d, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i
  %.sroa.014.0.i = phi i64 [ %i.o, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i ], [ %i.m, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.p = icmp ult i64 %.sroa.014.0.i, 16
  br i1 %i.p, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit
  %.pre = load ptr, ptr %3, align 8, !tbaa !1897
  br label %bb.f

bb.e:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit
  %i.q = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 232
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.t = load i64, ptr %i.c, align 8, !tbaa !1898
  %i.u = load i64, ptr %i.d, align 8, !tbaa !1899
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.s, i64 %.sroa.014.0.i, i32 noundef %i.w) #30 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %3, align 8, !tbaa !1897   ; 2 uses
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !1899
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %i.ab, i64 %i.v, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.ac = phi ptr [ %i.z, %bb.e ], [ %.pre, %._crit_edge ] ; 3 uses
  %.0 = phi ptr [ %i.x, %bb.e ], [ null, %._crit_edge ]
  %.not.i = icmp eq ptr %i.ac, %i.b
  %i.ad = icmp eq ptr %i.ac, null
  %or.cond.i = or i1 %.not.i, %i.ad
  br i1 %or.cond.i, label %_ZN5clang14TypeLocBuilderD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #32
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit

_ZN5clang14TypeLocBuilderD2Ev.exit:               ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN5clang14TypeLocBuilderD2Ev.exit
  %.1 = phi ptr [ %.0, %_ZN5clang14TypeLocBuilderD2Ev.exit ], [ %1, %bb.a ]
  ret ptr %.1
}

declare void @_ZN5clang27PseudoDestructorTypeStorageC1EPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #2

declare ptr @_ZN5clang4Sema17getDestructorNameERKNS_14IdentifierInfoENS_14SourceLocationEPNS_5ScopeERNS_12CXXScopeSpecENS_9OpaquePtrINS_8QualTypeEEEb(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef nonnull align 8 dereferenceable(24), i32, ptr noundef, ptr noundef nonnull align 8 dereferenceable(48), ptr, i1 noundef zeroext) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema25BuildPseudoDestructorExprEPNS_4ExprENS_14SourceLocationENS_3tok9TokenKindERKNS_12CXXScopeSpecEPNS_14TypeSourceInfoES3_S3_NS_27PseudoDestructorTypeStorageE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32, i32, ptr noundef byval(%"class.clang::PseudoDestructorTypeStorage") align 8) local_unnamed_addr #2

declare i64 @_ZN5clang20DeclarationNameTable20getCXXDestructorNameENS_7CanQualINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(824), i64) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema20BuildCXXNoexceptExprENS_14SourceLocationEPNS_4ExprES1_(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, i32) local_unnamed_addr #2

declare noundef ptr @_ZN5clang4Sema16LookupDestructorEPNS_13CXXRecordDeclE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema11BuildCXXNewENS_11SourceRangeEbNS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES2_S1_NS_8QualTypeEPNS_14TypeSourceInfoESt8optionalIS6_ES1_S6_(ptr noundef nonnull align 8 dereferenceable(18640), i64, i1 noundef zeroext, i32, ptr, i64, i32, i64, i64, ptr noundef, ptr noundef byval(%"class.std::optional.3711") align 8, i64, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema16BuildCXXFoldExprEPNS_20UnresolvedLookupExprENS_14SourceLocationEPNS_4ExprENS_18BinaryOperatorKindES3_S5_S3_NS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, ptr noundef, i32 noundef, i32, ptr noundef, i32, i32) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema27BuildCXXExpansionSelectExprEPNS_12InitListExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang27CXXDependentScopeMemberExpr29getFirstQualifierFoundInScopeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 3 uses
  %i.b = and i32 %i.a, 2097152
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = and i32 %i.a, 1048576
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4llvm15TrailingObjectsIN5clang27CXXDependentScopeMemberExprEJNS1_24ASTTemplateKWAndArgsInfoENS1_19TemplateArgumentLocEPNS1_9NamedDeclEEE18getTrailingObjectsIS6_EEPKT_v.exit, label %_ZNK5clang27CXXDependentScopeMemberExpr23hasExplicitTemplateArgsEv.exit.i.i.i.i.i

_ZNK5clang27CXXDependentScopeMemberExpr23hasExplicitTemplateArgsEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 8, !tbaa !795
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm15TrailingObjectsIN5clang27CXXDependentScopeMemberExprEJNS1_24ASTTemplateKWAndArgsInfoENS1_19TemplateArgumentLocEPNS1_9NamedDeclEEE18getTrailingObjectsIS6_EEPKT_v.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang27CXXDependentScopeMemberExpr23hasExplicitTemplateArgsEv.exit.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1534
  %i.h = zext i32 %i.g to i64
  br label %_ZNK4llvm15TrailingObjectsIN5clang27CXXDependentScopeMemberExprEJNS1_24ASTTemplateKWAndArgsInfoENS1_19TemplateArgumentLocEPNS1_9NamedDeclEEE18getTrailingObjectsIS6_EEPKT_v.exit

_ZNK4llvm15TrailingObjectsIN5clang27CXXDependentScopeMemberExprEJNS1_24ASTTemplateKWAndArgsInfoENS1_19TemplateArgumentLocEPNS1_9NamedDeclEEE18getTrailingObjectsIS6_EEPKT_v.exit: ; preds = %bb.b, %_ZNK5clang27CXXDependentScopeMemberExpr23hasExplicitTemplateArgsEv.exit.i.i.i.i.i, %bb.c
  %.0.i.i.i.i.i = phi i64 [ %i.h, %bb.c ], [ 0, %_ZNK5clang27CXXDependentScopeMemberExpr23hasExplicitTemplateArgsEv.exit.i.i.i.i.i ], [ 0, %bb.b ]
  %i.i = lshr i32 %i.a, 20
  %.lobit.i.i.i.i.i = and i32 %i.i, 1
  %i.j = zext nneg i32 %.lobit.i.i.i.i.i to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.j
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %.0.i.i.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !853
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNK4llvm15TrailingObjectsIN5clang27CXXDependentScopeMemberExprEJNS1_24ASTTemplateKWAndArgsInfoENS1_19TemplateArgumentLocEPNS1_9NamedDeclEEE18getTrailingObjectsIS6_EEPKT_v.exit
  %.0 = phi ptr [ %i.m, %_ZNK4llvm15TrailingObjectsIN5clang27CXXDependentScopeMemberExprEJNS1_24ASTTemplateKWAndArgsInfoENS1_19TemplateArgumentLocEPNS1_9NamedDeclEEE18getTrailingObjectsIS6_EEPKT_v.exit ], [ null, %bb.a ]
  ret ptr %.0
}

declare i64 @_ZNK5clang13CXXDeleteExpr16getDestroyedTypeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema14ActOnCXXDeleteENS_14SourceLocationEbbPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5clang4Sema23CompleteConstructorCallEPNS_18CXXConstructorDeclENS_8QualTypeEN4llvm15MutableArrayRefIPNS_4ExprEEENS_14SourceLocationERNS4_15SmallVectorImplIS7_EEbb(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i64, ptr, i64, i32, ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema21BuildCXXConstructExprENS_14SourceLocationENS_8QualTypeEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i64, ptr noundef, i1 noundef zeroext, ptr noundef byval(%"class.llvm::MutableArrayRef") align 8, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @_ZNK5clang22CXXTemporaryObjectExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #6

declare noundef ptr @_ZNK5clang9BlockExpr15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef ptr @_ZN5clang9BlockExpr7getBodyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema15BuildAtomicExprENS_11SourceRangeES1_NS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEENS_10AtomicExpr8AtomicOpENS0_19AtomicArgumentOrderE(ptr noundef nonnull align 8 dereferenceable(18640), i64, i64, i32, ptr, i64, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema19BuildArrayTypeTraitENS_14ArrayTypeTraitENS_14SourceLocationEPNS_14TypeSourceInfoEPNS_4ExprES2_(ptr noundef nonnull align 8 dereferenceable(18640), i32 noundef, i32, ptr noundef, ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZL26HandleImmediateInvocationsRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordEEN12SimpleRemoveD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE18VisitSourceLocExprEPNS_13SourceLocExprE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE15VisitLambdaExprEPNS_10LambdaExprE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZZL26HandleImmediateInvocationsRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordEEN12SimpleRemove16VisitDeclRefExprEPNS_11DeclRefExprE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !5066, !nonnull !97, !align !787 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !95, !range !96, !noundef !97
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !98   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !99   ; 3 uses
  %i.i = zext i32 %i.h to i64
  %.idx.i.i = shl nuw nsw i64 %i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i.i
  %.not1923.i.i = icmp eq i32 %i.h, 0
  br i1 %.not1923.i.i, label %_ZN4llvm15SmallPtrSetImplIPN5clang11DeclRefExprEE5eraseES3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.critedge.i.i
  %.01524.i.i = phi ptr [ %i.l, %.critedge.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.k = load ptr, ptr %.01524.i.i, align 8, !tbaa !100
  %.not20.i.i = icmp eq ptr %i.k, %1
  br i1 %.not20.i.i, label %bb.c, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.01524.i.i, i64 8 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.l, %i.j
  br i1 %.not19.i.i, label %_ZN4llvm15SmallPtrSetImplIPN5clang11DeclRefExprEE5eraseES3_.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.m = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.m, ptr %i.g, align 4, !tbaa !99
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !100
  store ptr %i.p, ptr %.01524.i.i, align 8, !tbaa !100
  br label %_ZN4llvm15SmallPtrSetImplIPN5clang11DeclRefExprEE5eraseES3_.exit

bb.d:                                             ; preds = %bb.a
  %i.q = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.b, ptr noundef %1) #30 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE22TransformUnaryOperatorEPNS_13UnaryOperatorE:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.m, align 4, !tbaa !795
  %i.n = load i32, ptr %1, align 8
  %i.o = lshr i32 %i.n, 19
  %i.p = and i32 %i.o, 31
  %i.q = and i64 %storemerge, -2
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.t = tail call i64 @_ZN5clang4Sema12BuildUnaryOpEPNS_5ScopeENS_14SourceLocationENS_17UnaryOperatorKindEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.s, ptr noundef null, i32 %.sroa.0.0.copyload.i, i32 noundef %i.p, ptr noundef %i.r, i1 noundef zeroext false), !inline_history !5330
  br label %bb.h

bb.h:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE25TransformAddressOfOperandEPNS_4ExprE.exit, %bb.g
  %.sroa.012.0 = phi i64 [ 1, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE25TransformAddressOfOperandEPNS_4ExprE.exit ], [ %i.t, %bb.g ]
  ret i64 %.sroa.012.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE33TransformUnaryExprOrTypeTraitExprEPNS_24UnaryExprOrTypeTraitExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i24, ptr %1, align 8
  %i.c = icmp slt i24 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !788
  %i.f = tail call noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.e) ; 2 uses
  %.not38 = icmp eq ptr %i.f, null
  br i1 %.not38, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.g, align 8, !tbaa !795
  %i.h = load i24, ptr %1, align 8
  %i.i = lshr i24 %i.h, 19
  %i.j = and i24 %i.i, 15
  %i.k = zext nneg i24 %i.j to i32
  %i.l = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #31
  %i.m = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.n = tail call i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_14TypeSourceInfoENS_14SourceLocationENS_20UnaryExprOrTypeTraitENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %i.m, ptr noundef nonnull %i.f, i32 %.sroa.0.0.copyload.i, i32 noundef %i.k, i64 %i.l), !inline_history !5331
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4592
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !858
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4600
  %i.s = load i32, ptr %i.r, align 8, !tbaa !859
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [792 x i8], ptr %i.q, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -672
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2224
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %i.o, i32 noundef 0, ptr noundef %i.w, i32 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store ptr null, ptr %i.a, align 8, !tbaa !1778
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !788  ; 5 uses
  %i.z = load i16, ptr %i.y, align 8
  %i.aa = and i16 %i.z, 511
  %.not = icmp eq i16 %i.aa, 20
  br i1 %.not, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1913 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 8
  %i.ae = and i16 %i.ad, 511
  %i.af = icmp eq i16 %i.ae, 71
  br i1 %i.af, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  %i.ag = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.y)
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ah = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE34TransformDependentScopeDeclRefExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ac, i1 noundef zeroext false, ptr noundef nonnull %i.a), !inline_history !5332 ; 3 uses
  %spec.select.i.i = icmp ugt i64 %i.ah, 1
  br i1 %spec.select.i.i, label %bb.g, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = and i64 %i.ah, -2
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ak, align 8, !tbaa !795
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %.sroa.0.0.copyload.i8.i = load i32, ptr %i.al, align 4, !tbaa !795
  %i.am = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.an = call i64 @_ZN5clang4Sema14ActOnParenExprENS_14SourceLocationES1_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.am, i32 %.sroa.0.0.copyload.i.i, i32 %.sroa.0.0.copyload.i8.i, ptr noundef %i.aj), !inline_history !5333
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit: ; preds = %bb.f, %bb.g
  %.sroa.012.0.i = phi i64 [ %i.an, %bb.g ], [ %i.ah, %bb.f ]
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !1778 ; 2 uses
  %.not37 = icmp eq ptr %.pre, null
  br i1 %.not37, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i41 = load i32, ptr %i.ao, align 8, !tbaa !795
  %i.ap = load i24, ptr %1, align 8
  %i.aq = lshr i24 %i.ap, 19
  %i.ar = and i24 %i.aq, 15
  %i.as = zext nneg i24 %i.ar to i32
  %i.at = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #31
  %i.au = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.av = call i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_14TypeSourceInfoENS_14SourceLocationENS_20UnaryExprOrTypeTraitENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %i.au, ptr noundef nonnull %.pre, i32 %.sroa.0.0.copyload.i41, i32 noundef %i.as, i64 %i.at), !inline_history !5331
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.i:                                             ; preds = %.thread, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit
  %storemerge52 = phi i64 [ %i.ag, %.thread ], [ %.sroa.012.0.i, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit ] ; 2 uses
  %i.aw = icmp eq i64 %storemerge52, 1
  br i1 %i.aw, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = and i64 %storemerge52, -2
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i42 = load i32, ptr %i.az, align 8, !tbaa !795
  %i.ba = load i24, ptr %1, align 8
  %i.bb = lshr i24 %i.ba, 19
  %i.bc = and i24 %i.bb, 15
  %i.bd = zext nneg i24 %i.bc to i32
  %i.be = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.bf = call i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_4ExprENS_14SourceLocationENS_20UnaryExprOrTypeTraitE(ptr noundef nonnull align 8 dereferenceable(18640) %i.be, ptr noundef %i.ay, i32 %.sroa.0.0.copyload.i42, i32 noundef %i.bd), !inline_history !5334
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.i, %bb.j, %bb.h
  %.sroa.046.0 = phi i64 [ %i.av, %bb.h ], [ %i.bf, %bb.j ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.o), !inline_history !7
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.c, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  %.sroa.046.1 = phi i64 [ %.sroa.046.0, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ], [ 1, %bb.b ], [ %i.n, %bb.c ]
  ret i64 %.sroa.046.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE22TransformTypeTraitExprEPNS_13TypeTraitExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2684", align 8 ; 14 uses
  %3 = alloca %"class.clang::TypeLocBuilder", align 8 ; 12 uses
  %4 = alloca %"class.clang::TypeLoc", align 8    ; 9 uses
  %5 = alloca %"class.llvm::SmallVector.2597", align 8 ; 8 uses
  %6 = alloca %"class.clang::TypeLocBuilder", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  store i32 4, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !788  ; 2 uses
  %.not212 = icmp eq i32 %i.e, 0
  br i1 %.not212, label %.thread208, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 60
  %i.u = zext i32 %i.e to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %.not, label %.thread208.loopexit, label %bb.c, !llvm.loop !5335

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.v = load i32, ptr %1, align 8
  %i.w = lshr i32 %i.v, 27
  %.lobit.i.i.i.i.i.i.i = and i32 %i.w, 1
  %i.x = xor i32 %.lobit.i.i.i.i.i.i.i, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1778 ; 6 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ab, align 8, !tbaa !788 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 4 uses
  %i.ae = and i64 %.sroa.0.0.copyload.i, 15
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %bb.d

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %bb.c
  %i.af = load ptr, ptr %i.ad, align 16, !tbaa !791
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i8, ptr %i.ag, align 16
  %i.ai = icmp eq i8 %i.ah, 36
  br i1 %i.ai, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %i.g, ptr %3, align 8, !tbaa !1897
  store i64 32, ptr %i.h, align 8, !tbaa !1898
  store i64 32, ptr %i.i, align 8, !tbaa !1899
  store i32 0, ptr %i.j, align 8, !tbaa !1900
  store i8 0, ptr %i.k, align 4, !tbaa !1901
  %i.aj = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i) #30
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = load i64, ptr %i.h, align 8, !tbaa !1898
  %i.am = icmp ult i64 %i.al, %i.ak
  br i1 %i.am, label %bb.e, label %_ZN5clang14TypeLocBuilder7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 noundef %i.ak) #30
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit

_ZN5clang14TypeLocBuilder7reserveEm.exit:         ; preds = %bb.d, %bb.e
  %i.an = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr %i.ad, ptr nonnull %i.ac) ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  br i1 %i.ao, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %.sroa.0.0.copyload.i74 = load i64, ptr %i.ab, align 8, !tbaa !788
  %i.ap = icmp eq i64 %i.an, %.sroa.0.0.copyload.i74
  br i1 %i.ap, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !859 ; 2 uses
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !856

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ab)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

bb.i:                                             ; preds = %bb.g
  %i.as = zext i32 %i.aq to i64
  %i.at = load ptr, ptr %2, align 8, !tbaa !858
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  store ptr %i.ab, ptr %i.au, align 1
  %i.av = load i32, ptr %i.b, align 8, !tbaa !859
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

bb.j:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 232
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !1898
  %i.bb = load i64, ptr %i.i, align 8, !tbaa !1899
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.az, i64 %i.an, i32 noundef %i.bd) #30 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %3, align 8, !tbaa !1897
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !1899
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr align 1 %i.bi, i64 %i.bc, i1 false)
  %i.bj = load i32, ptr %i.b, align 8, !tbaa !859 ; 2 uses
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i76 = icmp ult i32 %i.bj, %i.bk
  br i1 %.not.i76, label %bb.l, label %bb.k, !prof !856

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.be)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

bb.l:                                             ; preds = %bb.j
  %i.bl = zext i32 %i.bj to i64
  %i.bm = load ptr, ptr %2, align 8, !tbaa !858
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  store ptr %i.be, ptr %i.bn, align 1
  %i.bo = load i32, ptr %i.b, align 8, !tbaa !859
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit: ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %.065 = phi i32 [ 4, %bb.i ], [ 1, %_ZN5clang14TypeLocBuilder7reserveEm.exit ], [ 4, %bb.h ], [ 4, %bb.k ], [ 4, %bb.l ]
  %i.bq = load ptr, ptr %3, align 8, !tbaa !1897  ; 3 uses
  %.not.i78 = icmp eq ptr %i.bq, %i.g
  %i.br = icmp eq ptr %i.bq, null
  %or.cond.i = or i1 %.not.i78, %i.br
  br i1 %or.cond.i, label %_ZN5clang14TypeLocBuilderD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #32
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit

_ZN5clang14TypeLocBuilderD2Ev.exit:               ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.v

bb.n:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bs, align 16, !tbaa !788 ; 2 uses
  %i.bt = ptrtoint ptr %i.ac to i64
  %i.bu = add i64 %i.bt, 4                        ; 2 uses
  %i.bv = call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #30
  %i.bw = icmp ne i64 %i.bu, 0
  %i.bx = zext i1 %i.bw to i64                    ; 2 uses
  %i.by = sub i64 %i.bu, %i.bx
  %i.bz = zext i32 %i.bv to i64                   ; 2 uses
  %i.ca = udiv i64 %i.by, %i.bz
  %i.cb = add i64 %i.ca, %i.bx
  %i.cc = mul i64 %i.cb, %i.bz
  %i.cd = inttoptr i64 %i.cc to ptr               ; 2 uses
  %i.ce = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr ; 2 uses
  store ptr %i.ce, ptr %4, align 8
  store ptr %i.cd, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.m, ptr %5, align 8, !tbaa !858
  store i32 0, ptr %i.n, align 8, !tbaa !859
  store i32 2, ptr %i.o, align 4, !tbaa !876
  %i.cf = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksENS_7TypeLocERN4llvm15SmallVectorImplISt4pairINS2_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cf, ptr %i.ce, ptr %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %5) #30
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !788
  %i.ci = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #30 ; 0 uses
  %i.cj = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #30 ; 0 uses
  %i.ck = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 13800 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.cl, align 8, !tbaa !795
  store i32 0, ptr %i.cl, align 8, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.p, ptr %6, align 8, !tbaa !1897
  store i64 32, ptr %i.q, align 8, !tbaa !1898
  store i64 32, ptr %i.r, align 8, !tbaa !1899
  store i32 0, ptr %i.s, align 8, !tbaa !1900
  store i8 0, ptr %i.t, align 4, !tbaa !1901
  %.sroa.0.0.copyload.i83 = load i64, ptr %i.ab, align 8, !tbaa !788
  %i.cm = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i83) #30
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = load i64, ptr %i.q, align 8, !tbaa !1898
  %i.cp = icmp ult i64 %i.co, %i.cn
  br i1 %i.cp, label %bb.o, label %_ZN5clang14TypeLocBuilder7reserveEm.exit86

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %6, i64 noundef %i.cn) #30
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit86

_ZN5clang14TypeLocBuilder7reserveEm.exit86:       ; preds = %bb.n, %bb.o
  %.sroa.034.0.copyload = load ptr, ptr %4, align 8, !tbaa !100
  %.sroa.235.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !100
  %i.cq = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %6, ptr %.sroa.034.0.copyload, ptr %.sroa.235.0.copyload) ; 2 uses
  %i.cr = icmp ult i64 %i.cq, 16
  br i1 %i.cr, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit96, label %bb.p

bb.p:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit86
  %i.cs = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #30
  %i.ct = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #30
  %.sroa.2.0.insert.ext.i88 = zext i32 %i.ct to i64
  %.sroa.2.0.insert.shift.i89 = shl nuw i64 %.sroa.2.0.insert.ext.i88, 32
  %.sroa.0.0.insert.ext.i90 = zext i32 %i.cs to i64
  %.sroa.0.0.insert.insert.i91 = or disjoint i64 %.sroa.2.0.insert.shift.i89, %.sroa.0.0.insert.ext.i90
  %.sroa.0.0.copyload.i92 = load i32, ptr %i.ac, align 8, !tbaa !795
  %i.cu = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.cv = call i64 @_ZN5clang4Sema18CheckPackExpansionENS_8QualTypeENS_11SourceRangeENS_14SourceLocationENS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cu, i64 %i.cq, i64 %.sroa.0.0.insert.insert.i91, i32 %.sroa.0.0.copyload.i92, i32 %i.ch) #30 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
  br i1 %i.cw, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit96, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %6, i64 %i.cv, i64 noundef 4, i32 noundef 4) #30
  %i.cy = extractvalue { ptr, ptr } %i.cx, 1
  %.sroa.0.0.copyload.i94 = load i32, ptr %i.ac, align 8, !tbaa !795
  store i32 %.sroa.0.0.copyload.i94, ptr %i.cy, align 4, !tbaa !795
  %i.cz = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 232
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.dc = load i64, ptr %i.q, align 8, !tbaa !1898
  %i.dd = load i64, ptr %i.r, align 8, !tbaa !1899
  %i.de = sub i64 %i.dc, %i.dd                    ; 2 uses
  %i.df = trunc i64 %i.de to i32
  %i.dg = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.db, i64 %i.cv, i32 noundef %i.df) #30 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %6, align 8, !tbaa !1897
  %i.dj = load i64, ptr %i.r, align 8, !tbaa !1899
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr align 1 %i.dk, i64 %i.de, i1 false)
  %i.dl = load i32, ptr %i.b, align 8, !tbaa !859 ; 2 uses
  %i.dm = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i95 = icmp ult i32 %i.dl, %i.dm
  br i1 %.not.i95, label %bb.s, label %bb.r, !prof !856

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.dg)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit96

bb.s:                                             ; preds = %bb.q
  %i.dn = zext i32 %i.dl to i64
  %i.do = load ptr, ptr %2, align 8, !tbaa !858
end_hunk_7
begin_hunk_8_@_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE35TransformCXXRewrittenBinaryOperatorEPNS_26CXXRewrittenBinaryOperatorE:bb.a
  %i.dc = lshr i64 %i.db, 31
  %i.dd = xor i64 %i.dc, %i.db
  %i.de = trunc i64 %i.dd to i32
  %i.df = and i32 %i.cz, %i.de                    ; 3 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !795, !noalias !5472
  %i.dk = and i32 %i.df, 31
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i.1, label %.loopexit.i.i.i.1, !prof !854

.lr.ph.i.i.i.i.i.1:                               ; preds = %bb.o, %bb.p
  %i.dn = phi i64 [ %i.dt, %bb.p ], [ %i.dg, %bb.o ]
  %.017.i.i.i.i.i.1 = phi i32 [ %i.ds, %bb.p ], [ %i.df, %bb.o ]
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.dn ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !855, !noalias !5472
  %i.dq = icmp eq ptr %i.cu, %i.dp
  br i1 %i.dq, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.1, label %bb.p, !prof !856

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.1
  %i.dr = add nuw i32 %.017.i.i.i.i.i.1, 1
  %i.ds = and i32 %i.dr, %i.cz                    ; 3 uses
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = lshr i64 %i.dt, 5
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !795, !noalias !5472
  %i.dx = and i32 %i.ds, 31
  %i.dy = lshr i32 %i.dw, %i.dx
  %i.dz = trunc i32 %i.dy to i1
  br i1 %i.dz, label %.lr.ph.i.i.i.i.i.1, label %.loopexit.i.i.i.1, !prof !857

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.1: ; preds = %.lr.ph.i.i.i.i.i.1
  %.pre.i.1 = zext i32 %i.cx to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1

.loopexit.i.i.i.1:                                ; preds = %bb.p, %bb.o, %bb.n
  %i.ea = zext i32 %i.cx to i64                   ; 2 uses
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.ea
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1: ; preds = %.loopexit.i.i.i.1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.1
  %.pre-phi.i.1 = phi i64 [ %.pre.i.1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.1 ], [ %i.ea, %.loopexit.i.i.i.1 ]
  %.lcssa.sink.i.i.i.1 = phi ptr [ %i.do, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.1 ], [ %i.eb, %.loopexit.i.i.i.1 ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %.pre-phi.i.1
  %.not.i42.1 = icmp eq ptr %.lcssa.sink.i.i.i.1, %i.ec
  br i1 %.not.i42.1, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1
  %i.ed = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.1, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1: ; preds = %bb.q, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1
  %.0.i.1 = phi ptr [ %i.ee, %bb.q ], [ %i.cu, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1 ] ; 2 uses
  %.not39.1 = icmp eq ptr %.0.i.1, null
  br i1 %.not39.1, label %_ZN5clang13UnresolvedSetILj2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1
  %i.ef = ptrtoint ptr %.0.i.1 to i64
  %i.eg = or i64 %i.ef, 3
  %i.eh = zext nneg i32 %i.bz to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.eh
  store i64 %i.eg, ptr %i.ei, align 8
  %i.ej = add nuw nsw i32 %i.bz, 1
  store i32 %i.ej, ptr %i.j, align 8, !tbaa !859
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.l, %bb.m, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNK5clang26CXXRewrittenBinaryOperator17getDecomposedFormEv(ptr dead_on_unwind nonnull writable sret(%"struct.clang::CXXRewrittenBinaryOperator::DecomposedForm") align 8 %2, ptr noundef nonnull readonly align 8 dereferenceable(24) %1) #35
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !2565
  %i.em = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.en = load i32, ptr %3, align 8, !tbaa !2566
  %i.eo = and i64 %i.c, -2
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = and i64 %i.g, -2
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.et = call i64 @_ZN5clang4Sema21CreateOverloadedBinOpENS_14SourceLocationENS_18BinaryOperatorKindERKNS_17UnresolvedSetImplEPNS_4ExprES7_bbPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %i.es, i32 %i.em, i32 noundef %i.en, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %i.ep, ptr noundef %i.er, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef null) #30 ; 2 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !858   ; 2 uses
  %i.eu = icmp eq ptr %.pre, %i.i
  br i1 %i.eu, label %_ZN5clang13UnresolvedSetILj2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %.critedge
  call void @free(ptr noundef %.pre) #30
  br label %_ZN5clang13UnresolvedSetILj2EED2Ev.exit

_ZN5clang13UnresolvedSetILj2EED2Ev.exit:          ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1, %.critedge, %bb.s
  %.sroa.052.375 = phi i64 [ %i.et, %bb.s ], [ %i.et, %.critedge ], [ 1, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1 ], [ 1, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.t

bb.t:                                             ; preds = %_ZN5clang13UnresolvedSetILj2EED2Ev.exit, %bb.b, %bb.a
  %.sroa.052.5 = phi i64 [ 1, %bb.a ], [ %.sroa.052.375, %_ZN5clang13UnresolvedSetILj2EED2Ev.exit ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret i64 %.sroa.052.5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE23TransformCXXReflectExprEPNS_14CXXReflectExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  ret i64 1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE32TransformCXXPseudoDestructorExprEPNS_23CXXPseudoDestructorExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %2 = alloca %"class.clang::TypeLocBuilder", align 8 ; 13 uses
  %3 = alloca %"class.clang::TypeLocBuilder", align 8 ; 13 uses
  %4 = alloca %"class.clang::OpaquePtr", align 8  ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %6 = alloca %"class.clang::PseudoDestructorTypeStorage", align 8 ; 5 uses
  %7 = alloca %"class.clang::PseudoDestructorTypeStorage", align 8 ; 5 uses
  %8 = alloca %"class.clang::PseudoDestructorTypeStorage", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2573
  %i.d = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 2 uses
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr null, ptr %4, align 8, !tbaa !1777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !840
  %i.f = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.g = and i64 %i.d, -2
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.i, align 4, !tbaa !795
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = trunc i8 %i.k to i1
  %i.m = select i1 %i.l, i16 37, i16 26
  %i.n = call i64 @_ZN5clang4Sema28ActOnStartCXXMemberReferenceEPNS_5ScopeEPNS_4ExprENS_14SourceLocationENS_3tok9TokenKindERNS_9OpaquePtrINS_8QualTypeEEERb(ptr noundef nonnull align 8 dereferenceable(18640) %i.f, ptr noundef null, ptr noundef %i.h, i32 %.sroa.0.0.copyload.i, i16 noundef zeroext %i.m, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #30 ; 2 uses
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %4, align 8, !tbaa !1777   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i48 = load i64, ptr %i.r, align 8, !tbaa !815 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !100 ; 2 uses
  %.not87 = icmp eq i64 %.sroa.0.0.copyload.i48, 0
  br i1 %.not87, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = call { i64, ptr } @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i48, ptr %.sroa.2.0.copyload.i, i64 %i.q, ptr noundef null) ; 2 uses
  %i.t = extractvalue { i64, ptr } %i.s, 0        ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.s, 1
  %.not88 = icmp eq i64 %i.t, 0
  br i1 %.not88, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.069.0 = phi i64 [ %i.t, %bb.d ], [ 0, %bb.c ]
  %.sroa.8.0 = phi ptr [ %i.u, %bb.d ], [ %.sroa.2.0.copyload.i, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %5, i64 %.sroa.069.0, ptr %.sroa.8.0) #30
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.v, align 8 ; 3 uses
  %i.w = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %i.x = icmp ne i64 %i.w, 0                      ; 2 uses
  %i.y = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -5 ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %.not89 = icmp eq i64 %i.y, 0
  %.not = or i1 %i.x, %.not89
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i98 = load i64, ptr %i.z, align 8, !tbaa !788 ; 3 uses
  %i.aa = icmp ult i64 %.sroa.0.0.copyload.i.i98, 16
  br i1 %i.aa, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !1897
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 32, ptr %i.ac, align 8, !tbaa !1898
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 32, ptr %i.ad, align 8, !tbaa !1899
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.ae, align 8, !tbaa !1900
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 0, ptr %i.af, align 4, !tbaa !1901
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ah = inttoptr i64 %.sroa.0.0.copyload.i.i98 to ptr ; 4 uses
  %i.ai = and i64 %.sroa.0.0.copyload.i.i98, 15
  %.not.i.i109 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i109, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i:     ; preds = %bb.g
  %i.aj = load ptr, ptr %i.ah, align 16, !tbaa !791
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i8, ptr %i.ak, align 16
  switch i8 %i.al, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i [
    i8 50, label %bb.h
    i8 20, label %bb.i
  ]

bb.h:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.am = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE35TransformTemplateSpecializationTypeERNS_14TypeLocBuilderENS_29TemplateSpecializationTypeLocENS_8QualTypeEPNS_9NamedDeclEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.ah, ptr nonnull %i.ag, i64 %i.q, ptr noundef null, i1 noundef zeroext true), !inline_history !5473
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

bb.i:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.an = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.ah, ptr nonnull %i.ag, i1 noundef zeroext false, i64 %i.q, ptr noundef null), !inline_history !5473
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, %bb.g
  %i.ao = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.ah, ptr nonnull %i.ag), !inline_history !5473
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit: ; preds = %bb.h, %bb.i, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i
  %.sroa.014.0.i = phi i64 [ %i.ao, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i ], [ %i.am, %bb.h ], [ %i.an, %bb.i ] ; 2 uses
  %i.ap = icmp ult i64 %.sroa.014.0.i, 16
  br i1 %i.ap, label %._crit_edge.i, label %bb.j

._crit_edge.i:                                    ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !1897
  br label %bb.k

bb.j:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 232
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.at = load i64, ptr %i.ac, align 8, !tbaa !1898
  %i.au = load i64, ptr %i.ad, align 8, !tbaa !1899
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = trunc i64 %i.av to i32
  %i.ax = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.as, i64 %.sroa.014.0.i, i32 noundef %i.aw) #30, !inline_history !5474 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %3, align 8, !tbaa !1897  ; 2 uses
  %i.ba = load i64, ptr %i.ad, align 8, !tbaa !1899
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr align 1 %i.bb, i64 %i.av, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %i.bc = phi ptr [ %i.az, %bb.j ], [ %.pre.i, %._crit_edge.i ] ; 3 uses
  %.0.i = phi ptr [ %i.ax, %bb.j ], [ null, %._crit_edge.i ] ; 2 uses
  %.not.i.i99 = icmp eq ptr %i.bc, %i.ab
  %i.bd = icmp eq ptr %i.bc, null
  %or.cond.i.i = or i1 %.not.i.i99, %i.bd
  br i1 %or.cond.i.i, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.bc) #32, !inline_history !5474
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %.not45.not = icmp eq ptr %.0.i, null
  br i1 %.not45.not, label %.thread, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread: ; preds = %bb.f, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit
  %.1.i117 = phi ptr [ %.0.i, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit ], [ %i.z, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @_ZN5clang27PseudoDestructorTypeStorageC1EPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull %.1.i117) #30
  %.sroa.062.0.copyload63 = load i64, ptr %6, align 8
  %.sroa.7.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.7.0.copyload66 = load i32, ptr %.sroa.7.0..sroa_idx65, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.q

bb.m:                                             ; preds = %bb.e
  %i.be = icmp ult ptr %i.p, inttoptr (i64 16 to ptr)
  br i1 %i.be, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = and i64 %i.q, -16
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load ptr, ptr %i.bg, align 16, !tbaa !791
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 17
  %i.bj = load i16, ptr %i.bi, align 1
  %i.bk = and i16 %i.bj, 4
  %.not90 = icmp eq i16 %i.bk, 0
  br i1 %.not90, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bl, align 8, !tbaa !795
  %i.bm = or i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %i.bn = select i1 %i.x, i64 %i.bm, i64 4
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.bo = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.sroa.0.0.copyload.i.i56 = load i32, ptr %i.bp, align 8, !tbaa !795
  %.sroa.09.0.copyload = load ptr, ptr %4, align 8, !tbaa !100
  %i.bq = call ptr @_ZN5clang4Sema17getDestructorNameERKNS_14IdentifierInfoENS_14SourceLocationEPNS_5ScopeERNS_12CXXScopeSpecENS_9OpaquePtrINS_8QualTypeEEEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i32 %.sroa.0.0.copyload.i.i56, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr %.sroa.09.0.copyload, i1 noundef zeroext false) #30 ; 2 uses
  %.not91 = icmp eq ptr %i.bq, null
  br i1 %.not91, label %.thread, label %.thread84

.thread84:                                        ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.br = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 232
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.bu = call i64 @_ZN5clang4Sema17GetTypeFromParserENS_9OpaquePtrINS_8QualTypeEEEPPNS_14TypeSourceInfoE(ptr nonnull %i.bq, ptr noundef null) #30
  %.sroa.0.0.copyload.i.i57 = load i32, ptr %i.bp, align 8, !tbaa !795
  %i.bv = call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.bt, i64 %i.bu, i32 %.sroa.0.0.copyload.i.i57) #30
  call void @_ZN5clang27PseudoDestructorTypeStorageC1EPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef %i.bv) #30
  %.sroa.062.0.copyload64 = load i64, ptr %7, align 8
  %.sroa.7.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.7.0.copyload68 = load i32, ptr %.sroa.7.0..sroa_idx67, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.q

bb.q:                                             ; preds = %.thread84, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread, %bb.o
  %.sroa.7.2 = phi i32 [ %.sroa.7.0.copyload68, %.thread84 ], [ %.sroa.0.0.copyload.i.i, %bb.o ], [ %.sroa.7.0.copyload66, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread ]
  %.sroa.062.2 = phi i64 [ %.sroa.062.0.copyload64, %.thread84 ], [ %i.bn, %bb.o ], [ %.sroa.062.0.copyload63, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread ]
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !2574 ; 4 uses
  %.not46 = icmp eq ptr %i.bx, null
  br i1 %.not46, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit108.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.copyload.i.i100 = load i64, ptr %i.bx, align 8, !tbaa !788 ; 3 uses
  %i.by = icmp ult i64 %.sroa.0.0.copyload.i.i100, 16
  br i1 %i.by, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit108.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.bz, ptr %2, align 8, !tbaa !1897
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 32, ptr %i.ca, align 8, !tbaa !1898
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 32, ptr %i.cb, align 8, !tbaa !1899
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 0, ptr %i.cc, align 8, !tbaa !1900
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i8 0, ptr %i.cd, align 4, !tbaa !1901
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  %i.cf = inttoptr i64 %.sroa.0.0.copyload.i.i100 to ptr ; 4 uses
  %i.cg = and i64 %.sroa.0.0.copyload.i.i100, 15
  %.not.i.i110 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i110, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i113, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i111

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i113:  ; preds = %bb.s
  %i.ch = load ptr, ptr %i.cf, align 16, !tbaa !791
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i8, ptr %i.ci, align 16
  switch i8 %i.cj, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i111 [
    i8 50, label %bb.t
    i8 20, label %bb.u
  ]

bb.t:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i113
  %i.ck = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE35TransformTemplateSpecializationTypeERNS_14TypeLocBuilderENS_29TemplateSpecializationTypeLocENS_8QualTypeEPNS_9NamedDeclEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %2, ptr nonnull %i.cf, ptr nonnull %i.ce, i64 %i.q, ptr noundef null, i1 noundef zeroext true), !inline_history !5473
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit114

bb.u:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i113
  %i.cl = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %2, ptr nonnull %i.cf, ptr nonnull %i.ce, i1 noundef zeroext false, i64 %i.q, ptr noundef null), !inline_history !5473
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit114

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i111: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i113, %bb.s
  %i.cm = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %2, ptr nonnull %i.cf, ptr nonnull %i.ce), !inline_history !5473
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit114

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit114: ; preds = %bb.t, %bb.u, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i111
  %.sroa.014.0.i112 = phi i64 [ %i.cm, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i111 ], [ %i.ck, %bb.t ], [ %i.cl, %bb.u ] ; 2 uses
  %i.cn = icmp ult i64 %.sroa.014.0.i112, 16
  br i1 %i.cn, label %._crit_edge.i106, label %bb.v

._crit_edge.i106:                                 ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit114
  %.pre.i107 = load ptr, ptr %2, align 8, !tbaa !1897
  br label %bb.w

bb.v:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit114
  %i.co = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 232
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.cr = load i64, ptr %i.ca, align 8, !tbaa !1898
  %i.cs = load i64, ptr %i.cb, align 8, !tbaa !1899
  %i.ct = sub i64 %i.cr, %i.cs                    ; 2 uses
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.cq, i64 %.sroa.014.0.i112, i32 noundef %i.cu) #30, !inline_history !5474 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %2, align 8, !tbaa !1897  ; 2 uses
  %i.cy = load i64, ptr %i.cb, align 8, !tbaa !1899
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cw, ptr align 1 %i.cz, i64 %i.ct, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i106
  %i.da = phi ptr [ %i.cx, %bb.v ], [ %.pre.i107, %._crit_edge.i106 ] ; 3 uses
  %.0.i101 = phi ptr [ %i.cv, %bb.v ], [ null, %._crit_edge.i106 ] ; 2 uses
  %.not.i.i102 = icmp eq ptr %i.da, %i.bz
  %i.db = icmp eq ptr %i.da, null
  %or.cond.i.i103 = or i1 %.not.i.i102, %i.db
  br i1 %or.cond.i.i103, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit108, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.da) #32, !inline_history !5474
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit108

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit108: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not47 = icmp eq ptr %.0.i101, null
  br i1 %.not47, label %.thread, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit108.thread

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit108.thread: ; preds = %bb.r, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit108, %bb.q
  %.042 = phi ptr [ %.0.i101, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit108 ], [ null, %bb.q ], [ %i.bx, %bb.r ]
  %i.dc = and i64 %i.n, -2
  %i.dd = inttoptr i64 %i.dc to ptr
  %.sroa.0.0.copyload.i58 = load i32, ptr %i.i, align 4, !tbaa !795
  %i.de = load i8, ptr %i.j, align 8
  %i.df = trunc i8 %i.de to i1
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i59 = load i32, ptr %i.dg, align 8, !tbaa !795
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.0.0.copyload.i60 = load i32, ptr %i.dh, align 4, !tbaa !795
  store i64 %.sroa.062.2, ptr %8, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.7.2, ptr %.sroa.7.0..sroa_idx, align 8
  %i.di = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE30RebuildCXXPseudoDestructorExprEPNS_4ExprENS_14SourceLocationEbRNS_12CXXScopeSpecEPNS_14TypeSourceInfoES5_S5_NS_27PseudoDestructorTypeStorageE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dd, i32 %.sroa.0.0.copyload.i58, i1 noundef zeroext %i.df, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %.042, i32 %.sroa.0.0.copyload.i59, i32 %.sroa.0.0.copyload.i60, ptr noundef nonnull byval(%"class.clang::PseudoDestructorTypeStorage") align 8 %8)
  br label %.thread

.thread:                                          ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit108, %bb.p, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit108.thread
  %.sroa.041.3 = phi i64 [ 1, %bb.p ], [ 1, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit108 ], [ %i.di, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit108.thread ], [ 1, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit ]
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !1592
  %.not.i.i = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %.thread
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !1593
  call void @free(ptr noundef %i.dm) #30
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %.thread, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.z

bb.z:                                             ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit, %bb.d, %bb.b
  %.sroa.041.5 = phi i64 [ 1, %bb.b ], [ %.sroa.041.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ 1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %bb.z
  %.sroa.041.6 = phi i64 [ %.sroa.041.5, %bb.z ], [ 1, %bb.a ]
  ret i64 %.sroa.041.6
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE29TransformCXXParenListInitExprEPNS_20CXXParenListInitExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.463", align 8 ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !858
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !859
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 4, ptr %i.d, align 4, !tbaa !876
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !2576
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8, !tbaa !788 ; 3 uses
  %i.i = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.i, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.m = call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.l, i64 %.sroa.0.0.copyload.i, i32 0) #30, !inline_history !64
  %i.n = call noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m), !inline_history !64 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.n, align 8, !tbaa !788
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.c ], [ %.sroa.0.0.copyload.i, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !840
  %i.o = call noundef zeroext i1 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS4_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.g, i32 noundef %i.f, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit
  %i.p = load ptr, ptr %2, align 8, !tbaa !858
  %i.q = load i32, ptr %i.c, align 8, !tbaa !859
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !2553
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i17 = load i32, ptr %i.u, align 8, !tbaa !795
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i18 = load i32, ptr %i.v, align 4, !tbaa !795
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i19 = load i32, ptr %i.w, align 8, !tbaa !795
  %i.x = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 232
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.aa = call noundef ptr @_ZN5clang20CXXParenListInitExpr6CreateERNS_10ASTContextEN4llvm8ArrayRefIPNS_4ExprEEENS_8QualTypeEjNS_14SourceLocationES9_S9_(ptr noundef nonnull align 8 dereferenceable(23904) %i.z, ptr %i.p, i64 %i.r, i64 %.sroa.0.0.i, i32 noundef %i.t, i32 %.sroa.0.0.copyload.i17, i32 %.sroa.0.0.copyload.i18, i32 %.sroa.0.0.copyload.i19) #30
  %i.ab = ptrtoint ptr %i.aa to i64
  br label %bb.e

bb.e:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit, %bb.d
  %.sroa.027.0 = phi i64 [ 1, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit ], [ %i.ab, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ac = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.b
  br i1 %i.ad, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.ac) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i64 %.sroa.027.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE30TransformCXXNullPtrLiteralExprEPNS_21CXXNullPtrLiteralExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  ret i64 %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE24TransformCXXNoexceptExprEPNS_15CXXNoexceptExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787 ; 2 uses
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %i.a, i32 noundef 0, ptr noundef null, i32 noundef 4)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2578
  %i.d = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 2 uses
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_8
begin_hunk_9_@_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE22TransformAddrLabelExprEPNS_13AddrLabelExprE:bb.a
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.am
  br i1 %.not.i, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.d
  %.0.i = phi ptr [ %i.ao, %bb.d ], [ %i.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.ap, align 8, !tbaa !795
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.aq, align 4, !tbaa !795
  %i.ar = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.as = tail call i64 @_ZN5clang4Sema14ActOnAddrLabelENS_14SourceLocationES1_PNS_9LabelDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ar, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11, ptr noundef %.0.i)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.e
  %.sroa.09.0 = phi i64 [ %i.as, %bb.e ], [ 1, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  ret i64 %.sroa.09.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE28TransformConditionalOperatorEPNS_19ConditionalOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1587
  %i.c = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1587
  %i.g = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1587
  %i.k = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.j) ; 2 uses
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = and i64 %i.c, -2
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i = load i32, ptr %i.o, align 8, !tbaa !795
  %i.p = and i64 %i.g, -2
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.r, align 4, !tbaa !795
  %i.s = and i64 %i.k, -2
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.v = tail call i64 @_ZN5clang4Sema18ActOnConditionalOpENS_14SourceLocationES1_PNS_4ExprES3_S3_(ptr noundef nonnull align 8 dereferenceable(18640) %i.u, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i11, ptr noundef %i.n, ptr noundef %i.q, ptr noundef %i.t), !inline_history !69
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.sroa.020.2 = phi i64 [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], [ %i.v, %bb.d ]
  ret i64 %.sroa.020.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE34TransformBinaryConditionalOperatorEPNS_25BinaryConditionalOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1587
  %i.c = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1587
  %i.g = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.c, -2
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i = load i32, ptr %i.k, align 8, !tbaa !795
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.l, align 4, !tbaa !795
  %i.m = and i64 %i.g, -2
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.p = tail call i64 @_ZN5clang4Sema18ActOnConditionalOpENS_14SourceLocationES1_PNS_4ExprES3_S3_(ptr noundef nonnull align 8 dereferenceable(18640) %i.o, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, ptr noundef %i.j, ptr noundef null, ptr noundef %i.n), !inline_history !69
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.015.1 = phi i64 [ 1, %bb.a ], [ 1, %bb.b ], [ %i.p, %bb.c ]
  ret i64 %.sroa.015.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %3 = alloca %"class.clang::TypeLocBuilder", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !788
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  store ptr %i.b, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.c, align 8
  %i.d = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.sroa.0.0.copyload.i10 = load i64, ptr %1, align 8, !tbaa !788 ; 3 uses
  %i.e = icmp ult i64 %.sroa.0.0.copyload.i10, 16
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !1897
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 32, ptr %i.g, align 8, !tbaa !1898
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 32, ptr %i.h, align 8, !tbaa !1899
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.i, align 8, !tbaa !1900
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 0, ptr %i.j, align 4, !tbaa !1901
  %i.k = inttoptr i64 %.sroa.0.0.copyload.i10 to ptr
  %i.l = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i10) #30
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = load i64, ptr %i.g, align 8, !tbaa !1898
  %i.o = icmp ult i64 %i.n, %i.m
  br i1 %i.o, label %bb.c, label %_ZN5clang14TypeLocBuilder7reserveEm.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 noundef %i.m) #30
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit

_ZN5clang14TypeLocBuilder7reserveEm.exit:         ; preds = %bb.b, %bb.c
  %i.p = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.k, ptr nonnull %i.a) ; 2 uses
  %i.q = icmp ult i64 %i.p, 16
  br i1 %i.q, label %_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge, label %bb.d

_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge: ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %.pre = load ptr, ptr %3, align 8, !tbaa !1897
  br label %bb.e

bb.d:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %i.r = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 232
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.u = load i64, ptr %i.g, align 8, !tbaa !1898
  %i.v = load i64, ptr %i.h, align 8, !tbaa !1899
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.t, i64 %i.p, i32 noundef %i.x) #30 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %3, align 8, !tbaa !1897  ; 2 uses
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !1899
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ac, i64 %i.w, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge, %bb.d
  %i.ad = phi ptr [ %i.aa, %bb.d ], [ %.pre, %_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge ] ; 3 uses
  %.0 = phi ptr [ %i.y, %bb.d ], [ null, %_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge ]
  %.not.i = icmp eq ptr %i.ad, %i.f
  %i.ae = icmp eq ptr %i.ad, null
  %or.cond.i = or i1 %.not.i, %i.ae
  br i1 %or.cond.i, label %_ZN5clang14TypeLocBuilderD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #32
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit

_ZN5clang14TypeLocBuilderD2Ev.exit:               ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN5clang14TypeLocBuilderD2Ev.exit
  %.1 = phi ptr [ %.0, %_ZN5clang14TypeLocBuilderD2Ev.exit ], [ %1, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 11 uses
  %i.b = and i64 %i.a, 15
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit:       ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 16, !tbaa !791
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 16
  switch i8 %i.e, label %bb.bg [
    i8 60, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 59, label %bb.bf
    i8 10, label %bb.k
    i8 11, label %bb.l
    i8 12, label %bb.m
    i8 13, label %bb.n
    i8 14, label %bb.o
    i8 15, label %bb.p
    i8 16, label %bb.q
    i8 17, label %bb.r
    i8 18, label %bb.s
    i8 19, label %bb.t
    i8 20, label %bb.u
    i8 21, label %bb.v
    i8 22, label %bb.w
    i8 23, label %bb.x
    i8 24, label %bb.y
    i8 25, label %bb.z
    i8 26, label %bb.bh
    i8 27, label %bb.aa
    i8 28, label %bb.ab
    i8 29, label %bb.ac
    i8 30, label %bb.ad
    i8 31, label %bb.ae
    i8 32, label %bb.af
    i8 33, label %bb.ag
    i8 34, label %bb.ah
    i8 35, label %bb.ai
    i8 36, label %bb.aj
    i8 37, label %bb.ak
    i8 38, label %bb.al
    i8 39, label %bb.am
    i8 40, label %bb.an
    i8 58, label %bb.be
    i8 42, label %bb.ao
    i8 43, label %bb.ap
    i8 44, label %bb.aq
    i8 45, label %bb.ar
    i8 46, label %bb.as
    i8 47, label %bb.at
    i8 48, label %bb.au
    i8 49, label %bb.av
    i8 50, label %bb.aw
    i8 51, label %bb.ax
    i8 52, label %bb.ay
    i8 53, label %bb.az
    i8 54, label %bb.ba
    i8 55, label %bb.bb
    i8 56, label %bb.bc
    i8 57, label %bb.bd
  ]

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread: ; preds = %bb.a, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.f = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3)
  br label %bb.bh

bb.b:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.g = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE21TransformAdjustedTypeERNS_14TypeLocBuilderENS_15AdjustedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.c:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.h = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE20TransformDecayedTypeERNS_14TypeLocBuilderENS_14DecayedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.d:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.i = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformConstantArrayTypeERNS_14TypeLocBuilderENS_20ConstantArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.e:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.j = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE27TransformArrayParameterTypeERNS_14TypeLocBuilderENS_21ArrayParameterTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.f:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.k = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE32TransformDependentSizedArrayTypeERNS_14TypeLocBuilderENS_26DependentSizedArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.g:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.l = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE28TransformIncompleteArrayTypeERNS_14TypeLocBuilderENS_22IncompleteArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.h:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.m = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformVariableArrayTypeERNS_14TypeLocBuilderENS_20VariableArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.i:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.n = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE19TransformAtomicTypeERNS_14TypeLocBuilderENS_13AtomicTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.j:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.o = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE23TransformAttributedTypeERNS_14TypeLocBuilderENS_17AttributedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.k:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.p = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE19TransformBitIntTypeERNS_14TypeLocBuilderENS_13BitIntTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.l:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.q = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE25TransformBlockPointerTypeERNS_14TypeLocBuilderENS_19BlockPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.m:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.r = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE28TransformCountAttributedTypeERNS_14TypeLocBuilderENS_22CountAttributedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.n:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.s = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE20TransformBuiltinTypeERNS_14TypeLocBuilderENS_14BuiltinTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.o:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.t = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.a, i64 noundef 4, i32 noundef 4) #30
  %i.u = extractvalue { ptr, ptr } %i.t, 1
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %3, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.u, align 4, !tbaa !795
  br label %bb.bh

bb.p:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.v = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE21TransformDecltypeTypeERNS_14TypeLocBuilderENS_15DecltypeTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.q:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.w = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE17TransformAutoTypeERNS_14TypeLocBuilderENS_11AutoTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.r:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.x = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE42TransformDeducedTemplateSpecializationTypeERNS_14TypeLocBuilderENS_36DeducedTemplateSpecializationTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.s:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.y = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE34TransformDependentAddressSpaceTypeERNS_14TypeLocBuilderENS_28DependentAddressSpaceTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.t:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.z = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE28TransformDependentBitIntTypeERNS_14TypeLocBuilderENS_22DependentBitIntTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.u:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.aa = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3, i1 noundef zeroext false, i64 0, ptr noundef null), !inline_history !5580
  br label %bb.bh

bb.v:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ab = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE36TransformDependentSizedExtVectorTypeERNS_14TypeLocBuilderENS_30DependentSizedExtVectorTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.w:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ac = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE28TransformDependentVectorTypeERNS_14TypeLocBuilderENS_22DependentVectorTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.x:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ad = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE28TransformFunctionNoProtoTypeERNS_14TypeLocBuilderENS_22FunctionNoProtoTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.y:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ae = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformFunctionProtoTypeERNS_14TypeLocBuilderENS_20FunctionProtoTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.z:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.af = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE35TransformHLSLAttributedResourceTypeERNS_14TypeLocBuilderENS_29HLSLAttributedResourceTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.aa:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ag = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE27TransformMacroQualifiedTypeERNS_14TypeLocBuilderENS_21MacroQualifiedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.ab:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ah = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE27TransformConstantMatrixTypeERNS_14TypeLocBuilderENS_21ConstantMatrixTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.ac:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ai = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE33TransformDependentSizedMatrixTypeERNS_14TypeLocBuilderENS_27DependentSizedMatrixTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.ad:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.aj = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformMemberPointerTypeERNS_14TypeLocBuilderENS_20MemberPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.ae:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ak = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE30TransformObjCObjectPointerTypeERNS_14TypeLocBuilderENS_24ObjCObjectPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.af:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.al = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE23TransformObjCObjectTypeERNS_14TypeLocBuilderENS_17ObjCObjectTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.ag:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang14TypeLocBuilder12pushFullCopyENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3) #30
  br label %bb.bh

bb.ah:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.am = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformObjCTypeParamTypeERNS_14TypeLocBuilderENS_20ObjCTypeParamTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.ai:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.an = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE29TransformOverflowBehaviorTypeERNS_14TypeLocBuilderENS_23OverflowBehaviorTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.aj:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ao = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformPackExpansionTypeERNS_14TypeLocBuilderENS_20PackExpansionTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.ak:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ap = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE25TransformPackIndexingTypeERNS_14TypeLocBuilderENS_19PackIndexingTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.al:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.aq = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE18TransformParenTypeERNS_14TypeLocBuilderENS_12ParenTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.am:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ar = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE17TransformPipeTypeERNS_14TypeLocBuilderENS_11PipeTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.an:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.as = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE20TransformPointerTypeERNS_14TypeLocBuilderENS_14PointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.ao:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.at = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE22TransformReferenceTypeERNS_14TypeLocBuilderENS_16ReferenceTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3), !inline_history !5581
  br label %bb.bh

bb.ap:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.au = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE22TransformReferenceTypeERNS_14TypeLocBuilderENS_16ReferenceTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3), !inline_history !5582
  br label %bb.bh

bb.aq:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.av = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.a, i64 noundef 4, i32 noundef 4) #30
  %i.aw = extractvalue { ptr, ptr } %i.av, 1
  %.sroa.0.0.copyload.i.i.i408 = load i32, ptr %3, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i.i.i408, ptr %i.aw, align 4, !tbaa !795
  br label %bb.bh

bb.ar:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ax = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.a, i64 noundef 4, i32 noundef 4) #30
  %i.ay = extractvalue { ptr, ptr } %i.ax, 1
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %3, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %i.ay, align 4, !tbaa !795
  br label %bb.bh

bb.as:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.az = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE34TransformSubstTemplateTypeParmTypeERNS_14TypeLocBuilderENS_28SubstTemplateTypeParmTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.at:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ba = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE16TransformTagTypeERNS_14TypeLocBuilderENS_10TagTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3), !inline_history !5583
  br label %bb.bh

bb.au:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bb = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE16TransformTagTypeERNS_14TypeLocBuilderENS_10TagTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3), !inline_history !5584
  br label %bb.bh

bb.av:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bc = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE16TransformTagTypeERNS_14TypeLocBuilderENS_10TagTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3), !inline_history !5585
  br label %bb.bh

bb.aw:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bd = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE35TransformTemplateSpecializationTypeERNS_14TypeLocBuilderENS_29TemplateSpecializationTypeLocENS_8QualTypeEPNS_9NamedDeclEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3, i64 0, ptr noundef null, i1 noundef zeroext false), !inline_history !5586
  br label %bb.bh

bb.ax:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.be = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.a, i64 noundef 4, i32 noundef 4) #30
  %i.bf = extractvalue { ptr, ptr } %i.be, 1
  %.sroa.0.0.copyload.i.i.i.i444 = load i32, ptr %3, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i.i.i.i444, ptr %i.bf, align 4, !tbaa !795
  br label %bb.bh

bb.ay:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bg = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE23TransformTypeOfExprTypeERNS_14TypeLocBuilderENS_17TypeOfExprTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.az:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bh = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE19TransformTypeOfTypeERNS_14TypeLocBuilderENS_13TypeOfTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.ba:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bi = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE20TransformTypedefTypeERNS_14TypeLocBuilderENS_14TypedefTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.bb:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bj = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE27TransformUnaryTransformTypeERNS_14TypeLocBuilderENS_21UnaryTransformTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.bc:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bk = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE28TransformUnresolvedUsingTypeERNS_14TypeLocBuilderENS_22UnresolvedUsingTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.bd:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bl = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE18TransformUsingTypeERNS_14TypeLocBuilderENS_12UsingTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.be:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bm = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE19TransformVectorTypeERNS_14TypeLocBuilderENS_13VectorTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.bf:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bn = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE22TransformExtVectorTypeERNS_14TypeLocBuilderENS_16ExtVectorTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %bb.bh

bb.bg:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  unreachable

bb.bh:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
  %.sroa.0182.0 = phi i64 [ %i.f, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread ], [ %i.g, %bb.b ], [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.k, %bb.f ], [ %i.l, %bb.g ], [ %i.m, %bb.h ], [ %i.n, %bb.i ], [ %i.o, %bb.j ], [ %i.bn, %bb.bf ], [ %i.p, %bb.k ], [ %i.q, %bb.l ], [ %i.r, %bb.m ], [ %i.s, %bb.n ], [ %i.a, %bb.o ], [ %i.v, %bb.p ], [ %i.w, %bb.q ], [ %i.x, %bb.r ], [ %i.y, %bb.s ], [ %i.z, %bb.t ], [ %i.aa, %bb.u ], [ %i.ab, %bb.v ], [ %i.ac, %bb.w ], [ %i.ad, %bb.x ], [ %i.ae, %bb.y ], [ %i.af, %bb.z ], [ %i.bl, %bb.bd ], [ %i.ag, %bb.aa ], [ %i.ah, %bb.ab ], [ %i.ai, %bb.ac ], [ %i.aj, %bb.ad ], [ %i.ak, %bb.ae ], [ %i.al, %bb.af ], [ %i.a, %bb.ag ], [ %i.am, %bb.ah ], [ %i.an, %bb.ai ], [ %i.ao, %bb.aj ], [ %i.ap, %bb.ak ], [ %i.aq, %bb.al ], [ %i.ar, %bb.am ], [ %i.as, %bb.an ], [ %i.bm, %bb.be ], [ %i.at, %bb.ao ], [ %i.au, %bb.ap ], [ %i.a, %bb.aq ], [ %i.a, %bb.ar ], [ %i.az, %bb.as ], [ %i.ba, %bb.at ], [ %i.bb, %bb.au ], [ %i.bc, %bb.av ], [ %i.bd, %bb.aw ], [ %i.a, %bb.ax ], [ %i.bg, %bb.ay ], [ %i.bh, %bb.az ], [ %i.bi, %bb.ba ], [ %i.bj, %bb.bb ], [ %i.bk, %bb.bc ], [ %i.a, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit ]
  ret i64 %.sroa.0182.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
_ZNK5clang8QualType18getLocalQualifiersEv.exit:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = and i64 %i.a, -16
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !791
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, -8
  %i.g = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %i.f) #30
  %i.h = ptrtoint ptr %3 to i64
  %i.i = icmp ne ptr %3, null
  %i.j = zext i1 %i.i to i64                      ; 2 uses
  %i.k = sub i64 %i.h, %i.j
  %i.l = zext i32 %i.g to i64                     ; 2 uses
  %i.m = udiv i64 %i.k, %i.l
  %i.n = add i64 %i.m, %i.j
  %i.o = mul i64 %i.n, %i.l
  %i.p = load ptr, ptr %i.c, align 16, !tbaa !791 ; 3 uses
  %i.q = inttoptr i64 %i.o to ptr                 ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 5 uses
  %i.s = and i64 %i.r, 15
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i, label %bb.c

_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %_ZNK5clang8QualType18getLocalQualifiersEv.exit
  %i.t = load ptr, ptr %i.p, align 16, !tbaa !791
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i8, ptr %i.u, align 16
  switch i8 %i.v, label %bb.c [
    i8 51, label %bb.a
    i8 45, label %bb.b
  ]

bb.a:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i
  %i.w = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.r, i64 noundef 4, i32 noundef 4) #30
  %i.x = extractvalue { ptr, ptr } %i.w, 1
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.q, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.x, align 4, !tbaa !795
  br label %bb.d

bb.b:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i
  %i.y = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.r, i64 noundef 4, i32 noundef 4) #30
  %i.z = extractvalue { ptr, ptr } %i.y, 1
  %.sroa.0.0.copyload.i.i.i29 = load i32, ptr %i.q, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i.i.i29, ptr %i.z, align 4, !tbaa !795
  br label %bb.d

bb.c:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i, %_ZNK5clang8QualType18getLocalQualifiersEv.exit
  %i.aa = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.p, ptr %i.q)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.037.0 = phi i64 [ %i.r, %bb.a ], [ %i.aa, %bb.c ], [ %i.r, %bb.b ] ; 2 uses
  %i.ab = icmp ult i64 %.sroa.037.0, 16
  br i1 %i.ab, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE20RebuildQualifiedTypeENS_8QualTypeENS_16QualifiedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.037.0, ptr %2, ptr %3) ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 16
  %spec.select = select i1 %i.ad, i64 0, i64 %i.ac
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.046.0 = phi i64 [ %spec.select, %bb.e ], [ 0, %bb.d ]
  ret i64 %.sroa.046.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE21TransformAdjustedTypeERNS_14TypeLocBuilderENS_15AdjustedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 16, !tbaa !788 ; 2 uses
  %i.b = ptrtoint ptr %3 to i64
  %i.c = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #30
  %i.d = icmp ne ptr %3, null
  %i.e = zext i1 %i.d to i64                      ; 2 uses
  %i.f = sub i64 %i.b, %i.e
  %i.g = zext i32 %i.c to i64                     ; 2 uses
  %i.h = udiv i64 %i.f, %i.g
  %i.i = add i64 %i.h, %i.e
  %i.j = mul i64 %i.i, %i.g
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr
  %i.m = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.l, ptr %i.k)
  ret i64 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE20TransformDecayedTypeERNS_14TypeLocBuilderENS_14DecayedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 16, !tbaa !788 ; 2 uses
  %i.b = ptrtoint ptr %3 to i64
  %i.c = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #30
  %i.d = icmp ne ptr %3, null
  %i.e = zext i1 %i.d to i64                      ; 2 uses
  %i.f = sub i64 %i.b, %i.e
  %i.g = zext i32 %i.c to i64                     ; 2 uses
  %i.h = udiv i64 %i.f, %i.g
  %i.i = add i64 %i.h, %i.e
  %i.j = mul i64 %i.i, %i.g
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr
  %i.m = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.l, ptr %i.k) ; 2 uses
  %i.n = icmp ult i64 %i.m, 16
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.r = tail call i64 @_ZNK5clang10ASTContext14getDecayedTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.q, i64 %i.m) #30 ; 2 uses
  %i.s = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.r, i64 noundef 0, i32 noundef 1) #30 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.019.1 = phi i64 [ %i.r, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.019.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformConstantArrayTypeERNS_14TypeLocBuilderENS_20ConstantArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::APInt", align 8       ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 16, !tbaa !788 ; 2 uses
  %i.b = ptrtoint ptr %3 to i64
  %i.c = add i64 %i.b, 16                         ; 2 uses
  %i.d = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #30
  %i.e = icmp ne i64 %i.c, 0
  %i.f = zext i1 %i.e to i64                      ; 2 uses
  %i.g = sub i64 %i.c, %i.f
  %i.h = zext i32 %i.d to i64                     ; 2 uses
  %i.i = udiv i64 %i.g, %i.h
  %i.j = add i64 %i.i, %i.f
  %i.k = mul i64 %i.j, %i.h
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr
  %i.n = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.m, ptr %i.l) ; 2 uses
  %i.o = icmp ult i64 %i.n, 16
  br i1 %i.o, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2612 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.c, label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread58

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i32, ptr %i.r, align 16             ; 3 uses
  %i.t = and i32 %i.s, 33554432
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread, label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit

_ZNK5clang17ConstantArrayType11getSizeExprEv.exit: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !788
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2614 ; 2 uses
  %.not25 = icmp eq ptr %i.x, null
  br i1 %.not25, label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread, label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread58

_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread58: ; preds = %bb.b, %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit
  %.061 = phi ptr [ %i.x, %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit ], [ %i.q, %bb.b ]
  %i.y = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787 ; 2 uses
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %i.y, i32 noundef 4, ptr noundef null, i32 noundef 4)
  %i.z = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.061) ; 2 uses
  %i.aa = and i64 %i.z, -2                        ; 2 uses
  %spec.select.i.i = icmp ugt i64 %i.z, 1
  br i1 %spec.select.i.i, label %bb.d, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.d:                                             ; preds = %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread58
  %i.ab = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.ac = inttoptr i64 %i.aa to ptr
  %i.ad = tail call i64 @_ZN5clang4Sema36CheckLValueToRValueConversionOperandEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ab, ptr noundef %i.ac), !inline_history !2615
  %i.ae = and i64 %i.ad, -2
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread58, %bb.d
  %.sroa.0.0.i = phi i64 [ %i.ae, %bb.d ], [ %i.aa, %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread58 ]
  %i.af = inttoptr i64 %.sroa.0.0.i to ptr
  tail call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.y), !inline_history !7
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 16
  br label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread

_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread: ; preds = %bb.c, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit
  %i.ag = phi i32 [ %.pre, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ], [ %i.s, %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit ], [ %i.s, %bb.c ] ; 3 uses
  %.023 = phi ptr [ %i.af, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ], [ null, %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit ], [ null, %bb.c ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = lshr i32 %i.ag, 22
  %i.aj = and i32 %i.ai, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5589)
  %i.ak = and i32 %i.ag, 33554432
  %.not.i29 = icmp eq i32 %i.ak, 0
  br i1 %.not.i29, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !788, !noalias !5589 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !1770, !noalias !5589 ; 2 uses
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !1770, !alias.scope !5589
  %i.aq = icmp ult i32 %i.ap, 65
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = load i64, ptr %i.am, align 8, !tbaa !788, !noalias !5589
  store i64 %i.ar, ptr %4, align 8, !tbaa !788, !alias.scope !5589
  br label %_ZNK5clang17ConstantArrayType7getSizeEv.exit

bb.g:                                             ; preds = %bb.e
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.am) #30
  br label %_ZNK5clang17ConstantArrayType7getSizeEv.exit

bb.h:                                             ; preds = %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread
  %i.as = lshr i32 %i.ag, 23
  %i.at = and i32 %i.as, 248                      ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !788, !noalias !5589 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.at, ptr %i.aw, align 8, !tbaa !1770, !alias.scope !5589
  %i.ax = icmp samesign ult i32 %i.at, 65
end_hunk_9
begin_hunk_10_@_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformMemberPointerTypeERNS_14TypeLocBuilderENS_20MemberPointerTypeLocE:bb.a
bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1593
  call void @free(ptr noundef %i.bp) #30
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.o

.critedge41:                                      ; preds = %bb.h
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge41
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1593
  call void @free(ptr noundef %i.br) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.bs = and i64 %i.bk, -16
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load ptr, ptr %i.bt, align 16, !tbaa !791 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load i8, ptr %i.bv, align 16
  %.not.i50 = icmp eq i8 %i.bw, 30
  br i1 %.not.i50, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread87, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.0.0.copyload.i.i.i.i51 = load i64, ptr %i.bx, align 8, !tbaa !788
  %i.by = and i64 %.sroa.0.0.copyload.i.i.i.i51, -16
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load ptr, ptr %i.bz, align 16, !tbaa !791
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i8, ptr %i.cb, align 16
  %i.cd = icmp eq i8 %i.cc, 30
  br i1 %i.cd, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit, label %.critedge2

_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit: ; preds = %bb.m
  %i.ce = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bu) #30 ; 2 uses
  %.not39 = icmp eq ptr %i.ce, null
  br i1 %.not39, label %.critedge2, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread87

_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread87: ; preds = %bb.l, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit
  %.1.i90 = phi ptr [ %i.ce, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit ], [ %i.bu, %bb.l ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.1.i90, i64 32
  %.sroa.0.0.copyload.i52 = load i64, ptr %i.cf, align 16, !tbaa !788 ; 2 uses
  %.not92 = icmp eq i64 %i.n, %.sroa.0.0.copyload.i52
  br i1 %.not92, label %.critedge2, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread87
  %i.cg = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.sroa.0.0.copyload.i52, i64 noundef 0, i32 noundef 1) #30 ; 0 uses
  br label %.critedge2

.critedge2:                                       ; preds = %bb.m, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit, %bb.n, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread87
  %i.ch = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.bk, i64 noundef 16, i32 noundef 8) #30
  %i.ci = extractvalue { ptr, ptr } %i.ch, 1      ; 2 uses
  %.sroa.0.0.copyload.i56 = load i32, ptr %3, align 8, !tbaa !795
  store i32 %.sroa.0.0.copyload.i56, ptr %i.ci, align 8, !tbaa !795
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.u, ptr %i.cj, align 8, !tbaa !2674
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %_ZN5clang12CXXScopeSpecD2Ev.exit, %.critedge2, %bb.a
  %.sroa.084.2 = phi i64 [ 0, %bb.a ], [ 0, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ 0, %bb.b ], [ 0, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ %i.bk, %.critedge2 ]
  ret i64 %.sroa.084.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE30TransformObjCObjectPointerTypeERNS_14TypeLocBuilderENS_24ObjCObjectPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 16, !tbaa !788 ; 2 uses
  %i.b = ptrtoint ptr %3 to i64
  %i.c = add i64 %i.b, 4                          ; 2 uses
  %i.d = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #30
  %i.e = icmp ne i64 %i.c, 0
  %i.f = zext i1 %i.e to i64                      ; 2 uses
  %i.g = sub i64 %i.c, %i.f
  %i.h = zext i32 %i.d to i64                     ; 2 uses
  %i.i = udiv i64 %i.g, %i.h
  %i.j = add i64 %i.i, %i.f
  %i.k = mul i64 %i.j, %i.h
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr
  %i.n = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.m, ptr %i.l) ; 2 uses
  %i.o = icmp ult i64 %i.n, 16
  br i1 %i.o, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 232
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.s = tail call i64 @_ZNK5clang10ASTContext24getObjCObjectPointerTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.r, i64 %i.n) #30 ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.s, i64 noundef 4, i32 noundef 4) #30
  %i.v = extractvalue { ptr, ptr } %i.u, 1
  %.sroa.0.0.copyload.i.i13 = load i32, ptr %3, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i.i13, ptr %i.v, align 4, !tbaa !795
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.028.1 = phi i64 [ 0, %bb.a ], [ %i.s, %bb.c ], [ 0, %bb.b ]
  ret i64 %.sroa.028.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE23TransformObjCObjectTypeERNS_14TypeLocBuilderENS_17ObjCObjectTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::ArrayRef", align 8    ; 5 uses
  %5 = alloca %"class.llvm::ArrayRef.2689", align 8 ; 5 uses
  %6 = alloca %"class.clang::ObjCObjectTypeLoc", align 8 ; 5 uses
  %7 = alloca %"class.llvm::SmallVector.2684", align 8 ; 15 uses
  %8 = alloca %"class.llvm::SmallVector.2597", align 8 ; 10 uses
  %9 = alloca %"class.clang::TypeLoc", align 8    ; 9 uses
  %10 = alloca %"class.clang::TypeLocBuilder", align 8 ; 14 uses
  %11 = alloca %"class.clang::TypeLocBuilder", align 8 ; 14 uses
  store ptr %2, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !788 ; 2 uses
  %i.c = ptrtoint ptr %3 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 16             ; 2 uses
  %i.f = lshr i32 %i.e, 16
  %i.g = and i32 %i.f, 1016
  %i.h = lshr i32 %i.e, 24
  %i.i = add nuw nsw i32 %i.h, 20
  %.lhs.trunc.i.i.i.i = add nuw nsw i32 %i.i, %i.g
  %.zext.i.i.i.i = and i32 %.lhs.trunc.i.i.i.i, 2040
  %i.j = add nuw nsw i32 %.zext.i.i.i.i, 8
  %i.k = zext nneg i32 %i.j to i64
  %i.l = add i64 %i.k, %i.c                       ; 2 uses
  %i.m = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #30
  %i.n = icmp ne i64 %i.l, 0
  %i.o = zext i1 %i.n to i64                      ; 2 uses
  %i.p = sub i64 %i.l, %i.o
  %i.q = zext i32 %i.m to i64                     ; 2 uses
  %i.r = udiv i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.o
  %i.t = mul i64 %i.s, %i.q
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr
  %i.w = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.v, ptr %i.u) ; 2 uses
  %i.x = icmp ult i64 %i.w, 16
  br i1 %i.x, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i.i78 = load i64, ptr %i.b, align 8, !tbaa !788
  %i.y = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i78) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.z, ptr %7, align 8, !tbaa !858
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 11 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !859
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 4 uses
  store i32 4, ptr %i.ab, align 4, !tbaa !876
  %i.ac = load i32, ptr %i.d, align 16
  %i.ad = lshr i32 %i.ac, 19
  %i.ae = and i32 %i.ad, 127                      ; 2 uses
  %.not193 = icmp eq i32 %i.ae, 0
  br i1 %.not193, label %.thread189, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 60
  %i.at = zext nneg i32 %i.ae to i64
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1778 ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.aw, align 8, !tbaa !788 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.ay = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 3 uses
  %i.az = and i64 %.sroa.0.0.copyload.i, 15
  %.not.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %bb.n

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %bb.c
  %i.ba = load ptr, ptr %i.ay, align 16, !tbaa !791 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i8, ptr %i.bb, align 16
  %i.bd = icmp eq i8 %i.bc, 36
  br i1 %i.bd, label %._crit_edge212, label %bb.n

._crit_edge212:                                   ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !3284
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store ptr %i.ak, ptr %8, align 8, !tbaa !858
  store i32 0, ptr %i.al, align 8, !tbaa !859
  store i32 2, ptr %i.am, align 4, !tbaa !876
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %.sroa.0.0.copyload.i87 = load i64, ptr %i.be, align 16, !tbaa !788
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksENS_8QualTypeERN4llvm15SmallVectorImplISt4pairINS2_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.pre, i64 %.sroa.0.0.copyload.i87, ptr noundef nonnull align 8 dereferenceable(16) %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %.sroa.0.0.copyload.i.i.i.i88 = load i64, ptr %i.bf, align 16, !tbaa !788 ; 2 uses
  %i.bg = ptrtoint ptr %i.ax to i64
  %i.bh = add i64 %i.bg, 4                        ; 2 uses
  %i.bi = call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i88) #30
  %i.bj = icmp ne i64 %i.bh, 0
  %i.bk = zext i1 %i.bj to i64                    ; 2 uses
  %i.bl = sub i64 %i.bh, %i.bk
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = udiv i64 %i.bl, %i.bm
  %i.bo = add i64 %i.bn, %i.bk
  %i.bp = mul i64 %i.bo, %i.bm
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i88 to ptr
  store ptr %i.br, ptr %9, align 8
  store ptr %i.bq, ptr %i.an, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !788
  %i.bu = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #30 ; 0 uses
  %i.bv = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #30 ; 0 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 13800 ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.bx, align 8, !tbaa !795 ; 2 uses
  store i32 0, ptr %i.bx, align 8, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store ptr %i.ao, ptr %10, align 8, !tbaa !1897
  store i64 32, ptr %i.ap, align 8, !tbaa !1898
  store i64 32, ptr %i.aq, align 8, !tbaa !1899
  store i32 0, ptr %i.ar, align 8, !tbaa !1900
  store i8 0, ptr %i.as, align 4, !tbaa !1901
  %i.by = load ptr, ptr %9, align 8, !tbaa !2649
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %i.bz) #30
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = load i64, ptr %i.ap, align 8, !tbaa !1898
  %i.cd = icmp ult i64 %i.cc, %i.cb
  br i1 %i.cd, label %bb.d, label %_ZN5clang14TypeLocBuilder7reserveEm.exit

bb.d:                                             ; preds = %._crit_edge212
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %10, i64 noundef %i.cb) #30
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit

_ZN5clang14TypeLocBuilder7reserveEm.exit:         ; preds = %._crit_edge212, %bb.d
  %.sroa.041.0.copyload = load ptr, ptr %9, align 8, !tbaa !100
  %.sroa.242.0.copyload = load ptr, ptr %i.an, align 8, !tbaa !100
  %i.ce = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %10, ptr %.sroa.041.0.copyload, ptr %.sroa.242.0.copyload) ; 2 uses
  %i.cf = icmp ult i64 %i.ce, 16
  br i1 %i.cf, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1, label %bb.e

bb.e:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %i.cg = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 232
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.cj = call i64 @_ZNK5clang10ASTContext20getPackExpansionTypeENS_8QualTypeENS_16OptionalUnsignedIjEEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.ci, i64 %i.ce, i32 %i.bt, i1 noundef zeroext true) #30 ; 2 uses
  %i.ck = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.cj, i64 noundef 4, i32 noundef 4) #30
  %i.cl = extractvalue { ptr, ptr } %i.ck, 1
  %.sroa.0.0.copyload.i93 = load i32, ptr %i.ax, align 8, !tbaa !795
  store i32 %.sroa.0.0.copyload.i93, ptr %i.cl, align 4, !tbaa !795
  %i.cm = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 232
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.cp = load i64, ptr %i.ap, align 8, !tbaa !1898
  %i.cq = load i64, ptr %i.aq, align 8, !tbaa !1899
  %i.cr = sub i64 %i.cp, %i.cq                    ; 2 uses
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.co, i64 %i.cj, i32 noundef %i.cs) #30 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %10, align 8, !tbaa !1897
  %i.cw = load i64, ptr %i.aq, align 8, !tbaa !1899
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr align 1 %i.cx, i64 %i.cr, i1 false)
  %i.cy = load i32, ptr %i.aa, align 8, !tbaa !859 ; 2 uses
  %i.cz = load i32, ptr %i.ab, align 4, !tbaa !876
  %.not.i94 = icmp ult i32 %i.cy, %i.cz
  br i1 %.not.i94, label %bb.g, label %bb.f, !prof !856

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.ct)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4

bb.g:                                             ; preds = %bb.e
  %i.da = zext i32 %i.cy to i64
  %i.db = load ptr, ptr %7, align 8, !tbaa !858
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.da
  store ptr %i.ct, ptr %i.dc, align 1
  %i.dd = load i32, ptr %i.aa, align 8, !tbaa !859
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.aa, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4

_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4: ; preds = %bb.g, %bb.f
  %i.df = load ptr, ptr %10, align 8, !tbaa !1897 ; 3 uses
  %.not.i95.jt4 = icmp eq ptr %i.df, %i.ao
  %i.dg = icmp eq ptr %i.df, null
  %or.cond.i.jt4 = or i1 %.not.i95.jt4, %i.dg
  br i1 %or.cond.i.jt4, label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4, label %bb.h

_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1: ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %i.dh = load ptr, ptr %10, align 8, !tbaa !1897 ; 3 uses
  %.not.i95.jt1 = icmp eq ptr %i.dh, %i.ao
  %i.di = icmp eq ptr %i.dh, null
  %or.cond.i.jt1 = or i1 %.not.i95.jt1, %i.di
  br i1 %or.cond.i.jt1, label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4
  call void @_ZdaPv(ptr noundef nonnull %i.df) #32
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1
  call void @_ZdaPv(ptr noundef nonnull %i.dh) #32
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1

_ZN5clang14TypeLocBuilderD2Ev.exit.jt4:           ; preds = %bb.h, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.bx, align 8, !tbaa !795
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.dj = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.ak
  br i1 %i.dk, label %bb.l, label %bb.j

_ZN5clang14TypeLocBuilderD2Ev.exit.jt1:           ; preds = %bb.i, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.bx, align 8, !tbaa !795
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.dl = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.ak
  br i1 %i.dm, label %bb.m, label %bb.k

bb.j:                                             ; preds = %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4
  call void @free(ptr noundef %i.dj) #30
  br label %bb.l

bb.k:                                             ; preds = %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1
  call void @free(ptr noundef %i.dl) #30
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.y

bb.m:                                             ; preds = %bb.k, %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.loopexit

bb.n:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store ptr %i.af, ptr %11, align 8, !tbaa !1897
  store i64 32, ptr %i.ag, align 8, !tbaa !1898
  store i64 32, ptr %i.ah, align 8, !tbaa !1899
  store i32 0, ptr %i.ai, align 8, !tbaa !1900
  store i8 0, ptr %i.aj, align 4, !tbaa !1901
  %i.dn = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i) #30
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %i.dp = load i64, ptr %i.ag, align 8, !tbaa !1898
  %i.dq = icmp ult i64 %i.dp, %i.do
  br i1 %i.dq, label %bb.o, label %_ZN5clang14TypeLocBuilder7reserveEm.exit104

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %11, i64 noundef %i.do) #30
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit104

_ZN5clang14TypeLocBuilder7reserveEm.exit104:      ; preds = %bb.n, %bb.o
  %i.dr = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %11, ptr %i.ay, ptr nonnull %i.ax) ; 3 uses
  %i.ds = icmp ult i64 %i.dr, 16
  br i1 %i.ds, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit109.jt1, label %bb.p

bb.p:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit104
  %i.dt = icmp eq i64 %i.dr, %.sroa.0.0.copyload.i
  br i1 %i.dt, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.du = load i32, ptr %i.aa, align 8, !tbaa !859 ; 2 uses
  %i.dv = load i32, ptr %i.ab, align 4, !tbaa !876
  %.not.i108 = icmp ult i32 %i.du, %i.dv
  br i1 %.not.i108, label %bb.s, label %bb.r, !prof !856

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.aw)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit109.jt4

bb.s:                                             ; preds = %bb.q
  %i.dw = zext i32 %i.du to i64
  %i.dx = load ptr, ptr %7, align 8, !tbaa !858
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw
  store ptr %i.aw, ptr %i.dy, align 1
end_hunk_10
begin_hunk_11_@_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit

_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i91, %bb.s, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i101, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i112
  %.sroa.6.0.i.i = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i91 ], [ %.0.copyload.i14.i.i, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i101 ], [ %.0.copyload.i.i.i92, %bb.s ], [ %.0.copyload.i16.i.i, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i112 ]
  call void @_ZN5clang12CXXScopeSpec6ExtendERNS_10ASTContextEPNS_17NamespaceBaseDeclENS_14SourceLocationES5_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.cp, ptr noundef %.0.i, i32 %.sroa.0.0.i.i67.ph, i32 %.sroa.6.0.i.i) #30
  br label %bb.bg

bb.v:                                             ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit
  %i.ef = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 232
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.ei = call i32 @_ZNK5clang22NestedNameSpecifierLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #30
  call void @_ZN5clang12CXXScopeSpec10MakeGlobalERNS_10ASTContextENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.eh, i32 %i.ei) #30
  br label %bb.bg

_ZNK5clang19NestedNameSpecifier15getAsRecordDeclEv.exit: ; preds = %bb.h
  %i.ej = load ptr, ptr %i.y, align 8, !tbaa !2065, !noalias !5701 ; 3 uses
  %i.ek = load ptr, ptr %i.z, align 8, !tbaa !2416, !noalias !5701 ; 2 uses
  %i.el = load i32, ptr %i.aa, align 4, !tbaa !2028, !noalias !5701 ; 4 uses
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %.loopexit.i.i.i117, label %bb.w

bb.w:                                             ; preds = %_ZNK5clang19NestedNameSpecifier15getAsRecordDeclEv.exit
  %i.en = add i32 %i.el, -1                       ; 2 uses
  %i.eo = mul i64 %i.ao, -4658895280553007687     ; 2 uses
  %i.ep = lshr i64 %i.eo, 31
  %i.eq = xor i64 %i.ep, %i.eo
  %i.er = trunc i64 %i.eq to i32
  %i.es = and i32 %i.en, %i.er                    ; 3 uses
  %i.et = zext i32 %i.es to i64                   ; 2 uses
  %i.eu = lshr i64 %i.et, 5
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !795, !noalias !5702
  %i.ex = and i32 %i.es, 31
  %i.ey = lshr i32 %i.ew, %i.ex
  %i.ez = trunc i32 %i.ey to i1
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i123, label %.loopexit.i.i.i117, !prof !854

.lr.ph.i.i.i.i.i123:                              ; preds = %bb.w, %bb.x
  %i.fa = phi i64 [ %i.fg, %bb.x ], [ %i.et, %bb.w ]
  %.017.i.i.i.i.i124 = phi i32 [ %i.ff, %bb.x ], [ %i.es, %bb.w ]
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.fa ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !855, !noalias !5702
  %i.fd = icmp eq ptr %i.fc, %i.ap
  br i1 %i.fd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i125, label %bb.x, !prof !856

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i123
  %i.fe = add nuw i32 %.017.i.i.i.i.i124, 1
  %i.ff = and i32 %i.fe, %i.en                    ; 3 uses
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = lshr i64 %i.fg, 5
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !795, !noalias !5702
  %i.fk = and i32 %i.ff, 31
  %i.fl = lshr i32 %i.fj, %i.fk
  %i.fm = trunc i32 %i.fl to i1
  br i1 %i.fm, label %.lr.ph.i.i.i.i.i123, label %.loopexit.i.i.i117, !prof !857

.loopexit.i.i.i117:                               ; preds = %bb.x, %bb.w, %_ZNK5clang19NestedNameSpecifier15getAsRecordDeclEv.exit
  %i.fn = zext i32 %i.el to i64                   ; 2 uses
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.fn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i125: ; preds = %.lr.ph.i.i.i.i.i123
  %.pre.i126 = zext i32 %i.el to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i125, %.loopexit.i.i.i117
  %.pre-phi.i119 = phi i64 [ %.pre.i126, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i125 ], [ %i.fn, %.loopexit.i.i.i117 ]
  %.lcssa.sink.i.i.i120 = phi ptr [ %i.fb, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i125 ], [ %i.fo, %.loopexit.i.i.i117 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %.pre-phi.i119
  %.not.i121 = icmp eq ptr %.lcssa.sink.i.i.i120, %i.fp
  br i1 %.not.i121, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit127, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118
  %i.fq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i120, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit127

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit127: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118, %bb.y
  %.0.i122 = phi ptr [ %i.fr, %bb.y ], [ %i.ap, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118 ]
  %i.fs = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 232
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.fv = call i32 @_ZNK5clang22NestedNameSpecifierLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #30
  %i.fw = load i64, ptr %12, align 8, !tbaa !2705 ; 5 uses
  %i.fx = icmp ugt i64 %i.fw, 7
  br i1 %i.fx, label %bb.z, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i128

bb.z:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit127
  %i.fy = trunc i64 %i.fw to i32
  %i.fz = lshr i32 %i.fy, 1
  %i.ga = and i32 %i.fz, 3
  switch i32 %i.ga, label %default.unreachable534 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i151
    i32 3, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147
    i32 2, label %.lr.ph.i.i.i133.preheader
  ]

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i128: ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit127
  %i.gb = icmp samesign ult i64 %i.fw, 2
  br i1 %i.gb, label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i128
  %i.gc = load ptr, ptr %i.q, align 8, !tbaa !2706
  %.0.copyload.i.i.i129 = load i32, ptr %i.gc, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147: ; preds = %bb.z
  %i.gd = and i64 %i.fw, -8
  %i.ge = inttoptr i64 %i.gd to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i148 = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %.sroa.3.0.copyload.i.i.i149 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i148, align 8, !tbaa !815 ; 2 uses
  %.not8.i.i.i150 = icmp eq i64 %.sroa.3.0.copyload.i.i.i149, 0
  br i1 %.not8.i.i.i150, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139, label %.lr.ph.i.i.i133.preheader

.lr.ph.i.i.i133.preheader:                        ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147, %bb.z
  %storemerge9.i.i.i135.ph = phi i64 [ 2, %bb.z ], [ %.sroa.3.0.copyload.i.i.i149, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147 ]
  br label %.lr.ph.i.i.i133

.lr.ph.i.i.i133:                                  ; preds = %.lr.ph.i.i.i133.preheader, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141
  %.010.i.i.i134 = phi i32 [ %i.gi, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141 ], [ 0, %.lr.ph.i.i.i133.preheader ]
  %storemerge9.i.i.i135 = phi i64 [ %.sroa.3.0.i.i.i.i142, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141 ], [ %storemerge9.i.i.i135.ph, %.lr.ph.i.i.i133.preheader ] ; 4 uses
  %i.gf = icmp ugt i64 %storemerge9.i.i.i135, 7   ; 2 uses
  %i.gg = and i64 %storemerge9.i.i.i135, 6
  %i.gh = icmp eq i64 %i.gg, 0
  %spec.select.i.i.i.i136 = select i1 %i.gh, i32 12, i32 8
  %.0.i.i.i.i137 = select i1 %i.gf, i32 %spec.select.i.i.i.i136, i32 4
  %i.gi = add i32 %.0.i.i.i.i137, %.010.i.i.i134  ; 2 uses
  br i1 %i.gf, label %bb.ab, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138

bb.ab:                                            ; preds = %.lr.ph.i.i.i133
  %i.gj = trunc i64 %storemerge9.i.i.i135 to i32
  %i.gk = lshr i32 %i.gj, 1
  %i.gl = and i32 %i.gk, 3
  switch i32 %i.gl, label %default.unreachable534 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138
    i32 3, label %bb.ac
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.gm = and i64 %storemerge9.i.i.i135, -8
  %i.gn = inttoptr i64 %i.gm to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i144 = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.sroa.3.0.copyload.i.i.i.i145 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i144, align 8, !tbaa !815
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141: ; preds = %bb.ac, %bb.ab
  %.sroa.3.0.i.i.i.i142 = phi i64 [ %.sroa.3.0.copyload.i.i.i.i145, %bb.ac ], [ 2, %bb.ab ] ; 2 uses
  %.not.i.i.i143 = icmp eq i64 %.sroa.3.0.i.i.i.i142, 0
  br i1 %.not.i.i.i143, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138, label %.lr.ph.i.i.i133, !llvm.loop !42

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141, %bb.ab, %bb.ab, %.lr.ph.i.i.i133
  %i.go = add i32 %i.gi, 4
  %i.gp = zext i32 %i.go to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139: ; preds = %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147, %bb.z
  %i.gq = phi i64 [ 4, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147 ], [ 4, %bb.z ], [ %i.gp, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138 ]
  %i.gr = load ptr, ptr %i.q, align 8, !tbaa !2706
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gq
  %.0.copyload.i14.i.i140 = load i32, ptr %i.gs, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i151: ; preds = %bb.z
  %i.gt = load ptr, ptr %i.q, align 8, !tbaa !2706
  %.0.copyload.i15.i.i152 = load ptr, ptr %i.gt, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.gu = and i64 %i.fw, -8
  %i.gv = inttoptr i64 %i.gu to ptr
  store ptr %i.gv, ptr %7, align 8, !tbaa !2649
  store ptr %.0.copyload.i15.i.i152, ptr %i.ab, align 8, !tbaa !2648
  %i.gw = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #30 ; 0 uses
  %i.gx = load ptr, ptr %i.q, align 8, !tbaa !2706
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %.0.copyload.i16.i.i153 = load i32, ptr %i.gy, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit

_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i128, %bb.aa, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i151
  %.sroa.6.0.i.i130 = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i128 ], [ %.0.copyload.i14.i.i140, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139 ], [ %.0.copyload.i.i.i129, %bb.aa ], [ %.0.copyload.i16.i.i153, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i151 ]
  call void @_ZN5clang12CXXScopeSpec18MakeMicrosoftSuperERNS_10ASTContextEPNS_13CXXRecordDeclENS_14SourceLocationES5_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.fu, ptr noundef %.0.i122, i32 %i.fv, i32 %.sroa.6.0.i.i130) #30
  br label %bb.bg

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread261: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.gz = and i64 %.sroa.0.0.copyload.i, -8       ; 3 uses
  %i.ha = inttoptr i64 %i.gz to ptr               ; 9 uses
  %.0.copyload.i.i = load ptr, ptr %.sroa.2.0.copyload.i, align 1 ; 7 uses
  store ptr %i.ha, ptr %13, align 8
  store ptr %.0.copyload.i.i, ptr %i.r, align 8
  %i.hb = and i64 %.sroa.0.0.copyload.i, 8
  %.not.i.i156 = icmp eq i64 %i.hb, 0             ; 2 uses
  br i1 %.not.i.i156, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %bb.am

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread261
  %i.hc = load ptr, ptr %i.ha, align 16, !tbaa !791
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load i8, ptr %i.hd, align 16
  %i.hf = icmp eq i8 %i.he, 20
  br i1 %i.hf, label %bb.ad, label %bb.am

bb.ad:                                            ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.hg, align 16, !tbaa !815 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.0.copyload.i.i, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !2708 ; 2 uses
  %.not284 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not284, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hj = call { i64, ptr } @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i.i, ptr %i.hi, i64 %3, ptr noundef %4) ; 2 uses
  %i.hk = extractvalue { i64, ptr } %i.hj, 0      ; 2 uses
  %i.hl = extractvalue { i64, ptr } %i.hj, 1
  %.not285 = icmp eq i64 %i.hk, 0
  br i1 %.not285, label %.critedge53, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.8.0 = phi ptr [ %i.hi, %bb.ad ], [ %i.hl, %bb.ae ]
  %.sroa.0243.0 = phi i64 [ 0, %bb.ad ], [ %i.hk, %bb.ae ]
  %.1 = phi ptr [ %4, %bb.ad ], [ null, %bb.ae ]
  %.sroa.043.1 = phi i64 [ %3, %bb.ad ], [ 0, %bb.ae ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %11, i64 %.sroa.0243.0, ptr %.sroa.8.0) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !2710
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.copyload.i.i, i64 16
  %.sroa.0.0.copyload.i161 = load i32, ptr %i.ho, align 8, !tbaa !795
  %i.hp = load i64, ptr %12, align 8, !tbaa !2705 ; 5 uses
  %i.hq = icmp ugt i64 %i.hp, 7
  br i1 %i.hq, label %bb.ag, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i162

bb.ag:                                            ; preds = %bb.af
  %i.hr = trunc i64 %i.hp to i32
  %i.hs = lshr i32 %i.hr, 1
  %i.ht = and i32 %i.hs, 3
  switch i32 %i.ht, label %default.unreachable534 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i185
    i32 3, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181
    i32 2, label %.lr.ph.i.i.i167.preheader
  ]

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i162: ; preds = %bb.af
  %i.hu = icmp samesign ult i64 %i.hp, 2
  br i1 %i.hu, label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i162
  %i.hv = load ptr, ptr %i.q, align 8, !tbaa !2706
  %.0.copyload.i.i.i163 = load i32, ptr %i.hv, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181: ; preds = %bb.ag
  %i.hw = and i64 %i.hp, -8
  %i.hx = inttoptr i64 %i.hw to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i182 = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %.sroa.3.0.copyload.i.i.i183 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i182, align 8, !tbaa !815 ; 2 uses
  %.not8.i.i.i184 = icmp eq i64 %.sroa.3.0.copyload.i.i.i183, 0
  br i1 %.not8.i.i.i184, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173, label %.lr.ph.i.i.i167.preheader

.lr.ph.i.i.i167.preheader:                        ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181, %bb.ag
  %storemerge9.i.i.i169.ph = phi i64 [ 2, %bb.ag ], [ %.sroa.3.0.copyload.i.i.i183, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181 ]
  br label %.lr.ph.i.i.i167

.lr.ph.i.i.i167:                                  ; preds = %.lr.ph.i.i.i167.preheader, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175
  %.010.i.i.i168 = phi i32 [ %i.ib, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175 ], [ 0, %.lr.ph.i.i.i167.preheader ]
  %storemerge9.i.i.i169 = phi i64 [ %.sroa.3.0.i.i.i.i176, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175 ], [ %storemerge9.i.i.i169.ph, %.lr.ph.i.i.i167.preheader ] ; 4 uses
  %i.hy = icmp ugt i64 %storemerge9.i.i.i169, 7   ; 2 uses
  %i.hz = and i64 %storemerge9.i.i.i169, 6
  %i.ia = icmp eq i64 %i.hz, 0
  %spec.select.i.i.i.i170 = select i1 %i.ia, i32 12, i32 8
  %.0.i.i.i.i171 = select i1 %i.hy, i32 %spec.select.i.i.i.i170, i32 4
  %i.ib = add i32 %.0.i.i.i.i171, %.010.i.i.i168  ; 2 uses
  br i1 %i.hy, label %bb.ai, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172

bb.ai:                                            ; preds = %.lr.ph.i.i.i167
  %i.ic = trunc i64 %storemerge9.i.i.i169 to i32
  %i.id = lshr i32 %i.ic, 1
  %i.ie = and i32 %i.id, 3
  switch i32 %i.ie, label %default.unreachable534 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172
    i32 3, label %bb.aj
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.if = and i64 %storemerge9.i.i.i169, -8
  %i.ig = inttoptr i64 %i.if to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i178 = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %.sroa.3.0.copyload.i.i.i.i179 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i178, align 8, !tbaa !815
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175: ; preds = %bb.aj, %bb.ai
  %.sroa.3.0.i.i.i.i176 = phi i64 [ %.sroa.3.0.copyload.i.i.i.i179, %bb.aj ], [ 2, %bb.ai ] ; 2 uses
  %.not.i.i.i177 = icmp eq i64 %.sroa.3.0.i.i.i.i176, 0
  br i1 %.not.i.i.i177, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172, label %.lr.ph.i.i.i167, !llvm.loop !42

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175, %bb.ai, %bb.ai, %.lr.ph.i.i.i167
  %i.ih = add i32 %i.ib, 4
  %i.ii = zext i32 %i.ih to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173: ; preds = %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181, %bb.ag
  %i.ij = phi i64 [ 4, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181 ], [ 4, %bb.ag ], [ %i.ii, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172 ]
  %i.ik = load ptr, ptr %i.q, align 8, !tbaa !2706
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ij
  %.0.copyload.i14.i.i174 = load i32, ptr %i.il, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i185: ; preds = %bb.ag
  %i.im = load ptr, ptr %i.q, align 8, !tbaa !2706
  %.0.copyload.i15.i.i186 = load ptr, ptr %i.im, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.in = and i64 %i.hp, -8
  %i.io = inttoptr i64 %i.in to ptr
  store ptr %i.io, ptr %6, align 8, !tbaa !2649
  %i.ip = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.0.copyload.i15.i.i186, ptr %i.ip, align 8, !tbaa !2648
  %i.iq = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #30 ; 0 uses
  %i.ir = load ptr, ptr %i.q, align 8, !tbaa !2706
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %.0.copyload.i16.i.i187 = load i32, ptr %i.is, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188

_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i162, %bb.ah, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i185
  %.sroa.6.0.i.i164 = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i162 ], [ %.0.copyload.i14.i.i174, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173 ], [ %.0.copyload.i.i.i163, %bb.ah ], [ %.0.copyload.i16.i.i187, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i185 ]
  %i.it = inttoptr i64 %.sroa.043.1 to ptr
  store ptr %i.it, ptr %14, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.hn, ptr %i.iu, align 8, !tbaa !2712
  %i.iv = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %.sroa.0.0.copyload.i161, ptr %i.iv, align 8, !tbaa !795
  %i.iw = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 %.sroa.6.0.i.i164, ptr %i.iw, align 4, !tbaa !795
  %i.ix = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.iy = call noundef zeroext i1 @_ZN5clang4Sema27BuildCXXNestedNameSpecifierEPNS_5ScopeERNS0_18NestedNameSpecInfoEbRNS_12CXXScopeSpecEPNS_9NamedDeclEbPbb(ptr noundef nonnull align 8 dereferenceable(18640) %i.ix, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %14, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %.1, i1 noundef zeroext false, ptr noundef null, i1 noundef zeroext false) #30
  br i1 %i.iy, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188
  %i.iz = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 232
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.jc = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.jb) #30 ; 2 uses
  %i.jd = extractvalue { i64, ptr } %i.jc, 0
  %i.je = extractvalue { i64, ptr } %i.jc, 1
  br label %bb.al

bb.al:                                            ; preds = %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188, %bb.ak
  %.sroa.13.1 = phi ptr [ %i.je, %bb.ak ], [ null, %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188 ]
  %.sroa.0259.1 = phi i64 [ %i.jd, %bb.ak ], [ 0, %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %.critedge53

bb.am:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread261, %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  store i64 %i.gz, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  store ptr %i.s, ptr %16, align 8, !tbaa !1897
  store i64 32, ptr %i.t, align 8, !tbaa !1898
  store i64 32, ptr %i.u, align 8, !tbaa !1899
  store i32 0, ptr %i.v, align 8, !tbaa !1900
  store i8 0, ptr %i.w, align 4, !tbaa !1901
  %i.jf = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.jf, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %.not.i.i156, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i:     ; preds = %bb.an
  %i.jg = load ptr, ptr %i.ha, align 16, !tbaa !791
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load i8, ptr %i.jh, align 16
  switch i8 %i.ji, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i [
    i8 50, label %bb.ao
    i8 20, label %bb.ap
  ]

bb.ao:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.jj = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE35TransformTemplateSpecializationTypeERNS_14TypeLocBuilderENS_29TemplateSpecializationTypeLocENS_8QualTypeEPNS_9NamedDeclEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %16, ptr nonnull %i.ha, ptr %.0.copyload.i.i, i64 %3, ptr noundef %4, i1 noundef zeroext true), !inline_history !5696
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

bb.ap:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.jk = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %16, ptr nonnull %i.ha, ptr %.0.copyload.i.i, i1 noundef zeroext false, i64 %3, ptr noundef %4), !inline_history !5696
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, %bb.an
  %i.jl = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %16, ptr %i.ha, ptr %.0.copyload.i.i), !inline_history !5696
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit: ; preds = %bb.ao, %bb.ap, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i
  %.sroa.014.0.i = phi i64 [ %i.jl, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i ], [ %i.jj, %bb.ao ], [ %i.jk, %bb.ap ] ; 4 uses
  store i64 %.sroa.014.0.i, ptr %15, align 8, !tbaa !788
  %i.jm = icmp ult i64 %.sroa.014.0.i, 16
  br i1 %i.jm, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit
  %i.jn = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 232
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !1116, !nonnull !97, !align !787 ; 2 uses
  %i.jq = load i64, ptr %i.t, align 8, !tbaa !1898
  %i.jr = load i64, ptr %i.u, align 8, !tbaa !1899 ; 2 uses
  %i.js = sub i64 %i.jq, %i.jr                    ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 2632 ; 3 uses
  %i.ju = add i64 %i.js, 7
  %i.jv = and i64 %i.ju, -8                       ; 2 uses
  %i.jw = load ptr, ptr %i.jt, align 8, !tbaa !1522 ; 2 uses
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = add i64 %i.jv, %i.jx                    ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jp, i64 2640
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !1523
  %i.kb = icmp ult i64 %i.jy, %i.ka
  br i1 %i.kb, label %bb.ar, label %bb.as, !prof !856

bb.ar:                                            ; preds = %bb.aq
  %i.kc = inttoptr i64 %i.jy to ptr
  store ptr %i.kc, ptr %i.jt, align 8, !tbaa !1522
  br label %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit

bb.as:                                            ; preds = %bb.aq
  %i.kd = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.jt, i64 noundef %i.js, i64 noundef %i.jv, i8 3)
  %.pre.i189 = load i64, ptr %i.u, align 8, !tbaa !1899
  br label %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit

_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit: ; preds = %bb.ar, %bb.as
  %i.ke = phi i64 [ %i.jr, %bb.ar ], [ %.pre.i189, %bb.as ]
  %.0.i.i.i.i190 = phi ptr [ %i.jw, %bb.ar ], [ %i.kd, %bb.as ] ; 3 uses
  %i.kf = load ptr, ptr %16, align 8, !tbaa !1897
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.ke
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i.i190, ptr align 1 %i.kg, i64 %i.js, i1 false)
  %i.kh = inttoptr i64 %.sroa.014.0.i to ptr      ; 2 uses
  store ptr %i.kh, ptr %13, align 8, !tbaa !100
  store ptr %.0.i.i.i.i190, ptr %i.r, align 8, !tbaa !100
  br label %bb.at

bb.at:                                            ; preds = %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit, %bb.am
  %.sroa.2.0.copyload370 = phi ptr [ %.0.i.i.i.i190, %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit ], [ %.0.copyload.i.i, %bb.am ] ; 2 uses
  %.sroa.07.0.copyload368 = phi ptr [ %i.kh, %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit ], [ %i.ha, %bb.am ] ; 2 uses
  %.0.copyload.i.i.i.i.i = phi i64 [ %.sroa.014.0.i, %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit ], [ %i.gz, %bb.am ]
  %i.ki = and i64 %.0.copyload.i.i.i.i.i, -16
  %i.kj = inttoptr i64 %i.ki to ptr
  %i.kk = load ptr, ptr %i.kj, align 16, !tbaa !791 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 17
  %i.km = load i16, ptr %i.kl, align 1
  %i.kn = and i16 %i.km, 4
  %.not281 = icmp eq i16 %i.kn, 0
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ko, align 8, !tbaa !788 ; 2 uses
  br i1 %.not281, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.kp = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.kq = inttoptr i64 %i.kp to ptr
  %i.kr = load ptr, ptr %i.kq, align 16, !tbaa !791
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load i8, ptr %i.ks, align 16            ; 2 uses
  %i.ku = icmp eq i8 %i.kt, 49
  %.pre366.pre376 = load ptr, ptr %0, align 8, !tbaa !3284 ; 3 uses
  br i1 %i.ku, label %.critedge55, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kv = getelementptr inbounds nuw i8, ptr %.pre366.pre376, i64 216
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.kx = load i64, ptr %i.kw, align 8
  %i.ky = and i64 %i.kx, 8192
  %.not = icmp ne i64 %i.ky, 0
  %i.kz = icmp eq i8 %i.kt, 47
  %or.cond = and i1 %i.kz, %.not
  br i1 %or.cond, label %.thread, label %bb.bc

bb.aw:                                            ; preds = %bb.at
  %.pre366.pre = load ptr, ptr %0, align 8, !tbaa !3284 ; 2 uses
  %.pre378 = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %.pre379 = inttoptr i64 %.pre378 to ptr
  %.pre509 = load ptr, ptr %.pre379, align 16, !tbaa !791
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre509, i64 16
  %.pre510 = load i8, ptr %.phi.trans.insert, align 16
  %i.la = icmp eq i8 %.pre510, 47
  br i1 %i.la, label %.thread, label %.critedge55

.thread:                                          ; preds = %bb.av, %bb.aw
  %.pre366536 = phi ptr [ %.pre366.pre, %bb.aw ], [ %.pre366.pre376, %bb.av ]
  %i.lb = getelementptr inbounds nuw i8, ptr %.pre366536, i64 8
  %i.lc = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #30
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.lb, i32 %i.lc, i32 noundef 6967) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %17) #30
  %.pre365 = load ptr, ptr %0, align 8, !tbaa !3284
  %.sroa.07.0.copyload.pre = load ptr, ptr %13, align 8, !tbaa !100
  %.sroa.2.0.copyload.pre = load ptr, ptr %i.r, align 8, !tbaa !100
  br label %.critedge55

.critedge55:                                      ; preds = %bb.au, %.thread, %bb.aw
  %.sroa.2.0.copyload = phi ptr [ %.sroa.2.0.copyload.pre, %.thread ], [ %.sroa.2.0.copyload370, %bb.aw ], [ %.sroa.2.0.copyload370, %bb.au ]
  %.sroa.07.0.copyload = phi ptr [ %.sroa.07.0.copyload.pre, %.thread ], [ %.sroa.07.0.copyload368, %bb.aw ], [ %.sroa.07.0.copyload368, %bb.au ]
  %i.ld = phi ptr [ %.pre365, %.thread ], [ %.pre366.pre, %bb.aw ], [ %.pre366.pre376, %bb.au ]
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 232
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.lg = load i64, ptr %12, align 8, !tbaa !2705 ; 5 uses
  %i.lh = icmp ugt i64 %i.lg, 7
  br i1 %i.lh, label %bb.ax, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i198

bb.ax:                                            ; preds = %.critedge55
  %i.li = trunc i64 %i.lg to i32
  %i.lj = lshr i32 %i.li, 1
  %i.lk = and i32 %i.lj, 3
  switch i32 %i.lk, label %default.unreachable534 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i209
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i221
    i32 3, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i217
    i32 2, label %.lr.ph.i.i.i203.preheader
  ]

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i198: ; preds = %.critedge55
  %i.ll = icmp samesign ult i64 %i.lg, 2
  br i1 %i.ll, label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit224, label %bb.ay

bb.ay:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i198
  %i.lm = load ptr, ptr %i.q, align 8, !tbaa !2706
  %.0.copyload.i.i.i199 = load i32, ptr %i.lm, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit224

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i217: ; preds = %bb.ax
  %i.ln = and i64 %i.lg, -8
  %i.lo = inttoptr i64 %i.ln to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i218 = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %.sroa.3.0.copyload.i.i.i219 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i218, align 8, !tbaa !815 ; 2 uses
  %.not8.i.i.i220 = icmp eq i64 %.sroa.3.0.copyload.i.i.i219, 0
  br i1 %.not8.i.i.i220, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i209, label %.lr.ph.i.i.i203.preheader

.lr.ph.i.i.i203.preheader:                        ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i217, %bb.ax
  %storemerge9.i.i.i205.ph = phi i64 [ 2, %bb.ax ], [ %.sroa.3.0.copyload.i.i.i219, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i217 ]
  br label %.lr.ph.i.i.i203

.lr.ph.i.i.i203:                                  ; preds = %.lr.ph.i.i.i203.preheader, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211
  %.010.i.i.i204 = phi i32 [ %i.ls, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211 ], [ 0, %.lr.ph.i.i.i203.preheader ]
  %storemerge9.i.i.i205 = phi i64 [ %.sroa.3.0.i.i.i.i212, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211 ], [ %storemerge9.i.i.i205.ph, %.lr.ph.i.i.i203.preheader ] ; 4 uses
  %i.lp = icmp ugt i64 %storemerge9.i.i.i205, 7   ; 2 uses
  %i.lq = and i64 %storemerge9.i.i.i205, 6
  %i.lr = icmp eq i64 %i.lq, 0
  %spec.select.i.i.i.i206 = select i1 %i.lr, i32 12, i32 8
  %.0.i.i.i.i207 = select i1 %i.lp, i32 %spec.select.i.i.i.i206, i32 4
  %i.ls = add i32 %.0.i.i.i.i207, %.010.i.i.i204  ; 2 uses
  br i1 %i.lp, label %bb.az, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i208

bb.az:                                            ; preds = %.lr.ph.i.i.i203
  %i.lt = trunc i64 %storemerge9.i.i.i205 to i32
  %i.lu = lshr i32 %i.lt, 1
  %i.lv = and i32 %i.lu, 3
  switch i32 %i.lv, label %default.unreachable534 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i208
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i208
    i32 3, label %bb.ba
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211
  ]

bb.ba:                                            ; preds = %bb.az
  %i.lw = and i64 %storemerge9.i.i.i205, -8
  %i.lx = inttoptr i64 %i.lw to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i214 = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %.sroa.3.0.copyload.i.i.i.i215 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i214, align 8, !tbaa !815
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211: ; preds = %bb.ba, %bb.az
  %.sroa.3.0.i.i.i.i212 = phi i64 [ %.sroa.3.0.copyload.i.i.i.i215, %bb.ba ], [ 2, %bb.az ] ; 2 uses
  %.not.i.i.i213 = icmp eq i64 %.sroa.3.0.i.i.i.i212, 0
  br i1 %.not.i.i.i213, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i208, label %.lr.ph.i.i.i203, !llvm.loop !42

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i208: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211, %bb.az, %bb.az, %.lr.ph.i.i.i203
  %i.ly = add i32 %i.ls, 4
  %i.lz = zext i32 %i.ly to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i209
end_hunk_11
begin_hunk_12_@_ZN12_GLOBAL__N_113TransformToPE22TransformUnaryOperatorEPN5clang13UnaryOperatorE:bb.a
  %i.m = load i8, ptr %i.l, align 16
  %i.n = icmp eq i8 %i.m, 30
  br i1 %i.n, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.o = ptrtoint ptr %1 to i64
  br label %bb.d

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.p = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformUnaryOperatorEPNS_13UnaryOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1)
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %.sroa.05.0 = phi i64 [ %i.o, %bb.c ], [ %i.p, %.critedge ]
  ret i64 %.sroa.05.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE33TransformUnaryExprOrTypeTraitExprEPNS_24UnaryExprOrTypeTraitExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i24, ptr %1, align 8
  %i.c = icmp slt i24 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !788
  %i.f = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.e) ; 2 uses
  %.not38 = icmp eq ptr %i.f, null
  br i1 %.not38, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.g, align 8, !tbaa !795
  %i.h = load i24, ptr %1, align 8
  %i.i = lshr i24 %i.h, 19
  %i.j = and i24 %i.i, 15
  %i.k = zext nneg i24 %i.j to i32
  %i.l = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #31
  %.val.i = load ptr, ptr %0, align 8, !tbaa !2280
  %i.m = tail call i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_14TypeSourceInfoENS_14SourceLocationENS_20UnaryExprOrTypeTraitENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, ptr noundef nonnull %i.f, i32 %.sroa.0.0.copyload.i, i32 noundef %i.k, i64 %i.l), !inline_history !6161
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4592
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !858
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4600
  %i.r = load i32, ptr %i.q, align 8, !tbaa !859
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [792 x i8], ptr %i.p, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -672
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2224
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %i.n, i32 noundef 0, ptr noundef %i.v, i32 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store ptr null, ptr %i.a, align 8, !tbaa !1778
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !788  ; 5 uses
  %i.y = load i16, ptr %i.x, align 8
  %i.z = and i16 %i.y, 511
  %.not = icmp eq i16 %i.z, 20
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1913 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 8
  %i.ad = and i16 %i.ac, 511
  %i.ae = icmp eq i16 %i.ad, 71
  br i1 %i.ae, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.af = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE34TransformDependentScopeDeclRefExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ab, i1 noundef zeroext false, ptr noundef nonnull %i.a), !inline_history !6162 ; 3 uses
  %spec.select.i = icmp ugt i64 %i.af, 1
  br i1 %spec.select.i, label %bb.g, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = and i64 %i.af, -2
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.0.0.copyload.i46 = load i32, ptr %i.ai, align 8, !tbaa !795
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %.sroa.0.0.copyload.i45 = load i32, ptr %i.aj, align 4, !tbaa !795
  %.val.i44 = load ptr, ptr %0, align 8, !tbaa !2280
  %i.ak = call i64 @_ZN5clang4Sema14ActOnParenExprENS_14SourceLocationES1_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i44, i32 %.sroa.0.0.copyload.i46, i32 %.sroa.0.0.copyload.i45, ptr noundef %i.ah), !inline_history !6163
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.al = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.x)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit: ; preds = %bb.g, %bb.f, %bb.h
  %storemerge = phi i64 [ %i.al, %bb.h ], [ %i.ak, %bb.g ], [ %i.af, %bb.f ] ; 2 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !1778 ; 2 uses
  %.not37 = icmp eq ptr %i.am, null
  br i1 %.not37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i40 = load i32, ptr %i.an, align 8, !tbaa !795
  %i.ao = load i24, ptr %1, align 8
  %i.ap = lshr i24 %i.ao, 19
  %i.aq = and i24 %i.ap, 15
  %i.ar = zext nneg i24 %i.aq to i32
  %i.as = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #31
  %.val.i41 = load ptr, ptr %0, align 8, !tbaa !2280
  %i.at = call i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_14TypeSourceInfoENS_14SourceLocationENS_20UnaryExprOrTypeTraitENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i41, ptr noundef nonnull %i.am, i32 %.sroa.0.0.copyload.i40, i32 noundef %i.ar, i64 %i.as), !inline_history !6161
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.j:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit
  %i.au = icmp eq i64 %storemerge, 1
  br i1 %i.au, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = and i64 %storemerge, -2
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i42 = load i32, ptr %i.ax, align 8, !tbaa !795
  %i.ay = load i24, ptr %1, align 8
  %i.az = lshr i24 %i.ay, 19
  %i.ba = and i24 %i.az, 15
  %i.bb = zext nneg i24 %i.ba to i32
  %.val.i43 = load ptr, ptr %0, align 8, !tbaa !2280
  %i.bc = call i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_4ExprENS_14SourceLocationENS_20UnaryExprOrTypeTraitE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i43, ptr noundef %i.aw, i32 %.sroa.0.0.copyload.i42, i32 noundef %i.bb), !inline_history !6164
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.k, %bb.j, %bb.i
  %.1 = phi i64 [ %i.at, %bb.i ], [ 1, %bb.j ], [ %i.bc, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.n), !inline_history !7
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.c, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  %.2 = phi i64 [ %.1, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ], [ %i.m, %bb.c ], [ 1, %bb.b ]
  ret i64 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformTypeTraitExprEPNS_13TypeTraitExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2684", align 8 ; 14 uses
  %3 = alloca %"class.clang::TypeLocBuilder", align 8 ; 12 uses
  %4 = alloca %"class.clang::TypeLoc", align 8    ; 9 uses
  %5 = alloca %"class.llvm::SmallVector.2597", align 8 ; 8 uses
  %6 = alloca %"class.clang::TypeLocBuilder", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  store i32 4, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !788  ; 2 uses
  %.not215 = icmp eq i32 %i.e, 0
  br i1 %.not215, label %.thread213, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 60
  %i.u = zext i32 %i.e to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %.not, label %.thread213.loopexit, label %bb.c, !llvm.loop !6165

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.v = load i32, ptr %1, align 8
  %i.w = lshr i32 %i.v, 27
  %.lobit.i.i.i.i.i.i.i = and i32 %i.w, 1
  %i.x = xor i32 %.lobit.i.i.i.i.i.i.i, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1778 ; 6 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ab, align 8, !tbaa !788 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 4 uses
  %i.ae = and i64 %.sroa.0.0.copyload.i, 15
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %bb.d

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %bb.c
  %i.af = load ptr, ptr %i.ad, align 16, !tbaa !791
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i8, ptr %i.ag, align 16
  %i.ai = icmp eq i8 %i.ah, 36
  br i1 %i.ai, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %i.g, ptr %3, align 8, !tbaa !1897
  store i64 32, ptr %i.h, align 8, !tbaa !1898
  store i64 32, ptr %i.i, align 8, !tbaa !1899
  store i32 0, ptr %i.j, align 8, !tbaa !1900
  store i8 0, ptr %i.k, align 4, !tbaa !1901
  %i.aj = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i) #30
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = load i64, ptr %i.h, align 8, !tbaa !1898
  %i.am = icmp ult i64 %i.al, %i.ak
  br i1 %i.am, label %bb.e, label %_ZN5clang14TypeLocBuilder7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 noundef %i.ak) #30
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit

_ZN5clang14TypeLocBuilder7reserveEm.exit:         ; preds = %bb.d, %bb.e
  %i.an = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr %i.ad, ptr nonnull %i.ac) ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  br i1 %i.ao, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %.sroa.0.0.copyload.i86 = load i64, ptr %i.ab, align 8, !tbaa !788
  %i.ap = icmp eq i64 %i.an, %.sroa.0.0.copyload.i86
  br i1 %i.ap, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !859 ; 2 uses
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !856

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ab)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

bb.i:                                             ; preds = %bb.g
  %i.as = zext i32 %i.aq to i64
  %i.at = load ptr, ptr %2, align 8, !tbaa !858
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  store ptr %i.ab, ptr %i.au, align 1
  %i.av = load i32, ptr %i.b, align 8, !tbaa !859
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

bb.j:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 232
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !1898
  %i.bb = load i64, ptr %i.i, align 8, !tbaa !1899
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.az, i64 %i.an, i32 noundef %i.bd) #30 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %3, align 8, !tbaa !1897
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !1899
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr align 1 %i.bi, i64 %i.bc, i1 false)
  %i.bj = load i32, ptr %i.b, align 8, !tbaa !859 ; 2 uses
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i88 = icmp ult i32 %i.bj, %i.bk
  br i1 %.not.i88, label %bb.l, label %bb.k, !prof !856

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.be)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

bb.l:                                             ; preds = %bb.j
  %i.bl = zext i32 %i.bj to i64
  %i.bm = load ptr, ptr %2, align 8, !tbaa !858
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  store ptr %i.be, ptr %i.bn, align 1
  %i.bo = load i32, ptr %i.b, align 8, !tbaa !859
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit: ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %.065 = phi i32 [ 1, %_ZN5clang14TypeLocBuilder7reserveEm.exit ], [ 4, %bb.i ], [ 4, %bb.h ], [ 4, %bb.k ], [ 4, %bb.l ]
  %i.bq = load ptr, ptr %3, align 8, !tbaa !1897  ; 3 uses
  %.not.i90 = icmp eq ptr %i.bq, %i.g
  %i.br = icmp eq ptr %i.bq, null
  %or.cond.i = or i1 %.not.i90, %i.br
  br i1 %or.cond.i, label %_ZN5clang14TypeLocBuilderD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #32
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit

_ZN5clang14TypeLocBuilderD2Ev.exit:               ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.v

bb.n:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bs, align 16, !tbaa !788 ; 2 uses
  %i.bt = ptrtoint ptr %i.ac to i64
  %i.bu = add i64 %i.bt, 4                        ; 2 uses
  %i.bv = call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #30
  %i.bw = icmp ne i64 %i.bu, 0
  %i.bx = zext i1 %i.bw to i64                    ; 2 uses
  %i.by = sub i64 %i.bu, %i.bx
  %i.bz = zext i32 %i.bv to i64                   ; 2 uses
  %i.ca = udiv i64 %i.by, %i.bz
  %i.cb = add i64 %i.ca, %i.bx
  %i.cc = mul i64 %i.cb, %i.bz
  %i.cd = inttoptr i64 %i.cc to ptr               ; 2 uses
  %i.ce = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr ; 2 uses
  store ptr %i.ce, ptr %4, align 8
  store ptr %i.cd, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.m, ptr %5, align 8, !tbaa !858
  store i32 0, ptr %i.n, align 8, !tbaa !859
  store i32 2, ptr %i.o, align 4, !tbaa !876
  %i.cf = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksENS_7TypeLocERN4llvm15SmallVectorImplISt4pairINS2_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cf, ptr %i.ce, ptr %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %5) #30
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !788
  %i.ci = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #30 ; 0 uses
  %i.cj = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #30 ; 0 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.ck = getelementptr inbounds nuw i8, ptr %.val, i64 13800 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ck, align 4, !tbaa !795
  store i32 0, ptr %i.ck, align 4, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.p, ptr %6, align 8, !tbaa !1897
  store i64 32, ptr %i.q, align 8, !tbaa !1898
  store i64 32, ptr %i.r, align 8, !tbaa !1899
  store i32 0, ptr %i.s, align 8, !tbaa !1900
  store i8 0, ptr %i.t, align 4, !tbaa !1901
  %.sroa.0.0.copyload.i95 = load i64, ptr %i.ab, align 8, !tbaa !788
  %i.cl = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i95) #30
  %i.cm = zext i32 %i.cl to i64                   ; 2 uses
  %i.cn = load i64, ptr %i.q, align 8, !tbaa !1898
  %i.co = icmp ult i64 %i.cn, %i.cm
  br i1 %i.co, label %bb.o, label %_ZN5clang14TypeLocBuilder7reserveEm.exit98

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %6, i64 noundef %i.cm) #30
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit98

_ZN5clang14TypeLocBuilder7reserveEm.exit98:       ; preds = %bb.n, %bb.o
  %.sroa.034.0.copyload = load ptr, ptr %4, align 8, !tbaa !100
  %.sroa.235.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !100
  %i.cp = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %6, ptr %.sroa.034.0.copyload, ptr %.sroa.235.0.copyload) ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 16
  br i1 %i.cq, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit108, label %bb.p

bb.p:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit98
  %i.cr = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #30
  %i.cs = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #30
  %.sroa.2.0.insert.ext.i100 = zext i32 %i.cs to i64
  %.sroa.2.0.insert.shift.i101 = shl nuw i64 %.sroa.2.0.insert.ext.i100, 32
  %.sroa.0.0.insert.ext.i102 = zext i32 %i.cr to i64
  %.sroa.0.0.insert.insert.i103 = or disjoint i64 %.sroa.2.0.insert.shift.i101, %.sroa.0.0.insert.ext.i102
  %.sroa.0.0.copyload.i104 = load i32, ptr %i.ac, align 8, !tbaa !795
  %.val82 = load ptr, ptr %0, align 8, !tbaa !2280
  %i.ct = call i64 @_ZN5clang4Sema18CheckPackExpansionENS_8QualTypeENS_11SourceRangeENS_14SourceLocationENS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val82, i64 %i.cp, i64 %.sroa.0.0.insert.insert.i103, i32 %.sroa.0.0.copyload.i104, i32 %i.ch) #30 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  br i1 %i.cu, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit108, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %6, i64 %i.ct, i64 noundef 4, i32 noundef 4) #30
  %i.cw = extractvalue { ptr, ptr } %i.cv, 1
  %.sroa.0.0.copyload.i106 = load i32, ptr %i.ac, align 8, !tbaa !795
  store i32 %.sroa.0.0.copyload.i106, ptr %i.cw, align 4, !tbaa !795
  %i.cx = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 232
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.da = load i64, ptr %i.q, align 8, !tbaa !1898
  %i.db = load i64, ptr %i.r, align 8, !tbaa !1899
  %i.dc = sub i64 %i.da, %i.db                    ; 2 uses
  %i.dd = trunc i64 %i.dc to i32
  %i.de = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.cz, i64 %i.ct, i32 noundef %i.dd) #30 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %6, align 8, !tbaa !1897
  %i.dh = load i64, ptr %i.r, align 8, !tbaa !1899
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.df, ptr align 1 %i.di, i64 %i.dc, i1 false)
  %i.dj = load i32, ptr %i.b, align 8, !tbaa !859 ; 2 uses
  %i.dk = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i107 = icmp ult i32 %i.dj, %i.dk
  br i1 %.not.i107, label %bb.s, label %bb.r, !prof !856

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.de)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit108

bb.s:                                             ; preds = %bb.q
  %i.dl = zext i32 %i.dj to i64
  %i.dm = load ptr, ptr %2, align 8, !tbaa !858
end_hunk_12
begin_hunk_13_@_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit

_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i91, %bb.s, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i101, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i112
  %.sroa.6.0.i.i = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i91 ], [ %.0.copyload.i14.i.i, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i101 ], [ %.0.copyload.i.i.i92, %bb.s ], [ %.0.copyload.i16.i.i, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i112 ]
  call void @_ZN5clang12CXXScopeSpec6ExtendERNS_10ASTContextEPNS_17NamespaceBaseDeclENS_14SourceLocationES5_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.cp, ptr noundef %.0.i, i32 %.sroa.0.0.i.i67.ph, i32 %.sroa.6.0.i.i) #30
  br label %bb.bg

bb.v:                                             ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit
  %i.ef = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 232
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.ei = call i32 @_ZNK5clang22NestedNameSpecifierLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #30
  call void @_ZN5clang12CXXScopeSpec10MakeGlobalERNS_10ASTContextENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.eh, i32 %i.ei) #30
  br label %bb.bg

_ZNK5clang19NestedNameSpecifier15getAsRecordDeclEv.exit: ; preds = %bb.h
  %i.ej = load ptr, ptr %i.y, align 8, !tbaa !2065, !noalias !6474 ; 3 uses
  %i.ek = load ptr, ptr %i.z, align 8, !tbaa !2416, !noalias !6474 ; 2 uses
  %i.el = load i32, ptr %i.aa, align 4, !tbaa !2028, !noalias !6474 ; 4 uses
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %.loopexit.i.i.i117, label %bb.w

bb.w:                                             ; preds = %_ZNK5clang19NestedNameSpecifier15getAsRecordDeclEv.exit
  %i.en = add i32 %i.el, -1                       ; 2 uses
  %i.eo = mul i64 %i.ao, -4658895280553007687     ; 2 uses
  %i.ep = lshr i64 %i.eo, 31
  %i.eq = xor i64 %i.ep, %i.eo
  %i.er = trunc i64 %i.eq to i32
  %i.es = and i32 %i.en, %i.er                    ; 3 uses
  %i.et = zext i32 %i.es to i64                   ; 2 uses
  %i.eu = lshr i64 %i.et, 5
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !795, !noalias !6475
  %i.ex = and i32 %i.es, 31
  %i.ey = lshr i32 %i.ew, %i.ex
  %i.ez = trunc i32 %i.ey to i1
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i123, label %.loopexit.i.i.i117, !prof !854

.lr.ph.i.i.i.i.i123:                              ; preds = %bb.w, %bb.x
  %i.fa = phi i64 [ %i.fg, %bb.x ], [ %i.et, %bb.w ]
  %.017.i.i.i.i.i124 = phi i32 [ %i.ff, %bb.x ], [ %i.es, %bb.w ]
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.fa ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !855, !noalias !6475
  %i.fd = icmp eq ptr %i.fc, %i.ap
  br i1 %i.fd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i125, label %bb.x, !prof !856

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i123
  %i.fe = add nuw i32 %.017.i.i.i.i.i124, 1
  %i.ff = and i32 %i.fe, %i.en                    ; 3 uses
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = lshr i64 %i.fg, 5
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !795, !noalias !6475
  %i.fk = and i32 %i.ff, 31
  %i.fl = lshr i32 %i.fj, %i.fk
  %i.fm = trunc i32 %i.fl to i1
  br i1 %i.fm, label %.lr.ph.i.i.i.i.i123, label %.loopexit.i.i.i117, !prof !857

.loopexit.i.i.i117:                               ; preds = %bb.x, %bb.w, %_ZNK5clang19NestedNameSpecifier15getAsRecordDeclEv.exit
  %i.fn = zext i32 %i.el to i64                   ; 2 uses
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.fn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i125: ; preds = %.lr.ph.i.i.i.i.i123
  %.pre.i126 = zext i32 %i.el to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i125, %.loopexit.i.i.i117
  %.pre-phi.i119 = phi i64 [ %.pre.i126, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i125 ], [ %i.fn, %.loopexit.i.i.i117 ]
  %.lcssa.sink.i.i.i120 = phi ptr [ %i.fb, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i125 ], [ %i.fo, %.loopexit.i.i.i117 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %.pre-phi.i119
  %.not.i121 = icmp eq ptr %.lcssa.sink.i.i.i120, %i.fp
  br i1 %.not.i121, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit127, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118
  %i.fq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i120, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit127

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit127: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118, %bb.y
  %.0.i122 = phi ptr [ %i.fr, %bb.y ], [ %i.ap, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118 ]
  %i.fs = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 232
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.fv = call i32 @_ZNK5clang22NestedNameSpecifierLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #30
  %i.fw = load i64, ptr %12, align 8, !tbaa !2705 ; 5 uses
  %i.fx = icmp ugt i64 %i.fw, 7
  br i1 %i.fx, label %bb.z, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i128

bb.z:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit127
  %i.fy = trunc i64 %i.fw to i32
  %i.fz = lshr i32 %i.fy, 1
  %i.ga = and i32 %i.fz, 3
  switch i32 %i.ga, label %default.unreachable535 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i151
    i32 3, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147
    i32 2, label %.lr.ph.i.i.i133.preheader
  ]

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i128: ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit127
  %i.gb = icmp samesign ult i64 %i.fw, 2
  br i1 %i.gb, label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i128
  %i.gc = load ptr, ptr %i.q, align 8, !tbaa !2706
  %.0.copyload.i.i.i129 = load i32, ptr %i.gc, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147: ; preds = %bb.z
  %i.gd = and i64 %i.fw, -8
  %i.ge = inttoptr i64 %i.gd to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i148 = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %.sroa.3.0.copyload.i.i.i149 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i148, align 8, !tbaa !815 ; 2 uses
  %.not8.i.i.i150 = icmp eq i64 %.sroa.3.0.copyload.i.i.i149, 0
  br i1 %.not8.i.i.i150, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139, label %.lr.ph.i.i.i133.preheader

.lr.ph.i.i.i133.preheader:                        ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147, %bb.z
  %storemerge9.i.i.i135.ph = phi i64 [ 2, %bb.z ], [ %.sroa.3.0.copyload.i.i.i149, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147 ]
  br label %.lr.ph.i.i.i133

.lr.ph.i.i.i133:                                  ; preds = %.lr.ph.i.i.i133.preheader, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141
  %.010.i.i.i134 = phi i32 [ %i.gi, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141 ], [ 0, %.lr.ph.i.i.i133.preheader ]
  %storemerge9.i.i.i135 = phi i64 [ %.sroa.3.0.i.i.i.i142, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141 ], [ %storemerge9.i.i.i135.ph, %.lr.ph.i.i.i133.preheader ] ; 4 uses
  %i.gf = icmp ugt i64 %storemerge9.i.i.i135, 7   ; 2 uses
  %i.gg = and i64 %storemerge9.i.i.i135, 6
  %i.gh = icmp eq i64 %i.gg, 0
  %spec.select.i.i.i.i136 = select i1 %i.gh, i32 12, i32 8
  %.0.i.i.i.i137 = select i1 %i.gf, i32 %spec.select.i.i.i.i136, i32 4
  %i.gi = add i32 %.0.i.i.i.i137, %.010.i.i.i134  ; 2 uses
  br i1 %i.gf, label %bb.ab, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138

bb.ab:                                            ; preds = %.lr.ph.i.i.i133
  %i.gj = trunc i64 %storemerge9.i.i.i135 to i32
  %i.gk = lshr i32 %i.gj, 1
  %i.gl = and i32 %i.gk, 3
  switch i32 %i.gl, label %default.unreachable535 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138
    i32 3, label %bb.ac
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.gm = and i64 %storemerge9.i.i.i135, -8
  %i.gn = inttoptr i64 %i.gm to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i144 = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.sroa.3.0.copyload.i.i.i.i145 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i144, align 8, !tbaa !815
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141: ; preds = %bb.ac, %bb.ab
  %.sroa.3.0.i.i.i.i142 = phi i64 [ %.sroa.3.0.copyload.i.i.i.i145, %bb.ac ], [ 2, %bb.ab ] ; 2 uses
  %.not.i.i.i143 = icmp eq i64 %.sroa.3.0.i.i.i.i142, 0
  br i1 %.not.i.i.i143, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138, label %.lr.ph.i.i.i133, !llvm.loop !42

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141, %bb.ab, %bb.ab, %.lr.ph.i.i.i133
  %i.go = add i32 %i.gi, 4
  %i.gp = zext i32 %i.go to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139: ; preds = %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147, %bb.z
  %i.gq = phi i64 [ 4, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147 ], [ 4, %bb.z ], [ %i.gp, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138 ]
  %i.gr = load ptr, ptr %i.q, align 8, !tbaa !2706
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gq
  %.0.copyload.i14.i.i140 = load i32, ptr %i.gs, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i151: ; preds = %bb.z
  %i.gt = load ptr, ptr %i.q, align 8, !tbaa !2706
  %.0.copyload.i15.i.i152 = load ptr, ptr %i.gt, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.gu = and i64 %i.fw, -8
  %i.gv = inttoptr i64 %i.gu to ptr
  store ptr %i.gv, ptr %7, align 8, !tbaa !2649
  store ptr %.0.copyload.i15.i.i152, ptr %i.ab, align 8, !tbaa !2648
  %i.gw = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #30 ; 0 uses
  %i.gx = load ptr, ptr %i.q, align 8, !tbaa !2706
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %.0.copyload.i16.i.i153 = load i32, ptr %i.gy, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit

_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i128, %bb.aa, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i151
  %.sroa.6.0.i.i130 = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i128 ], [ %.0.copyload.i14.i.i140, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139 ], [ %.0.copyload.i.i.i129, %bb.aa ], [ %.0.copyload.i16.i.i153, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i151 ]
  call void @_ZN5clang12CXXScopeSpec18MakeMicrosoftSuperERNS_10ASTContextEPNS_13CXXRecordDeclENS_14SourceLocationES5_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.fu, ptr noundef %.0.i122, i32 %i.fv, i32 %.sroa.6.0.i.i130) #30
  br label %bb.bg

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread262: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.gz = and i64 %.sroa.0.0.copyload.i, -8       ; 3 uses
  %i.ha = inttoptr i64 %i.gz to ptr               ; 9 uses
  %.0.copyload.i.i = load ptr, ptr %.sroa.2.0.copyload.i, align 1 ; 7 uses
  store ptr %i.ha, ptr %13, align 8
  store ptr %.0.copyload.i.i, ptr %i.r, align 8
  %i.hb = and i64 %.sroa.0.0.copyload.i, 8
  %.not.i.i156 = icmp eq i64 %i.hb, 0             ; 2 uses
  br i1 %.not.i.i156, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %bb.am

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread262
  %i.hc = load ptr, ptr %i.ha, align 16, !tbaa !791
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load i8, ptr %i.hd, align 16
  %i.hf = icmp eq i8 %i.he, 20
  br i1 %i.hf, label %bb.ad, label %bb.am

bb.ad:                                            ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.hg, align 16, !tbaa !815 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.0.copyload.i.i, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !2708 ; 2 uses
  %.not285 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not285, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hj = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i.i, ptr %i.hi, i64 %3, ptr noundef %4) ; 2 uses
  %i.hk = extractvalue { i64, ptr } %i.hj, 0      ; 2 uses
  %i.hl = extractvalue { i64, ptr } %i.hj, 1
  %.not286 = icmp eq i64 %i.hk, 0
  br i1 %.not286, label %.critedge53, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.8.0 = phi ptr [ %i.hi, %bb.ad ], [ %i.hl, %bb.ae ]
  %.sroa.0243.0 = phi i64 [ 0, %bb.ad ], [ %i.hk, %bb.ae ]
  %.1 = phi ptr [ %4, %bb.ad ], [ null, %bb.ae ]
  %.sroa.043.1 = phi i64 [ %3, %bb.ad ], [ 0, %bb.ae ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %11, i64 %.sroa.0243.0, ptr %.sroa.8.0) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !2710
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.copyload.i.i, i64 16
  %.sroa.0.0.copyload.i161 = load i32, ptr %i.ho, align 8, !tbaa !795
  %i.hp = load i64, ptr %12, align 8, !tbaa !2705 ; 5 uses
  %i.hq = icmp ugt i64 %i.hp, 7
  br i1 %i.hq, label %bb.ag, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i162

bb.ag:                                            ; preds = %bb.af
  %i.hr = trunc i64 %i.hp to i32
  %i.hs = lshr i32 %i.hr, 1
  %i.ht = and i32 %i.hs, 3
  switch i32 %i.ht, label %default.unreachable535 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i185
    i32 3, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181
    i32 2, label %.lr.ph.i.i.i167.preheader
  ]

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i162: ; preds = %bb.af
  %i.hu = icmp samesign ult i64 %i.hp, 2
  br i1 %i.hu, label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i162
  %i.hv = load ptr, ptr %i.q, align 8, !tbaa !2706
  %.0.copyload.i.i.i163 = load i32, ptr %i.hv, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181: ; preds = %bb.ag
  %i.hw = and i64 %i.hp, -8
  %i.hx = inttoptr i64 %i.hw to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i182 = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %.sroa.3.0.copyload.i.i.i183 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i182, align 8, !tbaa !815 ; 2 uses
  %.not8.i.i.i184 = icmp eq i64 %.sroa.3.0.copyload.i.i.i183, 0
  br i1 %.not8.i.i.i184, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173, label %.lr.ph.i.i.i167.preheader

.lr.ph.i.i.i167.preheader:                        ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181, %bb.ag
  %storemerge9.i.i.i169.ph = phi i64 [ 2, %bb.ag ], [ %.sroa.3.0.copyload.i.i.i183, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181 ]
  br label %.lr.ph.i.i.i167

.lr.ph.i.i.i167:                                  ; preds = %.lr.ph.i.i.i167.preheader, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175
  %.010.i.i.i168 = phi i32 [ %i.ib, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175 ], [ 0, %.lr.ph.i.i.i167.preheader ]
  %storemerge9.i.i.i169 = phi i64 [ %.sroa.3.0.i.i.i.i176, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175 ], [ %storemerge9.i.i.i169.ph, %.lr.ph.i.i.i167.preheader ] ; 4 uses
  %i.hy = icmp ugt i64 %storemerge9.i.i.i169, 7   ; 2 uses
  %i.hz = and i64 %storemerge9.i.i.i169, 6
  %i.ia = icmp eq i64 %i.hz, 0
  %spec.select.i.i.i.i170 = select i1 %i.ia, i32 12, i32 8
  %.0.i.i.i.i171 = select i1 %i.hy, i32 %spec.select.i.i.i.i170, i32 4
  %i.ib = add i32 %.0.i.i.i.i171, %.010.i.i.i168  ; 2 uses
  br i1 %i.hy, label %bb.ai, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172

bb.ai:                                            ; preds = %.lr.ph.i.i.i167
  %i.ic = trunc i64 %storemerge9.i.i.i169 to i32
  %i.id = lshr i32 %i.ic, 1
  %i.ie = and i32 %i.id, 3
  switch i32 %i.ie, label %default.unreachable535 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172
    i32 3, label %bb.aj
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.if = and i64 %storemerge9.i.i.i169, -8
  %i.ig = inttoptr i64 %i.if to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i178 = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %.sroa.3.0.copyload.i.i.i.i179 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i178, align 8, !tbaa !815
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175: ; preds = %bb.aj, %bb.ai
  %.sroa.3.0.i.i.i.i176 = phi i64 [ %.sroa.3.0.copyload.i.i.i.i179, %bb.aj ], [ 2, %bb.ai ] ; 2 uses
  %.not.i.i.i177 = icmp eq i64 %.sroa.3.0.i.i.i.i176, 0
  br i1 %.not.i.i.i177, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172, label %.lr.ph.i.i.i167, !llvm.loop !42

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175, %bb.ai, %bb.ai, %.lr.ph.i.i.i167
  %i.ih = add i32 %i.ib, 4
  %i.ii = zext i32 %i.ih to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173: ; preds = %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181, %bb.ag
  %i.ij = phi i64 [ 4, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181 ], [ 4, %bb.ag ], [ %i.ii, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172 ]
  %i.ik = load ptr, ptr %i.q, align 8, !tbaa !2706
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ij
  %.0.copyload.i14.i.i174 = load i32, ptr %i.il, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i185: ; preds = %bb.ag
  %i.im = load ptr, ptr %i.q, align 8, !tbaa !2706
  %.0.copyload.i15.i.i186 = load ptr, ptr %i.im, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.in = and i64 %i.hp, -8
  %i.io = inttoptr i64 %i.in to ptr
  store ptr %i.io, ptr %6, align 8, !tbaa !2649
  %i.ip = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.0.copyload.i15.i.i186, ptr %i.ip, align 8, !tbaa !2648
  %i.iq = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #30 ; 0 uses
  %i.ir = load ptr, ptr %i.q, align 8, !tbaa !2706
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %.0.copyload.i16.i.i187 = load i32, ptr %i.is, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188

_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i162, %bb.ah, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i185
  %.sroa.6.0.i.i164 = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i162 ], [ %.0.copyload.i14.i.i174, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173 ], [ %.0.copyload.i.i.i163, %bb.ah ], [ %.0.copyload.i16.i.i187, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i185 ]
  %i.it = inttoptr i64 %.sroa.043.1 to ptr
  store ptr %i.it, ptr %14, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.hn, ptr %i.iu, align 8, !tbaa !2712
  %i.iv = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %.sroa.0.0.copyload.i161, ptr %i.iv, align 8, !tbaa !795
  %i.iw = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 %.sroa.6.0.i.i164, ptr %i.iw, align 4, !tbaa !795
  %i.ix = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.iy = call noundef zeroext i1 @_ZN5clang4Sema27BuildCXXNestedNameSpecifierEPNS_5ScopeERNS0_18NestedNameSpecInfoEbRNS_12CXXScopeSpecEPNS_9NamedDeclEbPbb(ptr noundef nonnull align 8 dereferenceable(18640) %i.ix, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %14, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %.1, i1 noundef zeroext false, ptr noundef null, i1 noundef zeroext false) #30
  br i1 %i.iy, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188
  %i.iz = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 232
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.jc = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.jb) #30 ; 2 uses
  %i.jd = extractvalue { i64, ptr } %i.jc, 0
  %i.je = extractvalue { i64, ptr } %i.jc, 1
  br label %bb.al

bb.al:                                            ; preds = %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188, %bb.ak
  %.sroa.12.1 = phi ptr [ %i.je, %bb.ak ], [ null, %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188 ]
  %.sroa.0260.1 = phi i64 [ %i.jd, %bb.ak ], [ 0, %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %.critedge53

bb.am:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread262, %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  store i64 %i.gz, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  store ptr %i.s, ptr %16, align 8, !tbaa !1897
  store i64 32, ptr %i.t, align 8, !tbaa !1898
  store i64 32, ptr %i.u, align 8, !tbaa !1899
  store i32 0, ptr %i.v, align 8, !tbaa !1900
  store i8 0, ptr %i.w, align 4, !tbaa !1901
  %i.jf = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.jf, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %.not.i.i156, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i:     ; preds = %bb.an
  %i.jg = load ptr, ptr %i.ha, align 16, !tbaa !791
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load i8, ptr %i.jh, align 16
  switch i8 %i.ji, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i [
    i8 50, label %bb.ao
    i8 20, label %bb.ap
  ]

bb.ao:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.jj = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE35TransformTemplateSpecializationTypeERNS_14TypeLocBuilderENS_29TemplateSpecializationTypeLocENS_8QualTypeEPNS_9NamedDeclEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %16, ptr nonnull %i.ha, ptr %.0.copyload.i.i, i64 %3, ptr noundef %4, i1 noundef zeroext true), !inline_history !80
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

bb.ap:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.jk = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %16, ptr nonnull %i.ha, ptr %.0.copyload.i.i, i1 noundef zeroext false, i64 %3, ptr noundef %4), !inline_history !80
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, %bb.an
  %i.jl = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %16, ptr %i.ha, ptr %.0.copyload.i.i), !inline_history !80
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit: ; preds = %bb.ao, %bb.ap, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i
  %.sroa.014.0.i = phi i64 [ %i.jl, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i ], [ %i.jj, %bb.ao ], [ %i.jk, %bb.ap ] ; 4 uses
  store i64 %.sroa.014.0.i, ptr %15, align 8, !tbaa !788
  %i.jm = icmp ult i64 %.sroa.014.0.i, 16
  br i1 %i.jm, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit
  %i.jn = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 232
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !1116, !nonnull !97, !align !787 ; 2 uses
  %i.jq = load i64, ptr %i.t, align 8, !tbaa !1898
  %i.jr = load i64, ptr %i.u, align 8, !tbaa !1899 ; 2 uses
  %i.js = sub i64 %i.jq, %i.jr                    ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 2632 ; 3 uses
  %i.ju = add i64 %i.js, 7
  %i.jv = and i64 %i.ju, -8                       ; 2 uses
  %i.jw = load ptr, ptr %i.jt, align 8, !tbaa !1522 ; 2 uses
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = add i64 %i.jv, %i.jx                    ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jp, i64 2640
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !1523
  %i.kb = icmp ult i64 %i.jy, %i.ka
  br i1 %i.kb, label %bb.ar, label %bb.as, !prof !856

bb.ar:                                            ; preds = %bb.aq
  %i.kc = inttoptr i64 %i.jy to ptr
  store ptr %i.kc, ptr %i.jt, align 8, !tbaa !1522
  br label %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit

bb.as:                                            ; preds = %bb.aq
  %i.kd = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.jt, i64 noundef %i.js, i64 noundef %i.jv, i8 3)
  %.pre.i189 = load i64, ptr %i.u, align 8, !tbaa !1899
  br label %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit

_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit: ; preds = %bb.ar, %bb.as
  %i.ke = phi i64 [ %i.jr, %bb.ar ], [ %.pre.i189, %bb.as ]
  %.0.i.i.i.i190 = phi ptr [ %i.jw, %bb.ar ], [ %i.kd, %bb.as ] ; 3 uses
  %i.kf = load ptr, ptr %16, align 8, !tbaa !1897
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.ke
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i.i190, ptr align 1 %i.kg, i64 %i.js, i1 false)
  %i.kh = inttoptr i64 %.sroa.014.0.i to ptr      ; 2 uses
  store ptr %i.kh, ptr %13, align 8, !tbaa !100
  store ptr %.0.i.i.i.i190, ptr %i.r, align 8, !tbaa !100
  br label %bb.at

bb.at:                                            ; preds = %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit, %bb.am
  %.sroa.2.0.copyload371 = phi ptr [ %.0.i.i.i.i190, %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit ], [ %.0.copyload.i.i, %bb.am ] ; 2 uses
  %.sroa.07.0.copyload369 = phi ptr [ %i.kh, %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit ], [ %i.ha, %bb.am ] ; 2 uses
  %.0.copyload.i.i.i.i.i = phi i64 [ %.sroa.014.0.i, %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit ], [ %i.gz, %bb.am ]
  %i.ki = and i64 %.0.copyload.i.i.i.i.i, -16
  %i.kj = inttoptr i64 %i.ki to ptr
  %i.kk = load ptr, ptr %i.kj, align 16, !tbaa !791 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 17
  %i.km = load i16, ptr %i.kl, align 1
  %i.kn = and i16 %i.km, 4
  %.not282 = icmp eq i16 %i.kn, 0
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ko, align 8, !tbaa !788 ; 2 uses
  br i1 %.not282, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.kp = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.kq = inttoptr i64 %i.kp to ptr
  %i.kr = load ptr, ptr %i.kq, align 16, !tbaa !791
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load i8, ptr %i.ks, align 16            ; 2 uses
  %i.ku = icmp eq i8 %i.kt, 49
  %.pre367.pre377 = load ptr, ptr %0, align 8, !tbaa !2280 ; 3 uses
  br i1 %i.ku, label %.critedge55, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kv = getelementptr inbounds nuw i8, ptr %.pre367.pre377, i64 216
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.kx = load i64, ptr %i.kw, align 8
  %i.ky = and i64 %i.kx, 8192
  %.not = icmp ne i64 %i.ky, 0
  %i.kz = icmp eq i8 %i.kt, 47
  %or.cond = and i1 %i.kz, %.not
  br i1 %or.cond, label %.thread, label %bb.bc

bb.aw:                                            ; preds = %bb.at
  %.pre367.pre = load ptr, ptr %0, align 8, !tbaa !2280 ; 2 uses
  %.pre379 = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %.pre380 = inttoptr i64 %.pre379 to ptr
  %.pre510 = load ptr, ptr %.pre380, align 16, !tbaa !791
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre510, i64 16
  %.pre511 = load i8, ptr %.phi.trans.insert, align 16
  %i.la = icmp eq i8 %.pre511, 47
  br i1 %i.la, label %.thread, label %.critedge55

.thread:                                          ; preds = %bb.av, %bb.aw
  %.pre367537 = phi ptr [ %.pre367.pre, %bb.aw ], [ %.pre367.pre377, %bb.av ]
  %i.lb = getelementptr inbounds nuw i8, ptr %.pre367537, i64 8
  %i.lc = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #30
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.lb, i32 %i.lc, i32 noundef 6967) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %17) #30
  %.pre366 = load ptr, ptr %0, align 8, !tbaa !2280
  %.sroa.07.0.copyload.pre = load ptr, ptr %13, align 8, !tbaa !100
  %.sroa.2.0.copyload.pre = load ptr, ptr %i.r, align 8, !tbaa !100
  br label %.critedge55

.critedge55:                                      ; preds = %bb.au, %.thread, %bb.aw
  %.sroa.2.0.copyload = phi ptr [ %.sroa.2.0.copyload.pre, %.thread ], [ %.sroa.2.0.copyload371, %bb.aw ], [ %.sroa.2.0.copyload371, %bb.au ]
  %.sroa.07.0.copyload = phi ptr [ %.sroa.07.0.copyload.pre, %.thread ], [ %.sroa.07.0.copyload369, %bb.aw ], [ %.sroa.07.0.copyload369, %bb.au ]
  %i.ld = phi ptr [ %.pre366, %.thread ], [ %.pre367.pre, %bb.aw ], [ %.pre367.pre377, %bb.au ]
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 232
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.lg = load i64, ptr %12, align 8, !tbaa !2705 ; 5 uses
  %i.lh = icmp ugt i64 %i.lg, 7
  br i1 %i.lh, label %bb.ax, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i198

bb.ax:                                            ; preds = %.critedge55
  %i.li = trunc i64 %i.lg to i32
  %i.lj = lshr i32 %i.li, 1
  %i.lk = and i32 %i.lj, 3
  switch i32 %i.lk, label %default.unreachable535 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i209
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i221
    i32 3, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i217
    i32 2, label %.lr.ph.i.i.i203.preheader
  ]

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i198: ; preds = %.critedge55
  %i.ll = icmp samesign ult i64 %i.lg, 2
  br i1 %i.ll, label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit224, label %bb.ay

bb.ay:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i198
  %i.lm = load ptr, ptr %i.q, align 8, !tbaa !2706
  %.0.copyload.i.i.i199 = load i32, ptr %i.lm, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit224

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i217: ; preds = %bb.ax
  %i.ln = and i64 %i.lg, -8
  %i.lo = inttoptr i64 %i.ln to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i218 = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %.sroa.3.0.copyload.i.i.i219 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i218, align 8, !tbaa !815 ; 2 uses
  %.not8.i.i.i220 = icmp eq i64 %.sroa.3.0.copyload.i.i.i219, 0
  br i1 %.not8.i.i.i220, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i209, label %.lr.ph.i.i.i203.preheader

.lr.ph.i.i.i203.preheader:                        ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i217, %bb.ax
  %storemerge9.i.i.i205.ph = phi i64 [ 2, %bb.ax ], [ %.sroa.3.0.copyload.i.i.i219, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i217 ]
  br label %.lr.ph.i.i.i203

.lr.ph.i.i.i203:                                  ; preds = %.lr.ph.i.i.i203.preheader, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211
  %.010.i.i.i204 = phi i32 [ %i.ls, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211 ], [ 0, %.lr.ph.i.i.i203.preheader ]
  %storemerge9.i.i.i205 = phi i64 [ %.sroa.3.0.i.i.i.i212, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211 ], [ %storemerge9.i.i.i205.ph, %.lr.ph.i.i.i203.preheader ] ; 4 uses
  %i.lp = icmp ugt i64 %storemerge9.i.i.i205, 7   ; 2 uses
  %i.lq = and i64 %storemerge9.i.i.i205, 6
  %i.lr = icmp eq i64 %i.lq, 0
  %spec.select.i.i.i.i206 = select i1 %i.lr, i32 12, i32 8
  %.0.i.i.i.i207 = select i1 %i.lp, i32 %spec.select.i.i.i.i206, i32 4
  %i.ls = add i32 %.0.i.i.i.i207, %.010.i.i.i204  ; 2 uses
  br i1 %i.lp, label %bb.az, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i208

bb.az:                                            ; preds = %.lr.ph.i.i.i203
  %i.lt = trunc i64 %storemerge9.i.i.i205 to i32
  %i.lu = lshr i32 %i.lt, 1
  %i.lv = and i32 %i.lu, 3
  switch i32 %i.lv, label %default.unreachable535 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i208
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i208
    i32 3, label %bb.ba
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211
  ]

bb.ba:                                            ; preds = %bb.az
  %i.lw = and i64 %storemerge9.i.i.i205, -8
  %i.lx = inttoptr i64 %i.lw to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i214 = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %.sroa.3.0.copyload.i.i.i.i215 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i214, align 8, !tbaa !815
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211: ; preds = %bb.ba, %bb.az
  %.sroa.3.0.i.i.i.i212 = phi i64 [ %.sroa.3.0.copyload.i.i.i.i215, %bb.ba ], [ 2, %bb.az ] ; 2 uses
  %.not.i.i.i213 = icmp eq i64 %.sroa.3.0.i.i.i.i212, 0
  br i1 %.not.i.i.i213, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i208, label %.lr.ph.i.i.i203, !llvm.loop !42

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i208: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211, %bb.az, %bb.az, %.lr.ph.i.i.i203
  %i.ly = add i32 %i.ls, 4
  %i.lz = zext i32 %i.ly to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i209
end_hunk_13
begin_hunk_14_@_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE:bb.a
  %i.fg = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPKNS_14IdentifierInfoEEERKNS_8SemaBase21SemaDiagnosticBuilderES7_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  %i.fh = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %.sroa.0.0.copyload.i41.i = load i32, ptr %i.fj, align 8, !tbaa !795
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %i.fi, i32 %.sroa.0.0.copyload.i41.i, i32 noundef 120) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %18) #30
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %.val.i = load ptr, ptr %0, align 8, !tbaa !2280
  %i.fk = getelementptr i8, ptr %.val.i, i64 232
  %.val.val.i = load ptr, ptr %i.fk, align 8, !tbaa !1116
  %i.fl = call i64 @_ZNK5clang10ASTContext10getTagTypeENS_21ElaboratedTypeKeywordENS_19NestedNameSpecifierEPKNS_7TagDeclEb(ptr noundef nonnull align 8 dereferenceable(23904) %.val.val.i, i32 noundef %i.o, i64 %.sroa.084.0, ptr noundef nonnull %.0.i.i.i.i, i1 noundef zeroext false) #30
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %_ZN5clang12LookupResultD2Ev.exit.i, %bb.j, %bb.i, %bb.h
  %.sroa.051.0.i = phi i64 [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %_ZN5clang12LookupResultD2Ev.exit.i ], [ %i.fl, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.fm = load i8, ptr %i.aw, align 1, !tbaa !1726, !range !96, !noundef !97
  %i.fn = trunc nuw i8 %i.fm to i1
  %.pre61.i = load i32, ptr %11, align 8          ; 3 uses
  br i1 %i.fn, label %bb.af, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i43.i

bb.af:                                            ; preds = %bb.ae
  %i.fo = icmp ne i32 %.pre61.i, 5
  %i.fp = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = icmp ne ptr %i.fq, null
  %or.cond.i.i46.i = select i1 %i.fo, i1 %i.fr, i1 false
  br i1 %or.cond.i.i46.i, label %bb.ag, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i43.i

bb.ag:                                            ; preds = %bb.af
  %i.fs = load ptr, ptr %i.aq, align 8, !tbaa !1724 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 216
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = and i64 %i.fw, 18014398509481984
  %.not.i.i47.i = icmp eq i64 %i.fx, 0
  br i1 %.not.i.i47.i, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i44.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN5clang4Sema17CheckLookupAccessERKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.fs, ptr noundef nonnull align 8 dereferenceable(168) %11) #30
  %.pre60.i = load i32, ptr %11, align 8
  br label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i43.i

_ZN5clang12LookupResult14diagnoseAccessEv.exit.i43.i: ; preds = %bb.ah, %bb.af, %bb.ae
  %i.fy = phi i32 [ %.pre60.i, %bb.ah ], [ %.pre61.i, %bb.ae ], [ %.pre61.i, %bb.af ]
  %i.fz = load i8, ptr %i.ax, align 4, !tbaa !1727, !range !96, !noundef !97
  %i.ga = trunc nuw i8 %i.fz to i1
  %i.gb = icmp eq i32 %i.fy, 5
  %or.cond57.i = select i1 %i.ga, i1 %i.gb, i1 false
  br i1 %or.cond57.i, label %bb.ai, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i44.i

bb.ai:                                            ; preds = %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i43.i
  %i.gc = load ptr, ptr %i.aq, align 8, !tbaa !1724
  call void @_ZN5clang4Sema23DiagnoseAmbiguousLookupERNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.gc, ptr noundef nonnull align 8 dereferenceable(168) %11) #30
  br label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i44.i

_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i44.i: ; preds = %bb.ai, %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i43.i, %bb.ag
  %i.gd = load ptr, ptr %i.ap, align 8, !tbaa !1728 ; 2 uses
  %.not.i45.i = icmp eq ptr %i.gd, null
  br i1 %.not.i45.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i44.i
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.gd) #30
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i44.i
  %i.ge = load ptr, ptr %i.al, align 8, !tbaa !858 ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.am
  br i1 %i.gf, label %_ZN5clang12LookupResultD2Ev.exit48.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @free(ptr noundef %i.ge) #30
  br label %_ZN5clang12LookupResultD2Ev.exit48.i

_ZN5clang12LookupResultD2Ev.exit48.i:             ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.am

bb.am:                                            ; preds = %_ZN5clang12LookupResultD2Ev.exit48.i, %bb.g, %bb.e
  %.sroa.051.1.i = phi i64 [ %i.ab, %bb.e ], [ %i.af, %bb.g ], [ %.sroa.051.0.i, %_ZN5clang12LookupResultD2Ev.exit48.i ] ; 12 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !1592
  %.not.i.i49.i = icmp eq i32 %i.gh, 0
  br i1 %.not.i.i49.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE24RebuildDependentNameTypeENS_21ElaboratedTypeKeywordENS_14SourceLocationENS_22NestedNameSpecifierLocEPKNS_14IdentifierInfoES5_b.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !1593
  call void @free(ptr noundef %i.gj) #30
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE24RebuildDependentNameTypeENS_21ElaboratedTypeKeywordENS_14SourceLocationENS_22NestedNameSpecifierLocEPKNS_14IdentifierInfoES5_b.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE24RebuildDependentNameTypeENS_21ElaboratedTypeKeywordENS_14SourceLocationENS_22NestedNameSpecifierLocEPKNS_14IdentifierInfoES5_b.exit: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %i.gk = icmp ult i64 %.sroa.051.1.i, 16
  br i1 %i.gk, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE24RebuildDependentNameTypeENS_21ElaboratedTypeKeywordENS_14SourceLocationENS_22NestedNameSpecifierLocEPKNS_14IdentifierInfoES5_b.exit
  %i.gl = and i64 %.sroa.051.1.i, -16
  %i.gm = inttoptr i64 %i.gl to ptr
  %i.gn = load ptr, ptr %i.gm, align 16, !tbaa !791
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load i8, ptr %i.go, align 16            ; 2 uses
  %i.gq = add i8 %i.gp, -47
  %switch.i.i.i.i.i.i.i.i = icmp ult i8 %i.gq, 3
  br i1 %switch.i.i.i.i.i.i.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gr = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.sroa.051.1.i, i64 noundef 16, i32 noundef 8) #30
  %i.gs = extractvalue { ptr, ptr } %i.gr, 1      ; 3 uses
  %.sroa.0.0.copyload.i42 = load i32, ptr %3, align 8, !tbaa !795
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  store i32 %.sroa.0.0.copyload.i42, ptr %i.gt, align 4, !tbaa !795
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store ptr %.sroa.13.0, ptr %i.gu, align 8, !tbaa !1904
  %.sroa.0.0.copyload.i43 = load i32, ptr %i.r, align 8, !tbaa !795
  store i32 %.sroa.0.0.copyload.i43, ptr %i.gs, align 8, !tbaa !795
  br label %bb.av

bb.aq:                                            ; preds = %bb.ao
  switch i8 %i.gp, label %bb.au [
    i8 17, label %bb.ar
    i8 54, label %bb.as
    i8 56, label %bb.at
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.gv = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.sroa.051.1.i, i64 noundef 16, i32 noundef 8) #30
  %i.gw = extractvalue { ptr, ptr } %i.gv, 1      ; 3 uses
  %.sroa.0.0.copyload.i45 = load i32, ptr %3, align 8, !tbaa !795
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  store i32 %.sroa.0.0.copyload.i45, ptr %i.gx, align 4, !tbaa !795
  %.sroa.0.0.copyload.i46 = load i32, ptr %i.r, align 8, !tbaa !795
  store i32 %.sroa.0.0.copyload.i46, ptr %i.gw, align 4, !tbaa !795
  %.not.i47 = icmp eq i64 %.sroa.084.0, 0
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %..i = select i1 %.not.i47, ptr null, ptr %.sroa.13.0
  store ptr %..i, ptr %i.gy, align 8, !tbaa !2638
  br label %bb.av

bb.as:                                            ; preds = %bb.aq
  %i.gz = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.sroa.051.1.i, i64 noundef 16, i32 noundef 8) #30
  %i.ha = extractvalue { ptr, ptr } %i.gz, 1      ; 3 uses
  %.sroa.0.0.copyload.i49 = load i32, ptr %3, align 8, !tbaa !795
  %.sroa.0.0.copyload.i50 = load i32, ptr %i.r, align 8, !tbaa !795
  store i32 %.sroa.0.0.copyload.i50, ptr %i.ha, align 8, !tbaa !795
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store i32 %.sroa.0.0.copyload.i49, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !795
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store ptr %.sroa.13.0, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !100
  br label %bb.av

bb.at:                                            ; preds = %bb.aq
  %i.hb = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.sroa.051.1.i, i64 noundef 16, i32 noundef 8) #30
  %i.hc = extractvalue { ptr, ptr } %i.hb, 1      ; 3 uses
  %.sroa.0.0.copyload.i52 = load i32, ptr %3, align 8, !tbaa !795
  %.sroa.0.0.copyload.i53 = load i32, ptr %i.r, align 8, !tbaa !795
  store i32 %.sroa.0.0.copyload.i53, ptr %i.hc, align 8, !tbaa !795
  %.sroa.4.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store i32 %.sroa.0.0.copyload.i52, ptr %.sroa.4.0..sroa_idx.i54, align 4, !tbaa !795
  %.sroa.5.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store ptr %.sroa.13.0, ptr %.sroa.5.0..sroa_idx.i55, align 8, !tbaa !100
  br label %bb.av

bb.au:                                            ; preds = %bb.aq
  %i.hd = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.sroa.051.1.i, i64 noundef 24, i32 noundef 8) #30
  %i.he = extractvalue { ptr, ptr } %i.hd, 1      ; 3 uses
  %.sroa.0.0.copyload.i56 = load i32, ptr %3, align 8, !tbaa !795
  store i32 %.sroa.0.0.copyload.i56, ptr %i.he, align 8, !tbaa !795
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store ptr %.sroa.13.0, ptr %i.hf, align 8, !tbaa !2708
  %.sroa.0.0.copyload.i57 = load i32, ptr %i.r, align 8, !tbaa !795
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store i32 %.sroa.0.0.copyload.i57, ptr %i.hg, align 8, !tbaa !795
  br label %bb.av

bb.av:                                            ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE24RebuildDependentNameTypeENS_21ElaboratedTypeKeywordENS_14SourceLocationENS_22NestedNameSpecifierLocEPKNS_14IdentifierInfoES5_b.exit, %bb.ar, %bb.at, %bb.au, %bb.as, %bb.ap, %bb.b
  %.sroa.0108.1 = phi i64 [ 0, %bb.b ], [ 0, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE24RebuildDependentNameTypeENS_21ElaboratedTypeKeywordENS_14SourceLocationENS_22NestedNameSpecifierLocEPKNS_14IdentifierInfoES5_b.exit ], [ %.sroa.051.1.i, %bb.ar ], [ %.sroa.051.1.i, %bb.at ], [ %.sroa.051.1.i, %bb.au ], [ %.sroa.051.1.i, %bb.as ], [ %.sroa.051.1.i, %bb.ap ]
  ret i64 %.sroa.0108.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 12 uses
  %i.b = and i64 %i.a, 15
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit:       ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 16, !tbaa !791
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 16
  switch i8 %i.e, label %bb.bl [
    i8 60, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %bb.l
    i8 6, label %bb.m
    i8 7, label %bb.n
    i8 8, label %bb.o
    i8 59, label %bb.bk
    i8 10, label %bb.p
    i8 11, label %bb.q
    i8 12, label %bb.r
    i8 13, label %bb.s
    i8 14, label %bb.t
    i8 15, label %bb.u
    i8 16, label %bb.v
    i8 17, label %bb.w
    i8 18, label %bb.x
    i8 19, label %bb.y
    i8 20, label %bb.z
    i8 21, label %bb.aa
    i8 22, label %bb.ab
    i8 23, label %bb.ac
    i8 24, label %bb.ad
    i8 25, label %bb.ae
    i8 26, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit
    i8 27, label %bb.af
    i8 28, label %bb.ag
    i8 29, label %bb.ah
    i8 30, label %bb.ai
    i8 31, label %bb.aj
    i8 32, label %bb.ak
    i8 33, label %bb.al
    i8 34, label %bb.am
    i8 35, label %bb.an
    i8 36, label %bb.ao
    i8 37, label %bb.ap
    i8 38, label %bb.aq
    i8 39, label %bb.ar
    i8 40, label %bb.as
    i8 58, label %bb.bj
    i8 42, label %bb.at
    i8 43, label %bb.au
    i8 44, label %bb.av
    i8 45, label %bb.aw
    i8 46, label %bb.ax
    i8 47, label %bb.ay
    i8 48, label %bb.az
    i8 49, label %bb.ba
    i8 50, label %bb.bb
    i8 51, label %bb.bc
    i8 52, label %bb.bd
    i8 53, label %bb.be
    i8 54, label %bb.bf
    i8 55, label %bb.bg
    i8 56, label %bb.bh
    i8 57, label %bb.bi
  ]

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread: ; preds = %bb.a, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.f = and i64 %i.a, -16
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !791
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, -8
  %i.k = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %i.j) #30, !inline_history !6495
  %i.l = ptrtoint ptr %3 to i64
  %i.m = icmp ne ptr %3, null
  %i.n = zext i1 %i.m to i64                      ; 2 uses
  %i.o = sub i64 %i.l, %i.n
  %i.p = zext i32 %i.k to i64                     ; 2 uses
  %i.q = udiv i64 %i.o, %i.p
  %i.r = add i64 %i.q, %i.n
  %i.s = mul i64 %i.r, %i.p
  %i.t = load ptr, ptr %i.g, align 16, !tbaa !791 ; 3 uses
  %i.u = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 5 uses
  %i.w = and i64 %i.v, 15
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i, label %bb.d

_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
  %i.x = load ptr, ptr %i.t, align 16, !tbaa !791
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i8, ptr %i.y, align 16
  switch i8 %i.z, label %bb.d [
    i8 51, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i
  %i.aa = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.v, i64 noundef 4, i32 noundef 4) #30, !inline_history !6495
  %i.ab = extractvalue { ptr, ptr } %i.aa, 1
  %.sroa.0.0.copyload.i.i.i.i486 = load i32, ptr %i.u, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i.i.i.i486, ptr %i.ab, align 4, !tbaa !795
  br label %bb.e

bb.c:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i
  %i.ac = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.v, i64 noundef 4, i32 noundef 4) #30, !inline_history !6495
  %i.ad = extractvalue { ptr, ptr } %i.ac, 1
  %.sroa.0.0.copyload.i.i.i29.i = load i32, ptr %i.u, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i.i.i29.i, ptr %i.ad, align 4, !tbaa !795
  br label %bb.e

bb.d:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
  %i.ae = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.t, ptr %i.u), !inline_history !6495
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.037.0.i = phi i64 [ %i.v, %bb.b ], [ %i.ae, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.af = icmp ult i64 %.sroa.037.0.i, 16
  br i1 %i.af, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE20RebuildQualifiedTypeENS_8QualTypeENS_16QualifiedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.037.0.i, ptr %2, ptr %3), !inline_history !6495 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 16
  %spec.select.i = select i1 %i.ah, i64 0, i64 %i.ag
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.g:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ai = getelementptr i8, ptr %2, i64 32
  %.val493 = load i64, ptr %i.ai, align 16, !tbaa !788
  %i.aj = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE21TransformAdjustedTypeERNS_14TypeLocBuilderENS_15AdjustedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.val493, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.h:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ak = getelementptr i8, ptr %2, i64 32
  %.val492 = load i64, ptr %i.ak, align 16, !tbaa !788
  %i.al = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE20TransformDecayedTypeERNS_14TypeLocBuilderENS_14DecayedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.val492, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.i:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.am = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformConstantArrayTypeERNS_14TypeLocBuilderENS_20ConstantArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.j:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.an = getelementptr i8, ptr %2, i64 32
  %.val491 = load i64, ptr %i.an, align 16, !tbaa !788
  %i.ao = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE27TransformArrayParameterTypeERNS_14TypeLocBuilderENS_21ArrayParameterTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.val491, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.k:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ap = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE32TransformDependentSizedArrayTypeERNS_14TypeLocBuilderENS_26DependentSizedArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.l:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.aq = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE28TransformIncompleteArrayTypeERNS_14TypeLocBuilderENS_22IncompleteArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.m:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ar = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformVariableArrayTypeERNS_14TypeLocBuilderENS_20VariableArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.n:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.as = getelementptr i8, ptr %2, i64 32
  %.val490 = load i64, ptr %i.as, align 16, !tbaa !788
  %i.at = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE19TransformAtomicTypeERNS_14TypeLocBuilderENS_13AtomicTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.val490, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.o:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.au = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE23TransformAttributedTypeERNS_14TypeLocBuilderENS_17AttributedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.p:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.av = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE19TransformBitIntTypeERNS_14TypeLocBuilderENS_13BitIntTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.q:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.aw = getelementptr i8, ptr %2, i64 32
  %.val489 = load i64, ptr %i.aw, align 16, !tbaa !788
  %i.ax = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE25TransformBlockPointerTypeERNS_14TypeLocBuilderENS_19BlockPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.val489, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.r:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ay = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE28TransformCountAttributedTypeERNS_14TypeLocBuilderENS_22CountAttributedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.s:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.az = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE20TransformBuiltinTypeERNS_14TypeLocBuilderENS_14BuiltinTypeLocE(ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.t:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ba = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.a, i64 noundef 4, i32 noundef 4) #30
  %i.bb = extractvalue { ptr, ptr } %i.ba, 1
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %3, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.bb, align 4, !tbaa !795
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.u:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bc = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE21TransformDecltypeTypeERNS_14TypeLocBuilderENS_15DecltypeTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.v:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bd = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE17TransformAutoTypeERNS_14TypeLocBuilderENS_11AutoTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.w:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.be = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE42TransformDeducedTemplateSpecializationTypeERNS_14TypeLocBuilderENS_36DeducedTemplateSpecializationTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.x:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bf = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE34TransformDependentAddressSpaceTypeERNS_14TypeLocBuilderENS_28DependentAddressSpaceTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.y:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bg = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE28TransformDependentBitIntTypeERNS_14TypeLocBuilderENS_22DependentBitIntTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.z:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bh = tail call fastcc range(i64 16, 1) i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull readonly %2, ptr readonly %3, i1 noundef zeroext false, i64 0, ptr noundef null), !inline_history !6496
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.aa:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bi = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE36TransformDependentSizedExtVectorTypeERNS_14TypeLocBuilderENS_30DependentSizedExtVectorTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ab:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bj = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE28TransformDependentVectorTypeERNS_14TypeLocBuilderENS_22DependentVectorTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ac:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bk = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE28TransformFunctionNoProtoTypeERNS_14TypeLocBuilderENS_22FunctionNoProtoTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ad:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bl = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformFunctionProtoTypeERNS_14TypeLocBuilderENS_20FunctionProtoTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ae:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bm = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE35TransformHLSLAttributedResourceTypeERNS_14TypeLocBuilderENS_29HLSLAttributedResourceTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.af:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bn = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE27TransformMacroQualifiedTypeERNS_14TypeLocBuilderENS_21MacroQualifiedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ag:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bo = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE27TransformConstantMatrixTypeERNS_14TypeLocBuilderENS_21ConstantMatrixTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ah:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bp = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE33TransformDependentSizedMatrixTypeERNS_14TypeLocBuilderENS_27DependentSizedMatrixTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ai:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bq = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformMemberPointerTypeERNS_14TypeLocBuilderENS_20MemberPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.aj:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.br = getelementptr i8, ptr %2, i64 32
  %.val488 = load i64, ptr %i.br, align 16, !tbaa !788
  %i.bs = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE30TransformObjCObjectPointerTypeERNS_14TypeLocBuilderENS_24ObjCObjectPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.val488, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ak:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bt = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE23TransformObjCObjectTypeERNS_14TypeLocBuilderENS_17ObjCObjectTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.al:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang14TypeLocBuilder12pushFullCopyENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3) #30
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.am:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bu = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformObjCTypeParamTypeERNS_14TypeLocBuilderENS_20ObjCTypeParamTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.an:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bv = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE29TransformOverflowBehaviorTypeERNS_14TypeLocBuilderENS_23OverflowBehaviorTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ao:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bw = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformPackExpansionTypeERNS_14TypeLocBuilderENS_20PackExpansionTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ap:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bx = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE25TransformPackIndexingTypeERNS_14TypeLocBuilderENS_19PackIndexingTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.aq:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.by = getelementptr i8, ptr %2, i64 32
  %.val487 = load i64, ptr %i.by, align 16, !tbaa !788
  %i.bz = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE18TransformParenTypeERNS_14TypeLocBuilderENS_12ParenTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.val487, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit
end_hunk_14
begin_hunk_15_@_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformMemberPointerTypeERNS_14TypeLocBuilderENS_20MemberPointerTypeLocE:bb.a
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1593
  call void @free(ptr noundef %i.bo) #30
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.m

.critedge40:                                      ; preds = %.critedge
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit45, label %bb.j

bb.j:                                             ; preds = %.critedge40
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1593
  call void @free(ptr noundef %i.bq) #30
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit45

_ZN5clang12CXXScopeSpecD2Ev.exit45:               ; preds = %.critedge40, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.br = and i64 %i.bj, -16
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !791 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i8, ptr %i.bu, align 16
  %.not.i46 = icmp eq i8 %i.bv, 30
  br i1 %.not.i46, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread77, label %bb.k

bb.k:                                             ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit45
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.0.0.copyload.i.i.i.i47 = load i64, ptr %i.bw, align 8, !tbaa !788
  %i.bx = and i64 %.sroa.0.0.copyload.i.i.i.i47, -16
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load ptr, ptr %i.by, align 16, !tbaa !791
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i8, ptr %i.ca, align 16
  %i.cc = icmp eq i8 %i.cb, 30
  br i1 %i.cc, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit, label %.critedge2

_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit: ; preds = %bb.k
  %i.cd = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bt) #30 ; 2 uses
  %.not38 = icmp eq ptr %i.cd, null
  br i1 %.not38, label %.critedge2, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread77

_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread77: ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit45, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit
  %.1.i80 = phi ptr [ %i.cd, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit ], [ %i.bt, %_ZN5clang12CXXScopeSpecD2Ev.exit45 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.1.i80, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.ce, align 16, !tbaa !788 ; 2 uses
  %.not82 = icmp eq i64 %i.n, %.sroa.0.0.copyload.i
  br i1 %.not82, label %.critedge2, label %bb.l

bb.l:                                             ; preds = %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread77
  %i.cf = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.sroa.0.0.copyload.i, i64 noundef 0, i32 noundef 1) #30 ; 0 uses
  br label %.critedge2

.critedge2:                                       ; preds = %bb.k, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit, %bb.l, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread77
  %i.cg = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.bj, i64 noundef 16, i32 noundef 8) #30
  %i.ch = extractvalue { ptr, ptr } %i.cg, 1      ; 2 uses
  %.sroa.0.0.copyload.i50 = load i32, ptr %3, align 8, !tbaa !795
  store i32 %.sroa.0.0.copyload.i50, ptr %i.ch, align 8, !tbaa !795
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.u, ptr %i.ci, align 8, !tbaa !2674
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %_ZN5clang12CXXScopeSpecD2Ev.exit, %.critedge2, %bb.a
  %.sroa.074.2 = phi i64 [ 0, %bb.a ], [ 0, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ 0, %bb.b ], [ 0, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ %i.bj, %.critedge2 ]
  ret i64 %.sroa.074.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 16, 1) i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE30TransformObjCObjectPointerTypeERNS_14TypeLocBuilderENS_24ObjCObjectPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.32.val, ptr %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = add i64 %i.a, 4                          ; 2 uses
  %i.c = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.32.val) #30
  %i.d = icmp ne i64 %i.b, 0
  %i.e = zext i1 %i.d to i64                      ; 2 uses
  %i.f = sub i64 %i.b, %i.e
  %i.g = zext i32 %i.c to i64                     ; 2 uses
  %i.h = udiv i64 %i.f, %i.g
  %i.i = add i64 %i.h, %i.e
  %i.j = mul i64 %i.i, %i.g
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = inttoptr i64 %.32.val to ptr
  %i.m = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.l, ptr %i.k) ; 2 uses
  %i.n = icmp ult i64 %i.m, 16
  br i1 %i.n, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.o = getelementptr i8, ptr %.val, i64 232
  %.val.val = load ptr, ptr %i.o, align 8, !tbaa !1116
  %i.p = tail call i64 @_ZNK5clang10ASTContext24getObjCObjectPointerTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %.val.val, i64 %i.m) #30 ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.r = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.p, i64 noundef 4, i32 noundef 4) #30
  %i.s = extractvalue { ptr, ptr } %i.r, 1
  %.sroa.0.0.copyload.i.i9 = load i32, ptr %2, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i.i9, ptr %i.s, align 4, !tbaa !795
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge, %bb.a
  %.sroa.020.1 = phi i64 [ 0, %bb.a ], [ %i.p, %bb.b ], [ 0, %.critedge ]
  ret i64 %.sroa.020.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 16, 1) i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE23TransformObjCObjectTypeERNS_14TypeLocBuilderENS_17ObjCObjectTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::ArrayRef", align 8    ; 5 uses
  %5 = alloca %"class.llvm::ArrayRef.2689", align 8 ; 5 uses
  %6 = alloca %"class.clang::ObjCObjectTypeLoc", align 8 ; 5 uses
  %7 = alloca %"class.llvm::SmallVector.2684", align 8 ; 15 uses
  %8 = alloca %"class.llvm::SmallVector.2597", align 8 ; 10 uses
  %9 = alloca %"class.clang::TypeLoc", align 8    ; 9 uses
  %10 = alloca %"class.clang::TypeLocBuilder", align 8 ; 14 uses
  %11 = alloca %"class.clang::TypeLocBuilder", align 8 ; 14 uses
  store ptr %2, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !788 ; 2 uses
  %i.c = ptrtoint ptr %3 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 16             ; 2 uses
  %i.f = lshr i32 %i.e, 16
  %i.g = and i32 %i.f, 1016
  %i.h = lshr i32 %i.e, 24
  %i.i = add nuw nsw i32 %i.h, 20
  %.lhs.trunc.i.i.i.i = add nuw nsw i32 %i.i, %i.g
  %.zext.i.i.i.i = and i32 %.lhs.trunc.i.i.i.i, 2040
  %i.j = add nuw nsw i32 %.zext.i.i.i.i, 8
  %i.k = zext nneg i32 %i.j to i64
  %i.l = add i64 %i.k, %i.c                       ; 2 uses
  %i.m = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #30
  %i.n = icmp ne i64 %i.l, 0
  %i.o = zext i1 %i.n to i64                      ; 2 uses
  %i.p = sub i64 %i.l, %i.o
  %i.q = zext i32 %i.m to i64                     ; 2 uses
  %i.r = udiv i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.o
  %i.t = mul i64 %i.s, %i.q
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr
  %i.w = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.v, ptr %i.u) ; 2 uses
  %i.x = icmp ult i64 %i.w, 16
  br i1 %i.x, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i.i80 = load i64, ptr %i.b, align 8, !tbaa !788
  %i.y = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i80) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.z, ptr %7, align 8, !tbaa !858
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 11 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !859
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 4 uses
  store i32 4, ptr %i.ab, align 4, !tbaa !876
  %i.ac = load i32, ptr %i.d, align 16
  %i.ad = lshr i32 %i.ac, 19
  %i.ae = and i32 %i.ad, 127                      ; 2 uses
  %.not188 = icmp eq i32 %i.ae, 0
  br i1 %.not188, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 60
  %i.at = zext nneg i32 %i.ae to i64
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1778 ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.aw, align 8, !tbaa !788 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.ay = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 3 uses
  %i.az = and i64 %.sroa.0.0.copyload.i, 15
  %.not.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %bb.n

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %bb.c
  %i.ba = load ptr, ptr %i.ay, align 16, !tbaa !791 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i8, ptr %i.bb, align 16
  %i.bd = icmp eq i8 %i.bc, 36
  br i1 %i.bd, label %._crit_edge207, label %bb.n

._crit_edge207:                                   ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !2280
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store ptr %i.ak, ptr %8, align 8, !tbaa !858
  store i32 0, ptr %i.al, align 8, !tbaa !859
  store i32 2, ptr %i.am, align 4, !tbaa !876
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %.sroa.0.0.copyload.i89 = load i64, ptr %i.be, align 16, !tbaa !788
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksENS_8QualTypeERN4llvm15SmallVectorImplISt4pairINS2_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.pre, i64 %.sroa.0.0.copyload.i89, ptr noundef nonnull align 8 dereferenceable(16) %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %.sroa.0.0.copyload.i.i.i.i90 = load i64, ptr %i.bf, align 16, !tbaa !788 ; 2 uses
  %i.bg = ptrtoint ptr %i.ax to i64
  %i.bh = add i64 %i.bg, 4                        ; 2 uses
  %i.bi = call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i90) #30
  %i.bj = icmp ne i64 %i.bh, 0
  %i.bk = zext i1 %i.bj to i64                    ; 2 uses
  %i.bl = sub i64 %i.bh, %i.bk
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = udiv i64 %i.bl, %i.bm
  %i.bo = add i64 %i.bn, %i.bk
  %i.bp = mul i64 %i.bo, %i.bm
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i90 to ptr
  store ptr %i.br, ptr %9, align 8
  store ptr %i.bq, ptr %i.an, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !788
  %i.bu = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #30 ; 0 uses
  %i.bv = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #30 ; 0 uses
  %.val78 = load ptr, ptr %0, align 8, !tbaa !2280
  %i.bw = getelementptr inbounds nuw i8, ptr %.val78, i64 13800 ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.bw, align 4, !tbaa !795 ; 2 uses
  store i32 0, ptr %i.bw, align 4, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store ptr %i.ao, ptr %10, align 8, !tbaa !1897
  store i64 32, ptr %i.ap, align 8, !tbaa !1898
  store i64 32, ptr %i.aq, align 8, !tbaa !1899
  store i32 0, ptr %i.ar, align 8, !tbaa !1900
  store i8 0, ptr %i.as, align 4, !tbaa !1901
  %i.bx = load ptr, ptr %9, align 8, !tbaa !2649
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %i.by) #30
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = load i64, ptr %i.ap, align 8, !tbaa !1898
  %i.cc = icmp ult i64 %i.cb, %i.ca
  br i1 %i.cc, label %bb.d, label %_ZN5clang14TypeLocBuilder7reserveEm.exit

bb.d:                                             ; preds = %._crit_edge207
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %10, i64 noundef %i.ca) #30
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit

_ZN5clang14TypeLocBuilder7reserveEm.exit:         ; preds = %._crit_edge207, %bb.d
  %.sroa.041.0.copyload = load ptr, ptr %9, align 8, !tbaa !100
  %.sroa.242.0.copyload = load ptr, ptr %i.an, align 8, !tbaa !100
  %i.cd = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %10, ptr %.sroa.041.0.copyload, ptr %.sroa.242.0.copyload) ; 2 uses
  %i.ce = icmp ult i64 %i.cd, 16
  br i1 %i.ce, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1, label %bb.e

bb.e:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %i.cf = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 232
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.ci = call i64 @_ZNK5clang10ASTContext20getPackExpansionTypeENS_8QualTypeENS_16OptionalUnsignedIjEEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.ch, i64 %i.cd, i32 %i.bt, i1 noundef zeroext true) #30 ; 2 uses
  %i.cj = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.ci, i64 noundef 4, i32 noundef 4) #30
  %i.ck = extractvalue { ptr, ptr } %i.cj, 1
  %.sroa.0.0.copyload.i95 = load i32, ptr %i.ax, align 8, !tbaa !795
  store i32 %.sroa.0.0.copyload.i95, ptr %i.ck, align 4, !tbaa !795
  %i.cl = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 232
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.co = load i64, ptr %i.ap, align 8, !tbaa !1898
  %i.cp = load i64, ptr %i.aq, align 8, !tbaa !1899
  %i.cq = sub i64 %i.co, %i.cp                    ; 2 uses
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.cn, i64 %i.ci, i32 noundef %i.cr) #30 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %10, align 8, !tbaa !1897
  %i.cv = load i64, ptr %i.aq, align 8, !tbaa !1899
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ct, ptr align 1 %i.cw, i64 %i.cq, i1 false)
  %i.cx = load i32, ptr %i.aa, align 8, !tbaa !859 ; 2 uses
  %i.cy = load i32, ptr %i.ab, align 4, !tbaa !876
  %.not.i96 = icmp ult i32 %i.cx, %i.cy
  br i1 %.not.i96, label %bb.g, label %bb.f, !prof !856

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.cs)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4

bb.g:                                             ; preds = %bb.e
  %i.cz = zext i32 %i.cx to i64
  %i.da = load ptr, ptr %7, align 8, !tbaa !858
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cz
  store ptr %i.cs, ptr %i.db, align 1
  %i.dc = load i32, ptr %i.aa, align 8, !tbaa !859
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.aa, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4

_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4: ; preds = %bb.g, %bb.f
  %i.de = load ptr, ptr %10, align 8, !tbaa !1897 ; 3 uses
  %.not.i97.jt4 = icmp eq ptr %i.de, %i.ao
  %i.df = icmp eq ptr %i.de, null
  %or.cond.i.jt4 = or i1 %.not.i97.jt4, %i.df
  br i1 %or.cond.i.jt4, label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4, label %bb.h

_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1: ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %i.dg = load ptr, ptr %10, align 8, !tbaa !1897 ; 3 uses
  %.not.i97.jt1 = icmp eq ptr %i.dg, %i.ao
  %i.dh = icmp eq ptr %i.dg, null
  %or.cond.i.jt1 = or i1 %.not.i97.jt1, %i.dh
  br i1 %or.cond.i.jt1, label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4
  call void @_ZdaPv(ptr noundef nonnull %i.de) #32
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1
  call void @_ZdaPv(ptr noundef nonnull %i.dg) #32
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1

_ZN5clang14TypeLocBuilderD2Ev.exit.jt4:           ; preds = %bb.h, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.bw, align 8, !tbaa !795
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.di = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.ak
  br i1 %i.dj, label %bb.l, label %bb.j

_ZN5clang14TypeLocBuilderD2Ev.exit.jt1:           ; preds = %bb.i, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.bw, align 8, !tbaa !795
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.dk = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.ak
  br i1 %i.dl, label %bb.m, label %bb.k

bb.j:                                             ; preds = %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4
  call void @free(ptr noundef %i.di) #30
  br label %bb.l

bb.k:                                             ; preds = %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1
  call void @free(ptr noundef %i.dk) #30
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.y

bb.m:                                             ; preds = %bb.k, %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.loopexit

bb.n:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store ptr %i.af, ptr %11, align 8, !tbaa !1897
  store i64 32, ptr %i.ag, align 8, !tbaa !1898
  store i64 32, ptr %i.ah, align 8, !tbaa !1899
  store i32 0, ptr %i.ai, align 8, !tbaa !1900
  store i8 0, ptr %i.aj, align 4, !tbaa !1901
  %i.dm = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i) #30
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = load i64, ptr %i.ag, align 8, !tbaa !1898
  %i.dp = icmp ult i64 %i.do, %i.dn
  br i1 %i.dp, label %bb.o, label %_ZN5clang14TypeLocBuilder7reserveEm.exit106

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %11, i64 noundef %i.dn) #30
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit106

_ZN5clang14TypeLocBuilder7reserveEm.exit106:      ; preds = %bb.n, %bb.o
  %i.dq = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %11, ptr %i.ay, ptr nonnull %i.ax) ; 3 uses
  %i.dr = icmp ult i64 %i.dq, 16
  br i1 %i.dr, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit111.jt1, label %bb.p

bb.p:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit106
  %i.ds = icmp eq i64 %i.dq, %.sroa.0.0.copyload.i
  br i1 %i.ds, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.dt = load i32, ptr %i.aa, align 8, !tbaa !859 ; 2 uses
  %i.du = load i32, ptr %i.ab, align 4, !tbaa !876
  %.not.i110 = icmp ult i32 %i.dt, %i.du
  br i1 %.not.i110, label %bb.s, label %bb.r, !prof !856

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.aw)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit111.jt4

bb.s:                                             ; preds = %bb.q
  %i.dv = zext i32 %i.dt to i64
  %i.dw = load ptr, ptr %7, align 8, !tbaa !858
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dv
  store ptr %i.aw, ptr %i.dx, align 1
end_hunk_15
begin_hunk_16_@_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26RebuildCXXOperatorCallExprENS_22OverloadedOperatorKindENS_14SourceLocationES5_bRKNS_17UnresolvedSetImplEPNS_4ExprESA_:bb.a
  br i1 %or.cond, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %.sroa.0.0.copyload.i100 = load i64, ptr %i.bk, align 8, !tbaa !788
  %i.bl = and i64 %.sroa.0.0.copyload.i100, -16
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load ptr, ptr %i.bm, align 16, !tbaa !791 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 17
  %i.bp = load i16, ptr %i.bo, align 1
  %i.bq = and i16 %i.bp, 4
  %.not.i102 = icmp eq i16 %i.bq, 0
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i103 = load i64, ptr %i.br, align 8, !tbaa !788
  %i.bs = and i64 %.sroa.0.0.copyload.i.i.i.i.i103, -16
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load ptr, ptr %i.bt, align 16, !tbaa !791
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load i8, ptr %i.bv, align 16            ; 2 uses
  br i1 %.not.i102, label %_ZNK5clang4Type18isOverloadableTypeEv.exit106, label %bb.p

bb.p:                                             ; preds = %bb.o
  switch i8 %i.bw, label %_ZNK5clang4Type18isOverloadableTypeEv.exit106.thread [
    i8 24, label %.critedge4
    i8 23, label %.critedge4
    i8 6, label %.critedge4
    i8 5, label %.critedge4
    i8 4, label %.critedge4
    i8 3, label %.critedge4
    i8 2, label %.critedge4
    i8 40, label %.critedge4
    i8 31, label %.critedge4
    i8 30, label %.critedge4
  ]

_ZNK5clang4Type18isOverloadableTypeEv.exit106:    ; preds = %bb.o
  switch i8 %i.bw, label %.critedge4 [
    i8 49, label %_ZNK5clang4Type18isOverloadableTypeEv.exit106.thread
    i8 47, label %_ZNK5clang4Type18isOverloadableTypeEv.exit106.thread
  ]

_ZNK5clang4Type18isOverloadableTypeEv.exit106.thread: ; preds = %_ZNK5clang4Type18isOverloadableTypeEv.exit106, %_ZNK5clang4Type18isOverloadableTypeEv.exit106, %bb.p
  %i.bx = icmp eq i32 %1, 11
  br i1 %i.bx, label %bb.q, label %.critedge

bb.q:                                             ; preds = %_ZNK5clang4Type18isOverloadableTypeEv.exit106.thread
  %i.by = tail call noundef zeroext i1 @_ZN5clang4Sema23isQualifiedMemberAccessEPNS_4ExprE(ptr nonnull align 8 poison, ptr noundef nonnull %.2)
  br i1 %i.by, label %.critedge4, label %.critedge

.critedge4:                                       ; preds = %_ZNK5clang4Type18isOverloadableTypeEv.exit106, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.q
  %i.bz = tail call noundef i32 @_ZN5clang13UnaryOperator19getOverloadedOpcodeENS_22OverloadedOperatorKindEb(i32 noundef %1, i1 noundef zeroext %i.c) #30
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.ca = tail call i64 @_ZN5clang4Sema20CreateBuiltinUnaryOpENS_14SourceLocationENS_17UnaryOperatorKindEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %2, i32 noundef %i.bz, ptr noundef nonnull %.2, i1 noundef zeroext false)
  br label %.thread139

bb.r:                                             ; preds = %bb.n
  %i.cb = load i24, ptr %.2, align 8
  %i.cc = and i24 %i.cb, 65536
  %.not159 = icmp eq i24 %i.cc, 0
  br i1 %.not159, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.cd = load i24, ptr %.182, align 8
  %i.ce = and i24 %i.cd, 65536
  %.not160 = icmp eq i24 %i.ce, 0
  br i1 %.not160, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %.sroa.0.0.copyload.i107 = load i64, ptr %i.cf, align 8, !tbaa !788
  %i.cg = and i64 %.sroa.0.0.copyload.i107, -16
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load ptr, ptr %i.ch, align 16, !tbaa !791 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 17
  %i.ck = load i16, ptr %i.cj, align 1
  %i.cl = and i16 %i.ck, 4
  %.not.i109 = icmp eq i16 %i.cl, 0
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i110 = load i64, ptr %i.cm, align 8, !tbaa !788
  %i.cn = and i64 %.sroa.0.0.copyload.i.i.i.i.i110, -16
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = load ptr, ptr %i.co, align 16, !tbaa !791
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load i8, ptr %i.cq, align 16            ; 2 uses
  br i1 %.not.i109, label %_ZNK5clang4Type18isOverloadableTypeEv.exit113, label %bb.u

bb.u:                                             ; preds = %bb.t
  switch i8 %i.cr, label %.critedge [
    i8 24, label %_ZNK5clang4Type18isOverloadableTypeEv.exit113.thread152
    i8 23, label %_ZNK5clang4Type18isOverloadableTypeEv.exit113.thread152
    i8 6, label %_ZNK5clang4Type18isOverloadableTypeEv.exit113.thread152
    i8 5, label %_ZNK5clang4Type18isOverloadableTypeEv.exit113.thread152
    i8 4, label %_ZNK5clang4Type18isOverloadableTypeEv.exit113.thread152
    i8 3, label %_ZNK5clang4Type18isOverloadableTypeEv.exit113.thread152
    i8 2, label %_ZNK5clang4Type18isOverloadableTypeEv.exit113.thread152
    i8 40, label %_ZNK5clang4Type18isOverloadableTypeEv.exit113.thread152
    i8 31, label %_ZNK5clang4Type18isOverloadableTypeEv.exit113.thread152
    i8 30, label %_ZNK5clang4Type18isOverloadableTypeEv.exit113.thread152
  ]

_ZNK5clang4Type18isOverloadableTypeEv.exit113:    ; preds = %bb.t
  switch i8 %i.cr, label %_ZNK5clang4Type18isOverloadableTypeEv.exit113.thread152 [
    i8 49, label %.critedge
    i8 47, label %.critedge
  ]

_ZNK5clang4Type18isOverloadableTypeEv.exit113.thread152: ; preds = %_ZNK5clang4Type18isOverloadableTypeEv.exit113, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %.182, i64 8
  %.sroa.0.0.copyload.i114 = load i64, ptr %i.cs, align 8, !tbaa !788
  %i.ct = and i64 %.sroa.0.0.copyload.i114, -16
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = load ptr, ptr %i.cu, align 16, !tbaa !791 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 17
  %i.cx = load i16, ptr %i.cw, align 1
  %i.cy = and i16 %i.cx, 4
  %.not.i116 = icmp eq i16 %i.cy, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i117 = load i64, ptr %i.cz, align 8, !tbaa !788
  %i.da = and i64 %.sroa.0.0.copyload.i.i.i.i.i117, -16
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = load ptr, ptr %i.db, align 16, !tbaa !791
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load i8, ptr %i.dd, align 16            ; 2 uses
  br i1 %.not.i116, label %_ZNK5clang4Type18isOverloadableTypeEv.exit120, label %bb.v

bb.v:                                             ; preds = %_ZNK5clang4Type18isOverloadableTypeEv.exit113.thread152
  switch i8 %i.de, label %.critedge [
    i8 24, label %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155
    i8 23, label %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155
    i8 6, label %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155
    i8 5, label %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155
    i8 4, label %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155
    i8 3, label %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155
    i8 2, label %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155
    i8 40, label %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155
    i8 31, label %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155
    i8 30, label %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155
  ]

_ZNK5clang4Type18isOverloadableTypeEv.exit120:    ; preds = %_ZNK5clang4Type18isOverloadableTypeEv.exit113.thread152
  switch i8 %i.de, label %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155 [
    i8 49, label %.critedge
    i8 47, label %.critedge
  ]

_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155: ; preds = %_ZNK5clang4Type18isOverloadableTypeEv.exit120, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v
  %i.df = tail call noundef i32 @_ZN5clang14BinaryOperator19getOverloadedOpcodeENS_22OverloadedOperatorKindE(i32 noundef %1) #30
  %i.dg = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.dh = tail call i64 @_ZN5clang4Sema18CreateBuiltinBinOpENS_14SourceLocationENS_18BinaryOperatorKindEPNS_4ExprES4_b(ptr noundef nonnull align 8 dereferenceable(18640) %i.dg, i32 %2, i32 noundef %i.df, ptr noundef nonnull %.2, ptr noundef nonnull %.182, i1 noundef zeroext false)
  br label %.thread139

.critedge:                                        ; preds = %_ZNK5clang4Type18isOverloadableTypeEv.exit120, %_ZNK5clang4Type18isOverloadableTypeEv.exit120, %_ZNK5clang4Type18isOverloadableTypeEv.exit113, %_ZNK5clang4Type18isOverloadableTypeEv.exit113, %_ZNK5clang4Type18isOverloadableTypeEv.exit97, %_ZNK5clang4Type18isOverloadableTypeEv.exit97, %_ZNK5clang4Type18isOverloadableTypeEv.exit, %_ZNK5clang4Type18isOverloadableTypeEv.exit, %bb.v, %bb.u, %bb.k, %bb.j, %bb.s, %bb.r, %_ZNK5clang4Type18isOverloadableTypeEv.exit106.thread, %bb.q
  %i.di = icmp eq ptr %.182, null
  %or.cond10 = or i1 %i.c, %i.di
  br i1 %or.cond10, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.critedge
  %i.dj = tail call noundef i32 @_ZN5clang13UnaryOperator19getOverloadedOpcodeENS_22OverloadedOperatorKindEb(i32 noundef %1, i1 noundef zeroext %i.c) #30
  %i.dk = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.dl = tail call i64 @_ZN5clang4Sema23CreateOverloadedUnaryOpENS_14SourceLocationENS_17UnaryOperatorKindERKNS_17UnresolvedSetImplEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.dk, i32 %2, i32 noundef %i.dj, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull %.2, i1 noundef zeroext %4) #30
  br label %.thread139

bb.x:                                             ; preds = %.critedge
  %i.dm = tail call noundef i32 @_ZN5clang14BinaryOperator19getOverloadedOpcodeENS_22OverloadedOperatorKindE(i32 noundef %1) #30
  %i.dn = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.do = tail call i64 @_ZN5clang4Sema21CreateOverloadedBinOpENS_14SourceLocationENS_18BinaryOperatorKindERKNS_17UnresolvedSetImplEPNS_4ExprES7_bbPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %i.dn, i32 %2, i32 noundef %i.dm, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull %.2, ptr noundef nonnull %.182, i1 noundef zeroext %4, i1 noundef zeroext true, ptr noundef null) #30
  br label %.thread139

.thread139:                                       ; preds = %bb.x, %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155, %bb.f, %bb.l, %bb.c, %.thread, %bb.w, %.critedge4, %bb.m, %_ZNK5clang4Type18isOverloadableTypeEv.exit97.thread146
  %.sroa.079.6 = phi i64 [ %i.dl, %bb.w ], [ %i.dh, %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155 ], [ %i.az, %_ZNK5clang4Type18isOverloadableTypeEv.exit97.thread146 ], [ 1, %bb.c ], [ %i.bi, %bb.m ], [ %i.ca, %.critedge4 ], [ 1, %bb.l ], [ %i.do, %bb.x ], [ %i.m, %.thread ], [ 1, %bb.f ]
  ret i64 %.sroa.079.6
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::TypeLocBuilder", align 8 ; 13 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !788 ; 3 uses
  %i.a = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !1897
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 32, ptr %i.c, align 8, !tbaa !1898
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 32, ptr %i.d, align 8, !tbaa !1899
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.e, align 8, !tbaa !1900
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 0, ptr %i.f, align 4, !tbaa !1901
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 4 uses
  %i.i = and i64 %.sroa.0.0.copyload.i, 15
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i:     ; preds = %bb.b
  %i.j = load ptr, ptr %i.h, align 16, !tbaa !791
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i8, ptr %i.k, align 16
  switch i8 %i.l, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i [
    i8 50, label %bb.c
    i8 20, label %bb.d
  ]

bb.c:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE35TransformTemplateSpecializationTypeERNS_14TypeLocBuilderENS_29TemplateSpecializationTypeLocENS_8QualTypeEPNS_9NamedDeclEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.h, ptr nonnull %i.g, i64 %2, ptr noundef null, i1 noundef zeroext true), !inline_history !80
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

bb.d:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.n = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.h, ptr nonnull %i.g, i1 noundef zeroext false, i64 %2, ptr noundef null), !inline_history !80
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, %bb.b
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.h, ptr nonnull %i.g), !inline_history !80
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit: ; preds = %bb.c, %bb.d, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i
  %.sroa.014.0.i = phi i64 [ %i.o, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i ], [ %i.m, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.p = icmp ult i64 %.sroa.014.0.i, 16
  br i1 %i.p, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit
  %.pre = load ptr, ptr %3, align 8, !tbaa !1897
  br label %bb.f

bb.e:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit
  %i.q = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 232
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.t = load i64, ptr %i.c, align 8, !tbaa !1898
  %i.u = load i64, ptr %i.d, align 8, !tbaa !1899
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.s, i64 %.sroa.014.0.i, i32 noundef %i.w) #30 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %3, align 8, !tbaa !1897   ; 2 uses
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !1899
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %i.ab, i64 %i.v, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.ac = phi ptr [ %i.z, %bb.e ], [ %.pre, %._crit_edge ] ; 3 uses
  %.0 = phi ptr [ %i.x, %bb.e ], [ null, %._crit_edge ]
  %.not.i = icmp eq ptr %i.ac, %i.b
  %i.ad = icmp eq ptr %i.ac, null
  %or.cond.i = or i1 %.not.i, %i.ad
  br i1 %or.cond.i, label %_ZN5clang14TypeLocBuilderD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #32
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit

_ZN5clang14TypeLocBuilderD2Ev.exit:               ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN5clang14TypeLocBuilderD2Ev.exit
  %.1 = phi ptr [ %.0, %_ZN5clang14TypeLocBuilderD2Ev.exit ], [ %1, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(792) ptr @_ZN4llvm23SmallVectorTemplateBaseIN5clang4Sema33ExpressionEvaluationContextRecordELb0EE18growAndEmplaceBackIJRNS2_27ExpressionEvaluationContextEmRNS1_11CleanupInfoERPNS1_4DeclERNS3_14ExpressionKindEEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 792, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #30 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !859
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [792 x i8], ptr %i.c, i64 %i.f ; 51 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !2220
  %i.i = load i64, ptr %2, align 8, !tbaa !815
  %i.j = trunc i64 %i.i to i32
  %.sroa.0.0.copyload = load i16, ptr %3, align 1, !tbaa !840
  %i.k = load ptr, ptr %4, align 8, !tbaa !855
  %i.l = load i32, ptr %5, align 4, !tbaa !2221
  store i32 %i.h, ptr %i.g, align 8, !tbaa !1655
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i16 %.sroa.0.0.copyload, ptr %i.m, align 4, !tbaa !840
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %i.j, ptr %i.n, align 8, !tbaa !2077
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %i.q, ptr %i.p, align 8, !tbaa !858
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i32 0, ptr %i.r, align 8, !tbaa !859
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  store i32 4, ptr %i.s, align 4, !tbaa !876
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store ptr %i.u, ptr %i.t, align 8, !tbaa !858
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store i32 0, ptr %i.v, align 8, !tbaa !859
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 100
  store i32 2, ptr %i.w, align 4, !tbaa !876
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store ptr %i.k, ptr %i.x, align 8, !tbaa !2224
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store ptr null, ptr %i.y, align 8, !tbaa !1687
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !858
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  store i32 0, ptr %i.ab, align 8, !tbaa !859
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 148
  store i32 8, ptr %i.ac, align 4, !tbaa !876
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !858
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  store i32 0, ptr %i.af, align 8, !tbaa !859
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 228
  store i32 8, ptr %i.ag, align 4, !tbaa !876
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !98
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  store i32 8, ptr %i.aj, align 8, !tbaa !1855
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 308
  store i32 0, ptr %i.ak, align 4, !tbaa !99
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  store i8 1, ptr %i.al, align 8, !tbaa !95
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  store ptr %i.an, ptr %i.am, align 8, !tbaa !858
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  store i32 0, ptr %i.ao, align 8, !tbaa !859
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 396
  store i32 2, ptr %i.ap, align 4, !tbaa !876
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !858
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 424
  store i32 0, ptr %i.as, align 8, !tbaa !859
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 428
  store i32 4, ptr %i.at, align 4, !tbaa !876
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  store ptr %i.av, ptr %i.au, align 8, !tbaa !98
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  store i32 4, ptr %i.aw, align 8, !tbaa !1855
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 476
  store i32 0, ptr %i.ax, align 4, !tbaa !99
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  store i8 1, ptr %i.ay, align 8, !tbaa !95
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 520
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 536
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !858
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 528
  store i32 0, ptr %i.bb, align 8, !tbaa !859
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 532
  store i32 8, ptr %i.bc, align 4, !tbaa !876
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 600
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 616
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !858
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 608
  store i32 0, ptr %i.bf, align 8, !tbaa !859
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 612
  store i32 4, ptr %i.bg, align 4, !tbaa !876
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 744
  store i32 %i.l, ptr %i.bh, align 8, !tbaa !1692
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 748
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 784
  store i8 0, ptr %i.bj, align 8, !tbaa !2055
  store i64 0, ptr %i.bi, align 4
  %i.bk = load ptr, ptr %0, align 8, !tbaa !858   ; 3 uses
  %i.bl = load i32, ptr %i.d, align 8, !tbaa !859 ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %.idx.i = mul nuw nsw i64 %i.bm, 792
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4Sema33ExpressionEvaluationContextRecordELb0EE19moveElementsForGrowEPS3_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %i.bk, %bb.a ] ; 2 uses
  call void @_ZN5clang4Sema33ExpressionEvaluationContextRecordC2EOS1_(ptr noundef nonnull align 8 dereferenceable(792) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(792) %.sroa.04.08.i.i.i.i.i.i)
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 792 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 792
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bo, %i.bn
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4Sema33ExpressionEvaluationContextRecordELb0EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7020

_ZN4llvm23SmallVectorTemplateBaseIN5clang4Sema33ExpressionEvaluationContextRecordELb0EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !858 ; 3 uses
  %.pre3.i = load i32, ptr %i.d, align 8, !tbaa !859 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4Sema33ExpressionEvaluationContextRecordELb0EE19moveElementsForGrowEPS3_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang4Sema33ExpressionEvaluationContextRecordELb0EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i
  %i.bq = zext i32 %.pre3.i to i64
  %.idx2.i = mul nuw nsw i64 %i.bq, 792
  %i.br = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2.i
end_hunk_16
