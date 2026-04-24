inline.NumInlined: 2118
inline.NumDeleted: 1345
begin_hunk_0_@_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEEvSB_T_SC_St20forward_iterator_tag:bb.a
  %i.br = sub i64 %i.bq, %i.m                     ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.br, 104
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.i.i52.preheader233, label %vector.memcheck123

vector.memcheck123:                               ; preds = %.lr.ph.i.i.i.i.i52.preheader
end_hunk_0
