Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaConcept?download=true
inline.NumInlined: 43754
inline.NumDeleted: 19584
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE19TransformMemberExprEPNS_10MemberExprE:bb.a
  %.val50.i = load ptr, ptr %0, align 8, !tbaa !1113
  %i.hc = getelementptr inbounds nuw i8, ptr %.0, i64 28
  %i.hd = load i32, ptr %i.hc, align 4
  %i.he = lshr i32 %i.hd, 13
  %i.hf = and i32 %i.he, 3
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = ptrtoint ptr %.0 to i64
  %i.hi = or i64 %i.hg, %i.hh
  %i.hj = call i64 @_ZN5clang4Sema23BuildFieldReferenceExprEPNS_4ExprEbNS_14SourceLocationERKNS_12CXXScopeSpecEPNS_9FieldDeclENS_14DeclAccessPairERKNS_19DeclarationNameInfoE(ptr noundef nonnull align 8 dereferenceable(18640) %.val50.i, ptr noundef %.0.i132, i1 noundef zeroext %i.gc, i32 %i.fs, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %.0.i, i64 %i.hi, ptr noundef nonnull align 8 dereferenceable(24) %6) #25
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !1666
  %.not.i.i.i133 = icmp eq i32 %i.hl, 0
  br i1 %.not.i.i.i133, label %_ZN5clang12CXXScopeSpecD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !1667
  call void @free(ptr noundef %i.hn) #25
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit.i

_ZN5clang12CXXScopeSpecD2Ev.exit.i:               ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE17RebuildMemberExprEPNS_4ExprENS_14SourceLocationEbNS_22NestedNameSpecifierLocES6_RKNS_19DeclarationNameInfoEPNS_9ValueDeclEPNS_9NamedDeclEPKNS_24TemplateArgumentListInfoESE_.exit

bb.ag:                                            ; preds = %_ZNK5clang10MemberExpr23hasExplicitTemplateArgsEv.exit127.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 %.sroa.0139.0, ptr %.sroa.7.0) #25
  %i.ho = and i64 %i.gn, -2
  %i.hp = inttoptr i64 %i.ho to ptr               ; 4 uses
  %i.hq = load i24, ptr %i.hp, align 8
  %i.hr = and i24 %i.hq, 262144
  %.not24.i = icmp eq i24 %i.hr, 0
  br i1 %.not24.i, label %bb.ah, label %bb.bc

bb.ah:                                            ; preds = %bb.ag
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i55.i = load i64, ptr %i.hs, align 8, !tbaa !78 ; 2 uses
  br i1 %i.gc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ht = and i64 %.sroa.0.0.copyload.i55.i, -16
  %i.hu = inttoptr i64 %i.ht to ptr
  %i.hv = load ptr, ptr %i.hu, align 16, !tbaa !82
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.hw, align 8, !tbaa !78
  %i.hx = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.hy = inttoptr i64 %i.hx to ptr
  %i.hz = load ptr, ptr %i.hy, align 16, !tbaa !82
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load i8, ptr %i.ia, align 16
  %i.ic = icmp eq i8 %i.ib, 40
  br i1 %i.ic, label %bb.aj, label %bb.bc

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %.val49.i = load ptr, ptr %0, align 8, !tbaa !1113
  store i32 0, ptr %4, align 8, !tbaa !1803
  %i.id = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.id, align 4, !tbaa !1804
  %i.ie = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.if, ptr %i.ie, align 8, !tbaa !85
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i32 0, ptr %i.ig, align 8, !tbaa !84
  %i.ih = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  store i32 8, ptr %i.ih, align 4, !tbaa !814
  %i.ii = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ii, i8 0, i64 24, i1 false)
  store ptr %.val49.i, ptr %i.ij, align 8, !tbaa !1805
  %i.ik = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ik, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !2205
  %i.il = getelementptr inbounds nuw i8, ptr %4, i64 144
  store <4 x i32> <i32 0, i32 0, i32 3, i32 0>, ptr %i.il, align 8, !tbaa !78
  %i.im = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 163
  %i.io = getelementptr inbounds nuw i8, ptr %4, i64 164
  store <8 x i8> <i8 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0>, ptr %i.im, align 8, !tbaa !772
  call void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168) %4) #25
  %i.ip = getelementptr inbounds nuw i8, ptr %.0, i64 28
  %i.iq = load i32, ptr %i.ip, align 4
  %i.ir = lshr i32 %i.iq, 13
  %i.is = and i32 %i.ir, 3
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = ptrtoint ptr %.0 to i64
  %i.iv = or i64 %i.it, %i.iu                     ; 2 uses
  %i.iw = load i32, ptr %i.ig, align 8, !tbaa !84 ; 2 uses
  %i.ix = load i32, ptr %i.ih, align 4, !tbaa !814
  %.not.i.i.i.i.i = icmp ult i32 %i.iw, %i.ix
  br i1 %.not.i.i.i.i.i, label %bb.al, label %bb.ak, !prof !815

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, i64 %i.iv)
  br label %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.iy = zext i32 %i.iw to i64
  %i.iz = load ptr, ptr %i.ie, align 8, !tbaa !85
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.iy
  store i64 %i.iv, ptr %i.ja, align 1
  %i.jb = load i32, ptr %i.ig, align 8, !tbaa !84
  %i.jc = add i32 %i.jb, 1
  store i32 %i.jc, ptr %i.ig, align 8, !tbaa !84
  br label %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i

_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i: ; preds = %bb.al, %bb.ak
  store i32 2, ptr %4, align 8, !tbaa !1803
  call void @_ZN5clang12LookupResult11resolveKindEv(ptr noundef nonnull align 8 dereferenceable(168) %4) #25
  %.val48.i = load ptr, ptr %0, align 8, !tbaa !1113 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.val48.i, i64 4592
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !85
  %i.jf = getelementptr inbounds nuw i8, ptr %.val48.i, i64 4600
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !84
  %i.jh = zext i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw [792 x i8], ptr %i.je, i64 %i.jh
  %i.jj = getelementptr inbounds i8, ptr %i.ji, i64 -792
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !2216
  switch i32 %i.jk, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i [
    i32 0, label %bb.am
    i32 3, label %bb.am
    i32 1, label %bb.am
  ]

bb.am:                                            ; preds = %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i, %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i, %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i
  %i.jl = call noundef zeroext i1 @_ZNK5clang4Expr17isImplicitCXXThisEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hp) #25
  br i1 %i.jl, label %bb.an, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i

bb.an:                                            ; preds = %bb.am
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.jn = load i32, ptr %i.jm, align 4
  %i.jo = and i32 %i.jn, 127
  switch i32 %i.jo, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i [
    i32 52, label %bb.ao
    i32 51, label %bb.ao
    i32 50, label %bb.ao
    i32 49, label %bb.ao
    i32 33, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an, %bb.an, %bb.an, %bb.an
  %.sroa.0.0.copyload.i56.i = load i64, ptr %i.hs, align 8, !tbaa !78
  %i.jp = and i64 %.sroa.0.0.copyload.i56.i, -16
  %i.jq = inttoptr i64 %i.jp to ptr
  %i.jr = load ptr, ptr %i.jq, align 16, !tbaa !82
  %i.js = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.jr) #25
  %i.jt = and i64 %i.js, -16
  %i.ju = inttoptr i64 %i.jt to ptr
  %i.jv = load ptr, ptr %i.ju, align 16, !tbaa !82
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %.sroa.0.0.copyload.i.i.i.i59.i = load i64, ptr %i.jw, align 8, !tbaa !78
  %i.jx = and i64 %.sroa.0.0.copyload.i.i.i.i59.i, -16
  %i.jy = inttoptr i64 %i.jx to ptr
  %i.jz = load ptr, ptr %i.jy, align 16, !tbaa !82 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kb = load i8, ptr %i.ka, align 16            ; 3 uses
  %i.kc = add i8 %i.kb, -47
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.kc, 3
  %.not.i7.i.i = icmp ne ptr %i.jz, null
  %.not.i.not8.i.i = and i1 %.not.i7.i.i, %switch.i.i.i.i.i.i.i.i.i.i.i
  %i.kd = and i8 %i.kb, 62
  %spec.select.i.i.i.i = icmp eq i8 %i.kd, 48
  %or.cond.i.i = and i1 %spec.select.i.i.i.i, %.not.i.not8.i.i
  br i1 %or.cond.i.i, label %bb.ap, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !1473 ; 3 uses
  %i.kg = icmp eq i8 %i.kb, 49
  br i1 %i.kg, label %bb.aq, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 28
  %i.ki = load i32, ptr %i.kh, align 4
  %i.kj = and i32 %i.ki, 127
  %i.kk = add nsw i32 %i.kj, -60
  %i.kl = icmp ult i32 %i.kk, 3
  br i1 %i.kl, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i:     ; preds = %bb.aq, %bb.ap
  %i.km = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.kf) ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.km, null
  %spec.select22.i = select i1 %.not.not.i.i.i, ptr %i.kf, ptr %i.km ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.kn, align 8 ; 3 uses
  %i.ko = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.kp = icmp eq i64 %i.ko, 0
  br i1 %i.kp, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i
  %i.kq = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit.i

