Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaSYCL?download=true
inline.NumInlined: 26592
inline.NumDeleted: 12341
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5clang11SemaOpenACC19LoopInConstructRAIID2Ev:bb.a

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.at) #22
  br label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit

_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit: ; preds = %_ZN4llvm6APSIntaSERKS0_.exit.i.i.i.i.i.i, %_ZNSt22_Optional_payload_baseIN4llvm6APSIntEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i, %bb.j, %bb.k, %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.aw = load i16, ptr %i.f, align 8
  store i16 %i.aw, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load ptr, ptr %0, align 8, !tbaa !2100, !nonnull !32, !align !33
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.az, ptr noundef nonnull align 8 dereferenceable(14) %i.ax, i64 14, i1 false), !tbaa.struct !1416
  %i.ba = load ptr, ptr %0, align 8, !tbaa !2100, !nonnull !32, !align !33 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 136
  store i8 %.in, ptr %i.bb, align 8, !tbaa !2120
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 156
  store i8 %.in3, ptr %i.bc, align 4, !tbaa !2121
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 96 ; 2 uses
  %.lobit = and i8 %.in4.in.in, 2
  %i.be = load i8, ptr %i.bd, align 8
  %i.bf = and i8 %i.be, -3
  %i.bg = or disjoint i8 %i.bf, %.lobit
  store i8 %i.bg, ptr %i.bd, align 8
  %i.bh = load i8, ptr %i.u, align 8, !tbaa !1410, !range !49, !noundef !32
  %i.bi = trunc nuw i8 %i.bh to i1
  store i8 0, ptr %i.u, align 8, !tbaa !1410
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = icmp ugt i32 %i.bk, 64
  %or.cond.i.i.i.i = select i1 %i.bi, i1 %i.bl, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.m, label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit

bb.m:                                             ; preds = %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit
  %i.bm = load ptr, ptr %i.q, align 8, !tbaa !48  ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.bm) #22
  br label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit

_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit: ; preds = %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit, %bb.m, %bb.n
  ret void
}

declare void @_ZN5clang4Sema22ActOnConditionVariableEPNS_4DeclENS_14SourceLocationENS0_13ConditionKindE(ptr dead_on_unwind writable sret(%"class.clang::Sema::ConditionResult") align 8, ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, i32 noundef) local_unnamed_addr #1

declare void @_ZN5clang4Sema14ActOnConditionEPNS_5ScopeENS_14SourceLocationEPNS_4ExprENS0_13ConditionKindEb(ptr dead_on_unwind writable sret(%"class.clang::Sema::ConditionResult") align 8, ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640), i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640)) local_unnamed_addr #1

declare void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #1

declare i64 @_ZN5clang4Sema14ActOnWhileStmtENS_14SourceLocationES1_NS0_15ConditionResultES1_PNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i32, ptr noundef byval(%"class.clang::Sema::ConditionResult") align 8, i32, ptr noundef) local_unnamed_addr #1

declare void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

declare i64 @_ZN5clang4Sema14ActOnLabelStmtENS_14SourceLocationEPNS_9LabelDeclES1_PNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, i32, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4AttrELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #20
  %i.f = load ptr, ptr %0, align 8, !tbaa !43
  %i.g = load i32, ptr %i.a, align 8, !tbaa !45
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !45
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !45
  ret void
}

declare noundef zeroext i1 @_ZN5clang4Sema26CheckRebuiltStmtAttributesEN4llvm8ArrayRefIPKNS_4AttrEEE(ptr noundef nonnull align 8 dereferenceable(18640), ptr, i64) local_unnamed_addr #1

declare i64 @_ZN5clang4Sema19BuildAttributedStmtENS_14SourceLocationEN4llvm8ArrayRefIPKNS_4AttrEEEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr, i64, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN5clang10SwitchStmt20getConditionVariableEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare i64 @_ZN5clang4Sema22ActOnStartOfSwitchStmtENS_14SourceLocationES1_PNS_4StmtENS0_15ConditionResultES1_(ptr noundef nonnull align 8 dereferenceable(18640), i32, i32, ptr noundef, ptr noundef byval(%"class.clang::Sema::ConditionResult") align 8, i32) local_unnamed_addr #1

declare i64 @_ZN5clang4Sema21ActOnFinishSwitchStmtENS_14SourceLocationEPNS_4StmtES3_(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @_ZN5clang4Sema16ActOnDefaultStmtENS_14SourceLocationES1_PNS_4StmtEPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i32, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @_ZN5clang4Sema13ActOnCaseExprENS_14SourceLocationENS_12ActionResultIPNS_4ExprELb1EEE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i64) local_unnamed_addr #1

declare i64 @_ZN5clang4Sema13ActOnCaseStmtENS_14SourceLocationENS_12ActionResultIPNS_4ExprELb1EEES1_S5_S1_(ptr noundef nonnull align 8 dereferenceable(18640), i32, i64, i32, i64, i32) local_unnamed_addr #1

declare void @_ZN5clang4Sema17ActOnCaseStmtBodyEPNS_4StmtES2_(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @_ZN5clang4Sema16ActOnSEHTryBlockEbNS_14SourceLocationEPNS_4StmtES3_(ptr noundef nonnull align 8 dereferenceable(18640), i1 noundef zeroext, i32, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN5clang14SEHFinallyStmt6CreateERKNS_10ASTContextENS_14SourceLocationEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(23904), i32, ptr noundef) local_unnamed_addr #1

declare i64 @_ZN5clang4Sema19ActOnSEHExceptBlockENS_14SourceLocationEPNS_4ExprEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.1395", align 8 ; 10 uses
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1564 ; 2 uses
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1392
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1566 ; 2 uses
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1569
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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1572 ; 3 uses
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
  %i.ad = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %.3.lcssa) #20 ; 2 uses
  %.pre144 = load i16, ptr %i.ad, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.ae = phi i16 [ %i.ab, %._crit_edge ], [ %.pre144, %bb.i ] ; 2 uses
  %.5 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %i.ad, %bb.i ] ; 16 uses
  %i.af = and i16 %i.ae, 511                      ; 3 uses
  %i.ag = icmp eq i16 %i.af, 101
  br i1 %i.ag, label %4, label %bb.k

4:                                                ; preds = %bb.j
  %5 = getelementptr inbounds nuw i8, ptr %.5, i64 16
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %4, %bb.u
  %.tr118.be.in = phi ptr [ %5, %4 ], [ %spec.select.i.i.i, %bb.u ]
  %.tr118.be = load ptr, ptr %.tr118.be.in, align 8, !tbaa !163 ; 2 uses
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
  %i.al = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.5)
  br label %.loopexit

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.am = phi i16 [ %i.ak, %bb.m ], [ %i.ae, %bb.k ]
  switch i16 %i.af, label %bb.r [
    i16 102, label %bb.p
    i16 56, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.an = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.5) #23 ; 2 uses
  %.sroa.076.0.extract.trunc = trunc i64 %i.an to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.an, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %.val53 = load ptr, ptr %0, align 8, !tbaa !1388
  %i.ao = tail call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val53, i32 %.sroa.076.0.extract.trunc, i32 %.sroa.4.0.extract.trunc, ptr null, i64 0) #20
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  %.val52 = load ptr, ptr %0, align 8, !tbaa !1388
  %i.ap = tail call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val52, i32 0, i32 0, ptr null, i64 0) #20
  br label %.loopexit

