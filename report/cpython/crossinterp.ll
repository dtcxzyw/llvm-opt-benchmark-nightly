inline.NumInlined: 270
inline.NumDeleted: 99
begin_hunk_0_@_PyXI_EndInterpreter:bb.a
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.d, %bb.f
  %.015 = phi ptr [ null, %bb.f ], [ null, %bb.d ], [ %i.g, %.sink.split ]
  %.0 = phi ptr [ %1, %bb.f ], [ %i.b, %bb.d ], [ %.sink, %.sink.split ]
  tail call void @Py_EndInterpreter(ptr noundef %.0) #15
  %.not20 = icmp eq ptr %2, null
  br i1 %.not20, label %bb.i, label %bb.h

end_hunk_0
begin_hunk_1_@_PyXI_EndInterpreter:bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1 = phi ptr [ %i.h, %bb.h ], [ %.015, %bb.g ]
  %i.i = tail call ptr @PyThreadState_Swap(ptr noundef %.1) #15 ; 0 uses
  br label %bb.j

end_hunk_1