bb.as:                                            ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i
  %i.kr = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.ks = inttoptr i64 %i.kr to ptr
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !912
  br label %_ZN5clang4Decl14getDeclContextEv.exit.i

_ZN5clang4Decl14getDeclContextEv.exit.i:          ; preds = %bb.as, %bb.ar
  %.0.i.i = phi ptr [ %i.kq, %bb.ar ], [ %i.kt, %bb.as ] ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %spec.select22.i, i64 64
  %i.kv = call noundef zeroext i1 @_ZNK5clang11DeclContext6EqualsEPKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.ku, ptr noundef %.0.i.i)
  br i1 %i.kv, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZN5clang4Decl14getDeclContextEv.exit.i
  %8 = icmp eq ptr %.0.i.i, null
  %9 = getelementptr inbounds i8, ptr %.0.i.i, i64 -64
  %10 = select i1 %8, ptr null, ptr %9
  %i.kw = call noundef zeroext i1 @_ZNK5clang13CXXRecordDecl13isDerivedFromEPKS0_(ptr noundef nonnull align 8 dereferenceable(144) %spec.select22.i, ptr noundef %10) #25
  br i1 %i.kw, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.at
  %.val47.i = load ptr, ptr %0, align 8, !tbaa !1113
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %.sroa.0.0.copyload.i60.i = load i64, ptr %i.kx, align 8, !tbaa !78
  %i.ky = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %.sroa.0.0.copyload.i61.i = load i32, ptr %i.ky, align 8, !tbaa !810
  %i.kz = call noundef ptr @_ZN5clang4Sema16BuildDeclRefExprEPNS_9ValueDeclENS_8QualTypeENS_13ExprValueKindENS_14SourceLocationEPKNS_12CXXScopeSpecE(ptr noundef nonnull align 8 dereferenceable(18640) %.val47.i, ptr noundef nonnull %.0.i, i64 %.sroa.0.0.copyload.i60.i, i32 noundef 1, i32 %.sroa.0.0.copyload.i61.i, ptr noundef null) #25
  %i.la = ptrtoint ptr %i.kz to i64
  br label %bb.au

_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i:   ; preds = %bb.at, %_ZN5clang4Decl14getDeclContextEv.exit.i, %bb.aq, %bb.ao, %bb.an, %bb.am, %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i
  %.val.i = load ptr, ptr %0, align 8, !tbaa !1113
  %i.lb = call i64 @_ZN5clang4Sema24BuildMemberReferenceExprEPNS_4ExprENS_8QualTypeENS_14SourceLocationEbRKNS_12CXXScopeSpecES4_PNS_9NamedDeclERNS_12LookupResultEPKNS_24TemplateArgumentListInfoEPKNS_5ScopeEbPNS0_26ActOnMemberAccessExtraArgsE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, ptr noundef nonnull %i.hp, i64 %.sroa.0.0.copyload.i55.i, i32 %i.fs, i1 noundef zeroext %i.gc, ptr noundef nonnull align 8 dereferenceable(48) %3, i32 %.sroa.0.0.i62, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(168) %4, ptr noundef %i.gm, ptr noundef null, i1 noundef zeroext false, ptr noundef null) #25
  br label %bb.au

bb.au:                                            ; preds = %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i, %.critedge.i
  %.sroa.019.0.i = phi i64 [ %i.lb, %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i ], [ %i.la, %.critedge.i ]
  %i.lc = load i8, ptr %i.in, align 1, !tbaa !1809, !range !775, !noundef !769
  %i.ld = trunc nuw i8 %i.lc to i1
  %.pre25.i = load i32, ptr %4, align 8           ; 3 uses
  br i1 %i.ld, label %bb.av, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i.i

bb.av:                                            ; preds = %bb.au
  %i.le = icmp ne i32 %.pre25.i, 5
  %i.lf = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = icmp ne ptr %i.lg, null
  %or.cond.i.i.i = select i1 %i.le, i1 %i.lh, i1 false
  br i1 %or.cond.i.i.i, label %bb.aw, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i.i

bb.aw:                                            ; preds = %bb.av
  %i.li = load ptr, ptr %i.ij, align 8, !tbaa !1805 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 216
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !768, !nonnull !769, !align !770
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 40
  %i.lm = load i64, ptr %i.ll, align 8
  %i.ln = and i64 %i.lm, 18014398509481984
  %.not.i.i62.i = icmp eq i64 %i.ln, 0
  br i1 %.not.i.i62.i, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN5clang4Sema17CheckLookupAccessERKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.li, ptr noundef nonnull align 8 dereferenceable(168) %4) #25
  %.pre.i131 = load i32, ptr %4, align 8
  br label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i.i

_ZN5clang12LookupResult14diagnoseAccessEv.exit.i.i: ; preds = %bb.ax, %bb.av, %bb.au
  %i.lo = phi i32 [ %.pre.i131, %bb.ax ], [ %.pre25.i, %bb.au ], [ %.pre25.i, %bb.av ]
  %i.lp = load i8, ptr %i.io, align 4, !tbaa !1810, !range !775, !noundef !769
  %i.lq = trunc nuw i8 %i.lp to i1
  %i.lr = icmp eq i32 %i.lo, 5
  %or.cond.i = select i1 %i.lq, i1 %i.lr, i1 false
  br i1 %or.cond.i, label %bb.ay, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i.i

bb.ay:                                            ; preds = %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i.i
  %i.ls = load ptr, ptr %i.ij, align 8, !tbaa !1805
  call void @_ZN5clang4Sema23DiagnoseAmbiguousLookupERNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ls, ptr noundef nonnull align 8 dereferenceable(168) %4) #25
  br label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i.i

_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i.i: ; preds = %bb.ay, %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i.i, %bb.aw
  %i.lt = load ptr, ptr %i.ii, align 8, !tbaa !1811 ; 2 uses
  %.not.i.i130 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i130, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i.i
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.lt) #25
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i.i
  %i.lu = load ptr, ptr %i.ie, align 8, !tbaa !85 ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.if
  br i1 %i.lv, label %_ZN5clang12LookupResultD2Ev.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @free(ptr noundef %i.lu) #25
  br label %_ZN5clang12LookupResultD2Ev.exit.i

_ZN5clang12LookupResultD2Ev.exit.i:               ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN5clang12LookupResultD2Ev.exit.i, %bb.ai, %bb.ag
  %.sroa.019.2.i = phi i64 [ 1, %bb.ag ], [ %.sroa.019.0.i, %_ZN5clang12LookupResultD2Ev.exit.i ], [ 1, %bb.ai ]
  %i.lw = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !1666
  %.not.i.i63.i = icmp eq i32 %i.lx, 0
  br i1 %.not.i.i63.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit64.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ly = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !1667
  call void @free(ptr noundef %i.lz) #25
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit64.i

