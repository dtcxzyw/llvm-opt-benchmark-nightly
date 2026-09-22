Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaDeclCXX?download=true
inline.NumInlined: 22648
inline.NumDeleted: 9795
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5clang4Sema28ActOnDecompositionDeclaratorEPNS_5ScopeERNS_10DeclaratorEN4llvm15MutableArrayRefIPNS_21TemplateParameterListEEE:bb.a
  store i32 8, ptr %i.ir, align 4, !tbaa !112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.is, i8 0, i64 24, i1 false)
  store ptr %0, ptr %i.it, align 8, !tbaa !1336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iu, ptr noundef nonnull align 8 dereferenceable(24) %28, i64 24, i1 false), !tbaa.struct !1337
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iv, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.iw, align 8, !tbaa !1338
  store i8 0, ptr %i.ix, align 1, !tbaa !1339
  store i8 1, ptr %i.iy, align 2, !tbaa !1340
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.iz, i8 0, i64 5, i1 false)
  call void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168) %29) #26
  %i.kp = call noundef ptr @_ZN5clang11DeclContext16getRedeclContextEv(ptr noundef nonnull align 8 dereferenceable(32) %i.u) #26
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load i16, ptr %i.kq, align 8
  %i.ks = and i16 %i.kr, 127
  %i.kt = icmp eq i16 %i.ks, 0
  %i.ku = call noundef zeroext i1 @_ZN5clang4Sema10LookupNameERNS_12LookupResultEPNS_5ScopeEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(168) %29, ptr noundef %1, i1 noundef zeroext %i.kt, i1 noundef zeroext false) #26 ; 0 uses
  %i.kv = load i32, ptr %29, align 8, !tbaa !1334
  %i.kw = icmp eq i32 %i.kv, 2
  br i1 %i.kw, label %bb.bh, label %_ZNK5clang4Decl19isTemplateParameterEv.exit

bb.bh:                                            ; preds = %bb.bg
  %i.kx = load ptr, ptr %i.io, align 8, !tbaa !100 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kx, i64 8) ]
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.kx, align 8
  %i.ky = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.kz = inttoptr i64 %i.ky to ptr               ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 28
  %i.lb = load i32, ptr %i.la, align 4
  %i.lc = and i32 %i.lb, 127                      ; 3 uses
  switch i32 %i.lc, label %_ZNK5clang12LookupResult12getFoundDeclEv.exit [
    i32 54, label %bb.bi
    i32 55, label %bb.bi
    i32 77, label %bb.bi
    i32 79, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bh, %bb.bh, %bb.bh
  %i.ld = call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull align 8 dereferenceable(48) %i.kz) #27
  %.phi.trans.insert276 = getelementptr inbounds nuw i8, ptr %i.ld, i64 28
  %.pre277 = load i32, ptr %.phi.trans.insert276, align 4
  %.pre283 = and i32 %.pre277, 127
  br label %_ZNK5clang12LookupResult12getFoundDeclEv.exit

_ZNK5clang12LookupResult12getFoundDeclEv.exit:    ; preds = %bb.bh, %bb.bi
  %.pre-phi = phi i32 [ %i.lc, %bb.bh ], [ %.pre283, %bb.bi ]
  switch i32 %.pre-phi, label %_ZNK5clang4Decl19isTemplateParameterEv.exit [
    i32 68, label %bb.bj
    i32 48, label %bb.bj
    i32 69, label %bb.bj
  ]

bb.bj:                                            ; preds = %_ZNK5clang12LookupResult12getFoundDeclEv.exit, %_ZNK5clang12LookupResult12getFoundDeclEv.exit, %_ZNK5clang12LookupResult12getFoundDeclEv.exit
  %.sroa.023.0.copyload = load i32, ptr %i.kn, align 8, !tbaa !116
  switch i32 %i.lc, label %_ZNK5clang12LookupResult12getFoundDeclEv.exit200 [
    i32 54, label %bb.bk
    i32 55, label %bb.bk
    i32 77, label %bb.bk
    i32 79, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj, %bb.bj, %bb.bj, %bb.bj
  %i.le = call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull align 8 dereferenceable(48) %i.kz) #27
  br label %_ZNK5clang12LookupResult12getFoundDeclEv.exit200

_ZNK5clang12LookupResult12getFoundDeclEv.exit200: ; preds = %bb.bj, %bb.bk
  %.0.i.i199 = phi ptr [ %i.le, %bb.bk ], [ %i.kz, %bb.bj ]
  call void @_ZN5clang4Sema31DiagnoseTemplateParameterShadowENS_14SourceLocationEPNS_4DeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.023.0.copyload, ptr noundef %.0.i.i199, i1 noundef zeroext false) #26
  store i32 0, ptr %29, align 8, !tbaa !1334
  store i32 0, ptr %i.iq, align 8, !tbaa !101
  %i.lf = load ptr, ptr %i.is, align 8, !tbaa !1342 ; 2 uses
  %.not.i201 = icmp eq ptr %i.lf, null
  br i1 %.not.i201, label %_ZN5clang12LookupResult5clearEv.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZNK5clang12LookupResult12getFoundDeclEv.exit200
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.lf) #26
  br label %_ZN5clang12LookupResult5clearEv.exit

_ZN5clang12LookupResult5clearEv.exit:             ; preds = %_ZNK5clang12LookupResult12getFoundDeclEv.exit200, %bb.bl
  store i8 0, ptr %i.jb, align 2, !tbaa !1343
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.is, i8 0, i64 16, i1 false)
  br label %_ZNK5clang4Decl19isTemplateParameterEv.exit

_ZNK5clang4Decl19isTemplateParameterEv.exit:      ; preds = %_ZNK5clang12LookupResult12getFoundDeclEv.exit, %_ZN5clang12LookupResult5clearEv.exit, %bb.bg
  %i.lg = getelementptr inbounds nuw i8, ptr %.0137270, i64 104 ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !1313
  %.not266 = icmp eq i32 %i.lh, 0
  br i1 %.not266, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %_ZNK5clang4Decl19isTemplateParameterEv.exit
  %i.li = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull %i.u) #26
  %i.lj = call noundef zeroext i1 @_ZNK5clang4Decl11isTemplatedEv(ptr noundef nonnull align 8 dereferenceable(33) %i.li) #26
  br i1 %i.lj, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.sroa.022.0.copyload = load i32, ptr %i.lg, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 %.sroa.022.0.copyload, i32 noundef 4896) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %30) #26
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.lk = load ptr, ptr %i.jc, align 8, !tbaa !790, !nonnull !107, !align !791 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 19336
  %.sroa.0.0.copyload.i202 = load i64, ptr %i.ll, align 8, !tbaa !92
  %i.lm = call i64 @_ZNK5clang10ASTContext20getPackExpansionTypeENS_8QualTypeENS_16OptionalUnsignedIjEEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.lk, i64 %.sroa.0.0.copyload.i202, i32 0, i1 noundef zeroext false) #26
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_ZNK5clang4Decl19isTemplateParameterEv.exit
  %.sroa.0236.0 = phi i64 [ %i.lm, %bb.bo ], [ 0, %_ZNK5clang4Decl19isTemplateParameterEv.exit ]
  %i.ln = load ptr, ptr %i.jc, align 8, !tbaa !790, !nonnull !107, !align !791
  %.sroa.013.0.copyload = load i32, ptr %i.kn, align 8, !tbaa !116
  %i.lo = load ptr, ptr %.0137270, align 8, !tbaa !2335
  %i.lp = call noundef ptr @_ZN5clang11BindingDecl6CreateERNS_10ASTContextEPNS_11DeclContextENS_14SourceLocationEPNS_14IdentifierInfoENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ln, ptr noundef nonnull %i.u, i32 %.sroa.013.0.copyload, ptr noundef %i.lo, i64 %.sroa.0236.0) #26 ; 9 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.0137270, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  store i8 1, ptr %31, align 1, !tbaa !1345
  store i8 0, ptr %i.jd, align 1, !tbaa !1346
  call void @_ZN5clang4Sema24ProcessDeclAttributeListEPNS_5ScopeEPNS_4DeclERKNS_20ParsedAttributesViewERKNS0_27ProcessDeclAttributeOptionsE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef %i.lp, ptr noundef nonnull align 8 dereferenceable(40) %i.lq, ptr noundef nonnull align 1 dereferenceable(2) %31) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  %i.lr = load i32, ptr %i.je, align 8, !tbaa !1313
  %i.ls = icmp eq i32 %i.lr, 0
  %i.lt = load i32, ptr %i.jf, align 4
  %i.lu = icmp eq i32 %i.lt, 0
  %.not2.i.i = select i1 %i.ls, i1 true, i1 %i.lu
  br i1 %.not2.i.i, label %_ZNK5clang12CXXScopeSpec7isEmptyEv.exit, label %_ZNK5clang12CXXScopeSpec7isEmptyEv.exit.thread

_ZNK5clang12CXXScopeSpec7isEmptyEv.exit:          ; preds = %bb.bp
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.jg, align 8, !tbaa !1284
  %.not.i203 = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i203, label %bb.bq, label %_ZNK5clang12CXXScopeSpec7isEmptyEv.exit.thread

bb.bq:                                            ; preds = %_ZNK5clang12CXXScopeSpec7isEmptyEv.exit
  %i.lv = call noundef ptr @_ZN5clang4Sema22getShadowedDeclarationEPKNS_11BindingDeclERKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.lp, ptr noundef nonnull align 8 dereferenceable(168) %29) #26
  br label %_ZNK5clang12CXXScopeSpec7isEmptyEv.exit.thread

_ZNK5clang12CXXScopeSpec7isEmptyEv.exit.thread:   ; preds = %bb.bp, %_ZNK5clang12CXXScopeSpec7isEmptyEv.exit, %bb.bq
  %i.lw = phi ptr [ %i.lv, %bb.bq ], [ null, %_ZNK5clang12CXXScopeSpec7isEmptyEv.exit ], [ null, %bb.bp ] ; 2 uses
  %i.lx = load i16, ptr %i.jh, align 8
  %i.ly = and i16 %i.lx, 127                      ; 2 uses
  switch i16 %i.ly, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit [
    i16 9, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread
    i16 7, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread
    i16 20, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread
    i16 1, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread
  ]

_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit: ; preds = %_ZNK5clang12CXXScopeSpec7isEmptyEv.exit.thread
  %i.lz = add nsw i16 %i.ly, -35
  %spec.select.i = icmp ult i16 %i.lz, 6
  br i1 %spec.select.i, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread, label %bb.br

_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread: ; preds = %_ZNK5clang12CXXScopeSpec7isEmptyEv.exit.thread, %_ZNK5clang12CXXScopeSpec7isEmptyEv.exit.thread, %_ZNK5clang12CXXScopeSpec7isEmptyEv.exit.thread, %_ZNK5clang12CXXScopeSpec7isEmptyEv.exit.thread, %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit
  %i.ma = load i64, ptr %i.v, align 8
  %i.mb = and i64 %i.ma, 7
  %i.mc = icmp eq i64 %i.mb, 2
  br label %bb.br

bb.br:                                            ; preds = %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread, %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit
  %i.md = phi i1 [ false, %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit ], [ %i.mc, %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread ]
  call void @_ZN5clang4Sema20FilterLookupForScopeERNS_12LookupResultEPNS_11DeclContextEPNS_5ScopeEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(168) %29, ptr noundef nonnull %i.u, ptr noundef %1, i1 noundef zeroext %i.md, i1 noundef zeroext false) #26
  %i.me = load i64, ptr %i.v, align 8
  %i.mf = and i64 %i.me, 7
  %.not153 = icmp eq i64 %i.mf, 3
  br i1 %.not153, label %_ZNK5clang14IdentifierInfo13isPlaceholderEv.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mg = load i16, ptr %i.jh, align 8
  %i.mh = and i16 %i.mg, 127                      ; 2 uses
  switch i16 %i.mh, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit207 [
    i16 9, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit207.thread
    i16 7, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit207.thread
    i16 20, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit207.thread
    i16 1, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit207.thread
  ]

_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit207: ; preds = %bb.bs
  %i.mi = add nsw i16 %i.mh, -35
  %spec.select.i206 = icmp ult i16 %i.mi, 6
  br i1 %spec.select.i206, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit207.thread, label %_ZNK5clang14IdentifierInfo13isPlaceholderEv.exit

_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit207.thread: ; preds = %bb.bs, %bb.bs, %bb.bs, %bb.bs, %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit207
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !1349 ; 2 uses
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !1351
  %i.mm = and i64 %i.ml, 4294967295
  %i.mn = icmp eq i64 %i.mm, 1
  br i1 %i.mn, label %bb.bt, label %_ZNK5clang14IdentifierInfo13isPlaceholderEv.exit

bb.bt:                                            ; preds = %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit207.thread
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mp = load i8, ptr %i.mo, align 8, !tbaa !92
  %i.mq = icmp eq i8 %i.mp, 95
  br label %_ZNK5clang14IdentifierInfo13isPlaceholderEv.exit

_ZNK5clang14IdentifierInfo13isPlaceholderEv.exit: ; preds = %bb.bt, %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit207.thread, %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit207, %bb.br
  %i.mr = phi i1 [ false, %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit207 ], [ false, %bb.br ], [ false, %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit207.thread ], [ %i.mq, %bb.bt ]
  %i.ms = load i32, ptr %i.iq, align 8, !tbaa !101 ; 2 uses
  %.not.i.i.i208 = icmp eq i32 %i.ms, 0
  br i1 %.not.i.i.i208, label %bb.cc, label %bb.bu

bb.bu:                                            ; preds = %_ZNK5clang14IdentifierInfo13isPlaceholderEv.exit
  %i.mt = load ptr, ptr %i.io, align 8, !tbaa !100 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.mt, i64 8) ]
  br i1 %i.mr, label %bb.bv, label %bb.cb

bb.bv:                                            ; preds = %bb.bu
  %i.mu = zext i32 %i.ms to i64
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %i.mu
  %i.mw = getelementptr inbounds i8, ptr %i.mv, i64 -8
  %.0.copyload.i.i.i.i.i.i.i209 = load i64, ptr %i.mw, align 8
  %i.mx = and i64 %.0.copyload.i.i.i.i.i.i.i209, -8
  %i.my = inttoptr i64 %i.mx to ptr
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %.0.copyload.i.i.i.i.i.i.i210 = load i64, ptr %i.mz, align 8 ; 3 uses
  %i.na = and i64 %.0.copyload.i.i.i.i.i.i.i210, 4
  %i.nb = icmp eq i64 %i.na, 0
  br i1 %i.nb, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.nc = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i210 to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit

bb.bx:                                            ; preds = %bb.bv
  %i.nd = and i64 %.0.copyload.i.i.i.i.i.i.i210, -5
  %i.ne = inttoptr i64 %i.nd to ptr
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !1249
  br label %_ZN5clang4Decl14getDeclContextEv.exit

