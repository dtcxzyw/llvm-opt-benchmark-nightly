inline.NumInlined: 1398
inline.NumDeleted: 333
begin_hunk_0_@_ZN6hermes6parser6detail12JSParserImpl24parseTSFunctionTypeParamEv:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %.pre = load i32, ptr %i.b, align 8, !tbaa !62
  br label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34.backedge, %bb.a
  %i.j = phi i32 [ %.pre, %bb.a ], [ %.be, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34.backedge ] ; 3 uses
  %i.k = phi ptr [ %i.b, %bb.a ], [ %.be96, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34.backedge ] ; 4 uses
  %.032 = phi i8 [ 0, %bb.a ], [ %.032.be, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34.backedge ] ; 12 uses
  %.031 = phi i8 [ 0, %bb.a ], [ %.031.be, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34.backedge ] ; 13 uses
  %.030 = phi i8 [ 0, %bb.a ], [ %.030.be, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34.backedge ] ; 12 uses
  %.0 = phi ptr [ null, %bb.a ], [ %.0.be, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34.backedge ] ; 12 uses
  switch i32 %i.j, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65.thread82 [
    i32 1, label %.thread
    i32 37, label %bb.b
    i32 34, label %bb.b
  ]

bb.b:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34
  %i.l = trunc nuw i8 %.031 to i1
  %i.m = icmp ne i32 %i.j, 37
  %or.cond.not = or i1 %i.m, %i.l
  br i1 %or.cond.not, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread79, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread

.thread:                                          ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34
  %i.n = trunc nuw i8 %.031 to i1
  br i1 %i.n, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread79, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit: ; preds = %.thread
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !156
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89
  %i.r = icmp eq ptr %i.q, %i.o
  br i1 %i.r, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread79

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread: ; preds = %bb.b, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit
  %i.s = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 3) #4 ; 6 uses
  store ptr %i.s, ptr %i.a, align 8, !tbaa !11
  %i.t = load i32, ptr %i.s, align 8, !tbaa !62   ; 5 uses
  switch i32 %i.t, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread79 [
    i32 1, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34.backedge
    i32 37, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34.backedge
    i32 34, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34.backedge
  ]

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread79: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread, %.thread, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit, %bb.b
  %i.u = phi i32 [ %i.t, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread ], [ 1, %.thread ], [ 1, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit ], [ %i.j, %bb.b ] ; 2 uses
  %i.v = phi ptr [ %i.s, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread ], [ %i.k, %.thread ], [ %i.k, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit ], [ %i.k, %bb.b ]
  %i.w = trunc nuw i8 %.032 to i1
  %i.x = icmp ne i32 %i.u, 34
  %or.cond.not94 = or i1 %i.x, %i.w
  br i1 %or.cond.not94, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread79
  %i.y = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 3) #4 ; 6 uses
  store ptr %i.y, ptr %i.a, align 8, !tbaa !11
  %i.z = load i32, ptr %i.y, align 8, !tbaa !62   ; 5 uses
  switch i32 %i.z, label %bb.d [
    i32 1, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34.backedge
    i32 37, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34.backedge
    i32 34, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34.backedge
  ]

bb.d:                                             ; preds = %bb.c, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread79
  %i.aa = phi i32 [ %i.z, %bb.c ], [ %i.u, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread79 ] ; 2 uses
  %i.ab = phi ptr [ %i.y, %bb.c ], [ %i.v, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread79 ] ; 3 uses
  %i.ac = trunc nuw i8 %.030 to i1
  %i.ad = icmp ne i32 %i.aa, 1
  %or.cond92.not = or i1 %i.ad, %i.ac
  br i1 %or.cond92.not, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEEEbT_.exit.thread, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEEEbT_.exit

_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEEEbT_.exit: ; preds = %bb.d
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !157
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !89
  %i.ah = icmp eq ptr %i.ag, %i.ae
  br i1 %i.ah, label %bb.e, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEEEbT_.exit.thread

bb.e:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEEEbT_.exit
  %i.ai = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 3) #4 ; 6 uses
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !11
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !62 ; 5 uses
  switch i32 %i.aj, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEEEbT_.exit.thread [
    i32 1, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34.backedge
    i32 37, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34.backedge
    i32 34, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34.backedge
  ]

