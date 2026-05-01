inline.NumInlined: 724
inline.NumDeleted: 94
begin_hunk_0_@codegen_check_compare:bb.a

bb.j:                                             ; preds = %bb.g
  %i.aq = getelementptr i8, ptr %i.af, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !24 ; 4 uses
  %2 = icmp eq ptr %i.ar, @_Py_NoneStruct
  %3 = icmp eq ptr %i.ar, @_Py_FalseStruct
  %or.cond.i40 = or i1 %2, %3
  %4 = icmp eq ptr %i.ar, @_Py_TrueStruct
  %or.cond3.i41 = or i1 %4, %or.cond.i40
  %5 = icmp eq ptr %i.ar, @_Py_EllipsisObject
  %spec.select.i42 = or i1 %5, %or.cond3.i41
  br label %check_is_arg.exit49

.check_is_arg.exit49.loopexit_crit_edge:          ; preds = %.lr.ph92
  br label %check_is_arg.exit49, !llvm.loop !217

check_is_arg.exit49:                              ; preds = %bb.i, %.split.i.i44, %.check_is_arg.exit49.loopexit_crit_edge, %bb.g, %bb.h, %bb.j
  %.0.i43 = phi i1 [ true, %bb.g ], [ %spec.select.i42, %bb.j ], [ false, %bb.h ], [ true, %.check_is_arg.exit49.loopexit_crit_edge ], [ false, %.split.i.i44 ], [ false, %bb.i ] ; 2 uses
  %i.as = add i32 %i.ad, -9
  %or.cond = icmp ult i32 %i.as, -2
  %or.cond3 = select i1 %.0.i43, i1 %.03564, i1 false
end_hunk_0
