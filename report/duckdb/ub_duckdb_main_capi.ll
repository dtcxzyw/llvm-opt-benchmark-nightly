inline.NumInlined: 10465
inline.NumDeleted: 4631
begin_hunk_0_@duckdb_config_count:bb.a
bb.a:
  %i.a = tail call noundef i64 @_ZN6duckdb8DBConfig14GetOptionCountEv()
  %i.b = tail call noundef i64 @_ZN6duckdb8DBConfig13GetAliasCountEv()
  %i.c = add i64 %i.a, %i.b
  %i.d = add i64 %i.c, 94
  ret i64 %i.d
}

end_hunk_0
begin_hunk_1_@_ZN6duckdb32duckdb_capi_replacement_callbackERNS_13ClientContextERNS_20ReplacementScanInputENS_12optional_ptrINS_19ReplacementScanDataELb1EEE:bb.a
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc30
  %12 = sub i64 %i.ap, %i.aq
  %13 = add i64 %12, -8                           ; 2 uses
  %i.bc = lshr i64 %13, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader119, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.be = sub i64 %i.ap, %i.aq
  %i.bf = and i64 %i.be, -8                       ; 2 uses
  %scevgep113 = getelementptr i8, ptr %i.az, i64 %i.bf
  %scevgep114 = getelementptr i8, ptr %i.ao, i64 %i.bf
  %bound0 = icmp ult ptr %i.az, %scevgep114
  %bound1 = icmp ult ptr %i.ao, %scevgep113
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader119, label %vector.ph

end_hunk_1
