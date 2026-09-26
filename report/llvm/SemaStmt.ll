Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaStmt?download=true
inline.NumInlined: 9372
inline.NumDeleted: 4766
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5clanglsIPNS_9LabelDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_:bb.a
  store i8 %i.s, ptr %i.p, align 8, !tbaa !892
  %i.t = zext i8 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.t
  store i64 %i.k, ptr %i.u, align 8, !tbaa !751
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.x = load i8, ptr %i.w, align 4, !tbaa !894, !range !746, !noundef !743
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.z = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !904 ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !906
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(168) %i.ab) #27, !inline_history !1
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit: ; preds = %bb.d, %bb.e
  %i.ag = phi ptr [ %i.af, %bb.e ], [ null, %bb.d ]
  store ptr %i.ag, ptr %2, align 8, !tbaa !908
  %i.ah = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.aj = load i32, ptr %i.v, align 8, !tbaa !747
  %i.ak = zext i32 %i.aj to i64
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !911
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !912
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !879 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIPNS_9LabelDeclEEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !880
  %i.as = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ar) ; 2 uses
  store ptr %i.as, ptr %i.an, align 8, !tbaa !879
  br label %_ZNK5clang17PartialDiagnosticlsIPNS_9LabelDeclEEERKS0_RKT_.exit

_ZNK5clang17PartialDiagnosticlsIPNS_9LabelDeclEEERKS0_RKT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.at = phi ptr [ %i.as, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.ap, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 2 uses
  %i.au = ptrtoint ptr %i.ao to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.aw = load i8, ptr %i.at, align 8, !tbaa !892
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  store i8 10, ptr %i.ay, align 1, !tbaa !750
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !879 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i8, ptr %i.az, align 8, !tbaa !892 ; 2 uses
  %i.bc = add i8 %i.bb, 1
  store i8 %i.bc, ptr %i.az, align 8, !tbaa !892
  %i.bd = zext i8 %i.bb to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bd
  store i64 %i.au, ptr %i.be, align 8, !tbaa !751
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsIPNS_9LabelDeclEEERKS0_RKT_.exit, %_ZN5clanglsIPNS_9LabelDeclEEERKNS_8SemaBase20ImmediateDiagBuilderES6_RKT_.exit
  ret ptr %0
}

declare void @_ZN5clang4Sema34setFunctionHasBranchProtectedScopeEv(ptr noundef nonnull align 8 dereferenceable(18640)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN5clang4Sema19BuildAttributedStmtENS_14SourceLocationEN4llvm8ArrayRefIPKNS_4AttrEEEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr %2, i64 %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %.idx = shl nuw nsw i64 %3, 3
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not21 = icmp eq i64 %3, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.022 = phi ptr [ %i.g, %bb.d ], [ %2, %bb.a ]  ; 2 uses
  %i.b = load ptr, ptr %.022, align 8, !tbaa !1288 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.d = load i16, ptr %i.c, align 4
  %i.e = icmp eq i16 %i.d, 57
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = tail call noundef zeroext i1 @_ZN5clang4Sema27checkAndRewriteMustTailAttrEPNS_4StmtERKNS_4AttrE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(39) %i.b)
  br i1 %i.f, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5clang4Sema22setFunctionHasMustTailEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.022, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !742, !nonnull !743, !align !744
  %i.j = tail call noundef ptr @_ZN5clang14AttributedStmt6CreateERKNS_10ASTContextENS_14SourceLocationEN4llvm8ArrayRefIPKNS_4AttrEEEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(23904) %i.i, i32 %1, ptr %2, i64 %3, ptr noundef %4) #27
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge
  %.sroa.018.1.in = phi ptr [ %i.j, %._crit_edge ], [ %4, %bb.b ]
  %.sroa.018.1 = ptrtoint ptr %.sroa.018.1.in to i64
  ret i64 %.sroa.018.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema27checkAndRewriteMustTailAttrEPNS_4StmtERKNS_4AttrE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(39) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1290 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !873
  %i.e = tail call noundef zeroext i1 @_ZNK5clang11DeclContext18isDependentContextEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d) #27
  br i1 %i.e, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i24, ptr %i.b, align 8
  %i.g = and i24 %i.f, 32768
  %.not11 = icmp eq i24 %i.g, 0
  br i1 %.not11, label %.thread, label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_ZN5clang4Sema17checkMustTailAttrEPKNS_4StmtERKNS_4AttrE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(39) %2)
  br i1 %i.h, label %"_ZZN5clang4Sema27checkAndRewriteMustTailAttrEPNS_4StmtERKNS_4AttrEENK3$_0clEPNS_4ExprE.exit", label %bb.q

.thread:                                          ; preds = %bb.c
  %i.i = tail call noundef zeroext i1 @_ZN5clang4Sema17checkMustTailAttrEPKNS_4StmtERKNS_4AttrE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(39) %2)
  br i1 %i.i, label %.lr.ph.i.i, label %bb.q

.lr.ph.i.i:                                       ; preds = %.thread, %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i
  %.0810.i.i = phi ptr [ %.1.i.i, %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i ], [ %i.b, %.thread ] ; 8 uses
  %i.j = load i16, ptr %.0810.i.i, align 8        ; 2 uses
  %i.k = and i16 %i.j, 511                        ; 2 uses
  %i.l = icmp eq i16 %i.k, 81
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.m = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i) #27
  br label %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.n = and i16 %i.j, 510
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i = icmp eq i16 %i.n, 62
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i.i.i, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i.i.i

_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i.i.i: ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !822  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %.0810.i.i
  br i1 %.not.i.i.i, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i.i.i, label %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit.i

_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i.i.i: ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i.i.i, %bb.f
  switch i16 %i.k, label %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit.i [
    i16 50, label %bb.g
    i16 120, label %bb.j
  ]

bb.g:                                             ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8 ; 3 uses
  %i.r = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit.i

bb.i:                                             ; preds = %bb.g
  %i.u = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1294
  br label %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit.i

bb.j:                                             ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !812
  br label %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit.i

