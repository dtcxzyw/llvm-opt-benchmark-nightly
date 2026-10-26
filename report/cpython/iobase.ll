Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/iobase?download=true
inline.NumInlined: 104
inline.NumDeleted: 43
begin_hunk_0_@_PyArg_CheckPositional

declare i32 @_Py_convert_optional_to_ssize_t(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyByteArray_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyObject_CallOneArg(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_PyIO_trap_eintr() local_unnamed_addr #1

declare i32 @PyByteArray_Resize(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #1

declare ptr @PyObject_CallMethodObjArgs(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyObject_GetIter(ptr noundef) local_unnamed_addr #1

declare ptr @PyIter_Next(ptr noundef) local_unnamed_addr #1

declare i32 @PyList_Append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_GenericGetDict(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @iobase_closed_get(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @PyObject_HasAttrWithError(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62064)) #6 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %i.d = tail call ptr @PyBool_FromLong(i64 noundef %i.c) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @PyBool_FromLong(i64 noundef) local_unnamed_addr #1

declare void @PyErr_Clear() local_unnamed_addr #1

declare void @PyErr_FormatUnraisable(ptr noundef, ...) local_unnamed_addr #1

declare void @PyErr_SetRaisedException(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @_io__RawIOBase_read(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.41, i64 noundef %2, i64 noundef 0, i64 noundef 1) #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_io__RawIOBase_read_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = icmp slt i64 %2, 1
  br i1 %i.d, label %.thread28, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %1, align 8, !tbaa !13
  %i.f = tail call ptr @_PyNumber_Index(ptr noundef %i.e) #6 ; 5 uses
  %.not20 = icmp eq ptr %i.f, null
  br i1 %.not20, label %Py_DECREF.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.f) #6 ; 5 uses
  %i.h = load i32, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %.not.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.f, align 8, !tbaa !14
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e
  %i.k = icmp eq i64 %i.g, -1
  br i1 %i.k, label %Py_DECREF.exit.thread, label %bb.h

Py_DECREF.exit.thread:                            ; preds = %bb.d, %Py_DECREF.exit
  %i.l = tail call ptr @PyErr_Occurred() #6
  %.not21 = icmp eq ptr %i.l, null
  br i1 %.not21, label %.thread28, label %_io__RawIOBase_read_impl.exit

bb.h:                                             ; preds = %Py_DECREF.exit
  %i.m = icmp slt i64 %i.g, 0
  br i1 %i.m, label %.thread28, label %bb.i

.thread28:                                        ; preds = %Py_DECREF.exit.thread, %bb.c, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8, !tbaa !13
  %i.n = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 96952), ptr noundef nonnull %i.b, i64 noundef -9223372036854775807, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_io__RawIOBase_read_impl.exit

bb.i:                                             ; preds = %bb.h
  %i.o = tail call ptr @PyByteArray_FromStringAndSize(ptr noundef null, i64 noundef %i.g) #6 ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_io__RawIOBase_read_impl.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call ptr (ptr, ptr, ...) @PyObject_CallMethodObjArgs(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 97000), ptr noundef nonnull %i.o, ptr noundef null) #6 ; 7 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = icmp eq ptr %i.q, @_Py_NoneStruct
  %or.cond.i = or i1 %i.r, %i.s
  br i1 %or.cond.i, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !13
  %i.u = tail call i64 @PyNumber_AsSsize_t(ptr noundef nonnull %i.q, ptr noundef %i.t) #6 ; 4 uses
  %i.v = load i32, ptr %i.q, align 8, !tbaa !14   ; 2 uses
  %.not.i31.i = icmp sgt i32 %i.v, -1
  br i1 %.not.i31.i, label %bb.l, label %Py_DECREF.exit32.i

bb.l:                                             ; preds = %bb.k
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.q, align 8, !tbaa !14
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.m, label %Py_DECREF.exit32.i

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #6
  br label %Py_DECREF.exit32.i

Py_DECREF.exit32.i:                               ; preds = %bb.m, %bb.l, %bb.k
  %i.y = icmp eq i64 %i.u, -1
  br i1 %i.y, label %bb.n, label %bb.o

bb.n:                                             ; preds = %Py_DECREF.exit32.i
  %i.z = tail call ptr @PyErr_Occurred() #6
  %.not.i22 = icmp eq ptr %i.z, null
  br i1 %.not.i22, label %.thread.i, label %bb.r

bb.o:                                             ; preds = %Py_DECREF.exit32.i
  %or.cond30.i = icmp ugt i64 %i.u, %i.g
  br i1 %or.cond30.i, label %.thread.i, label %bb.p

.thread.i:                                        ; preds = %bb.o, %bb.n
  %i.aa = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !13
  %i.ab = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aa, ptr noundef nonnull @.str.46, i64 noundef %i.u, i64 noundef %i.g) #6 ; 0 uses
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ac = tail call i32 @PyByteArray_Resize(ptr noundef nonnull %i.o, i64 noundef %i.u) #6
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.o, ptr %i.a, align 8, !tbaa !13
  %i.ae = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 101632), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.thread.i, %bb.n, %bb.j
  %.1.i = phi ptr [ %i.q, %bb.j ], [ null, %bb.n ], [ null, %.thread.i ], [ null, %bb.p ], [ %i.ae, %bb.q ] ; 3 uses
  %i.af = load i32, ptr %i.o, align 8, !tbaa !14  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.af, -1
  br i1 %.not.i.i, label %bb.s, label %_io__RawIOBase_read_impl.exit

bb.s:                                             ; preds = %bb.r
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.o, align 8, !tbaa !14
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.t, label %_io__RawIOBase_read_impl.exit

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.o) #6
  br label %_io__RawIOBase_read_impl.exit

_io__RawIOBase_read_impl.exit:                    ; preds = %bb.t, %bb.s, %bb.r, %bb.i, %.thread28, %Py_DECREF.exit.thread, %bb.b
  %.017 = phi ptr [ null, %Py_DECREF.exit.thread ], [ null, %bb.b ], [ %i.n, %.thread28 ], [ null, %bb.i ], [ %.1.i, %bb.r ], [ %.1.i, %bb.s ], [ %.1.i, %bb.t ]
  ret ptr %.017
}

