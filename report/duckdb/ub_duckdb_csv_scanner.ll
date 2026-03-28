begin_hunk_0
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  %14 = icmp ugt i64 %.03582.i, 2
  br i1 %14, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cq = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %13) ; 0 uses
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.af:                                            ; preds = %bb.ac, %bb.ac
  %15 = icmp ugt i64 %.03582.i, 2
  br i1 %15, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cr = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %13) ; 0 uses
end_hunk_0
begin_hunk_1
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  %14 = icmp ugt i64 %.03582.i, 2
  br i1 %14, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cq = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %13) ; 0 uses
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.af:                                            ; preds = %bb.ac, %bb.ac
  %15 = icmp ugt i64 %.03582.i, 2
  br i1 %15, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cr = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %13) ; 0 uses
end_hunk_1
begin_hunk_2
  %.pn265 = phi i64 [ %i.id, %bb.bj ], [ %i.hq, %bb.bi ] ; 2 uses
  %spec.select.i72.pn = phi i64 [ %spec.select.i72, %bb.bj ], [ %i.hs, %bb.bi ] ; 3 uses
  %i.ig = icmp ne i64 %.pn265, -1
  %6 = add nsw i64 %.sroa.086.0.ph455471, 27
  %7 = icmp ult i64 %6, 83
  %or.cond.i59 = or i1 %7, %i.ig
  br i1 %or.cond.i59, label %.critedge.i65, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71.thread

.critedge.i65:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit
end_hunk_2
begin_hunk_3
  %.pn269 = phi i64 [ %i.kn, %bb.bq ], [ %i.kc, %bb.bp ] ; 2 uses
  %spec.select.i78.pn = phi i64 [ %spec.select.i78, %bb.bq ], [ %i.ke, %bb.bp ] ; 3 uses
  %i.kq = icmp ne i64 %.pn269, -1
  %8 = add nsw i64 %.sroa.086.0.ph455472, 27
  %9 = icmp ult i64 %8, 83
  %or.cond.i56 = or i1 %9, %i.kq
  br i1 %or.cond.i56, label %.critedge.i57, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit

.critedge.i57:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit79
end_hunk_3
