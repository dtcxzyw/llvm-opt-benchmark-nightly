Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExprConstant?download=true
inline.NumInlined: 27743
inline.NumDeleted: 6656
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN12_GLOBAL__N_118ArrayExprEvaluator21VisitCXXConstructExprEPKN5clang16CXXConstructExprERKNS_6LValueEPNS1_7APValueENS1_8QualTypeE:bb.a
  store ptr %i.fi, ptr %10, align 8, !tbaa !595
  %i.fj = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %2, ptr %i.fj, align 8, !tbaa !652
  %i.fk = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %3, ptr %i.fk, align 8, !tbaa !696
  %i.fl = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119RecordExprEvaluator21VisitCXXConstructExprEPKN5clang16CXXConstructExprENS1_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %1, i64 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_18ArrayExprEvaluatorEE5ErrorEPKN5clang4ExprE.exit

_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_18ArrayExprEvaluatorEE5ErrorEPKN5clang4ExprE.exit: ; preds = %bb.aq, %bb.ap, %bb.am, %bb.ak, %bb.ar
  %.9 = phi i1 [ %i.fl, %bb.ar ], [ %.7, %bb.ak ], [ false, %bb.am ], [ false, %bb.ap ], [ false, %bb.aq ]
  ret i1 %.9
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL30CheckTrivialDefaultConstructorRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationEPKNS2_18CXXConstructorDeclEb(ptr noundef nonnull align 8 dereferenceable(984) %0, i32 %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 8388608
  %.not26 = icmp eq i32 %i.c, 0
  br i1 %.not26, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl20isDefaultConstructorEv(ptr noundef nonnull align 8 dereferenceable(176) %2) #24
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.f = load i16, ptr %i.e, align 4
  %i.g = and i16 %i.f, 3
  %i.h = icmp ne i16 %i.g, 0
  %or.cond = or i1 %3, %i.h
  br i1 %or.cond, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !651, !nonnull !480, !align !481
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2600
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !514, !nonnull !480, !align !481
  %i.m = load i64, ptr %i.l, align 8
  %i.n = and i64 %i.m, 8192
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @_ZN5clang6interp5State7CCEDiagENS_14SourceLocationEjj(ptr noundef nonnull align 8 dereferenceable(34) %0, i32 %1, i32 noundef 2431, i32 noundef 1) #24 ; 7 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN5clang18OptionalDiagnosticlsIPKNS_18CXXConstructorDeclEEERS0_RKT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !660  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIPKNS_18CXXConstructorDeclEEERKS0_RKT_.exit.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !661
  %i.s = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.r) ; 2 uses
  store ptr %i.s, ptr %i.o, align 8, !tbaa !660
  br label %_ZNK5clang17PartialDiagnosticlsIPKNS_18CXXConstructorDeclEEERKS0_RKT_.exit.i

