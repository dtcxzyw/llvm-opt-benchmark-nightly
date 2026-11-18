Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaLookup?download=true
inline.NumInlined: 15490
inline.NumDeleted: 5920
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN5clang22TypoCorrectionConsumer17resolveCorrectionERNS_14TypoCorrectionE:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %.fr, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !1730, !nonnull !766, !align !767
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !1751
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 14
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !2565, !range !769, !noundef !766
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !1731
  %i.aj = icmp eq ptr %.0.i.i, %i.ai
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.outer.split.preheader.lr.ph
  %i.ak = load i8, ptr %i.u, align 4, !tbaa !1745, !range !769, !noundef !766
  %i.al = xor i8 %i.ak, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.outer.split.preheader.lr.ph
  %i.am = phi i8 [ 0, %.outer.split.preheader.lr.ph ], [ %i.al, %bb.b ]
  store i8 0, ptr %i.q, align 1, !tbaa !1297
  store i8 0, ptr %i.r, align 4, !tbaa !1298
  store i32 0, ptr %i.l, align 8, !tbaa !1151
  store i32 0, ptr %i.s, align 8, !tbaa !1150
  %i.an = load ptr, ptr %i.t, align 8, !tbaa !1222 ; 2 uses
  %.not.i.i.peel = icmp eq ptr %i.an, null
  br i1 %.not.i.i.peel, label %_ZN5clang12LookupResult5clearEv.exit.i.peel, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.an)
  br label %_ZN5clang12LookupResult5clearEv.exit.i.peel

_ZN5clang12LookupResult5clearEv.exit.i.peel:      ; preds = %bb.d, %bb.c
  store i8 0, ptr %i.v, align 2, !tbaa !1348
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store i64 %i.w, ptr %i.x, align 8, !tbaa !771
  store i8 %i.am, ptr %i.y, align 1, !tbaa !1141
  %i.ao = load i16, ptr %i.ac, align 8
  %i.ap = and i16 %i.ao, 127
  %.not66.i.peel = icmp eq i16 %i.ap, 22
  br i1 %.not66.i.peel, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN5clang12LookupResult5clearEv.exit.i.peel
  br i1 %i.ah, label %bb.f, label %.critedge.i.peel

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.aq = call noundef ptr @_ZN5clang17ObjCInterfaceDecl22lookupInstanceVariableEPNS_14IdentifierInfoERPS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.ab, ptr noundef %.0.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %.not56.i.peel = icmp eq ptr %i.aq, null
  br i1 %.not56.i.peel, label %.critedge.i.peel, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = lshr i32 %i.as, 13
  %i.au = and i32 %i.at, 3
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = or i64 %i.av, %i.aw                     ; 2 uses
  %i.ay = load i32, ptr %i.s, align 8, !tbaa !1150 ; 2 uses
  %i.az = load i32, ptr %i.aa, align 4, !tbaa !1152
  %.not.i.i.i.i.i.peel = icmp ult i32 %i.ay, %i.az
  br i1 %.not.i.i.i.i.i.peel, label %bb.i, label %bb.h, !prof !1186

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 %i.ax)
  br label %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i.peel

bb.i:                                             ; preds = %bb.g
  %i.ba = zext i32 %i.ay to i64
  %i.bb = load ptr, ptr %i.z, align 8, !tbaa !1142
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  store i64 %i.ax, ptr %i.bc, align 1
  %i.bd = load i32, ptr %i.s, align 8, !tbaa !1150
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.s, align 8, !tbaa !1150
  br label %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i.peel

_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i.peel: ; preds = %bb.i, %bb.h
  store i32 2, ptr %i.l, align 8, !tbaa !1151
  call void @_ZN5clang12LookupResult11resolveKindEv(ptr noundef nonnull align 8 dereferenceable(168) %i.l)
  br label %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.peel

.critedge.i.peel:                                 ; preds = %bb.f, %bb.e
  %i.bf = call noundef ptr @_ZNK5clang17ObjCContainerDecl23FindPropertyDeclarationEPKNS_14IdentifierInfoENS_21ObjCPropertyQueryKindE(ptr noundef nonnull align 8 dereferenceable(88) %i.ab, ptr noundef %.0.i.i, i8 noundef zeroext 1) #28 ; 3 uses
  %.not57.i.peel = icmp eq ptr %i.bf, null
  br i1 %.not57.i.peel, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.critedge.i.peel
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = lshr i32 %i.bh, 13
  %i.bj = and i32 %i.bi, 3
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = ptrtoint ptr %i.bf to i64
  %i.bm = or i64 %i.bk, %i.bl                     ; 2 uses
  %i.bn = load i32, ptr %i.s, align 8, !tbaa !1150 ; 2 uses
  %i.bo = load i32, ptr %i.aa, align 4, !tbaa !1152
  %.not.i.i.i.i60.i.peel = icmp ult i32 %i.bn, %i.bo
  br i1 %.not.i.i.i.i60.i.peel, label %bb.l, label %bb.k, !prof !1186

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 %i.bm)
  br label %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit61.i.peel

