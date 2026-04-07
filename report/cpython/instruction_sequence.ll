inline.NumInlined: 24
inline.NumDeleted: 13
begin_hunk_0_@PyInstructionSequence_Fini:bb.a
; Function Attrs: nounwind uwtable
define dso_local ptr @_PyInstructionSequence_New() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @_PyObject_GC_New(ptr noundef nonnull @_PyInstructionSequence_Type) #8, !inline_history !48 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %inst_seq_create.exit, label %bb.b

end_hunk_0
begin_hunk_1_@_PyInstructionSequence_New:bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.c, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.a) #8, !inline_history !48
  br label %inst_seq_create.exit

inst_seq_create.exit:                             ; preds = %bb.a, %bb.b
end_hunk_1
begin_hunk_2_@inst_seq_clear
define internal noundef i32 @inst_seq_clear(ptr noundef captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit14, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !49
  %i.c = load i32, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %.not.i13 = icmp sgt i32 %i.c, -1
  br i1 %.not.i13, label %bb.c, label %Py_DECREF.exit14
end_hunk_2
begin_hunk_3_@inst_seq_new:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 2 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyInstructionSequence_Type, i64 296), align 8, !tbaa !50 ; 2 uses
  %i.e = icmp ne ptr %i.c, %i.d
  %i.f = icmp eq ptr %1, null
  %or.cond = or i1 %i.f, %i.e
end_hunk_3
begin_hunk_4_@inst_seq_new:bb.a
  br i1 %.not22, label %inst_seq_new_impl.exit, label %.thread21..thread20_crit_edge

.thread21..thread20_crit_edge:                    ; preds = %.thread21
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !50
  %.pre24 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyInstructionSequence_Type, i64 296), align 8, !tbaa !50
  br label %.thread20

.thread20:                                        ; preds = %.thread21..thread20_crit_edge, %bb.b
end_hunk_4
begin_hunk_5_@inst_seq_new:bb.a
  br i1 %.not19, label %inst_seq_new_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread, %.thread20
  %i.n = tail call ptr @_PyObject_GC_New(ptr noundef nonnull @_PyInstructionSequence_Type) #8, !inline_history !58 ; 7 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %inst_seq_new_impl.exit, label %bb.g

end_hunk_5
begin_hunk_6_@inst_seq_new:bb.a
  %i.s = getelementptr i8, ptr %i.n, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.p, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.n) #8, !inline_history !58
  br label %inst_seq_new_impl.exit

inst_seq_new_impl.exit:                           ; preds = %bb.g, %bb.f, %.thread21, %bb.e, %bb.d
end_hunk_6
begin_hunk_7_@InstructionSequenceType_addop:bb.a

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]   ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.h = call i32 @PyLong_AsInt(ptr noundef %i.g) #8 ; 3 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %bb.d
end_hunk_7
begin_hunk_8_@InstructionSequenceType_addop:bb.a

bb.d:                                             ; preds = %bb.c, %.thread
  %i.k = getelementptr i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.m = call i32 @PyLong_AsInt(ptr noundef %i.l) #8 ; 3 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.e, label %bb.f
end_hunk_8
begin_hunk_9_@InstructionSequenceType_addop:bb.a

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = getelementptr i8, ptr %i.f, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49
  %i.r = call i32 @PyLong_AsInt(ptr noundef %i.q) #8 ; 3 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.g, label %bb.h
end_hunk_9
begin_hunk_10_@InstructionSequenceType_addop:bb.a

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr i8, ptr %i.f, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !49
  %i.w = call i32 @PyLong_AsInt(ptr noundef %i.v) #8 ; 3 uses
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.i, label %bb.j
end_hunk_10
begin_hunk_11_@InstructionSequenceType_addop:bb.a

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = getelementptr i8, ptr %i.f, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49
  %i.ab = call i32 @PyLong_AsInt(ptr noundef %i.aa) #8 ; 3 uses
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %bb.k, label %bb.l
end_hunk_11
begin_hunk_12_@InstructionSequenceType_addop:bb.a

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ae = getelementptr i8, ptr %i.f, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !49
  %i.ag = call i32 @PyLong_AsInt(ptr noundef %i.af) #8 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.m, label %.split