_ZN5clang4Decl14getDeclContextEv.exit:            ; preds = %bb.bw, %bb.bx
  %.0.i211 = phi ptr [ %i.nc, %bb.bw ], [ %i.nf, %bb.bx ]
  %i.ng = call noundef ptr @_ZN5clang11DeclContext16getRedeclContextEv(ptr noundef nonnull align 8 dereferenceable(32) %.0.i211) #26
  %i.nh = call noundef ptr @_ZN5clang11DeclContext16getRedeclContextEv(ptr noundef nonnull align 8 dereferenceable(32) %i.u) #26 ; 2 uses
  %.not.i212 = icmp eq ptr %i.nh, null
  br i1 %.not.i212, label %.critedge, label %_ZNK5clang11DeclContext6EqualsEPKS0_.exit

_ZNK5clang11DeclContext6EqualsEPKS0_.exit:        ; preds = %_ZN5clang4Decl14getDeclContextEv.exit
  %i.ni = call noundef ptr @_ZN5clang11DeclContext17getPrimaryContextEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ng) #26
  %i.nj = call noundef ptr @_ZN5clang11DeclContext17getPrimaryContextEv(ptr noundef nonnull align 8 dereferenceable(32) %i.nh) #26
  %i.nk = icmp eq ptr %i.ni, %i.nj
  br i1 %i.nk, label %bb.by, label %.critedge

bb.by:                                            ; preds = %_ZNK5clang11DeclContext6EqualsEPKS0_.exit
  %i.nl = load ptr, ptr %i.io, align 8, !tbaa !100 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.nl, i64 8) ]
  %i.nm = load i32, ptr %i.iq, align 8, !tbaa !101
  %i.nn = zext i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %i.nn
  %i.np = getelementptr inbounds i8, ptr %i.no, i64 -8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.np, align 8
  %i.nq = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.nr = inttoptr i64 %i.nq to ptr
  %i.ns = load ptr, ptr %i.t, align 8, !tbaa !1312
  %i.nt = call noundef zeroext i1 @_ZNK5clang4Sema13isDeclInScopeEPNS_9NamedDeclEPNS_11DeclContextEPNS_5ScopeEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.nr, ptr noundef %i.ns, ptr noundef %1, i1 noundef zeroext false) #26
  br i1 %i.nt, label %bb.bz, label %.critedge

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %29, align 8, !tbaa !1334
  store i32 0, ptr %i.iq, align 8, !tbaa !101
  %i.nu = load ptr, ptr %i.is, align 8, !tbaa !1342 ; 2 uses
  %.not.i213 = icmp eq ptr %i.nu, null
  br i1 %.not.i213, label %_ZN5clang12LookupResult5clearEv.exit214, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.nu) #26
  br label %_ZN5clang12LookupResult5clearEv.exit214

_ZN5clang12LookupResult5clearEv.exit214:          ; preds = %bb.bz, %bb.ca
  store i8 0, ptr %i.jb, align 2, !tbaa !1343
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.is, i8 0, i64 16, i1 false)
  %.sroa.07.0.copyload = load i32, ptr %i.kn, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.nv = load ptr, ptr %i.k, align 8, !tbaa !1172, !nonnull !107, !align !791
  %i.nw = load i64, ptr %i.nv, align 8
  %i.nx = and i64 %i.nw, 262144
  %.not.i215 = icmp eq i64 %i.nx, 0
  %i.ny = select i1 %.not.i215, i32 5788, i32 6958
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 %.sroa.07.0.copyload, i32 noundef %i.ny) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.critedge

bb.cb:                                            ; preds = %bb.bu
  %.0.copyload.i.i.i.i.i.i.i216 = load i64, ptr %i.mt, align 8
  %i.nz = and i64 %.0.copyload.i.i.i.i.i.i.i216, -8
  %i.oa = inttoptr i64 %i.nz to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  %.sroa.05.0.copyload = load i32, ptr %i.kn, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %32, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 %.sroa.05.0.copyload, i32 noundef 5019) #26
  %i.ob = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_14IdentifierInfoEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %32, ptr noundef nonnull align 8 dereferenceable(8) %.0137270) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 24
  %.sroa.0.0.copyload.i217 = load i32, ptr %i.oc, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %33, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 %.sroa.0.0.copyload.i217, i32 noundef 118) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %33) #26
  br label %.critedge

bb.cc:                                            ; preds = %_ZNK5clang14IdentifierInfo13isPlaceholderEv.exit
  %.not154 = icmp eq ptr %i.lw, null
  br i1 %.not154, label %.critedge, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.od = load i16, ptr %i.ji, align 8
  %i.oe = and i16 %i.od, 16
  %.not267 = icmp eq i16 %i.oe, 0
  br i1 %.not267, label %bb.ce, label %.critedge

bb.ce:                                            ; preds = %bb.cd
  call void @_ZN5clang4Sema11CheckShadowEPNS_9NamedDeclES2_RKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.lp, ptr noundef nonnull %i.lw, ptr noundef nonnull align 8 dereferenceable(168) %29) #26
  br label %.critedge

.critedge:                                        ; preds = %_ZN5clang4Decl14getDeclContextEv.exit, %_ZNK5clang11DeclContext6EqualsEPKS0_.exit, %bb.by, %_ZN5clang12LookupResult5clearEv.exit214, %bb.cc, %bb.cd, %bb.ce, %bb.cb
  call void @_ZN5clang4Sema17PushOnScopeChainsEPNS_9NamedDeclEPNS_5ScopeEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.lp, ptr noundef %1, i1 noundef zeroext true) #26
  %i.of = load i32, ptr %i.ic, align 8, !tbaa !101 ; 2 uses
  %i.og = load i32, ptr %i.id, align 4, !tbaa !112
  %.not.i218 = icmp ult i32 %i.of, %i.og
  br i1 %.not.i218, label %bb.cg, label %bb.cf, !prof !113

bb.cf:                                            ; preds = %.critedge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang11BindingDeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef %i.lp)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang11BindingDeclELb1EE9push_backES3_.exit

bb.cg:                                            ; preds = %.critedge
  %i.oh = zext i32 %i.of to i64
  %i.oi = load ptr, ptr %27, align 8, !tbaa !100
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.oh
  store ptr %i.lp, ptr %i.oj, align 1
  %i.ok = load i32, ptr %i.ic, align 8, !tbaa !101
  %i.ol = add i32 %i.ok, 1
  store i32 %i.ol, ptr %i.ic, align 8, !tbaa !101
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang11BindingDeclELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang11BindingDeclELb1EE9push_backES3_.exit: ; preds = %bb.cf, %bb.cg
  %i.om = load i8, ptr %i.jk, align 8, !tbaa !105, !range !106, !noalias !2336, !noundef !107
  %i.on = trunc nuw i8 %i.om to i1
  br i1 %i.on, label %bb.ch, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.ch:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang11BindingDeclELb1EE9push_backES3_.exit
  %i.oo = load ptr, ptr %i.jj, align 8, !tbaa !110, !noalias !2336 ; 2 uses
  %i.op = load i32, ptr %i.jl, align 4, !tbaa !108, !noalias !2336 ; 4 uses
  %i.oq = zext i32 %i.op to i64
  %.idx.i.i = shl nuw nsw i64 %i.oq, 3
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 %.idx.i.i ; 2 uses
  %.not22.i.i = icmp eq i32 %i.op, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ch, %.critedge.i.i
  %.023.i.i = phi ptr [ %i.ot, %.critedge.i.i ], [ %i.oo, %bb.ch ] ; 2 uses
  %i.os = load ptr, ptr %.023.i.i, align 8, !tbaa !111, !noalias !2336
  %.not15.i.i = icmp eq ptr %i.os, %i.lp
  br i1 %.not15.i.i, label %_ZN4llvm15SmallPtrSetImplIPKN5clang4DeclEE6insertES4_.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ot = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ot, %i.or
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.ch
  %i.ou = load i32, ptr %i.jm, align 8, !tbaa !109, !noalias !2336
  %i.ov = icmp ult i32 %i.op, %i.ou
  br i1 %i.ov, label %bb.ci, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.ci:                                            ; preds = %._crit_edge.i.i
  %i.ow = add nuw i32 %i.op, 1
  store i32 %i.ow, ptr %i.jl, align 4, !tbaa !108, !noalias !2336
  store ptr %i.lp, ptr %i.or, align 8, !tbaa !111, !noalias !2336
  br label %_ZN4llvm15SmallPtrSetImplIPKN5clang4DeclEE6insertES4_.exit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang11BindingDeclELb1EE9push_backES3_.exit
  %i.ox = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.jj, ptr noundef %i.lp) #26, !noalias !2336 ; 0 uses
  br label %_ZN4llvm15SmallPtrSetImplIPKN5clang4DeclEE6insertES4_.exit

_ZN4llvm15SmallPtrSetImplIPKN5clang4DeclEE6insertES4_.exit: ; preds = %.lr.ph.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i, %bb.ci
  %i.oy = load i8, ptr %i.iz, align 1, !tbaa !1352, !range !106, !noundef !107
  %i.oz = trunc nuw i8 %i.oy to i1
  %.pre280 = load i32, ptr %29, align 8           ; 3 uses
  br i1 %i.oz, label %bb.cj, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.cj:                                            ; preds = %_ZN4llvm15SmallPtrSetImplIPKN5clang4DeclEE6insertES4_.exit
  %i.pa = icmp ne i32 %.pre280, 5
  %i.pb = load ptr, ptr %i.jn, align 8
  %i.pc = icmp ne ptr %i.pb, null
  %or.cond.i.i = select i1 %i.pa, i1 %i.pc, i1 false
  br i1 %or.cond.i.i, label %bb.ck, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.ck:                                            ; preds = %bb.cj
  %i.pd = load ptr, ptr %i.it, align 8, !tbaa !1336 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 216
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !1172, !nonnull !107, !align !791
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 40
  %i.ph = load i64, ptr %i.pg, align 8
  %i.pi = and i64 %i.ph, 18014398509481984
  %.not.i.i221 = icmp eq i64 %i.pi, 0
  br i1 %.not.i.i221, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN5clang4Sema17CheckLookupAccessERKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.pd, ptr noundef nonnull align 8 dereferenceable(168) %29) #26
  %.pre279 = load i32, ptr %29, align 8
  br label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

_ZN5clang12LookupResult14diagnoseAccessEv.exit.i: ; preds = %bb.cl, %bb.cj, %_ZN4llvm15SmallPtrSetImplIPKN5clang4DeclEE6insertES4_.exit
  %i.pj = phi i32 [ %.pre279, %bb.cl ], [ %.pre280, %_ZN4llvm15SmallPtrSetImplIPKN5clang4DeclEE6insertES4_.exit ], [ %.pre280, %bb.cj ]
  %i.pk = load i8, ptr %i.ja, align 4, !tbaa !1353, !range !106, !noundef !107
  %i.pl = trunc nuw i8 %i.pk to i1
  %i.pm = icmp eq i32 %i.pj, 5
  %or.cond257 = select i1 %i.pl, i1 %i.pm, i1 false
  br i1 %or.cond257, label %bb.cm, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

bb.cm:                                            ; preds = %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.pn = load ptr, ptr %i.it, align 8, !tbaa !1336
  call void @_ZN5clang4Sema23DiagnoseAmbiguousLookupERNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.pn, ptr noundef nonnull align 8 dereferenceable(168) %29) #26
  br label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i: ; preds = %bb.ck, %bb.cm, %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.po = load ptr, ptr %i.is, align 8, !tbaa !1342 ; 2 uses
  %.not.i220 = icmp eq ptr %i.po, null
  br i1 %.not.i220, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.po) #26
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  %i.pp = load ptr, ptr %i.io, align 8, !tbaa !100 ; 2 uses
  %i.pq = icmp eq ptr %i.pp, %i.ip
  br i1 %i.pq, label %_ZN5clang12LookupResultD2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @free(ptr noundef %i.pp) #26
  br label %_ZN5clang12LookupResultD2Ev.exit

_ZN5clang12LookupResultD2Ev.exit:                 ; preds = %bb.co, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  %i.pr = getelementptr inbounds nuw i8, ptr %.0137270, i64 112 ; 2 uses
  %.not152 = icmp eq ptr %i.pr, %i.ik
  br i1 %.not152, label %._crit_edge, label %bb.bg

bb.cq:                                            ; preds = %._crit_edge
  call void @_ZN5clang5Scope7AddDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(528) %1, ptr noundef %i.ki)
  %i.ps = load ptr, ptr %i.t, align 8, !tbaa !1312
  call void @_ZN5clang11DeclContext13addHiddenDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(32) %i.ps, ptr noundef %i.ki) #26
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %._crit_edge
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !1354 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 24
  %i.pw = load i32, ptr %i.pv, align 8, !tbaa !101
  %.not.i.i222.not = icmp eq i32 %i.pw, 0
  br i1 %.not.i.i222.not, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @_ZN5clang10SemaOpenMP32checkDeclIsAllowedInOpenMPTargetEPNS_4ExprEPNS_4DeclENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(552) %i.pu, ptr noundef null, ptr noundef %i.ki, i32 0) #26
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.px = load i8, ptr %i.kc, align 1, !tbaa !1352, !range !106, !noundef !107
  %i.py = trunc nuw i8 %i.px to i1
  %.pre282 = load i32, ptr %35, align 8           ; 3 uses
  br i1 %i.py, label %bb.cu, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i223

bb.cu:                                            ; preds = %bb.ct
  %i.pz = icmp ne i32 %.pre282, 5
  %i.qa = getelementptr inbounds nuw i8, ptr %35, i64 96
  %i.qb = load ptr, ptr %i.qa, align 8
  %i.qc = icmp ne ptr %i.qb, null
  %or.cond.i.i226 = select i1 %i.pz, i1 %i.qc, i1 false
  br i1 %or.cond.i.i226, label %bb.cv, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i223

bb.cv:                                            ; preds = %bb.cu
  %i.qd = load ptr, ptr %i.jw, align 8, !tbaa !1336 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 216
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !1172, !nonnull !107, !align !791
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 40
  %i.qh = load i64, ptr %i.qg, align 8
  %i.qi = and i64 %i.qh, 18014398509481984
  %.not.i.i227 = icmp eq i64 %i.qi, 0
  br i1 %.not.i.i227, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i224, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
