Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Expr?download=true
inline.NumInlined: 7608
inline.NumDeleted: 4168
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK5clang18ArraySubscriptExpr10getExprLocEv:bb.a
  %i.a = tail call noundef zeroext i1 @_ZNK5clang18ArraySubscriptExpr9lhsIsBaseEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %.in.v.i = select i1 %i.a, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.b = load ptr, ptr %.in.i, align 8, !tbaa !27
  %i.c = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN5clang12ConstantExpr14getStorageKindERKNS_7APValueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !85
  switch i32 %i.a, label %bb.c [
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !138
  %i.d = icmp ugt i32 %i.c, 64
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.a, %bb.c
  %.0 = phi i32 [ 2, %bb.c ], [ 0, %bb.a ], [ 0, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 1, 3) i32 @_ZN5clang12ConstantExpr14getStorageKindEPKNS_4TypeERKNS_10ASTContextE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(23904) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i38.i = load i64, ptr %i.a, align 8, !tbaa !42 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i38.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !48  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 16              ; 2 uses
  %i.g = icmp ne i8 %i.f, 13
  %.not.not3039.i = icmp eq ptr %i.d, null
  %.not.not40.i = or i1 %.not.not3039.i, %i.g
  br i1 %.not.not40.i, label %.lr.ph.i.preheader, label %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %.not.i9 = icmp eq i8 %i.f, 47
  br i1 %.not.i9, label %.split3, label %.lr.ph

.lr.ph.i:                                         ; preds = %tailrecurse.i
  %.not.i = icmp eq i8 %i.af, 47
  br i1 %.not.i, label %.split3, label %.lr.ph

.split3:                                          ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.lcssa = phi ptr [ %i.d, %.lr.ph.i.preheader ], [ %i.ad, %.lr.ph.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54   ; 2 uses
  %i.j = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.i) #30, !inline_history !2 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.j, null
  %..i.i = select i1 %.not.not.i.i, ptr %i.i, ptr %i.j ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %..i.i, i64 74
  %i.l = load i8, ptr %i.k, align 2
  %i.m = trunc i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %..i.i, i64 128
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.n, align 8
  %i.o = icmp ugt i64 %.0.copyload.i.i.i.i.i.i, 7
  %i.p = select i1 %i.m, i1 true, i1 %i.o
  br i1 %i.p, label %bb.b, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.0.copyload.i.i.i.i.i10 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %.lr.ph.i ], [ %.sroa.0.0.copyload.i.i.i38.i, %.lr.ph.i.preheader ]
  %i.q = and i64 %.sroa.0.0.copyload.i.i.i.i.i10, -16
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !48  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i8, ptr %i.t, align 16              ; 2 uses
  %i.v = icmp ne i8 %i.u, 35
  %.not17.not32.i = icmp eq ptr %i.s, null
  %.not17.not.i = or i1 %.not17.not32.i, %i.v
  br i1 %.not17.not.i, label %.split, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.w, align 16, !tbaa !42
  %i.x = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !42 ; 2 uses
  %i.ab = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !48 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i8, ptr %i.ae, align 16            ; 2 uses
  %i.ag = icmp ne i8 %i.af, 13
  %.not.not30.i = icmp eq ptr %i.ad, null
  %.not.not.i = or i1 %.not.not30.i, %i.ag
  br i1 %.not.not.i, label %.lr.ph.i, label %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit

.split:                                           ; preds = %.lr.ph
  %i.ah = icmp eq i8 %i.u, 10
  br i1 %i.ah, label %bb.b, label %.critedge

_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit: ; preds = %tailrecurse.i, %bb.a
  %.lcssa.i = phi ptr [ %i.d, %bb.a ], [ %i.ad, %tailrecurse.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %i.aj = load i32, ptr %i.ai, align 16
  %i.ak = lshr i32 %i.aj, 19
  %i.al = and i32 %i.ak, 1023
  %i.am = add nsw i32 %i.al, -453
  %spec.select.i.i = icmp ult i32 %i.am, 20
  br i1 %spec.select.i.i, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.split3, %.split, %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit
  %i.an = tail call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef nonnull %0) #30
  %i.ao = extractvalue { i64, i64 } %i.an, 0
  %i.ap = icmp ult i64 %i.ao, 65
  br i1 %i.ap, label %bb.c, label %.critedge