_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEEEbT_.exit.thread: ; preds = %bb.e, %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEEEbT_.exit, %bb.d
  %i.ak = phi i32 [ %i.aj, %bb.e ], [ %i.aa, %bb.d ], [ 1, %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEEEbT_.exit ] ; 2 uses
  %i.al = phi ptr [ %i.ai, %bb.e ], [ %i.ab, %bb.d ], [ %i.ab, %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEEEbT_.exit ] ; 3 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.f, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65.thread82

bb.f:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEEEbT_.exit.thread
  switch i32 %i.ak, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread80 [
    i32 46, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread
    i32 1, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49
  ]

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49: ; preds = %bb.f
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !158
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !89
  %i.ap = icmp eq ptr %i.ao, %i.am
  br i1 %i.ap, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread: ; preds = %bb.f, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49
  %i.aq = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 3) #4 ; 4 uses
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !11
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !62 ; 3 uses
  switch i32 %i.ar, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread80 [
    i32 1, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit56.thread
    i32 37, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit56.thread
    i32 34, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit56.thread
  ]

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit56.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !158
  br label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34.backedge

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34.backedge: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit56.thread, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit64.thread, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit72.thread, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread, %bb.c, %bb.c, %bb.c, %bb.e, %bb.e, %bb.e
  %.be = phi i32 [ %i.ar, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit56.thread ], [ %i.bb, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit64.thread ], [ %i.bl, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit72.thread ], [ %i.z, %bb.c ], [ %i.t, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread ], [ %i.aj, %bb.e ], [ %i.t, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread ], [ %i.z, %bb.c ], [ %i.aj, %bb.e ], [ %i.t, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread ], [ %i.z, %bb.c ], [ %i.aj, %bb.e ]
  %.be96 = phi ptr [ %i.aq, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit56.thread ], [ %i.ba, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit64.thread ], [ %i.bk, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit72.thread ], [ %i.y, %bb.c ], [ %i.s, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread ], [ %i.ai, %bb.e ], [ %i.s, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread ], [ %i.y, %bb.c ], [ %i.ai, %bb.e ], [ %i.s, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread ], [ %i.y, %bb.c ], [ %i.ai, %bb.e ]
  %.032.be = phi i8 [ %.032, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit56.thread ], [ %.032, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit64.thread ], [ %.032, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit72.thread ], [ 1, %bb.c ], [ %.032, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread ], [ %.032, %bb.e ], [ %.032, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread ], [ 1, %bb.c ], [ %.032, %bb.e ], [ %.032, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread ], [ 1, %bb.c ], [ %.032, %bb.e ]
  %.031.be = phi i8 [ %.031, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit56.thread ], [ %.031, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit64.thread ], [ %.031, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit72.thread ], [ %.031, %bb.c ], [ 1, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread ], [ %.031, %bb.e ], [ 1, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread ], [ %.031, %bb.c ], [ %.031, %bb.e ], [ 1, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread ], [ %.031, %bb.c ], [ %.031, %bb.e ]
  %.030.be = phi i8 [ %.030, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit56.thread ], [ %.030, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit64.thread ], [ %.030, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit72.thread ], [ %.030, %bb.c ], [ %.030, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread ], [ 1, %bb.e ], [ %.030, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread ], [ %.030, %bb.c ], [ 1, %bb.e ], [ %.030, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread ], [ %.030, %bb.c ], [ 1, %bb.e ]
  %.0.be = phi ptr [ %i.as, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit56.thread ], [ %i.bc, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit64.thread ], [ %i.bm, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit72.thread ], [ %.0, %bb.c ], [ %.0, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread ], [ %.0, %bb.e ], [ %.0, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread ], [ %.0, %bb.c ], [ %.0, %bb.e ], [ %.0, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread ], [ %.0, %bb.c ], [ %.0, %bb.e ]
  br label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34, !llvm.loop !159

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread80: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread, %bb.f
  %i.at = phi i32 [ %i.ar, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread ], [ %i.ak, %bb.f ] ; 2 uses
  %i.au = phi ptr [ %i.aq, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread ], [ %i.al, %bb.f ] ; 2 uses
  switch i32 %i.at, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread81 [
    i32 44, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread
    i32 1, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57
  ]

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread80
  %i.av = phi ptr [ %i.au, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread80 ], [ %i.al, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49 ] ; 2 uses
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !160
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !89
  %i.az = icmp eq ptr %i.ay, %i.aw
  br i1 %i.az, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread80, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57
  %i.ba = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 3) #4 ; 4 uses
  store ptr %i.ba, ptr %i.a, align 8, !tbaa !11
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !62 ; 3 uses
  switch i32 %i.bb, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread81 [
    i32 1, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit64.thread
    i32 37, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit64.thread
    i32 34, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit64.thread
  ]

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit64.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !160
  br label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34.backedge

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread81: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread80
  %i.bd = phi i32 [ %i.bb, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread ], [ %i.at, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread80 ]
  %i.be = phi ptr [ %i.ba, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread ], [ %i.au, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread80 ]
  switch i32 %i.bd, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65.thread82 [
    i32 45, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65.thread
    i32 1, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65
  ]

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread81
  %i.bf = phi ptr [ %i.be, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread81 ], [ %i.av, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57 ]
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !161
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !89
  %i.bj = icmp eq ptr %i.bi, %i.bg
  br i1 %i.bj, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65.thread, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65.thread82

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread81, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65
  %i.bk = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 3) #4 ; 3 uses
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !11
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !62 ; 2 uses
  switch i32 %i.bl, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65.thread82 [
    i32 1, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit72.thread
    i32 37, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit72.thread
    i32 34, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit72.thread
  ]

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit72.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65.thread, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65.thread, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65.thread
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !161
  br label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34.backedge

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65.thread82: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65.thread, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread81, %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEEEbT_.exit.thread, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65
  %.0.lcssa = phi ptr [ null, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65.thread ], [ %.0, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34 ], [ null, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread81 ], [ %.0, %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEEEbT_.exit.thread ], [ null, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65 ] ; 2 uses
  %i.bn = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseBindingElementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0) #4 ; 2 uses
  %i.bo = extractvalue { i64, i8 } %i.bn, 0       ; 2 uses
  %i.bp = extractvalue { i64, i8 } %i.bn, 1
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65.thread82
  %i.br = icmp ne ptr %.0.lcssa, null
  %i.bs = or i8 %.031, %.032
  %1 = or i8 %i.bs, %.030
  %i.bt = trunc nuw i8 %1 to i1
  %or.cond5 = or i1 %i.br, %i.bt
  br i1 %or.cond5, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i73 = load ptr, ptr %i.bu, align 8, !tbaa !61
  %i.bv = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !70 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !78
  %i.bz = zext i32 %i.by to i64
  %i.ca = load ptr, ptr %i.bv, align 8, !tbaa !84
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !85
  %i.cd = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !87 ; 2 uses
  %i.cg = add i64 %i.cd, 7
  %i.ch = add i64 %i.cg, %i.cf
  %i.ci = and i64 %i.ch, 7
  %.neg85 = add i64 %i.cf, 7
  %i.cj = sub i64 %.neg85, %i.ci                  ; 3 uses
  store i64 %i.cj, ptr %i.ce, align 8, !tbaa !87
  %i.ck = add i64 %i.cj, 72                       ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, 262144
  br i1 %i.cl, label %.critedge.i.i.i, label %bb.i, !prof !88

