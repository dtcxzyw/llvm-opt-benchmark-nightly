begin_hunk_0
inline.NumInlined: 21
inline.NumDeleted: 10
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
; Function Attrs: nounwind uwtable
define internal ptr @pwd_getpwall(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyList_New(i64 noundef 0) #4 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %pwd_getpwall_impl.exit, label %bb.b

end_hunk_1
begin_hunk_2
  tail call void @setpwent() #4
  %i.e = tail call ptr @getpwent() #4             ; 2 uses
  %.not28.i = icmp eq ptr %i.e, null
  br i1 %.not28.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_PyMutex_Lock.exit.i, %Py_DECREF.exit23.i
  %i.f = phi ptr [ %i.m, %Py_DECREF.exit23.i ], [ %i.e, %_PyMutex_Lock.exit.i ]
  %i.g = tail call fastcc ptr @mkpwent(ptr noundef %0, ptr noundef %i.f) ; 8 uses
  %i.h = icmp eq ptr %i.g, null                   ; 2 uses
  br i1 %i.h, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
end_hunk_2
begin_hunk_3
Py_DECREF.exit23.i:                               ; preds = %bb.g, %bb.f, %bb.e
  %i.m = tail call ptr @getpwent() #4             ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !33

bb.h:                                             ; preds = %bb.d, %.lr.ph.i
  tail call void @endpwent() #4
  %i.n = cmpxchg ptr @pwd_db_mutex, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.o = extractvalue { i8, i1 } %i.n, 1
  br i1 %i.o, label %_PyMutex_Unlock.exit.i.a, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @PyMutex_Unlock(ptr noundef nonnull @pwd_db_mutex) #4
  br label %_PyMutex_Unlock.exit.i.a

_PyMutex_Unlock.exit.i.a:                         ; preds = %bb.i, %bb.h
  br i1 %i.h, label %Py_XDECREF.exit.i, label %bb.j

bb.j:                                             ; preds = %_PyMutex_Unlock.exit.i.a
  %i.p = load i32, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.p, -1
  br i1 %.not.i.i.i, label %bb.k, label %Py_XDECREF.exit.i

bb.k:                                             ; preds = %bb.j
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.g, align 8, !tbaa !16
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.l, label %Py_XDECREF.exit.i

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #4
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.l, %bb.k, %bb.j, %_PyMutex_Unlock.exit.i.a
end_hunk_3
begin_hunk_4
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.a, align 8, !tbaa !16
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %2, label %pwd_getpwall_impl.exit

2:                                                ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #4
  br label %pwd_getpwall_impl.exit

.critedge.i:                                      ; preds = %Py_DECREF.exit23.i, %_PyMutex_Lock.exit.i
  tail call void @endpwent() #4
  %3 = cmpxchg ptr @pwd_db_mutex, i8 1, i8 0 seq_cst seq_cst, align 1
  %4 = extractvalue { i8, i1 } %3, 1
  br i1 %4, label %pwd_getpwall_impl.exit, label %bb.n

bb.n:                                             ; preds = %.critedge.i
  tail call void @PyMutex_Unlock(ptr noundef nonnull @pwd_db_mutex) #4
  br label %pwd_getpwall_impl.exit

pwd_getpwall_impl.exit:                           ; preds = %bb.a, %Py_XDECREF.exit.i, %bb.m, %2, %.critedge.i, %bb.n
  %.0.i = phi ptr [ null, %bb.a ], [ null, %2 ], [ null, %Py_XDECREF.exit.i ], [ null, %bb.m ], [ %i.a, %.critedge.i ], [ %i.a, %bb.n ]
  ret ptr %.0.i
}

end_hunk_4