.critedge:                                        ; preds = %.split3, %.split, %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit, %bb.b
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  %.0 = phi i32 [ 2, %.critedge ], [ 1, %bb.b ]
  ret i32 %.0
}

declare { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang12ConstantExprC2EPNS_4ExprENS_25ConstantResultStorageKindEb(ptr noundef nonnull align 8 dereferenceable(24) initializes((8, 24)) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !42
  %i.b = load i24, ptr %1, align 8
  %i.c = load i16, ptr %0, align 8
  %i.d = and i16 %i.c, -512
  %i.e = or disjoint i16 %i.d, 63
  store i16 %i.e, ptr %0, align 8
  %i.f = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !139, !range !140, !noundef !141
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN5clang8FullExprC2ENS_4Stmt9StmtClassEPNS_4ExprE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 63) #30
  br label %_ZN5clang8FullExprC2ENS_4Stmt9StmtClassEPNS_4ExprE.exit

_ZN5clang8FullExprC2ENS_4Stmt9StmtClassEPNS_4ExprE.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i24, ptr %0, align 8
  %i.j = and i24 %i.i, -523777
  %i.k = and i24 %i.b, 15872
  %i.l = or disjoint i24 %i.j, %i.k
  store i24 %i.l, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.h, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.m, align 8, !tbaa !103
  %i.n = tail call noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_8FullExprE(ptr noundef nonnull align 8 dereferenceable(24) %0) #30
  %i.o = load i24, ptr %0, align 8
  %i.p = and i8 %i.n, 31
  %i.q = zext nneg i8 %i.p to i24
  %i.r = shl nuw nsw i24 %i.q, 14
  %i.s = and i24 %i.o, -507905
  %i.t = or disjoint i24 %i.r, %i.s
  store i24 %i.t, ptr %0, align 8
  %i.u = load i32, ptr %0, align 8
  %i.v = shl i32 %2, 19
  %i.w = and i32 %i.v, 1572864
  %i.x = and i32 %i.u, -66584577
  %i.y = or disjoint i32 %i.x, %i.w
  store i32 %i.y, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 4
  %i.ab = select i1 %3, i16 256, i16 0
  %i.ac = and i16 %i.aa, -512
  %i.ad = or disjoint i16 %i.ac, %i.ab
  store i16 %i.ad, ptr %i.z, align 4
  %i.ae = icmp eq i32 %2, 2
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5clang8FullExprC2ENS_4Stmt9StmtClassEPNS_4ExprE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.af, align 8, !tbaa !85
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 4
  %i.ai = and i8 %i.ah, -2
  store i8 %i.ai, ptr %i.ag, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5clang8FullExprC2ENS_4Stmt9StmtClassEPNS_4ExprE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang12ConstantExpr6CreateERKNS_10ASTContextEPNS_4ExprENS_25ConstantResultStorageKindEb(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 2
  %i.b = icmp eq i32 %2, 1
  %i.c = select i1 %i.a, i64 80, i64 24
  %i.d = select i1 %i.b, i64 32, i64 %i.c         ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !153  ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = add i64 %i.d, %i.g                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.j = load i64, ptr %i.i, align 8, !tbaa !154
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_ZNK5clang10ASTContext8AllocateEmj.exit, label %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, !prof !68

_ZNK5clang10ASTContext8AllocateEmj.exit.thread:   ; preds = %bb.a
  %i.l = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 noundef %i.d, i64 noundef %i.d, i8 3)
  br label %bb.b

_ZNK5clang10ASTContext8AllocateEmj.exit:          ; preds = %bb.a
  %i.m = inttoptr i64 %i.h to ptr
  store ptr %i.m, ptr %i.e, align 8, !tbaa !153
  %i.n = icmp eq ptr %i.f, null
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %.0.i.i.i9 = phi ptr [ %i.l, %_ZNK5clang10ASTContext8AllocateEmj.exit.thread ], [ %i.f, %_ZNK5clang10ASTContext8AllocateEmj.exit ] ; 2 uses
  tail call void @_ZN5clang12ConstantExprC1EPNS_4ExprENS_25ConstantResultStorageKindEb(ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i.i9, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %i.o = phi ptr [ %.0.i.i.i9, %bb.b ], [ null, %_ZNK5clang10ASTContext8AllocateEmj.exit ]
  ret ptr %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang12ConstantExpr6CreateERKNS_10ASTContextEPNS_4ExprERKNS_7APValueE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.clang::APValue", align 8    ; 4 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !85
  switch i32 %i.a, label %bb.c [
    i32 0, label %_ZN5clang12ConstantExpr14getStorageKindERKNS_7APValueE.exit.thread
    i32 1, label %_ZN5clang12ConstantExpr14getStorageKindERKNS_7APValueE.exit.thread
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !138
  %i.d = icmp ugt i32 %i.c, 64
  br i1 %i.d, label %bb.c, label %_ZN5clang12ConstantExpr14getStorageKindERKNS_7APValueE.exit.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %_ZN5clang12ConstantExpr14getStorageKindERKNS_7APValueE.exit.thread

_ZN5clang12ConstantExpr14getStorageKindERKNS_7APValueE.exit.thread: ; preds = %bb.c, %bb.b, %bb.a, %bb.a
  %.0.i8 = phi i32 [ 0, %bb.a ], [ 2, %bb.c ], [ 0, %bb.a ], [ 1, %bb.b ]
  %i.e = phi i64 [ 24, %bb.a ], [ 80, %bb.c ], [ 24, %bb.a ], [ 32, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !153  ; 3 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = add i64 %i.e, %i.h                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.k = load i64, ptr %i.j, align 8, !tbaa !154
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %_ZNK5clang10ASTContext8AllocateEmj.exit.i, label %_ZNK5clang10ASTContext8AllocateEmj.exit.thread.i, !prof !68

_ZNK5clang10ASTContext8AllocateEmj.exit.thread.i: ; preds = %_ZN5clang12ConstantExpr14getStorageKindERKNS_7APValueE.exit.thread
  %i.m = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 noundef %i.e, i64 noundef %i.e, i8 3)
  br label %bb.d

_ZNK5clang10ASTContext8AllocateEmj.exit.i:        ; preds = %_ZN5clang12ConstantExpr14getStorageKindERKNS_7APValueE.exit.thread
  %i.n = inttoptr i64 %i.i to ptr
  store ptr %i.n, ptr %i.f, align 8, !tbaa !153
  %i.o = icmp eq ptr %i.g, null
  br i1 %i.o, label %_ZN5clang12ConstantExpr6CreateERKNS_10ASTContextEPNS_4ExprENS_25ConstantResultStorageKindEb.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang10ASTContext8AllocateEmj.exit.i, %_ZNK5clang10ASTContext8AllocateEmj.exit.thread.i
  %.0.i.i.i9.i = phi ptr [ %i.m, %_ZNK5clang10ASTContext8AllocateEmj.exit.thread.i ], [ %i.g, %_ZNK5clang10ASTContext8AllocateEmj.exit.i ] ; 2 uses
  tail call void @_ZN5clang12ConstantExprC1EPNS_4ExprENS_25ConstantResultStorageKindEb(ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i.i9.i, ptr noundef %1, i32 noundef %.0.i8, i1 noundef zeroext false) #30
  br label %_ZN5clang12ConstantExpr6CreateERKNS_10ASTContextEPNS_4ExprENS_25ConstantResultStorageKindEb.exit

_ZN5clang12ConstantExpr6CreateERKNS_10ASTContextEPNS_4ExprENS_25ConstantResultStorageKindEb.exit: ; preds = %_ZNK5clang10ASTContext8AllocateEmj.exit.i, %bb.d
  %i.p = phi ptr [ %.0.i.i.i9.i, %bb.d ], [ null, %_ZNK5clang10ASTContext8AllocateEmj.exit.i ] ; 2 uses
  call void @_ZN5clang7APValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %2) #30
  call void @_ZN5clang12ConstantExpr14MoveIntoResultERNS_7APValueERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(23904) %0)
  %i.q = load i32, ptr %3, align 8, !tbaa !85
  %switch.i = icmp ult i32 %i.q, 2
  br i1 %switch.i, label %_ZN5clang7APValueD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5clang12ConstantExpr6CreateERKNS_10ASTContextEPNS_4ExprENS_25ConstantResultStorageKindEb.exit
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #30
  br label %_ZN5clang7APValueD2Ev.exit

_ZN5clang7APValueD2Ev.exit:                       ; preds = %_ZN5clang12ConstantExpr6CreateERKNS_10ASTContextEPNS_4ExprENS_25ConstantResultStorageKindEb.exit, %bb.e
  ret ptr %i.p
}

