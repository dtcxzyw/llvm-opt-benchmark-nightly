inline.NumInlined: 6233
inline.NumDeleted: 1654
begin_hunk_0_@_ZN6hermes6parser6detail12JSParserImpl17parseForStatementENS1_5ParamE:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1206
  %i.l = load i8, ptr %i.k, align 2, !tbaa !372, !range !81, !noundef !75
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.b, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.j, align 8, !tbaa !235
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread

end_hunk_0
begin_hunk_1_@_ZN6hermes6parser6detail12JSParserImpl17parseForStatementENS1_5ParamE:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !279
  %i.t = icmp eq ptr %i.s, %i.q
  br i1 %i.t, label %bb.c, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread

bb.c:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
end_hunk_1
begin_hunk_2_@_ZN6hermes6parser6detail12JSParserImpl17parseForStatementENS1_5ParamE:bb.a
  %.sroa.2.0.copyload.i.i81 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i80, align 8, !tbaa !229
  %i.v = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.i, i32 noundef 0) #18 ; 2 uses
  store ptr %i.v, ptr %i.f, align 8, !tbaa !85
  br label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread: ; preds = %bb.b, %bb.c, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit, %bb.a
  %7 = phi ptr [ %i.v, %bb.c ], [ %i.j, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit ], [ %i.j, %bb.a ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.6138.0 = phi ptr [ %.sroa.2.0.copyload.i.i81, %bb.c ], [ null, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit ], [ null, %bb.a ], [ null, %bb.b ] ; 2 uses
  %.sroa.0137.0 = phi ptr [ %.sroa.0.0.copyload.i.i79, %bb.c ], [ null, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit ], [ null, %bb.a ], [ null, %bb.b ] ; 2 uses
  %.0 = phi i8 [ 1, %bb.c ], [ 0, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  %8 = phi i1 [ true, %bb.c ], [ false, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit ], [ false, %bb.a ], [ false, %bb.b ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !229 ; 3 uses
  %9 = load i32, ptr %7, align 8, !tbaa !235
  %i.x = icmp eq i32 %9, 53
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread
end_hunk_2
begin_hunk_3_@_ZN6hermes6parser6detail12JSParserImpl17parseForStatementENS1_5ParamE:bb.a
  br label %bb.ar

.thread146:                                       ; preds = %bb.e, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_PNS_12UniqueStringEEEEbT_DpT0_.exit
  br i1 %8, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.thread146
  %i.ck = getelementptr inbounds nuw i8, ptr %i.y, i64 8
end_hunk_3
begin_hunk_4_@_ZN6hermes6parser6detail12JSParserImpl17parseForStatementENS1_5ParamE:bb.a
  %i.dw = icmp eq i32 %i.dv, 7                    ; 3 uses
  %i.dx = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.i, i32 noundef 0) #18
  store ptr %i.dx, ptr %i.f, align 8, !tbaa !85
  %or.cond = and i1 %8, %i.dw
  br i1 %or.cond, label %.thread153, label %bb.s

.thread153:                                       ; preds = %bb.r
end_hunk_4
begin_hunk_5_@_ZN6hermes6parser6detail12JSParserImpl17parseForStatementENS1_5ParamE:bb.a

bb.aa:                                            ; preds = %bb.y
  %i.ez = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 88, ptr noundef nonnull align 8 dereferenceable(656) %i.eo, i64 noundef 8) ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %i.ez, i8 0, i64 16, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store i32 16, ptr %i.fa, align 8, !tbaa !252
end_hunk_5
begin_hunk_6_@_ZN6hermes6parser6detail12JSParserImpl17parseForStatementENS1_5ParamE:bb.a
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 72
  store ptr %i.er, ptr %i.ff, align 8, !tbaa !386
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 80
  store i8 %.0, ptr %i.fg, align 8, !tbaa !387
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
end_hunk_6
begin_hunk_7_@_ZN6hermes6parser6detail12JSParserImpl17parseForStatementENS1_5ParamE:bb.a
bb.ac:                                            ; preds = %bb.m
  %i.fm = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.i, i32 noundef 0) #18
  store ptr %i.fm, ptr %i.f, align 8, !tbaa !85
  br i1 %8, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
end_hunk_7
begin_hunk_8_@_ZN6hermes6parser6detail12JSParserImpl23parsePropertyAssignmentEb:bb.a
  br label %.critedge

.critedge:                                        ; preds = %.thread478, %bb.ba, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit273, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit232, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit229, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit194, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit295, %.thread491
  %.2457 = phi i1 [ false, %.thread491 ], [ false, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit194 ], [ false, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit232 ], [ false, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit295 ], [ false, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ false, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit229 ], [ false, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit273 ], [ false, %bb.ba ], [ true, %.thread478 ] ; 2 uses
  %.2457.a = phi i8 [ 0, %.thread491 ], [ 0, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit194 ], [ 0, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit232 ], [ 0, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit295 ], [ 0, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ 0, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit229 ], [ 0, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit273 ], [ 0, %bb.ba ], [ 1, %.thread478 ]
  %.2454.shrunk = phi i1 [ %i.ack, %.thread491 ], [ false, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit194 ], [ false, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit232 ], [ false, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit295 ], [ false, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ false, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit229 ], [ false, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit273 ], [ false, %bb.ba ], [ %i.yl, %.thread478 ] ; 2 uses
  %.6451 = phi ptr [ %i.act, %.thread491 ], [ %.0.i.i.i192, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit194 ], [ %.0.i.i.i230, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit232 ], [ %.0.i.i.i293, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit295 ], [ %.0.i.i.i, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ %.0.i.i.i227, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit229 ], [ %.0.i.i.i271, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit273 ], [ %i.ui, %bb.ba ], [ %i.yt, %.thread478 ] ; 2 uses
  %.6 = phi i1 [ false, %.thread491 ], [ %spec.select.i.not, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit194 ], [ %spec.select.i226.not, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit232 ], [ false, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit295 ], [ %spec.select.i.not, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ %spec.select.i226.not, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit229 ], [ %spec.select.i270.not, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit273 ], [ %spec.select.i270.not, %bb.ba ], [ %spec.select.i270.not, %.thread478 ] ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN6hermes6parser6detail12JSParserImpl23parsePropertyAssignmentEb:bb.a

bb.bu:                                            ; preds = %.critedge
  %i.aeh = icmp ne i32 %.pre592, 74
  br i1 %.2457, label %bb.bv, label %switch.early.test

switch.early.test:                                ; preds = %bb.bu
  switch i32 %.pre592, label %bb.ck [
end_hunk_9
begin_hunk_10_@_ZN6hermes6parser6detail12JSParserImpl23parsePropertyAssignmentEb:bb.a
  %i.agk = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76
  %i.agl = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 136, ptr noundef nonnull align 8 dereferenceable(656) %i.agk, i64 noundef 8) ; 6 uses
  %i.agm = inttoptr i64 %i.agj to ptr             ; 2 uses
  call void @_ZN6hermes6ESTree22FunctionExpressionNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_S3_S3_S3_bb(ptr noundef nonnull align 8 dereferenceable(130) %i.agl, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.agm, ptr noundef %.3187, ptr noundef %.1189, ptr noundef null, i1 noundef zeroext %.2454.shrunk, i1 noundef zeroext %.2457)
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agl, i64 64
  store i8 1, ptr %i.agn, align 8, !tbaa !517
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agl, i64 24
end_hunk_10