_ZNK5clang17PartialDiagnosticlsIPKNS_18CXXConstructorDeclEEERKS0_RKT_.exit.i: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, %bb.f
  %i.t = phi ptr [ %i.s, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.p, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.t, align 8, !tbaa !673
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  store i8 2, ptr %i.x, align 1, !tbaa !508
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !660  ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i8, ptr %i.y, align 8, !tbaa !673  ; 2 uses
  %i.ab = add i8 %i.aa, 1                         ; 2 uses
  store i8 %i.ab, ptr %i.y, align 8, !tbaa !673
  %i.ac = zext i8 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ac
  store i64 0, ptr %i.ad, align 8, !tbaa !513
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.af = zext i8 %i.ab to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  store i8 2, ptr %i.ag, align 1, !tbaa !508
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !660 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i8, ptr %i.ah, align 8, !tbaa !673 ; 2 uses
  %i.ak = add i8 %i.aj, 1                         ; 2 uses
  store i8 %i.ak, ptr %i.ah, align 8, !tbaa !673
  %i.al = zext i8 %i.aj to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.al
  store i64 1, ptr %i.am, align 8, !tbaa !513
  %i.an = ptrtoint ptr %2 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.ap = zext i8 %i.ak to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  store i8 10, ptr %i.aq, align 1, !tbaa !508
  %i.ar = load ptr, ptr %i.o, align 8, !tbaa !660 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i8, ptr %i.ar, align 8, !tbaa !673 ; 2 uses
  %i.au = add i8 %i.at, 1
  store i8 %i.au, ptr %i.ar, align 8, !tbaa !673
  %i.av = zext i8 %i.at to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.av
  store i64 %i.an, ptr %i.aw, align 8, !tbaa !513
  br label %_ZN5clang18OptionalDiagnosticlsIPKNS_18CXXConstructorDeclEEERS0_RKT_.exit

_ZN5clang18OptionalDiagnosticlsIPKNS_18CXXConstructorDeclEEERS0_RKT_.exit: ; preds = %bb.e, %_ZNK5clang17PartialDiagnosticlsIPKNS_18CXXConstructorDeclEEERKS0_RKT_.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.ax, align 8, !tbaa !674
  %i.ay = tail call ptr @_ZN5clang6interp5State4NoteENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(34) %0, i32 %.sroa.0.0.copyload.i, i32 noundef 108) #24 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.az = tail call ptr @_ZN5clang6interp5State7CCEDiagENS_14SourceLocationEjj(ptr noundef nonnull align 8 dereferenceable(34) %0, i32 %1, i32 noundef 113, i32 noundef 0) #24 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %_ZN5clang18OptionalDiagnosticlsIPKNS_18CXXConstructorDeclEEERS0_RKT_.exit, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %_ZN5clang18OptionalDiagnosticlsIPKNS_18CXXConstructorDeclEEERS0_RKT_.exit ], [ true, %bb.g ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119RecordExprEvaluator21VisitCXXConstructExprEPKN5clang16CXXConstructExprENS1_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1279 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 128
  %.not52 = icmp eq i32 %i.f, 0
  br i1 %.not52, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.h = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.g) #24
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8 ; 3 uses
  %i.j = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit

bb.d:                                             ; preds = %bb.b
  %i.m = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -5
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !842
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit

_ZNK5clang13CXXMethodDecl9getParentEv.exit:       ; preds = %bb.c, %bb.d
  %.0.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.o, %bb.d ]
  %i.p = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 -36
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 128
  %.not53 = icmp eq i32 %i.r, 0
  br i1 %.not53, label %bb.e, label %bb.w

bb.e:                                             ; preds = %_ZNK5clang13CXXMethodDecl9getParentEv.exit
  %i.s = load i32, ptr %1, align 8
  %i.t = and i32 %i.s, 8388608
  %i.u = icmp ne i32 %i.t, 0                      ; 4 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !1281, !nonnull !480, !align !481
  %i.w = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #25
  %i.x = tail call fastcc noundef zeroext i1 @_ZL30CheckTrivialDefaultConstructorRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationEPKNS2_18CXXConstructorDeclEb(ptr noundef nonnull align 8 dereferenceable(984) %i.v, i32 %i.w, ptr noundef nonnull %i.c, i1 noundef zeroext %i.u)
  br i1 %i.x, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119RecordExprEvaluator18ZeroInitializationEPKN5clang4ExprENS1_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i64 %2)
  br label %bb.w

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1283, !nonnull !480, !align !481
  %i.ab = tail call fastcc noundef zeroext i1 @_ZL22handleDefaultInitValueN5clang8QualTypeERNS_7APValueE(i64 %2, ptr noundef nonnull align 8 dereferenceable(56) %i.aa)
  br label %bb.w

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !800
  %i.ac = call noundef ptr @_ZNK5clang12FunctionDecl7getBodyERPKS0_(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #24
  %i.ad = load ptr, ptr %0, align 8, !tbaa !1281, !nonnull !480, !align !481
  %i.ae = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #25
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !800
  %i.ag = call fastcc noundef zeroext i1 @_ZL22CheckConstexprFunctionRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationEPKNS2_12FunctionDeclES6_PKNS2_4StmtE(ptr noundef nonnull align 8 dereferenceable(984) %i.ad, i32 %i.ae, ptr noundef nonnull %i.c, ptr noundef %i.af, ptr noundef %i.ac)
  br i1 %i.ag, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.ah = load i32, ptr %1, align 8               ; 2 uses
  %i.ai = and i32 %i.ah, 524288
  %.not54 = icmp eq i32 %i.ai, 0
  %or.cond = or i1 %i.u, %.not54
  %i.aj = trunc i32 %i.ah to i16                  ; 3 uses
  br i1 %or.cond, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = and i16 %i.aj, 511
  %.not.i.i.i.i = icmp eq i16 %i.ak, 118
  %spec.select.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 48, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !821 ; 2 uses
  %i.an = load i16, ptr %i.am, align 8
  %i.ao = and i16 %i.an, 511
  %.not = icmp eq i16 %i.ao, 50
  br i1 %.not, label %bb.l, label %.thread47

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ap, align 8 ; 3 uses
  %i.aq = and i64 %.0.copyload.i.i.i.i.i.i, 4
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = inttoptr i64 %.0.copyload.i.i.i.i.i.i to ptr
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.at = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !905
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ax = phi ptr [ %i.as, %bb.m ], [ %i.aw, %bb.n ]
  %i.ay = call fastcc noundef zeroext i1 @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_119RecordExprEvaluatorEbJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.ax)
  br label %bb.v