_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit.i: ; preds = %bb.j, %bb.i, %bb.h, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i.i.i, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i.i.i, %bb.e
  %.1.i2.i = phi ptr [ %i.m, %bb.e ], [ %i.t, %bb.h ], [ %i.p, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i.i.i ], [ %i.x, %bb.i ], [ %i.z, %bb.j ], [ %.0810.i.i, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i.i.i ] ; 15 uses
  %i.aa = load i16, ptr %.1.i2.i, align 8
  %i.ab = and i16 %i.aa, 511
  %i.ac = add nsw i16 %i.ab, -119
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.ac, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit.i
  %i.ad = load i32, ptr %.1.i2.i, align 8         ; 2 uses
  %i.ae = and i32 %i.ad, 524288
  %.not.i1.i = icmp eq i32 %i.ae, 0
  %i.af = and i32 %i.ad, 511
  %i.ag = icmp eq i32 %i.af, 118
  %or.cond.i.i = or i1 %.not.i1.i, %i.ag
  br i1 %or.cond.i.i, label %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.i2.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1295
  switch i32 %i.ai, label %bb.m [
    i32 1, label %.thread30.i.i
    i32 0, label %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i
  ]

.thread30.i.i:                                    ; preds = %bb.l
  %3 = getelementptr inbounds nuw i8, ptr %.1.i2.i, i64 40 ; 2 uses
  br label %.split.i.i

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %.1.i2.i, i64 48 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !816
  %i.al = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27
  br i1 %i.al, label %bb.n, label %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i

bb.n:                                             ; preds = %bb.m
  %.pre.i.i = load i16, ptr %.1.i2.i, align 8
  %.pre.fr.i.i = freeze i16 %.pre.i.i
  %.pre24.i.i = and i16 %.pre.fr.i.i, 511
  %i.am = icmp eq i16 %.pre24.i.i, 118
  %4 = getelementptr inbounds nuw i8, ptr %.1.i2.i, i64 40 ; 2 uses
  %spec.select.i = select i1 %i.am, ptr %i.aj, ptr %4
  br label %.split.i.i

.split.i.i:                                       ; preds = %bb.n, %.thread30.i.i
  %5 = phi ptr [ %3, %.thread30.i.i ], [ %4, %bb.n ]
  %6 = phi ptr [ %3, %.thread30.i.i ], [ %spec.select.i, %bb.n ]
  %i.an = load ptr, ptr %6, align 8, !tbaa !816
  %i.ao = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #27
  br i1 %i.ao, label %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i, label %bb.o

bb.o:                                             ; preds = %.split.i.i
  %i.ap = load i32, ptr %.1.i2.i, align 8         ; 2 uses
  %i.aq = and i32 %i.ap, 2097152
  %.not23.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not23.i.i, label %bb.p, label %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ar = and i32 %i.ap, 511
  %.not.i.i.i12.i.i = icmp eq i32 %i.ar, 118      ; 2 uses
  %spec.select.i.i.i.i.i13.i.i = select i1 %.not.i.i.i12.i.i, ptr %.1.i2.i, ptr null
  %i.as = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i13.i.i, i64 48
  %spec.select.i.i.i14.i.i = select i1 %.not.i.i.i12.i.i, ptr %i.as, ptr %5
  %i.at = load ptr, ptr %spec.select.i.i.i14.i.i, align 8, !tbaa !816
  br label %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i

_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i: ; preds = %bb.p, %bb.o, %.split.i.i, %bb.m, %bb.l, %bb.k, %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit.i
  %.1.i.i = phi ptr [ %i.at, %bb.p ], [ %.1.i2.i, %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit.i ], [ %.1.i2.i, %bb.m ], [ %.1.i2.i, %bb.k ], [ %.1.i2.i, %bb.l ], [ %.1.i2.i, %bb.o ], [ %.1.i2.i, %.split.i.i ] ; 3 uses
  %.not.i.i = icmp eq ptr %.1.i.i, %.0810.i.i
  br i1 %.not.i.i, label %"_ZZN5clang4Sema27checkAndRewriteMustTailAttrEPNS_4StmtERKNS_4AttrEENK3$_0clEPNS_4ExprE.exit", label %.lr.ph.i.i, !llvm.loop !1781

"_ZZN5clang4Sema27checkAndRewriteMustTailAttrEPNS_4StmtERKNS_4AttrEENK3$_0clEPNS_4ExprE.exit": ; preds = %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i, %bb.d
  %.08.lcssa.i.i = phi ptr [ null, %bb.d ], [ %.1.i.i, %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i ]
  store ptr %.08.lcssa.i.i, ptr %i.a, align 8, !tbaa !1290
  br label %bb.q

bb.q:                                             ; preds = %.thread, %bb.d, %bb.a, %bb.c, %"_ZZN5clang4Sema27checkAndRewriteMustTailAttrEPNS_4StmtERKNS_4AttrEENK3$_0clEPNS_4ExprE.exit"
  %.0 = phi i1 [ true, %bb.a ], [ true, %"_ZZN5clang4Sema27checkAndRewriteMustTailAttrEPNS_4StmtERKNS_4AttrEENK3$_0clEPNS_4ExprE.exit" ], [ true, %bb.c ], [ false, %bb.d ], [ false, %.thread ]
  ret i1 %.0
}

declare void @_ZN5clang4Sema22setFunctionHasMustTailEv(ptr noundef nonnull align 8 dereferenceable(18640)) local_unnamed_addr #2

declare noundef ptr @_ZN5clang14AttributedStmt6CreateERKNS_10ASTContextENS_14SourceLocationEN4llvm8ArrayRefIPKNS_4AttrEEEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(23904), i32, ptr, i64, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN5clang4Sema19ActOnAttributedStmtERKNS_16ParsedAttributesEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.1258", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !758
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !759
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !1296
  call void @_ZN5clang4Sema21ProcessStmtAttributesEPNS_4StmtERKNS_16ParsedAttributesERN4llvm15SmallVectorImplIPKNS_4AttrEEE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %3) #27
  %i.d = load i32, ptr %i.b, align 8, !tbaa !759  ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN5clang4Sema19BuildAttributedStmtENS_14SourceLocationEN4llvm8ArrayRefIPKNS_4AttrEEEPNS_4StmtE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !747
  %i.e = load ptr, ptr %3, align 8, !tbaa !758    ; 3 uses
  %i.f = zext i32 %i.d to i64                     ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.022.i = phi ptr [ %i.m, %bb.e ], [ %i.e, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.022.i, align 8, !tbaa !1288 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.j = load i16, ptr %i.i, align 4
  %i.k = icmp eq i16 %i.j, 57
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = call noundef zeroext i1 @_ZN5clang4Sema27checkAndRewriteMustTailAttrEPNS_4StmtERKNS_4AttrE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(39) %i.h)
  br i1 %i.l, label %bb.d, label %_ZN5clang4Sema19BuildAttributedStmtENS_14SourceLocationEN4llvm8ArrayRefIPKNS_4AttrEEEPNS_4StmtE.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZN5clang4Sema22setFunctionHasMustTailEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.022.i, i64 8 ; 2 uses
  %.not.i6 = icmp eq ptr %i.m, %i.g
  br i1 %.not.i6, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !742, !nonnull !743, !align !744
  %i.p = call noundef ptr @_ZN5clang14AttributedStmt6CreateERKNS_10ASTContextENS_14SourceLocationEN4llvm8ArrayRefIPKNS_4AttrEEEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(23904) %i.o, i32 %.sroa.0.0.copyload.i, ptr %i.e, i64 %i.f, ptr noundef %2) #27
  br label %_ZN5clang4Sema19BuildAttributedStmtENS_14SourceLocationEN4llvm8ArrayRefIPKNS_4AttrEEEPNS_4StmtE.exit

