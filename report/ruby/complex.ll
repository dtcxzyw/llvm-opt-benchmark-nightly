inline.NumInlined: 549
inline.NumDeleted: 101
begin_hunk_0_@rb_complex_finite_p:bb.a
  %i.am = fcmp ueq double %i.al, 0x7FF0000000000000
  br i1 %i.am, label %bb.d, label %f_finite_p.exit10.thread

f_finite_p.exit10.thread:                         ; preds = %f_finite_p.exit.thread, %rb_integer_type_p.exit.i.i4, %rb_integer_type_p.exit.i.i4, %RB_FLOAT_TYPE_P.exit.thread11.i8, %f_finite_p.exit10
  br label %bb.d

bb.d:                                             ; preds = %f_finite_p.exit10.thread, %f_finite_p.exit10, %RB_FLOAT_TYPE_P.exit.thread11.i8, %RB_FLOAT_TYPE_P.exit.thread11.i, %f_finite_p.exit
  %i.an = phi i64 [ 0, %f_finite_p.exit ], [ 0, %RB_FLOAT_TYPE_P.exit.thread11.i ], [ 20, %f_finite_p.exit10.thread ], [ 0, %f_finite_p.exit10 ], [ 0, %RB_FLOAT_TYPE_P.exit.thread11.i8 ]
  ret i64 %i.an
}

end_hunk_0
