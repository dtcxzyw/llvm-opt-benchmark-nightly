inline.NumInlined: 76
inline.NumDeleted: 42
begin_hunk_0_@call_timer:bb.a
  br label %_PyObject_CallNoArgs.exit.i

bb.c:                                             ; preds = %_PyVectorcall_FunctionInline.exit.i.i.i
  %i.q = tail call ptr %.0.copyload.i.i.i.i(ptr noundef nonnull %i.d, ptr noundef null, i64 noundef 0, ptr noundef null) #5, !inline_history !101
  %i.r = tail call ptr @_Py_CheckFunctionResult(ptr noundef %i.h, ptr noundef nonnull %i.d, ptr noundef %i.q, ptr noundef null) #5
  br label %_PyObject_CallNoArgs.exit.i

end_hunk_0
begin_hunk_1_@ptrace_enter_call:bb.a

PyObject_TypeCheck.exit.thread.i.i:               ; preds = %PyObject_TypeCheck.exit.i.i, %bb.d
  %i.o = getelementptr i8, ptr %2, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !102  ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %bb.s

bb.g:                                             ; preds = %PyObject_TypeCheck.exit.thread.i.i
  %i.r = getelementptr i8, ptr %2, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !103  ; 7 uses
  %.not53.i.i = icmp eq ptr %i.s, null
  br i1 %.not53.i.i, label %Py_DECREF.exit61.i.i, label %bb.h

end_hunk_1
begin_hunk_2_@ptrace_enter_call:bb.a
bb.m:                                             ; preds = %_Py_NewRef.exit74.i.i
  %i.ad = getelementptr i8, ptr %2, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !77
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !104
  %i.ag = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.37, ptr noundef nonnull %.041.i.i, ptr noundef %i.af) #5 ; 3 uses
  %i.ah = load i32, ptr %.041.i.i, align 8, !tbaa !14 ; 2 uses
  %.not.i62.i.i = icmp sgt i32 %i.ah, -1
end_hunk_2
begin_hunk_3_@ptrace_enter_call:bb.a
Py_DECREF.exit61.i.i:                             ; preds = %bb.r, %bb.q, %bb.p, %bb.l, %PyObject_TypeCheck.exit76.i.i, %bb.g
  %i.an = getelementptr i8, ptr %2, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !77
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !104
  %i.aq = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.38, ptr noundef %i.ap) #5
  br label %normalizeUserObj.exit.i

bb.s:                                             ; preds = %PyObject_TypeCheck.exit.thread.i.i
  %i.ar = getelementptr i8, ptr %2, i64 16        ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !77
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !104
  %i.au = tail call ptr @PyUnicode_FromString(ptr noundef %i.at) #5 ; 5 uses
  %i.av = getelementptr i8, ptr %2, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !103 ; 3 uses
  %.not48.i.i = icmp eq ptr %i.au, null
  br i1 %.not48.i.i, label %.thread.i.i, label %bb.t

end_hunk_3
begin_hunk_4_@ptrace_enter_call:bb.a

bb.ab:                                            ; preds = %bb.aa
  %i.bj = load ptr, ptr %i.ar, align 8, !tbaa !77
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !104
  %i.bl = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.39, ptr noundef nonnull %i.aw, ptr noundef %i.bk) #5
  br label %normalizeUserObj.exit.i

bb.ac:                                            ; preds = %bb.aa, %.thread.i.i
  %i.bm = load ptr, ptr %i.ar, align 8, !tbaa !77
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !104
  %i.bo = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.40, ptr noundef %i.bn) #5
  br label %normalizeUserObj.exit.i

end_hunk_4
begin_hunk_5_@ptrace_enter_call:bb.a

newProfilerEntry.exit:                            ; preds = %bb.e, %bb.f, %bb.z, %normalizeUserObj.exit.i
  %.5.i23.i = phi ptr [ %.5.i.i, %normalizeUserObj.exit.i ], [ %2, %bb.e ], [ %2, %bb.f ], [ %i.bc, %bb.z ]
  store ptr %1, ptr %i.e, align 8, !tbaa !106
  %i.bt = getelementptr i8, ptr %i.e, i64 24
  store ptr %.5.i23.i, ptr %i.bt, align 8, !tbaa !84
  %i.bu = getelementptr i8, ptr %i.e, i64 32
end_hunk_5
begin_hunk_6_@llvm.memset.p0.i64
!98 = !{!89, !18, i64 56}
!99 = !{!16, !18, i64 168}
!100 = !{!16, !18, i64 56}
!101 = distinct !{null, null, null}
!102 = !{!78, !23, i64 24}
!103 = !{!78, !23, i64 32}
!104 = !{!105, !19, i64 0}
!105 = !{!"PyMethodDef", !19, i64 0, !13, i64 8, !7, i64 16, !19, i64 24}
!106 = !{!80, !13, i64 0}
end_hunk_6