_ZN5clang12CXXScopeSpecD2Ev.exit64.i:             ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE17RebuildMemberExprEPNS_4ExprENS_14SourceLocationEbNS_22NestedNameSpecifierLocES6_RKNS_19DeclarationNameInfoEPNS_9ValueDeclEPNS_9NamedDeclEPKNS_24TemplateArgumentListInfoESE_.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE17RebuildMemberExprEPNS_4ExprENS_14SourceLocationEbNS_22NestedNameSpecifierLocES6_RKNS_19DeclarationNameInfoEPNS_9ValueDeclEPNS_9NamedDeclEPKNS_24TemplateArgumentListInfoESE_.exit: ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit64.i, %_ZN5clang12CXXScopeSpecD2Ev.exit.i, %bb.ac, %bb.z, %bb.x
  %storemerge = phi i64 [ 1, %bb.x ], [ %.sroa.019.2.i, %_ZN5clang12CXXScopeSpecD2Ev.exit64.i ], [ 1, %bb.z ], [ %i.hj, %_ZN5clang12CXXScopeSpecD2Ev.exit.i ], [ 1, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.be

bb.be:                                            ; preds = %_ZNK5clang10MemberExpr18getNumTemplateArgsEv.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE17RebuildMemberExprEPNS_4ExprENS_14SourceLocationEbNS_22NestedNameSpecifierLocES6_RKNS_19DeclarationNameInfoEPNS_9ValueDeclEPNS_9NamedDeclEPKNS_24TemplateArgumentListInfoESE_.exit
  %i.ma = phi ptr [ %i.fo, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE17RebuildMemberExprEPNS_4ExprENS_14SourceLocationEbNS_22NestedNameSpecifierLocES6_RKNS_19DeclarationNameInfoEPNS_9ValueDeclEPNS_9NamedDeclEPKNS_24TemplateArgumentListInfoESE_.exit ], [ %i.eu, %_ZNK5clang10MemberExpr18getNumTemplateArgsEv.exit ]
  %.sroa.0145.0 = phi i64 [ %storemerge, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE17RebuildMemberExprEPNS_4ExprENS_14SourceLocationEbNS_22NestedNameSpecifierLocES6_RKNS_19DeclarationNameInfoEPNS_9ValueDeclEPNS_9NamedDeclEPKNS_24TemplateArgumentListInfoESE_.exit ], [ 1, %_ZNK5clang10MemberExpr18getNumTemplateArgsEv.exit ]
  %i.mb = load ptr, ptr %5, align 8, !tbaa !85    ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.ma
  br i1 %i.mc, label %_ZN5clang24TemplateArgumentListInfoD2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @free(ptr noundef %i.mb) #25
  br label %_ZN5clang24TemplateArgumentListInfoD2Ev.exit

_ZN5clang24TemplateArgumentListInfoD2Ev.exit:     ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.bg

bb.bg:                                            ; preds = %.critedge59, %_ZN5clang24TemplateArgumentListInfoD2Ev.exit, %_ZNK5clang10MemberExpr15getQualifierLocEv.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit80, %bb.a
  %.sroa.0145.2 = phi i64 [ 1, %bb.a ], [ 1, %_ZNK5clang10MemberExpr15getQualifierLocEv.exit ], [ %.sroa.0145.0, %_ZN5clang24TemplateArgumentListInfoD2Ev.exit ], [ %i.el, %.critedge59 ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit80 ]
  ret i64 %.sroa.0145.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE28TransformMatrixSubscriptExprEPNS_19MatrixSubscriptExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1067
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1067
  %i.g = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f) ; 3 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1067
  %i.k = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.j) ; 3 uses
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %0, align 8, !tbaa !1113  ; 2 uses
  %i.m = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.m, align 4, !tbaa !1205
  %.not = icmp eq i32 %.val.val, 0
  %i.n = and i64 %i.c, -2
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  br i1 %.not, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !1067
  %i.q = icmp eq ptr %i.p, %i.o
  br i1 %i.q, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.r = and i64 %i.g, -2
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !1067
  %i.u = icmp eq ptr %i.t, %i.s
  br i1 %i.u, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.k, -2
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !1067
  %i.y = icmp eq ptr %i.x, %i.w
  br i1 %i.y, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.z = ptrtoint ptr %1 to i64
  br label %bb.i

._crit_edge:                                      ; preds = %bb.d, %bb.g, %bb.f, %bb.e
  %i.aa = and i64 %i.g, -2
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = and i64 %i.k, -2
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.ae, align 4, !tbaa !810
  %i.af = tail call i64 @_ZN5clang4Sema32CreateBuiltinMatrixSubscriptExprEPNS_4ExprES2_S2_NS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, ptr noundef %i.o, ptr noundef %i.ab, ptr noundef %i.ad, i32 %.sroa.0.0.copyload.i) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.c, %._crit_edge, %bb.h, %bb.a
  %.sroa.018.2 = phi i64 [ 1, %bb.a ], [ 1, %bb.b ], [ %i.z, %bb.h ], [ %i.af, %._crit_edge ], [ 1, %bb.c ]
  ret i64 %.sroa.018.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE34TransformMatrixSingleSubscriptExprEPNS_25MatrixSingleSubscriptExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1067
end_hunk_0
begin_hunk_1_@_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE27TransformCXXDefaultInitExprEPNS_18CXXDefaultInitExprE:bb.a

bb.e:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %.val = load ptr, ptr %0, align 8, !tbaa !1113  ; 3 uses
  %i.ap = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.ap, align 4, !tbaa !1205
  %i.aq = icmp eq i32 %.val.val, 0
  %i.ar = icmp eq ptr %.0.i, %i.b
  %or.cond = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !3973
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 616
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !938
  %i.aw = icmp eq ptr %i.at, %i.av
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = ptrtoint ptr %1 to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ay = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #24
  %i.az = tail call i64 @_ZN5clang4Sema23BuildCXXDefaultInitExprENS_14SourceLocationEPNS_9FieldDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %i.ay, ptr noundef nonnull %.0.i) #25
  br label %bb.i

bb.i:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.h, %bb.g
  %.sroa.0.0 = phi i64 [ %i.ax, %bb.g ], [ %i.az, %bb.h ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE26TransformCXXDefaultArgExprEPNS_17CXXDefaultArgExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3983 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1686, !noalias !3984 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1687, !noalias !3984 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1092, !noalias !3984 ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %i.h, -1                         ; 2 uses
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 31
  %i.n = xor i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.j, %i.o                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !810, !noalias !3985
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1071

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %.017.i.i.i.i.i = phi i32 [ %i.ac, %bb.c ], [ %i.p, %bb.b ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1378, !noalias !3985
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.c, !prof !815

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ac = and i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !810, !noalias !3985
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1072

.loopexit.i.i.i:                                  ; preds = %bb.c, %bb.b, %bb.a
  %i.ak = zext i32 %i.h to i64                    ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.ak
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.h to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.ak, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.y, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.al, %.loopexit.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.am
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1689
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.d
  %.0.i = phi ptr [ %i.ao, %bb.d ], [ %i.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 3 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.ap = load i32, ptr %1, align 8
  %i.aq = and i32 %i.ap, 524288
  %.not23 = icmp eq i32 %i.aq, 0
  br i1 %.not23, label %bb.f, label %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit

_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit: ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !847
  %i.at = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.as) ; 2 uses
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %i.at, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit ], [ 0, %bb.e ] ; 2 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !1113  ; 4 uses
  %i.av = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.av, align 4, !tbaa !1205
  %.not24 = icmp eq i32 %.val.val, 0
  br i1 %.not24, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !3983
  %i.ax = icmp eq ptr %.0.i, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !3986
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 616
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !938
  %i.bc = icmp eq ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bd = and i64 %.sroa.0.0, -2
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load i32, ptr %1, align 8
  %i.bg = and i32 %i.bf, 524288
  %.not.i18 = icmp eq i32 %i.bg, 0
  br i1 %.not.i18, label %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit19, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !847
  br label %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit19

_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit19: ; preds = %bb.i, %bb.j
  %i.bj = phi ptr [ %i.bi, %bb.j ], [ null, %bb.i ]
  %i.bk = icmp eq ptr %i.bj, %i.be
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit19
  %i.bl = ptrtoint ptr %1 to i64
  br label %bb.m

bb.l:                                             ; preds = %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit19, %bb.h, %bb.g, %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.bm, align 4, !tbaa !810
  %i.bn = and i64 %.sroa.0.0, -2
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr i8, ptr %.val, i64 232
  %.val15.val = load ptr, ptr %i.bp, align 8, !tbaa !771
  %i.bq = getelementptr i8, ptr %.val, i64 616
  %.val15.val16 = load ptr, ptr %i.bq, align 8, !tbaa !938
  %i.br = tail call noundef ptr @_ZN5clang17CXXDefaultArgExpr6CreateERKNS_10ASTContextENS_14SourceLocationEPNS_11ParmVarDeclEPNS_4ExprEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(23904) %.val15.val, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %.0.i, ptr noundef %i.bo, ptr noundef %.val15.val16) #25
  %i.bs = ptrtoint ptr %i.br to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %.sroa.022.1 = phi i64 [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ %i.bl, %bb.k ], [ %i.bs, %bb.l ], [ 1, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit ]
  ret i64 %.sroa.022.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE25TransformCXXConstructExprEPNS_16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3077", align 8 ; 9 uses
  %3 = alloca %"class.llvm::MutableArrayRef.2029", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %4 = alloca %"class.llvm::SmallVector.3077", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !2296
  switch i32 %i.c, label %bb.b [
    i32 1, label %bb.c
    i32 0, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %1, align 8
  %i.e = and i16 %i.d, 511
  %.not.i.i.i = icmp eq i16 %i.e, 118
  %5 = select i1 %.not.i.i.i, i64 56, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %5
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !847
  %i.h = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #25
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = load i16, ptr %1, align 8
  %i.j = and i16 %i.i, 511
  %.not.i.i.i44 = icmp eq i16 %i.j, 118
  %spec.select.v.i.i.i45 = select i1 %.not.i.i.i44, i64 48, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i45
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !847
  %i.m = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #25
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %1, align 8                ; 2 uses
  %i.o = and i32 %i.n, 2097152
  %.not81 = icmp eq i32 %i.o, 0
  br i1 %.not81, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = and i32 %i.n, 511
  %.not.i.i.i47 = icmp eq i32 %i.p, 118
  %spec.select.v.i.i.i48 = select i1 %.not.i.i.i47, i64 48, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !847
  %i.s = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.r, i1 noundef zeroext false)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit.thread

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.t, align 8, !tbaa !78 ; 4 uses
  %i.u = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.u, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %.sroa.0.0.copyload.i, -16
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 17
  %i.z = load i16, ptr %i.y, align 1
  %i.aa = and i16 %i.z, 11
  %or.cond = icmp eq i16 %i.aa, 0
  br i1 %or.cond, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit.thread75, label %_ZN12_GLOBAL__N_117AdjustConstraints18AlreadyTransformedEN5clang8QualTypeE.exit.i.thread72