_ZN5clang4Sema19BuildAttributedStmtENS_14SourceLocationEN4llvm8ArrayRefIPKNS_4AttrEEEPNS_4StmtE.exit: ; preds = %bb.c, %bb.a, %._crit_edge.i
  %.sroa.07.0.in = phi ptr [ %2, %bb.a ], [ %i.p, %._crit_edge.i ], [ %2, %bb.c ]
  %i.q = load ptr, ptr %3, align 8, !tbaa !758    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %_ZN4llvm11SmallVectorIPKN5clang4AttrELj1EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5clang4Sema19BuildAttributedStmtENS_14SourceLocationEN4llvm8ArrayRefIPKNS_4AttrEEEPNS_4StmtE.exit
  call void @free(ptr noundef %i.q) #27
  br label %_ZN4llvm11SmallVectorIPKN5clang4AttrELj1EED2Ev.exit

_ZN4llvm11SmallVectorIPKN5clang4AttrELj1EED2Ev.exit: ; preds = %_ZN5clang4Sema19BuildAttributedStmtENS_14SourceLocationEN4llvm8ArrayRefIPKNS_4AttrEEEPNS_4StmtE.exit, %bb.f
  %.sroa.07.0 = ptrtoint ptr %.sroa.07.0.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i64 %.sroa.07.0
}

declare void @_ZN5clang4Sema21ProcessStmtAttributesEPNS_4StmtERKNS_16ParsedAttributesERN4llvm15SmallVectorImplIPKNS_4AttrEEE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK5clang11DeclContext18isDependentContextEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema17checkMustTailAttrEPKNS_4StmtERKNS_4AttrE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(39) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %6 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %struct.FuncType, align 8           ; 10 uses
  %8 = alloca %struct.FuncType, align 8           ; 12 uses
  %9 = alloca %class.anon.1290, align 8           ; 7 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %11 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %13 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %14 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %15 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %16 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %17 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %18 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %19 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %20 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %21 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %22 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %23 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  %24 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %25 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 7 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %26 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %27 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %28 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %29 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 7 uses
  %i.q = alloca i8, align 1                       ; 4 uses
  %30 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.r = alloca ptr, align 8                      ; 4 uses
  %31 = alloca %"class.clang::PartialDiagnostic", align 8 ; 6 uses
  %32 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.s = alloca i8, align 1                       ; 4 uses
  %33 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %34 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.t = alloca i8, align 1                       ; 4 uses
  %35 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %36 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.u = alloca ptr, align 8                      ; 4 uses
  %37 = alloca %"class.clang::InitializedEntity", align 8 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1290 ; 4 uses
  %.not11.i.i = icmp eq ptr %i.w, null
  br i1 %.not11.i.i, label %"_ZZN5clang4Sema17checkMustTailAttrEPKNS_4StmtERKNS_4AttrEENK3$_1clEPKNS_4ExprE.exit.thread", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i
  %.01012.i.i = phi ptr [ %.1.i.i, %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i ], [ %i.w, %bb.a ] ; 19 uses
  %i.x = load i16, ptr %.01012.i.i, align 8
  %i.y = and i16 %i.x, 511
  switch i16 %i.y, label %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i [
    i16 20, label %bb.b
    i16 4, label %bb.c
    i16 59, label %bb.e
    i16 79, label %bb.g
    i16 18, label %bb.i
  ]

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1298
  br label %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ab = load i32, ptr %.01012.i.i, align 8
  %i.ac = and i32 %i.ab, 16252928
  %i.ad = icmp eq i32 %i.ac, 6291456
  br i1 %i.ad, label %bb.d, label %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1300
  br label %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 16
  %i.ah = load i32, ptr %i.ag, align 8            ; 3 uses
  %i.ai = and i32 %i.ah, 1073709056
  %i.aj = icmp eq i32 %i.ai, 1073709056
  br i1 %i.aj, label %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 32
  %i.al = lshr i32 %i.ah, 30
  %.lobit.i.i.i.i = and i32 %i.al, 1
  %i.am = lshr i32 %i.ah, 15
  %i.an = and i32 %i.am, 32767
  %i.ao = add nuw nsw i32 %.lobit.i.i.i.i, %i.an
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !822
  br label %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !822
  %i.au = load i24, ptr %i.at, align 8
  %i.av = and i24 %i.au, 196608
  %.not70.i.i = icmp eq i24 %i.av, 0
  br i1 %.not70.i.i, label %bb.h, label %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i

bb.h:                                             ; preds = %bb.g
  %i.aw = load i24, ptr %.01012.i.i, align 8
  %i.ax = and i24 %i.aw, 524288
  %.not.i.i3.i = icmp eq i24 %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = select i1 %.not.i.i3.i, ptr %i.bb, ptr %i.az
  br label %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bd = load i32, ptr %.01012.i.i, align 8
  %i.be = and i32 %i.bd, 25165824
  %or.cond.not.i.i = icmp eq i32 %i.be, 25165824
  br i1 %or.cond.not.i.i, label %_ZN5clang14PredefinedExpr15getFunctionNameEv.exit.i.i, label %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i

_ZN5clang14PredefinedExpr15getFunctionNameEv.exit.i.i: ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !822 ; 2 uses
  %.not42.i.i = icmp eq ptr %i.bg, null
  %spec.select.i.i = select i1 %.not42.i.i, ptr %.01012.i.i, ptr %i.bg
  br label %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i