declare void @_ZN5clang7APValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang12ConstantExprC2ENS_4Stmt10EmptyShellENS_25ConstantResultStorageKindE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((8, 16)) %0, i32 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8
  %i.b = and i16 %i.a, -512
  %i.c = or disjoint i16 %i.b, 63
  store i16 %i.c, ptr %0, align 8
  %i.d = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !139, !range !140, !noundef !141
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN5clang8FullExprC2ENS_4Stmt9StmtClassENS1_10EmptyShellE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 63) #30
  br label %_ZN5clang8FullExprC2ENS_4Stmt9StmtClassENS1_10EmptyShellE.exit

_ZN5clang8FullExprC2ENS_4Stmt9StmtClassENS1_10EmptyShellE.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  %i.g = load i32, ptr %0, align 8
  %i.h = shl i32 %1, 19
  %i.i = and i32 %i.h, 1572864
  %i.j = and i32 %i.g, -1572865
  %i.k = or disjoint i32 %i.j, %i.i
  store i32 %i.k, ptr %0, align 8
  %i.l = icmp eq i32 %1, 2
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5clang8FullExprC2ENS_4Stmt9StmtClassENS1_10EmptyShellE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.m, align 8, !tbaa !85
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, -2
  store i8 %i.p, ptr %i.n, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5clang8FullExprC2ENS_4Stmt9StmtClassENS1_10EmptyShellE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang12ConstantExpr11CreateEmptyERKNS_10ASTContextENS_25ConstantResultStorageKindE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 2
  %i.b = icmp eq i32 %1, 1
  %i.c = select i1 %i.a, i64 80, i64 24
  %i.d = select i1 %i.b, i64 32, i64 %i.c         ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !153  ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = add i64 %i.d, %i.g                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.j = load i64, ptr %i.i, align 8, !tbaa !154
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_ZNK5clang10ASTContext8AllocateEmj.exit, label %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, !prof !68