bb.p:                                             ; preds = %bb.j
  br i1 %i.u, label %bb.q, label %.thread47

bb.q:                                             ; preds = %bb.p
  %i.az = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119RecordExprEvaluator18ZeroInitializationEPKN5clang4ExprENS1_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i64 %2)
  br i1 %i.az, label %..thread47_crit_edge, label %bb.v

..thread47_crit_edge:                             ; preds = %bb.q
  %.pre = load i16, ptr %1, align 8
  br label %.thread47

.thread47:                                        ; preds = %..thread47_crit_edge, %bb.k, %bb.p
  %i.ba = phi i16 [ %.pre, %..thread47_crit_edge ], [ %i.aj, %bb.k ], [ %i.aj, %bb.p ]
  %i.bb = and i16 %i.ba, 511
  %.not.i.i.i = icmp eq i16 %i.bb, 118
  %spec.select.v.i.i.i = select i1 %.not.i.i.i, i64 48, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !3338
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1284, !nonnull !480, !align !481
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !800 ; 3 uses
  %i.bj = load ptr, ptr %0, align 8, !tbaa !1281, !nonnull !480, !align !481 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1283, !nonnull !480, !align !481
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 280
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !605 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !607 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 136 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 160 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !606
  %i.bt = add i32 %i.bs, 1                        ; 3 uses
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !606
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 144 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !605 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 148
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !604
  %.not.i.i.i40 = icmp ult i32 %i.bv, %i.bx
  br i1 %.not.i.i.i40, label %bb.s, label %bb.r, !prof !681

bb.r:                                             ; preds = %.thread47
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i32 noundef %i.bt)
  br label %_ZN12_GLOBAL__N_19ScopeRAIIILNS_9ScopeKindE2EEC2ERNS_8EvalInfoE.exit

bb.s:                                             ; preds = %.thread47
  %i.by = zext i32 %i.bv to i64
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !603
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.by
  store i32 %i.bt, ptr %i.ca, align 1
  %i.cb = load i32, ptr %i.bu, align 8, !tbaa !605
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.bu, align 8, !tbaa !605
  br label %_ZN12_GLOBAL__N_19ScopeRAIIILNS_9ScopeKindE2EEC2ERNS_8EvalInfoE.exit

