begin_hunk_0_@sys_profile_start:bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.o = getelementptr i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !113
  %i.q = tail call i32 %i.l(ptr noundef %i.n, ptr noundef nonnull %i.f, i32 noundef %i.p, ptr noundef nonnull @_Py_NoneStruct) #4
  %i.r = load i32, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i, label %bb.f, label %Py_DECREF.exit.i
end_hunk_0
begin_hunk_1_@sys_profile_throw:bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.o = getelementptr i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !113
  %i.q = tail call i32 %i.l(ptr noundef %i.n, ptr noundef nonnull %i.f, i32 noundef %i.p, ptr noundef nonnull @_Py_NoneStruct) #4
  %i.r = load i32, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i, label %bb.f, label %Py_DECREF.exit.i
end_hunk_1
begin_hunk_2_@sys_profile_return:bb.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.q = getelementptr i8, ptr %0, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !113
  %i.s = tail call i32 %i.n(ptr noundef %i.p, ptr noundef nonnull %i.h, i32 noundef %i.r, ptr noundef %i.b) #4
  %i.t = load i32, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i.i, label %bb.f, label %Py_DECREF.exit.i
end_hunk_2
begin_hunk_3_@sys_profile_unwind:bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.o = getelementptr i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !113
  %i.q = tail call i32 %i.l(ptr noundef %i.n, ptr noundef nonnull %i.f, i32 noundef %i.p, ptr noundef null) #4
  %i.r = load i32, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i, label %bb.f, label %Py_DECREF.exit.i
end_hunk_3
begin_hunk_4_@sys_profile_call_or_return:bb.a
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  %.val22 = load ptr, ptr %i.c, align 8, !tbaa !127 ; 2 uses
  %.not.i23 = icmp eq ptr %.val22, @PyCFunction_Type
  br i1 %.not.i23, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

end_hunk_4
begin_hunk_5_@sys_profile_call_or_return:bb.a
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35
  %i.s = getelementptr i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !113
  %i.u = tail call i32 %i.p(ptr noundef %i.r, ptr noundef nonnull %i.j, i32 noundef %i.t, ptr noundef nonnull %i.b) #4
  %i.v = load i32, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %.not.i.i, label %bb.f, label %Py_DECREF.exit.i
end_hunk_5
begin_hunk_6_@sys_profile_call_or_return:bb.a
  br label %call_profile_func.exit

bb.h:                                             ; preds = %PyObject_TypeCheck.exit
  %.val21 = load ptr, ptr %i.c, align 8, !tbaa !127
  %i.y = icmp eq ptr %.val21, @PyMethodDescr_Type
  br i1 %i.y, label %bb.i, label %call_profile_func.exit

end_hunk_6
begin_hunk_7_@sys_profile_call_or_return:bb.a
  br i1 %i.ab, label %call_profile_func.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyMethodDescr_Type, i64 272), align 8, !tbaa !128
  %i.ad = getelementptr i8, ptr %i.aa, i64 8
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !127
  %i.ae = tail call ptr %i.ac(ptr noundef nonnull %i.b, ptr noundef %i.aa, ptr noundef %.val) #4 ; 5 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %call_profile_func.exit, label %bb.k
end_hunk_7
begin_hunk_8_@sys_profile_call_or_return:bb.a
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !35
  %i.au = getelementptr i8, ptr %0, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !113
  %i.aw = tail call i32 %i.ar(ptr noundef %i.at, ptr noundef nonnull %i.al, i32 noundef %i.av, ptr noundef nonnull %i.ae) #4
  %i.ax = load i32, ptr %i.al, align 8, !tbaa !36 ; 2 uses
  %.not.i.i26 = icmp sgt i32 %i.ax, -1
  br i1 %.not.i.i26, label %bb.p, label %Py_DECREF.exit.i27
end_hunk_8
begin_hunk_9_@sys_trace_exception_func:bb.a
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !127
  %i.d = tail call ptr @PyException_GetTraceback(ptr noundef %i.b) #4 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_Py_NewRef.exit
end_hunk_9
begin_hunk_10_@sys_trace_line_func:bb.a

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.i, i64 44
  %i.m = load i8, ptr %i.l, align 4, !tbaa !134
  %.not.i = icmp eq i8 %i.m, 0
  %i.n = icmp slt i32 %i.h, 0
  %or.cond.i = or i1 %i.n, %.not.i