_ZNK5clang10ASTContext8AllocateEmj.exit.thread:   ; preds = %bb.a
  %i.l = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 noundef %i.d, i64 noundef %i.d, i8 3)
  br label %bb.b

_ZNK5clang10ASTContext8AllocateEmj.exit:          ; preds = %bb.a
  %i.m = inttoptr i64 %i.h to ptr
  store ptr %i.m, ptr %i.e, align 8, !tbaa !153
  %i.n = icmp eq ptr %i.f, null
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %.0.i.i.i7 = phi ptr [ %i.l, %_ZNK5clang10ASTContext8AllocateEmj.exit.thread ], [ %i.f, %_ZNK5clang10ASTContext8AllocateEmj.exit ] ; 2 uses
  tail call void @_ZN5clang12ConstantExprC1ENS_4Stmt10EmptyShellENS_25ConstantResultStorageKindE(ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i.i7, i32 noundef %1) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %i.o = phi ptr [ %.0.i.i.i7, %bb.b ], [ null, %_ZNK5clang10ASTContext8AllocateEmj.exit ]
  ret ptr %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang12ConstantExpr14MoveIntoResultERNS_7APValueERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(23904) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !85
  %i.b = load i32, ptr %0, align 8                ; 3 uses
  %i.c = shl i32 %i.a, 21
  %i.d = and i32 %i.c, 31457280
  %i.e = and i32 %i.b, -31457281
  %i.f = or disjoint i32 %i.e, %i.d               ; 2 uses
  store i32 %i.f, ptr %0, align 8
  %i.g = lshr i32 %i.b, 19
  %i.h = and i32 %i.g, 3
  switch i32 %i.h, label %bb.g [
    i32 0, label %bb.h
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !138  ; 2 uses
  %i.l = icmp ult i32 %i.k, 65
  %i.m = load ptr, ptr %i.i, align 8
  %spec.select.i = select i1 %i.l, ptr %i.i, ptr %i.m
  %i.n = load i64, ptr %spec.select.i, align 8, !tbaa !93
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = and i32 %i.b, 1572864
  %i.q = icmp eq i32 %i.p, 1048576
  %i.r = zext i1 %i.q to i64
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %i.r
  store i64 %i.n, ptr %i.s, align 8, !tbaa !93
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.u = trunc i32 %i.k to i16
  %i.v = load i16, ptr %i.t, align 4
  %i.w = and i16 %i.u, 127
  %i.x = and i16 %i.v, -128
  %i.y = or disjoint i16 %i.x, %i.w
  store i16 %i.y, ptr %i.t, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !156, !range !140, !noundef !141
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 25
  %i.ad = and i32 %i.f, -33554433
  %i.ae = or disjoint i32 %i.ac, %i.ad
  store i32 %i.ae, ptr %0, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ag = load i16, ptr %i.af, align 4
  %i.ah = and i16 %i.ag, 128
  %.not = icmp eq i16 %i.ah, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ai = tail call noundef zeroext i1 @_ZNK5clang7APValue12needsCleanupEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #30
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = load i16, ptr %i.af, align 4
  %i.ak = or i16 %i.aj, 128
  store i16 %i.ak, ptr %i.af, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNK5clang10ASTContext15AddDeallocationEPFvPvES1_(ptr noundef nonnull align 8 dereferenceable(23904) %2, ptr noundef nonnull @_ZZNK5clang10ASTContext14addDestructionINS_7APValueEEEvPT_ENUlPvE_8__invokeES5_, ptr noundef nonnull %i.al) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef nonnull align 8 dereferenceable(56) %1) #30 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  unreachable