end_hunk_0
begin_hunk_1_@_ZN5clang4Sema23BuildStdInitializerListENS_8QualTypeENS_14SourceLocationE:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.h = phi ptr [ %i.d, %bb.e ], [ %i.c, %bb.a ]
  %i.i = call fastcc i64 @_ZL21BuildStdClassTemplateRN5clang4SemaEPNS_17ClassTemplateDeclENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.h, i64 %1, i32 %2)
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.sroa.0.1 = phi i64 [ %i.i, %bb.f ], [ 0, %.thread ]
  ret i64 %.sroa.0.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL22LookupStdClassTemplateRN5clang4SemaENS_14SourceLocationEPKcPb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %4 = alloca %"class.clang::LookupResult", align 8 ; 27 uses
  %5 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %6 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  store ptr %2, ptr %i.b, align 8, !tbaa !1584
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4144 ; 6 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !92
  %i.e = trunc i8 %i.d to i1
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = icmp ne ptr %i.f, null
  %i.h = select i1 %i.e, i1 true, i1 %i.g
  br i1 %i.h, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1374, !nonnull !107, !align !791 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 568
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.l, %bb.c ], [ 0, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %i.a, align 8, !tbaa !1376
  %i.m = call { ptr, i8 } @_ZN4llvm9StringMapIPN5clang14IdentifierInfoENS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE11try_emplaceIJDnEEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %i.k, ptr %2, i64 %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.m, 0
  %i.n = load ptr, ptr %.fca.0.extract.i, align 8, !tbaa !1378 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1355 ; 2 uses
  %.not.i28 = icmp eq ptr %i.p, null
  br i1 %.not.i28, label %bb.d, label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

bb.d:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 672
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1383 ; 3 uses
  %.not22.i = icmp eq ptr %i.r, null
  br i1 %.not22.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1195
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr %2, i64 %.sroa.0.0.i) #26, !inline_history !1928 ; 3 uses
  store ptr %i.v, ptr %i.o, align 8, !tbaa !1355
  %.not23.i = icmp eq ptr %i.v, null
  br i1 %.not23.i, label %bb.f, label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 592 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1289 ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = add i64 %i.y, 24                         ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 600
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1290
  %i.ac = icmp ult i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.h, !prof !113

bb.g:                                             ; preds = %bb.f
  %i.ad = inttoptr i64 %i.z to ptr
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !1289
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ae = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.w, i64 noundef 24, i64 noundef 24, i8 3)
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i

_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.x, %bb.g ], [ %i.ae, %bb.h ] ; 6 uses
  %i.af = load i64, ptr %.0.i.i.i.i.i, align 8
  %i.ag = and i64 %i.af, -17592186044416
  %i.ah = or disjoint i64 %i.ag, 33553413
  store i64 %i.ah, ptr %.0.i.i.i.i.i, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  store i64 0, ptr %i.ai, align 8
  store ptr %.0.i.i.i.i.i, ptr %i.o, align 8, !tbaa !1355
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  store ptr %i.n, ptr %i.aj, align 8, !tbaa !1349
  br label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit: ; preds = %_ZN4llvm9StringRefC2EPKc.exit, %bb.e, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i
  %.0.i = phi ptr [ %.0.i.i.i.i.i, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i ], [ %i.p, %_ZN4llvm9StringRefC2EPKc.exit ], [ %i.v, %bb.e ]
  %i.ak = ptrtoint ptr %.0.i to i64               ; 2 uses
  store i32 0, ptr %4, align 8, !tbaa !1334
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.al, align 4, !tbaa !1335
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !100
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.ao, align 8, !tbaa !101
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 8, ptr %i.ap, align 4, !tbaa !112
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  store ptr %0, ptr %i.ar, align 8, !tbaa !1336
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 %i.ak, ptr %i.as, align 8, !tbaa !1284
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i32 %1, ptr %i.at, align 8, !tbaa !116
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 136
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i64 %i.ak) #26
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.av, i8 0, i64 18, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 163 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 164 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 1, i8 0>, ptr %i.aw, align 2, !tbaa !1283
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 166
  store i8 0, ptr %i.az, align 2, !tbaa !1343
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 167
  store i8 0, ptr %i.ba, align 1, !tbaa !1405
  call void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168) %4) #26
  %i.bb = load i8, ptr %i.c, align 8, !tbaa !92
  %i.bc = trunc i8 %i.bb to i1
  br i1 %i.bc, label %bb.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !1398
  br label %_ZNK5clang4Sema15getStdNamespaceEv.exit

bb.i:                                             ; preds = %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !790, !nonnull !107, !align !791
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 18624
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1288 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1195
  %i.bi = getelementptr i8, ptr %i.bh, i64 16, !nosanitize !107
  %i.bj = load ptr, ptr %i.bi, align 8, !nosanitize !107
  %i.bk = load i64, ptr %i.c, align 8, !tbaa !1284
  %i.bl = lshr i64 %i.bk, 1
  %i.bm = call noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 %i.bl) #26, !inline_history !40 ; 2 uses
  store ptr %i.bm, ptr %i.c, align 8, !tbaa !1398
  br label %_ZNK5clang4Sema15getStdNamespaceEv.exit

_ZNK5clang4Sema15getStdNamespaceEv.exit:          ; preds = %._crit_edge.i.i, %bb.i
  %i.bn = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.bm, %bb.i ] ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %spec.select = select i1 %i.bo, ptr null, ptr %i.bp
  %i.bq = call noundef zeroext i1 @_ZN5clang4Sema19LookupQualifiedNameERNS_12LookupResultEPNS_11DeclContextEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(168) %4, ptr noundef %spec.select, i1 noundef zeroext false) #26
  br i1 %i.bq, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_ZNK5clang4Sema15getStdNamespaceEv.exit
  %i.br = load i32, ptr %4, align 8, !tbaa !1334
  %.not.i29 = icmp eq i32 %i.br, 2
  %.pre = load ptr, ptr %i.am, align 8, !tbaa !100 ; 4 uses
  br i1 %.not.i29, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "align"(ptr %.pre, i64 8) ]
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.pre, align 8
  %i.bs = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.bt = inttoptr i64 %i.bs to ptr               ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 28
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = and i32 %i.bv, 127                      ; 2 uses
  switch i32 %i.bw, label %_ZNK5clang12LookupResult12getFoundDeclEv.exit.i [
    i32 54, label %bb.l
    i32 55, label %bb.l
    i32 77, label %bb.l
    i32 79, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  %i.bx = call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bt) #27 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 28
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4
  %.pre2.i = and i32 %.pre.i, 127
  br label %_ZNK5clang12LookupResult12getFoundDeclEv.exit.i

_ZNK5clang12LookupResult12getFoundDeclEv.exit.i:  ; preds = %bb.l, %bb.k
  %.pre-phi.i = phi i32 [ %i.bw, %bb.k ], [ %.pre2.i, %bb.l ]
  %.0.i.i.i = phi ptr [ %i.bt, %bb.k ], [ %i.bx, %bb.l ] ; 3 uses
  %i.by = icmp eq i32 %.pre-phi.i, 73
  br i1 %i.by, label %_ZNK5clang12LookupResult11getAsSingleINS_17ClassTemplateDeclEEEPT_v.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK5clang12LookupResult12getFoundDeclEv.exit.i, %bb.j
  call void @llvm.assume(i1 true) [ "align"(ptr %.pre, i64 8) ]
  store i8 0, ptr %i.ax, align 1, !tbaa !1352
  store i8 0, ptr %i.ay, align 4, !tbaa !1353
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.pre, align 8
  %i.bz = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.ca = inttoptr i64 %i.bz to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.cc, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i32 %.sroa.0.0.copyload.i, i32 noundef 4218) #26
  %i.cd = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPKcEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.not25 = icmp eq ptr %3, null
  br i1 %.not25, label %bb.o, label %.sink.split

_ZNK5clang12LookupResult11getAsSingleINS_17ClassTemplateDeclEEEPT_v.exit: ; preds = %_ZNK5clang12LookupResult12getFoundDeclEv.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1391 ; 2 uses
  %i.cg = call noundef i32 @_ZNK5clang21TemplateParameterList23getMinRequiredArgumentsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cf) #26
  %.not26 = icmp eq i32 %i.cg, 1
  br i1 %.not26, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZNK5clang12LookupResult11getAsSingleINS_17ClassTemplateDeclEEEPT_v.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1392
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 28
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = and i32 %i.ck, 127
  %i.cm = icmp eq i32 %i.cl, 68
  br i1 %i.cm, label %bb.o, label %.critedge

.critedge:                                        ; preds = %_ZNK5clang12LookupResult11getAsSingleINS_17ClassTemplateDeclEEEPT_v.exit, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %.sroa.0.0.copyload.i31 = load i32, ptr %i.co, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.cn, i32 %.sroa.0.0.copyload.i31, i32 noundef 4218) #26
  %i.cp = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPKcEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.not27 = icmp eq ptr %3, null
  br i1 %.not27, label %bb.o, label %.sink.split

.sink.split:                                      ; preds = %.critedge, %bb.m
  store i8 1, ptr %3, align 1, !tbaa !1283
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.m, %bb.n, %.critedge, %_ZNK5clang4Sema15getStdNamespaceEv.exit
  %.2 = phi ptr [ null, %_ZNK5clang4Sema15getStdNamespaceEv.exit ], [ null, %bb.m ], [ %.0.i.i.i, %bb.n ], [ null, %.critedge ], [ null, %.sink.split ]
  %i.cq = load i8, ptr %i.ax, align 1, !tbaa !1352, !range !106, !noundef !107
  %i.cr = trunc nuw i8 %i.cq to i1
  %.pre39 = load i32, ptr %4, align 8             ; 3 uses
  br i1 %i.cr, label %bb.p, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.p:                                             ; preds = %bb.o
  %i.cs = icmp ne i32 %.pre39, 5
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = icmp ne ptr %i.cu, null
  %or.cond.i.i = select i1 %i.cs, i1 %i.cv, i1 false
  br i1 %or.cond.i.i, label %bb.q, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.q:                                             ; preds = %bb.p
  %i.cw = load ptr, ptr %i.ar, align 8, !tbaa !1336 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 216
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1172, !nonnull !107, !align !791
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = and i64 %i.da, 18014398509481984
  %.not.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.i.i, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN5clang4Sema17CheckLookupAccessERKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cw, ptr noundef nonnull align 8 dereferenceable(168) %4) #26
  %.pre38 = load i32, ptr %4, align 8
  br label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

_ZN5clang12LookupResult14diagnoseAccessEv.exit.i: ; preds = %bb.r, %bb.p, %bb.o
  %i.dc = phi i32 [ %.pre38, %bb.r ], [ %.pre39, %bb.o ], [ %.pre39, %bb.p ]
  %i.dd = load i8, ptr %i.ay, align 4, !tbaa !1353, !range !106, !noundef !107
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = icmp eq i32 %i.dc, 5
  %or.cond = select i1 %i.de, i1 %i.df, i1 false
  br i1 %or.cond, label %bb.s, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

bb.s:                                             ; preds = %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.dg = load ptr, ptr %i.ar, align 8, !tbaa !1336
  call void @_ZN5clang4Sema23DiagnoseAmbiguousLookupERNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.dg, ptr noundef nonnull align 8 dereferenceable(168) %4) #26
  br label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i: ; preds = %bb.q, %bb.s, %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.dh = load ptr, ptr %i.aq, align 8, !tbaa !1342 ; 2 uses
  %.not.i32 = icmp eq ptr %i.dh, null
  br i1 %.not.i32, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.dh) #26
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  %i.di = load ptr, ptr %i.am, align 8, !tbaa !100 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.an
  br i1 %i.dj, label %_ZN5clang12LookupResultD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.di) #26
  br label %_ZN5clang12LookupResultD2Ev.exit

_ZN5clang12LookupResultD2Ev.exit:                 ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %_ZN5clang12LookupResultD2Ev.exit
  %.3 = phi ptr [ %.2, %_ZN5clang12LookupResultD2Ev.exit ], [ null, %bb.a ]
  ret ptr %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZL21BuildStdClassTemplateRN5clang4SemaEPNS_17ClassTemplateDeclENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, i64 %2, i32 %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.clang::TemplateArgumentListInfo", align 8 ; 12 uses
  %5 = alloca %"class.clang::TemplateArgumentLoc", align 8 ; 6 uses
  %6 = alloca %"class.clang::TemplateArgument", align 8 ; 4 uses
  %7 = alloca %"class.clang::TemplateName", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !101
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 8, ptr %i.c, align 4, !tbaa !112
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 272
  store i32 %3, ptr %i.d, align 8, !tbaa !116
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 276
  store i32 %3, ptr %i.e, align 4, !tbaa !116
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !790, !nonnull !107, !align !791
  %i.h = call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.g, i64 %2, i32 %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZN5clang16TemplateArgument12initFromTypeENS_8QualTypeEbb(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 %2, i1 noundef zeroext false, i1 noundef zeroext false) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !2874
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = or i64 %i.j, 2
  store i64 %i.k, ptr %i.i, align 8
  %i.l = load i32, ptr %i.b, align 8, !tbaa !101  ; 2 uses
  %i.m = load i32, ptr %i.c, align 4, !tbaa !112
  %.not.i.i = icmp ult i32 %i.l, %i.m
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !113

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang19TemplateArgumentLocELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(280) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit

bb.c:                                             ; preds = %bb.a
  %i.n = zext i32 %i.l to i64
  %i.o = load ptr, ptr %4, align 8, !tbaa !100
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.q = load i32, ptr %i.b, align 8, !tbaa !101
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.b, align 8, !tbaa !101
  br label %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit

_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN5clang12TemplateNameC1EPNS_12TemplateDeclE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %1) #26
  %i.s = load i64, ptr %7, align 8
  %i.t = call i64 @_ZN5clang4Sema19CheckTemplateIdTypeENS_21ElaboratedTypeKeywordENS_12TemplateNameENS_14SourceLocationERNS_24TemplateArgumentListInfoEPNS_5ScopeEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef 6, i64 %i.s, i32 %3, ptr noundef nonnull align 8 dereferenceable(280) %4, ptr noundef null, i1 noundef zeroext false) #26
  %i.u = load ptr, ptr %4, align 8, !tbaa !100    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZN5clang24TemplateArgumentListInfoD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit
  call void @free(ptr noundef %i.u) #26
  br label %_ZN5clang24TemplateArgumentListInfoD2Ev.exit

_ZN5clang24TemplateArgumentListInfoD2Ev.exit:     ; preds = %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i64 %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang4Sema23tryBuildStdTypeIdentityENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1929 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef ptr @_ZL22LookupStdClassTemplateRN5clang4SemaENS_14SourceLocationEPKcPb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %2, ptr noundef nonnull @.str.27, ptr noundef null) ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !1929
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ]
  %i.e = tail call fastcc i64 @_ZL21BuildStdClassTemplateRN5clang4SemaEPNS_17ClassTemplateDeclENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.d, i64 %1, i32 %2)
end_hunk_1
begin_hunk_2_@_ZN5clang12RedeclarableINS_15UsingShadowDeclEE15setPreviousDeclEPS1_:bb.a
  %i.bk = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bl = add i64 %i.bk, 24                       ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 2640
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !1290
  %i.bo = icmp ult i64 %i.bl, %i.bn
  br i1 %i.bo, label %bb.r, label %bb.s, !prof !113

bb.r:                                             ; preds = %bb.q
  %i.bp = inttoptr i64 %i.bl to ptr
  store ptr %i.bp, ptr %i.bi, align 8, !tbaa !1289
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bq = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.bi, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i = ptrtoint ptr %i.bq to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %bb.s ], [ %i.bk, %bb.r ]
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.bq, %bb.s ], [ %i.bj, %bb.r ] ; 3 uses
  store ptr %i.bh, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !1292
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.br, align 8, !tbaa !1293
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 16
  store ptr %i.az, ptr %i.bs, align 8, !tbaa !1294
  %i.bt = or i64 %.pre-phi.i.i.i, 4
  br label %_ZN5clang12RedeclarableINS_15UsingShadowDeclEE8DeclLink9setLatestEPS1_.exit

