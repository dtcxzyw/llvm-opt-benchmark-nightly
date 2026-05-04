inline.NumInlined: 1556
inline.NumDeleted: 720
begin_hunk_0_@_ZN5folly20NestedCommandLineApp10addCommandENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_S6_St8functionIFvRKN5boost15program_options13variables_mapERKSt6vectorIS6_SaIS6_EEEENS_8OptionalINS9_30positional_options_descriptionEEE:bb.a
  %.pre49 = load i64, ptr %.phi.trans.insert48, align 8, !tbaa !20
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.bu = phi i64 [ %i.bq, %bb.h ], [ %.pre49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 288
end_hunk_0