bb.r:                                             ; preds = %bb.o
  %i.aq = and i16 %i.am, 511
  %i.ar = icmp eq i16 %i.aq, 118
  %or.cond = or i1 %spec.select.i.i.i.i.i.i.i.i60, %i.ar
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.as = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.5)
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.at = load i32, ptr %.5, align 8              ; 3 uses
  %i.au = and i32 %i.at, 4194304
  %.not116 = icmp eq i32 %i.au, 0
  br i1 %.not116, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = and i32 %i.at, 511
  %.not.i.i.i = icmp eq i32 %i.av, 118            ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i, ptr %.5, ptr null
  %6 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 48
  %7 = getelementptr inbounds nuw i8, ptr %.5, i64 40
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr %6, ptr %7
  br label %tailrecurse.backedge

bb.v:                                             ; preds = %bb.t
  %.val50 = load ptr, ptr %0, align 8, !tbaa !1388 ; 8 uses
  %i.aw = and i32 %i.at, 2097152
  %.not154 = icmp eq i32 %i.aw, 0
  br i1 %.not154, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %.val50, i64 4592
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %.val50, i64 4600
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !45
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [792 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -792
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !870
  switch i32 %i.be, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.x
    i32 3, label %bb.x
    i32 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w
  %i.bf = getelementptr inbounds nuw i8, ptr %.val50, i64 216
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1286, !nonnull !32, !align !33
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = and i64 %i.bh, 8192
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val50, i32 noundef 1, ptr noundef null, i32 noundef 4) #20
  %.val49.pre = load ptr, ptr %0, align 8, !tbaa !1388
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %.val49 = phi ptr [ %.val50, %bb.w ], [ %.val50, %bb.x ], [ %.val49.pre, %bb.y ], [ %.val50, %bb.v ] ; 2 uses
  %.sroa.4.0 = phi i1 [ false, %bb.w ], [ false, %bb.x ], [ true, %bb.y ], [ false, %bb.v ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.val49, i64 4592
  %i.bk = getelementptr inbounds nuw i8, ptr %.val49, i64 4600
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !45
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !43
  %i.bo = getelementptr [792 x i8], ptr %i.bn, i64 %i.bm ; 4 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 -831
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !1547, !range !49, !noundef !32
  %i.br = getelementptr inbounds i8, ptr %i.bo, i64 -39
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !1547
  %i.bs = getelementptr i8, ptr %i.bo, i64 -829
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !1548, !range !49, !noundef !32
  %i.bu = getelementptr inbounds i8, ptr %i.bo, i64 -37
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !1548
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.bv, ptr %3, align 8, !tbaa !43
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.bw, align 8, !tbaa !45
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.bx, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !35
  %i.by = load i16, ptr %.5, align 8
  %i.bz = and i16 %i.by, 511
  %.not.i.i = icmp eq i16 %i.bz, 118              ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not.i.i, ptr %.5, ptr null
  %8 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 48
  %i.ca = getelementptr inbounds nuw i8, ptr %.5, i64 40
  %spec.select.i.i64 = select i1 %.not.i.i, ptr %8, ptr %i.ca
  %i.cb = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !1575
  %i.cd = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %spec.select.i.i64, i32 noundef %i.cc, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a)
  br i1 %i.cd, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %i.ce = load i32, ptr %.5, align 8
  %i.cf = and i32 %i.ce, 2097152
  %.not117 = icmp eq i32 %i.cf, 0
  br i1 %.not117, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %.5) #23
  %i.ch = load ptr, ptr %3, align 8, !tbaa !43
  %i.ci = load i32, ptr %i.bw, align 8, !tbaa !45
  %i.cj = zext i32 %i.ci to i64
  %i.ck = call i32 @_ZNK5clang16CXXConstructExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(36) %.5) #23
  %.val54 = load ptr, ptr %0, align 8, !tbaa !1388
  %i.cl = call i64 @_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val54, i32 %i.cg, ptr %i.ch, i64 %i.cj, i32 %i.ck, i1 noundef zeroext true) #20
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
  %i.cp = load ptr, ptr %3, align 8, !tbaa !43
  %i.cq = load i32, ptr %i.bw, align 8, !tbaa !45
  %i.cr = zext i32 %i.cq to i64
  %.val51 = load ptr, ptr %0, align 8, !tbaa !1388
  %i.cs = call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val51, i32 %.sroa.068.0.extract.trunc, i32 %.sroa.5.0.extract.trunc, ptr %i.cp, i64 %i.cr) #20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %bb.aa
  %.sroa.097.1 = phi i64 [ 1, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ], [ %i.cl, %bb.aa ], [ %i.cs, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ct = load ptr, ptr %3, align 8, !tbaa !43    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bv
  br i1 %i.cu, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef %i.ct) #20
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %.sroa.4.0, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val50) #20
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse.backedge, %bb.af, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %bb.a, %bb.n, %bb.q, %bb.s, %bb.p
  %.sroa.097.3 = phi i64 [ %i.al, %bb.n ], [ %i.ao, %bb.p ], [ %i.ap, %bb.q ], [ %i.as, %bb.s ], [ %.sroa.097.1, %bb.af ], [ 0, %bb.a ], [ %.sroa.097.1, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 0, %tailrecurse.backedge ]
  ret i64 %.sroa.097.3
}

declare noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.1398", align 8 ; 8 uses
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1435 ; 4 uses
  br i1 %3, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #20
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %.not81, label %.critedge88, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %5, align 1, !tbaa !35
  br label %.critedge88

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1435 ; 3 uses
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1577 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %i.d, ptr %6, align 8, !tbaa !43
  store i32 0, ptr %i.e, align 8, !tbaa !45
  store i32 2, ptr %i.f, align 4, !tbaa !44
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksEPNS_4ExprERN4llvm15SmallVectorImplISt4pairINS3_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !1578
  %.val89 = load ptr, ptr %0, align 8, !tbaa !1388
  %i.v = getelementptr inbounds nuw i8, ptr %.val89, i64 13800 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.v, align 4, !tbaa !51
  store i32 0, ptr %i.v, align 4, !tbaa !51
  %i.w = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.s) ; 2 uses
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = and i64 %i.w, -2
  %i.aa = inttoptr i64 %i.z to ptr
  %.sroa.0.0.copyload.i94 = load i32, ptr %i.y, align 8, !tbaa !51
  %.val93 = load ptr, ptr %0, align 8, !tbaa !1388
  %i.ab = call i64 @_ZN5clang4Sema18CheckPackExpansionEPNS_4ExprENS_14SourceLocationENS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val93, ptr noundef %i.aa, i32 %.sroa.0.0.copyload.i94, i32 %i.u) #20 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not81, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %5, align 1, !tbaa !35
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = and i64 %i.ab, -2
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load i32, ptr %i.b, align 8, !tbaa !45  ; 2 uses
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !44
  %.not.i = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i, label %bb.m, label %bb.l, !prof !112

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ae)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = zext i32 %i.af to i64
  %i.ai = load ptr, ptr %4, align 8, !tbaa !43
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  store ptr %i.ae, ptr %i.aj, align 1
  %i.ak = load i32, ptr %i.b, align 8, !tbaa !45
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.b, align 8, !tbaa !45
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.h, %bb.l, %bb.m, %bb.g
  %cond = phi i1 [ false, %bb.g ], [ false, %bb.h ], [ true, %bb.l ], [ true, %bb.m ]
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.v, align 8, !tbaa !51
  %i.am = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @free(ptr noundef %i.am) #20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br i1 %cond, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit103, label %.critedge88

