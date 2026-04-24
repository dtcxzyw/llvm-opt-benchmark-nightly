inline.NumInlined: 6243
inline.NumDeleted: 1690
begin_hunk_0_@_ZN7testing8internal12UnitTestImpl11FilterTestsENS1_18ReactionToShardingE:bb.a
.lr.ph.i58:                                       ; preds = %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, %bb.o
  %.09.i59 = phi ptr [ %i.bs, %bb.o ], [ @_ZN7testingL18kDisableTestFilterE, %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit ]
  %i.bu = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.09.i59, i32 noundef 58) #58 ; 2 uses
  %.not.i60.not.not = icmp ne ptr %i.bu, null     ; 3 uses
  br i1 %.not.i60.not.not, label %bb.o, label %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit62

_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit62: ; preds = %bb.n, %.lr.ph.i58, %bb.o, %bb.m, %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit
  %4 = phi i1 [ true, %bb.m ], [ true, %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit ], [ %.not.i60.not.not, %.lr.ph.i58 ], [ %.not.i60.not.not, %bb.o ], [ true, %bb.n ] ; 2 uses
  %5 = zext i1 %4 to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 129
  store i8 %5, ptr %i.bv, align 1, !tbaa !236
  %i.bw = invoke noundef zeroext i1 @_ZN7testing8internal15UnitTestOptions17FilterMatchesTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.p unwind label %bb.s       ; 2 uses

end_hunk_0
begin_hunk_1_@_ZN7testing8internal12UnitTestImpl11FilterTestsENS1_18ReactionToShardingE:bb.a
  store i8 %i.bx, ptr %i.by, align 2, !tbaa !235
  %i.bz = load i8, ptr @_ZN7testing35FLAGS_gtest_also_run_disabled_testsE, align 1, !tbaa !73, !range !74, !noundef !75
  %i.ca = trunc nuw i8 %i.bz to i1
  %.not51 = xor i1 %4, true
  %not.or.cond = or i1 %.not51, %i.ca
  %i.cb = and i1 %i.bw, %not.or.cond              ; 3 uses
  %brmerge.not = and i1 %i.p, %i.cb
end_hunk_1
