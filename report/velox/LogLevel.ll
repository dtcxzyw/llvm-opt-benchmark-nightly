inline.NumInlined: 410
inline.NumDeleted: 212
begin_hunk_0_@_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_:bb.a
  %.sroa.03.0.i13.i.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ 2, %.lr.ph.i.i.i.i ]
  %.sroa.3.0.insert.insert.i.i.i = phi i64 [ %.sroa.53.0.extract.shift.i, %bb.b ], [ %.sroa.53.0.extract.shift.i, %bb.c ], [ 2560, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.i = and i64 %.sroa.3.0.insert.insert.i.i.i, -4294967296
  %3 = or disjoint i64 %i.i, %.sroa.03.0.i13.i.i
  br label %bb.e

bb.d:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_:bb.a

bb.e:                                             ; preds = %bb.d, %_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS_8ExpectedINS_4UnitENS_14ConversionCodeEEEZNS_5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS4_ISE_NSt16remove_referenceIDTclsr6detailE11parseToWraptlSD_Eclsr3stdE7declvalIRSE_EEEEE4type10error_typeEEEE4typeESD_EUlS5_E_JES6_S2_EEDTclsrT3_5then_clsrSP_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalISE_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSE_OSR_DpOSS_.exit.i.i
  %.sroa.3.0.i.i.in.in = phi i64 [ %.sroa.3.0.insert.insert.i.i.i, %_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS_8ExpectedINS_4UnitENS_14ConversionCodeEEEZNS_5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS4_ISE_NSt16remove_referenceIDTclsr6detailE11parseToWraptlSD_Eclsr3stdE7declvalIRSE_EEEEE4type10error_typeEEEE4typeESD_EUlS5_E_JES6_S2_EEDTclsrT3_5then_clsrSP_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalISE_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSE_OSR_DpOSS_.exit.i.i ], [ %i.b, %bb.d ]
  %.sroa.3.0.insert.insert.i.i.a = phi i64 [ %3, %_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS_8ExpectedINS_4UnitENS_14ConversionCodeEEEZNS_5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS4_ISE_NSt16remove_referenceIDTclsr6detailE11parseToWraptlSD_Eclsr3stdE7declvalIRSE_EEEEE4type10error_typeEEEE4typeESD_EUlS5_E_JES6_S2_EEDTclsrT3_5then_clsrSP_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalISE_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSE_OSR_DpOSS_.exit.i.i ], [ 2, %bb.d ]
  %.sroa.3.0.insert.ext.i.i = and i64 %.sroa.3.0.i.i.in.in, 65280
  %.sroa.07.0.insert.insert.i.i = add nuw nsw i64 %.sroa.3.0.insert.insert.i.i.a, %.sroa.3.0.insert.ext.i.i
  ret i64 %.sroa.07.0.insert.insert.i.i
}

end_hunk_1