end_hunk_12
begin_hunk_13_@InstructionSequenceType_use_label:bb.a

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.h = call i32 @PyLong_AsInt(ptr noundef %i.g) #8 ; 3 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.d, label %.split
end_hunk_13
begin_hunk_14_@InstructionSequenceType_add_nested:bb.a

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val5.i = load ptr, ptr %i.h, align 8, !tbaa !59 ; 2 uses
  %.not.i = icmp eq ptr %.val5.i, @_PyInstructionSequence_Type
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !49
  %i.j = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.16, ptr noundef %.val5.i) #8, !inline_history !60 ; 0 uses
  br label %InstructionSequenceType_add_nested_impl.exit

bb.d:                                             ; preds = %.thread
end_hunk_14
begin_hunk_15_@InstructionSequenceType_add_nested:bb.a
  br i1 %i.m, label %bb.e, label %_PyInstructionSequence_AddNested.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = call ptr @PyList_New(i64 noundef 0) #8, !inline_history !60 ; 3 uses
  store ptr %i.n, ptr %i.k, align 8, !tbaa !45
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_PyInstructionSequence_AddNested.exit.thread.i, label %_PyInstructionSequence_AddNested.exit.i

_PyInstructionSequence_AddNested.exit.i:          ; preds = %bb.e, %bb.d
  %i.p = phi ptr [ %i.n, %bb.e ], [ %i.l, %bb.d ]
  %i.q = call i32 @PyList_Append(ptr noundef nonnull %i.p, ptr noundef nonnull %i.g) #8, !inline_history !60
  %.fr.i = freeze i32 %i.q
  %i.r = icmp slt i32 %.fr.i, 0
  br i1 %i.r, label %_PyInstructionSequence_AddNested.exit.thread.i, label %InstructionSequenceType_add_nested_impl.exit
end_hunk_15
begin_hunk_16_@InstructionSequenceType_get_instructions:bb.a
  %i.aj = load i32, ptr %i.af, align 4, !tbaa !27
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next.i, %i.ak
  br i1 %i.al, label %bb.h, label %InstructionSequenceType_get_instructions_impl.exit, !llvm.loop !61

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
end_hunk_16
begin_hunk_17_@_PyArg_NoKeywords
!45 = !{!12, !17, i64 56}
!46 = !{!9, !9, i64 0}
!47 = !{!18, !18, i64 0}
!48 = distinct !{null}
!49 = !{!17, !17, i64 0}
!50 = !{!51, !15, i64 296}
!51 = !{!"_typeobject", !52, i64 0, !53, i64 24, !23, i64 32, !23, i64 40, !15, i64 48, !23, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !23, i64 168, !53, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !23, i64 208, !15, i64 216, !15, i64 224, !54, i64 232, !55, i64 240, !56, i64 248, !14, i64 256, !17, i64 264, !15, i64 272, !15, i64 280, !23, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !17, i64 336, !17, i64 344, !17, i64 352, !15, i64 360, !17, i64 368, !15, i64 376, !8, i64 384, !15, i64 392, !15, i64 400, !9, i64 408, !57, i64 410}
!52 = !{!"PyVarObject", !13, i64 0, !23, i64 16}
!53 = !{!"p1 omnipotent char", !15, i64 0}
!54 = !{!"p1 _ZTS11PyMethodDef", !15, i64 0}
!55 = !{!"p1 _ZTS11PyMemberDef", !15, i64 0}
!56 = !{!"p1 _ZTS11PyGetSetDef", !15, i64 0}
!57 = !{!"short", !9, i64 0}
!58 = distinct !{null, null}
!59 = !{!13, !14, i64 8}
!60 = distinct !{null}
!61 = distinct !{!61, !29}
end_hunk_17
