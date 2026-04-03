begin_hunk_0
_PyWeakref_GET_REF.exit:                          ; preds = %PyObject_TypeCheck.exit48.thread, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ null, %PyObject_TypeCheck.exit48.thread ], [ null, %bb.e ], [ %.val43, %bb.f ], [ %.val43, %bb.g ] ; 9 uses
  %i.j = getelementptr i8, ptr %1, i64 16
  %.val42 = load ptr, ptr %i.j, align 8, !tbaa !32 ; 8 uses
  %i.k = icmp eq ptr %.val42, @_Py_NoneStruct
  br i1 %i.k, label %_PyWeakref_GET_REF.exit52.thread, label %bb.h

bb.h:                                             ; preds = %_PyWeakref_GET_REF.exit
  %.val.i.i49 = load i32, ptr %.val42, align 8, !tbaa !37 ; 4 uses
  %.not.i.i50 = icmp eq i32 %.val.i.i49, 0
  br i1 %.not.i.i50, label %_PyWeakref_GET_REF.exit52.thread, label %bb.i

end_hunk_0
begin_hunk_1
  br i1 %i.l, label %_PyWeakref_GET_REF.exit52, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = add nuw i32 %.val.i.i49, 1               ; 2 uses
  store i32 %i.m, ptr %.val42, align 8, !tbaa !37
  br label %_PyWeakref_GET_REF.exit52

end_hunk_1
begin_hunk_2
  br i1 %i.n, label %Py_XDECREF.exit57, label %bb.k

_PyWeakref_GET_REF.exit52:                        ; preds = %bb.i, %bb.j
  %3 = phi i32 [ %.val.i.i49, %bb.i ], [ %i.m, %bb.j ] ; 2 uses
  %i.o = icmp eq ptr %.0.i, null
  br i1 %i.o, label %Py_XDECREF.exit, label %bb.o

bb.k:                                             ; preds = %_PyWeakref_GET_REF.exit52.thread
  %i.p = load i32, ptr %.0.i, align 8, !tbaa !37  ; 2 uses
end_hunk_2
begin_hunk_3
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %.0.i, align 8, !tbaa !37
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.m, label %Py_XDECREF.exit57

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i) #6
  br label %Py_XDECREF.exit57

Py_XDECREF.exit:                                  ; preds = %_PyWeakref_GET_REF.exit52
  %.not.i.i56 = icmp sgt i32 %3, -1
  br i1 %.not.i.i56, label %bb.n, label %Py_XDECREF.exit57

bb.n:                                             ; preds = %Py_XDECREF.exit
  %4 = add nsw i32 %3, -1
  store i32 %4, ptr %.val42, align 8, !tbaa !37
  br label %Py_XDECREF.exit57

Py_XDECREF.exit57:                                ; preds = %bb.n, %bb.l, %bb.k, %bb.m, %_PyWeakref_GET_REF.exit52.thread, %Py_XDECREF.exit
  %i.s = icmp eq ptr %0, %1
  %i.t = icmp eq i32 %2, 3
  %spec.select = xor i1 %i.s, %i.t
end_hunk_3