bb.u:                                             ; preds = %bb.p
  %i.bu = ptrtoint ptr %i.az to i64
  br label %_ZN5clang12RedeclarableINS_15UsingShadowDeclEE8DeclLink9setLatestEPS1_.exit

bb.v:                                             ; preds = %bb.o
  %i.bv = and i64 %.sroa.0.0.copyload.i.i, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bv, 0
  %i.bw = and i64 %.sroa.0.0.copyload.i.i, -6     ; 2 uses
  %.not.not6.i.i = icmp eq i64 %i.bw, 0
  %.not.not.i.i = or i1 %.not.i.i.i.i.i.i, %.not.not6.i.i
  br i1 %.not.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.az, ptr %i.by, align 8, !tbaa !1294
  br label %_ZN5clang12RedeclarableINS_15UsingShadowDeclEE8DeclLink9setLatestEPS1_.exit

bb.x:                                             ; preds = %bb.v
  %i.bz = ptrtoint ptr %i.az to i64
  br label %_ZN5clang12RedeclarableINS_15UsingShadowDeclEE8DeclLink9setLatestEPS1_.exit

_ZN5clang12RedeclarableINS_15UsingShadowDeclEE8DeclLink9setLatestEPS1_.exit: ; preds = %bb.t, %bb.u, %bb.w, %bb.x
  %storemerge.in.i = phi i64 [ %i.bt, %bb.t ], [ %i.bu, %bb.u ], [ %i.bz, %bb.x ], [ %i.bc, %bb.w ]
  %storemerge.i = or i64 %storemerge.in.i, 1
  store i64 %storemerge.i, ptr %i.ay, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema19HideUsingShadowDeclEPNS_5ScopeEPNS_15UsingShadowDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !1284
  %i.b = and i64 %.sroa.0.0.copyload.i, 7
  %cond = icmp eq i64 %i.b, 5
  br i1 %cond, label %bb.b, label %_ZNK5clang15DeclarationName11getNameKindEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8 ; 3 uses
  %i.d = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit

bb.d:                                             ; preds = %bb.b
  %i.g = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1249
  br label %_ZN5clang4Decl14getDeclContextEv.exit

_ZN5clang4Decl14getDeclContextEv.exit:            ; preds = %bb.c, %bb.d
  %.0.i12 = phi ptr [ %i.f, %bb.c ], [ %i.i, %bb.d ]
  %i.j = getelementptr inbounds i8, ptr %.0.i12, i64 -64
  tail call void @_ZN5clang13CXXRecordDecl16removeConversionEPKNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(144) %i.j, ptr noundef nonnull %2) #26
  br label %_ZNK5clang15DeclarationName11getNameKindEv.exit.thread

_ZNK5clang15DeclarationName11getNameKindEv.exit.thread: ; preds = %bb.a, %_ZN5clang4Decl14getDeclContextEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.0.copyload.i.i.i.i.i.i.i13 = load i64, ptr %i.k, align 8 ; 3 uses
  %i.l = and i64 %.0.copyload.i.i.i.i.i.i.i13, 4
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK5clang15DeclarationName11getNameKindEv.exit.thread
  %i.n = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i13 to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit15

bb.f:                                             ; preds = %_ZNK5clang15DeclarationName11getNameKindEv.exit.thread
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i.i13, -5
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1249
  br label %_ZN5clang4Decl14getDeclContextEv.exit15

_ZN5clang4Decl14getDeclContextEv.exit15:          ; preds = %bb.e, %bb.f
  %.0.i14 = phi ptr [ %i.n, %bb.e ], [ %i.q, %bb.f ]
  tail call void @_ZN5clang11DeclContext10removeDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(32) %.0.i14, ptr noundef nonnull %2) #26
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZN5clang4Decl14getDeclContextEv.exit15
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.t = load i8, ptr %i.s, align 8, !tbaa !105, !range !106, !noundef !107
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !110  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !108  ; 3 uses
  %i.y = zext i32 %i.x to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.y, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i.i.i
  %.not1923.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not1923.i.i.i, label %_ZN5clang5Scope10RemoveDeclEPNS_4DeclE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.critedge.i.i.i
  %.01524.i.i.i = phi ptr [ %i.ab, %.critedge.i.i.i ], [ %i.v, %bb.h ] ; 3 uses
  %i.aa = load ptr, ptr %.01524.i.i.i, align 8, !tbaa !111
  %.not20.i.i.i = icmp eq ptr %i.aa, %2
  br i1 %.not20.i.i.i, label %bb.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.01524.i.i.i, i64 8 ; 2 uses
  %.not19.i.i.i = icmp eq ptr %i.ab, %i.z
  br i1 %.not19.i.i.i, label %_ZN5clang5Scope10RemoveDeclEPNS_4DeclE.exit, label %.lr.ph.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = add i32 %i.x, -1                        ; 2 uses
  store i32 %i.ac, ptr %i.w, align 4, !tbaa !108
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !111
  store ptr %i.af, ptr %.01524.i.i.i, align 8, !tbaa !111
  br label %_ZN5clang5Scope10RemoveDeclEPNS_4DeclE.exit

bb.j:                                             ; preds = %bb.g
  %i.ag = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.r, ptr noundef nonnull %2) #26 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.not.i.i.i, label %_ZN5clang5Scope10RemoveDeclEPNS_4DeclE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4llvm19SmallPtrSetImplBase15eraseFromBucketEPPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.r, ptr noundef nonnull %i.ag) #26
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !108
  %i.aj = add i32 %i.ai, -1
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !108
  br label %_ZN5clang5Scope10RemoveDeclEPNS_4DeclE.exit

_ZN5clang5Scope10RemoveDeclEPNS_4DeclE.exit:      ; preds = %.critedge.i.i.i, %bb.h, %bb.i, %bb.j, %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2560
  tail call void @_ZN5clang18IdentifierResolver10RemoveDeclEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull %2) #26
  br label %bb.l

bb.l:                                             ; preds = %_ZN5clang5Scope10RemoveDeclEPNS_4DeclE.exit, %_ZN5clang4Decl14getDeclContextEv.exit15
  %i.al = tail call noundef ptr @_ZNK5clang15UsingShadowDecl13getIntroducerEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #26
  tail call void @_ZN5clang13BaseUsingDecl16removeShadowDeclEPNS_15UsingShadowDeclE(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull %2) #26
  ret void
}

declare void @_ZN5clang13CXXRecordDecl16removeConversionEPKNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef) local_unnamed_addr #2

declare void @_ZN5clang11DeclContext10removeDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

declare void @_ZN5clang18IdentifierResolver10RemoveDeclEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK5clang15UsingShadowDecl13getIntroducerEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare void @_ZN5clang13BaseUsingDecl16removeShadowDeclEPNS_15UsingShadowDeclE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema17FilterUsingLookupEPNS_5ScopeERNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(168) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !101
  %.not1618 = icmp eq i32 %i.c, 0
  br i1 %.not1618, label %_ZN5clang12LookupResult6Filter4doneEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !100, !noalias !2894
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5clang12LookupResult6Filter5eraseEv.exit
  %.sroa.7.020 = phi ptr [ %i.d, %.lr.ph ], [ %.sroa.7.1, %_ZN5clang12LookupResult6Filter5eraseEv.exit ] ; 9 uses
  %.sroa.15.019 = phi i1 [ false, %.lr.ph ], [ %.sroa.15.1, %_ZN5clang12LookupResult6Filter5eraseEv.exit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.7.020, i64 8) ]
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.7.020, i64 8 ; 6 uses
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.020, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !1312
  %i.i = tail call noundef zeroext i1 @_ZNK5clang4Sema13isDeclInScopeEPNS_9NamedDeclEPNS_11DeclContextEPNS_5ScopeEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %1, i1 noundef zeroext false) #26
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.k = load i32, ptr %i.b, align 8, !tbaa !101  ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.n, align 8, !tbaa !92
  %i.o = add i32 %i.k, -1                         ; 3 uses
  store i32 %i.o, ptr %i.b, align 8, !tbaa !101
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.p
  %.not.i.i = icmp eq ptr %.sroa.7.020, %i.q
  br i1 %.not.i.i, label %_ZN5clang12LookupResult6Filter5eraseEv.exit, label %_ZN5clang12LookupResult6Filter5eraseEv.exitthread-pre-split.sink.split

bb.d:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !1312
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i16, ptr %i.s, align 8
  %i.u = and i16 %i.t, 127                        ; 2 uses
  switch i16 %i.u, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit [
    i16 9, label %_ZN5clang12LookupResult6Filter5eraseEv.exitthread-pre-split
    i16 7, label %_ZN5clang12LookupResult6Filter5eraseEv.exitthread-pre-split
    i16 20, label %_ZN5clang12LookupResult6Filter5eraseEv.exitthread-pre-split
    i16 1, label %_ZN5clang12LookupResult6Filter5eraseEv.exitthread-pre-split
  ]

_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit: ; preds = %bb.d
  %i.v = add nsw i16 %i.u, -35
  %spec.select.i = icmp ult i16 %i.v, 6
  br i1 %spec.select.i, label %_ZN5clang12LookupResult6Filter5eraseEv.exitthread-pre-split, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 136314880
  %or.cond = icmp eq i32 %i.y, 134217728
  br i1 %or.cond, label %bb.f, label %_ZN5clang12LookupResult6Filter5eraseEv.exitthread-pre-split

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.aa = load i32, ptr %i.b, align 8, !tbaa !101 ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %.sroa.0.0.copyload.i.i.i6 = load i64, ptr %i.ad, align 8, !tbaa !92
  %i.ae = add i32 %i.aa, -1                       ; 3 uses
  store i32 %i.ae, ptr %i.b, align 8, !tbaa !101
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.af
  %.not.i.i7 = icmp eq ptr %.sroa.7.020, %i.ag
  br i1 %.not.i.i7, label %_ZN5clang12LookupResult6Filter5eraseEv.exit, label %_ZN5clang12LookupResult6Filter5eraseEv.exitthread-pre-split.sink.split

_ZN5clang12LookupResult6Filter5eraseEv.exitthread-pre-split.sink.split: ; preds = %bb.f, %bb.c
  %.sroa.0.0.copyload.i.i.i.sink = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.c ], [ %.sroa.0.0.copyload.i.i.i6, %bb.f ]
  store i64 %.sroa.0.0.copyload.i.i.i.sink, ptr %.sroa.7.020, align 8, !tbaa !92
  br label %_ZN5clang12LookupResult6Filter5eraseEv.exitthread-pre-split

_ZN5clang12LookupResult6Filter5eraseEv.exitthread-pre-split: ; preds = %_ZN5clang12LookupResult6Filter5eraseEv.exitthread-pre-split.sink.split, %bb.e, %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit, %bb.d, %bb.d, %bb.d, %bb.d
  %.sroa.15.1.ph = phi i1 [ %.sroa.15.019, %bb.d ], [ %.sroa.15.019, %bb.d ], [ %.sroa.15.019, %bb.d ], [ %.sroa.15.019, %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit ], [ %.sroa.15.019, %bb.e ], [ %.sroa.15.019, %bb.d ], [ true, %_ZN5clang12LookupResult6Filter5eraseEv.exitthread-pre-split.sink.split ]
  %.sroa.7.1.ph = phi ptr [ %3, %bb.d ], [ %3, %bb.d ], [ %3, %bb.d ], [ %3, %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit ], [ %3, %bb.e ], [ %3, %bb.d ], [ %.sroa.7.020, %_ZN5clang12LookupResult6Filter5eraseEv.exitthread-pre-split.sink.split ]
  %.pr = load i32, ptr %i.b, align 8, !tbaa !101
  br label %_ZN5clang12LookupResult6Filter5eraseEv.exit

_ZN5clang12LookupResult6Filter5eraseEv.exit:      ; preds = %_ZN5clang12LookupResult6Filter5eraseEv.exitthread-pre-split, %bb.f, %bb.c
  %i.ah = phi i32 [ %.pr, %_ZN5clang12LookupResult6Filter5eraseEv.exitthread-pre-split ], [ %i.ae, %bb.f ], [ %i.o, %bb.c ] ; 2 uses
  %.sroa.15.1 = phi i1 [ %.sroa.15.1.ph, %_ZN5clang12LookupResult6Filter5eraseEv.exitthread-pre-split ], [ true, %bb.f ], [ true, %bb.c ] ; 2 uses
  %.sroa.7.1 = phi ptr [ %.sroa.7.1.ph, %_ZN5clang12LookupResult6Filter5eraseEv.exitthread-pre-split ], [ %.sroa.7.020, %bb.f ], [ %.sroa.7.020, %bb.c ] ; 2 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.aj = zext i32 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %.not16 = icmp eq ptr %.sroa.7.1, %i.ak
  br i1 %.not16, label %._crit_edge, label %bb.b, !llvm.loop !2893

._crit_edge:                                      ; preds = %_ZN5clang12LookupResult6Filter5eraseEv.exit
  br i1 %.sroa.15.1, label %bb.g, label %_ZN5clang12LookupResult6Filter4doneEv.exit

bb.g:                                             ; preds = %._crit_edge
  %.not.i.i.i.i = icmp eq i32 %i.ah, 0
  %i.al = load i32, ptr %2, align 8, !tbaa !1334  ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.not2.i.i = icmp eq i32 %i.al, 1
  br i1 %.not2.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %2, align 8, !tbaa !1334
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1342 ; 2 uses
  %.not3.i.i = icmp eq ptr %i.an, null
  br i1 %.not3.i.i, label %_ZN5clang12LookupResult6Filter4doneEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.an) #26
  store ptr null, ptr %i.am, align 8, !tbaa !1342
  br label %_ZN5clang12LookupResult6Filter4doneEv.exit

bb.l:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  store i32 2, ptr %2, align 8, !tbaa !1334
  tail call void @_ZN5clang12LookupResult11resolveKindEv(ptr noundef nonnull align 8 dereferenceable(168) %2) #26
  %i.aq = load i32, ptr %2, align 8, !tbaa !1334
  %i.ar = icmp eq i32 %i.aq, 5
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = icmp eq i32 %i.al, 5
  %.sroa.04.0.i.i = select i1 %i.as, i32 %i.ap, i32 undef
  store i32 %.sroa.04.0.i.i, ptr %i.ao, align 4, !tbaa !1335
  br label %_ZN5clang12LookupResult6Filter4doneEv.exit

bb.n:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1342 ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.au, null
  br i1 %.not.i.i9, label %_ZN5clang12LookupResult6Filter4doneEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.au) #26
  store ptr null, ptr %i.at, align 8, !tbaa !1342
  br label %_ZN5clang12LookupResult6Filter4doneEv.exit

_ZN5clang12LookupResult6Filter4doneEv.exit:       ; preds = %bb.a, %._crit_edge, %bb.j, %bb.k, %bb.m, %bb.n, %bb.o
  ret void
}

