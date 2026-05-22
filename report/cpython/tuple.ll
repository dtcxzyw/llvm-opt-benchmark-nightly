inline.NumInlined: 11
inline.NumDeleted: 5
begin_hunk_0_@tuple_pack:bb.a
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %.not4 = icmp eq ptr %i.e, null
  br i1 %.not4, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %i.e, @_Py_NoneStruct
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi ptr [ null, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !14   ; 3 uses
  %.not5 = icmp eq ptr %i.h, null
  br i1 %.not5, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp eq ptr %i.h, @_Py_NoneStruct
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.b, align 8, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.j = phi ptr [ null, %bb.g ], [ %i.h, %bb.f ]
  %i.k = load i64, ptr %i.c, align 8, !tbaa !16
  %i.l = call ptr (i64, ...) @PyTuple_Pack(i64 noundef %i.k, ptr noundef %i.g, ptr noundef %i.j) #4
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.m = load i64, ptr %i.c, align 8, !tbaa !16
  %i.n = call ptr (i64, ...) @PyTuple_Pack(i64 noundef %i.m, ptr noundef %i.g) #4
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.c, align 8, !tbaa !16
  %i.p = call ptr (i64, ...) @PyTuple_Pack(i64 noundef %i.o) #4
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j, %bb.i, %bb.h
  %.0 = phi ptr [ %i.l, %bb.h ], [ %i.n, %bb.i ], [ %i.p, %bb.j ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @tuple_size(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %1, @_Py_NoneStruct
  %spec.store.select = select i1 %i.a, ptr null, ptr %1
  %i.b = tail call i64 @PyTuple_Size(ptr noundef %spec.store.select) #4 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  %i.d = tail call ptr @PyErr_Occurred() #4
  %.not5 = icmp eq ptr %i.d, null                 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not5, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 49, ptr noundef nonnull @__PRETTY_FUNCTION__.tuple_size) #5
  unreachable

bb.d:                                             ; preds = %bb.a
  br i1 %.not5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef 49, ptr noundef nonnull @__PRETTY_FUNCTION__.tuple_size) #5
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.e = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.b) #4
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  %.0 = phi ptr [ %i.e, %bb.f ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @tuple_getitem(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.c = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_Py_XNewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.e = icmp eq ptr %i.d, @_Py_NoneStruct
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ null, %bb.c ], [ %i.d, %bb.b ]
  %i.g = load i64, ptr %i.b, align 8, !tbaa !16
  %i.h = call ptr @PyTuple_GetItem(ptr noundef %i.f, i64 noundef %i.g) #4 ; 5 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_Py_XNewRef.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.j = icmp ugt i32 %i.i, -1073741825
  br i1 %i.j, label %_Py_XNewRef.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = add nuw i32 %i.i, 1
  store i32 %i.k, ptr %i.h, align 8, !tbaa !18
  br label %_Py_XNewRef.exit

_Py_XNewRef.exit:                                 ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %i.h, %bb.e ], [ %i.h, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @tuple_getslice(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.d = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.f = icmp eq ptr %i.e, @_Py_NoneStruct
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ null, %bb.c ], [ %i.e, %bb.b ]
  %i.h = load i64, ptr %i.b, align 8, !tbaa !16
  %i.i = load i64, ptr %i.c, align 8, !tbaa !16
  %i.j = call ptr @PyTuple_GetSlice(ptr noundef %i.g, i64 noundef %i.h, i64 noundef %i.i) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi ptr [ %i.j, %bb.d ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @tuple_setitem(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.d = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %Py_DECREF.exit21, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.f = icmp eq ptr %i.e, @_Py_NoneStruct
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ null, %bb.c ], [ %i.e, %bb.b ] ; 4 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !14   ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val = load ptr, ptr %i.i, align 8, !tbaa !10
  %.not29 = icmp eq ptr %.val, @PyTuple_Type
  br i1 %.not29, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.j = call i64 @PyTuple_Size(ptr noundef nonnull %i.h) #4 ; 3 uses
  %i.k = call ptr @PyTuple_New(i64 noundef %i.j) #4 ; 9 uses
  %.not18 = icmp eq ptr %i.k, null
  br i1 %.not18, label %Py_DECREF.exit21, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not1930 = icmp sgt i64 %i.j, 0
  br i1 %.not1930, label %.lr.ph, label %.critedge

bb.f:                                             ; preds = %_Py_XNewRef.exit
  %i.l = add nuw nsw i64 %.031, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %i.j
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !19

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.031 = phi i64 [ %i.l, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.n = call ptr @PyTuple_GetItem(ptr noundef %i.m, i64 noundef %.031) #4 ; 4 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_Py_XNewRef.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.o = load i32, ptr %i.n, align 8, !tbaa !18   ; 2 uses
  %i.p = icmp ugt i32 %i.o, -1073741825
  br i1 %i.p, label %_Py_XNewRef.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = add nuw i32 %i.o, 1
  store i32 %i.q, ptr %i.n, align 8, !tbaa !18
  br label %_Py_XNewRef.exit

_Py_XNewRef.exit:                                 ; preds = %.lr.ph, %bb.g, %bb.h
  %i.r = call i32 @PyTuple_SetItem(ptr noundef nonnull %i.k, i64 noundef %.031, ptr noundef %i.n) #4
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.i, label %bb.f

bb.i:                                             ; preds = %_Py_XNewRef.exit
  %i.t = load i32, ptr %i.k, align 8, !tbaa !18   ; 2 uses
  %.not.i20 = icmp sgt i32 %i.t, -1
  br i1 %.not.i20, label %bb.j, label %Py_DECREF.exit21

bb.j:                                             ; preds = %bb.i
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.k, align 8, !tbaa !18
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %Py_DECREF.exit21.sink.split, label %Py_DECREF.exit21

.critedge:                                        ; preds = %bb.f, %.preheader
  %i.w = load i64, ptr %i.c, align 8, !tbaa !16
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !14   ; 4 uses
  %.not.i.i23 = icmp eq ptr %i.x, null
  br i1 %.not.i.i23, label %_Py_XNewRef.exit24, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.y = load i32, ptr %i.x, align 8, !tbaa !18   ; 2 uses
  %i.z = icmp ugt i32 %i.y, -1073741825
  br i1 %i.z, label %_Py_XNewRef.exit24, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = add nuw i32 %i.y, 1
  store i32 %i.aa, ptr %i.x, align 8, !tbaa !18
  br label %_Py_XNewRef.exit24

_Py_XNewRef.exit24:                               ; preds = %.critedge, %bb.k, %bb.l
  %i.ab = call i32 @PyTuple_SetItem(ptr noundef nonnull %i.k, i64 noundef %i.w, ptr noundef %i.x) #4
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %bb.m, label %Py_DECREF.exit21

bb.m:                                             ; preds = %_Py_XNewRef.exit24
  %i.ad = load i32, ptr %i.k, align 8, !tbaa !18  ; 2 uses
  %.not.i = icmp sgt i32 %i.ad, -1
  br i1 %.not.i, label %bb.n, label %Py_DECREF.exit21

bb.n:                                             ; preds = %bb.m
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.k, align 8, !tbaa !18
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %Py_DECREF.exit21.sink.split, label %Py_DECREF.exit21

bb.o:                                             ; preds = %bb.d
  %i.ag = icmp eq ptr %i.h, @_Py_NoneStruct
  br i1 %i.ag, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %i.a, align 8, !tbaa !14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ah = phi ptr [ null, %bb.p ], [ %i.h, %bb.o ]
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !16
  %.not.i.i25 = icmp eq ptr %i.g, null
  br i1 %.not.i.i25, label %_Py_XNewRef.exit26, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = load i32, ptr %i.g, align 8, !tbaa !18  ; 2 uses
  %i.ak = icmp ugt i32 %i.aj, -1073741825
  br i1 %i.ak, label %_Py_XNewRef.exit26, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = add nuw i32 %i.aj, 1
  store i32 %i.al, ptr %i.g, align 8, !tbaa !18
  br label %_Py_XNewRef.exit26

_Py_XNewRef.exit26:                               ; preds = %bb.q, %bb.r, %bb.s
  %i.am = call i32 @PyTuple_SetItem(ptr noundef %i.ah, i64 noundef %i.ai, ptr noundef %i.g) #4
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %Py_DECREF.exit21, label %bb.t

bb.t:                                             ; preds = %_Py_XNewRef.exit26
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !14  ; 5 uses
  %.not.i.i27 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i27, label %Py_DECREF.exit21, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !18 ; 2 uses
  %i.aq = icmp ugt i32 %i.ap, -1073741825
  br i1 %i.aq, label %Py_DECREF.exit21, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = add nuw i32 %i.ap, 1
  store i32 %i.ar, ptr %i.ao, align 8, !tbaa !18
  br label %Py_DECREF.exit21

Py_DECREF.exit21.sink.split:                      ; preds = %bb.n, %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.k) #4
  br label %Py_DECREF.exit21

Py_DECREF.exit21:                                 ; preds = %Py_DECREF.exit21.sink.split, %bb.v, %bb.u, %bb.t, %bb.n, %bb.m, %bb.j, %bb.i, %_Py_XNewRef.exit26, %bb.e, %_Py_XNewRef.exit24, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %i.k, %_Py_XNewRef.exit24 ], [ %i.ao, %bb.u ], [ %i.ao, %bb.v ], [ null, %bb.e ], [ null, %_Py_XNewRef.exit26 ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.m ], [ null, %bb.n ], [ null, %bb.t ], [ null, %Py_DECREF.exit21.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.2
}

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i64 @PyType_GetFlags(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @PyTuple_New(i64 noundef) local_unnamed_addr #1

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #1

declare i32 @PyArg_ParseTuple(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyTuple_Pack(i64 noundef, ...) local_unnamed_addr #1

declare i64 @PyTuple_Size(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #1

declare ptr @PyTuple_GetItem(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyTuple_GetSlice(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @PyTuple_SetItem(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 8}
!11 = !{!"_object", !8, i64 0, !12, i64 8}
!12 = !{!"p1 _ZTS11_typeobject", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS7_object", !13, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !8, i64 0}
!18 = !{!8, !8, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
end_hunk_0