_ZN12_GLOBAL__N_117AdjustConstraints18AlreadyTransformedEN5clang8QualTypeE.exit.i.thread72: ; preds = %bb.g
  %.val.i = load ptr, ptr %0, align 8, !tbaa !1113
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 232
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !771, !nonnull !769, !align !770
  %i.ad = tail call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ac, i64 %.sroa.0.0.copyload.i, i32 0) #25, !inline_history !36
  %i.ae = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ad), !inline_history !36 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit.thread, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit: ; preds = %_ZN12_GLOBAL__N_117AdjustConstraints18AlreadyTransformedEN5clang8QualTypeE.exit.i.thread72
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ae, align 8, !tbaa !78 ; 2 uses
  %i.af = icmp ult i64 %.sroa.0.0.copyload.i.i, 16
  br i1 %i.af, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit.thread, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit.thread75

_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit.thread75: ; preds = %bb.g, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit
  %.sroa.070.077 = phi i64 [ %.sroa.0.0.copyload.i.i, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit ], [ %.sroa.0.0.copyload.i, %bb.g ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2297 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1686, !noalias !3995 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1687, !noalias !3995 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.an = load i32, ptr %i.am, align 4, !tbaa !1092, !noalias !3995 ; 4 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.loopexit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit.thread75
  %i.ap = add i32 %i.an, -1                       ; 2 uses
  %i.aq = ptrtoint ptr %i.ah to i64
  %i.ar = mul i64 %i.aq, -4658895280553007687     ; 2 uses
  %i.as = lshr i64 %i.ar, 31
  %i.at = xor i64 %i.as, %i.ar
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.ap, %i.au                    ; 3 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = lshr i64 %i.aw, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !810, !noalias !3996
  %i.ba = and i32 %i.av, 31
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = trunc i32 %i.bb to i1
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1071

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %bb.i
  %i.bd = phi i64 [ %i.bj, %bb.i ], [ %i.aw, %bb.h ]
  %.017.i.i.i.i.i = phi i32 [ %i.bi, %bb.i ], [ %i.av, %bb.h ]
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.bd ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1378, !noalias !3996
  %i.bg = icmp eq ptr %i.ah, %i.bf
  br i1 %i.bg, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.i, !prof !815

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bh = add nuw i32 %.017.i.i.i.i.i, 1
  %i.bi = and i32 %i.bh, %i.ap                    ; 3 uses
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = lshr i64 %i.bj, 5
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !810, !noalias !3996
  %i.bn = and i32 %i.bi, 31
  %i.bo = lshr i32 %i.bm, %i.bn
  %i.bp = trunc i32 %i.bo to i1
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1072

.loopexit.i.i.i:                                  ; preds = %bb.i, %bb.h, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit.thread75
  %i.bq = zext i32 %i.an to i64                   ; 2 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.bq
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.an to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.bq, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.be, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.br, %.loopexit.i.i.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %.pre-phi.i
  %.not.i50 = icmp eq ptr %.lcssa.sink.i.i.i, %i.bs
  br i1 %.not.i50, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1689
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.j
  %.0.i = phi ptr [ %i.bu, %bb.j ], [ %i.ah, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 7 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 0, ptr %i.a, align 1, !tbaa !772
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.bv, ptr %4, align 8, !tbaa !85
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.bw, align 8, !tbaa !84
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 8, ptr %i.bx, align 4, !tbaa !814
  %.val = load ptr, ptr %0, align 8, !tbaa !1113  ; 6 uses
  %i.by = load i32, ptr %1, align 8               ; 2 uses
  %i.bz = and i32 %i.by, 2097152
  %.not82 = icmp eq i32 %i.bz, 0
  %i.ca = trunc i32 %i.by to i16                  ; 3 uses
  br i1 %.not82, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %.val, i64 4592
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !85
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 4600
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !84
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [792 x i8], ptr %i.cc, i64 %i.cf
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -792
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !2216
  switch i32 %i.ci, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.m
    i32 3, label %bb.m
    i32 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !768, !nonnull !769, !align !770
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = and i64 %i.cl, 8192
  %.not.i51 = icmp eq i64 %i.cm, 0
  br i1 %.not.i51, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 noundef 1, ptr noundef null, i32 noundef 4) #25
  %.pre = load i16, ptr %1, align 8
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %i.cn = phi i16 [ %i.ca, %bb.l ], [ %i.ca, %bb.m ], [ %.pre, %bb.n ], [ %i.ca, %bb.k ]
  %.sroa.6.0 = phi i1 [ false, %bb.l ], [ false, %bb.m ], [ true, %bb.n ], [ false, %bb.k ] ; 2 uses
  %i.co = and i16 %i.cn, 511
  %.not.i.i = icmp eq i16 %i.co, 118
  %spec.select.v.i.i = select i1 %.not.i.i, i64 48, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i
  %i.cq = load i32, ptr %i.b, align 8, !tbaa !2296
  %i.cr = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.cp, i32 noundef %i.cq, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.a)
  br i1 %i.cr, label %bb.o, label %.critedge38

bb.o:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  br i1 %.sroa.6.0, label %bb.p, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.p:                                             ; preds = %bb.o
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val) #25
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

.critedge38:                                      ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  br i1 %.sroa.6.0, label %bb.q, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit52

bb.q:                                             ; preds = %.critedge38
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val) #25
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit52

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit52: ; preds = %.critedge38, %bb.q
  %.val39 = load ptr, ptr %0, align 8, !tbaa !1113 ; 3 uses
  %i.cs = getelementptr i8, ptr %.val39, i64 13800
  %.val39.val = load i32, ptr %i.cs, align 4, !tbaa !1205
  %.not83 = icmp eq i32 %.val39.val, 0
  br i1 %.not83, label %bb.r, label %.critedge

bb.r:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit52
  %.sroa.0.0.copyload.i53 = load i64, ptr %i.t, align 8, !tbaa !78
  %i.ct = icmp eq i64 %.sroa.070.077, %.sroa.0.0.copyload.i53
  br i1 %i.ct, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.cu = load ptr, ptr %i.ag, align 8, !tbaa !2297
  %i.cv = icmp ne ptr %.0.i, %i.cu
  %i.cw = load i8, ptr %i.a, align 1, !range !775
  %i.cx = trunc nuw i8 %i.cw to i1
  %or.cond79 = select i1 %i.cv, i1 true, i1 %i.cx
  br i1 %or.cond79, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #24
  call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val39, i32 %i.cy, ptr noundef nonnull %.0.i, i1 noundef zeroext true) #25
  %i.cz = ptrtoint ptr %1 to i64
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

.critedge:                                        ; preds = %bb.s, %bb.r, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit52
  %i.da = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #24 ; 2 uses
  %i.db = load i32, ptr %1, align 8               ; 3 uses
  %i.dc = and i32 %i.db, 524288
  %i.dd = icmp ne i32 %i.dc, 0
  %i.de = load ptr, ptr %4, align 8, !tbaa !85
  %i.df = load i32, ptr %i.bw, align 8, !tbaa !84
  %i.dg = zext i32 %i.df to i64
  %i.dh = insertelement <4 x i32> poison, i32 %i.db, i64 0
  %i.di = shufflevector <4 x i32> %i.dh, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dj = and <4 x i32> %i.di, <i32 8388608, i32 4194304, i32 2097152, i32 1048576>
  %i.dk = icmp ne <4 x i32> %i.dj, zeroinitializer ; 4 uses
  %i.dl = lshr i32 %i.db, 24
  %i.dm = and i32 %i.dl, 7
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i55 = load i64, ptr %i.dn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = and i64 %i.dp, 2305843009213693952
  %.not.i56 = icmp eq i64 %i.dq, 0
  br i1 %.not.i56, label %bb.u, label %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i

