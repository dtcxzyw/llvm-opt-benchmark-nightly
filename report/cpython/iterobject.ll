inline.NumInlined: 38
inline.NumDeleted: 17
begin_hunk_0_@calliter_iternext:bb.a
  br label %_PyObject_CallNoArgs.exit

bb.c:                                             ; preds = %_PyVectorcall_FunctionInline.exit.i.i
  %i.n = tail call ptr %.0.copyload.i.i.i(ptr noundef nonnull %i.b, ptr noundef null, i64 noundef 0, ptr noundef null) #4, !inline_history !48
  %i.o = tail call ptr @_Py_CheckFunctionResult(ptr noundef %i.e, ptr noundef nonnull %i.b, ptr noundef %i.n, ptr noundef null) #4
  br label %_PyObject_CallNoArgs.exit

end_hunk_0
begin_hunk_1_@anextawaitable_iternext:bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr i8, ptr %.val, i64 224
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = tail call ptr %i.e(ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.g = load i32, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp sgt i32 %i.g, -1
end_hunk_1
begin_hunk_2_@anextawaitable_getiter:bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val28 = load ptr, ptr %i.e, align 8, !tbaa !38 ; 2 uses
  %i.f = getelementptr i8, ptr %.val28, i64 224
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %Py_DECREF.exit25

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val28, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.l = tail call ptr %i.k(ptr noundef nonnull %i.c) #4 ; 7 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = load i32, ptr %i.c, align 8, !tbaa !18   ; 3 uses
end_hunk_2
begin_hunk_3_@llvm.smax.i64
!45 = !{!"p1 _ZTS11PyGetSetDef", !15, i64 0}
!46 = !{!"short", !9, i64 0}
!47 = !{!40, !16, i64 56}
!48 = distinct !{null, null}
!49 = !{!40, !15, i64 224}
!50 = !{!40, !15, i64 80}
!51 = !{!52, !15, i64 0}
!52 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
end_hunk_3
