inline.NumInlined: 657
inline.NumDeleted: 278
begin_hunk_0_@_ZN16OpenColorIO_v2_515LookParseResult5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %bb.l

._crit_edge79:                                    ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EED2Ev.exit
  %.lcssa217 = phi ptr [ %i.dh, %_ZNSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EED2Ev.exit ]
  %.lcssa191 = phi ptr [ %i.dh, %_ZNSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EED2Ev.exit ] ; 4 uses
  %.lcssa189 = phi ptr [ %i.cl, %_ZNSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EED2Ev.exit ] ; 2 uses
  %.lcssa186 = phi ptr [ %i.cm, %_ZNSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EED2Ev.exit ]
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_515LookParseResult5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %._crit_edge79
  %scevgep216 = getelementptr i8, ptr %.lcssa217, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
end_hunk_1