.thread136:                                       ; preds = %bb.f
  %i.ao = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.l, i1 noundef zeroext false)
  br label %bb.p

.thread136.thread:                                ; preds = %.thread
  %i.ap = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.i)
  br label %bb.p

bb.p:                                             ; preds = %.thread136.thread, %.thread136
  %i.aq = phi ptr [ %i.h, %.thread136.thread ], [ %i.k, %.thread136 ]
  %storemerge = phi i64 [ %i.ap, %.thread136.thread ], [ %i.ao, %.thread136 ] ; 2 uses
  %i.ar = icmp eq i64 %storemerge, 1
end_hunk_0
begin_hunk_1_@_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE19TransformMemberExprEPNS_10MemberExprE:bb.a
  %.val50.i = load ptr, ptr %0, align 8, !tbaa !1388
  %i.fi = getelementptr inbounds nuw i8, ptr %.0, i64 28
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = lshr i32 %i.fj, 13
  %i.fl = and i32 %i.fk, 3
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = ptrtoint ptr %.0 to i64
  %i.fo = or i64 %i.fm, %i.fn
  %i.fp = call i64 @_ZN5clang4Sema23BuildFieldReferenceExprEPNS_4ExprEbNS_14SourceLocationERKNS_12CXXScopeSpecEPNS_9FieldDeclENS_14DeclAccessPairERKNS_19DeclarationNameInfoE(ptr noundef nonnull align 8 dereferenceable(18640) %.val50.i, ptr noundef %.0.i110, i1 noundef zeroext %i.ei, i32 %i.dy, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %.0.i, i64 %i.fo, ptr noundef nonnull align 8 dereferenceable(24) %6) #20
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !1283
  %.not.i.i.i111 = icmp eq i32 %i.fr, 0
  br i1 %.not.i.i.i111, label %_ZN5clang12CXXScopeSpecD2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !1284
  call void @free(ptr noundef %i.ft) #20
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit.i

_ZN5clang12CXXScopeSpecD2Ev.exit.i:               ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE17RebuildMemberExprEPNS_4ExprENS_14SourceLocationEbNS_22NestedNameSpecifierLocES6_RKNS_19DeclarationNameInfoEPNS_9ValueDeclEPNS_9NamedDeclEPKNS_24TemplateArgumentListInfoESE_.exit

bb.x:                                             ; preds = %_ZNK5clang10MemberExpr23hasExplicitTemplateArgsEv.exit105.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 %.sroa.0116.0, ptr %.sroa.6.0) #20
  %i.fu = and i64 %i.et, -2
  %i.fv = inttoptr i64 %i.fu to ptr               ; 4 uses
  %i.fw = load i24, ptr %i.fv, align 8
  %i.fx = and i24 %i.fw, 262144
  %.not24.i = icmp eq i24 %i.fx, 0
  br i1 %.not24.i, label %bb.y, label %bb.at

bb.y:                                             ; preds = %bb.x
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i55.i = load i64, ptr %i.fy, align 8, !tbaa !48 ; 2 uses
  br i1 %i.ei, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fz = and i64 %.sroa.0.0.copyload.i55.i, -16
  %i.ga = inttoptr i64 %i.fz to ptr
  %i.gb = load ptr, ptr %i.ga, align 16, !tbaa !58
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.gc, align 8, !tbaa !48
  %i.gd = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = load ptr, ptr %i.ge, align 16, !tbaa !58
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load i8, ptr %i.gg, align 16
  %i.gi = icmp eq i8 %i.gh, 40
  br i1 %i.gi, label %bb.aa, label %bb.at

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %.val49.i = load ptr, ptr %0, align 8, !tbaa !1388
  store i32 0, ptr %4, align 8, !tbaa !1275
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.gj, align 4, !tbaa !1276
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.gl, ptr %i.gk, align 8, !tbaa !43
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i32 0, ptr %i.gm, align 8, !tbaa !45
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  store i32 8, ptr %i.gn, align 4, !tbaa !44
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.go, i8 0, i64 24, i1 false)
  store ptr %.val49.i, ptr %i.gp, align 8, !tbaa !1277
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gq, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1460
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 144
  store <4 x i32> <i32 0, i32 0, i32 3, i32 0>, ptr %i.gr, align 8, !tbaa !48
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 163
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 164
  store <8 x i8> <i8 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0>, ptr %i.gs, align 8, !tbaa !35
  call void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168) %4) #20
  %i.gv = getelementptr inbounds nuw i8, ptr %.0, i64 28
  %i.gw = load i32, ptr %i.gv, align 4
  %i.gx = lshr i32 %i.gw, 13
  %i.gy = and i32 %i.gx, 3
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = ptrtoint ptr %.0 to i64
  %i.hb = or i64 %i.gz, %i.ha                     ; 2 uses
  %i.hc = load i32, ptr %i.gm, align 8, !tbaa !45 ; 2 uses
  %i.hd = load i32, ptr %i.gn, align 4, !tbaa !44
  %.not.i.i.i.i.i = icmp ult i32 %i.hc, %i.hd
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab, !prof !112

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i64 %i.hb)
  br label %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.he = zext i32 %i.hc to i64
  %i.hf = load ptr, ptr %i.gk, align 8, !tbaa !43
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.he
  store i64 %i.hb, ptr %i.hg, align 1
  %i.hh = load i32, ptr %i.gm, align 8, !tbaa !45
  %i.hi = add i32 %i.hh, 1
  store i32 %i.hi, ptr %i.gm, align 8, !tbaa !45
  br label %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i