; Function Attrs: nounwind uwtable
define internal ptr @_io__RawIOBase_readall(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyBytesWriter_Create(i64 noundef 0) #6 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_io__RawIOBase_readall_impl.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i.backedge
  %i.c = tail call ptr (ptr, ptr, ptr, ...) @_PyObject_CallMethod(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 96800), ptr noundef nonnull @.str.47, i32 noundef 131072) #6 ; 18 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.preheader.i
  %i.d = tail call i32 @_PyIO_trap_eintr() #6
  %.not24.i = icmp eq i32 %i.d, 0
  br i1 %.not24.i, label %bb.c, label %.preheader.i.backedge

bb.c:                                             ; preds = %bb.b
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.a) #6
  br label %_io__RawIOBase_readall_impl.exit

bb.d:                                             ; preds = %.preheader.i
  %i.e = icmp eq ptr %i.c, @_Py_NoneStruct
  br i1 %i.e, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i64 @PyBytesWriter_GetSize(ptr noundef nonnull %i.a) #6
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.a) #6
  br label %_io__RawIOBase_readall_impl.exit

bb.g:                                             ; preds = %bb.e
  %i.h = load i32, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %.not.i32.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i32.i, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.c, align 8, !tbaa !14
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.sink.split.i, label %bb.w

bb.i:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.c, i64 8
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.l = getelementptr i8, ptr %.val.i, i64 168
  %.val38.i = load i64, ptr %i.l, align 8, !tbaa !28
  %i.m = and i64 %.val38.i, 134217728
  %.not25.i = icmp eq i64 %i.m, 0
  br i1 %.not25.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.n = load i32, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %.not.i30.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i30.i, label %bb.k, label %Py_DECREF.exit31.i

