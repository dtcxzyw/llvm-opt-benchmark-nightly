inline.NumInlined: 611
inline.NumDeleted: 181
begin_hunk_0_@_ZN4absl12lts_2025051212_GLOBAL__N_116AppendNumberUnitEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdNS1_11DisplayUnitE:bb.a
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit

_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit: ; preds = %.preheader.i, %.lr.ph.preheader.i
  %.18.lcssa.i = phi ptr [ %i.t, %.preheader.i ], [ %scevgep18.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.ad = ptrtoint ptr %i.d to i64
  %i.ae = ptrtoint ptr %.18.lcssa.i to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051212_GLOBAL__N_116AppendNumberUnitEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdNS1_11DisplayUnitE:bb.a
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit38

_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit38: ; preds = %.preheader.i33, %.lr.ph.preheader.i35
  %.18.lcssa.i34 = phi ptr [ %i.bd, %.preheader.i33 ], [ %scevgep18.i37, %.lr.ph.preheader.i35 ] ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit38
end_hunk_1