_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i: ; preds = %bb.ac, %bb.ab
  store i32 2, ptr %4, align 8, !tbaa !1275
  call void @_ZN5clang12LookupResult11resolveKindEv(ptr noundef nonnull align 8 dereferenceable(168) %4) #20
  %.val48.i = load ptr, ptr %0, align 8, !tbaa !1388 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.val48.i, i64 4592
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !43
  %i.hl = getelementptr inbounds nuw i8, ptr %.val48.i, i64 4600
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !45
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [792 x i8], ptr %i.hk, i64 %i.hn
  %i.hp = getelementptr inbounds i8, ptr %i.ho, i64 -792
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !870
  switch i32 %i.hq, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i [
    i32 0, label %bb.ad
    i32 3, label %bb.ad
    i32 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i, %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i, %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i
  %i.hr = call noundef zeroext i1 @_ZNK5clang4Expr17isImplicitCXXThisEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fv) #20
  br i1 %i.hr, label %bb.ae, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.ht = load i32, ptr %i.hs, align 4
  %i.hu = and i32 %i.ht, 127
  switch i32 %i.hu, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i [
    i32 52, label %bb.af
    i32 51, label %bb.af
    i32 50, label %bb.af
    i32 49, label %bb.af
    i32 33, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae
  %.sroa.0.0.copyload.i56.i = load i64, ptr %i.fy, align 8, !tbaa !48
  %i.hv = and i64 %.sroa.0.0.copyload.i56.i, -16
  %i.hw = inttoptr i64 %i.hv to ptr
  %i.hx = load ptr, ptr %i.hw, align 16, !tbaa !58
  %i.hy = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.hx) #20
  %i.hz = and i64 %i.hy, -16
  %i.ia = inttoptr i64 %i.hz to ptr
  %i.ib = load ptr, ptr %i.ia, align 16, !tbaa !58
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %.sroa.0.0.copyload.i.i.i.i59.i = load i64, ptr %i.ic, align 8, !tbaa !48
  %i.id = and i64 %.sroa.0.0.copyload.i.i.i.i59.i, -16
  %i.ie = inttoptr i64 %i.id to ptr
  %i.if = load ptr, ptr %i.ie, align 16, !tbaa !58 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load i8, ptr %i.ig, align 16            ; 3 uses
  %i.ii = add i8 %i.ih, -47
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ii, 3
  %.not.i7.i.i = icmp ne ptr %i.if, null
  %.not.i.not8.i.i = and i1 %.not.i7.i.i, %switch.i.i.i.i.i.i.i.i.i.i.i
  %i.ij = and i8 %i.ih, 62
  %spec.select.i.i.i.i = icmp eq i8 %i.ij, 48
  %or.cond.i.i = and i1 %spec.select.i.i.i.i, %.not.i.not8.i.i
  br i1 %or.cond.i.i, label %bb.ag, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !123 ; 3 uses
  %i.im = icmp eq i8 %i.ih, 49
  br i1 %i.im, label %bb.ah, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 28
  %i.io = load i32, ptr %i.in, align 4
  %i.ip = and i32 %i.io, 127
  %i.iq = add nsw i32 %i.ip, -60
  %i.ir = icmp ult i32 %i.iq, 3
  br i1 %i.ir, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i:     ; preds = %bb.ah, %bb.ag
  %i.is = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.il) ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.is, null
  %spec.select22.i = select i1 %.not.not.i.i.i, ptr %i.il, ptr %i.is ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.it, align 8 ; 3 uses
  %i.iu = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i
  %i.iw = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit.i

bb.aj:                                            ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i
  %i.ix = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.iy = inttoptr i64 %i.ix to ptr
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !1348
  br label %_ZN5clang4Decl14getDeclContextEv.exit.i

_ZN5clang4Decl14getDeclContextEv.exit.i:          ; preds = %bb.aj, %bb.ai
  %.0.i.i = phi ptr [ %i.iw, %bb.ai ], [ %i.iz, %bb.aj ] ; 2 uses
  %8 = icmp eq ptr %.0.i.i, null                  ; 2 uses
  %9 = getelementptr inbounds i8, ptr %.0.i.i, i64 -64
  %10 = select i1 %8, ptr null, ptr %9            ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %spec.select22.i, i64 64
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %spec.select.i = select i1 %8, ptr null, ptr %11
  %i.jb = call noundef zeroext i1 @_ZNK5clang11DeclContext6EqualsEPKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.ja, ptr noundef %spec.select.i)
  br i1 %i.jb, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN5clang4Decl14getDeclContextEv.exit.i
  %i.jc = call noundef zeroext i1 @_ZNK5clang13CXXRecordDecl13isDerivedFromEPKS0_(ptr noundef nonnull align 8 dereferenceable(144) %spec.select22.i, ptr noundef %10) #20
  br i1 %i.jc, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ak
  %.val47.i = load ptr, ptr %0, align 8, !tbaa !1388
  %i.jd = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %.sroa.0.0.copyload.i60.i = load i64, ptr %i.jd, align 8, !tbaa !48
  %i.je = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %.sroa.0.0.copyload.i61.i = load i32, ptr %i.je, align 8, !tbaa !51
  %i.jf = call noundef ptr @_ZN5clang4Sema16BuildDeclRefExprEPNS_9ValueDeclENS_8QualTypeENS_13ExprValueKindENS_14SourceLocationEPKNS_12CXXScopeSpecE(ptr noundef nonnull align 8 dereferenceable(18640) %.val47.i, ptr noundef nonnull %.0.i, i64 %.sroa.0.0.copyload.i60.i, i32 noundef 1, i32 %.sroa.0.0.copyload.i61.i, ptr noundef null) #20
  %i.jg = ptrtoint ptr %i.jf to i64
  br label %bb.al

_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i:   ; preds = %bb.ak, %_ZN5clang4Decl14getDeclContextEv.exit.i, %bb.ah, %bb.af, %bb.ae, %bb.ad, %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i
  %.val.i = load ptr, ptr %0, align 8, !tbaa !1388
  %i.jh = call i64 @_ZN5clang4Sema24BuildMemberReferenceExprEPNS_4ExprENS_8QualTypeENS_14SourceLocationEbRKNS_12CXXScopeSpecES4_PNS_9NamedDeclERNS_12LookupResultEPKNS_24TemplateArgumentListInfoEPKNS_5ScopeEbPNS0_26ActOnMemberAccessExtraArgsE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, ptr noundef nonnull %i.fv, i64 %.sroa.0.0.copyload.i55.i, i32 %i.dy, i1 noundef zeroext %i.ei, ptr noundef nonnull align 8 dereferenceable(48) %3, i32 %.sroa.0.0.i60, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(168) %4, ptr noundef %i.es, ptr noundef null, i1 noundef zeroext false, ptr noundef null) #20
  br label %bb.al

bb.al:                                            ; preds = %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i, %.critedge.i
  %.sroa.019.0.i = phi i64 [ %i.jh, %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i ], [ %i.jg, %.critedge.i ]
  %i.ji = load i8, ptr %i.gt, align 1, !tbaa !1285, !range !49, !noundef !32
  %i.jj = trunc nuw i8 %i.ji to i1
  %.pre25.i = load i32, ptr %4, align 8           ; 3 uses
  br i1 %i.jj, label %bb.am, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i.i

bb.am:                                            ; preds = %bb.al
  %i.jk = icmp ne i32 %.pre25.i, 5
  %i.jl = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = icmp ne ptr %i.jm, null
  %or.cond.i.i.i = select i1 %i.jk, i1 %i.jn, i1 false
  br i1 %or.cond.i.i.i, label %bb.an, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i.i

bb.an:                                            ; preds = %bb.am
  %i.jo = load ptr, ptr %i.gp, align 8, !tbaa !1277 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 216
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !1286, !nonnull !32, !align !33
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 40
  %i.js = load i64, ptr %i.jr, align 8
  %i.jt = and i64 %i.js, 18014398509481984
  %.not.i.i62.i = icmp eq i64 %i.jt, 0
  br i1 %.not.i.i62.i, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZN5clang4Sema17CheckLookupAccessERKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.jo, ptr noundef nonnull align 8 dereferenceable(168) %4) #20
  %.pre.i109 = load i32, ptr %4, align 8
  br label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i.i

_ZN5clang12LookupResult14diagnoseAccessEv.exit.i.i: ; preds = %bb.ao, %bb.am, %bb.al
  %i.ju = phi i32 [ %.pre.i109, %bb.ao ], [ %.pre25.i, %bb.al ], [ %.pre25.i, %bb.am ]
  %i.jv = load i8, ptr %i.gu, align 4, !tbaa !1287, !range !49, !noundef !32
  %i.jw = trunc nuw i8 %i.jv to i1
  %i.jx = icmp eq i32 %i.ju, 5
  %or.cond.i = select i1 %i.jw, i1 %i.jx, i1 false
  br i1 %or.cond.i, label %bb.ap, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i.i

