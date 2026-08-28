Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExprCXX?download=true
inline.NumInlined: 2514
inline.NumDeleted: 1561
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK5clang18UserDefinedLiteral22getLiteralOperatorKindEv:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %i.ad = load i32, ptr %i.ac, align 16
  %i.ae = lshr i32 %i.ad, 19
  %i.af = and i32 %i.ae, 1023
  %i.ag = add nsw i32 %i.af, -453
  %spec.select.i.i = icmp ult i32 %i.ag, 20
  br i1 %spec.select.i.i, label %bb.e, label %_ZNK5clang4Type13isIntegerTypeEv.exit.thread

.lr.ph.i:                                         ; preds = %tailrecurse.i
  %.not.i = icmp eq i8 %i.bf, 47
  br i1 %.not.i, label %.lr.ph.i._crit_edge, label %.lr.ph

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.lcssa = phi ptr [ %i.y, %.lr.ph.i.preheader ], [ %i.bd, %.lr.ph.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !37 ; 2 uses
  %i.aj = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.ai) #17, !inline_history !249 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.aj, null
  %..i.i = select i1 %.not.not.i.i, ptr %i.ai, ptr %i.aj ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %..i.i, i64 74
  %i.al = load i8, ptr %i.ak, align 2
  %i.am = trunc i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %..i.i, i64 128
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.an, align 8
  %i.ao = icmp ugt i64 %.0.copyload.i.i.i.i.i.i, 7
  %i.ap = select i1 %i.am, i1 true, i1 %i.ao
  br i1 %i.ap, label %_ZNK5clang4Type13isIntegerTypeEv.exit, label %_ZNK5clang4Type13isIntegerTypeEv.exit.thread

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.0.copyload.i.i.i.i.i15 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i3, %.lr.ph.i ], [ %.sroa.0.0.copyload.i.i.i38.i, %.lr.ph.i.preheader ]
  %i.aq = and i64 %.sroa.0.0.copyload.i.i.i.i.i15, -16
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !34 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i8, ptr %i.at, align 16            ; 2 uses
  %i.av = icmp ne i8 %i.au, 35
  %.not18.not32.i = icmp eq ptr %i.as, null
  %.not18.not.i = or i1 %.not18.not32.i, %i.av
  br i1 %.not18.not.i, label %.split, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.lr.ph
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.aw, align 16, !tbaa !33
  %i.ax = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.0.0.copyload.i.i.i.i3 = load i64, ptr %i.ba, align 8, !tbaa !33 ; 2 uses
  %i.bb = and i64 %.sroa.0.0.copyload.i.i.i.i3, -16
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !34 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i8, ptr %i.be, align 16            ; 2 uses
  %i.bg = icmp ne i8 %i.bf, 13
  %.not.not30.i = icmp eq ptr %i.bd, null
  %.not.not.i = or i1 %.not.not30.i, %i.bg
  br i1 %.not.not.i, label %.lr.ph.i, label %tailrecurse._crit_edge.i

.split:                                           ; preds = %.lr.ph
  %i.bh = icmp eq i8 %i.au, 10
  br i1 %i.bh, label %bb.e, label %_ZNK5clang4Type13isIntegerTypeEv.exit.thread

_ZNK5clang4Type13isIntegerTypeEv.exit:            ; preds = %.lr.ph.i._crit_edge
  %i.bi = load ptr, ptr %i.ah, align 8, !tbaa !37
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.bk = load i40, ptr %i.bj, align 8
  %i.bl = icmp sgt i40 %i.bk, -1
  br i1 %i.bl, label %bb.e, label %_ZNK5clang4Type13isIntegerTypeEv.exit.thread

_ZNK5clang4Type13isIntegerTypeEv.exit.thread:     ; preds = %.lr.ph.i._crit_edge, %tailrecurse._crit_edge.i, %.split, %_ZNK5clang4Type13isIntegerTypeEv.exit
  %i.bm = load ptr, ptr %i.k, align 16, !tbaa !34
  %i.bn = tail call noundef zeroext i1 @_ZNK5clang4Type14isFloatingTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bm) #17 ; 0 uses
  br label %bb.e