bb.l:                                             ; preds = %bb.j
  %i.bp = zext i32 %i.bn to i64
  %i.bq = load ptr, ptr %i.z, align 8, !tbaa !1142
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  store i64 %i.bm, ptr %i.br, align 1
  %i.bs = load i32, ptr %i.s, align 8, !tbaa !1150
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.s, align 8, !tbaa !1150
  br label %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit61.i.peel

_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit61.i.peel: ; preds = %bb.l, %bb.k
  store i32 2, ptr %i.l, align 8, !tbaa !1151
  call void @_ZN5clang12LookupResult11resolveKindEv(ptr noundef nonnull align 8 dereferenceable(168) %i.l)
  br label %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.peel

bb.m:                                             ; preds = %.critedge.i.peel, %_ZN5clang12LookupResult5clearEv.exit.i.peel
  %i.bu = call noundef zeroext i1 @_ZN5clang4Sema19LookupQualifiedNameERNS_12LookupResultEPNS_11DeclContextEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.ad, ptr noundef nonnull align 8 dereferenceable(168) %i.l, ptr noundef nonnull %.fr, i1 noundef zeroext false) ; 0 uses
  br label %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.peel

_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.peel: ; preds = %bb.m, %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit61.i.peel, %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i.peel
  %.pr.peel = load i32, ptr %i.l, align 8, !tbaa !1151
  switch i32 %.pr.peel, label %_ZN5clang14TypoCorrection18setCorrectionRangeEPNS_12CXXScopeSpecERKNS_19DeclarationNameInfoE.exit [
    i32 0, label %bb.n
    i32 1, label %bb.n
    i32 4, label %bb.n
    i32 3, label %.split.us
    i32 2, label %.split.us
  ]

bb.n:                                             ; preds = %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.peel, %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.peel, %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.peel
  %.not24.peel = icmp eq ptr %.022.ph100, null
  br i1 %.not24.peel, label %.split56.us, label %.outer.split

.outer.split.us.preheader:                        ; preds = %.split56.us, %bb.a
  %.022.ph.lcssa = phi ptr [ %.022.ph, %.split56.us ], [ %.022.ph100, %bb.a ] ; 2 uses
  %i.bv = load ptr, ptr %i.k, align 8, !tbaa !1730, !nonnull !766, !align !767 ; 2 uses
  %i.bw = load ptr, ptr %i.m, align 8, !tbaa !1776
  %i.bx = load i8, ptr %i.n, align 8, !tbaa !1777, !range !769, !noundef !766
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = load ptr, ptr %i.p, align 8, !tbaa !1731
  %i.ca = icmp eq ptr %.0.i.i, %i.bz
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.outer.split.us.preheader
  %i.cb = load i8, ptr %i.u, align 4, !tbaa !1745, !range !769, !noundef !766
  %i.cc = xor i8 %i.cb, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.outer.split.us.preheader
  %i.cd = phi i8 [ 0, %.outer.split.us.preheader ], [ %i.cc, %bb.o ]
  store i8 0, ptr %i.q, align 1, !tbaa !1297
  store i8 0, ptr %i.r, align 4, !tbaa !1298
  store i32 0, ptr %i.l, align 8, !tbaa !1151
  store i32 0, ptr %i.s, align 8, !tbaa !1150
  %i.ce = load ptr, ptr %i.t, align 8, !tbaa !1222 ; 2 uses
  %.not.i.i.us.peel = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.us.peel, label %_ZN5clang12LookupResult5clearEv.exit.i.us.peel, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.ce)
  br label %_ZN5clang12LookupResult5clearEv.exit.i.us.peel