bb.ap:                                            ; preds = %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i.i
  %i.jy = load ptr, ptr %i.gp, align 8, !tbaa !1277
  call void @_ZN5clang4Sema23DiagnoseAmbiguousLookupERNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.jy, ptr noundef nonnull align 8 dereferenceable(168) %4) #20
  br label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i.i

_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i.i: ; preds = %bb.ap, %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i.i, %bb.an
  %i.jz = load ptr, ptr %i.go, align 8, !tbaa !1288 ; 2 uses
  %.not.i.i108 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i108, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i.i
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.jz) #20
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i.i
  %i.ka = load ptr, ptr %i.gk, align 8, !tbaa !43 ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.gl
  br i1 %i.kb, label %_ZN5clang12LookupResultD2Ev.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @free(ptr noundef %i.ka) #20
  br label %_ZN5clang12LookupResultD2Ev.exit.i

_ZN5clang12LookupResultD2Ev.exit.i:               ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.at

bb.at:                                            ; preds = %_ZN5clang12LookupResultD2Ev.exit.i, %bb.z, %bb.x
  %.sroa.019.2.i = phi i64 [ 1, %bb.x ], [ %.sroa.019.0.i, %_ZN5clang12LookupResultD2Ev.exit.i ], [ 1, %bb.z ]
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !1283
  %.not.i.i63.i = icmp eq i32 %i.kd, 0
  br i1 %.not.i.i63.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit64.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !1284
  call void @free(ptr noundef %i.kf) #20
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit64.i

_ZN5clang12CXXScopeSpecD2Ev.exit64.i:             ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE17RebuildMemberExprEPNS_4ExprENS_14SourceLocationEbNS_22NestedNameSpecifierLocES6_RKNS_19DeclarationNameInfoEPNS_9ValueDeclEPNS_9NamedDeclEPKNS_24TemplateArgumentListInfoESE_.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE17RebuildMemberExprEPNS_4ExprENS_14SourceLocationEbNS_22NestedNameSpecifierLocES6_RKNS_19DeclarationNameInfoEPNS_9ValueDeclEPNS_9NamedDeclEPKNS_24TemplateArgumentListInfoESE_.exit: ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit64.i, %_ZN5clang12CXXScopeSpecD2Ev.exit.i, %bb.t, %bb.q, %bb.o
  %.057 = phi i64 [ 1, %bb.o ], [ %.sroa.019.2.i, %_ZN5clang12CXXScopeSpecD2Ev.exit64.i ], [ 1, %bb.q ], [ %i.fp, %_ZN5clang12CXXScopeSpecD2Ev.exit.i ], [ 1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.av

bb.av:                                            ; preds = %_ZNK5clang10MemberExpr18getNumTemplateArgsEv.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE17RebuildMemberExprEPNS_4ExprENS_14SourceLocationEbNS_22NestedNameSpecifierLocES6_RKNS_19DeclarationNameInfoEPNS_9ValueDeclEPNS_9NamedDeclEPKNS_24TemplateArgumentListInfoESE_.exit
  %.1 = phi i64 [ %.057, %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE17RebuildMemberExprEPNS_4ExprENS_14SourceLocationEbNS_22NestedNameSpecifierLocES6_RKNS_19DeclarationNameInfoEPNS_9ValueDeclEPNS_9NamedDeclEPKNS_24TemplateArgumentListInfoESE_.exit ], [ 1, %_ZNK5clang10MemberExpr18getNumTemplateArgsEv.exit ]
  %i.kg = load ptr, ptr %5, align 8, !tbaa !43    ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.cy
  br i1 %i.kh, label %_ZN5clang24TemplateArgumentListInfoD2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @free(ptr noundef %i.kg) #20
  br label %_ZN5clang24TemplateArgumentListInfoD2Ev.exit

_ZN5clang24TemplateArgumentListInfoD2Ev.exit:     ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN5clang24TemplateArgumentListInfoD2Ev.exit, %_ZNK5clang10MemberExpr15getQualifierLocEv.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit78, %bb.a
  %.5 = phi i64 [ 1, %bb.a ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ 1, %_ZNK5clang10MemberExpr15getQualifierLocEv.exit ], [ %.1, %_ZN5clang24TemplateArgumentListInfoD2Ev.exit ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit78 ]
  ret i64 %.5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE28TransformMatrixSubscriptExprEPNS_19MatrixSubscriptExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1392
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1392
  %i.g = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1392
  %i.k = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.j) ; 2 uses
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = and i64 %i.c, -2
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = and i64 %i.g, -2
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = and i64 %i.k, -2
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.s, align 4, !tbaa !51
  %.val = load ptr, ptr %0, align 8, !tbaa !1388
  %i.t = tail call i64 @_ZN5clang4Sema32CreateBuiltinMatrixSubscriptExprEPNS_4ExprES2_S2_NS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r, i32 %.sroa.0.0.copyload.i) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.2 = phi i64 [ 1, %bb.a ], [ 1, %bb.b ], [ %i.t, %bb.d ], [ 1, %bb.c ]
  ret i64 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE34TransformMatrixSingleSubscriptExprEPNS_25MatrixSingleSubscriptExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1392
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1392
  %i.g = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.c, -2
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = and i64 %i.g, -2
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.m, align 4, !tbaa !51
  %.val = load ptr, ptr %0, align 8, !tbaa !1388
  %i.n = tail call i64 @_ZN5clang4Sema38CreateBuiltinMatrixSingleSubscriptExprEPNS_4ExprES2_NS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, ptr noundef %i.j, ptr noundef %i.l, i32 %.sroa.0.0.copyload.i) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i64 [ 1, %bb.a ], [ %i.n, %bb.c ], [ 1, %bb.b ]
  ret i64 %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE26TransformMatrixElementExprEPNS_17MatrixElementExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #9 align 2 {
