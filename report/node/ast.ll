inline.NumInlined: 1210
inline.NumDeleted: 547
begin_hunk_0_@_ZN2v88internal31ObjectLiteralBoilerplateBuilder17InitDepthAndFlagsEv:bb.a
  %i.k = phi i32 [ %i.g, %.lr.ph ], [ %i.co, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit ]
  %.088 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit ] ; 2 uses
  %.02787 = phi i1 [ false, %.lr.ph ], [ %.128, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit ] ; 2 uses
  %.02986 = phi i8 [ 0, %.lr.ph ], [ %.231, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit ] ; 8 uses
  %.03285 = phi i32 [ 1, %.lr.ph ], [ %.234, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit ] ; 6 uses
  %.03684 = phi i32 [ 0, %.lr.ph ], [ %.137, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit ] ; 4 uses
  %.04082 = phi i32 [ 0, %.lr.ph ], [ %.242, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit ] ; 11 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal31ObjectLiteralBoilerplateBuilder17InitDepthAndFlagsEv:bb.a
  %.sink4.i = phi i64 [ 32, %bb.k ], [ 24, %_ZN2v88internal25LiteralBoilerplateBuilder17InitDepthAndFlagsEPNS0_19MaterializedLiteralE.exit ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sink4.i
  %i.bb = load i32, ptr %i.ba, align 4
  %1 = trunc i32 %i.bb to i8
  %2 = lshr i8 %1, 2
  %3 = and i8 %2, 1
  %4 = or i8 %3, %.02986
  br label %_ZN2v88internal19MaterializedLiteral26NeedsInitialAllocationSiteEv.exit

_ZN2v88internal19MaterializedLiteral26NeedsInitialAllocationSiteEv.exit: ; preds = %_ZN2v88internal25LiteralBoilerplateBuilder17InitDepthAndFlagsEPNS0_19MaterializedLiteralE.exit, %.sink.split.i
  %.0.i = phi i8 [ %.02986, %_ZN2v88internal25LiteralBoilerplateBuilder17InitDepthAndFlagsEPNS0_19MaterializedLiteralE.exit ], [ %4, %.sink.split.i ]
  %.pre = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %.pre106 = load i32, ptr %.phi.trans.insert, align 4
end_hunk_1
begin_hunk_2_@_ZN2v88internal31ObjectLiteralBoilerplateBuilder17InitDepthAndFlagsEv:bb.a
  %.pre-phi = phi i8 [ %.pre108, %_ZN2v88internal19MaterializedLiteral26NeedsInitialAllocationSiteEv.exit ], [ %i.as, %bb.g ]
  %i.bc = phi ptr [ %.pre, %_ZN2v88internal19MaterializedLiteral26NeedsInitialAllocationSiteEv.exit ], [ %i.ap, %bb.g ]
  %.133 = phi i32 [ 2, %_ZN2v88internal19MaterializedLiteral26NeedsInitialAllocationSiteEv.exit ], [ %.03285, %bb.g ]
  %.130 = phi i8 [ %.0.i, %_ZN2v88internal19MaterializedLiteral26NeedsInitialAllocationSiteEv.exit ], [ %.02986, %bb.g ]
  %i.bd = load i64, ptr %i.n, align 8
  %i.be = and i64 %i.bd, -2
  %i.bf = inttoptr i64 %i.be to ptr               ; 4 uses
end_hunk_2