_ZN12_GLOBAL__N_19ScopeRAIIILNS_9ScopeKindE2EEC2ERNS_8EvalInfoE.exit: ; preds = %bb.r, %bb.s
  %i.cd = load ptr, ptr %i.bo, align 8, !tbaa !607 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 128
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !602
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 160 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !606
  %i.ci = add i32 %i.ch, 1                        ; 2 uses
  store i32 %i.ci, ptr %i.cg, align 8, !tbaa !606
  %.sroa.4.8.insert.ext.i = zext i32 %i.ci to i64
  %.sroa.4.8.insert.shift.i = shl nuw i64 %.sroa.4.8.insert.ext.i, 32
  %.sroa.2.8.insert.ext.i = zext i32 %i.cf to i64
  %.sroa.2.8.insert.insert.i = or disjoint i64 %.sroa.4.8.insert.shift.i, %.sroa.2.8.insert.ext.i ; 2 uses
  %i.cj = call fastcc noundef zeroext i1 @_ZL12EvaluateArgsN4llvm8ArrayRefIPKN5clang4ExprEEEN12_GLOBAL__N_17CallRefERNS6_8EvalInfoEPKNS1_12FunctionDeclEbPNS6_6LValueE(ptr nonnull %i.bc, i64 %i.bf, i64 %.sroa.2.8.insert.insert.i, ptr noundef nonnull align 8 dereferenceable(984) %i.bj, ptr noundef %i.bi, i1 noundef zeroext false, ptr noundef null)
  br i1 %i.cj, label %bb.t, label %_ZL21HandleConstructorCallPKN5clang4ExprERKN12_GLOBAL__N_16LValueEN4llvm8ArrayRefIS2_EEPKNS_18CXXConstructorDeclERNS3_8EvalInfoERNS_7APValueE.exit

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_19ScopeRAIIILNS_9ScopeKindE2EEC2ERNS_8EvalInfoE.exit
  %i.ck = call fastcc noundef zeroext i1 @_ZL21HandleConstructorCallPKN5clang4ExprERKN12_GLOBAL__N_16LValueENS3_7CallRefEPKNS_18CXXConstructorDeclERNS3_8EvalInfoERNS_7APValueE(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(130) %i.bh, ptr %i.bi, i64 %.sroa.2.8.insert.insert.i, ptr noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(984) %i.bj, ptr noundef nonnull align 8 dereferenceable(56) %i.bl), !inline_history !22
  br i1 %i.ck, label %_ZL21HandleConstructorCallPKN5clang4ExprERKN12_GLOBAL__N_16LValueEN4llvm8ArrayRefIS2_EEPKNS_18CXXConstructorDeclERNS3_8EvalInfoERNS_7APValueE.exit.thread, label %_ZL21HandleConstructorCallPKN5clang4ExprERKN12_GLOBAL__N_16LValueEN4llvm8ArrayRefIS2_EEPKNS_18CXXConstructorDeclERNS3_8EvalInfoERNS_7APValueE.exit

_ZL21HandleConstructorCallPKN5clang4ExprERKN12_GLOBAL__N_16LValueEN4llvm8ArrayRefIS2_EEPKNS_18CXXConstructorDeclERNS3_8EvalInfoERNS_7APValueE.exit.thread: ; preds = %bb.t
  %i.cl = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_19ScopeRAIIILNS_9ScopeKindE2EE7cleanupERNS_8EvalInfoEbj(ptr noundef nonnull align 8 dereferenceable(984) %i.bj, i1 noundef zeroext true, i32 noundef %i.bn), !inline_history !3336
  br label %_ZN12_GLOBAL__N_19ScopeRAIIILNS_9ScopeKindE2EED2Ev.exit

_ZL21HandleConstructorCallPKN5clang4ExprERKN12_GLOBAL__N_16LValueEN4llvm8ArrayRefIS2_EEPKNS_18CXXConstructorDeclERNS3_8EvalInfoERNS_7APValueE.exit: ; preds = %_ZN12_GLOBAL__N_19ScopeRAIIILNS_9ScopeKindE2EEC2ERNS_8EvalInfoE.exit, %bb.t
  %.not.i = icmp eq i32 %i.bn, -1
  br i1 %.not.i, label %_ZN12_GLOBAL__N_19ScopeRAIIILNS_9ScopeKindE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZL21HandleConstructorCallPKN5clang4ExprERKN12_GLOBAL__N_16LValueEN4llvm8ArrayRefIS2_EEPKNS_18CXXConstructorDeclERNS3_8EvalInfoERNS_7APValueE.exit
  %i.cm = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_19ScopeRAIIILNS_9ScopeKindE2EE7cleanupERNS_8EvalInfoEbj(ptr noundef nonnull align 8 dereferenceable(984) %i.bj, i1 noundef zeroext false, i32 noundef %i.bn), !inline_history !3337 ; 0 uses
  br label %_ZN12_GLOBAL__N_19ScopeRAIIILNS_9ScopeKindE2EED2Ev.exit

