inline.NumInlined: 5150
inline.NumDeleted: 1899
begin_hunk_0_@_ZN6google8protobuf10TextFormat6Parser10ParserImpl20ConsumeSignedIntegerEPlm:._crit_edge.i.i
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6google8protobuf10TextFormat6Parser10ParserImpl10TryConsumeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %._crit_edge.i.i
  %i.n = phi i1 [ true, %_ZN6google8protobuf10TextFormat6Parser10ParserImpl10TryConsumeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ false, %._crit_edge.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %4 = zext i1 %i.n to i64
  %spec.select = add i64 %2, %4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.o = call noundef zeroext i1 @_ZN6google8protobuf10TextFormat6Parser10ParserImpl22ConsumeUnsignedIntegerEPmm(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull %i.a, i64 noundef %spec.select)
  br i1 %i.o, label %bb.b, label %bb.d
end_hunk_0
