inline.NumInlined: 33
inline.NumDeleted: 17
begin_hunk_0_@perm_comb:bb.a
  tail call void @_Py_Dealloc(ptr noundef nonnull %.142) #6
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %Py_DECREF.exit53, %bb.d, %bb.c, %bb.e, %Py_DECREF.exit55, %bb.b
  %.2 = phi ptr [ %i.a, %bb.b ], [ %i.u, %Py_DECREF.exit55 ], [ null, %bb.e ], [ %i.af, %bb.w ], [ %0, %bb.d ], [ %0, %bb.c ], [ %i.af, %Py_DECREF.exit53 ], [ %i.af, %bb.v ], [ null, %bb.x ], [ null, %bb.y ], [ null, %bb.z ]
  ret ptr %.2
}

end_hunk_0
