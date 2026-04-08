inline.NumInlined: 454
inline.NumDeleted: 130
begin_hunk_0_@depr_star_new:bb.a
.thread:                                          ; preds = %bb.o, %bb.m
  %i.u = getelementptr i8, ptr %0, i64 304
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !64
  %i.w = call ptr %i.v(ptr noundef %0, i64 noundef 0) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.i, %.thread
end_hunk_0
begin_hunk_1_@depr_kwd_new:bb.a

PyDict_GET_SIZE.exit56:                           ; preds = %bb.m, %PyObject_TypeCheck.exit.i54
  %i.t = getelementptr i8, ptr %2, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !65
  %i.v = icmp ne i64 %i.u, 0
  %i.w = icmp slt i64 %i.f, 1
  %or.cond5 = select i1 %i.v, i1 %i.w, i1 false
end_hunk_1
begin_hunk_2_@depr_kwd_new:bb.a
.thread60:                                        ; preds = %bb.i, %bb.l, %PyDict_GET_SIZE.exit56, %bb.o, %bb.p
  %i.aa = getelementptr i8, ptr %0, i64 304
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !64
  %i.ac = call ptr %i.ab(ptr noundef %0, i64 noundef 0) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k, %.thread60
end_hunk_2
begin_hunk_3_@depr_kwd_init:bb.a

PyDict_GET_SIZE.exit56:                           ; preds = %bb.m, %PyObject_TypeCheck.exit.i54
  %i.t = getelementptr i8, ptr %2, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !65
  %i.v = icmp ne i64 %i.u, 0
  %i.w = icmp slt i64 %i.f, 1
  %or.cond5 = select i1 %i.v, i1 %i.w, i1 false
end_hunk_3
begin_hunk_4_@depr_kwd_init_noinline:bb.a

PyDict_GET_SIZE.exit:                             ; preds = %bb.h, %PyObject_TypeCheck.exit.i
  %i.p = getelementptr i8, ptr %2, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !65
  %.not12 = icmp eq i64 %i.q, 0
  br i1 %.not12, label %bb.o, label %bb.j

end_hunk_4
begin_hunk_5_@llvm.smax.i64
!62 = !{!60, !12, i64 8}
!63 = distinct !{!63, !30}
!64 = !{!18, !13, i64 304}
!65 = !{!66, !20, i64 16}
!66 = !{!"", !15, i64 0, !20, i64 16, !20, i64 24, !67, i64 32, !68, i64 40}
!67 = !{!"p1 _ZTS15_dictkeysobject", !13, i64 0}
!68 = !{!"p1 _ZTS11_dictvalues", !13, i64 0}
end_hunk_5