_ZN5clang12LookupResult5clearEv.exit.i.us.peel:   ; preds = %bb.q, %bb.p
  store i8 0, ptr %i.v, align 2, !tbaa !1348
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store i64 %i.w, ptr %i.x, align 8, !tbaa !771
  store i8 %i.cd, ptr %i.y, align 1, !tbaa !1141
  %i.cf = call noundef zeroext i1 @_ZN5clang4Sema16LookupParsedNameERNS_12LookupResultEPNS_5ScopeEPNS_12CXXScopeSpecENS_8QualTypeEbb(ptr noundef nonnull align 8 dereferenceable(18640) %i.bv, ptr noundef nonnull align 8 dereferenceable(168) %i.l, ptr noundef %i.bw, ptr noundef %.022.ph.lcssa, i64 0, i1 noundef zeroext false, i1 noundef zeroext %i.by) ; 0 uses
  %i.cg = call noundef ptr @_ZN5clang4Sema16getCurMethodDeclEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.bv) #28 ; 4 uses
  %.not52.i.us.peel = icmp eq ptr %i.cg, null
  br i1 %.not52.i.us.peel, label %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.us.peel, label %bb.r

bb.r:                                             ; preds = %_ZN5clang12LookupResult5clearEv.exit.i.us.peel
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.ci = load i24, ptr %i.ch, align 8
  %i.cj = and i24 %i.ci, 131072
  %.not67.i.us.peel = icmp eq i24 %i.cj, 0
  br i1 %.not67.i.us.peel, label %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.us.peel, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = call noundef ptr @_ZN5clang14ObjCMethodDecl17getClassInterfaceEv(ptr noundef nonnull align 8 dereferenceable(136) %i.cg) #28
  %.not53.i.us.peel = icmp eq ptr %i.ck, null
  br i1 %.not53.i.us.peel, label %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.us.peel, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = load i32, ptr %i.s, align 8, !tbaa !1150
  %.not.i.i.i.i.us.peel = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.i.i.us.peel, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = load i32, ptr %i.l, align 8, !tbaa !1151 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 2
  br i1 %i.cn, label %bb.v, label %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exit.us.peel

bb.v:                                             ; preds = %bb.u
  %i.co = load ptr, ptr %i.z, align 8, !tbaa !1142 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.co, i64 8) ]
  %.0.copyload.i.i.i.i.i.i.i.i.us.peel = load i64, ptr %i.co, align 8
  %i.cp = and i64 %.0.copyload.i.i.i.i.i.i.i.i.us.peel, -8
  %i.cq = inttoptr i64 %i.cp to ptr               ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 28
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = and i32 %i.cs, 127
  switch i32 %i.ct, label %_ZNK5clang12LookupResult12getFoundDeclEv.exit.i.us.peel [
    i32 54, label %bb.w
    i32 55, label %bb.w
    i32 77, label %bb.w
    i32 79, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v, %bb.v, %bb.v
  %i.cu = call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cq) #29
  br label %_ZNK5clang12LookupResult12getFoundDeclEv.exit.i.us.peel

_ZNK5clang12LookupResult12getFoundDeclEv.exit.i.us.peel: ; preds = %bb.w, %bb.v
  %.0.i.i.i.us.peel = phi ptr [ %i.cu, %bb.w ], [ %i.cq, %bb.v ]
  %i.cv = call noundef ptr @_ZNK5clang4Decl25getParentFunctionOrMethodEb(ptr noundef nonnull align 8 dereferenceable(33) %.0.i.i.i.us.peel, i1 noundef zeroext false) #28
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.x, label %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.us.peel

bb.x:                                             ; preds = %_ZNK5clang12LookupResult12getFoundDeclEv.exit.i.us.peel, %bb.t
  %i.cx = call noundef ptr @_ZN5clang14ObjCMethodDecl17getClassInterfaceEv(ptr noundef nonnull align 8 dereferenceable(136) %i.cg) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.cy = call noundef ptr @_ZN5clang17ObjCInterfaceDecl22lookupInstanceVariableEPNS_14IdentifierInfoERPS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.cx, ptr noundef %.0.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.not54.i.us.peel = icmp eq ptr %i.cy, null
  br i1 %.not54.i.us.peel, label %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.us.peel, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 28
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = lshr i32 %i.da, 13
  %i.dc = and i32 %i.db, 3
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = ptrtoint ptr %i.cy to i64
  %i.df = or i64 %i.dd, %i.de                     ; 2 uses
  %i.dg = load i32, ptr %i.s, align 8, !tbaa !1150 ; 2 uses
  %i.dh = load i32, ptr %i.aa, align 4, !tbaa !1152
  %.not.i.i.i.i62.i.us.peel = icmp ult i32 %i.dg, %i.dh
  br i1 %.not.i.i.i.i62.i.us.peel, label %bb.aa, label %bb.z, !prof !1186

bb.z:                                             ; preds = %bb.y
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 %i.df)
  br label %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit63.i.us.peel

