inline.NumInlined: 2405
inline.NumDeleted: 1305
begin_hunk_0_@_ZN6duckdb18StructColumnWriter20InitializeWriteStateERN14duckdb_parquet8RowGroupE:bb.a
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc14
  %5 = add i64 %i.ag, -8
  %6 = sub i64 %5, %i.ab                          ; 2 uses
  %i.aj = lshr i64 %6, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader74, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %7 = add i64 %i.ag, -8
  %i.al = sub i64 %7, %i.ab
  %i.am = and i64 %i.al, -8
  %8 = add i64 %i.am, 8                           ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ai, i64 %8
  %scevgep42 = getelementptr i8, ptr %i.z, i64 %8
  %bound0 = icmp ult ptr %i.ai, %scevgep42
  %bound1 = icmp ult ptr %i.z, %scevgep
  %found.conflict = and i1 %bound0, %bound1
end_hunk_0
begin_hunk_1_@_ZN6duckdb18StructColumnWriter20InitializeWriteStateERN14duckdb_parquet8RowGroupE:bb.a
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc16
  %9 = add i64 %i.br, -8
  %10 = sub i64 %9, %i.bs                         ; 2 uses
  %i.ce = lshr i64 %10, 3
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %min.iters.check56 = icmp ult i64 %10, 56
  br i1 %min.iters.check56, label %.lr.ph.i.i.i.i.i.i.i.preheader73, label %vector.memcheck47

vector.memcheck47:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep48 = getelementptr i8, ptr %i.cb, i64 8
  %11 = add i64 %i.br, -8
  %i.cg = sub i64 %11, %i.bs
  %i.ch = and i64 %i.cg, -8                       ; 2 uses
  %scevgep49 = getelementptr i8, ptr %scevgep48, i64 %i.ch
  %scevgep50 = getelementptr i8, ptr %i.bq, i64 8
  %scevgep51 = getelementptr i8, ptr %scevgep50, i64 %i.ch
  %bound052 = icmp ult ptr %i.cb, %scevgep51
  %bound153 = icmp ult ptr %i.bq, %scevgep49
  %found.conflict54 = and i1 %bound052, %bound153
  br i1 %found.conflict54, label %.lr.ph.i.i.i.i.i.i.i.preheader73, label %vector.ph57

end_hunk_1