declare i64 @_ZN5clang20DeclarationNameTable21getCXXConstructorNameENS_7CanQualINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(824), i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema27CheckUsingDeclRedeclarationENS_14SourceLocationEbRKNS_12CXXScopeSpecES1_RKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, i1 noundef zeroext %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3, i32 %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.clang::NestedNameSpecifier", align 8 ; 4 uses
  %7 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %8 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %9 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %10 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %11 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %12 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !tbaa !1284 ; 9 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %6, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1312
  %i.e = tail call noundef ptr @_ZN5clang11DeclContext16getRedeclContextEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d) #26
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i16, ptr %i.f, align 8
  %i.h = and i16 %i.g, 127
  %i.i = add nsw i16 %i.h, -59
  %spec.select.i = icmp ult i16 %i.i, 4
  br i1 %spec.select.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef zeroext i8 @_ZNK5clang19NestedNameSpecifier13getDependenceEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  %i.k = and i8 %i.j, 4
  %.not129 = icmp eq i8 %i.k, 0
  %or.cond = or i1 %2, %.not129
  br i1 %or.cond, label %.critedge71, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !100  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !101  ; 2 uses
  %i.p = zext i32 %i.o to i64
  %.idx = shl nuw nsw i64 %i.p, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %.not141 = icmp eq i32 %i.o, 0
  br i1 %.not141, label %.critedge71, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0103.0142 = phi ptr [ %i.ag, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.0103.0142, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0103.0142, align 8
  %i.r = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.u = load i32, ptr %i.t, align 4
  %.fr = freeze i32 %i.u
  %i.v = and i32 %.fr, 127                        ; 4 uses
  %i.w = add nsw i32 %i.v, -59
  %i.x = icmp ult i32 %i.w, 10
  br i1 %i.x, label %bb.d, label %switch.early.test

switch.early.test:                                ; preds = %.lr.ph
  switch i32 %i.v, label %.critedge [
    i32 83, label %bb.d
    i32 56, label %bb.d
end_hunk_2
begin_hunk_3_@_ZL11getStdTraitRN5clang4SemaENS_14SourceLocationEN4llvm9StringRefERNS_24TemplateArgumentListInfoEj:bb.a
  %7 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.clang::SourceLocation", align 4 ; 7 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %9 = alloca %class.anon.2419, align 8           ; 8 uses
  %10 = alloca %"class.clang::LookupResult", align 8 ; 27 uses
  %11 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 10 uses
  %12 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %13 = alloca %"class.clang::TemplateName", align 8 ; 2 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store i32 %1, ptr %8, align 4
  store i32 %5, ptr %i.b, align 4, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr %i.b, ptr %9, align 8, !tbaa !1536
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !1173
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %8, ptr %i.d, align 8, !tbaa !1918
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %4, ptr %i.e, align 8, !tbaa !1415
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4144 ; 4 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !92
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !1398
  br label %_ZNK5clang4Sema15getStdNamespaceEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !790, !nonnull !107, !align !791
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 18624
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1288 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1195
  %i.n = getelementptr i8, ptr %i.m, i64 16, !nosanitize !107
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !107
  %i.p = load i64, ptr %i.f, align 8, !tbaa !1284
  %i.q = lshr i64 %i.p, 1
  %i.r = call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 %i.q) #26, !inline_history !40 ; 2 uses
  store ptr %i.r, ptr %i.f, align 8, !tbaa !1398
  br label %_ZNK5clang4Sema15getStdNamespaceEv.exit

_ZNK5clang4Sema15getStdNamespaceEv.exit:          ; preds = %._crit_edge.i.i, %bb.b
  %i.s = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.r, %bb.b ] ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5clang4Sema15getStdNamespaceEv.exit
  %i.t = call fastcc i64 @"_ZZL11getStdTraitRN5clang4SemaENS_14SourceLocationEN4llvm9StringRefERNS_24TemplateArgumentListInfoEjENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(32) %9)
  br label %bb.ad

bb.d:                                             ; preds = %_ZNK5clang4Sema15getStdNamespaceEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1374, !nonnull !107, !align !791 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %i.a, align 8, !tbaa !1376
  %i.x = call { ptr, i8 } @_ZN4llvm9StringMapIPN5clang14IdentifierInfoENS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE11try_emplaceIJDnEEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %i.w, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.x, 0
  %i.y = load ptr, ptr %.fca.0.extract.i, align 8, !tbaa !1378 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1355 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.e, label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 672
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1383 ; 3 uses
  %.not22.i = icmp eq ptr %i.ac, null
  br i1 %.not22.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1195
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr %2, i64 %3) #26, !inline_history !1928 ; 3 uses
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !1355
  %.not23.i = icmp eq ptr %i.ag, null
  br i1 %.not23.i, label %bb.g, label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 592 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1289 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = add i64 %i.aj, 24                       ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 600
  %i.am = load i64, ptr %i.al, align 8, !tbaa !1290
  %i.an = icmp ult i64 %i.ak, %i.am
  br i1 %i.an, label %bb.h, label %bb.i, !prof !113

bb.h:                                             ; preds = %bb.g
  %i.ao = inttoptr i64 %i.ak to ptr
  store ptr %i.ao, ptr %i.ah, align 8, !tbaa !1289
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ap = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, i64 noundef 24, i64 noundef 24, i8 3)
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i

_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi ptr [ %i.ai, %bb.h ], [ %i.ap, %bb.i ] ; 6 uses
  %i.aq = load i64, ptr %.0.i.i.i.i.i, align 8
  %i.ar = and i64 %i.aq, -17592186044416
  %i.as = or disjoint i64 %i.ar, 33553413
  store i64 %i.as, ptr %.0.i.i.i.i.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  store i64 0, ptr %i.at, align 8
  store ptr %.0.i.i.i.i.i, ptr %i.z, align 8, !tbaa !1355
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  store ptr %i.y, ptr %i.au, align 8, !tbaa !1349
  br label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit: ; preds = %bb.d, %bb.f, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i
  %.0.i = phi ptr [ %.0.i.i.i.i.i, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i ], [ %i.aa, %bb.d ], [ %i.ag, %bb.f ]
  %i.av = ptrtoint ptr %.0.i to i64               ; 2 uses
  %.sroa.010.0.copyload = load i32, ptr %8, align 4, !tbaa !116
  store i32 0, ptr %10, align 8, !tbaa !1334
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %i.aw, align 4, !tbaa !1335
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !100
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.az, align 8, !tbaa !101
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 8, ptr %i.ba, align 4, !tbaa !112
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  store ptr %0, ptr %i.bc, align 8, !tbaa !1336
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 120
  store i64 %i.av, ptr %i.bd, align 8, !tbaa !1284
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 128
  store i32 %.sroa.010.0.copyload, ptr %i.be, align 8, !tbaa !116
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 136
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, i64 %i.av) #26
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.bg, i8 0, i64 18, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 163 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 164 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 1, i8 0>, ptr %i.bh, align 2, !tbaa !1283
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 166
  store i8 0, ptr %i.bk, align 2, !tbaa !1343
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 167
  store i8 0, ptr %i.bl, align 1, !tbaa !1405
  call void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168) %10) #26
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.bn = call noundef zeroext i1 @_ZN5clang4Sema19LookupQualifiedNameERNS_12LookupResultEPNS_11DeclContextEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(168) %10, ptr noundef nonnull %i.bm, i1 noundef zeroext false) #26
  br i1 %i.bn, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit
  %i.bo = call fastcc i64 @"_ZZL11getStdTraitRN5clang4SemaENS_14SourceLocationEN4llvm9StringRefERNS_24TemplateArgumentListInfoEjENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(32) %9)
  br label %bb.v

bb.k:                                             ; preds = %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit
  %i.bp = load i32, ptr %10, align 8, !tbaa !1334
  switch i32 %i.bp, label %._crit_edge [
    i32 5, label %bb.v
    i32 2, label %bb.l
  ]

._crit_edge:                                      ; preds = %bb.k
  %.pre = load ptr, ptr %i.ax, align 8, !tbaa !100
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bq = load ptr, ptr %i.ax, align 8, !tbaa !100 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bq, i64 8) ]
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bq, align 8
  %i.br = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.bs = inttoptr i64 %i.br to ptr               ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 28
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = and i32 %i.bu, 127                      ; 2 uses
  switch i32 %i.bv, label %_ZNK5clang12LookupResult12getFoundDeclEv.exit.i [
    i32 54, label %bb.m
    i32 55, label %bb.m
    i32 77, label %bb.m
    i32 79, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.bw = call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bs) #27 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 28
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4
  %.pre2.i = and i32 %.pre.i, 127
  br label %_ZNK5clang12LookupResult12getFoundDeclEv.exit.i

_ZNK5clang12LookupResult12getFoundDeclEv.exit.i:  ; preds = %bb.m, %bb.l
  %.pre-phi.i = phi i32 [ %i.bv, %bb.l ], [ %.pre2.i, %bb.m ]
  %.0.i.i.i = phi ptr [ %i.bs, %bb.l ], [ %i.bw, %bb.m ] ; 2 uses
  %i.bx = icmp eq i32 %.pre-phi.i, 73
  br i1 %i.bx, label %_ZNK5clang12LookupResult11getAsSingleINS_17ClassTemplateDeclEEEPT_v.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge, %_ZNK5clang12LookupResult12getFoundDeclEv.exit.i
  %i.by = phi ptr [ %.pre, %._crit_edge ], [ %i.bq, %_ZNK5clang12LookupResult12getFoundDeclEv.exit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.by, i64 8) ]
  store i8 0, ptr %i.bi, align 1, !tbaa !1352
  store i8 0, ptr %i.bj, align 4, !tbaa !1353
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.by, align 8
  %i.bz = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.ca = inttoptr i64 %i.bz to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.06.0.copyload = load i32, ptr %8, align 4, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i32 %.sroa.06.0.copyload, i32 noundef 5151) #26
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 120
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !1177, !range !106, !noundef !107
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 32
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(84) %i.cf, ptr %2, i64 %3)
  br label %_ZN5clanglsIN4llvm9StringRefEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_.exit

bb.p:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 132
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !1184, !range !106, !noundef !107
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.q, label %_ZN5clanglsIN4llvm9StringRefEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_.exit

bb.q:                                             ; preds = %bb.p
  %i.ck = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1193 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1195
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call noundef ptr %i.cp(ptr noundef nonnull align 8 dereferenceable(168) %i.cm) #26, !inline_history !43
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i: ; preds = %bb.r, %bb.q
  %i.cr = phi ptr [ %i.cq, %bb.r ], [ null, %bb.q ]
  store ptr %i.cr, ptr %7, align 8, !tbaa !1197
  %i.cs = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ck, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.cs, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %i.cu = load i32, ptr %i.cg, align 8, !tbaa !116
  %i.cv = zext i32 %i.cu to i64
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !1200
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %i.cv
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.cy, ptr %2, i64 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN5clanglsIN4llvm9StringRefEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_.exit

_ZN5clanglsIN4llvm9StringRefEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_.exit: ; preds = %bb.o, %bb.p, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.cz, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i32 %.sroa.0.0.copyload.i, i32 noundef 108) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %12) #26
  br label %bb.v

_ZNK5clang12LookupResult11getAsSingleINS_17ClassTemplateDeclEEEPT_v.exit: ; preds = %_ZNK5clang12LookupResult12getFoundDeclEv.exit.i
  call void @_ZN5clang12TemplateNameC1EPNS_12TemplateDeclE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %.0.i.i.i) #26
  %.sroa.04.0.copyload = load i32, ptr %8, align 4, !tbaa !116
  %i.da = load i64, ptr %13, align 8
  %i.db = call i64 @_ZN5clang4Sema19CheckTemplateIdTypeENS_21ElaboratedTypeKeywordENS_12TemplateNameENS_14SourceLocationERNS_24TemplateArgumentListInfoEPNS_5ScopeEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef 6, i64 %i.da, i32 %.sroa.04.0.copyload, ptr noundef nonnull align 8 dereferenceable(280) %4, ptr noundef null, i1 noundef zeroext false) #26 ; 4 uses
  %i.dc = icmp ult i64 %i.db, 16
  br i1 %i.dc, label %bb.v, label %bb.s

bb.s:                                             ; preds = %_ZNK5clang12LookupResult11getAsSingleINS_17ClassTemplateDeclEEEPT_v.exit
  %.sroa.03.0.copyload = load i32, ptr %8, align 4, !tbaa !116
  %i.dd = call noundef zeroext i1 @_ZN5clang4Sema23RequireCompleteTypeImplENS_14SourceLocationENS_8QualTypeENS0_16CompleteTypeKindEPNS0_13TypeDiagnoserE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.03.0.copyload, i64 %i.db, i32 noundef 1, ptr noundef null) #26
  br i1 %i.dd, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.de = load i32, ptr %i.b, align 4, !tbaa !116 ; 2 uses
  %.not31 = icmp eq i32 %i.de, 0
  br i1 %.not31, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.01.0.copyload = load i32, ptr %8, align 4, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !790, !nonnull !107, !align !791
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 17728
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1391
  call fastcc void @_ZL17printTemplateArgsB5cxx11RKN5clang14PrintingPolicyERNS_24TemplateArgumentListInfoEPKNS_21TemplateParameterListE(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 8 dereferenceable(280) %4, ptr noundef %i.dj)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang4Sema18BoundTypeDiagnoserIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE, i64 16), ptr %6, align 8, !tbaa !1195
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.de, ptr %i.dk, align 8, !tbaa !2197
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %14, ptr %i.dl, align 8, !tbaa !3166
  %i.dm = call noundef zeroext i1 @_ZN5clang4Sema19RequireCompleteTypeENS_14SourceLocationENS_8QualTypeENS0_16CompleteTypeKindERNS0_13TypeDiagnoserE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.01.0.copyload, i64 %i.db, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %6) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.dn = load ptr, ptr %14, align 8, !tbaa !1319 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !92
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.k, %_ZNK5clang12LookupResult11getAsSingleINS_17ClassTemplateDeclEEEPT_v.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.t, %bb.s, %_ZN5clanglsIN4llvm9StringRefEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_.exit, %bb.j
  %.sroa.044.1 = phi i64 [ %i.bo, %bb.j ], [ 0, %_ZN5clanglsIN4llvm9StringRefEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_.exit ], [ 0, %bb.k ], [ 0, %_ZNK5clang12LookupResult11getAsSingleINS_17ClassTemplateDeclEEEPT_v.exit ], [ 0, %bb.t ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.db, %bb.s ]
  %i.ds = load i8, ptr %i.bi, align 1, !tbaa !1352, !range !106, !noundef !107
  %i.dt = trunc nuw i8 %i.ds to i1
  %.pre49 = load i32, ptr %10, align 8            ; 3 uses
  br i1 %i.dt, label %bb.w, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.w:                                             ; preds = %bb.v
  %i.du = icmp ne i32 %.pre49, 5
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = icmp ne ptr %i.dw, null
  %or.cond.i.i = select i1 %i.du, i1 %i.dx, i1 false
  br i1 %or.cond.i.i, label %bb.x, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.x:                                             ; preds = %bb.w
  %i.dy = load ptr, ptr %i.bc, align 8, !tbaa !1336 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 216
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1172, !nonnull !107, !align !791
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = and i64 %i.ec, 18014398509481984
  %.not.i.i35 = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i35, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN5clang4Sema17CheckLookupAccessERKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.dy, ptr noundef nonnull align 8 dereferenceable(168) %10) #26
  %.pre48 = load i32, ptr %10, align 8
  br label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