bb.aa:                                            ; preds = %bb.y
  %i.di = zext i32 %i.dg to i64
  %i.dj = load ptr, ptr %i.z, align 8, !tbaa !1142
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.di
  store i64 %i.df, ptr %i.dk, align 1
  %i.dl = load i32, ptr %i.s, align 8, !tbaa !1150
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.s, align 8, !tbaa !1150
  br label %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit63.i.us.peel

_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit63.i.us.peel: ; preds = %bb.aa, %bb.z
  store i32 2, ptr %i.l, align 8, !tbaa !1151
  call void @_ZN5clang12LookupResult11resolveKindEv(ptr noundef nonnull align 8 dereferenceable(168) %i.l)
  br label %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.us.peel

_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.us.peel: ; preds = %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit63.i.us.peel, %bb.x, %_ZNK5clang12LookupResult12getFoundDeclEv.exit.i.us.peel, %bb.s, %bb.r, %_ZN5clang12LookupResult5clearEv.exit.i.us.peel
  %.pr.us.peel = load i32, ptr %i.l, align 8, !tbaa !1151
  br label %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exit.us.peel

_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exit.us.peel: ; preds = %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.us.peel, %bb.u
  %i.dn = phi i32 [ %.pr.us.peel, %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.us.peel ], [ %i.cm, %bb.u ]
  switch i32 %i.dn, label %_ZN5clang14TypoCorrection18setCorrectionRangeEPNS_12CXXScopeSpecERKNS_19DeclarationNameInfoE.exit [
    i32 0, label %bb.ab
    i32 1, label %bb.ab
    i32 4, label %bb.ab
    i32 3, label %.split.us
    i32 2, label %.split.us
  ]

bb.ab:                                            ; preds = %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exit.us.peel, %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exit.us.peel, %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exit.us.peel
  %.not24.us.peel = icmp eq ptr %.022.ph.lcssa, null
  br i1 %.not24.us.peel, label %.critedge, label %.outer.split.us

.outer.split.us:                                  ; preds = %bb.ab
  store i8 1, ptr %i.u, align 4, !tbaa !1745
  %i.do = load ptr, ptr %i.k, align 8, !tbaa !1730, !nonnull !766, !align !767 ; 2 uses
  %i.dp = load ptr, ptr %i.m, align 8, !tbaa !1776
  %i.dq = load i8, ptr %i.n, align 8, !tbaa !1777, !range !769, !noundef !766
  %i.dr = trunc nuw i8 %i.dq to i1
  store i8 0, ptr %i.q, align 1, !tbaa !1297
  store i8 0, ptr %i.r, align 4, !tbaa !1298
  store i32 0, ptr %i.l, align 8, !tbaa !1151
  store i32 0, ptr %i.s, align 8, !tbaa !1150
  %i.ds = load ptr, ptr %i.t, align 8, !tbaa !1222 ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.us, label %_ZN5clang12LookupResult5clearEv.exit.i.us, label %bb.ac

bb.ac:                                            ; preds = %.outer.split.us
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.ds)
  br label %_ZN5clang12LookupResult5clearEv.exit.i.us

_ZN5clang12LookupResult5clearEv.exit.i.us:        ; preds = %bb.ac, %.outer.split.us
  store i8 0, ptr %i.v, align 2, !tbaa !1348
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store i64 %i.w, ptr %i.x, align 8, !tbaa !771
  store i8 0, ptr %i.y, align 1, !tbaa !1141
  %i.dt = call noundef zeroext i1 @_ZN5clang4Sema16LookupParsedNameERNS_12LookupResultEPNS_5ScopeEPNS_12CXXScopeSpecENS_8QualTypeEbb(ptr noundef nonnull align 8 dereferenceable(18640) %i.do, ptr noundef nonnull align 8 dereferenceable(168) %i.l, ptr noundef %i.dp, ptr noundef null, i64 0, i1 noundef zeroext false, i1 noundef zeroext %i.dr) ; 0 uses
  %i.du = call noundef ptr @_ZN5clang4Sema16getCurMethodDeclEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.do) #28 ; 4 uses
  %.not52.i.us = icmp eq ptr %i.du, null
  br i1 %.not52.i.us, label %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.us, label %bb.ad