end_hunk_10
begin_hunk_11_@sys_trace_line_func:bb.a

Py_INCREF.exit.i:                                 ; preds = %bb.f, %bb.e
  %i.r = getelementptr i8, ptr %i.i, i64 40       ; 2 uses
  store i32 %i.h, ptr %i.r, align 8, !tbaa !135
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.t = getelementptr i8, ptr %i.b, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !119
  %i.v = getelementptr i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !113
  %i.x = tail call i32 %i.s(ptr noundef %i.u, ptr noundef nonnull %i.i, i32 noundef %i.w, ptr noundef nonnull @_Py_NoneStruct) #4
  store i32 0, ptr %i.r, align 8, !tbaa !135
  %i.y = load i32, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.y, -1
  br i1 %.not.i.i, label %bb.g, label %Py_DECREF.exit.i
end_hunk_11
begin_hunk_12_@sys_trace_jump_func:bb.a

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %i.r, i64 44
  %i.v = load i8, ptr %i.u, align 4, !tbaa !134
  %.not23 = icmp eq i8 %i.v, 0
  %i.w = icmp slt i32 %i.p, 0
  %or.cond = select i1 %.not23, i1 true, i1 %i.w
end_hunk_12
begin_hunk_13_@sys_trace_jump_func:bb.a

Py_INCREF.exit.i:                                 ; preds = %bb.h, %bb.g
  %i.aa = getelementptr i8, ptr %i.r, i64 40      ; 2 uses
  store i32 %i.p, ptr %i.aa, align 8, !tbaa !135
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.ac = getelementptr i8, ptr %i.b, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !119
  %i.ae = getelementptr i8, ptr %0, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !113
  %i.ag = tail call i32 %i.ab(ptr noundef %i.ad, ptr noundef nonnull %i.r, i32 noundef %i.af, ptr noundef nonnull @_Py_NoneStruct) #4
  store i32 0, ptr %i.aa, align 8, !tbaa !135
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !36  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ah, -1
  br i1 %.not.i.i, label %bb.i, label %Py_DECREF.exit.i
end_hunk_13
begin_hunk_14_@sys_trace_instruction_func:bb.a
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !113
  %i.ae = tail call i32 %i.z(ptr noundef %i.ab, ptr noundef nonnull %i.b, i32 noundef %i.ad, ptr noundef nonnull @_Py_NoneStruct) #4
  %i.af = getelementptr i8, ptr %i.b, i64 40
  store i32 0, ptr %i.af, align 8, !tbaa !135
  %i.ag = load i32, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %.not.i = icmp sgt i32 %i.ag, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit
end_hunk_14
begin_hunk_15_@call_trace_func:bb.a
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !113
  %i.af = call i32 %i.aa(ptr noundef %i.ac, ptr noundef nonnull %i.g, i32 noundef %i.ae, ptr noundef %1) #4
  %i.ag = getelementptr i8, ptr %i.g, i64 40
  store i32 0, ptr %i.ag, align 8, !tbaa !135
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !36  ; 2 uses
  %.not.i = icmp sgt i32 %i.ah, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit
end_hunk_15
begin_hunk_16_@_Py_Instrumentation_GetLine
!124 = distinct !{!124, !116}
!125 = distinct !{!125, !116}
!126 = distinct !{!126, !116}
!127 = !{!13, !14, i64 8}
!128 = !{!129, !15, i64 272}
!129 = !{!"_typeobject", !130, i64 0, !81, i64 24, !25, i64 32, !25, i64 40, !15, i64 48, !25, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !25, i64 168, !81, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !25, i64 208, !15, i64 216, !15, i64 224, !131, i64 232, !132, i64 240, !133, i64 248, !14, i64 256, !18, i64 264, !15, i64 272, !15, i64 280, !25, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !18, i64 336, !18, i64 344, !18, i64 352, !15, i64 360, !18, i64 368, !15, i64 376, !8, i64 384, !15, i64 392, !15, i64 400, !9, i64 408, !99, i64 410}
!130 = !{!"PyVarObject", !13, i64 0, !25, i64 16}
!131 = !{!"p1 _ZTS11PyMethodDef", !15, i64 0}
!132 = !{!"p1 _ZTS11PyMemberDef", !15, i64 0}
!133 = !{!"p1 _ZTS11PyGetSetDef", !15, i64 0}
!134 = !{!12, !9, i64 44}
!135 = !{!12, !8, i64 40}
end_hunk_16
