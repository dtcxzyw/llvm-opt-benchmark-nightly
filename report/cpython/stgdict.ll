inline.NumInlined: 62
inline.NumDeleted: 19
begin_hunk_0_@MakeFields:bb.a
  %i.t = getelementptr i8, ptr %i.h, i64 24
  %i.u = getelementptr i8, ptr %i.h, i64 32
  %i.v = getelementptr i8, ptr %i.q, i64 304
  br label %bb.f

bb.f:                                             ; preds = %bb.aq, %bb.e
end_hunk_0
begin_hunk_1_@MakeFields:bb.a
bb.k:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.ah = call ptr @PyObject_GetAttr(ptr noundef %i.af, ptr noundef %i.ag) #8 ; 26 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.l, label %bb.n

end_hunk_1
begin_hunk_2_@MakeFields:bb.a

bb.y:                                             ; preds = %bb.s
  %i.bl = load ptr, ptr %i.v, align 8, !tbaa !94
  %i.bm = call ptr %i.bl(ptr noundef %i.q, i64 noundef 0) #8 ; 17 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.z, label %bb.ad

end_hunk_2
begin_hunk_3_@MakeFields:bb.a
  br i1 %i.bt, label %Py_DECREF.exit104.thread.sink.split, label %Py_DECREF.exit104.thread

bb.ad:                                            ; preds = %bb.y
  %4 = getelementptr i8, ptr %i.ah, i64 24
  %5 = load i64, ptr %4, align 8, !tbaa !95
  %6 = getelementptr i8, ptr %i.bm, i64 24
  store i64 %5, ptr %6, align 8, !tbaa !95
  %i.bu = getelementptr i8, ptr %i.ah, i64 16
  %7 = load i64, ptr %i.bu, align 8, !tbaa !83
  %8 = add i64 %7, %3
  %9 = getelementptr i8, ptr %i.bm, i64 16
  store i64 %8, ptr %9, align 8, !tbaa !83
  %i.bv = getelementptr i8, ptr %i.ah, i64 65
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !96
  %i.bx = getelementptr i8, ptr %i.bm, i64 65
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !96
  %i.by = getelementptr i8, ptr %i.ah, i64 66
  %i.bz = load i8, ptr %i.by, align 2, !tbaa !97
  %i.ca = getelementptr i8, ptr %i.bm, i64 66
  store i8 %i.bz, ptr %i.ca, align 2, !tbaa !97
  %i.cb = getelementptr i8, ptr %i.ah, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !54
  %i.cd = add i64 %i.cc, %2
end_hunk_3
begin_hunk_4_@MakeFields:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.dp = add nuw nsw i64 %.071, 1
  br label %bb.f, !llvm.loop !98

bb.ar:                                            ; preds = %.thread, %bb.g
  %i.dq = load i32, ptr %i.h, align 8, !tbaa !22  ; 2 uses
end_hunk_4
begin_hunk_5_@PyArg_ParseTuple
!92 = !{!"p1 _ZTS15_dictkeysobject", !17, i64 0}
!93 = !{!"_specialization_cache", !18, i64 0, !7, i64 8, !18, i64 16}
!94 = !{!45, !17, i64 304}
!95 = !{!55, !12, i64 24}
!96 = !{!55, !8, i64 65}
!97 = !{!55, !8, i64 66}
!98 = distinct !{!98, !64}
end_hunk_5
