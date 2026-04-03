begin_hunk_0
inline.NumInlined: 20
inline.NumDeleted: 10
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
; Function Attrs: nounwind uwtable
define internal ptr @pwd_getpwall(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyList_New(i64 noundef 0) #4 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %pwd_getpwall_impl.exit, label %bb.b

end_hunk_1
begin_hunk_2
  tail call void @setpwent() #4
  %i.e = tail call ptr @getpwent() #4             ; 2 uses
  %.not28.i = icmp eq ptr %i.e, null
  br i1 %.not28.i, label %bb.h, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_PyMutex_Lock.exit.i, %Py_DECREF.exit23.i
  %i.f = phi ptr [ %i.m, %Py_DECREF.exit23.i ], [ %i.e, %_PyMutex_Lock.exit.i ]
  %i.g = tail call fastcc ptr @mkpwent(ptr noundef %0, ptr noundef %i.f) ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
end_hunk_2
begin_hunk_3
Py_DECREF.exit23.i:                               ; preds = %bb.g, %bb.f, %bb.e
  %i.m = tail call ptr @getpwent() #4             ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.h, label %.lr.ph.i, !llvm.loop !33

bb.h:                                             ; preds = %Py_DECREF.exit23.i, %bb.d, %.lr.ph.i, %_PyMutex_Lock.exit.i
  %.not.lcssa.i = phi i1 [ true, %_PyMutex_Lock.exit.i ], [ true, %Py_DECREF.exit23.i ], [ false, %bb.d ], [ false, %.lr.ph.i ]
  %.1.i = phi ptr [ null, %_PyMutex_Lock.exit.i ], [ %i.g, %Py_DECREF.exit23.i ], [ %i.g, %bb.d ], [ null, %.lr.ph.i ] ; 4 uses
  tail call void @endpwent() #4
  %i.n = cmpxchg ptr @pwd_db_mutex, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.o = extractvalue { i8, i1 } %i.n, 1
  br i1 %i.o, label %_PyMutex_Unlock.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @PyMutex_Unlock(ptr noundef nonnull @pwd_db_mutex) #4
  br label %_PyMutex_Unlock.exit.i

_PyMutex_Unlock.exit.i:                           ; preds = %bb.i, %bb.h
  br i1 %.not.lcssa.i, label %pwd_getpwall_impl.exit, label %_PyMutex_Unlock.exit.i.a

_PyMutex_Unlock.exit.i.a:                         ; preds = %_PyMutex_Unlock.exit.i
  %.not.i25.i = icmp eq ptr %.1.i, null
  br i1 %.not.i25.i, label %Py_XDECREF.exit.i, label %bb.j

bb.j:                                             ; preds = %_PyMutex_Unlock.exit.i.a
  %i.p = load i32, ptr %.1.i, align 8, !tbaa !16  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.p, -1
  br i1 %.not.i.i.i, label %bb.k, label %Py_XDECREF.exit.i

bb.k:                                             ; preds = %bb.j
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %.1.i, align 8, !tbaa !16
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.l, label %Py_XDECREF.exit.i

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1.i) #4
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.l, %bb.k, %bb.j, %_PyMutex_Unlock.exit.i.a
end_hunk_3
begin_hunk_4
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.a, align 8, !tbaa !16
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.n, label %pwd_getpwall_impl.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #4
  br label %pwd_getpwall_impl.exit

pwd_getpwall_impl.exit:                           ; preds = %bb.a, %_PyMutex_Unlock.exit.i, %Py_XDECREF.exit.i, %bb.m, %bb.n
  %.0.i = phi ptr [ null, %bb.a ], [ %i.a, %_PyMutex_Unlock.exit.i ], [ null, %Py_XDECREF.exit.i ], [ null, %bb.m ], [ null, %bb.n ]
  ret ptr %.0.i
}

end_hunk_4