_ZN5clang12LookupResult14diagnoseAccessEv.exit.i: ; preds = %bb.y, %bb.w, %bb.v
  %i.ee = phi i32 [ %.pre48, %bb.y ], [ %.pre49, %bb.v ], [ %.pre49, %bb.w ]
  %i.ef = load i8, ptr %i.bj, align 4, !tbaa !1353, !range !106, !noundef !107
  %i.eg = trunc nuw i8 %i.ef to i1
  %i.eh = icmp eq i32 %i.ee, 5
  %or.cond = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %or.cond, label %bb.z, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

bb.z:                                             ; preds = %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.ei = load ptr, ptr %i.bc, align 8, !tbaa !1336
  call void @_ZN5clang4Sema23DiagnoseAmbiguousLookupERNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ei, ptr noundef nonnull align 8 dereferenceable(168) %10) #26
  br label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i: ; preds = %bb.x, %bb.z, %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.ej = load ptr, ptr %i.bb, align 8, !tbaa !1342 ; 2 uses
  %.not.i34 = icmp eq ptr %i.ej, null
  br i1 %.not.i34, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.ej) #26
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  %i.ek = load ptr, ptr %i.ax, align 8, !tbaa !100 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.ay
  br i1 %i.el, label %_ZN5clang12LookupResultD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef %i.ek) #26
  br label %_ZN5clang12LookupResultD2Ev.exit

_ZN5clang12LookupResultD2Ev.exit:                 ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN5clang12LookupResultD2Ev.exit, %bb.c
  %.sroa.044.2 = phi i64 [ %i.t, %bb.c ], [ %.sroa.044.1, %_ZN5clang12LookupResultD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  ret i64 %.sroa.044.2
}

declare i64 @_ZN5clang4Sema24BuildDeclarationNameExprERKNS_12CXXScopeSpecERNS_12LookupResultEbb(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(168), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema31VerifyIntegerConstantExpressionEPNS_4ExprEPN4llvm6APSIntERNS0_18VerifyICEDiagnoserENS_13AllowFoldKindE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(9), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm6APSIntgeEl(ptr noundef nonnull align 8 dereferenceable(13) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::APSInt", align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 64, ptr %i.a, align 8, !tbaa !1371, !alias.scope !3169
  store i64 %1, ptr %2, align 8, !alias.scope !3169
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 0, ptr %i.b, align 4, !tbaa !1373, !alias.scope !3169
  %i.c = call noundef i32 @_ZN4llvm6APSInt13compareValuesERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(13) %2)
  %i.d = load i32, ptr %i.a, align 8, !tbaa !1371
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_127DefaultedComparisonAnalyzer19visitBinaryOperatorEN5clang22OverloadedOperatorKindEN4llvm8ArrayRefIPNS1_4ExprEEENS_28DefaultedComparisonSubobjectEPNS1_20OverloadCandidateSetE:bb.a
  %10 = alloca %"class.clang::PartialDiagnostic", align 8 ; 7 uses
  %11 = alloca %"class.clang::PartialDiagnostic", align 8 ; 11 uses
  %12 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 6 uses
  %13 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %14 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 6 uses
  %15 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 6 uses
  %16 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 6 uses
  %17 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 6 uses
  %18 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %19 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 6 uses
  %20 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %21 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %22 = alloca %"struct.std::pair.2040", align 8  ; 5 uses
  %23 = alloca %"class.clang::PartialDiagnostic", align 8 ; 14 uses
  %24 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %25 = alloca %"class.llvm::function_ref.3073", align 8 ; 3 uses
  %26 = alloca %class.anon.3074, align 1          ; 3 uses
  %27 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %28 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %29 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %30 = alloca %"class.llvm::SmallVector.3077", align 8 ; 7 uses
  %31 = alloca %"class.llvm::function_ref.3073", align 8 ; 3 uses
  %32 = alloca %class.anon.3082, align 1          ; 3 uses
  %33 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %34 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %35 = alloca %"class.llvm::SmallVector.3077", align 8 ; 7 uses
  %36 = alloca %"class.llvm::function_ref.3073", align 8 ; 3 uses
  %37 = alloca %class.anon.3082, align 1          ; 3 uses
  %38 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 19 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1832 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.f, align 8, !tbaa !116 ; 2 uses
  %.not = icmp eq ptr %5, null                    ; 2 uses
  %i.g = zext i1 %.not to i8
  %.sroa.2206.0.insert.ext = zext i32 %.sroa.0.0.copyload.i to i64
  %.sroa.2206.0.insert.shift = shl nuw i64 %.sroa.2206.0.insert.ext, 32
  %.sroa.0205.0.insert.ext = zext i32 %1 to i64
  %.sroa.0205.0.insert.insert = or disjoint i64 %.sroa.2206.0.insert.shift, %.sroa.0205.0.insert.ext
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.h, ptr %7, align 8, !tbaa !100
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.i, align 8, !tbaa !101
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 16, ptr %i.j, align 4, !tbaa !112
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 2704
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 2728
  store ptr %i.l, ptr %i.k, align 8, !tbaa !110
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 2712
  store i32 16, ptr %i.m, align 8, !tbaa !109
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 2716
  store i32 0, ptr %i.n, align 4, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 2720
  store i8 1, ptr %i.o, align 8, !tbaa !105
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 2856
  store ptr null, ptr %i.p, align 8, !tbaa !2244
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 2864
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 2872
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 2888
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 2904
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.r, i8 0, i64 16, i1 false)
  store ptr %i.t, ptr %i.s, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 2896
  store i32 0, ptr %i.u, align 8, !tbaa !101
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 2900
  store i32 4, ptr %i.v, align 4, !tbaa !112
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 2936
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 2952 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 2944
  store i32 0, ptr %i.y, align 8, !tbaa !101
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 2948
  store i32 0, ptr %i.z, align 4, !tbaa !112
  store i32 %.sroa.0.0.copyload.i, ptr %i.x, align 8, !tbaa !116
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 2956
  store i32 1, ptr %i.aa, align 4, !tbaa !2245
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 2960
  store i64 %.sroa.0205.0.insert.insert, ptr %i.ab, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 2968
  store i8 %i.g, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !1283
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 2972
  store i32 0, ptr %i.ac, align 4, !tbaa !2246
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 7840
  store i32 0, ptr %i.ad, align 8, !tbaa !2247
  call void @_ZN5clang20OverloadCandidateSet7excludeEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(7844) %7, ptr noundef %i.e)
  %i.ae = load ptr, ptr %2, align 8, !tbaa !115
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.0.0.copyload.i118 = load i64, ptr %i.af, align 8, !tbaa !92
  %i.ag = and i64 %.sroa.0.0.copyload.i118, -16
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !98 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 17
  %i.ak = load i16, ptr %i.aj, align 1
  %i.al = and i16 %i.ak, 4
  %.not.i = icmp eq i16 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.am, align 8, !tbaa !92
  %i.an = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !98
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i8, ptr %i.aq, align 16            ; 2 uses
  br i1 %.not.i, label %_ZNK5clang4Type18isOverloadableTypeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.ar, label %_ZNK5clang4Type18isOverloadableTypeEv.exit.thread [
    i8 24, label %_ZNK5clang4Type18isOverloadableTypeEv.exit.thread218
    i8 23, label %_ZNK5clang4Type18isOverloadableTypeEv.exit.thread218
    i8 6, label %_ZNK5clang4Type18isOverloadableTypeEv.exit.thread218
    i8 5, label %_ZNK5clang4Type18isOverloadableTypeEv.exit.thread218
    i8 4, label %_ZNK5clang4Type18isOverloadableTypeEv.exit.thread218
    i8 3, label %_ZNK5clang4Type18isOverloadableTypeEv.exit.thread218
    i8 2, label %_ZNK5clang4Type18isOverloadableTypeEv.exit.thread218
    i8 40, label %_ZNK5clang4Type18isOverloadableTypeEv.exit.thread218
    i8 31, label %_ZNK5clang4Type18isOverloadableTypeEv.exit.thread218
    i8 30, label %_ZNK5clang4Type18isOverloadableTypeEv.exit.thread218
  ]

_ZNK5clang4Type18isOverloadableTypeEv.exit:       ; preds = %bb.a
  switch i8 %i.ar, label %_ZNK5clang4Type18isOverloadableTypeEv.exit.thread218 [
    i8 49, label %_ZNK5clang4Type18isOverloadableTypeEv.exit.thread
    i8 47, label %_ZNK5clang4Type18isOverloadableTypeEv.exit.thread
  ]

_ZNK5clang4Type18isOverloadableTypeEv.exit.thread: ; preds = %_ZNK5clang4Type18isOverloadableTypeEv.exit, %_ZNK5clang4Type18isOverloadableTypeEv.exit, %bb.b
  %i.as = load ptr, ptr %0, align 8, !tbaa !1851, !nonnull !107, !align !791
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN5clang4Sema21LookupOverloadedBinOpERNS_20OverloadCandidateSetENS_22OverloadedOperatorKindERKNS_17UnresolvedSetImplEN4llvm8ArrayRefIPNS_4ExprEEEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.as, ptr noundef nonnull align 8 dereferenceable(7844) %7, i32 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %i.at, ptr nonnull %2, i64 %3, i1 noundef zeroext true) #26
  br label %bb.c

_ZNK5clang4Type18isOverloadableTypeEv.exit.thread218: ; preds = %_ZNK5clang4Type18isOverloadableTypeEv.exit, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.au = load ptr, ptr %0, align 8, !tbaa !1851, !nonnull !107, !align !791
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !1832
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.0.0.copyload.i119 = load i32, ptr %i.aw, align 8, !tbaa !116
  call void @_ZN5clang4Sema28AddBuiltinOperatorCandidatesENS_22OverloadedOperatorKindENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEERNS_20OverloadCandidateSetE(ptr noundef nonnull align 8 dereferenceable(18640) %i.au, i32 noundef %1, i32 %.sroa.0.0.copyload.i119, ptr nonnull %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(7844) %7) #26
  br label %bb.c

bb.c:                                             ; preds = %_ZNK5clang4Type18isOverloadableTypeEv.exit.thread218, %_ZNK5clang4Type18isOverloadableTypeEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ax = load ptr, ptr %0, align 8, !tbaa !1851, !nonnull !107, !align !791
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !1832
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.sroa.0.0.copyload.i120 = load i32, ptr %i.az, align 8, !tbaa !116
  %i.ba = call noundef i32 @_ZN5clang20OverloadCandidateSet18BestViableFunctionERNS_4SemaENS_14SourceLocationERPNS_17OverloadCandidateE(ptr noundef nonnull align 8 dereferenceable(7844) %7, ptr noundef nonnull align 8 dereferenceable(18640) %i.ax, i32 %.sroa.0.0.copyload.i120, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26
  switch i32 %i.ba, label %bb.bz [
    i32 0, label %bb.d
    i32 2, label %bb.az
    i32 3, label %bb.bj
    i32 1, label %bb.bo
  ]

bb.d:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !1833
  %.off = add i8 %i.bc, -3
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !3367 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = and i32 %i.bf, 768
  %.not105 = icmp eq i32 %i.bg, 0
  br i1 %.not105, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !1835
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %bb.g, label %.thread229

bb.g:                                             ; preds = %bb.f
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !3381 ; 2 uses
  %.not106 = icmp eq ptr %i.bk, null
  br i1 %.not106, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.bl = load ptr, ptr %0, align 8, !tbaa !1851, !nonnull !107, !align !791
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %.sroa.0.0.copyload.i121 = load i32, ptr %i.bn, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i32 %.sroa.0.0.copyload.i121, i32 noundef 6043) #26
  %i.bo = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_12FunctionDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.thread229

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bp = load ptr, ptr %0, align 8, !tbaa !1851, !nonnull !107, !align !791
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !3382 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bs, i64 8) ]
  %39 = getelementptr inbounds nuw i8, ptr %i.bs, i64 144
  %.0.copyload.i.i.i.i = load i64, ptr %39, align 8
  %i.bt = and i64 %.0.copyload.i.i.i.i, -8
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %.sroa.0.0.copyload.i122 = load i32, ptr %i.bv, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.bq, i32 %.sroa.0.0.copyload.i122, i32 noundef 6044) #26
  %i.bw = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_12FunctionDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.thread229

bb.j:                                             ; preds = %bb.d, %bb.e
  %i.bx = load ptr, ptr %2, align 8, !tbaa !115
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.0.0.copyload.i123 = load i64, ptr %i.by, align 8, !tbaa !92
  %i.bz = and i64 %.sroa.0.0.copyload.i123, -16
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load ptr, ptr %i.ca, align 16, !tbaa !98
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.cc, align 8, !tbaa !92
  %i.cd = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load ptr, ptr %i.ce, align 16, !tbaa !98 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load i8, ptr %i.cg, align 16            ; 3 uses
  %i.ci = add i8 %i.ch, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ci, 3
  %.not.i7.i = icmp ne ptr %i.cf, null
  %.not.i.not8.i = and i1 %.not.i7.i, %switch.i.i.i.i.i.i.i.i.i.i
  %i.cj = and i8 %i.ch, 62
  %spec.select.i.i.i = icmp eq i8 %i.cj, 48
  %or.cond.i = and i1 %spec.select.i.i.i, %.not.i.not8.i
  br i1 %or.cond.i, label %bb.k, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1388 ; 3 uses
  %i.cm = icmp eq i8 %i.ch, 49
  br i1 %i.cm, label %bb.l, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 28
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = and i32 %i.co, 127
  %i.cq = add nsw i32 %i.cp, -60
  %i.cr = icmp ult i32 %i.cq, 3
  br i1 %i.cr, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit:       ; preds = %bb.l, %bb.k
  %i.cs = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.cl) ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.cs, null
  %spec.select = select i1 %.not.not.i.i, ptr %i.cl, ptr %i.cs
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !3367 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ct, i64 8) ]
  %40 = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.0.copyload.i.i.i.i125 = load i64, ptr %40, align 8
  %i.cu = and i64 %.0.copyload.i.i.i.i125, -8     ; 2 uses
  %.not108 = icmp eq i64 %i.cu, 0
  br i1 %.not108, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cw, align 8 ; 3 uses
  %i.cx = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cz = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang4Decl14getDeclContextEv.exit.i

bb.o:                                             ; preds = %bb.m
  %i.da = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1249
  br label %_ZNK5clang4Decl14getDeclContextEv.exit.i

