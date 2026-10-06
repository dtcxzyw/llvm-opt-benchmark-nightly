Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/pyarena?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyArena_New() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyMem_Malloc(i64 noundef 24) #3 ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PyMem_Malloc(i64 noundef 8224) #3 ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %.sink.split.sink.split

bb.d:                                             ; preds = %bb.b
  store i64 8192, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.d, align 8, !tbaa !17
  %i.e = getelementptr i8, ptr %i.b, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !18
  %i.f = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.g = add i64 %i.f, 7
  %i.h = and i64 %i.g, -8
  %i.i = sub i64 %i.h, %i.f
  %i.j = getelementptr i8, ptr %i.b, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !19
  store ptr %i.b, ptr %i.a, align 8, !tbaa !22
  %i.k = getelementptr i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.k, align 8, !tbaa !23
  %i.l = tail call ptr @PyList_New(i64 noundef 0) #3 ; 2 uses
  %i.m = getelementptr i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !24
  %.not14 = icmp eq ptr %i.l, null
  br i1 %.not14, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not4.i = icmp eq ptr %i.n, null
  br i1 %.not4.i, label %.sink.split.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.05.i = phi ptr [ %i.p, %.lr.ph.i ], [ %i.n, %bb.e ] ; 2 uses
  %i.o = getelementptr i8, ptr %.05.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18   ; 2 uses
  tail call void @PyMem_Free(ptr noundef nonnull %.05.i) #3
  %.not.i15 = icmp eq ptr %i.p, null
  br i1 %.not.i15, label %.sink.split.sink.split, label %.lr.ph.i, !llvm.loop !0

.sink.split.sink.split:                           ; preds = %.lr.ph.i, %bb.e, %bb.c
  tail call void @PyMem_Free(ptr noundef nonnull %i.a) #3
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.a
  %i.q = tail call ptr @PyErr_NoMemory() #3
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  %.0 = phi ptr [ %i.a, %bb.d ], [ %i.q, %.sink.split ]
  ret ptr %.0
}

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @_PyArena_Free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %.not4.i = icmp eq ptr %i.a, null
  br i1 %.not4.i, label %block_free.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.05.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.b = getelementptr i8, ptr %.05.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  tail call void @PyMem_Free(ptr noundef nonnull %.05.i) #3
  %.not.i3 = icmp eq ptr %i.c, null
  br i1 %.not.i3, label %block_free.exit, label %.lr.ph.i, !llvm.loop !0

block_free.exit:                                  ; preds = %.lr.ph.i, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.b, label %Py_DECREF.exit

bb.b:                                             ; preds = %block_free.exit
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !26
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #3
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %block_free.exit, %bb.b, %bb.c
  tail call void @PyMem_Free(ptr noundef nonnull %0) #3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyArena_Malloc(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 5 uses
  %i.c = add i64 %1, 7                            ; 2 uses
  %i.d = and i64 %i.c, -8                         ; 3 uses
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = add i64 %i.f, %i.d                       ; 2 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !16
  %i.i = icmp ugt i64 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr i8, ptr %i.b, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !17
  br label %block_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.c, 8192
  %i.k = select i1 %i.j, i64 8192, i64 %i.d       ; 2 uses
  %i.l = add i64 %i.k, 32
  %i.m = tail call ptr @PyMem_Malloc(i64 noundef %i.l) #3 ; 7 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %block_alloc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.k, ptr %i.m, align 8, !tbaa !16
  %i.n = getelementptr i8, ptr %i.m, i64 32       ; 3 uses
  %i.o = getelementptr i8, ptr %i.m, i64 24
  store ptr %i.n, ptr %i.o, align 8, !tbaa !17
  %i.p = getelementptr i8, ptr %i.m, i64 16
  store ptr null, ptr %i.p, align 8, !tbaa !18
  %i.q = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.r = add i64 %i.q, 7
  %i.s = and i64 %i.r, -8
  %i.t = sub i64 %i.s, %i.q                       ; 2 uses
  %i.u = getelementptr i8, ptr %i.b, i64 16
  store ptr %i.m, ptr %i.u, align 8, !tbaa !18
  %.pre20.i = add i64 %i.t, %i.d
  br label %block_alloc.exit

block_alloc.exit:                                 ; preds = %._crit_edge.i, %bb.c
  %.pre-phi.i = phi i64 [ %i.g, %._crit_edge.i ], [ %.pre20.i, %bb.c ]
  %i.v = phi i64 [ %i.f, %._crit_edge.i ], [ %i.t, %bb.c ]
  %i.w = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.n, %bb.c ]
  %.1.i = phi ptr [ %i.b, %._crit_edge.i ], [ %i.m, %bb.c ]
  %i.x = getelementptr i8, ptr %.1.i, i64 8
  %i.y = getelementptr i8, ptr %i.w, i64 %i.v     ; 3 uses
  store i64 %.pre-phi.i, ptr %i.x, align 8, !tbaa !19
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %block_alloc.exit.thread, label %bb.d

block_alloc.exit.thread:                          ; preds = %bb.b, %block_alloc.exit
  %i.z = tail call ptr @PyErr_NoMemory() #3
  br label %bb.f

bb.d:                                             ; preds = %block_alloc.exit
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !18 ; 2 uses
  %.not9 = icmp eq ptr %i.ac, null
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %block_alloc.exit.thread
  %.0 = phi ptr [ %i.z, %block_alloc.exit.thread ], [ %i.y, %bb.e ], [ %i.y, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @_PyArena_AddPyObject(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = tail call i32 @PyList_Append(ptr noundef %i.b, ptr noundef %1) #3 ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %Py_DECREF.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !26     ; 2 uses
  %.not.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %1, align 8, !tbaa !26
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %1) #3
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret i32 %i.c
}

declare i32 @PyList_Append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !25}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTS6_block", !13, i64 0}
!15 = !{!"_block", !12, i64 0, !12, i64 8, !14, i64 16, !13, i64 24}
!16 = !{!15, !12, i64 0}
!17 = !{!15, !13, i64 24}
!18 = !{!15, !14, i64 16}
!19 = !{!15, !12, i64 8}
!20 = !{!"p1 _ZTS7_object", !13, i64 0}
!21 = !{!"_arena", !14, i64 0, !14, i64 8, !20, i64 16}
!22 = !{!21, !14, i64 0}
!23 = !{!21, !14, i64 8}
!24 = !{!21, !20, i64 16}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!9, !9, i64 0}
end_hunk_0
