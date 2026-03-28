begin_hunk_0
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %8 = icmp ugt i64 %.036107.i, 2
  br i1 %8, label %_ZN6duckdbL14TryIntegerCastINS_15HugeIntCastDataINS_9hugeint_tENS_7HugeintElEELb1ELb1ENS_24HugeIntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread7, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = call noundef zeroext i1 @_ZN6duckdb24HugeIntegerCastOperation8FinalizeINS_15HugeIntCastDataINS_9hugeint_tENS_7HugeintElEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(74) %7) ; 0 uses
  br label %_ZN6duckdbL14TryIntegerCastINS_15HugeIntCastDataINS_9hugeint_tENS_7HugeintElEELb1ELb1ENS_24HugeIntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread7

bb.ag:                                            ; preds = %bb.ad, %bb.ad
  %9 = icmp ugt i64 %.036107.i, 2
  br i1 %9, label %_ZN6duckdbL14TryIntegerCastINS_15HugeIntCastDataINS_9hugeint_tENS_7HugeintElEELb1ELb1ENS_24HugeIntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread7, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cw = call noundef zeroext i1 @_ZN6duckdb24HugeIntegerCastOperation8FinalizeINS_15HugeIntCastDataINS_9hugeint_tENS_7HugeintElEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(74) %7) ; 0 uses
end_hunk_0
begin_hunk_1
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %8 = icmp ugt i64 %.043110.i, 2
  br i1 %8, label %_ZN6duckdbL14TryIntegerCastINS_15HugeIntCastDataINS_10uhugeint_tENS_8UhugeintEmEELb0ELb1ENS_24HugeIntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = call noundef zeroext i1 @_ZN6duckdb24HugeIntegerCastOperation8FinalizeINS_15HugeIntCastDataINS_10uhugeint_tENS_8UhugeintEmEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(74) %7) ; 0 uses
  br label %_ZN6duckdbL14TryIntegerCastINS_15HugeIntCastDataINS_10uhugeint_tENS_8UhugeintEmEELb0ELb1ENS_24HugeIntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread

bb.ab:                                            ; preds = %bb.y, %bb.y
  %9 = icmp ugt i64 %.043110.i, 2
  br i1 %9, label %_ZN6duckdbL14TryIntegerCastINS_15HugeIntCastDataINS_10uhugeint_tENS_8UhugeintEmEELb0ELb1ENS_24HugeIntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cp = call noundef zeroext i1 @_ZN6duckdb24HugeIntegerCastOperation8FinalizeINS_15HugeIntCastDataINS_10uhugeint_tENS_8UhugeintEmEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(74) %7) ; 0 uses
end_hunk_1
begin_hunk_2
  %.pn272 = phi i64 [ %i.id, %.noexc73 ], [ %i.hq, %.noexc ] ; 2 uses
  %spec.select.i72.pn = phi i64 [ %spec.select.i72, %.noexc73 ], [ %i.hs, %.noexc ] ; 3 uses
  %i.ig = icmp ne i64 %.pn272, -1
  %6 = add nsw i64 %.sroa.093.0.ph462478, 27
  %7 = icmp ult i64 %6, 83
  %or.cond.i54 = or i1 %7, %i.ig
  br i1 %or.cond.i54, label %.critedge.i60, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66.thread

.critedge.i60:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit
end_hunk_2
begin_hunk_3
  %.pn276 = phi i64 [ %i.kn, %.noexc77 ], [ %i.kc, %.noexc76 ] ; 2 uses
  %spec.select.i75.pn = phi i64 [ %spec.select.i75, %.noexc77 ], [ %i.ke, %.noexc76 ] ; 3 uses
  %i.kq = icmp ne i64 %.pn276, -1
  %8 = add nsw i64 %.sroa.093.0.ph462479, 27
  %9 = icmp ult i64 %8, 83
  %or.cond.i51 = or i1 %9, %i.kq
  br i1 %or.cond.i51, label %.critedge.i52, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit

.critedge.i52:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit78
end_hunk_3
begin_hunk_4
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  %20 = icmp ugt i64 %.03582.i, 2
  br i1 %20, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cv = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %15) ; 0 uses
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.af:                                            ; preds = %bb.ac, %bb.ac
  %21 = icmp ugt i64 %.03582.i, 2
  br i1 %21, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cw = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %15) ; 0 uses
end_hunk_4
begin_hunk_5
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  %20 = icmp ugt i64 %.03582.i, 2
  br i1 %20, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cv = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %15) ; 0 uses
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.af:                                            ; preds = %bb.ac, %bb.ac
  %21 = icmp ugt i64 %.03582.i, 2
  br i1 %21, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cw = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %15) ; 0 uses
end_hunk_5