bb.k:                                             ; preds = %bb.j
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.c, align 8, !tbaa !14
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.l, label %Py_DECREF.exit31.i

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #6
  br label %Py_DECREF.exit31.i

Py_DECREF.exit31.i:                               ; preds = %bb.l, %bb.k, %bb.j
  %i.q = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !13
  tail call void @PyErr_SetString(ptr noundef %i.q, ptr noundef nonnull @.str.48) #6
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.a) #6
  br label %_io__RawIOBase_readall_impl.exit

bb.m:                                             ; preds = %bb.i
  %i.r = getelementptr i8, ptr %i.c, i64 16
  %.val40.i = load i64, ptr %i.r, align 8, !tbaa !42 ; 2 uses
  %i.s = icmp eq i64 %.val40.i, 0
  br i1 %i.s, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.t = load i32, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %.not.i28.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i28.i, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.c, align 8, !tbaa !14
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.sink.split.i, label %bb.w

bb.p:                                             ; preds = %bb.m
  %i.w = getelementptr i8, ptr %i.c, i64 32
  %i.x = tail call i32 @PyBytesWriter_WriteBytes(ptr noundef nonnull %i.a, ptr noundef %i.w, i64 noundef %.val40.i) #6
  %i.y = icmp slt i32 %i.x, 0
  %i.z = load i32, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  %.not.i26.i = icmp sgt i32 %i.z, -1             ; 2 uses
  br i1 %i.y, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i26.i, label %bb.r, label %Py_DECREF.exit27.i

bb.r:                                             ; preds = %bb.q
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.c, align 8, !tbaa !14
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.s, label %Py_DECREF.exit27.i

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #6
  br label %Py_DECREF.exit27.i

Py_DECREF.exit27.i:                               ; preds = %bb.s, %bb.r, %bb.q
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.a) #6
  br label %_io__RawIOBase_readall_impl.exit

bb.t:                                             ; preds = %bb.p
  br i1 %.not.i26.i, label %bb.u, label %.preheader.i.backedge

bb.u:                                             ; preds = %bb.t
  %i.ac = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.ac, ptr %i.c, align 8, !tbaa !14
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.v, label %.preheader.i.backedge

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #6
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.v, %bb.u, %bb.t, %bb.b
  br label %.preheader.i

.sink.split.i:                                    ; preds = %bb.o, %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #6
  br label %bb.w

bb.w:                                             ; preds = %.sink.split.i, %bb.o, %bb.n, %bb.h, %bb.g
  %i.ae = tail call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.a) #6
  br label %_io__RawIOBase_readall_impl.exit

