inline.NumInlined: 169
inline.NumDeleted: 61
begin_hunk_0_@create_stdio:bb.a
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %6 = icmp eq i32 %.224.val, 0                   ; 3 uses
  %7 = trunc nuw i32 %2 to i1                     ; 3 uses
  %or.cond = and i1 %6, %7                        ; 2 uses
  %not.or.cond = xor i1 %or.cond, true
  %. = sext i1 %not.or.cond to i32
  %.070 = select i1 %7, ptr @.str.190, ptr @.str.191
  %i.c = tail call ptr (ptr, ptr, ptr, ...) @_PyObject_CallMethod(ptr noundef nonnull %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 94264), ptr noundef nonnull @.str.192, i32 noundef %1, ptr noundef nonnull %.070, i32 noundef %., ptr noundef nonnull @_Py_NoneStruct, ptr noundef nonnull @_Py_NoneStruct, ptr noundef nonnull @_Py_NoneStruct, ptr noundef nonnull @_Py_FalseStruct) #24 ; 19 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_XDECREF.exit164, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @PyObject_GetAttr(ptr noundef nonnull %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 96752)) #24 ; 2 uses
end_hunk_0
begin_hunk_1_@create_stdio:bb.a
  br i1 %i.t, label %Py_DECREF.exit139, label %bb.l

bb.l:                                             ; preds = %Py_DECREF.exit145
  %_Py_TrueStruct._Py_FalseStruct = select i1 %6, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br i1 %6, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not123 = icmp eq i32 %i.p, 0
end_hunk_1
begin_hunk_2_@create_stdio:bb.a
  br i1 %i.ba, label %Py_XDECREF.exit164, label %bb.ai

bb.ai:                                            ; preds = %Py_DECREF.exit129
  %.str.194..str.195 = select i1 %7, ptr @.str.194, ptr @.str.195
  %i.bb = call ptr @PyUnicode_FromString(ptr noundef nonnull %.str.194..str.195) #24 ; 8 uses
  %.not125 = icmp eq ptr %i.bb, null
  br i1 %.not125, label %Py_XDECREF.exit, label %bb.aj
end_hunk_2
