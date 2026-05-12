inline.NumInlined: 182
inline.NumDeleted: 43
begin_hunk_0_@PyFloat_FromString:bb.a

bb.c:                                             ; preds = %bb.b
  %i.g = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #17
  br label %bb.l

bb.d:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@PyFloat_FromString:bb.a
bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 32
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val32 = load i64, ptr %i.j, align 8, !tbaa !36
  store i64 %.val32, ptr %i.a, align 8, !tbaa !37
  br label %bb.l

bb.f:                                             ; preds = %bb.d
end_hunk_1
begin_hunk_2_@PyFloat_FromString:bb.a
  %i.l = getelementptr i8, ptr %0, i64 40
  %.val33 = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.m = getelementptr i8, ptr %0, i64 16
  %.val34 = load i64, ptr %i.m, align 8, !tbaa !36
  store i64 %.val34, ptr %i.a, align 8, !tbaa !37
  br label %bb.l

bb.g:                                             ; preds = %PyObject_TypeCheck.exit
end_hunk_2
begin_hunk_3_@PyFloat_FromString:bb.a
bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %1, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !43   ; 2 uses
  store i64 %i.r, ptr %i.a, align 8, !tbaa !37
  %i.s = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.p, i64 noundef %i.r) #17 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.i, label %bb.j
end_hunk_3
begin_hunk_4_@PyFloat_FromString:bb.a
  br label %Py_XDECREF.exit

bb.l:                                             ; preds = %bb.e, %bb.j, %PyObject_TypeCheck.exit.thread, %bb.c
  %.021 = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.e ], [ %.val33, %PyObject_TypeCheck.exit.thread ], [ %i.u, %bb.j ]
  %.0 = phi ptr [ %i.e, %bb.c ], [ null, %bb.e ], [ null, %PyObject_TypeCheck.exit.thread ], [ %i.s, %bb.j ] ; 4 uses
  %2 = load i64, ptr %i.a, align 8, !tbaa !37
  %i.z = call ptr @_Py_string_to_number_with_underscores(ptr noundef %.021, i64 noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull @float_from_string_inner) #17 ; 4 uses
  call void @PyBuffer_Release(ptr noundef nonnull %1) #17
  %.not.i35 = icmp eq ptr %.0, null
end_hunk_4
begin_hunk_5_@float_new:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.h = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.val20 = load i64, ptr %i.h, align 8, !tbaa !36 ; 3 uses
  %or.cond21 = icmp ult i64 %.val20, 2
  br i1 %or.cond21, label %bb.g, label %bb.f

end_hunk_5
begin_hunk_6_@float_new:bb.a
  br i1 %.not17, label %bb.j, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.f
  %.val.pr = load i64, ptr %i.h, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %thread-pre-split
end_hunk_6
begin_hunk_7_@float_fromhex:bb.a
  br i1 %i.d, label %float_fromhex_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
end_hunk_7
begin_hunk_8_@float___getformat__:bb.a

bb.d:                                             ; preds = %bb.c
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #18
  %i.h = load i64, ptr %i.a, align 8, !tbaa !37
  %.not9 = icmp eq i64 %i.g, %i.h
  br i1 %.not9, label %bb.f, label %bb.e

end_hunk_8
begin_hunk_9_@llvm.bswap.i32
!33 = !{!"p1 _ZTS11PyGetSetDef", !13, i64 0}
!34 = !{!"p1 _ZTS7_object", !13, i64 0}
!35 = !{!"short", !9, i64 0}
!36 = !{!29, !16, i64 16}
!37 = !{!16, !16, i64 0}
!38 = !{!39, !30, i64 40}
!39 = !{!"", !29, i64 0, !16, i64 24, !30, i64 32, !30, i64 40, !16, i64 48, !34, i64 56}
!40 = !{!41, !13, i64 0}
end_hunk_9