.fold.split:                                      ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.fold.split, %_ZNK5clang4Type13isIntegerTypeEv.exit.thread, %bb.b, %bb.c, %_ZNK5clang4Type13isIntegerTypeEv.exit, %.split, %tailrecurse._crit_edge.i
  %.1 = phi i32 [ 2, %tailrecurse._crit_edge.i ], [ 1, %bb.a ], [ 3, %_ZNK5clang4Type13isIntegerTypeEv.exit.thread ], [ 0, %bb.b ], [ 5, %bb.c ], [ 2, %_ZNK5clang4Type13isIntegerTypeEv.exit ], [ 2, %.split ], [ 4, %.fold.split ]
  ret i32 %.1
}

declare noundef zeroext i1 @_ZNK5clang4Type18isAnyCharacterTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK5clang4Type14isFloatingTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN5clang18UserDefinedLiteral16getCookedLiteralEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %0, align 8
  %i.c = lshr i32 %i.b, 19
  %i.d = and i32 %i.c, 1
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK5clang18UserDefinedLiteral11getUDSuffixEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = tail call noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  %i.d = tail call noundef ptr @_ZNK5clang12FunctionDecl20getLiteralIdentifierEv(ptr noundef nonnull align 8 dereferenceable(168) %i.c) #17
  ret ptr %i.d
}

declare noundef ptr @_ZNK5clang12FunctionDecl20getLiteralIdentifierEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang17CXXDefaultArgExpr11CreateEmptyERKNS_10ASTContextEb(ptr noundef nonnull align 8 dereferenceable(23904) %0, i1 noundef zeroext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = select i1 %1, i64 40, i64 32             ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = add i64 %i.a, %i.d                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.g = load i64, ptr %i.f, align 8, !tbaa !68
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %_ZNK5clang10ASTContext8AllocateEmj.exit, label %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, !prof !69

_ZNK5clang10ASTContext8AllocateEmj.exit.thread:   ; preds = %bb.a
  %i.i = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %i.a, i64 noundef %i.a, i8 3)
  br label %bb.b

_ZNK5clang10ASTContext8AllocateEmj.exit:          ; preds = %bb.a
  %i.j = inttoptr i64 %i.e to ptr
  store ptr %i.j, ptr %i.b, align 8, !tbaa !54
  %i.k = icmp eq ptr %i.c, null
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %.0.i.i.i5 = phi ptr [ %i.i, %_ZNK5clang10ASTContext8AllocateEmj.exit.thread ], [ %i.c, %_ZNK5clang10ASTContext8AllocateEmj.exit ] ; 6 uses
  %i.l = load i16, ptr %.0.i.i.i5, align 8
  %i.m = and i16 %i.l, -512
  %i.n = or disjoint i16 %i.m, 116
  store i16 %i.n, ptr %.0.i.i.i5, align 8
  %i.o = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !122, !range !124, !noundef !80
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %_ZN5clang17CXXDefaultArgExprC2ENS_4Stmt10EmptyShellEb.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 116) #17
  br label %_ZN5clang17CXXDefaultArgExprC2ENS_4Stmt10EmptyShellEb.exit

_ZN5clang17CXXDefaultArgExprC2ENS_4Stmt10EmptyShellEb.exit: ; preds = %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i5, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = load i32, ptr %.0.i.i.i5, align 8
  %i.s = select i1 %1, i32 524288, i32 0
  %i.t = and i32 %i.r, -524289
  %i.u = or disjoint i32 %i.t, %i.s
  store i32 %i.u, ptr %.0.i.i.i5, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN5clang17CXXDefaultArgExprC2ENS_4Stmt10EmptyShellEb.exit, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %i.v = phi ptr [ %.0.i.i.i5, %_ZN5clang17CXXDefaultArgExprC2ENS_4Stmt10EmptyShellEb.exit ], [ null, %_ZNK5clang10ASTContext8AllocateEmj.exit ]
  ret ptr %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang17CXXDefaultArgExpr6CreateERKNS_10ASTContextENS_14SourceLocationEPNS_11ParmVarDeclEPNS_4ExprEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #5 align 2 {