_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i: ; preds = %_ZN5clang14PredefinedExpr15getFunctionNameEv.exit.i.i, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph.i.i
  %.8.i.i = phi ptr [ %i.aa, %bb.b ], [ %i.bc, %bb.h ], [ %i.af, %bb.d ], [ %i.ar, %bb.f ], [ %.01012.i.i, %.lr.ph.i.i ], [ %.01012.i.i, %bb.c ], [ %.01012.i.i, %bb.e ], [ %.01012.i.i, %bb.g ], [ %.01012.i.i, %bb.i ], [ %spec.select.i.i, %_ZN5clang14PredefinedExpr15getFunctionNameEv.exit.i.i ] ; 7 uses
  %i.bh = load i16, ptr %.8.i.i, align 8          ; 2 uses
  %i.bi = and i16 %i.bh, 511                      ; 2 uses
  %i.bj = icmp eq i16 %i.bi, 81
  br i1 %i.bj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i
  %i.bk = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %.8.i.i) #27
  br label %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit.i

bb.k:                                             ; preds = %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i
  %i.bl = and i16 %i.bh, 510
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i = icmp eq i16 %i.bl, 62
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i.i.i, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i.i.i

_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i.i.i: ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !822 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bn, %.8.i.i
  br i1 %.not.i.i.i, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i.i.i, label %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit.i

_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i.i.i: ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i.i.i, %bb.k
  switch i16 %i.bi, label %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit.i [
    i16 50, label %bb.l
    i16 120, label %bb.o
  ]

bb.l:                                             ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bo, align 8 ; 3 uses
  %i.bp = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.br = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit.i

bb.n:                                             ; preds = %bb.l
  %i.bs = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1294
  br label %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit.i

bb.o:                                             ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !812
  br label %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit.i

_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit.i: ; preds = %bb.o, %bb.n, %bb.m, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i.i.i, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i.i.i, %bb.j
  %.1.i2.i = phi ptr [ %i.bk, %bb.j ], [ %i.br, %bb.m ], [ %i.bn, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i.i.i ], [ %i.bv, %bb.n ], [ %i.bx, %bb.o ], [ %.8.i.i, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i.i.i ] ; 15 uses
  %i.by = load i16, ptr %.1.i2.i, align 8
  %i.bz = and i16 %i.by, 511
  %i.ca = add nsw i16 %i.bz, -119
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.ca, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit.i
  %i.cb = load i32, ptr %.1.i2.i, align 8         ; 2 uses
  %i.cc = and i32 %i.cb, 524288
  %.not.i1.i = icmp eq i32 %i.cc, 0
  %i.cd = and i32 %i.cb, 511
  %i.ce = icmp eq i32 %i.cd, 118
  %or.cond.i.i = or i1 %.not.i1.i, %i.ce
  br i1 %or.cond.i.i, label %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %.1.i2.i, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !1295
  switch i32 %i.cg, label %bb.r [
    i32 1, label %.thread30.i.i
    i32 0, label %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i
  ]

.thread30.i.i:                                    ; preds = %bb.q
  %38 = getelementptr inbounds nuw i8, ptr %.1.i2.i, i64 40 ; 2 uses
  br label %.split.i.i

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %.1.i2.i, i64 48 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !816
  %i.cj = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #27
  br i1 %i.cj, label %bb.s, label %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i

bb.s:                                             ; preds = %bb.r
  %.pre.i.i = load i16, ptr %.1.i2.i, align 8
  %.pre.fr.i.i = freeze i16 %.pre.i.i
  %.pre24.i.i = and i16 %.pre.fr.i.i, 511
  %i.ck = icmp eq i16 %.pre24.i.i, 118
  %39 = getelementptr inbounds nuw i8, ptr %.1.i2.i, i64 40 ; 2 uses
  %spec.select.i = select i1 %i.ck, ptr %i.ch, ptr %39
  br label %.split.i.i

.split.i.i:                                       ; preds = %bb.s, %.thread30.i.i
  %40 = phi ptr [ %38, %.thread30.i.i ], [ %39, %bb.s ]
  %41 = phi ptr [ %38, %.thread30.i.i ], [ %spec.select.i, %bb.s ]
  %i.cl = load ptr, ptr %41, align 8, !tbaa !816
  %i.cm = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #27
  br i1 %i.cm, label %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i, label %bb.t

bb.t:                                             ; preds = %.split.i.i
  %i.cn = load i32, ptr %.1.i2.i, align 8         ; 2 uses
  %i.co = and i32 %i.cn, 2097152
  %.not23.i.i = icmp eq i32 %i.co, 0
  br i1 %.not23.i.i, label %bb.u, label %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i

bb.u:                                             ; preds = %bb.t
  %i.cp = and i32 %i.cn, 511
  %.not.i.i.i12.i.i = icmp eq i32 %i.cp, 118      ; 2 uses
  %spec.select.i.i.i.i.i13.i.i = select i1 %.not.i.i.i12.i.i, ptr %.1.i2.i, ptr null
  %i.cq = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i13.i.i, i64 48
  %spec.select.i.i.i14.i.i = select i1 %.not.i.i.i12.i.i, ptr %i.cq, ptr %40
  %i.cr = load ptr, ptr %spec.select.i.i.i14.i.i, align 8, !tbaa !816
  br label %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i

_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i: ; preds = %bb.u, %bb.t, %.split.i.i, %bb.r, %bb.q, %bb.p, %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit.i
  %.1.i.i = phi ptr [ %i.cr, %bb.u ], [ %.1.i2.i, %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit.i ], [ %.1.i2.i, %bb.r ], [ %.1.i2.i, %bb.p ], [ %.1.i2.i, %bb.q ], [ %.1.i2.i, %bb.t ], [ %.1.i2.i, %.split.i.i ] ; 7 uses
  %.not.i.i = icmp eq ptr %.1.i.i, %.01012.i.i
  br i1 %.not.i.i, label %"_ZZN5clang4Sema17checkMustTailAttrEPKNS_4StmtERKNS_4AttrEENK3$_1clEPKNS_4ExprE.exit", label %.lr.ph.i.i, !llvm.loop !1782

"_ZZN5clang4Sema17checkMustTailAttrEPKNS_4StmtERKNS_4AttrEENK3$_1clEPKNS_4ExprE.exit": ; preds = %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit.i
  %i.cs = load i16, ptr %.1.i.i, align 8
  %i.ct = and i16 %i.cs, 511
  %i.cu = add nsw i16 %i.ct, -91
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.cu, 5
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit, label %"_ZZN5clang4Sema17checkMustTailAttrEPKNS_4StmtERKNS_4AttrEENK3$_1clEPKNS_4ExprE.exit.thread"

