inline.NumInlined: 35
inline.NumDeleted: 18
begin_hunk_0_@_CallPythonObject:bb.a
  br label %_PyObject_CallNoArgs.exit

bb.j:                                             ; preds = %_PyVectorcall_FunctionInline.exit.i.i
  %i.am = tail call ptr %.0.copyload.i.i.i(ptr noundef nonnull %i.p, ptr noundef null, i64 noundef 0, ptr noundef null) #6, !inline_history !70
  %i.an = tail call ptr @_Py_CheckFunctionResult(ptr noundef %i.ad, ptr noundef nonnull %i.p, ptr noundef %i.am, ptr noundef null) #6
  br label %_PyObject_CallNoArgs.exit

end_hunk_0
begin_hunk_1_@_CallPythonObject:bb.a
  br i1 %.not93, label %.thread, label %bb.k

bb.k:                                             ; preds = %_PyObject_CallNoArgs.exit
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !71  ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.i.i, i64 8
  %.val104 = load ptr, ptr %i.ap, align 8, !tbaa !27 ; 2 uses
  %.not.i105 = icmp eq ptr %.val104, %i.ao
end_hunk_1
begin_hunk_2_@_CallPythonObject:bb.a

Py_DECREF.exit99:                                 ; preds = %bb.k, %PyObject_TypeCheck.exit
  %i.aw = getelementptr i8, ptr %.0.i.i, i64 16
  %i.ax = load ptr, ptr %i.aw, align 16, !tbaa !72
  %i.ay = load ptr, ptr %.0141, align 8, !tbaa !67
  %i.az = getelementptr i8, ptr %i.t, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !68
end_hunk_2
begin_hunk_3_@_CallPythonObject:bb.a
  %i.be = getelementptr i8, ptr %.0141, i64 8
  %i.bf = add nuw nsw i64 %.071139, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %.val
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !75

._crit_edge:                                      ; preds = %bb.p, %bb.d
  %.071.lcssa = phi i64 [ 0, %bb.d ], [ %.val, %bb.p ] ; 5 uses
end_hunk_3
begin_hunk_4_@_CallPythonObject:bb.a
  br i1 %.not85, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !6
  %i.bm = tail call ptr @__errno_location() #7    ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !6
end_hunk_4
begin_hunk_5_@_CallPythonObject:bb.a
  br i1 %.not86, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !6
  %i.bt = tail call ptr @__errno_location() #7    ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !6
end_hunk_5
begin_hunk_6_@_CallPythonObject:bb.a
  br i1 %or.cond, label %bb.ac, label %Py_DECREF.exit97

bb.ac:                                            ; preds = %Py_XDECREF.exit
  %i.ca = load i64, ptr %2, align 8, !tbaa !78
  %i.cb = call ptr %3(ptr noundef %1, ptr noundef nonnull %i.bo, i64 noundef %i.ca) #6 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.ad, label %bb.ae
end_hunk_6
begin_hunk_7_@_CallPythonObject:bb.a
bb.ae:                                            ; preds = %bb.ac
  %i.cd = call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.11) #6
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !79
  %.not87 = icmp eq ptr %3, %i.cf
  br i1 %.not87, label %Py_DECREF.exit97.thread, label %bb.af

end_hunk_7
begin_hunk_8_@_CallPythonObject:bb.a
Py_DECREF.exit:                                   ; preds = %.lr.ph143, %bb.an, %bb.ao
  %i.cv = add nuw i64 %.072142, 1                 ; 2 uses
  %exitcond154.not = icmp eq i64 %i.cv, %.071136
  br i1 %exitcond154.not, label %._crit_edge144, label %.lr.ph143, !llvm.loop !81

.thread:                                          ; preds = %_PyObject_CallNoArgs.exit, %bb.h, %bb.n, %bb.m, %bb.l, %bb.o
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.13, i64 noundef %.071139, ptr noundef %4) #6
end_hunk_8
begin_hunk_9_@PyType_IsSubtype
!67 = !{!14, !14, i64 0}
!68 = !{!46, !15, i64 8}
!69 = !{!29, !15, i64 56}
!70 = distinct !{null, null}
!71 = !{!17, !13, i64 96}
!72 = !{!73, !30, i64 16}
!73 = !{!"tagCDataObject", !12, i64 0, !30, i64 16, !7, i64 24, !74, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !18, i64 64, !8, i64 80}
!74 = !{!"p1 _ZTS14tagCDataObject", !14, i64 0}
!75 = distinct !{!75, !40}
!76 = !{!77, !77, i64 0}
!77 = !{!"p1 int", !14, i64 0}
!78 = !{!47, !15, i64 0}
!79 = !{!80, !14, i64 16}
!80 = !{!"fielddesc", !8, i64 0, !20, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40}
!81 = distinct !{!81, !40}
end_hunk_9