.critedge.i.i.i:                                  ; preds = %bb.h
  %i.cm = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.bv, i64 noundef 72, i64 noundef 8) #4
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.i:                                             ; preds = %bb.h
  %i.cn = add i64 %i.cj, %i.cd
  %i.co = inttoptr i64 %i.cn to ptr
  store i64 %i.ck, ptr %i.ce, align 8, !tbaa !87
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.i
  %.0.i.i.i = phi ptr [ %i.cm, %.critedge.i.i.i ], [ %i.co, %bb.i ] ; 12 uses
  %i.cp = inttoptr i64 %i.bo to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(67) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 247, ptr %i.cq, align 8, !tbaa !90
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  store i32 0, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %i.cp, ptr %i.cs, align 8, !tbaa !162
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  store ptr %.0.lcssa, ptr %i.ct, align 8, !tbaa !132
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  store i8 %.030, ptr %i.cu, align 8, !tbaa !135
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 65
  store i8 %.031, ptr %i.cv, align 1, !tbaa !136
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 66
  store i8 %.032, ptr %i.cw, align 2, !tbaa !134
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.cx, align 8, !tbaa !61
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i73, ptr %i.cy, align 8, !tbaa !61
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.cz, align 8, !tbaa !61
  %i.da = ptrtoint ptr %.0.i.i.i to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65.thread82, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %.sroa.076.0 = phi i64 [ %i.da, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ undef, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65.thread82 ], [ %i.bo, %bb.g ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ 0, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65.thread82 ], [ 1, %bb.g ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.076.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes6parser6detail12JSParserImpl35reparseIdentifierAsTSTypeAnnotationEPNS_6ESTree14IdentifierNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2824) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70   ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !78
  %i.j = zext i32 %i.i to i64
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !85
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !87   ; 2 uses
  %i.q = add i64 %i.n, 7
  %i.r = add i64 %i.q, %i.p
  %i.s = and i64 %i.r, 7
  %.neg68 = add i64 %i.p, 7
  %i.t = sub i64 %.neg68, %i.s                    ; 3 uses
  store i64 %i.t, ptr %i.o, align 8, !tbaa !87
  %i.u = add i64 %i.t, 48                         ; 2 uses
  %i.v = icmp ugt i64 %i.u, 262144
  br i1 %i.v, label %.critedge.i.i.i, label %bb.c, !prof !88