"_ZZN5clang4Sema17checkMustTailAttrEPKNS_4StmtERKNS_4AttrEENK3$_1clEPKNS_4ExprE.exit.thread": ; preds = %bb.a, %"_ZZN5clang4Sema17checkMustTailAttrEPKNS_4StmtERKNS_4AttrEENK3$_1clEPKNS_4ExprE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cw = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #26
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.cv, i32 %i.cw, i32 noundef 4332) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr %2, ptr %i.a, align 8, !tbaa !1288
  %i.cx = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPKNS_4AttrEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.bu

_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit: ; preds = %"_ZZN5clang4Sema17checkMustTailAttrEPKNS_4StmtERKNS_4AttrEENK3$_1clEPKNS_4ExprE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.cy = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 10 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !822
  %i.da = tail call noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #27 ; 4 uses
  %.not.i.i.i154 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i154, label %_ZNK5clang4Decl7hasAttrINS_17NotTailCalledAttrEEEbv.exit.thread236, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 28
  %i.dc = load i32, ptr %i.db, align 4            ; 2 uses
  %i.dd = and i32 %i.dc, 127
  %i.de = add nsw i32 %i.dd, -35
  %i.df = icmp ult i32 %i.de, 6
  br i1 %i.df, label %bb.w, label %_ZNK5clang4Decl7hasAttrINS_17NotTailCalledAttrEEEbv.exit.thread236

bb.w:                                             ; preds = %bb.v
  store ptr %i.da, ptr %i.b, align 8, !tbaa !1301
  %i.dg = and i32 %i.dc, 256
  %.not.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i, label %_ZNK5clang4Decl7hasAttrINS_17NotTailCalledAttrEEEbv.exit.thread236, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.da) #27 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !758 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !759 ; 2 uses
  %i.dl = zext i32 %i.dk to i64
  %.idx.i.i = shl nuw nsw i64 %i.dl, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 %.idx.i.i ; 2 uses
  %.not.i.i155 = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i155, label %_ZNK5clang4Decl7hasAttrINS_17NotTailCalledAttrEEEbv.exit.thread236, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.x, %bb.y
  %.sroa.07.1.i.i.i.i = phi ptr [ %i.dr, %bb.y ], [ %i.di, %bb.x ] ; 3 uses
  %i.dn = load ptr, ptr %.sroa.07.1.i.i.i.i, align 8, !tbaa !1288
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 36
  %i.dp = load i16, ptr %i.do, align 4
  %i.dq = icmp eq i16 %i.dp, 310
  br i1 %i.dq, label %_ZNK5clang4Decl7hasAttrINS_17NotTailCalledAttrEEEbv.exit, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dr, %i.dm
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang4Decl7hasAttrINS_17NotTailCalledAttrEEEbv.exit.thread236, label %.lr.ph.i.i.i.i.i, !llvm.loop !1783

_ZNK5clang4Decl7hasAttrINS_17NotTailCalledAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i
  %.not = icmp eq ptr %.sroa.07.1.i.i.i.i, %i.dm
  br i1 %.not, label %_ZNK5clang4Decl7hasAttrINS_17NotTailCalledAttrEEEbv.exit.thread236, label %.critedge

.critedge:                                        ; preds = %_ZNK5clang4Decl7hasAttrINS_17NotTailCalledAttrEEEbv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dt = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #26
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ds, i32 %i.dt, i32 noundef 4331) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i8 1, ptr %i.c, align 1, !tbaa !745
  %i.du = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIbvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  %i.dv = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPKNS_12FunctionDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES7_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.du, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.dw = load ptr, ptr %i.b, align 8, !tbaa !1301
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.dx, align 8, !tbaa !747
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ds, i32 %.sroa.0.0.copyload.i, i32 noundef 6271) #27
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.bu

_ZNK5clang4Decl7hasAttrINS_17NotTailCalledAttrEEEbv.exit.thread236: ; preds = %bb.y, %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit, %bb.v, %bb.x, %bb.w, %_ZNK5clang4Decl7hasAttrINS_17NotTailCalledAttrEEEbv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.dy = load i16, ptr %i.w, align 8
  %i.dz = and i16 %i.dy, 511
  %.not256 = icmp eq i16 %i.dz, 62
  br i1 %.not256, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNK5clang4Decl7hasAttrINS_17NotTailCalledAttrEEEbv.exit.thread236
  %i.ea = load i32, ptr %i.w, align 8
  %i.eb = and i32 %i.ea, 524288
  %.not257 = icmp eq i32 %i.eb, 0
  br i1 %.not257, label %bb.aa, label %.critedge144

.critedge144:                                     ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ed = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #26
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.ec, i32 %i.ed, i32 noundef 4334) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store ptr %2, ptr %i.d, align 8, !tbaa !1288
  %i.ee = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPKNS_4AttrEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.bu

bb.aa:                                            ; preds = %bb.z, %_ZNK5clang4Decl7hasAttrINS_17NotTailCalledAttrEEEbv.exit.thread236
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store i32 0, ptr %7, align 8, !tbaa !1305
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr null, ptr %i.eg, align 8, !tbaa !1787
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store i32 0, ptr %8, align 8, !tbaa !1305
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr null, ptr %i.ei, align 8, !tbaa !1787
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr %0, ptr %9, align 8, !tbaa !1310
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %1, ptr %i.ej, align 8, !tbaa !1311
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(39) %i.ek, ptr noundef nonnull align 8 dereferenceable(39) %2, i64 39, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !873 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load i16, ptr %i.en, align 8            ; 2 uses
  %i.ep = and i16 %i.eo, 127                      ; 3 uses
  %i.eq = add nsw i16 %i.ep, -41
  %i.er = icmp ult i16 %i.eq, -6
  %i.es = getelementptr inbounds i8, ptr %i.em, i64 -72 ; 2 uses
  br i1 %i.er, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %switch.selectcmp = icmp eq i16 %i.ep, 20
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 2
  %switch.selectcmp279 = icmp eq i16 %i.ep, 9
  %switch.select280 = select i1 %switch.selectcmp279, i32 0, i32 %switch.select
  store i32 %switch.select280, ptr %i.e, align 4, !tbaa !747
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eu = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #26
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.et, i32 %i.eu, i32 noundef 4329) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store ptr %2, ptr %i.f, align 8, !tbaa !1288
  %i.ev = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPKNS_4AttrEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.ew = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIiEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ev, ptr noundef nonnull align 4 dereferenceable(4) %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %bb.bt