bb.a:
  %.not = icmp eq ptr %3, null
  %i.a = select i1 %.not, i64 32, i64 40          ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = add i64 %i.a, %i.d                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.g = load i64, ptr %i.f, align 8, !tbaa !68
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %_ZNK5clang10ASTContext8AllocateEmj.exit, label %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, !prof !69

_ZNK5clang10ASTContext8AllocateEmj.exit.thread:   ; preds = %bb.a
  %i.i = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %i.a, i64 noundef %i.a, i8 3)
  br label %bb.b

_ZNK5clang10ASTContext8AllocateEmj.exit:          ; preds = %bb.a
  %i.j = inttoptr i64 %i.e to ptr
  store ptr %i.j, ptr %i.b, align 8, !tbaa !54
  %i.k = icmp eq ptr %i.c, null
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %.0.i.i.i8 = phi ptr [ %i.i, %_ZNK5clang10ASTContext8AllocateEmj.exit.thread ], [ %i.c, %_ZNK5clang10ASTContext8AllocateEmj.exit ] ; 2 uses
  tail call void @_ZN5clang17CXXDefaultArgExprC2ENS_4Stmt9StmtClassENS_14SourceLocationEPNS_11ParmVarDeclEPNS_4ExprEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i.i8, i32 noundef 116, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %i.l = phi ptr [ %.0.i.i.i8, %bb.b ], [ null, %_ZNK5clang10ASTContext8AllocateEmj.exit ]
  ret ptr %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang17CXXDefaultArgExprC2ENS_4Stmt9StmtClassENS_14SourceLocationEPNS_11ParmVarDeclEPNS_4ExprEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #5 comdat align 2 {
