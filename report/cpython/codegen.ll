inline.NumInlined: 724
inline.NumDeleted: 94
begin_hunk_0_@codegen_check_compare:bb.a

bb.j:                                             ; preds = %bb.g
  %i.aq = getelementptr i8, ptr %i.af, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !24
  %2 = insertelement <4 x ptr> poison, ptr %i.ar, i64 0
  %3 = shufflevector <4 x ptr> %2, <4 x ptr> poison, <4 x i32> zeroinitializer
  %4 = icmp eq <4 x ptr> %3, <ptr @_Py_NoneStruct, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct, ptr @_Py_EllipsisObject>
  %5 = bitcast <4 x i1> %4 to i4
  %6 = icmp ne i4 %5, 0
  br label %check_is_arg.exit49

.check_is_arg.exit49.loopexit_crit_edge:          ; preds = %.lr.ph92
  br label %check_is_arg.exit49, !llvm.loop !217

check_is_arg.exit49:                              ; preds = %bb.i, %.split.i.i44, %.check_is_arg.exit49.loopexit_crit_edge, %bb.g, %bb.h, %bb.j
  %.0.i43 = phi i1 [ true, %bb.g ], [ %6, %bb.j ], [ false, %bb.h ], [ true, %.check_is_arg.exit49.loopexit_crit_edge ], [ false, %.split.i.i44 ], [ false, %bb.i ] ; 2 uses
  %i.as = add i32 %i.ad, -9
  %or.cond = icmp ult i32 %i.as, -2
  %or.cond3 = select i1 %.0.i43, i1 %.03564, i1 false
end_hunk_0
