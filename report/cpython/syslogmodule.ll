inline.NumInlined: 30
inline.NumDeleted: 18
begin_hunk_0_@syslog_LOG_MASK:bb.a
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @PyErr_Occurred() #4       ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.split6.thread
end_hunk_0