_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i: ; preds = %.critedge
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 184
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !3997
  br label %bb.u

bb.u:                                             ; preds = %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i, %.critedge
  %.0.i57 = phi ptr [ %.sroa.4.0.copyload.i.i, %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i ], [ %.0.i, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.dr, ptr %2, align 8, !tbaa !85
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.ds, align 8, !tbaa !84
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.dt, align 4, !tbaa !814
  %i.du = call noundef zeroext i1 @_ZN5clang4Sema23CompleteConstructorCallEPNS_18CXXConstructorDeclENS_8QualTypeEN4llvm15MutableArrayRefIPNS_4ExprEEENS_14SourceLocationERNS4_15SmallVectorImplIS7_EEbb(ptr noundef nonnull align 8 dereferenceable(18640) %.val39, ptr noundef %.0.i57, i64 %.sroa.070.077, ptr %i.de, i64 %i.dg, i32 %i.da, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false, i1 noundef zeroext false) #25
  br i1 %i.du, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val.i58 = load ptr, ptr %0, align 8, !tbaa !1113
  %i.dv = load ptr, ptr %2, align 8, !tbaa !85
  store ptr %i.dv, ptr %3, align 8, !tbaa !2212
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dx = load i32, ptr %i.ds, align 8, !tbaa !84
  %i.dy = zext i32 %i.dx to i64
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !2213
  %i.dz = extractelement <4 x i1> %i.dk, i64 0
  %i.ea = extractelement <4 x i1> %i.dk, i64 1
  %i.eb = extractelement <4 x i1> %i.dk, i64 2
  %i.ec = extractelement <4 x i1> %i.dk, i64 3
  %i.ed = call i64 @_ZN5clang4Sema21BuildCXXConstructExprENS_14SourceLocationENS_8QualTypeEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i58, i32 %i.da, i64 %.sroa.070.077, ptr noundef nonnull %.0.i, i1 noundef zeroext %i.dd, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef.2029") align 8 %3, i1 noundef zeroext %i.ec, i1 noundef zeroext %i.eb, i1 noundef zeroext %i.ea, i1 noundef zeroext %i.dz, i32 noundef %i.dm, i64 %.sroa.0.0.copyload.i55) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sroa.020.0.i = phi i64 [ %i.ed, %bb.v ], [ 1, %bb.u ]
  %i.ee = load ptr, ptr %2, align 8, !tbaa !85    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.dr
  br i1 %i.ef, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @free(ptr noundef %i.ee) #25
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.p, %bb.o, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit, %bb.t
  %.sroa.069.0 = phi i64 [ %i.cz, %bb.t ], [ %.sroa.020.0.i, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit ], [ 1, %bb.o ], [ 1, %bb.p ]
  %i.eg = load ptr, ptr %4, align 8, !tbaa !85    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.bv
  br i1 %i.eh, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  call void @free(ptr noundef %i.eg) #25
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit.thread

_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit.thread: ; preds = %bb.f, %_ZN12_GLOBAL__N_117AdjustConstraints18AlreadyTransformedEN5clang8QualTypeE.exit.i.thread72, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.e
  %.sroa.069.2 = phi i64 [ %i.s, %bb.e ], [ %.sroa.069.0, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ 1, %_ZN12_GLOBAL__N_117AdjustConstraints18AlreadyTransformedEN5clang8QualTypeE.exit.i.thread72 ], [ 1, %bb.f ]
  ret i64 %.sroa.069.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE31TransformCXXTemporaryObjectExprEPNS_22CXXTemporaryObjectExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.llvm::SmallVector.3077", align 8 ; 13 uses
  %3 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1348
  %i.d = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE27TransformTypeWithDeducedTSTEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2297 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1686, !noalias !4006 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1687, !noalias !4006 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1092, !noalias !4006 ; 4 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.loopexit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %i.l, -1                         ; 2 uses
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = mul i64 %i.o, -4658895280553007687       ; 2 uses
  %i.q = lshr i64 %i.p, 31
  %i.r = xor i64 %i.q, %i.p
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.n, %i.s                       ; 3 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = lshr i64 %i.u, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !810, !noalias !4007
  %i.y = and i32 %i.t, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1071

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %i.ab = phi i64 [ %i.ah, %bb.d ], [ %i.u, %bb.c ]
  %.017.i.i.i.i.i = phi i32 [ %i.ag, %bb.d ], [ %i.t, %bb.c ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1378, !noalias !4007
  %i.ae = icmp eq ptr %i.f, %i.ad
  br i1 %i.ae, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.d, !prof !815

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.af = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ag = and i32 %i.af, %i.n                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !810, !noalias !4007
  %i.al = and i32 %i.ag, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1072

.loopexit.i.i.i:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.ao = zext i32 %i.l to i64                    ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ao
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.l to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.ao, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.ac, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.ap, %.loopexit.i.i.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.aq
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1689
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.e
  %.0.i = phi ptr [ %i.as, %bb.e ], [ %i.f, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 3 uses
  %.not38 = icmp eq ptr %.0.i, null
  br i1 %.not38, label %bb.w, label %bb.f

bb.f:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 0, ptr %i.a, align 1, !tbaa !772
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.at, ptr %2, align 8, !tbaa !85
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i32 0, ptr %i.au, align 8, !tbaa !84
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 8, ptr %i.av, align 4, !tbaa !814
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !2296 ; 2 uses
  %i.ay = icmp ugt i32 %i.ax, 8
  br i1 %i.ay, label %bb.g, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.g:                                             ; preds = %bb.f
  %i.az = zext i32 %i.ax to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.at, i64 noundef %i.az, i64 noundef 8) #25
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.f, %bb.g
  %.val = load ptr, ptr %0, align 8, !tbaa !1113  ; 5 uses
  %i.ba = load i32, ptr %1, align 8               ; 2 uses
  %i.bb = and i32 %i.ba, 2097152
  %.not51 = icmp eq i32 %i.bb, 0
  %i.bc = trunc i32 %i.ba to i16                  ; 3 uses
  br i1 %.not51, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 4592
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !85
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 4600
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !84
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [792 x i8], ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -792
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !2216
  switch i32 %i.bk, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.i
    i32 3, label %bb.i
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !768, !nonnull !769, !align !770
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = and i64 %i.bn, 8192
  %.not.i42 = icmp eq i64 %i.bo, 0
  br i1 %.not.i42, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 noundef 1, ptr noundef null, i32 noundef 4) #25
  %.pre = load i16, ptr %1, align 8
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %bb.h, %bb.i, %bb.j
  %i.bp = phi i16 [ %i.bc, %bb.h ], [ %i.bc, %bb.i ], [ %.pre, %bb.j ], [ %i.bc, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ]
  %.sroa.4.0 = phi i1 [ false, %bb.h ], [ false, %bb.i ], [ true, %bb.j ], [ false, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ]
  %i.bq = and i16 %i.bp, 511
  %.not.i.i = icmp eq i16 %i.bq, 118
  %spec.select.v.i.i = select i1 %.not.i.i, i64 48, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i
  %i.bs = load i32, ptr %i.aw, align 8, !tbaa !2296
  %i.bt = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.br, i32 noundef %i.bs, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.bt, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %i.bu = load i32, ptr %1, align 8
  %i.bv = and i32 %i.bu, 6291456
  %or.cond50.not = icmp eq i32 %i.bv, 2097152
  br i1 %or.cond50.not, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bw = call i32 @_ZNK5clang22CXXTemporaryObjectExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #24
  %i.bx = load ptr, ptr %2, align 8, !tbaa !85
  %i.by = load i32, ptr %i.au, align 8, !tbaa !84
  %i.bz = zext i32 %i.by to i64
  %i.ca = call i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #24
  %.val40 = load ptr, ptr %0, align 8, !tbaa !1113
  %i.cb = call i64 @_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val40, i32 %i.bw, ptr %i.bx, i64 %i.bz, i32 %i.ca, i1 noundef zeroext true) #25 ; 2 uses
  %.not54 = icmp eq i64 %i.cb, 1
  br i1 %.not54, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = and i64 %i.cb, -2
  %i.cd = inttoptr i64 %i.cc to ptr
  store i32 0, ptr %i.au, align 8, !tbaa !84
  %i.ce = load i32, ptr %i.av, align 4, !tbaa !814
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i: ; preds = %bb.m
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.at, i64 noundef 1, i64 noundef 8) #25
  %.pre8.pre.i.i.i.i = load i32, ptr %i.au, align 8, !tbaa !84
  %i.cg = zext i32 %.pre8.pre.i.i.i.i to i64
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit: ; preds = %bb.m, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i
  %.pre8.i.i5.i.i = phi i64 [ %i.cg, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i ], [ 0, %bb.m ]
  %i.ch = load ptr, ptr %2, align 8, !tbaa !85
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.pre8.i.i5.i.i
  store ptr %i.cd, ptr %i.ci, align 1
  %.pre.i.i.i.i = load i32, ptr %i.au, align 8, !tbaa !84
  %i.cj = add i32 %.pre.i.i.i.i, 1
  store i32 %i.cj, ptr %i.au, align 8, !tbaa !84
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit, %bb.l, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %bb.k
  %cond = phi i1 [ true, %bb.k ], [ false, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ], [ false, %bb.l ], [ true, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit ]
  br i1 %.sroa.4.0, label %bb.o, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val) #25
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.n, %bb.o
  br i1 %cond, label %bb.p, label %bb.u