_ZNK5clang4Decl14getDeclContextEv.exit.i:         ; preds = %bb.o, %bb.n
  %.0.i.i.i = phi ptr [ %i.cz, %bb.n ], [ %i.dc, %bb.o ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.de = load i16, ptr %i.dd, align 8
  %i.df = and i16 %i.de, 127                      ; 2 uses
  %i.dg = icmp eq i16 %i.df, 63
  br i1 %i.dg, label %bb.p, label %_ZNK5clang9NamedDecl16isCXXClassMemberEv.exit

bb.p:                                             ; preds = %_ZNK5clang4Decl14getDeclContextEv.exit.i
  %i.dh = call noundef ptr @_ZN5clang11DeclContext16getRedeclContextEv(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i.i) #26
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 8
  %.pre3.i = and i16 %.pre.i, 127
  br label %_ZNK5clang9NamedDecl16isCXXClassMemberEv.exit

_ZNK5clang9NamedDecl16isCXXClassMemberEv.exit:    ; preds = %_ZNK5clang4Decl14getDeclContextEv.exit.i, %bb.p
  %.pre-phi.i = phi i16 [ %.pre3.i, %bb.p ], [ %i.df, %_ZNK5clang4Decl14getDeclContextEv.exit.i ]
  %i.di = add nsw i16 %.pre-phi.i, -59
  %spec.select.i.i127 = icmp ult i16 %i.di, 4
  br i1 %spec.select.i.i127, label %bb.q, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

bb.q:                                             ; preds = %_ZNK5clang9NamedDecl16isCXXClassMemberEv.exit
  %i.dj = load i32, ptr %4, align 8, !tbaa !1858
  %i.dk = icmp eq i32 %i.dj, 1
  br i1 %i.dk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dl = load ptr, ptr %2, align 8, !tbaa !115
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.sroa.0.0.copyload.i128 = load i64, ptr %i.dm, align 8, !tbaa !92
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.dn = load ptr, ptr %0, align 8, !tbaa !1851, !nonnull !107, !align !791
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 232
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !790, !nonnull !107, !align !791
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1831
  %i.ds = call i64 @_ZNK5clang10ASTContext19getCanonicalTagTypeEPKNS_7TagDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.dp, ptr noundef %i.dr) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.058.0 = phi i64 [ %.sroa.0.0.copyload.i128, %bb.r ], [ %i.ds, %bb.s ]
  %i.dt = load ptr, ptr %0, align 8, !tbaa !1851, !nonnull !107, !align !791 ; 3 uses
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !3367
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %.sroa.057.0.copyload = load i64, ptr %i.dv, align 8, !tbaa !92
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.055.0.copyload = load i32, ptr %i.dw, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !1835
  %i.dz = icmp eq i32 %i.dy, 1                    ; 2 uses
  br i1 %i.dz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  call void @_ZN5clang8SemaBase5PDiagEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::PartialDiagnostic") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.ea, i32 noundef 6038) #26
  %i.eb = load ptr, ptr %i.d, align 8, !tbaa !1246
  %i.ec = load ptr, ptr %11, align 8, !tbaa !1181 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIPNS_9NamedDeclEEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %bb.u
  %i.ed = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1182
  %i.ef = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ee) ; 2 uses
  store ptr %i.ef, ptr %11, align 8, !tbaa !1181
  br label %_ZNK5clang17PartialDiagnosticlsIPNS_9NamedDeclEEERKS0_RKT_.exit

_ZNK5clang17PartialDiagnosticlsIPNS_9NamedDeclEEERKS0_RKT_.exit: ; preds = %bb.u, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.eg = phi ptr [ %i.ef, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.ec, %bb.u ] ; 2 uses
  %i.eh = ptrtoint ptr %i.eb to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.ej = load i8, ptr %i.eg, align 8, !tbaa !1309
  %i.ek = zext i8 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ek
  store i8 10, ptr %i.el, align 1, !tbaa !92
  %i.em = load ptr, ptr %11, align 8, !tbaa !1181 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load i8, ptr %i.em, align 8, !tbaa !1309 ; 2 uses
  %i.ep = add i8 %i.eo, 1                         ; 2 uses
  store i8 %i.ep, ptr %i.em, align 8, !tbaa !1309
  %i.eq = zext i8 %i.eo to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.eq
  store i64 %i.eh, ptr %i.er, align 8, !tbaa !1284
  %.val116 = load i32, ptr %4, align 8, !tbaa !92
  %i.es = sext i32 %.val116 to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.eu = zext i8 %i.ep to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.eu
  store i8 2, ptr %i.ev, align 1, !tbaa !92
  %i.ew = load ptr, ptr %11, align 8, !tbaa !1181 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load i8, ptr %i.ew, align 8, !tbaa !1309 ; 2 uses
  %i.ez = add i8 %i.ey, 1                         ; 2 uses
  store i8 %i.ez, ptr %i.ew, align 8, !tbaa !1309
  %i.fa = zext i8 %i.ey to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.fa
  store i64 %i.es, ptr %i.fb, align 8, !tbaa !1284
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !1392
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %i.fg = zext i8 %i.ez to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fg
  store i8 10, ptr %i.fh, align 1, !tbaa !92
  %i.fi = load ptr, ptr %11, align 8, !tbaa !1181 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load i8, ptr %i.fi, align 8, !tbaa !1309 ; 2 uses
  %i.fl = add i8 %i.fk, 1
  store i8 %i.fl, ptr %i.fi, align 8, !tbaa !1309
  %i.fm = zext i8 %i.fk to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fm
  store i64 %i.fe, ptr %i.fn, align 8, !tbaa !1284
  call void @_ZN5clang17PartialDiagnosticC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(20) %10, ptr noundef nonnull align 8 dereferenceable(20) %11)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  call void @_ZN5clang8SemaBase5PDiagEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::PartialDiagnostic") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.fo, i32 noundef 0) #26
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK5clang17PartialDiagnosticlsIPNS_9NamedDeclEEERKS0_RKT_.exit
  %i.fp = call noundef zeroext i1 @_ZN5clang4Sema29isMemberAccessibleForDeletionEPNS_13CXXRecordDeclENS_14DeclAccessPairENS_8QualTypeENS_14SourceLocationERKNS_17PartialDiagnosticE(ptr noundef nonnull align 8 dereferenceable(18640) %i.dt, ptr noundef nonnull %spec.select, i64 %.sroa.057.0.copyload, i64 %.sroa.058.0, i32 %.sroa.055.0.copyload, ptr noundef nonnull align 8 dereferenceable(20) %10) #26
  %i.fq = load ptr, ptr %10, align 8, !tbaa !1181 ; 6 uses
  %.not.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i, label %_ZN5clang19StreamingDiagnosticD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fr = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !1182 ; 4 uses
  %.not.i.i.i134 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i134, label %_ZN5clang19StreamingDiagnosticD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ft = icmp uge ptr %i.fq, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 14848 ; 2 uses
  %i.fv = icmp ule ptr %i.fq, %i.fu
  %or.cond.i.i.i.i = select i1 %i.ft, i1 %i.fv, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 14976 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !1521 ; 2 uses
  %i.fy = add i32 %i.fx, 1
  store i32 %i.fy, ptr %i.fw, align 8, !tbaa !1521
  %i.fz = zext i32 %i.fx to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fz
  store ptr %i.fq, ptr %i.ga, align 8, !tbaa !1522
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit

bb.aa:                                            ; preds = %bb.y
  call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.fq) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef 928) #28
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit

_ZN5clang19StreamingDiagnosticD2Ev.exit:          ; preds = %bb.w, %bb.x, %bb.z, %bb.aa
  br i1 %i.dz, label %bb.ab, label %.critedge113

bb.ab:                                            ; preds = %_ZN5clang19StreamingDiagnosticD2Ev.exit
  call void @_ZN5clang19StreamingDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.critedge113

.critedge113:                                     ; preds = %_ZN5clang19StreamingDiagnosticD2Ev.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br i1 %i.fp, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread, label %.thread229

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread: ; preds = %bb.j, %bb.l, %.critedge113, %_ZNK5clang9NamedDecl16isCXXClassMemberEv.exit, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit
  %i.gb = icmp eq i32 %1, 34
  br i1 %i.gb, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread
  %i.gc = load ptr, ptr %i.d, align 8, !tbaa !1832
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
end_hunk_4
begin_hunk_5_@_ZL26buildMemcpyForAssignmentOpRN5clang4SemaENS_14SourceLocationENS_8QualTypeERKN12_GLOBAL__N_111ExprBuilderES7_:bb.a
  %i.fc = load ptr, ptr %i.cw, align 8, !tbaa !100 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.cx
  br i1 %i.fd, label %_ZN5clang12LookupResultD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef %i.fc) #26
  br label %_ZN5clang12LookupResultD2Ev.exit

_ZN5clang12LookupResultD2Ev.exit:                 ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.fe = load i32, ptr %i.o, align 8, !tbaa !1371
  %i.ff = icmp ugt i32 %i.fe, 64
  br i1 %i.ff, label %bb.u, label %_ZN4llvm5APIntD2Ev.exit

bb.u:                                             ; preds = %_ZN5clang12LookupResultD2Ev.exit
  %i.fg = load ptr, ptr %5, align 8, !tbaa !92    ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %_ZN4llvm5APIntD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.fg) #28
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN5clang12LookupResultD2Ev.exit, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret i64 %.sroa.088.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZL32buildSingleCopyAssignRecursivelyRN5clang4SemaENS_14SourceLocationENS_8QualTypeERKN12_GLOBAL__N_111ExprBuilderES7_bbj(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.clang::LookupResult", align 8 ; 32 uses
  %9 = alloca %"class.clang::CXXScopeSpec", align 8 ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.llvm::SmallString.3096", align 8 ; 8 uses
  %11 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 14 uses
  %12 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %13 = alloca %"class.(anonymous namespace)::RefBuilder", align 8 ; 6 uses
  %14 = alloca %"class.(anonymous namespace)::LvalueConvBuilder", align 8 ; 6 uses
  %15 = alloca %"class.(anonymous namespace)::SubscriptBuilder", align 8 ; 7 uses
  %16 = alloca %"class.(anonymous namespace)::MoveCastBuilder", align 8 ; 5 uses
  %17 = alloca %"class.(anonymous namespace)::SubscriptBuilder", align 8 ; 6 uses
  %18 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %19 = alloca %"class.llvm::APInt", align 8      ; 11 uses
  %20 = alloca %"class.clang::Sema::ConditionResult", align 8 ; 2 uses
  %i.c = and i64 %2, -16
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !98
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !92
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !98  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i8, ptr %i.j, align 16              ; 3 uses
  %i.l = add i8 %i.k, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.l, 3
  %.not.i7.i = icmp ne ptr %i.i, null
  %.not.i.not8.i = and i1 %.not.i7.i, %switch.i.i.i.i.i.i.i.i.i.i
  %i.m = and i8 %i.k, 62
  %spec.select.i.i.i = icmp eq i8 %i.m, 48
  %or.cond.i = and i1 %spec.select.i.i.i, %.not.i.not8.i
  br i1 %or.cond.i, label %bb.b, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread218

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1388 ; 3 uses
  %i.p = icmp eq i8 %i.k, 49
  br i1 %i.p, label %bb.c, label %select.unfold

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 127
  %i.t = add nsw i32 %i.s, -60
  %i.u = icmp ult i32 %i.t, 3
  br i1 %i.u, label %select.unfold, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread218

select.unfold:                                    ; preds = %bb.c, %bb.b
  %i.v = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.o) ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.v, null
  %spec.select = select i1 %.not.not.i.i, ptr %i.o, ptr %i.v
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !790, !nonnull !107, !align !791
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 18096
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = or disjoint i64 %i.z, 6                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i32 0, ptr %8, align 8, !tbaa !1334
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  store i32 0, ptr %i.ab, align 4, !tbaa !1335
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !100
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !101
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 8, ptr %i.af, align 4, !tbaa !112
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  store ptr %0, ptr %i.ah, align 8, !tbaa !1336
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 120
  store i64 %i.aa, ptr %i.ai, align 8, !tbaa !1284
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 128
  store i32 %1, ptr %i.aj, align 8, !tbaa !116
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 136
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i64 %i.aa) #26
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.al, i8 0, i64 18, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 163
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 164
  store <4 x i8> <i8 1, i8 1, i8 1, i8 0>, ptr %i.am, align 2, !tbaa !1283
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 166
  store i8 0, ptr %i.ap, align 2, !tbaa !1343
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 167
  store i8 0, ptr %i.aq, align 1, !tbaa !1405
  call void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168) %8) #26
  %i.ar = getelementptr inbounds nuw i8, ptr %spec.select, i64 64
  %i.as = call noundef zeroext i1 @_ZN5clang4Sema19LookupQualifiedNameERNS_12LookupResultEPNS_11DeclContextEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(168) %8, ptr noundef nonnull %i.ar, i1 noundef zeroext false) #26 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1172, !nonnull !107, !align !791
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = and i64 %i.av, 8192
  %.not156 = icmp eq i64 %i.aw, 0
  br i1 %.not156, label %bb.d, label %_ZN5clang12LookupResult6Filter4doneEv.exit

bb.d:                                             ; preds = %select.unfold
  %i.ax = load i32, ptr %i.ae, align 8, !tbaa !101 ; 3 uses
  %.not230 = icmp eq i32 %i.ax, 0
  br i1 %.not230, label %_ZN5clang12LookupResult6Filter4doneEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ay = load ptr, ptr %i.ac, align 8, !tbaa !100, !noalias !3457 ; 4 uses
  br i1 %6, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN5clang12LookupResult6Filter5eraseEv.exit.us
  %i.az = phi ptr [ %i.bs, %_ZN5clang12LookupResult6Filter5eraseEv.exit.us ], [ %i.ay, %.lr.ph ]
  %i.ba = phi i32 [ %i.br, %_ZN5clang12LookupResult6Filter5eraseEv.exit.us ], [ %i.ax, %.lr.ph ]
  %.sroa.12.0232.us = phi i1 [ %.sroa.12.1.us, %_ZN5clang12LookupResult6Filter5eraseEv.exit.us ], [ false, %.lr.ph ]
  %.sroa.6.0231.us = phi ptr [ %.sroa.6.1.us, %_ZN5clang12LookupResult6Filter5eraseEv.exit.us ], [ %i.ay, %.lr.ph ] ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.6.0231.us, i64 8) ]
  %.0.copyload.i.i.i.i.i.i.i.us = load i64, ptr %.sroa.6.0231.us, align 8
  %i.bb = and i64 %.0.copyload.i.i.i.i.i.i.i.us, -8 ; 2 uses
  %i.bc = inttoptr i64 %i.bb to ptr               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 28
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = and i32 %i.be, 124
  %i.bg = icmp ne i32 %i.bf, 36
  %.not157229.us = icmp eq i64 %i.bb, 0
  %.not157.us = or i1 %.not157229.us, %i.bg
  br i1 %.not157.us, label %.critedge.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.6.0231.us, i64 8
  %i.bi = call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl24isCopyAssignmentOperatorEv(ptr noundef nonnull align 8 dereferenceable(168) %i.bc) #26
  %.pre246 = load ptr, ptr %i.ac, align 8, !tbaa !100 ; 2 uses
  %.pre248 = load i32, ptr %i.ae, align 8, !tbaa !101 ; 2 uses
  br i1 %i.bi, label %_ZN5clang12LookupResult6Filter5eraseEv.exit.us, label %..critedge.us_crit_edge, !llvm.loop !3453