_io__RawIOBase_readall_impl.exit:                 ; preds = %bb.a, %bb.c, %bb.f, %Py_DECREF.exit31.i, %Py_DECREF.exit27.i, %bb.w
  %.2.i = phi ptr [ %i.ae, %bb.w ], [ null, %bb.a ], [ null, %bb.c ], [ null, %Py_DECREF.exit31.i ], [ null, %Py_DECREF.exit27.i ], [ @_Py_NoneStruct, %bb.f ]
  ret ptr %.2.i
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @rawiobase_readinto(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr @PyExc_NotImplementedError, align 8, !tbaa !13
  tail call void @PyErr_SetNone(ptr noundef %i.a) #6
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @rawiobase_write(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr @PyExc_NotImplementedError, align 8, !tbaa !13
  tail call void @PyErr_SetNone(ptr noundef %i.a) #6
  ret ptr null
}

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #1

declare i64 @PyNumber_AsSsize_t(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_Create(i64 noundef) local_unnamed_addr #1

declare void @PyBytesWriter_Discard(ptr noundef) local_unnamed_addr #1

declare i64 @PyBytesWriter_GetSize(ptr noundef) local_unnamed_addr #1

declare i32 @PyBytesWriter_WriteBytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_Finish(ptr noundef) local_unnamed_addr #1

declare void @PyErr_SetNone(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"p1 _ZTS7_object", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!"p1 _ZTS11_typeobject", !11, i64 0}
!16 = !{!"_object", !8, i64 0, !15, i64 8}
!17 = !{!16, !15, i64 8}
!18 = !{!"_io_state", !9, i64 0, !12, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120}
!19 = !{!18, !12, i64 8}
!20 = !{!"long", !8, i64 0}
!21 = !{!"PyVarObject", !16, i64 0, !20, i64 16}
!22 = !{!"p1 omnipotent char", !11, i64 0}
!23 = !{!"p1 _ZTS11PyMethodDef", !11, i64 0}
!24 = !{!"p1 _ZTS11PyMemberDef", !11, i64 0}
!25 = !{!"p1 _ZTS11PyGetSetDef", !11, i64 0}
!26 = !{!"short", !8, i64 0}
!27 = !{!"_typeobject", !21, i64 0, !22, i64 24, !20, i64 32, !20, i64 40, !11, i64 48, !20, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !20, i64 168, !22, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !20, i64 208, !11, i64 216, !11, i64 224, !23, i64 232, !24, i64 240, !25, i64 248, !15, i64 256, !12, i64 264, !11, i64 272, !11, i64 280, !20, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !11, i64 360, !12, i64 368, !11, i64 376, !9, i64 384, !11, i64 392, !11, i64 400, !8, i64 408, !26, i64 410}
!28 = !{!27, !20, i64 168}
!29 = !{!"", !16, i64 0, !12, i64 16, !12, i64 24}
!30 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!31 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280}
!32 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!33 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72}
!34 = !{!"", !11, i64 0, !11, i64 8}
!35 = !{!"p1 _ZTS15_dictkeysobject", !11, i64 0}
!36 = !{!"_specialization_cache", !12, i64 0, !9, i64 8, !12, i64 16}
!37 = !{!"_heaptypeobject", !27, i64 0, !30, i64 416, !31, i64 448, !32, i64 736, !33, i64 760, !34, i64 840, !12, i64 856, !12, i64 864, !12, i64 872, !35, i64 880, !12, i64 888, !22, i64 896, !11, i64 904, !36, i64 912}
!38 = !{!37, !12, i64 888}
!39 = !{!"_Bool", !8, i64 0}
!40 = !{!"", !16, i64 0, !12, i64 16, !11, i64 24, !12, i64 32, !12, i64 40, !39, i64 48, !20, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96}
!41 = !{!40, !11, i64 24}
!42 = !{!21, !20, i64 16}
!43 = !{!20, !20, i64 0}
!44 = !{!"", !20, i64 0, !20, i64 8}
!45 = !{!44, !20, i64 8}
!46 = !{!44, !20, i64 0}
!47 = !{!"p1 _ZTS3_is", !11, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"gc_generation", !44, i64 0, !9, i64 16, !9, i64 20}
!50 = !{!"p1 _ZTS19_PyInterpreterFrame", !11, i64 0}
!51 = !{!"_gc_runtime_state", !9, i64 0, !9, i64 4, !49, i64 8, !8, i64 32, !49, i64 80, !8, i64 104, !9, i64 224, !50, i64 232, !12, i64 240, !12, i64 248, !20, i64 256, !20, i64 264, !9, i64 272, !9, i64 276}
!52 = !{!51, !9, i64 28}
!53 = !{!51, !20, i64 256}
!54 = !{!29, !12, i64 24}
!55 = !{!27, !11, i64 320}
!56 = !{!29, !12, i64 16}
!57 = !{!27, !22, i64 24}
!58 = !{!"", !21, i64 0, !20, i64 24, !22, i64 32, !22, i64 40, !20, i64 48, !12, i64 56}
!59 = !{!58, !22, i64 40}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
end_hunk_0