bb.ac:                                            ; preds = %bb.aa
  %i.ex = and i16 %i.eo, 124
  %.not258 = icmp eq i16 %i.ex, 36
  br i1 %.not258, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ey = call fastcc noundef zeroext i1 @"_ZZN5clang4Sema17checkMustTailAttrEPKNS_4StmtERKNS_4AttrEENK3$_2clEPKNS_13CXXMethodDeclERZNS0_17checkMustTailAttrES3_S6_E8FuncTypeb"(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef %i.es, ptr noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext false)
  br i1 %i.ey, label %.critedge146, label %bb.bt

bb.ae:                                            ; preds = %bb.ac
  %i.ez = getelementptr inbounds i8, ptr %i.em, i64 -24
  %.sroa.0.0.copyload.i159 = load i64, ptr %i.ez, align 8, !tbaa !750
  %i.fa = and i64 %.sroa.0.0.copyload.i159, -16
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = load ptr, ptr %i.fb, align 16, !tbaa !821 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load i8, ptr %i.fd, align 16
  %.not.i160 = icmp eq i8 %i.fe, 24
  br i1 %.not.i160, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ff, align 8, !tbaa !750
  %i.fg = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = load ptr, ptr %i.fh, align 16, !tbaa !821
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
end_hunk_0
begin_hunk_1_@"_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_4diag23InvalidRangeForIterator4$_11EvEERKS1_OT_":bb.a
  %i.as = sext i32 %.0.val to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.au = load i8, ptr %i.ar, align 8, !tbaa !892
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  store i8 2, ptr %i.aw, align 1, !tbaa !750
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !879 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i8, ptr %i.ax, align 8, !tbaa !892 ; 2 uses
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ax, align 8, !tbaa !892
  %i.bb = zext i8 %i.az to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bb
  store i64 %i.as, ptr %i.bc, align 8, !tbaa !751
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %"_ZNK5clang17PartialDiagnosticlsINS_4diag23InvalidRangeForIterator4$_11EvEERKS0_OT_.exit", %"_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_4diag23InvalidRangeForIterator4$_11EvEERKS1_OT_.exit"
  ret ptr %0
}

declare i64 @_ZN5clang4Sema12ActOnUnaryOpEPNS_5ScopeENS_14SourceLocationENS_3tok9TokenKindEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, i16 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5clang4Sema20AddInitializerToDeclEPNS_4DeclEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5clang10SemaOpenMP29ActOnOpenMPLoopInitializationENS_14SourceLocationEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(552), i32, ptr noundef) local_unnamed_addr #2

