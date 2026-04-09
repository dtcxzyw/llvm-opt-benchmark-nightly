inline.NumInlined: 1092
inline.NumDeleted: 585
begin_hunk_0_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %2 = sub i64 %i.d, %i.e
  %3 = add i64 %2, -8                             ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = sub i64 %i.d, %i.e
  %i.ac = and i64 %i.ab, -8                       ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ac
  %scevgep16 = getelementptr i8, ptr %i.c, i64 %i.ac
  %bound0 = icmp ult ptr %i.w, %scevgep16
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
end_hunk_0
