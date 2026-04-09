inline.NumInlined: 2160
inline.NumDeleted: 1234
begin_hunk_0_@_ZN6duckdb14FunctionBinder19BindSortedAggregateERNS_13ClientContextERNS_24BoundAggregateExpressionERKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEENS_12optional_ptrINS5_ISt3setImSt4lessImESaImEELb1ESaISK_EEELb1EEE:bb.a
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc38
  %6 = add i64 %i.at, -8
  %7 = sub i64 %6, %i.au                          ; 2 uses
  %i.bg = lshr i64 %7, 3
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader108, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bd, i64 8
  %8 = add i64 %i.at, -8
  %i.bi = sub i64 %8, %i.au
  %i.bj = and i64 %i.bi, -8                       ; 2 uses
  %scevgep101 = getelementptr i8, ptr %scevgep, i64 %i.bj
  %scevgep102 = getelementptr i8, ptr %i.as, i64 8
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.bj
  %bound0 = icmp ult ptr %i.bd, %scevgep103
  %bound1 = icmp ult ptr %i.as, %scevgep101
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader108, label %vector.ph

end_hunk_0
begin_hunk_1_@_ZN6duckdb14FunctionBinder19BindSortedAggregateERNS_13ClientContextERNS_21BoundWindowExpressionE:bb.a
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc54
  %6 = add i64 %i.cq, -8
  %7 = sub i64 %6, %i.cr                          ; 2 uses
  %i.dd = lshr i64 %7, 3
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader161, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.da, i64 8
  %8 = add i64 %i.cq, -8
  %i.df = sub i64 %8, %i.cr
  %i.dg = and i64 %i.df, -8                       ; 2 uses
  %scevgep154 = getelementptr i8, ptr %scevgep, i64 %i.dg
  %scevgep155 = getelementptr i8, ptr %i.cp, i64 8
  %scevgep156 = getelementptr i8, ptr %scevgep155, i64 %i.dg
  %bound0 = icmp ult ptr %i.da, %scevgep156
  %bound1 = icmp ult ptr %i.cp, %scevgep154
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader161, label %vector.ph

end_hunk_1