bb.ad:                                            ; preds = %_ZN5clang12LookupResult5clearEv.exit.i.us
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.dw = load i24, ptr %i.dv, align 8
  %i.dx = and i24 %i.dw, 131072
  %.not67.i.us = icmp eq i24 %i.dx, 0
  br i1 %.not67.i.us, label %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.us, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dy = call noundef ptr @_ZN5clang14ObjCMethodDecl17getClassInterfaceEv(ptr noundef nonnull align 8 dereferenceable(136) %i.du) #28
  %.not53.i.us = icmp eq ptr %i.dy, null
  br i1 %.not53.i.us, label %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.us, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dz = load i32, ptr %i.s, align 8, !tbaa !1150
  %.not.i.i.i.i.us = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i.i.i.us, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ea = load i32, ptr %i.l, align 8, !tbaa !1151 ; 2 uses
  %i.eb = icmp eq i32 %i.ea, 2
  br i1 %i.eb, label %bb.ah, label %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exit.us

bb.ah:                                            ; preds = %bb.ag
  %i.ec = load ptr, ptr %i.z, align 8, !tbaa !1142 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ec, i64 8) ]
  %.0.copyload.i.i.i.i.i.i.i.i.us = load i64, ptr %i.ec, align 8
  %i.ed = and i64 %.0.copyload.i.i.i.i.i.i.i.i.us, -8
  %i.ee = inttoptr i64 %i.ed to ptr               ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 28
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = and i32 %i.eg, 127
  switch i32 %i.eh, label %_ZNK5clang12LookupResult12getFoundDeclEv.exit.i.us [
    i32 54, label %bb.ai
    i32 55, label %bb.ai
    i32 77, label %bb.ai
    i32 79, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah, %bb.ah, %bb.ah
  %i.ei = call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ee) #29
  br label %_ZNK5clang12LookupResult12getFoundDeclEv.exit.i.us

_ZNK5clang12LookupResult12getFoundDeclEv.exit.i.us: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.us = phi ptr [ %i.ei, %bb.ai ], [ %i.ee, %bb.ah ]
  %i.ej = call noundef ptr @_ZNK5clang4Decl25getParentFunctionOrMethodEb(ptr noundef nonnull align 8 dereferenceable(33) %.0.i.i.i.us, i1 noundef zeroext false) #28
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.aj, label %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.us

bb.aj:                                            ; preds = %_ZNK5clang12LookupResult12getFoundDeclEv.exit.i.us, %bb.af
  %i.el = call noundef ptr @_ZN5clang14ObjCMethodDecl17getClassInterfaceEv(ptr noundef nonnull align 8 dereferenceable(136) %i.du) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.em = call noundef ptr @_ZN5clang17ObjCInterfaceDecl22lookupInstanceVariableEPNS_14IdentifierInfoERPS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.el, ptr noundef %.0.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.not54.i.us = icmp eq ptr %i.em, null
  br i1 %.not54.i.us, label %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.us, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 28
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = lshr i32 %i.eo, 13
  %i.eq = and i32 %i.ep, 3
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = ptrtoint ptr %i.em to i64
  %i.et = or i64 %i.er, %i.es                     ; 2 uses
  %i.eu = load i32, ptr %i.s, align 8, !tbaa !1150 ; 2 uses
  %i.ev = load i32, ptr %i.aa, align 4, !tbaa !1152
  %.not.i.i.i.i62.i.us = icmp ult i32 %i.eu, %i.ev
  br i1 %.not.i.i.i.i62.i.us, label %bb.am, label %bb.al, !prof !1186

bb.al:                                            ; preds = %bb.ak
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 %i.et)
  br label %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit63.i.us

bb.am:                                            ; preds = %bb.ak
  %i.ew = zext i32 %i.eu to i64
  %i.ex = load ptr, ptr %i.z, align 8, !tbaa !1142
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ew
  store i64 %i.et, ptr %i.ey, align 1
  %i.ez = load i32, ptr %i.s, align 8, !tbaa !1150
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr %i.s, align 8, !tbaa !1150
  br label %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit63.i.us

_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit63.i.us: ; preds = %bb.am, %bb.al
  store i32 2, ptr %i.l, align 8, !tbaa !1151
  call void @_ZN5clang12LookupResult11resolveKindEv(ptr noundef nonnull align 8 dereferenceable(168) %i.l)
  br label %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.us

_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exitthread-pre-split.us: ; preds = %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit63.i.us, %bb.aj, %_ZNK5clang12LookupResult12getFoundDeclEv.exit.i.us, %bb.ae, %bb.ad, %_ZN5clang12LookupResult5clearEv.exit.i.us
  %.pr.us = load i32, ptr %i.l, align 8, !tbaa !1151
  br label %_ZL25LookupPotentialTypoResultRN5clang4SemaERNS_12LookupResultEPNS_14IdentifierInfoEPNS_5ScopeEPNS_12CXXScopeSpecEPNS_11DeclContextEbbb.exit.us

end_hunk_0