.critedge.i.i.i:                                  ; preds = %bb.b
  %i.w = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.f, i64 noundef 48, i64 noundef 8) #4
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.c:                                             ; preds = %bb.b
  %i.x = add i64 %i.t, %i.n
  %i.y = inttoptr i64 %i.x to ptr
  store i64 %i.u, ptr %i.o, align 8, !tbaa !87
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.w, %.critedge.i.i.i ], [ %i.y, %bb.c ] ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 225, ptr %i.z, align 8, !tbaa !90
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.aa, i8 0, i64 28, i1 false)
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !164
  %i.ad = icmp eq ptr %i.b, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !70 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !78
  %i.ai = zext i32 %i.ah to i64
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !84
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !85
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !87 ; 2 uses
  %i.ap = add i64 %i.am, 7
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = and i64 %i.aq, 7
  %.neg65 = add i64 %i.ao, 7
  %i.as = sub i64 %.neg65, %i.ar                  ; 3 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !87
  %i.at = add i64 %i.as, 48                       ; 2 uses
  %i.au = icmp ugt i64 %i.at, 262144
  br i1 %i.au, label %.critedge.i.i.i23, label %bb.f, !prof !88

.critedge.i.i.i23:                                ; preds = %bb.e
  %i.av = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.ae, i64 noundef 48, i64 noundef 8) #4
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit24

bb.f:                                             ; preds = %bb.e
  %i.aw = add i64 %i.as, %i.am
  %i.ax = inttoptr i64 %i.aw to ptr
  store i64 %i.at, ptr %i.an, align 8, !tbaa !87
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit24

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit24:  ; preds = %.critedge.i.i.i23, %bb.f
  %.0.i.i.i22 = phi ptr [ %i.av, %.critedge.i.i.i23 ], [ %i.ax, %bb.f ] ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i22, i8 0, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i22, i64 16
  store i32 227, ptr %i.ay, align 8, !tbaa !90
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i.i22, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.az, i8 0, i64 28, i1 false)
  br label %bb.r

bb.g:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !165
  %i.bc = icmp eq ptr %i.b, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !70 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !78
  %i.bh = zext i32 %i.bg to i64
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !84
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !85
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !87 ; 2 uses
  %i.bo = add i64 %i.bl, 7
  %i.bp = add i64 %i.bo, %i.bn
  %i.bq = and i64 %i.bp, 7
  %.neg62 = add i64 %i.bn, 7
  %i.br = sub i64 %.neg62, %i.bq                  ; 3 uses
  store i64 %i.br, ptr %i.bm, align 8, !tbaa !87
  %i.bs = add i64 %i.br, 48                       ; 2 uses
  %i.bt = icmp ugt i64 %i.bs, 262144
  br i1 %i.bt, label %.critedge.i.i.i29, label %bb.i, !prof !88

.critedge.i.i.i29:                                ; preds = %bb.h
  %i.bu = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.bd, i64 noundef 48, i64 noundef 8) #4
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit30
end_hunk_0