declare void @_ZN5clang15CXXForRangeStmtC1EPNS_4StmtEPNS_8DeclStmtES4_S4_PNS_4ExprES6_S4_S2_NS_14SourceLocationES7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32, i32, i32, i32) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang4Sema21FinishCXXForRangeStmtEPNS_4StmtES2_(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %i.a = alloca ptr, align 8                      ; 11 uses
  %4 = alloca %"class.clang::QualType", align 8   ; 7 uses
  %5 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %6 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %7 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %8 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %9 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %10 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %11 = alloca %"class.clang::FixItHint", align 8 ; 10 uses
  %12 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %13 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %14 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %15 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %16 = alloca %"class.clang::FixItHint", align 8 ; 10 uses
  %i.b = icmp ne ptr %1, null
  %i.c = icmp ne ptr %2, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.am

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %1, align 8
  %i.e = and i16 %i.d, 511
  %i.f = icmp eq i16 %i.e, 159
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1477
  %i.i = tail call i64 @_ZN5clang8SemaObjC27FinishObjCForCollectionStmtEPNS_4StmtES2_(ptr noundef nonnull align 8 dereferenceable(328) %i.h, ptr noundef nonnull %1, ptr noundef nonnull %2) #27
  br label %bb.am

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %2, ptr %i.j, align 8, !tbaa !822
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 84
  %.sroa.0.0.copyload.i = load i32, ptr %i.k, align 4, !tbaa !747
  tail call void @_ZN5clang4Sema21DiagnoseEmptyStmtBodyENS_14SourceLocationEPKNS_4StmtEj(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %2, i32 noundef 7080) #27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12616
  %i.m = load i32, ptr %i.l, align 8, !tbaa !759
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 13768
  %i.o = load i32, ptr %i.n, align 8, !tbaa !2003
  %i.p = icmp ugt i32 %i.m, %i.o
  br i1 %i.p, label %_ZL30DiagnoseForRangeVariableCopiesRN5clang4SemaEPKNS_15CXXForRangeStmtE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.q, align 8, !tbaa !747 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !836, !nonnull !743, !align !744 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !839  ; 3 uses
  %i.v = tail call noundef zeroext i8 @_ZNK5clang13DiagnosticIDs21getDiagnosticSeverityEjNS_14SourceLocationERKNS_17DiagnosticsEngineE(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i32 noundef 7112, i32 %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(15256) %i.s) #26
  %i.w = icmp eq i8 %i.v, 1
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = tail call noundef zeroext i8 @_ZNK5clang13DiagnosticIDs21getDiagnosticSeverityEjNS_14SourceLocationERKNS_17DiagnosticsEngineE(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i32 noundef 7114, i32 %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(15256) %i.s) #26
  %i.y = icmp eq i8 %i.x, 1
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = tail call noundef zeroext i8 @_ZNK5clang13DiagnosticIDs21getDiagnosticSeverityEjNS_14SourceLocationERKNS_17DiagnosticsEngineE(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i32 noundef 7113, i32 %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(15256) %i.s) #26
  %i.aa = icmp eq i8 %i.z, 1
  br i1 %i.aa, label %_ZL30DiagnoseForRangeVariableCopiesRN5clang4SemaEPKNS_15CXXForRangeStmtE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ab = tail call noundef ptr @_ZNK5clang15CXXForRangeStmt15getLoopVariableEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #27 ; 8 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZL30DiagnoseForRangeVariableCopiesRN5clang4SemaEPKNS_15CXXForRangeStmtE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i24.i = load i64, ptr %i.ac, align 8, !tbaa !750 ; 2 uses
  %i.ad = and i64 %.sroa.0.0.copyload.i24.i, -16
  %i.ae = inttoptr i64 %i.ad to ptr               ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !821
  %i.ag = tail call noundef zeroext i1 @_ZNK5clang4Type16isIncompleteTypeEPPNS_9NamedDeclE(ptr noundef nonnull align 16 dereferenceable(24) %i.af, ptr noundef null) #27
  br i1 %i.ag, label %_ZL30DiagnoseForRangeVariableCopiesRN5clang4SemaEPKNS_15CXXForRangeStmtE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = tail call noundef ptr @_ZN5clang7VarDecl7getInitEv(ptr noundef nonnull align 8 dereferenceable(100) %i.ab) #27 ; 2 uses
  %.not23.i = icmp eq ptr %i.ah, null
  br i1 %.not23.i, label %_ZL30DiagnoseForRangeVariableCopiesRN5clang4SemaEPKNS_15CXXForRangeStmtE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #26
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %_ZL30DiagnoseForRangeVariableCopiesRN5clang4SemaEPKNS_15CXXForRangeStmtE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.ae, align 16, !tbaa !821
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.al, align 8, !tbaa !750
  %i.am = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load ptr, ptr %i.an, align 16, !tbaa !821
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i8, ptr %i.ap, align 16
  %i.ar = and i8 %i.aq, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ar, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.al

bb.m:                                             ; preds = %bb.l
  %i.as = tail call noundef ptr @_ZNK5clang15CXXForRangeStmt12getRangeInitEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #27
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.0.0.copyload.i26.i = load i64, ptr %i.at, align 8, !tbaa !750
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.0.0.copyload.i26.i, ptr %3, align 8
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !1402
  %i.au = tail call noundef ptr @_ZN5clang7VarDecl7getInitEv(ptr noundef nonnull align 8 dereferenceable(100) %i.ab) #27 ; 6 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_ZL39DiagnoseForRangeReferenceVariableCopiesRN5clang4SemaEPKNS_7VarDeclENS_8QualTypeE.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !750 ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %4, align 8
  %i.av = load i16, ptr %i.au, align 8            ; 2 uses
  %i.aw = and i16 %i.av, 511
  %.not95.i.i = icmp eq i16 %i.aw, 62
  br i1 %.not95.i.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ax = load i32, ptr %i.au, align 8            ; 2 uses
  %i.ay = and i32 %i.ax, 524288
  %.not96.i.i = icmp eq i32 %i.ay, 0
  %i.az = trunc i32 %i.ax to i16
  br i1 %.not96.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !809 ; 2 uses
  %.pre.i.i = load i16, ptr %i.bb, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.bc = phi i16 [ %i.az, %bb.o ], [ %.pre.i.i, %bb.p ], [ %i.av, %bb.n ]
  %.0.i.i = phi ptr [ %i.au, %bb.o ], [ %i.bb, %bb.p ], [ %i.au, %bb.n ]
  %i.bd = and i16 %i.bc, 511
  %.not98.i.i = icmp eq i16 %i.bd, 50
  br i1 %.not98.i.i, label %bb.r, label %bb.ak

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.be, align 8 ; 3 uses
  %i.bf = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bh = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i.preheader

bb.t:                                             ; preds = %bb.r
  %i.bi = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1294
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i.preheader

_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i.preheader: ; preds = %bb.t, %bb.s
  %storemerge40.sink.i.i.ph = phi ptr [ %i.bh, %bb.s ], [ %i.bl, %bb.t ]
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i

_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i: ; preds = %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i.backedge, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i.preheader
  %storemerge40.sink.i.i = phi ptr [ %storemerge40.sink.i.i.ph, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i.preheader ], [ %storemerge40.sink.i.i.be, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i.backedge ]
  %i.bm = tail call noundef ptr @_ZN5clang4Expr14IgnoreImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %storemerge40.sink.i.i) #26 ; 8 uses
  %i.bn = load i16, ptr %i.bm, align 8
  %i.bo = and i16 %i.bn, 511                      ; 5 uses
  switch i16 %i.bo, label %bb.u [
    i16 93, label %.critedge.i.i
    i16 4, label %.critedge.i.i
  ]

bb.u:                                             ; preds = %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i
  %i.bp = add nsw i16 %i.bo, -119
  %spec.select.i.i.i.i.i.i.i.i.i27.i = icmp ult i16 %i.bp, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i27.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i.i.i.i.i.i = icmp eq i16 %i.bo, 118      ; 2 uses
  %spec.select.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.bm, ptr null
  %17 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i.i.i, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %17, ptr %i.bq
  %i.br = load ptr, ptr %spec.select.i.i.i.i.i.i, align 8, !tbaa !816
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i.backedge

bb.w:                                             ; preds = %bb.u
  %.not101.i.i = icmp eq i16 %i.bo, 94
  br i1 %.not101.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !822
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1340
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i.backedge

bb.y:                                             ; preds = %bb.w
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.0.copyload.i.i.i.i.i.i44.i.i = load i64, ptr %i.bw, align 8 ; 3 uses
  %i.bx = and i64 %.0.copyload.i.i.i.i.i.i44.i.i, 4
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bz = inttoptr i64 %.0.copyload.i.i.i.i.i.i44.i.i to ptr
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i.backedge

bb.aa:                                            ; preds = %bb.y
  %i.ca = and i64 %.0.copyload.i.i.i.i.i.i44.i.i, -5
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1294
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i.backedge

_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i.backedge: ; preds = %bb.aa, %bb.z, %bb.x, %bb.v
  %storemerge40.sink.i.i.be = phi ptr [ %i.bz, %bb.z ], [ %i.cd, %bb.aa ], [ %i.br, %bb.v ], [ %i.bv, %bb.x ]
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i, !llvm.loop !1993

.critedge.i.i:                                    ; preds = %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ce = icmp eq i16 %i.bo, 4
  br i1 %i.ce, label %bb.ab, label %_ZNK5clang8CallExpr15getDirectCalleeEv.exit.i.i

bb.ab:                                            ; preds = %.critedge.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !742, !nonnull !743, !align !744
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.0.0.copyload.i46.i.i = load i64, ptr %i.ch, align 8, !tbaa !750
  %i.ci = tail call i64 @_ZNK5clang10ASTContext22getLValueReferenceTypeENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.cg, i64 %.sroa.0.0.copyload.i46.i.i, i1 noundef zeroext true) #27
  br label %thread-pre-split.i.i

_ZNK5clang8CallExpr15getDirectCalleeEv.exit.i.i:  ; preds = %.critedge.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !822
  %i.cl = tail call noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #27 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.cm, align 8, !tbaa !750
  %i.cn = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = load ptr, ptr %i.co, align 16, !tbaa !821 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load i8, ptr %i.cq, align 16
  %i.cs = add i8 %i.cr, -25
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.cs, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ac, label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit.i.i