bb.a:
  %.sroa.0 = alloca [8 x i8], align 8             ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1536
  %i.d = icmp eq i32 %i.c, 512
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !33 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.0, align 8
  %i.f = and i64 %.sroa.0.0.copyload.i, -16
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !34  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i8, ptr %i.i, align 16
  %i.k = and i8 %i.j, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.k, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !33
  %i.m = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i8, ptr %i.p, align 16
  %i.r = and i8 %i.q, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.r, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.c
  %i.s = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.h) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %bb.b
  %.1.i8.i = phi ptr [ %i.s, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.h, %bb.b ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.1.i8.i, i64 16
  %i.u = load i24, ptr %i.t, align 16
  %i.v = and i24 %i.u, 1048576
  %.not4.i.i = icmp eq i24 %i.v, 0
  br i1 %.not4.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i
  %.05.i.i = phi ptr [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !34  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i8, ptr %i.aa, align 16
  %i.ac = and i8 %i.ab, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.ac, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ad = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.z) #17
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i
  %.1.i.i.i = phi ptr [ %i.ad, %bb.d ], [ %i.z, %.lr.ph.i.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.af = load i24, ptr %i.ae, align 16
  %i.ag = and i24 %i.af, 1048576
  %.not.i.i = icmp eq i24 %i.ag, 0
  br i1 %.not.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i, !llvm.loop !114

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i
  %.0.lcssa.i.i = phi ptr [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ], [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

bb.e:                                             ; preds = %bb.a
  %i.ai = tail call noundef ptr @_ZN5clang11ParmVarDecl13getDefaultArgEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang8QualType19getNonReferenceTypeEv.exit:  ; preds = %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %bb.c, %bb.e
  %.sroa.0.0.in = phi ptr [ %i.aj, %bb.e ], [ %i.ah, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ], [ %.sroa.0, %bb.c ], [ %.sroa.0, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ]
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !tbaa !33
  %i.ak = tail call noundef ptr @_ZN5clang11ParmVarDecl13getDefaultArgEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #17
  %i.al = load i24, ptr %i.ak, align 8
  %i.am = and i24 %i.al, 1536
  %i.an = tail call noundef ptr @_ZN5clang11ParmVarDecl13getDefaultArgEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #17
  %i.ao = load i24, ptr %i.an, align 8
  %i.ap = and i24 %i.ao, 14336
  %i.aq = trunc i32 %1 to i16
  %i.ar = load i16, ptr %0, align 8
  %i.as = and i16 %i.aq, 511
  %i.at = and i16 %i.ar, -512
  %i.au = or disjoint i16 %i.at, %i.as
  store i16 %i.au, ptr %0, align 8
  %i.av = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !122, !range !124, !noundef !80
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.f, label %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit

bb.f:                                             ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  tail call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef %1) #17
  br label %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit

_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit: ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i24, ptr %0, align 8
  %i.az = and i24 %i.ay, -523777
  %i.ba = or disjoint i24 %i.ap, %i.am
  %i.bb = or disjoint i24 %i.ba, %i.az
  store i24 %i.bb, ptr %0, align 8
  store i64 %.sroa.0.0, ptr %i.ax, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.bc, align 8, !tbaa !250
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %5, ptr %i.bd, align 8, !tbaa !253
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.be, align 4, !tbaa !121
  %.not = icmp eq ptr %4, null                    ; 2 uses
  %i.bf = load i32, ptr %0, align 8
  %i.bg = select i1 %.not, i32 0, i32 524288
  %i.bh = and i32 %i.bf, -524289
  %i.bi = or disjoint i32 %i.bh, %i.bg
  store i32 %i.bi, ptr %0, align 8
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %4, ptr %i.bj, align 8, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit
  %i.bk = tail call noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_17CXXDefaultArgExprE(ptr noundef nonnull %0) #17
  %i.bl = load i24, ptr %0, align 8
  %i.bm = and i8 %i.bk, 31
  %i.bn = zext nneg i8 %i.bm to i24
  %i.bo = shl nuw nsw i24 %i.bn, 14
  %i.bp = and i24 %i.bl, -507905
  %i.bq = or disjoint i24 %i.bo, %i.bp
  store i24 %i.bq, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang17CXXDefaultArgExpr7getExprEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 524288
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit.i

_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 4 uses
  %.not.i5.i = icmp eq ptr %i.d, null
  br i1 %.not.i5.i, label %_ZN5clang17CXXDefaultArgExpr24getAdjustedRewrittenExprEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit.i
  %i.e = load i16, ptr %i.d, align 8              ; 2 uses
  %i.f = and i16 %i.e, 510
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ne i16 %i.f, 62
  %i.g = and i16 %i.e, 63
  %i.h = icmp eq i16 %i.g, 63
  %or.cond.i = or i1 %spec.select.i.i.i.i.i.i.i.i.i, %i.h
  br i1 %or.cond.i, label %_ZN5clang17CXXDefaultArgExpr24getAdjustedRewrittenExprEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !254
  br label %_ZN5clang17CXXDefaultArgExpr24getAdjustedRewrittenExprEv.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !250
  %i.m = tail call noundef ptr @_ZN5clang11ParmVarDecl13getDefaultArgEv(ptr noundef nonnull align 8 dereferenceable(104) %i.l) #17
  br label %_ZN5clang17CXXDefaultArgExpr24getAdjustedRewrittenExprEv.exit

_ZN5clang17CXXDefaultArgExpr24getAdjustedRewrittenExprEv.exit: ; preds = %bb.c, %bb.b, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit.i, %bb.d
  %i.n = phi ptr [ %i.m, %bb.d ], [ %i.j, %bb.c ], [ null, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit.i ], [ %i.d, %bb.b ]
  ret ptr %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN5clang17CXXDefaultArgExpr24getAdjustedRewrittenExprEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 524288
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN4llvm19dyn_cast_if_presentIN5clang8FullExprENS1_4ExprEEEDaPT0_.exit.thread, label %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit

_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 4 uses
  %.not.i5 = icmp eq ptr %i.d, null
  br i1 %.not.i5, label %_ZN4llvm19dyn_cast_if_presentIN5clang8FullExprENS1_4ExprEEEDaPT0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit
  %i.e = load i16, ptr %i.d, align 8              ; 2 uses
  %i.f = and i16 %i.e, 510
  %spec.select.i.i.i.i.i.i.i.i = icmp ne i16 %i.f, 62
  %i.g = and i16 %i.e, 63
  %i.h = icmp eq i16 %i.g, 63
  %or.cond = or i1 %spec.select.i.i.i.i.i.i.i.i, %i.h
  br i1 %or.cond, label %_ZN4llvm19dyn_cast_if_presentIN5clang8FullExprENS1_4ExprEEEDaPT0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !254
  br label %_ZN4llvm19dyn_cast_if_presentIN5clang8FullExprENS1_4ExprEEEDaPT0_.exit.thread

_ZN4llvm19dyn_cast_if_presentIN5clang8FullExprENS1_4ExprEEEDaPT0_.exit.thread: ; preds = %bb.a, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit, %bb.b, %bb.c
  %i.k = phi ptr [ %i.j, %bb.c ], [ null, %bb.a ], [ %i.d, %bb.b ], [ null, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit ]
  ret ptr %i.k
}

declare noundef ptr @_ZN5clang11ParmVarDecl13getDefaultArgEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang18CXXDefaultInitExprC2ERKNS_10ASTContextENS_14SourceLocationEPNS_9FieldDeclENS_8QualTypeEPNS_11DeclContextEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) initializes((4, 32)) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1, i32 %2, ptr noundef %3, i64 %4, ptr noundef %5, ptr noundef %6) unnamed_addr #5 align 2 {
bb.a:
  %7 = alloca %"class.clang::QualType", align 8   ; 3 uses
  store i64 %4, ptr %7, align 8
  %i.a = call i64 @_ZNK5clang8QualType20getNonLValueExprTypeERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(23904) %1) #17
  %.0.copyload.i.i.i.i.i = load i64, ptr %7, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !33
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i8, ptr %i.i, align 16              ; 2 uses
  %i.k = icmp eq i8 %i.j, 42
  %i.l = icmp eq i8 %i.j, 43
  %i.m = load i16, ptr %0, align 8
  %i.n = and i16 %i.m, -512
  %i.o = or disjoint i16 %i.n, 115
  store i16 %i.o, ptr %0, align 8
  %i.p = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !122, !range !124, !noundef !80
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 115) #17
  br label %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit

