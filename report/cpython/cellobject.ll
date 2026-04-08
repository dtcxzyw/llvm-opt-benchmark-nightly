inline.NumInlined: 37
inline.NumDeleted: 17
begin_hunk_0_@cell_new:bb.a

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !40   ; 4 uses
  %i.f = call ptr @_PyObject_GC_New(ptr noundef nonnull @PyCell_Type) #4 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %PyCell_New.exit, label %bb.e

end_hunk_0
begin_hunk_1_@cell_new:bb.a

bb.h:                                             ; preds = %_Py_XNewRef.exit.i
  %i.ap = getelementptr i8, ptr %i.n, i64 7400
  call void @_Py_TriggerGC(ptr noundef %i.ap) #4
  br label %PyCell_New.exit

PyCell_New.exit:                                  ; preds = %bb.h, %_Py_XNewRef.exit.i, %bb.d, %bb.c, %bb.b
end_hunk_1
begin_hunk_2_@PyArg_UnpackTuple
!38 = !{!"p1 _ZTS11PyGetSetDef", !16, i64 0}
!39 = !{!"short", !9, i64 0}
!40 = !{!17, !17, i64 0}
end_hunk_2
