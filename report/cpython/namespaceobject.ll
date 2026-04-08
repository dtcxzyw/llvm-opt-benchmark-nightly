inline.NumInlined: 22
inline.NumDeleted: 7
begin_hunk_0_@namespace_richcompare:bb.a
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.b
  %i.c = tail call i32 @PyType_IsSubtype(ptr noundef %.val9, ptr noundef nonnull @_PyNamespace_Type) #3
  %.not14 = icmp eq i32 %i.c, 0
  br i1 %.not14, label %bb.c, label %PyObject_TypeCheck.exit.thread

end_hunk_0
begin_hunk_1_@namespace_richcompare:bb.a
  br i1 %.not.i10, label %PyObject_TypeCheck.exit11.thread, label %PyObject_TypeCheck.exit11

PyObject_TypeCheck.exit11:                        ; preds = %PyObject_TypeCheck.exit.thread
  %i.e = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @_PyNamespace_Type) #3
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %PyObject_TypeCheck.exit11.thread

end_hunk_1
begin_hunk_2_@namespace_new
define internal ptr @namespace_new(ptr noundef %0, ptr readnone captures(none) %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = tail call ptr %i.b(ptr noundef %0, i64 noundef 0) #3 ; 6 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.critedge, label %bb.b
end_hunk_2
begin_hunk_3_@PyObject_GC_Del
; Function Attrs: nounwind uwtable
define dso_local ptr @_PyNamespace_New(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyNamespace_Type, i64 304), align 8, !tbaa !36
  %i.b = tail call ptr %i.a(ptr noundef nonnull @_PyNamespace_Type, i64 noundef 0) #3 ; 9 uses
  %.not.i10 = icmp eq ptr %i.b, null
  br i1 %.not.i10, label %Py_DECREF.exit, label %bb.b

end_hunk_3
begin_hunk_4_@_Py_Dealloc
!33 = !{!"_PyUnicodeObject_state", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!19, !13, i64 304}
end_hunk_4
