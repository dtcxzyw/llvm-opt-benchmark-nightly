inline.NumInlined: 7169
inline.NumDeleted: 1237
begin_hunk_0_@_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_124BitwiseShiftLeftOperatorEhhhEET3_T_T1_T2_RNS_12ValidityMaskEm:bb.a
  br i1 %i.n, label %_ZN6duckdb12_GLOBAL__N_124BitwiseShiftLeftOperator9OperationIhhhEET1_T_T0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %9 = sub nuw nsw i32 8, %i.b
  %10 = shl nuw nsw i32 1, %9
  %i.o = trunc nuw i32 %10 to i8
  %.not.i = icmp ult i8 %0, %i.o
  br i1 %.not.i, label %bb.m, label %bb.i

end_hunk_0
begin_hunk_1_@_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_124BitwiseShiftLeftOperatorEtttEET3_T_T1_T2_RNS_12ValidityMaskEm:bb.a
  br i1 %i.n, label %_ZN6duckdb12_GLOBAL__N_124BitwiseShiftLeftOperator9OperationItttEET1_T_T0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %9 = sub nuw nsw i32 16, %i.b
  %10 = shl nuw nsw i32 1, %9
  %i.o = trunc nuw i32 %10 to i16
  %.not.i = icmp ult i16 %0, %i.o
  br i1 %.not.i, label %bb.m, label %bb.i

end_hunk_1
