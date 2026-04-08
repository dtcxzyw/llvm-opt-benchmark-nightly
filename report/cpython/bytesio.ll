inline.NumInlined: 121
inline.NumDeleted: 49
begin_hunk_0_@_io_BytesIO_getbuffer:bb.a
  %.val8.val.val = load ptr, ptr %i.h, align 8, !tbaa !72 ; 2 uses
  %i.i = getelementptr i8, ptr %.val8.val.val, i64 304
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.k = tail call ptr %i.j(ptr noundef %.val8.val.val, i64 noundef 0) #11, !inline_history !74 ; 6 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_io_BytesIO_getbuffer_impl.exit, label %bb.g

end_hunk_0
begin_hunk_1_@_io_BytesIO_getbuffer:bb.a

_Py_NewRef.exit.i:                                ; preds = %bb.h, %bb.g
  %i.p = getelementptr i8, ptr %i.k, i64 16
  store ptr %0, ptr %i.p, align 8, !tbaa !75
  %i.q = tail call ptr @PyMemoryView_FromObject(ptr noundef nonnull %i.k) #11 ; 3 uses
  %i.r = load i32, ptr %i.k, align 8, !tbaa !30   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.r, -1
end_hunk_1
begin_hunk_2_@bytesio_sizeof:bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.b, align 8, !tbaa !41 ; 3 uses
  %i.c = getelementptr i8, ptr %.val, i64 32
  %.val.val = load i64, ptr %i.c, align 8, !tbaa !77 ; 3 uses
  %.not.i = icmp eq ptr %.val2, null
  br i1 %.not.i, label %bb.d, label %bb.b

end_hunk_2
begin_hunk_3_@bytesiobuf_dealloc:bb.a
  %.val = load ptr, ptr %i.a, align 8, !tbaa !11  ; 4 uses
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #11
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78   ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %Py_DECREF.exit12, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !78
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %.not.i11 = icmp sgt i32 %i.d, -1
  br i1 %.not.i11, label %bb.c, label %Py_DECREF.exit12
end_hunk_3
begin_hunk_4_@bytesiobuf_traverse:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75   ; 2 uses
  %.not20 = icmp eq ptr %i.d, null
  br i1 %.not20, label %bb.e, label %bb.d

end_hunk_4
begin_hunk_5_@bytesiobuf_getbuffer:bb.a

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75   ; 5 uses
  %i.e = getelementptr i8, ptr %i.d, i64 56       ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27
  %i.g = icmp eq i64 %i.f, 0
end_hunk_5
begin_hunk_6_@bytesiobuf_releasebuffer
define internal void @bytesiobuf_releasebuffer(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = getelementptr i8, ptr %i.b, i64 56       ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27
  %i.e = add i64 %i.d, -1
end_hunk_6
begin_hunk_7_@llvm.smin.i64
!71 = !{!"_Bool", !9, i64 0}
!72 = !{!73, !13, i64 80}
!73 = !{!"_io_state", !8, i64 0, !25, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120}
!74 = distinct !{null}
!75 = !{!76, !14, i64 16}
!76 = !{!"", !12, i64 0, !14, i64 16}
!77 = !{!33, !17, i64 32}
!78 = !{!14, !14, i64 0}
end_hunk_7
