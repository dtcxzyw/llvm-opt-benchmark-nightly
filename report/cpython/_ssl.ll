inline.NumInlined: 471
inline.NumDeleted: 148
begin_hunk_0_@_pwinfo_set:bb.a
  br label %Py_XDECREF.exit

bb.h:                                             ; preds = %bb.e, %PyObject_TypeCheck.exit.thread, %bb.c
  %.sink = phi ptr [ %1, %bb.e ], [ %1, %PyObject_TypeCheck.exit.thread ], [ %i.d, %bb.c ]
  %.025 = phi ptr [ null, %bb.e ], [ null, %PyObject_TypeCheck.exit.thread ], [ %i.d, %bb.c ] ; 8 uses
  %.024 = phi ptr [ %i.g, %bb.e ], [ %.val40, %PyObject_TypeCheck.exit.thread ], [ %i.e, %bb.c ]
  %i.k = getelementptr i8, ptr %.sink, i64 16
  %.0 = load i64, ptr %i.k, align 8, !tbaa !55    ; 4 uses
  %i.l = icmp sgt i64 %.0, 2147483647
  br i1 %i.l, label %bb.i, label %bb.j
end_hunk_0
begin_hunk_1_@_pwinfo_set:bb.a
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %.024, i64 %.0, i1 false)
  %i.s = trunc i64 %.0 to i32
  %i.t = getelementptr i8, ptr %0, i64 24
  store i32 %i.s, ptr %i.t, align 8, !tbaa !145
  %.not.i42 = icmp eq ptr %.025, null
  br i1 %.not.i42, label %Py_XDECREF.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = load i32, ptr %.025, align 8, !tbaa !30  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i.i, label %bb.n, label %Py_XDECREF.exit

bb.n:                                             ; preds = %bb.m
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %.025, align 8, !tbaa !30
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.o, label %Py_XDECREF.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %.025) #11
  br label %Py_XDECREF.exit

bb.p:                                             ; preds = %bb.k, %bb.i
  %.not.i43 = icmp eq ptr %.025, null
  br i1 %.not.i43, label %Py_XDECREF.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.x = load i32, ptr %.025, align 8, !tbaa !30  ; 2 uses
  %.not.i.i44 = icmp sgt i32 %i.x, -1
  br i1 %.not.i.i44, label %bb.r, label %Py_XDECREF.exit

bb.r:                                             ; preds = %bb.q
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %.025, align 8, !tbaa !30
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.s, label %Py_XDECREF.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %.025) #11
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.g, %bb.b, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
end_hunk_1