bb.a:
end_hunk_1
begin_hunk_2_@_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE27TransformCXXDefaultInitExprEPNS_18CXXDefaultInitExprE:bb.a
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
  %i.t = load i32, ptr %i.s, align 4, !tbaa !51, !noalias !3386
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !109

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %.017.i.i.i.i.i = phi i32 [ %i.ac, %bb.c ], [ %i.p, %bb.b ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1425, !noalias !3386
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.c, !prof !112

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ac = and i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !51, !noalias !3386
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !113

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
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1427
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.d
  %.0.i = phi ptr [ %i.ao, %bb.d ], [ %i.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.ap = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #23
  %.val = load ptr, ptr %0, align 8, !tbaa !1388
  %i.aq = tail call i64 @_ZN5clang4Sema23BuildCXXDefaultInitExprENS_14SourceLocationEPNS_9FieldDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %i.ap, ptr noundef nonnull %.0.i) #20
  br label %bb.f

bb.f:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.e
  %.0 = phi i64 [ %i.aq, %bb.e ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE26TransformCXXDefaultArgExprEPNS_17CXXDefaultArgExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3396 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1423, !noalias !3397 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1424, !noalias !3397 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1328, !noalias !3397 ; 4 uses
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
  %i.t = load i32, ptr %i.s, align 4, !tbaa !51, !noalias !3398
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !109

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %.017.i.i.i.i.i = phi i32 [ %i.ac, %bb.c ], [ %i.p, %bb.b ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1425, !noalias !3398
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.c, !prof !112

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ac = and i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !51, !noalias !3398
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !113

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
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1427
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.d
  %.0.i = phi ptr [ %i.ao, %bb.d ], [ %i.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.ap = load i32, ptr %1, align 8
  %i.aq = and i32 %i.ap, 524288
  %.not18 = icmp eq i32 %i.aq, 0
  br i1 %.not18, label %bb.f, label %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit

_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit: ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1435
  %i.at = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.as) ; 2 uses
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %i.at, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit ], [ 0, %bb.e ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.av, align 4, !tbaa !51
  %i.aw = and i64 %.sroa.0.0, -2
  %i.ax = inttoptr i64 %i.aw to ptr
  %.val = load ptr, ptr %0, align 8, !tbaa !1388  ; 2 uses
  %i.ay = getelementptr i8, ptr %.val, i64 232
  %.val.val = load ptr, ptr %i.ay, align 8, !tbaa !820
  %i.az = getelementptr i8, ptr %.val, i64 616
  %.val.val15 = load ptr, ptr %i.az, align 8, !tbaa !1429
  %i.ba = tail call noundef ptr @_ZN5clang17CXXDefaultArgExpr6CreateERKNS_10ASTContextENS_14SourceLocationEPNS_11ParmVarDeclEPNS_4ExprEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(23904) %.val.val, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %.0.i, ptr noundef %i.ax, ptr noundef %.val.val15) #20
  %i.bb = ptrtoint ptr %i.ba to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %.1 = phi i64 [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ %i.bb, %bb.f ], [ 1, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit ]
  ret i64 %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE25TransformCXXConstructExprEPNS_16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.1395", align 8 ; 9 uses
  %3 = alloca %"class.llvm::MutableArrayRef.1393", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.llvm::SmallVector.1395", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1575
  switch i32 %i.c, label %bb.b [
    i32 1, label %bb.c
    i32 0, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %1, align 8
  %i.e = and i16 %i.d, 511
  %.not.i.i.i = icmp eq i16 %i.e, 118             ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i, ptr %1, ptr null
  %5 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 48
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr %5, ptr %6
  %i.f = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1435
  %i.h = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #20
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = load i16, ptr %1, align 8
  %i.j = and i16 %i.i, 511
  %.not.i.i.i42 = icmp eq i16 %i.j, 118           ; 2 uses
  %spec.select.i.i.i.i.i43 = select i1 %.not.i.i.i42, ptr %1, ptr null
  %7 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i43, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %spec.select.i.i.i44 = select i1 %.not.i.i.i42, ptr %7, ptr %i.k
  %i.l = load ptr, ptr %spec.select.i.i.i44, align 8, !tbaa !1435
  %i.m = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #20
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %1, align 8                ; 2 uses
  %i.o = and i32 %i.n, 2097152
  %.not59 = icmp eq i32 %i.o, 0
  br i1 %.not59, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = and i32 %i.n, 511
  %.not.i.i.i45 = icmp eq i32 %i.p, 118           ; 2 uses
  %spec.select.i.i.i.i.i46 = select i1 %.not.i.i.i45, ptr %1, ptr null
  %i.q = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i46, i64 48
  %spec.select.i.i.i47 = select i1 %.not.i.i.i45, ptr %i.q, ptr %i.k
  %i.r = load ptr, ptr %spec.select.i.i.i47, align 8, !tbaa !1435
  %i.s = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.r, i1 noundef zeroext false)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformTypeENS_8QualTypeE.exit.thread

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.t, align 8, !tbaa !48 ; 2 uses
  %i.u = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.u, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i67 = load ptr, ptr %0, align 8, !tbaa !1388
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i67, i64 232
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !820, !nonnull !32, !align !33
  %i.x = tail call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.w, i64 %.sroa.0.0.copyload.i, i32 0) #20, !inline_history !9
  %i.y = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.x), !inline_history !9 ; 2 uses
  %.not.i68 = icmp eq ptr %i.y, null
  br i1 %.not.i68, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformTypeENS_8QualTypeE.exit.thread, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformTypeENS_8QualTypeE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformTypeENS_8QualTypeE.exit: ; preds = %bb.g
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.y, align 8, !tbaa !48 ; 3 uses
  %i.z = icmp ult i64 %.sroa.0.0.copyload.i.i, 16
  br i1 %i.z, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformTypeENS_8QualTypeE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1773 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1423, !noalias !3407 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1424, !noalias !3407 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1328, !noalias !3407 ; 4 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.loopexit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add i32 %i.ah, -1                       ; 2 uses
  %i.ak = ptrtoint ptr %i.ab to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.aj, %i.ao                    ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !51, !noalias !3408
  %i.au = and i32 %i.ap, 31
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !109

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %i.ax = phi i64 [ %i.bd, %bb.j ], [ %i.aq, %bb.i ]
  %.017.i.i.i.i.i = phi i32 [ %i.bc, %bb.j ], [ %i.ap, %bb.i ]
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ax ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1425, !noalias !3408
  %i.ba = icmp eq ptr %i.ab, %i.az
  br i1 %i.ba, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.j, !prof !112

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bb = add nuw i32 %.017.i.i.i.i.i, 1
  %i.bc = and i32 %i.bb, %i.aj                    ; 3 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = lshr i64 %i.bd, 5
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !51, !noalias !3408
  %i.bh = and i32 %i.bc, 31
  %i.bi = lshr i32 %i.bg, %i.bh
  %i.bj = trunc i32 %i.bi to i1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !113

.loopexit.i.i.i:                                  ; preds = %bb.j, %bb.i, %bb.h
  %i.bk = zext i32 %i.ah to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.bk
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.ah to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.bk, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.ay, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.bl, %.loopexit.i.i.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.bm
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1427
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.k
  %.0.i = phi ptr [ %i.bo, %bb.k ], [ %i.ab, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 5 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.bp, ptr %4, align 8, !tbaa !43
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.bq, align 8, !tbaa !45
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 8, ptr %i.br, align 4, !tbaa !44
  %.val = load ptr, ptr %0, align 8, !tbaa !1388  ; 5 uses
  %i.bs = load i32, ptr %1, align 8               ; 2 uses
  %i.bt = and i32 %i.bs, 2097152
  %.not60 = icmp eq i32 %i.bt, 0
  %i.bu = trunc i32 %i.bs to i16                  ; 3 uses
  br i1 %.not60, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %.val, i64 4592
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !43
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 4600
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !45
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [792 x i8], ptr %i.bw, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -792
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !870
  switch i32 %i.cc, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.n
    i32 3, label %bb.n
    i32 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1286, !nonnull !32, !align !33
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = and i64 %i.cf, 8192
  %.not.i48 = icmp eq i64 %i.cg, 0
  br i1 %.not.i48, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 noundef 1, ptr noundef null, i32 noundef 4) #20
  %.pre = load i16, ptr %1, align 8
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %i.ch = phi i16 [ %i.bu, %bb.m ], [ %i.bu, %bb.n ], [ %.pre, %bb.o ], [ %i.bu, %bb.l ]
  %.sroa.4.0 = phi i1 [ false, %bb.m ], [ false, %bb.n ], [ true, %bb.o ], [ false, %bb.l ]
  %i.ci = and i16 %i.ch, 511
  %.not.i.i = icmp eq i16 %i.ci, 118              ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not.i.i, ptr %1, ptr null
  %8 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %spec.select.i.i = select i1 %.not.i.i, ptr %8, ptr %i.cj
  %i.ck = load i32, ptr %i.b, align 8, !tbaa !1575
  %i.cl = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %spec.select.i.i, i32 noundef %i.ck, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.a)
  br i1 %.sroa.4.0, label %bb.p, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.p:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val) #20
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %bb.p
  br i1 %i.cl, label %bb.u, label %.critedge