_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit: ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i24, ptr %0, align 8
  %i.t = select i1 %i.l, i24 1024, i24 0
  %i.u = select i1 %i.k, i24 512, i24 %i.t
  %i.v = and i24 %i.s, -523777
  %i.w = or disjoint i24 %i.v, %i.u
  store i24 %i.w, ptr %0, align 8
  store i64 %i.a, ptr %i.r, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.x, align 8, !tbaa !256
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %5, ptr %i.y, align 8, !tbaa !259
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.z, align 4, !tbaa !121
  %.not = icmp eq ptr %6, null                    ; 2 uses
  %i.aa = load i32, ptr %0, align 8
  %i.ab = select i1 %.not, i32 0, i32 524288
  %i.ac = and i32 %i.aa, -524289
  %i.ad = or disjoint i32 %i.ac, %i.ab
  store i32 %i.ad, ptr %0, align 8
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %6, ptr %i.ae, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit
  %i.af = call noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_18CXXDefaultInitExprE(ptr noundef nonnull %0) #17
  %i.ag = load i24, ptr %0, align 8
  %i.ah = and i8 %i.af, 31
  %i.ai = zext nneg i8 %i.ah to i24
  %i.aj = shl nuw nsw i24 %i.ai, 14
  %i.ak = and i24 %i.ag, -507905
  %i.al = or disjoint i24 %i.aj, %i.ak
  store i24 %i.al, ptr %0, align 8
  ret void
}

declare i64 @_ZNK5clang8QualType20getNonLValueExprTypeERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #6

declare noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_18CXXDefaultInitExprE(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang18CXXDefaultInitExpr11CreateEmptyERKNS_10ASTContextEb(ptr noundef nonnull align 8 dereferenceable(23904) %0, i1 noundef zeroext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = select i1 %1, i64 40, i64 32             ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = add i64 %i.a, %i.d                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.g = load i64, ptr %i.f, align 8, !tbaa !68
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %_ZNK5clang10ASTContext8AllocateEmj.exit, label %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, !prof !69

_ZNK5clang10ASTContext8AllocateEmj.exit.thread:   ; preds = %bb.a
  %i.i = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %i.a, i64 noundef %i.a, i8 3)
  br label %bb.b

_ZNK5clang10ASTContext8AllocateEmj.exit:          ; preds = %bb.a
  %i.j = inttoptr i64 %i.e to ptr
  store ptr %i.j, ptr %i.b, align 8, !tbaa !54
end_hunk_0
