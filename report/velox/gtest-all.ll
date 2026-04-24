inline.NumInlined: 8808
inline.NumDeleted: 2098
begin_hunk_0_@_ZN7testing8internal12UnitTestImpl11FilterTestsENS1_18ReactionToShardingE:bb.a
  %i.cj = phi ptr [ %i.ci, %bb.x ], [ %i.cg, %bb.w ] ; 5 uses
  %i.ck = ptrtoint ptr %i.cj to i64               ; 3 uses
  %i.cl = icmp uge ptr %.013.i61, %i.cj           ; 2 uses
  %.not392655.i.i63 = select i1 %i.cl, i1 %i.cf, i1 false ; 2 uses
  br i1 %.not392655.i.i63, label %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit123.loopexit217, label %.lr.ph.i.i64

.lr.ph.i.i64:                                     ; preds = %bb.y, %.outer.backedge.i.i79
  %i.cm = phi i1 [ %i.dc, %.outer.backedge.i.i79 ], [ %i.cl, %bb.y ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7testing8internal12UnitTestImpl11FilterTestsENS1_18ReactionToShardingE:bb.a

_ZN7testing8internalL20PatternMatchesStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_.exit.i86: ; preds = %.loopexit1.i.i74
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  br i1 %.not.i62, label %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit123.loopexit217, label %bb.w, !llvm.loop !292

_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit123.loopexit217: ; preds = %bb.y, %_ZN7testing8internalL20PatternMatchesStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_.exit.i86
  %.ph = phi i8 [ 1, %bb.y ], [ 0, %_ZN7testing8internalL20PatternMatchesStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_.exit.i86 ]
  %.not52.ph = xor i1 %.not392655.i.i63, true
  br label %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit123

_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit123: ; preds = %bb.p, %.outer.backedge.i.i, %bb.r, %.outer.backedge.i.i79, %bb.aa, %bb.v, %bb.ae, %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit123.loopexit217
  %4 = phi i8 [ 1, %bb.ae ], [ 1, %.outer.backedge.i.i79 ], [ 1, %.outer.backedge.i.i ], [ %.ph, %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit123.loopexit217 ], [ 1, %bb.v ], [ 1, %bb.aa ], [ 1, %bb.r ], [ 1, %bb.p ]
  %.not52 = phi i1 [ false, %bb.ae ], [ false, %.outer.backedge.i.i79 ], [ false, %.outer.backedge.i.i ], [ %.not52.ph, %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit123.loopexit217 ], [ false, %bb.v ], [ false, %bb.aa ], [ false, %bb.r ], [ false, %bb.p ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ao, i64 129
  store i8 %4, ptr %i.dh, align 1, !tbaa !390
  %i.di = invoke noundef zeroext i1 @_ZN7testing8internal15UnitTestOptions17FilterMatchesTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.af unwind label %bb.ai     ; 2 uses

end_hunk_1
begin_hunk_2_@_ZN7testing8internal12UnitTestImpl11FilterTestsENS1_18ReactionToShardingE:bb.a
  store i8 %i.dj, ptr %i.dk, align 2, !tbaa !389
  %i.dl = load i8, ptr @_ZN7testing35FLAGS_gtest_also_run_disabled_testsE, align 1, !tbaa !68, !range !69, !noundef !70
  %i.dm = trunc nuw i8 %i.dl to i1
  %not.or.cond = or i1 %.not52, %i.dm
  %i.dn = and i1 %i.di, %not.or.cond              ; 2 uses
  br i1 %.not, label %bb.ah, label %bb.ag
end_hunk_2