.critedge:                                        ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  %i.cm = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #23 ; 2 uses
  %i.cn = load i32, ptr %1, align 8               ; 3 uses
  %i.co = and i32 %i.cn, 524288
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = load ptr, ptr %4, align 8, !tbaa !43
  %i.cr = load i32, ptr %i.bq, align 8, !tbaa !45
  %i.cs = zext i32 %i.cr to i64
  %i.ct = insertelement <4 x i32> poison, i32 %i.cn, i64 0
  %i.cu = shufflevector <4 x i32> %i.ct, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cv = and <4 x i32> %i.cu, <i32 8388608, i32 4194304, i32 2097152, i32 1048576>
  %i.cw = icmp ne <4 x i32> %i.cv, zeroinitializer ; 4 uses
  %i.cx = lshr i32 %i.cn, 24
  %i.cy = and i32 %i.cx, 7
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i49 = load i64, ptr %i.cz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = and i64 %i.db, 2305843009213693952
  %.not.i50 = icmp eq i64 %i.dc, 0
  br i1 %.not.i50, label %bb.q, label %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i

_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i: ; preds = %.critedge
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 184
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !3409
  br label %bb.q

bb.q:                                             ; preds = %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i, %.critedge
  %.0.i51 = phi ptr [ %.sroa.4.0.copyload.i.i, %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i ], [ %.0.i, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.dd, ptr %2, align 8, !tbaa !43
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.de, align 8, !tbaa !45
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.df, align 4, !tbaa !44
  %.val21.i = load ptr, ptr %0, align 8, !tbaa !1388
  %i.dg = call noundef zeroext i1 @_ZN5clang4Sema23CompleteConstructorCallEPNS_18CXXConstructorDeclENS_8QualTypeEN4llvm15MutableArrayRefIPNS_4ExprEEENS_14SourceLocationERNS4_15SmallVectorImplIS7_EEbb(ptr noundef nonnull align 8 dereferenceable(18640) %.val21.i, ptr noundef %.0.i51, i64 %.sroa.0.0.copyload.i.i, ptr %i.cq, i64 %i.cs, i32 %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false, i1 noundef zeroext false) #20
  br i1 %i.dg, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val.i = load ptr, ptr %0, align 8, !tbaa !1388
  %i.dh = load ptr, ptr %2, align 8, !tbaa !43
  store ptr %i.dh, ptr %3, align 8, !tbaa !1440
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dj = load i32, ptr %i.de, align 8, !tbaa !45
  %i.dk = zext i32 %i.dj to i64
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !1441
  %i.dl = extractelement <4 x i1> %i.cw, i64 0
  %i.dm = extractelement <4 x i1> %i.cw, i64 1
  %i.dn = extractelement <4 x i1> %i.cw, i64 2
  %i.do = extractelement <4 x i1> %i.cw, i64 3
  %i.dp = call i64 @_ZN5clang4Sema21BuildCXXConstructExprENS_14SourceLocationENS_8QualTypeEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, i32 %i.cm, i64 %.sroa.0.0.copyload.i.i, ptr noundef nonnull %.0.i, i1 noundef zeroext %i.cp, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef.1393") align 8 %3, i1 noundef zeroext %i.do, i1 noundef zeroext %i.dn, i1 noundef zeroext %i.dm, i1 noundef zeroext %i.dl, i32 noundef %i.cy, i64 %.sroa.0.0.copyload.i49) #20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.020.0.i = phi i64 [ %i.dp, %bb.r ], [ 1, %bb.q ]
  %i.dq = load ptr, ptr %2, align 8, !tbaa !43    ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.dd
  br i1 %i.dr, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef %i.dq) #20
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.u

bb.u:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit
  %.1 = phi i64 [ %.sroa.020.0.i, %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit ], [ 1, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ]
  %i.ds = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.bp
  br i1 %i.dt, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.ds) #20
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformTypeENS_8QualTypeE.exit.thread