_ZN12_GLOBAL__N_19ScopeRAIIILNS_9ScopeKindE2EED2Ev.exit: ; preds = %_ZL21HandleConstructorCallPKN5clang4ExprERKN12_GLOBAL__N_16LValueEN4llvm8ArrayRefIS2_EEPKNS_18CXXConstructorDeclERNS3_8EvalInfoERNS_7APValueE.exit.thread, %_ZL21HandleConstructorCallPKN5clang4ExprERKN12_GLOBAL__N_16LValueEN4llvm8ArrayRefIS2_EEPKNS_18CXXConstructorDeclERNS3_8EvalInfoERNS_7APValueE.exit, %bb.u
  %.0.i51 = phi i1 [ %i.cl, %_ZL21HandleConstructorCallPKN5clang4ExprERKN12_GLOBAL__N_16LValueEN4llvm8ArrayRefIS2_EEPKNS_18CXXConstructorDeclERNS3_8EvalInfoERNS_7APValueE.exit.thread ], [ false, %_ZL21HandleConstructorCallPKN5clang4ExprERKN12_GLOBAL__N_16LValueEN4llvm8ArrayRefIS2_EEPKNS_18CXXConstructorDeclERNS3_8EvalInfoERNS_7APValueE.exit ], [ false, %bb.u ]
  %i.cn = load ptr, ptr %i.bo, align 8, !tbaa !607
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 144 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !605
  %i.cq = add i32 %i.cp, -1
  store i32 %i.cq, ptr %i.co, align 8, !tbaa !605
  br label %bb.v

bb.v:                                             ; preds = %bb.o, %bb.q, %bb.i, %_ZN12_GLOBAL__N_19ScopeRAIIILNS_9ScopeKindE2EED2Ev.exit
  %.1 = phi i1 [ %.0.i51, %_ZN12_GLOBAL__N_19ScopeRAIIILNS_9ScopeKindE2EED2Ev.exit ], [ false, %bb.i ], [ %i.ay, %bb.o ], [ false, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.w

bb.w:                                             ; preds = %bb.g, %bb.h, %bb.v, %bb.a, %_ZNK5clang13CXXMethodDecl9getParentEv.exit
  %.3 = phi i1 [ false, %bb.a ], [ false, %_ZNK5clang13CXXMethodDecl9getParentEv.exit ], [ %i.y, %bb.g ], [ %i.ab, %bb.h ], [ %.1, %bb.v ]
  ret i1 %.3
}

declare noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl20isDefaultConstructorEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119RecordExprEvaluator18ZeroInitializationEPKN5clang4ExprENS1_8QualTypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, i64 %2) unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.clang::APValue", align 8    ; 10 uses
  %4 = alloca %"class.clang::APValue", align 8    ; 7 uses
  %5 = alloca %"struct.(anonymous namespace)::LValue", align 8 ; 12 uses
  %6 = alloca %"class.clang::APValue", align 8    ; 10 uses
  %7 = alloca %"class.clang::APValue", align 8    ; 7 uses
  %8 = alloca %"class.clang::ImplicitValueInitExpr", align 8 ; 10 uses
  %i.a = and i64 %2, -16
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !511
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !508
  %i.e = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !511
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !638  ; 2 uses
  %i.j = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #24 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.j, null
  %spec.select.i.i.i = select i1 %.not.not.i.i.i, ptr %i.i, ptr %i.j ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 28
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = and i32 %i.l, 128
  %.not31 = icmp eq i32 %i.m, 0
  br i1 %.not31, label %bb.b, label %_ZN5clang18OptionalDiagnosticlsIPKNS_10RecordDeclEEERS0_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 72
  %i.o = load i16, ptr %i.n, align 8
  %.mask.i = and i16 %i.o, -8192
  %i.p = icmp eq i16 %.mask.i, 16384
  br i1 %i.p, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.q = tail call ptr @_ZNK5clang10RecordDecl11field_beginEv(ptr noundef nonnull align 8 dereferenceable(128) %spec.select.i.i.i) #24 ; 2 uses
  %.not3234 = icmp eq ptr %i.q, null
  br i1 %.not3234, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit
  %.sroa.018.035 = phi ptr [ %.sroa.018.2, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit ], [ %i.q, %bb.c ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.018.035, i64 68
  %i.s = load i32, ptr %i.r, align 4
  %i.t = trunc i32 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.018.035, i64 40
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.u, align 8
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  %i.v = select i1 %i.t, i1 %.not.i, i1 false
  br i1 %i.v, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.018.035, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i.i, -8     ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %.not1.i.i = icmp eq i64 %i.x, 0
  br i1 %.not1.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.018.1 = phi ptr [ %i.ag, %bb.e ], [ %i.y, %bb.d ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.018.1, i64 28
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, 127
  %i.ac = add nsw i32 %i.ab, -50
  %i.ad = icmp ult i32 %i.ac, 3
  br i1 %i.ad, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.018.1, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ae, align 8
  %i.af = and i64 %.0.copyload.i.i.i.i.i.i.i, -8  ; 2 uses
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %.not.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, label %.lr.ph.i.i, !llvm.loop !9

_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit: ; preds = %.lr.ph.i.i, %bb.e, %bb.d
  %.sroa.018.2 = phi ptr [ %i.y, %bb.d ], [ %i.ag, %bb.e ], [ %.sroa.018.1, %.lr.ph.i.i ] ; 2 uses
  %.not32 = icmp eq ptr %.sroa.018.2, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !3339

._crit_edge:                                      ; preds = %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 0, ptr %4, align 8, !tbaa !631
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = and i8 %i.ai, -2
  store i8 %i.aj, ptr %i.ah, align 4
  store i32 0, ptr %3, align 8, !tbaa !631
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 4
  %i.am = and i8 %i.al, -2
  store i8 %i.am, ptr %i.ak, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_ZN5clang7APValue9UnionDataC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #24
  store i32 12, ptr %3, align 8, !tbaa !631
  call void @_ZN5clang7APValue8setUnionEPKNS_9FieldDeclERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(56) %4) #24
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1283, !nonnull !480, !align !481
  %i.aq = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, ptr noundef nonnull align 8 dereferenceable(56) %3) #24 ; 0 uses
  %i.ar = load i32, ptr %3, align 8, !tbaa !631
  %switch.i = icmp ult i32 %i.ar, 2
  br i1 %switch.i, label %_ZN5clang7APValueD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #24
  br label %_ZN5clang7APValueD2Ev.exit

