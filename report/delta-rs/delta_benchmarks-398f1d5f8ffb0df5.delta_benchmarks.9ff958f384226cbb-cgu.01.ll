inline.NumInlined: 8088
inline.NumDeleted: 2392
begin_hunk_0_@_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterAB13_j2_EEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %.pn29.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i.i.i.i, %.thread45.i.i.i.i.i.i ], [ %eh.lpad-body38.i.i.i.i.i.i, %bb.x ], [ %eh.lpad-body38.i.i.i.i.i.i, %.thread31.i.i.i.i.i.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  %i.dp = load i128, ptr %i.do, align 16, !range !1482, !alias.scope !14000, !noalias !14001, !noundef !3
  %2 = trunc nuw i128 %i.dp to i1
  %or.cond.i.i.i.i.i.i = and i1 %.sroa.04.230.i.i.i.i.i.i, %2
  br i1 %or.cond.i.i.i.i.i.i, label %bb.y, label %.body

end_hunk_0