..critedge.us_crit_edge:                          ; preds = %bb.e
  br label %.critedge.us, !llvm.loop !3453

.critedge.us:                                     ; preds = %..critedge.us_crit_edge, %.lr.ph.split.us
  %i.bj = phi ptr [ %.pre246, %..critedge.us_crit_edge ], [ %i.az, %.lr.ph.split.us ] ; 3 uses
  %i.bk = phi i32 [ %.pre248, %..critedge.us_crit_edge ], [ %i.ba, %.lr.ph.split.us ] ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8
  %.sroa.0.0.copyload.i.i.i.us = load i64, ptr %i.bn, align 8, !tbaa !92
  %i.bo = add i32 %i.bk, -1                       ; 3 uses
  store i32 %i.bo, ptr %i.ae, align 8, !tbaa !101
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bp
  %.not.i.i.us = icmp eq ptr %.sroa.6.0231.us, %i.bq
  br i1 %.not.i.i.us, label %_ZN5clang12LookupResult6Filter5eraseEv.exit.us, label %bb.f

bb.f:                                             ; preds = %.critedge.us
  store i64 %.sroa.0.0.copyload.i.i.i.us, ptr %.sroa.6.0231.us, align 8, !tbaa !92
  %.pre245 = load ptr, ptr %i.ac, align 8, !tbaa !100
  %.pre247 = load i32, ptr %i.ae, align 8, !tbaa !101
  br label %_ZN5clang12LookupResult6Filter5eraseEv.exit.us

_ZN5clang12LookupResult6Filter5eraseEv.exit.us:   ; preds = %bb.f, %.critedge.us, %bb.e
  %i.br = phi i32 [ %.pre247, %bb.f ], [ %.pre248, %bb.e ], [ %i.bo, %.critedge.us ] ; 3 uses
  %i.bs = phi ptr [ %.pre245, %bb.f ], [ %.pre246, %bb.e ], [ %i.bj, %.critedge.us ] ; 2 uses
  %.sroa.6.1.us = phi ptr [ %.sroa.6.0231.us, %bb.f ], [ %i.bh, %bb.e ], [ %.sroa.6.0231.us, %.critedge.us ] ; 2 uses
  %.sroa.12.1.us = phi i1 [ true, %bb.f ], [ %.sroa.12.0232.us, %bb.e ], [ true, %.critedge.us ] ; 2 uses
  %i.bt = zext i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bt
  %.not.us = icmp eq ptr %.sroa.6.1.us, %i.bu
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN5clang12LookupResult6Filter5eraseEv.exit
  %i.bv = phi i32 [ %i.co, %_ZN5clang12LookupResult6Filter5eraseEv.exit ], [ %i.ax, %.lr.ph ]
  %i.bw = phi ptr [ %i.cn, %_ZN5clang12LookupResult6Filter5eraseEv.exit ], [ %i.ay, %.lr.ph ]
  %.sroa.12.0232 = phi i1 [ %.sroa.12.1, %_ZN5clang12LookupResult6Filter5eraseEv.exit ], [ false, %.lr.ph ] ; 2 uses
  %.sroa.6.0231 = phi ptr [ %.sroa.6.1, %_ZN5clang12LookupResult6Filter5eraseEv.exit ], [ %i.ay, %.lr.ph ] ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.6.0231, i64 8) ]
  %21 = getelementptr inbounds nuw i8, ptr %.sroa.6.0231, i64 8 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0231, align 8
  %i.bx = and i64 %.0.copyload.i.i.i.i.i.i.i, -8  ; 2 uses
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 28
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = and i32 %i.ca, 124
  %i.cc = icmp ne i32 %i.cb, 36
  %.not157229 = icmp eq i64 %i.bx, 0
  %.not157 = or i1 %.not157229, %i.cc
  br i1 %.not157, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split
  %i.cd = call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl24isCopyAssignmentOperatorEv(ptr noundef nonnull align 8 dereferenceable(168) %i.by) #26
  br i1 %i.cd, label %_ZN5clang12LookupResult6Filter5eraseEv.exit, label %bb.h, !llvm.loop !3453

bb.h:                                             ; preds = %bb.g
  %i.ce = call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl24isMoveAssignmentOperatorEv(ptr noundef nonnull align 8 dereferenceable(168) %i.by) #26
  br i1 %i.ce, label %_ZN5clang12LookupResult6Filter5eraseEv.exit, label %..critedge_crit_edge, !llvm.loop !3453

..critedge_crit_edge:                             ; preds = %bb.h
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !100
  %.pre242 = load i32, ptr %i.ae, align 8, !tbaa !101
  br label %.critedge, !llvm.loop !3453

.critedge:                                        ; preds = %..critedge_crit_edge, %.lr.ph.split
  %i.cf = phi i32 [ %.pre242, %..critedge_crit_edge ], [ %i.bv, %.lr.ph.split ] ; 2 uses
  %i.cg = phi ptr [ %.pre, %..critedge_crit_edge ], [ %i.bw, %.lr.ph.split ] ; 2 uses
  %i.ch = zext i32 %i.cf to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cj, align 8, !tbaa !92
  %i.ck = add i32 %i.cf, -1                       ; 2 uses
  store i32 %i.ck, ptr %i.ae, align 8, !tbaa !101
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cl
  %.not.i.i = icmp eq ptr %.sroa.6.0231, %i.cm
  br i1 %.not.i.i, label %_ZN5clang12LookupResult6Filter5eraseEv.exit, label %bb.i

bb.i:                                             ; preds = %.critedge
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.6.0231, align 8, !tbaa !92
  br label %_ZN5clang12LookupResult6Filter5eraseEv.exit

_ZN5clang12LookupResult6Filter5eraseEv.exit:      ; preds = %bb.i, %.critedge, %bb.h, %bb.g
  %.sroa.6.1 = phi ptr [ %21, %bb.h ], [ %21, %bb.g ], [ %.sroa.6.0231, %.critedge ], [ %.sroa.6.0231, %bb.i ] ; 2 uses
  %.sroa.12.1 = phi i1 [ %.sroa.12.0232, %bb.h ], [ %.sroa.12.0232, %bb.g ], [ true, %.critedge ], [ true, %bb.i ] ; 2 uses
  %i.cn = load ptr, ptr %i.ac, align 8, !tbaa !100 ; 2 uses
  %i.co = load i32, ptr %i.ae, align 8, !tbaa !101 ; 3 uses
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cp
  %.not = icmp eq ptr %.sroa.6.1, %i.cq
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZN5clang12LookupResult6Filter5eraseEv.exit, %_ZN5clang12LookupResult6Filter5eraseEv.exit.us
  %.sroa.12.0.lcssa = phi i1 [ %.sroa.12.1.us, %_ZN5clang12LookupResult6Filter5eraseEv.exit.us ], [ %.sroa.12.1, %_ZN5clang12LookupResult6Filter5eraseEv.exit ]
  %.lcssa = phi i32 [ %i.br, %_ZN5clang12LookupResult6Filter5eraseEv.exit.us ], [ %i.co, %_ZN5clang12LookupResult6Filter5eraseEv.exit ]
  br i1 %.sroa.12.0.lcssa, label %bb.j, label %_ZN5clang12LookupResult6Filter4doneEv.exit

bb.j:                                             ; preds = %._crit_edge
  %.not.i.i.i.i = icmp eq i32 %.lcssa, 0
  %i.cr = load i32, ptr %8, align 8, !tbaa !1334  ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %.not2.i.i = icmp eq i32 %i.cr, 1
  br i1 %.not2.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %8, align 8, !tbaa !1334
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cs = load ptr, ptr %i.ag, align 8, !tbaa !1342 ; 2 uses
  %.not3.i.i = icmp eq ptr %i.cs, null
  br i1 %.not3.i.i, label %_ZN5clang12LookupResult6Filter4doneEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.cs) #26
  store ptr null, ptr %i.ag, align 8, !tbaa !1342
  br label %_ZN5clang12LookupResult6Filter4doneEv.exit

bb.o:                                             ; preds = %bb.j
  %i.ct = load i32, ptr %i.ab, align 4
  store i32 2, ptr %8, align 8, !tbaa !1334
  call void @_ZN5clang12LookupResult11resolveKindEv(ptr noundef nonnull align 8 dereferenceable(168) %8) #26
  %i.cu = load i32, ptr %8, align 8, !tbaa !1334
  %i.cv = icmp eq i32 %i.cu, 5
  br i1 %i.cv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cw = icmp eq i32 %i.cr, 5
  %.sroa.04.0.i.i = select i1 %i.cw, i32 %i.ct, i32 undef
  store i32 %.sroa.04.0.i.i, ptr %i.ab, align 4, !tbaa !1335
  br label %_ZN5clang12LookupResult6Filter4doneEv.exit

bb.q:                                             ; preds = %bb.o
  %i.cx = load ptr, ptr %i.ag, align 8, !tbaa !1342 ; 2 uses
  %.not.i.i162 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i162, label %_ZN5clang12LookupResult6Filter4doneEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.cx) #26
  store ptr null, ptr %i.ag, align 8, !tbaa !1342
  br label %_ZN5clang12LookupResult6Filter4doneEv.exit

_ZN5clang12LookupResult6Filter4doneEv.exit:       ; preds = %bb.d, %bb.r, %bb.q, %bb.p, %bb.n, %bb.m, %._crit_edge, %select.unfold
  br i1 %5, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %_ZN5clang12LookupResult6Filter4doneEv.exit
  %i.cy = load ptr, ptr %i.ac, align 8, !tbaa !100 ; 6 uses
  %i.cz = load i32, ptr %i.ae, align 8, !tbaa !101 ; 2 uses
  %i.da = zext i32 %i.cz to i64
  %.idx = shl nuw nsw i64 %i.da, 3                ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx
  %.not226235 = icmp eq i32 %i.cz, 0
  br i1 %.not226235, label %.loopexit, label %.lr.ph238.preheader

.lr.ph238.preheader:                              ; preds = %bb.s
  %i.dc = add nsw i64 %.idx, -8                   ; 2 uses
  %i.dd = and i64 %i.dc, 8
  %lcmp.mod.not.not = icmp eq i64 %i.dd, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph238.prol, label %.lr.ph238.prol.loopexit

.lr.ph238.prol:                                   ; preds = %.lr.ph238.preheader
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cy, i64 8) ]
  %.0.copyload.i.i.i.i.i163.prol = load i64, ptr %i.cy, align 8 ; 2 uses
  %i.de = and i64 %.0.copyload.i.i.i.i.i163.prol, 3
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.t, label %.lr.ph238.prol.loopexit.unr-lcssa

bb.t:                                             ; preds = %.lr.ph238.prol
  %i.dg = and i64 %.0.copyload.i.i.i.i.i163.prol, -8
  store i64 %i.dg, ptr %i.cy, align 8
  br label %.lr.ph238.prol.loopexit.unr-lcssa

.lr.ph238.prol.loopexit.unr-lcssa:                ; preds = %bb.t, %.lr.ph238.prol
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  br label %.lr.ph238.prol.loopexit

.lr.ph238.prol.loopexit:                          ; preds = %.lr.ph238.prol.loopexit.unr-lcssa, %.lr.ph238.preheader
  %.sroa.0199.0236.unr = phi ptr [ %i.cy, %.lr.ph238.preheader ], [ %i.dh, %.lr.ph238.prol.loopexit.unr-lcssa ]
  %i.di = icmp eq i64 %i.dc, 0
  br i1 %i.di, label %.loopexit, label %.lr.ph238

.lr.ph238:                                        ; preds = %.lr.ph238.prol.loopexit, %bb.w
  %.sroa.0199.0236 = phi ptr [ %i.dq, %bb.w ], [ %.sroa.0199.0236.unr, %.lr.ph238.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.0199.0236, i64 8) ]
  %.0.copyload.i.i.i.i.i163 = load i64, ptr %.sroa.0199.0236, align 8 ; 2 uses
  %i.dj = and i64 %.0.copyload.i.i.i.i.i163, 3
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.u, label %.lr.ph238.1

bb.u:                                             ; preds = %.lr.ph238
  %i.dl = and i64 %.0.copyload.i.i.i.i.i163, -8
  store i64 %i.dl, ptr %.sroa.0199.0236, align 8
  br label %.lr.ph238.1

.lr.ph238.1:                                      ; preds = %.lr.ph238, %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0199.0236, i64 8 ; 2 uses
  %.0.copyload.i.i.i.i.i163.1 = load i64, ptr %i.dm, align 8 ; 2 uses
  %i.dn = and i64 %.0.copyload.i.i.i.i.i163.1, 3
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph238.1
  %i.dp = and i64 %.0.copyload.i.i.i.i.i163.1, -8
  store i64 %i.dp, ptr %i.dm, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph238.1
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0199.0236, i64 16 ; 2 uses
  %.not226.1 = icmp eq ptr %i.dq, %i.db
  br i1 %.not226.1, label %.loopexit, label %.lr.ph238, !llvm.loop !3454

.loopexit:                                        ; preds = %.lr.ph238.prol.loopexit, %bb.w, %bb.s, %_ZN5clang12LookupResult6Filter4doneEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  %i.dr = load ptr, ptr %i.d, align 16, !tbaa !98
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.0.0.copyload.i.i164 = load i64, ptr %i.ds, align 8, !tbaa !92
  %i.dt = and i64 %.sroa.0.0.copyload.i.i164, -16
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = load ptr, ptr %i.du, align 16, !tbaa !98
  %i.dw = load ptr, ptr %i.w, align 8, !tbaa !790, !nonnull !107, !align !791
  %i.dx = ptrtoint ptr %i.dv to i64
  %.sroa.2196.0.insert.ext = zext i32 %1 to i64
  %.sroa.0195.0.insert.insert = mul nuw i64 %.sroa.2196.0.insert.ext, 4294967297
  call void @_ZN5clang12CXXScopeSpec11MakeTrivialERNS_10ASTContextENS_19NestedNameSpecifierENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(23904) %i.dw, i64 %i.dx, i64 %.sroa.0195.0.insert.insert) #26
  %i.dy = load ptr, ptr %3, align 8, !tbaa !1195
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = call noundef ptr %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1) #26
  %i.ec = call i64 @_ZN5clang4Sema24BuildMemberReferenceExprEPNS_4ExprENS_8QualTypeENS_14SourceLocationEbRKNS_12CXXScopeSpecES4_PNS_9NamedDeclERNS_12LookupResultEPKNS_24TemplateArgumentListInfoEPKNS_5ScopeEbPNS0_26ActOnMemberAccessExtraArgsE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.eb, i64 %2, i32 %1, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(48) %9, i32 0, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(168) %8, ptr noundef null, ptr noundef null, i1 noundef zeroext true, ptr noundef null) #26 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 1
  br i1 %i.ed, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.ee = load ptr, ptr %4, align 8, !tbaa !1195
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8
end_hunk_5