_ZN5clang7APValueD2Ev.exit:                       ; preds = %._crit_edge, %bb.f
  %i.as = load i32, ptr %4, align 8, !tbaa !631
  %switch.i7 = icmp ult i32 %i.as, 2
  br i1 %switch.i7, label %_ZN5clang7APValueD2Ev.exit8, label %bb.g

bb.g:                                             ; preds = %_ZN5clang7APValueD2Ev.exit
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %4) #24
  br label %_ZN5clang7APValueD2Ev.exit8

_ZN5clang7APValueD2Ev.exit8:                      ; preds = %_ZN5clang7APValueD2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN5clang18OptionalDiagnosticlsIPKNS_10RecordDeclEEERS0_RKT_.exit

.critedge:                                        ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1284, !nonnull !480, !align !481 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(130) %5, ptr noundef nonnull readonly align 8 dereferenceable(130) %i.au, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.av, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.aw, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 4 uses
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !603
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  store i32 0, ptr %i.ba, align 8, !tbaa !605
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 60
  store i32 8, ptr %i.bb, align 4, !tbaa !604
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 56 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !605 ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.bd, 0
  %i.be = icmp eq ptr %5, %i.au
  %or.cond.i.i.i = or i1 %i.be, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN12_GLOBAL__N_16LValueC2ERKS0_.exit, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.bf = icmp ugt i32 %i.bd, 8
  br i1 %i.bf, label %_ZSt4copyIPKN5clang7APValue15LValuePathEntryEPS2_ET0_T_S7_S6_.exit30.i.i.i.i, label %_ZSt4copyIPKN5clang7APValue15LValuePathEntryEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i

_ZSt4copyIPKN5clang7APValue15LValuePathEntryEPS2_ET0_T_S7_S6_.exit30.i.i.i.i: ; preds = %bb.h
  %i.bg = zext i32 %i.bd to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %i.ax, ptr noundef nonnull %i.az, i64 noundef %i.bg, i64 noundef 8) #24
  %.pre.i.i.i = load i32, ptr %i.bc, align 8, !tbaa !605 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i, label %_ZSt4copyIPKN5clang7APValue15LValuePathEntryEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN5clang7APValue15LValuePathEntryEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i

_ZSt4copyIPKN5clang7APValue15LValuePathEntryEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN5clang7APValue15LValuePathEntryEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4copyIPKN5clang7APValue15LValuePathEntryEPS2_ET0_T_S7_S6_.exit30.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.ax, align 8, !tbaa !603
  br label %_ZSt4copyIPKN5clang7APValue15LValuePathEntryEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i

end_hunk_0
