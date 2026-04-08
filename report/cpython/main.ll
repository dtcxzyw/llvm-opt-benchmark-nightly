inline.NumInlined: 64
inline.NumDeleted: 26
begin_hunk_0_@pymain_run_interactive_hook:bb.a
  br label %_PyObject_CallNoArgs.exit

bb.h:                                             ; preds = %_PyVectorcall_FunctionInline.exit.i.i
  %i.w = call ptr %.0.copyload.i.i.i(ptr noundef nonnull %i.i, ptr noundef null, i64 noundef 0, ptr noundef null) #14
  %i.x = call ptr @_Py_CheckFunctionResult(ptr noundef %i.n, ptr noundef nonnull %i.i, ptr noundef %i.w, ptr noundef null) #14
  br label %_PyObject_CallNoArgs.exit

end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!228 = !{!"p1 _ZTS11PyMemberDef", !36, i64 0}
!229 = !{!"p1 _ZTS11PyGetSetDef", !36, i64 0}
!230 = !{!226, !14, i64 56}
end_hunk_1