bb.p:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  %.val39 = load ptr, ptr %0, align 8, !tbaa !1113 ; 2 uses
  %i.ck = getelementptr i8, ptr %.val39, i64 13800
  %.val39.val = load i32, ptr %i.ck, align 4, !tbaa !1205
  %.not52 = icmp eq i32 %.val39.val, 0
  br i1 %.not52, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !1348
  %i.cm = icmp eq ptr %i.d, %i.cl
  br i1 %i.cm, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cn = load ptr, ptr %i.e, align 8, !tbaa !2297
  %i.co = icmp ne ptr %.0.i, %i.cn
  %i.cp = load i8, ptr %i.a, align 1, !range !775
  %i.cq = trunc nuw i8 %i.cp to i1
  %or.cond = select i1 %i.co, i1 true, i1 %i.cq
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = call i32 @_ZNK5clang22CXXTemporaryObjectExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #24
  call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val39, i32 %i.cr, ptr noundef nonnull %.0.i, i1 noundef zeroext true) #25
  %i.cs = load ptr, ptr %0, align 8, !tbaa !1113, !nonnull !769, !align !770
  %i.ct = call i64 @_ZN5clang4Sema20MaybeBindToTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cs, ptr noundef nonnull %1) #25
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !78
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cv = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  store ptr %i.cv, ptr %3, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cu, ptr %i.cw, align 8
  %i.cx = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.cy = load ptr, ptr %2, align 8, !tbaa !85
  %i.cz = load i32, ptr %i.au, align 8, !tbaa !84
  %i.da = zext i32 %i.cz to i64
  %i.db = call i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #24
  %i.dc = load i32, ptr %1, align 8
  %i.dd = and i32 %i.dc, 2097152
  %i.de = icmp ne i32 %i.dd, 0
  %.val41 = load ptr, ptr %0, align 8, !tbaa !1113
  %i.df = call i64 @_ZN5clang4Sema25BuildCXXTypeConstructExprEPNS_14TypeSourceInfoENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val41, ptr noundef nonnull %i.d, i32 %i.cx, ptr %i.cy, i64 %i.da, i32 %i.db, i1 noundef zeroext %i.de) #25
  br label %bb.u

bb.u:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.t, %bb.s
  %.sroa.035.3 = phi i64 [ %i.df, %bb.t ], [ %i.ct, %bb.s ], [ 1, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ]
  %i.dg = load ptr, ptr %2, align 8, !tbaa !85    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.at
  br i1 %i.dh, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.dg) #25
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.w

bb.w:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.a, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  %.sroa.035.5 = phi i64 [ 1, %bb.a ], [ %.sroa.035.3, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  ret i64 %.sroa.035.5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE27TransformCXXBoolLiteralExprEPNS_18CXXBoolLiteralExprE(ptr noundef %0) unnamed_addr #19 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  ret i64 %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE29TransformCXXBindTemporaryExprEPNS_20CXXBindTemporaryExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4008
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4011 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1113, !nonnull !769, !align !770
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2300
  %i.g = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #24
  tail call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.d, i32 %i.g, ptr noundef nonnull %i.c, i1 noundef zeroext true) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2300
  %i.j = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.i)
  ret i64 %i.j
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE18TransformBlockExprEPNS_9BlockExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #9 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2850", align 8 ; 9 uses
  %3 = alloca %"class.llvm::SmallVector.500", align 8 ; 9 uses
  %4 = alloca %"class.clang::Sema::ExtParameterInfoBuilder", align 8 ; 12 uses
  %5 = alloca %"struct.clang::FunctionProtoType::ExtProtoInfo", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1221 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1113, !nonnull !769, !align !770
  %i.d = tail call i32 @_ZNK5clang9BlockExpr16getCaretLocationEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #25
  tail call void @_ZN5clang4Sema15ActOnBlockStartENS_14SourceLocationEPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(18640) %i.c, i32 %i.d, ptr noundef null) #25
  %i.e = load ptr, ptr %0, align 8, !tbaa !1113, !nonnull !769, !align !770
  %i.f = tail call noundef ptr @_ZN5clang4Sema11getCurBlockEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.e) #25 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1560 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !4013
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.j = load i16, ptr %i.i, align 8
  %i.k = and i16 %i.j, 8192
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, -8193
  %i.o = or disjoint i16 %i.n, %i.k
  store i16 %i.o, ptr %i.l, align 8
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !4013
  %i.q = load i16, ptr %i.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8
  %i.t = and i16 %i.q, -32768
  %i.u = and i16 %i.s, 32767
  %i.v = or disjoint i16 %i.u, %i.t
  store i16 %i.v, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.x, align 8, !tbaa !84
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 4, ptr %i.y, align 4, !tbaa !814
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %3, align 8, !tbaa !85
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !84
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 4, ptr %i.ab, align 4, !tbaa !814
  %i.ac = call noundef ptr @_ZNK5clang9BlockExpr15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #25 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN5clang11SemaOpenACC19LoopInConstructRAIID2Ev:bb.a
  %or.cond.i.i.i.i.i.i.i = select i1 %i.t, i1 %i.as, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.k, label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !78  ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.at) #27
  br label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit

_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit: ; preds = %_ZN4llvm6APSIntaSERKS0_.exit.i.i.i.i.i.i, %_ZNSt22_Optional_payload_baseIN4llvm6APSIntEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i, %bb.j, %bb.k, %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.aw = load i16, ptr %i.f, align 8
  store i16 %i.aw, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load ptr, ptr %0, align 8, !tbaa !4270, !nonnull !769, !align !770
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.az, ptr noundef nonnull align 8 dereferenceable(14) %i.ax, i64 14, i1 false), !tbaa.struct !2320
  %i.ba = load ptr, ptr %0, align 8, !tbaa !4270, !nonnull !769, !align !770 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 136
  store i8 %.in, ptr %i.bb, align 8, !tbaa !4290
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 156
  store i8 %.in3, ptr %i.bc, align 4, !tbaa !4291
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 96 ; 2 uses
  %.lobit = and i8 %.in4.in.in, 2
  %i.be = load i8, ptr %i.bd, align 8
  %i.bf = and i8 %i.be, -3
  %i.bg = or disjoint i8 %i.bf, %.lobit
  store i8 %i.bg, ptr %i.bd, align 8
  %i.bh = load i8, ptr %i.u, align 8, !tbaa !2316, !range !775, !noundef !769
  %i.bi = trunc nuw i8 %i.bh to i1
  store i8 0, ptr %i.u, align 8, !tbaa !2316
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = icmp ugt i32 %i.bk, 64
  %or.cond.i.i.i.i = select i1 %i.bi, i1 %i.bl, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.m, label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit

bb.m:                                             ; preds = %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit
  %i.bm = load ptr, ptr %i.q, align 8, !tbaa !78  ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.bm) #27
  br label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit

_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit: ; preds = %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit, %bb.m, %bb.n
  ret void
}

declare void @_ZN5clang4Sema22ActOnConditionVariableEPNS_4DeclENS_14SourceLocationENS0_13ConditionKindE(ptr dead_on_unwind writable sret(%"class.clang::Sema::ConditionResult") align 8, ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, i32 noundef) local_unnamed_addr #2

