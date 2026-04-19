inline.NumInlined: 116
inline.NumDeleted: 38
begin_hunk_0_@csv_writerow:bb.a
  br label %csv_writerow_lock_held.exit

csv_writerow_lock_held.exit:                      ; preds = %bb.b, %bb.c, %bb.s, %bb.t, %bb.u, %bb.x, %bb.y, %bb.z, %Py_DECREF.exit75.i, %bb.ag, %bb.ah, %bb.ai, %join_check_rec_size.exit.i.i, %.loopexit.i, %bb.ap, %bb.aq, %bb.ar
  %.4.i = phi ptr [ null, %Py_DECREF.exit75.i ], [ %i.gf, %bb.ar ], [ null, %bb.b ], [ null, %bb.ag ], [ null, %bb.s ], [ null, %.loopexit.i ], [ null, %bb.ah ], [ null, %bb.c ], [ %i.gf, %bb.ap ], [ %i.gf, %bb.aq ], [ null, %bb.x ], [ null, %bb.y ], [ null, %bb.z ], [ null, %bb.u ], [ null, %bb.t ], [ null, %bb.ai ], [ null, %join_check_rec_size.exit.i.i ]
  ret ptr %.4.i
}

end_hunk_0