_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformTypeENS_8QualTypeE.exit.thread: ; preds = %bb.g, %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformTypeENS_8QualTypeE.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.e
  %.4 = phi i64 [ %i.s, %bb.e ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformTypeENS_8QualTypeE.exit ], [ %.1, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ 1, %bb.f ], [ 1, %bb.g ]
  ret i64 %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE31TransformCXXTemporaryObjectExprEPNS_22CXXTemporaryObjectExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %2 = alloca %"class.llvm::SmallVector.1395", align 8 ; 13 uses
  %3 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3419
  %i.d = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE27TransformTypeWithDeducedTSTEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1773 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1423, !noalias !3420 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1424, !noalias !3420 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1328, !noalias !3420 ; 4 uses
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
  %i.x = load i32, ptr %i.w, align 4, !tbaa !51, !noalias !3421
  %i.y = and i32 %i.t, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !109

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %i.ab = phi i64 [ %i.ah, %bb.d ], [ %i.u, %bb.c ]
  %.017.i.i.i.i.i = phi i32 [ %i.ag, %bb.d ], [ %i.t, %bb.c ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1425, !noalias !3421
  %i.ae = icmp eq ptr %i.f, %i.ad
  br i1 %i.ae, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.d, !prof !112

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.af = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ag = and i32 %i.af, %i.n                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !51, !noalias !3421
  %i.al = and i32 %i.ag, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !113

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
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1427
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.e
  %.0.i = phi ptr [ %i.as, %bb.e ], [ %i.f, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ]
  %.not38 = icmp eq ptr %.0.i, null
  br i1 %.not38, label %bb.s, label %bb.f

bb.f:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.at, ptr %2, align 8, !tbaa !43
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i32 0, ptr %i.au, align 8, !tbaa !45
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 8, ptr %i.av, align 4, !tbaa !44
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !1575 ; 2 uses
  %i.ay = icmp ugt i32 %i.ax, 8
  br i1 %i.ay, label %bb.g, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.g:                                             ; preds = %bb.f
  %i.az = zext i32 %i.ax to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.at, i64 noundef %i.az, i64 noundef 8) #20
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.f, %bb.g
  %.val = load ptr, ptr %0, align 8, !tbaa !1388  ; 5 uses
  %i.ba = load i32, ptr %1, align 8               ; 2 uses
  %i.bb = and i32 %i.ba, 2097152
  %.not49 = icmp eq i32 %i.bb, 0
  %i.bc = trunc i32 %i.ba to i16                  ; 3 uses
  br i1 %.not49, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 4592
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !43
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 4600
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !45
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [792 x i8], ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -792
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !870
  switch i32 %i.bk, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.i
    i32 3, label %bb.i
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1286, !nonnull !32, !align !33
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = and i64 %i.bn, 8192
  %.not.i41 = icmp eq i64 %i.bo, 0
  br i1 %.not.i41, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 noundef 1, ptr noundef null, i32 noundef 4) #20
  %.pre = load i16, ptr %1, align 8
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %bb.h, %bb.i, %bb.j
  %i.bp = phi i16 [ %i.bc, %bb.h ], [ %i.bc, %bb.i ], [ %.pre, %bb.j ], [ %i.bc, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ]
  %.sroa.4.0 = phi i1 [ false, %bb.h ], [ false, %bb.i ], [ true, %bb.j ], [ false, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ]
  %i.bq = and i16 %i.bp, 511
  %.not.i.i = icmp eq i16 %i.bq, 118              ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not.i.i, ptr %1, ptr null
  %i.br = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 48
  %spec.select.i.i = select i1 %.not.i.i, ptr %i.br, ptr %i.b
  %i.bs = load i32, ptr %i.aw, align 8, !tbaa !1575
  %i.bt = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %spec.select.i.i, i32 noundef %i.bs, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.bt, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %i.bu = load i32, ptr %1, align 8
  %i.bv = and i32 %i.bu, 6291456
  %or.cond.not = icmp eq i32 %i.bv, 2097152
  br i1 %or.cond.not, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bw = call i32 @_ZNK5clang22CXXTemporaryObjectExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #23
  %i.bx = load ptr, ptr %2, align 8, !tbaa !43
  %i.by = load i32, ptr %i.au, align 8, !tbaa !45
  %i.bz = zext i32 %i.by to i64
  %i.ca = call i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #23
  %.val39 = load ptr, ptr %0, align 8, !tbaa !1388
  %i.cb = call i64 @_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val39, i32 %i.bw, ptr %i.bx, i64 %i.bz, i32 %i.ca, i1 noundef zeroext true) #20 ; 2 uses
  %.not51 = icmp eq i64 %i.cb, 1
  br i1 %.not51, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = and i64 %i.cb, -2
  %i.cd = inttoptr i64 %i.cc to ptr
  store i32 0, ptr %i.au, align 8, !tbaa !45
  %i.ce = load i32, ptr %i.av, align 4, !tbaa !44
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i: ; preds = %bb.m
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.at, i64 noundef 1, i64 noundef 8) #20
  %.pre8.pre.i.i.i.i = load i32, ptr %i.au, align 8, !tbaa !45
  %i.cg = zext i32 %.pre8.pre.i.i.i.i to i64
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit: ; preds = %bb.m, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i
  %.pre8.i.i5.i.i = phi i64 [ %i.cg, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i ], [ 0, %bb.m ]
  %i.ch = load ptr, ptr %2, align 8, !tbaa !43
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.pre8.i.i5.i.i
  store ptr %i.cd, ptr %i.ci, align 1
  %.pre.i.i.i.i = load i32, ptr %i.au, align 8, !tbaa !45
  %i.cj = add i32 %.pre.i.i.i.i, 1
  store i32 %i.cj, ptr %i.au, align 8, !tbaa !45
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit, %bb.l, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %bb.k
  %cond = phi i1 [ true, %bb.k ], [ false, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ], [ false, %bb.l ], [ true, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit ]
  br i1 %.sroa.4.0, label %bb.o, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val) #20
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.n, %bb.o
  br i1 %cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !48
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cl = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  store ptr %i.cl, ptr %3, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ck, ptr %i.cm, align 8
  %i.cn = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.co = load ptr, ptr %2, align 8, !tbaa !43
  %i.cp = load i32, ptr %i.au, align 8, !tbaa !45
  %i.cq = zext i32 %i.cp to i64
  %i.cr = call i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #23
  %i.cs = load i32, ptr %1, align 8
  %i.ct = and i32 %i.cs, 2097152
  %i.cu = icmp ne i32 %i.ct, 0
  %.val40 = load ptr, ptr %0, align 8, !tbaa !1388
  %i.cv = call i64 @_ZN5clang4Sema25BuildCXXTypeConstructExprEPNS_14TypeSourceInfoENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val40, ptr noundef nonnull %i.d, i32 %i.cn, ptr %i.co, i64 %i.cq, i32 %i.cr, i1 noundef zeroext %i.cu) #20
  br label %bb.q

bb.q:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.p
  %.sroa.035.3 = phi i64 [ %i.cv, %bb.p ], [ 1, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ]
  %i.cw = load ptr, ptr %2, align 8, !tbaa !43    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.at
  br i1 %i.cx, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef %i.cw) #20
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.s

bb.s:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.a, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  %.sroa.035.5 = phi i64 [ 1, %bb.a ], [ %.sroa.035.3, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  ret i64 %.sroa.035.5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE27TransformCXXBoolLiteralExprEPNS_18CXXBoolLiteralExprE(ptr noundef %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  ret i64 %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE29TransformCXXBindTemporaryExprEPNS_20CXXBindTemporaryExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3422
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3425 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1388, !nonnull !32, !align !33
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1572
  %i.g = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #23
  tail call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.d, i32 %i.g, ptr noundef nonnull %i.c, i1 noundef zeroext true) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1572
  %i.j = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.i)
  ret i64 %i.j
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_136OutlinedFunctionDeclBodyInstantiatorEE18TransformBlockExprEPNS_9BlockExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #9 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.1985", align 8 ; 9 uses
  %3 = alloca %"class.llvm::SmallVector.499", align 8 ; 9 uses
  %4 = alloca %"class.clang::Sema::ExtParameterInfoBuilder", align 8 ; 12 uses
  %5 = alloca %"struct.clang::FunctionProtoType::ExtProtoInfo", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3428 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1388, !nonnull !32, !align !33
  %i.d = tail call i32 @_ZNK5clang9BlockExpr16getCaretLocationEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  tail call void @_ZN5clang4Sema15ActOnBlockStartENS_14SourceLocationEPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(18640) %i.c, i32 %i.d, ptr noundef null) #20
  %i.e = load ptr, ptr %0, align 8, !tbaa !1388, !nonnull !32, !align !33
  %i.f = tail call noundef ptr @_ZN5clang4Sema11getCurBlockEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.e) #20 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1560 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3430
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.j = load i16, ptr %i.i, align 8
  %i.k = and i16 %i.j, 8192
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, -8193
  %i.o = or disjoint i16 %i.n, %i.k
  store i16 %i.o, ptr %i.l, align 8
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !3430
  %i.q = load i16, ptr %i.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8
  %i.t = and i16 %i.q, -32768
  %i.u = and i16 %i.s, 32767
  %i.v = or disjoint i16 %i.u, %i.t
  store i16 %i.v, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.x, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 4, ptr %i.y, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %3, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 4, ptr %i.ab, align 4, !tbaa !44
  %i.ac = call noundef ptr @_ZNK5clang9BlockExpr15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %i.ad, ptr %4, align 8, !tbaa !1608
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !1609
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 16, ptr %i.af, align 8, !tbaa !1610
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i8 0, ptr %i.ag, align 8, !tbaa !1665
  %i.ah = call i32 @_ZNK5clang9BlockExpr16getCaretLocationEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !3431
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !149
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ao = load i64, ptr %i.an, align 16           ; 6 uses
  %i.ap = and i64 %i.ao, 536870912
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %_ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ar = lshr i64 %i.ao, 48
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = lshr i64 %i.ao, 31
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i64 %i.at, 1
end_hunk_2