bb.h:                                             ; preds = %bb.a, %bb.f, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZNK5clang7APValue12needsCleanupEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang12ConstantExpr17getResultAsAPSIntEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::APSInt") align 8 initializes((8, 12)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvm::APInt", align 8       ; 3 uses
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1572864
  %i.c = icmp eq i32 %i.b, 1048576
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !138  ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !138
  %i.h = icmp ult i32 %i.g, 65
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.d, align 8, !tbaa !42
  store i64 %i.i, ptr %0, align 8, !tbaa !42
  br label %_ZN4llvm6APSIntC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(13) %i.d) #30
  br label %_ZN4llvm6APSIntC2ERKS0_.exit

_ZN4llvm6APSIntC2ERKS0_.exit:                     ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.l = load i8, ptr %i.k, align 4, !tbaa !156, !range !140, !noundef !141
  store i8 %i.l, ptr %i.j, align 4, !tbaa !156
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i16, ptr %i.m, align 4
  %i.o = and i16 %i.n, 127                        ; 2 uses
  %i.p = zext nneg i16 %i.o to i32                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !93   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 %i.p, ptr %i.s, align 8, !tbaa !138
  %i.t = icmp samesign ult i16 %i.o, 65
  br i1 %i.t, label %_ZN4llvm5APIntD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.r, i1 noundef zeroext false) #30
  %.pre = load i32, ptr %1, align 8
  %.pre1 = load i32, ptr %i.s, align 8, !tbaa !138
  %.pre2 = load i64, ptr %2, align 8
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.e, %bb.f
  %i.u = phi i64 [ %.pre2, %bb.f ], [ %i.r, %bb.e ]
  %i.v = phi i32 [ %.pre1, %bb.f ], [ %i.p, %bb.e ]
  %i.w = phi i32 [ %.pre, %bb.f ], [ %i.a, %bb.e ]
  %i.x = lshr i32 %i.w, 25
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = and i8 %i.y, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.v, ptr %i.aa, align 8, !tbaa !138
  store i64 %i.u, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.z, ptr %i.ab, align 4, !tbaa !156
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit, %_ZN4llvm6APSIntC2ERKS0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang12ConstantExpr16getAPValueResultEv(ptr dead_on_unwind noalias writable sret(%"class.clang::APValue") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvm::APInt", align 8       ; 3 uses
  %i.a = load i32, ptr %1, align 8                ; 4 uses
  %i.b = lshr i32 %i.a, 19
  %i.c = and i32 %i.b, 3
  switch i32 %i.c, label %bb.h [
    i32 2, label %bb.b
    i32 1, label %bb.c
    i32 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZN5clang7APValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.d) #30
  br label %_ZN4llvm5APIntD2Ev.exit1

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i16, ptr %i.e, align 4
  %i.g = and i16 %i.f, 127                        ; 2 uses
  %i.h = zext nneg i16 %i.g to i32                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = and i32 %i.a, 1572864
  %i.k = icmp eq i32 %i.j, 1048576
  %i.l = zext i1 %i.k to i64
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %i.l
end_hunk_0