bb.ac:                                            ; preds = %_ZNK5clang8CallExpr15getDirectCalleeEv.exit.i.i
  %i.ct = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.cp) #27
  br label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit.i.i

_ZNK5clang12FunctionDecl13getReturnTypeEv.exit.i.i: ; preds = %bb.ac, %_ZNK5clang8CallExpr15getDirectCalleeEv.exit.i.i
  %.1.i.i.i.i = phi ptr [ %i.ct, %bb.ac ], [ %i.cp, %_ZNK5clang8CallExpr15getDirectCalleeEv.exit.i.i ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 24
  %.sroa.0.0.copyload.i1.i.i.i = load i64, ptr %i.cu, align 8, !tbaa !750 ; 2 uses
  %i.cv = and i64 %.sroa.0.0.copyload.i1.i.i.i, -16
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = load ptr, ptr %i.cw, align 16, !tbaa !821
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.cy, align 8, !tbaa !750
  %i.cz = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = load ptr, ptr %i.da, align 16, !tbaa !821
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load i8, ptr %i.dc, align 16
  %i.de = and i8 %i.dd, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.de, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i, label %thread-pre-split.i.i, label %thread-pre-split.thread.i.i

thread-pre-split.i.i:                             ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit.i.i, %bb.ab
  %.sroa.0.0.copyload.i1.i.sink.i.i = phi i64 [ %i.ci, %bb.ab ], [ %.sroa.0.0.copyload.i1.i.i.i, %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit.i.i ] ; 2 uses
  store i64 %.sroa.0.0.copyload.i1.i.sink.i.i, ptr %5, align 8, !tbaa !750
  %i.df = icmp ult i64 %.sroa.0.0.copyload.i1.i.sink.i.i, 16
  br i1 %i.df, label %thread-pre-split.thread.i.i, label %bb.ad

bb.ad:                                            ; preds = %thread-pre-split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.0.0.copyload.i48.i.i = load i32, ptr %i.dh, align 8, !tbaa !747
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.dg, i32 %.sroa.0.0.copyload.i48.i.i, i32 noundef 7112) #27
  %i.di = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPKNS_7VarDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES7_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.dj = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.di, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.dk = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.dj, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %.0.copyload.i.i.i.i.i.i49.i.i = load i64, ptr %4, align 8
  %i.dl = and i64 %.0.copyload.i.i.i.i.i.i49.i.i, -16
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = load ptr, ptr %i.dm, align 16, !tbaa !821 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load i8, ptr %i.do, align 16
  %i.dq = and i8 %i.dp, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i = icmp eq i8 %i.dq, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.dr, align 8, !tbaa !750
  %i.ds = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -16
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = load ptr, ptr %i.dt, align 16, !tbaa !821
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load i8, ptr %i.dv, align 16
  %i.dx = and i8 %i.dw, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i.i.i = icmp eq i8 %i.dx, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit.i.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i: ; preds = %bb.ae
  %i.dy = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.dn) #27 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i, %bb.ad
  %.1.i8.i.i.i = phi ptr [ %i.dy, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i ], [ %i.dn, %bb.ad ] ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.1.i8.i.i.i, i64 16
  %i.ea = load i24, ptr %i.dz, align 16
  %i.eb = and i24 %i.ea, 1048576
  %.not4.i.i.i.i = icmp eq i24 %i.eb, 0
  br i1 %.not4.i.i.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i ], [ %.1.i8.i.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i.i ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ec, align 8
  %i.ed = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -16
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = load ptr, ptr %i.ee, align 16, !tbaa !821 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load i8, ptr %i.eg, align 16
  %i.ei = and i8 %i.eh, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i.i = icmp eq i8 %i.ei, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ej = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ef) #27
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i: ; preds = %bb.af, %.lr.ph.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.ej, %bb.af ], [ %i.ef, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 16
  %i.el = load i24, ptr %i.ek, align 16
  %i.em = and i24 %i.el, 1048576
  %.not.i.i.i.i = icmp eq i24 %i.em, 0
  br i1 %.not.i.i.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i.i
  %.0.lcssa.i.i.i.i = phi ptr [ %.1.i8.i.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i.i ], [ %.1.i.i.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i ]
  %i.en = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit.i.i

_ZNK5clang8QualType19getNonReferenceTypeEv.exit.i.i: ; preds = %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i, %bb.ae
  %.sroa.0.0.in.i.i.i = phi ptr [ %i.en, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i.i ], [ %4, %bb.ae ], [ %4, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i ]
  %.sroa.0.0.i.i.i = load i64, ptr %.sroa.0.0.in.i.i.i, align 8, !tbaa !750
  %i.eo = and i64 %.sroa.0.0.i.i.i, -2
  store i64 %i.eo, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !742, !nonnull !743, !align !744
  %i.er = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.0.0.copyload.i51.i.i = load i64, ptr %i.er, align 8, !tbaa !750
  %i.es = or i64 %.sroa.0.0.copyload.i51.i.i, 1
  %i.et = call i64 @_ZNK5clang10ASTContext22getLValueReferenceTypeENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.eq, i64 %i.es, i1 noundef zeroext true) #27
  store i64 %i.et, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.eu = load ptr, ptr %i.a, align 8, !tbaa !1402
  %i.ev = call i32 @_ZNK5clang14DeclaratorDecl16getOuterLocStartEv(ptr noundef nonnull align 8 dereferenceable(68) %i.eu) #27
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.dg, i32 %i.ev, i32 noundef 6636) #27
  %i.ew = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %9, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.ex = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.ey = load ptr, ptr %i.a, align 8, !tbaa !1402 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !906
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call i64 %i.fb(ptr noundef nonnull align 8 dereferenceable(100) %i.ey) #26, !inline_history !1994
  store i64 %i.fc, ptr %10, align 8
  %i.fd = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ex, ptr noundef nonnull align 4 dereferenceable(8) %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.fe = load ptr, ptr %i.a, align 8, !tbaa !1402
  %i.ff = call i32 @_ZNK5clang14DeclaratorDecl17getTypeSpecEndLocEv(ptr noundef nonnull align 8 dereferenceable(68) %i.fe) #27
  %.sroa.282.0.insert.ext.i.i = zext i32 %i.ff to i64
end_hunk_1
