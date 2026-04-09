inline.NumInlined: 1841
inline.NumDeleted: 1017
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_118BindAggregateStateERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE:bb.a
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc145
  %34 = sub i64 %i.gl, %i.gm
  %35 = add i64 %34, -8                           ; 2 uses
  %i.gy = lshr i64 %35, 3
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %35, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader375, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ha = sub i64 %i.gl, %i.gm
  %i.hb = and i64 %i.ha, -8                       ; 2 uses
  %scevgep369 = getelementptr i8, ptr %i.gv, i64 %i.hb
  %scevgep370 = getelementptr i8, ptr %i.gk, i64 %i.hb
  %bound0 = icmp ult ptr %i.gv, %scevgep370
  %bound1 = icmp ult ptr %i.gk, %scevgep369
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader375, label %vector.ph

end_hunk_0