declare void @_ZN5clang4Sema14ActOnConditionEPNS_5ScopeENS_14SourceLocationEPNS_4ExprENS0_13ConditionKindEb(ptr dead_on_unwind writable sret(%"class.clang::Sema::ConditionResult") align 8, ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema14ActOnWhileStmtENS_14SourceLocationES1_NS0_15ConditionResultES1_PNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i32, ptr noundef byval(%"class.clang::Sema::ConditionResult") align 8, i32, ptr noundef) local_unnamed_addr #2

declare void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema14ActOnLabelStmtENS_14SourceLocationEPNS_9LabelDeclES1_PNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, i32, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4AttrELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !84
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #25
  %i.f = load ptr, ptr %0, align 8, !tbaa !85
  %i.g = load i32, ptr %i.a, align 8, !tbaa !84
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !84
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !84
  ret void
}

declare noundef zeroext i1 @_ZN5clang4Sema26CheckRebuiltStmtAttributesEN4llvm8ArrayRefIPKNS_4AttrEEE(ptr noundef nonnull align 8 dereferenceable(18640), ptr, i64) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema19BuildAttributedStmtENS_14SourceLocationEN4llvm8ArrayRefIPKNS_4AttrEEEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr, i64, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN5clang8SemaSYCL23BuildSYCLKernelCallStmtEPNS_12FunctionDeclEPNS_12CompoundStmtEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN5clang10SwitchStmt20getConditionVariableEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema22ActOnStartOfSwitchStmtENS_14SourceLocationES1_PNS_4StmtENS0_15ConditionResultES1_(ptr noundef nonnull align 8 dereferenceable(18640), i32, i32, ptr noundef, ptr noundef byval(%"class.clang::Sema::ConditionResult") align 8, i32) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema21ActOnFinishSwitchStmtENS_14SourceLocationEPNS_4StmtES3_(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema16ActOnDefaultStmtENS_14SourceLocationES1_PNS_4StmtEPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i32, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema13ActOnCaseExprENS_14SourceLocationENS_12ActionResultIPNS_4ExprELb1EEE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i64) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema13ActOnCaseStmtENS_14SourceLocationENS_12ActionResultIPNS_4ExprELb1EEES1_S5_S1_(ptr noundef nonnull align 8 dereferenceable(18640), i32, i64, i32, i64, i32) local_unnamed_addr #2

declare void @_ZN5clang4Sema17ActOnCaseStmtBodyEPNS_4StmtES2_(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema16ActOnSEHTryBlockEbNS_14SourceLocationEPNS_4StmtES3_(ptr noundef nonnull align 8 dereferenceable(18640), i1 noundef zeroext, i32, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN5clang14SEHFinallyStmt6CreateERKNS_10ASTContextENS_14SourceLocationEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(23904), i32, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema19ActOnSEHExceptBlockENS_14SourceLocationEPNS_4ExprEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.3077", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %.not130 = icmp eq ptr %1, null
  br i1 %.not130, label %.loopexit, label %.lr.ph133

.lr.ph133:                                        ; preds = %bb.a, %tailrecurse.backedge
  %.tr118131 = phi ptr [ %.tr118.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 3 uses
  %i.b = load i16, ptr %.tr118131, align 8        ; 2 uses
  %i.c = and i16 %i.b, 510
  %spec.select.i.i.i.i.i.i.i.i.not = icmp eq i16 %i.c, 62
  br i1 %spec.select.i.i.i.i.i.i.i.i.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph133
  %i.d = getelementptr inbounds nuw i8, ptr %.tr118131, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76   ; 2 uses
  %.pre = load i16, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph133
  %i.f = phi i16 [ %i.b, %.lr.ph133 ], [ %.pre, %bb.b ] ; 2 uses
  %.098 = phi ptr [ %.tr118131, %.lr.ph133 ], [ %i.e, %bb.b ] ; 2 uses
  %i.g = and i16 %i.f, 511
  %.not106 = icmp eq i16 %i.g, 129
  br i1 %.not106, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.098, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1067
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1301 ; 2 uses
  %.pre143 = load i16, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i16 [ %i.f, %bb.c ], [ %.pre143, %bb.d ]
  %.1 = phi ptr [ %.098, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.m = and i16 %i.l, 511
  %.not108 = icmp eq i16 %i.m, 50
  br i1 %.not108, label %bb.f, label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.n, align 8 ; 3 uses
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i, 4
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = inttoptr i64 %.0.copyload.i.i.i.i.i.i to ptr
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

bb.h:                                             ; preds = %bb.f
  %i.r = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1471
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit: ; preds = %bb.h, %bb.g, %bb.e
  %.2 = phi ptr [ %.1, %bb.e ], [ %i.q, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  %i.v = load i16, ptr %.2, align 8               ; 2 uses
  %i.w = and i16 %i.v, 511
  %.not110128 = icmp eq i16 %i.w, 120
  br i1 %.not110128, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit, %.lr.ph
  %.3129 = phi ptr [ %i.y, %.lr.ph ], [ %.2, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %.3129, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2300 ; 3 uses
  %i.z = load i16, ptr %i.y, align 8              ; 2 uses
  %i.aa = and i16 %i.z, 511
  %.not110 = icmp eq i16 %i.aa, 120
  br i1 %.not110, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit
  %i.ab = phi i16 [ %i.v, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ], [ %i.z, %.lr.ph ] ; 2 uses
  %.3.lcssa = phi ptr [ %.2, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ], [ %i.y, %.lr.ph ] ; 2 uses
  %i.ac = and i16 %i.ab, 511
  %.not112 = icmp eq i16 %i.ac, 81
  br i1 %.not112, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.ad = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %.3.lcssa) #25 ; 2 uses
  %.pre144 = load i16, ptr %i.ad, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.ae = phi i16 [ %i.ab, %._crit_edge ], [ %.pre144, %bb.i ] ; 2 uses
  %.5 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %i.ad, %bb.i ] ; 13 uses
  %i.af = and i16 %i.ae, 511                      ; 3 uses
  %i.ag = icmp eq i16 %i.af, 101
  br i1 %i.ag, label %tailrecurse.backedge, label %bb.k

tailrecurse.backedge:                             ; preds = %bb.j, %bb.u
  %.sink = phi i64 [ %spec.select.v.i.i.i, %bb.u ], [ 16, %bb.j ]
  %4 = getelementptr inbounds nuw i8, ptr %.5, i64 %.sink
  %.tr118.be = load ptr, ptr %4, align 8, !tbaa !73 ; 2 uses
  %.not = icmp eq ptr %.tr118.be, null
  br i1 %.not, label %.loopexit, label %.lr.ph133

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i16 %i.af, -119
  %spec.select.i.i.i.i.i.i.i.i60 = icmp ult i16 %i.ah, -2 ; 2 uses
  br i1 %2, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %spec.select.i.i.i.i.i.i.i.i60, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load i32, ptr %.5, align 8              ; 2 uses
  %i.aj = and i32 %i.ai, 2097152
  %.not113 = icmp eq i32 %i.aj, 0
  %i.ak = trunc i32 %i.ai to i16
  br i1 %.not113, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.5)
  br label %.loopexit

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.am = phi i16 [ %i.ak, %bb.m ], [ %i.ae, %bb.k ]
  switch i16 %i.af, label %bb.r [
    i16 102, label %bb.p
    i16 56, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.an = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.5) #24 ; 2 uses
  %.sroa.076.0.extract.trunc = trunc i64 %i.an to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.an, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %.val53 = load ptr, ptr %0, align 8, !tbaa !1113
  %i.ao = tail call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val53, i32 %.sroa.076.0.extract.trunc, i32 %.sroa.4.0.extract.trunc, ptr null, i64 0) #25
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  %.val52 = load ptr, ptr %0, align 8, !tbaa !1113
  %i.ap = tail call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val52, i32 0, i32 0, ptr null, i64 0) #25
  br label %.loopexit

bb.r:                                             ; preds = %bb.o
  %i.aq = and i16 %i.am, 511
  %i.ar = icmp eq i16 %i.aq, 118
  %or.cond = or i1 %spec.select.i.i.i.i.i.i.i.i60, %i.ar
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.as = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.5)
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.at = load i32, ptr %.5, align 8              ; 3 uses
  %i.au = and i32 %i.at, 4194304
  %.not116 = icmp eq i32 %i.au, 0
  br i1 %.not116, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = and i32 %i.at, 511
  %.not.i.i.i = icmp eq i32 %i.av, 118
  %spec.select.v.i.i.i = select i1 %.not.i.i.i, i64 48, i64 40
  br label %tailrecurse.backedge

