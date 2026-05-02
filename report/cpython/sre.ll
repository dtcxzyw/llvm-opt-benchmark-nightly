inline.NumInlined: 358
inline.NumDeleted: 87
begin_hunk_0_@sre_category:bb.a

bb.ak:                                            ; preds = %bb.aj
  %i.cj = tail call i32 @_PyUnicode_IsNumeric(i32 noundef %1) #14
  %.not56 = icmp eq i32 %i.cj, 0
  br label %Py_UNICODE_ISALNUM.exit55

Py_UNICODE_ISALNUM.exit55:                        ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.ak
  %i.ck = phi i1 [ false, %bb.aj ], [ false, %bb.ai ], [ false, %bb.ah ], [ %.not56, %bb.ak ]
  %2 = icmp ne i32 %1, 95
  %.not37 = and i1 %2, %i.ck
  %i.cl = zext i1 %.not37 to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.al:                                            ; preds = %bb.a
end_hunk_0