bb.v:                                             ; preds = %bb.t
  %.val50 = load ptr, ptr %0, align 8, !tbaa !1113 ; 8 uses
  %i.aw = and i32 %i.at, 2097152
  %.not154 = icmp eq i32 %i.aw, 0
  br i1 %.not154, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %.val50, i64 4592
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !85
  %i.az = getelementptr inbounds nuw i8, ptr %.val50, i64 4600
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !84
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [792 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -792
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !2216
  switch i32 %i.be, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.x
    i32 3, label %bb.x
    i32 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w
  %i.bf = getelementptr inbounds nuw i8, ptr %.val50, i64 216
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !768, !nonnull !769, !align !770
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = and i64 %i.bh, 8192
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val50, i32 noundef 1, ptr noundef null, i32 noundef 4) #25
  %.val49.pre = load ptr, ptr %0, align 8, !tbaa !1113
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %.val49 = phi ptr [ %.val50, %bb.w ], [ %.val50, %bb.x ], [ %.val49.pre, %bb.y ], [ %.val50, %bb.v ] ; 2 uses
  %.sroa.4.0 = phi i1 [ false, %bb.w ], [ false, %bb.x ], [ true, %bb.y ], [ false, %bb.v ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.val49, i64 4592
  %i.bk = getelementptr inbounds nuw i8, ptr %.val49, i64 4600
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !84
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !85
  %i.bo = getelementptr [792 x i8], ptr %i.bn, i64 %i.bm ; 4 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 -831
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !2340, !range !775, !noundef !769
  %i.br = getelementptr inbounds i8, ptr %i.bo, i64 -39
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !2340
  %i.bs = getelementptr i8, ptr %i.bo, i64 -829
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !2341, !range !775, !noundef !769
  %i.bu = getelementptr inbounds i8, ptr %i.bo, i64 -37
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !2341
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.bv, ptr %3, align 8, !tbaa !85
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.bw, align 8, !tbaa !84
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.bx, align 4, !tbaa !814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 0, ptr %i.a, align 1, !tbaa !772
  %i.by = load i16, ptr %.5, align 8
  %i.bz = and i16 %i.by, 511
  %.not.i.i = icmp eq i16 %i.bz, 118
  %spec.select.v.i.i = select i1 %.not.i.i, i64 48, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %.5, i64 %spec.select.v.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !2296
  %i.cd = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ca, i32 noundef %i.cc, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a)
  br i1 %i.cd, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %i.ce = load i32, ptr %.5, align 8
  %i.cf = and i32 %i.ce, 2097152
  %.not117 = icmp eq i32 %i.cf, 0
  br i1 %.not117, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %.5) #24
  %i.ch = load ptr, ptr %3, align 8, !tbaa !85
  %i.ci = load i32, ptr %i.bw, align 8, !tbaa !84
  %i.cj = zext i32 %i.ci to i64
  %i.ck = call i32 @_ZNK5clang16CXXConstructExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(36) %.5) #24
  %.val54 = load ptr, ptr %0, align 8, !tbaa !1113
  %i.cl = call i64 @_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val54, i32 %i.cg, ptr %i.ch, i64 %i.cj, i32 %i.ck, i1 noundef zeroext true) #25
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw i8, ptr %.5, i64 24
  %.sroa.0.0.copyload.i65 = load i64, ptr %i.cm, align 8 ; 2 uses
  %.sroa.068.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i65 to i32 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i65, 32 ; 2 uses
  %i.cn = icmp eq i32 %.sroa.068.0.extract.trunc, 0
  %i.co = icmp eq i64 %.sroa.5.0.extract.shift, 0
  %.not2.i = or i1 %i.cn, %i.co
  br i1 %.not2.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.cp = load ptr, ptr %3, align 8, !tbaa !85
  %i.cq = load i32, ptr %i.bw, align 8, !tbaa !84
  %i.cr = zext i32 %i.cq to i64
  %.val51 = load ptr, ptr %0, align 8, !tbaa !1113
  %i.cs = call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val51, i32 %.sroa.068.0.extract.trunc, i32 %.sroa.5.0.extract.trunc, ptr %i.cp, i64 %i.cr) #25
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %bb.aa
  %.sroa.097.1 = phi i64 [ 1, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ], [ %i.cl, %bb.aa ], [ %i.cs, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ct = load ptr, ptr %3, align 8, !tbaa !85    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bv
  br i1 %i.cu, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef %i.ct) #25
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.sroa.4.0, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val50) #25
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse.backedge, %bb.af, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %bb.a, %bb.n, %bb.q, %bb.s, %bb.p
  %.sroa.097.3 = phi i64 [ %i.al, %bb.n ], [ %i.ao, %bb.p ], [ %i.ap, %bb.q ], [ %i.as, %bb.s ], [ %.sroa.097.1, %bb.af ], [ 0, %bb.a ], [ %.sroa.097.1, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 0, %tailrecurse.backedge ]
  ret i64 %.sroa.097.3
}

declare noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.2586", align 8 ; 8 uses
  %.not141 = icmp eq i32 %2, 0
  br i1 %.not141, label %.critedge88, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = icmp ne ptr %5, null
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.not81 = icmp eq ptr %5, null                  ; 2 uses
  %i.g = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit103
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit103 ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !847  ; 4 uses
  br i1 %3, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #25
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %.not81, label %.critedge88, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %5, align 1, !tbaa !772
  br label %.critedge88

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !847  ; 3 uses
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, 511
  %.not140 = icmp eq i16 %i.n, 22
  br i1 %.not140, label %bb.g, label %.thread136

.thread:                                          ; preds = %bb.b
  %i.o = load i16, ptr %i.i, align 8
  %i.p = and i16 %i.o, 511
  %.not140154 = icmp eq i16 %i.p, 22
  br i1 %.not140154, label %bb.g, label %.thread136.thread

bb.g:                                             ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.i, %.thread ], [ %i.l, %bb.f ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2202 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %i.d, ptr %6, align 8, !tbaa !85
  store i32 0, ptr %i.e, align 8, !tbaa !84
  store i32 2, ptr %i.f, align 4, !tbaa !814
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksEPNS_4ExprERN4llvm15SmallVectorImplISt4pairINS3_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !2203
  %.val89 = load ptr, ptr %0, align 8, !tbaa !1113
  %i.v = getelementptr inbounds nuw i8, ptr %.val89, i64 13800 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.v, align 4, !tbaa !810
  store i32 0, ptr %i.v, align 4, !tbaa !810
  %i.w = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.s) ; 2 uses
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = and i64 %i.w, -2
  %i.aa = inttoptr i64 %i.z to ptr
  %.sroa.0.0.copyload.i94 = load i32, ptr %i.y, align 8, !tbaa !810
  %.val93 = load ptr, ptr %0, align 8, !tbaa !1113
  %i.ab = call i64 @_ZN5clang4Sema18CheckPackExpansionEPNS_4ExprENS_14SourceLocationENS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val93, ptr noundef %i.aa, i32 %.sroa.0.0.copyload.i94, i32 %i.u) #25 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not81, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %5, align 1, !tbaa !772
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = and i64 %i.ab, -2
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load i32, ptr %i.b, align 8, !tbaa !84  ; 2 uses
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !814
  %.not.i = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i, label %bb.m, label %bb.l, !prof !815

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ae)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = zext i32 %i.af to i64
  %i.ai = load ptr, ptr %4, align 8, !tbaa !85
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  store ptr %i.ae, ptr %i.aj, align 1
  %i.ak = load i32, ptr %i.b, align 8, !tbaa !84
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.b, align 8, !tbaa !84
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.h, %bb.l, %bb.m, %bb.g
  %cond = phi i1 [ false, %bb.g ], [ false, %bb.h ], [ true, %bb.l ], [ true, %bb.m ]
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.v, align 8, !tbaa !810
  %i.am = load ptr, ptr %6, align 8, !tbaa !85    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @free(ptr noundef %i.am) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %cond, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit103, label %.critedge88

.thread136:                                       ; preds = %bb.f
  %i.ao = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.l, i1 noundef zeroext false)
  br label %bb.p

.thread136.thread:                                ; preds = %.thread
  %i.ap = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.i)
  br label %bb.p

bb.p:                                             ; preds = %.thread136.thread, %.thread136
  %i.aq = phi ptr [ %i.h, %.thread136.thread ], [ %i.k, %.thread136 ]
  %storemerge = phi i64 [ %i.ap, %.thread136.thread ], [ %i.ao, %.thread136 ] ; 2 uses
  %i.ar = icmp eq i64 %storemerge, 1
  br i1 %i.ar, label %.critedge88, label %bb.q

bb.q:                                             ; preds = %bb.p
end_hunk_2
