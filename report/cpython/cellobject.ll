Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/cellobject?download=true
inline.NumInlined: 37
inline.NumDeleted: 17
begin_hunk_0_@PyCell_Set:bb.a
  %i.g = load i32, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i.i.i, label %bb.g, label %PyCell_SetTakeRef.exit

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !11
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %PyCell_SetTakeRef.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #4
  br label %PyCell_SetTakeRef.exit

PyCell_SetTakeRef.exit:                           ; preds = %bb.h, %bb.g, %bb.f, %_Py_XNewRef.exit, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %_Py_XNewRef.exit ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @cell_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -16        ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 -8         ; 3 uses
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !22
  %i.c = and i64 %.val.i, -4                      ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.val12.i = load i64, ptr %i.a, align 8, !tbaa !23
  %i.e = and i64 %.val12.i, -4                    ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.d, align 8, !tbaa !23
  %i.h = and i64 %i.g, 3
  %i.i = or disjoint i64 %i.h, %i.e
  store i64 %i.i, ptr %i.d, align 8, !tbaa !23
  %i.j = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !22
  %i.l = and i64 %i.k, 3
  %i.m = or disjoint i64 %i.l, %i.c
  store i64 %i.m, ptr %i.j, align 8, !tbaa !22
  store i64 0, ptr %i.a, align 8, !tbaa !23
  %i.n = load i64, ptr %i.b, align 8, !tbaa !22
  %i.o = and i64 %i.n, 1
  store i64 %i.o, ptr %i.b, align 8, !tbaa !22
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19   ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 7428     ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !28   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.b, label %_PyObject_GC_UNTRACK.exit

bb.b:                                             ; preds = %bb.a
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !28
  br label %_PyObject_GC_UNTRACK.exit

_PyObject_GC_UNTRACK.exit:                        ; preds = %bb.a, %bb.b
  %i.v = getelementptr i8, ptr %i.q, i64 7656     ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !29
  %i.x = add i64 %i.w, -1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !29
  %i.y = getelementptr i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17   ; 4 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %Py_XDECREF.exit, label %bb.c

bb.c:                                             ; preds = %_PyObject_GC_UNTRACK.exit
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !11  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.aa, -1
  br i1 %.not.i.i, label %bb.d, label %Py_XDECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !11
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %Py_XDECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.z) #4
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %_PyObject_GC_UNTRACK.exit, %bb.c, %bb.d, %bb.e
  tail call void @PyObject_GC_Del(ptr noundef nonnull %0) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @cell_repr(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !17  ; 8 uses
  %.not.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i, label %PyCell_GetRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %.val, align 8, !tbaa !11  ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %.val, align 8, !tbaa !11
  br label %bb.d

PyCell_GetRef.exit:                               ; preds = %bb.a
  %i.e = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.3, ptr noundef nonnull %0) #4
  br label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.f = getelementptr i8, ptr %.val, i64 8
  %.val10 = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.g = getelementptr i8, ptr %.val10, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.4, ptr noundef nonnull %0, ptr noundef %i.h, ptr noundef nonnull %.val) #4 ; 3 uses
  %i.j = load i32, ptr %.val, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %.val, align 8, !tbaa !11
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #4
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.f, %bb.e, %bb.d, %PyCell_GetRef.exit
  %.0 = phi ptr [ %i.e, %PyCell_GetRef.exit ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  ret ptr %.0
}

declare ptr @PyObject_GenericGetAttr(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @cell_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #4 ; 2 uses
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %i.c, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @cell_clear(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !11
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #4
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @cell_richcompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val13 = load ptr, ptr %i.a, align 8, !tbaa !31
  %.not = icmp eq ptr %.val13, @PyCell_Type
  br i1 %.not, label %bb.b, label %Py_XDECREF.exit19

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val12 = load ptr, ptr %i.b, align 8, !tbaa !31
  %.not24 = icmp eq ptr %.val12, @PyCell_Type
  br i1 %.not24, label %bb.c, label %Py_XDECREF.exit19

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val11 = load ptr, ptr %i.c, align 8, !tbaa !17 ; 7 uses
  %.not.i.i.i = icmp eq ptr %.val11, null         ; 6 uses
  br i1 %.not.i.i.i, label %PyCell_GetRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i32, ptr %.val11, align 8, !tbaa !11 ; 2 uses
  %i.e = icmp ugt i32 %i.d, -1073741825
  br i1 %i.e, label %PyCell_GetRef.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %.val11, align 8, !tbaa !11
  br label %PyCell_GetRef.exit

PyCell_GetRef.exit:                               ; preds = %bb.c, %bb.d, %bb.e
  %i.g = getelementptr i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.g, align 8, !tbaa !17  ; 7 uses
  %.not.i.i.i14 = icmp eq ptr %.val, null         ; 5 uses
  br i1 %.not.i.i.i14, label %PyCell_GetRef.exit15.thread, label %bb.f

PyCell_GetRef.exit15.thread:                      ; preds = %PyCell_GetRef.exit
  %.not.i.i.i.not = xor i1 %.not.i.i.i, true
  br label %PyCell_GetRef.exit15.thread.a

bb.f:                                             ; preds = %PyCell_GetRef.exit
  %i.h = load i32, ptr %.val, align 8, !tbaa !11  ; 2 uses
  %i.i = icmp ugt i32 %i.h, -1073741825
  br i1 %i.i, label %PyCell_GetRef.exit15, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = add nuw i32 %i.h, 1
  store i32 %i.j, ptr %.val, align 8, !tbaa !11
  br label %PyCell_GetRef.exit15

PyCell_GetRef.exit15:                             ; preds = %bb.f, %bb.g
  br i1 %.not.i.i.i, label %PyCell_GetRef.exit15.thread.a, label %cell_compare_impl.exit.thread

cell_compare_impl.exit.thread:                    ; preds = %PyCell_GetRef.exit15
  %i.k = tail call ptr @PyObject_RichCompare(ptr noundef nonnull %.val11, ptr noundef nonnull %.val, i32 noundef %2) #4
  br label %bb.o

PyCell_GetRef.exit15.thread.a:                    ; preds = %PyCell_GetRef.exit15.thread, %PyCell_GetRef.exit15
  %3 = phi i1 [ %.not.i.i.i.not, %PyCell_GetRef.exit15.thread ], [ false, %PyCell_GetRef.exit15 ] ; 4 uses
  %4 = xor i1 %.not.i.i.i14, true                 ; 4 uses
  switch i32 %2, label %bb.n [
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 0, label %bb.j
    i32 4, label %bb.k
    i32 1, label %bb.l
    i32 5, label %bb.m
  ]

bb.h:                                             ; preds = %PyCell_GetRef.exit15.thread.a
  %i.l = xor i1 %3, %4
  %_Py_TrueStruct._Py_FalseStruct.i = select i1 %i.l, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %cell_compare_impl.exit

bb.i:                                             ; preds = %PyCell_GetRef.exit15.thread.a
  %i.m = xor i1 %3, %4
  %_Py_FalseStruct._Py_TrueStruct.i = select i1 %i.m, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %cell_compare_impl.exit

bb.j:                                             ; preds = %PyCell_GetRef.exit15.thread.a
  %i.n = and i1 %.not.i.i.i, %4
  %_Py_TrueStruct._Py_FalseStruct23.i = select i1 %i.n, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %cell_compare_impl.exit

bb.k:                                             ; preds = %PyCell_GetRef.exit15.thread.a
  %i.o = and i1 %.not.i.i.i14, %3
  %_Py_TrueStruct._Py_FalseStruct24.i = select i1 %i.o, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %cell_compare_impl.exit

bb.l:                                             ; preds = %PyCell_GetRef.exit15.thread.a
  %.not21.i = and i1 %.not.i.i.i14, %3
  %_Py_FalseStruct._Py_TrueStruct25.i = select i1 %.not21.i, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %cell_compare_impl.exit

bb.m:                                             ; preds = %PyCell_GetRef.exit15.thread.a
  %.not.i = and i1 %.not.i.i.i, %4
  %_Py_FalseStruct._Py_TrueStruct26.i = select i1 %.not.i, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %cell_compare_impl.exit

bb.n:                                             ; preds = %PyCell_GetRef.exit15.thread.a
  unreachable

cell_compare_impl.exit:                           ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i = phi ptr [ %_Py_FalseStruct._Py_TrueStruct25.i, %bb.l ], [ %_Py_TrueStruct._Py_FalseStruct.i, %bb.h ], [ %_Py_TrueStruct._Py_FalseStruct24.i, %bb.k ], [ %_Py_FalseStruct._Py_TrueStruct.i, %bb.i ], [ %_Py_FalseStruct._Py_TrueStruct26.i, %bb.m ], [ %_Py_TrueStruct._Py_FalseStruct23.i, %bb.j ] ; 2 uses
  br i1 %.not.i.i.i, label %Py_XDECREF.exit, label %bb.o

bb.o:                                             ; preds = %cell_compare_impl.exit.thread, %cell_compare_impl.exit
  %.0.i22 = phi ptr [ %i.k, %cell_compare_impl.exit.thread ], [ %.0.i, %cell_compare_impl.exit ] ; 3 uses
  %i.p = load i32, ptr %.val11, align 8, !tbaa !11 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.p, -1
  br i1 %.not.i.i, label %bb.p, label %Py_XDECREF.exit

bb.p:                                             ; preds = %bb.o
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %.val11, align 8, !tbaa !11
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.q, label %Py_XDECREF.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val11) #4
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %cell_compare_impl.exit, %bb.o, %bb.p, %bb.q
  %.0.i23 = phi ptr [ %.0.i, %cell_compare_impl.exit ], [ %.0.i22, %bb.o ], [ %.0.i22, %bb.p ], [ %.0.i22, %bb.q ] ; 4 uses
  br i1 %.not.i.i.i14, label %Py_XDECREF.exit19, label %bb.r

bb.r:                                             ; preds = %Py_XDECREF.exit
  %i.s = load i32, ptr %.val, align 8, !tbaa !11  ; 2 uses
  %.not.i.i18 = icmp sgt i32 %i.s, -1
  br i1 %.not.i.i18, label %bb.s, label %Py_XDECREF.exit19

bb.s:                                             ; preds = %bb.r
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %.val, align 8, !tbaa !11
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.t, label %Py_XDECREF.exit19

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #4
  br label %Py_XDECREF.exit19

Py_XDECREF.exit19:                                ; preds = %bb.t, %bb.s, %bb.r, %Py_XDECREF.exit, %bb.a, %bb.b
  %.0 = phi ptr [ @_Py_NotImplementedStruct, %bb.a ], [ @_Py_NotImplementedStruct, %bb.b ], [ %.0.i23, %Py_XDECREF.exit ], [ %.0.i23, %bb.r ], [ %.0.i23, %bb.s ], [ %.0.i23, %bb.t ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @cell_new(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8, !tbaa !32
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyArg_NoKeywords(ptr noundef nonnull @.str.1, ptr noundef nonnull %2) #4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %PyCell_New.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = call i32 (ptr, ptr, i64, i64, ...) @PyArg_UnpackTuple(ptr noundef %1, ptr noundef nonnull @.str.1, i64 noundef 0, i64 noundef 1, ptr noundef nonnull %i.a) #4
  %.not5 = icmp eq i32 %i.d, 0
  br i1 %.not5, label %PyCell_New.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %i.f = call ptr @_PyObject_GC_New(ptr noundef nonnull @PyCell_Type) #4, !inline_history !41 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %PyCell_New.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_Py_XNewRef.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load i32, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.i = icmp ugt i32 %i.h, -1073741825
  br i1 %i.i, label %_Py_XNewRef.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = add nuw i32 %i.h, 1
  store i32 %i.j, ptr %i.e, align 8, !tbaa !11
  br label %_Py_XNewRef.exit.i

_Py_XNewRef.exit.i:                               ; preds = %bb.g, %bb.f, %bb.e
  %i.k = getelementptr i8, ptr %i.f, i64 16
  store ptr %i.e, ptr %i.k, align 8, !tbaa !17
  %i.l = getelementptr i8, ptr %i.f, i64 -16      ; 2 uses
  %i.m = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19   ; 7 uses
  %i.o = getelementptr i8, ptr %i.n, i64 7408
  %i.p = getelementptr i8, ptr %i.n, i64 7416     ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !22   ; 2 uses
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.t = load i64, ptr %i.r, align 8, !tbaa !23
  %i.u = and i64 %i.t, 3
  %i.v = or i64 %i.u, %i.s
  store i64 %i.v, ptr %i.r, align 8, !tbaa !23
  %i.w = getelementptr i8, ptr %i.f, i64 -8       ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !22
  %i.y = and i64 %i.x, 3
  %i.z = or i64 %i.y, %i.q
  store i64 %i.z, ptr %i.w, align 8, !tbaa !22
  %i.aa = getelementptr i8, ptr %i.n, i64 7672
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !27
  %i.ac = xor i32 %i.ab, 1
  %i.ad = sext i32 %i.ac to i64
  %i.ae = ptrtoint ptr %i.o to i64
  %i.af = or i64 %i.ad, %i.ae
  store i64 %i.af, ptr %i.l, align 8, !tbaa !23
  store i64 %i.s, ptr %i.p, align 8, !tbaa !22
  %i.ag = getelementptr i8, ptr %i.n, i64 7428    ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !28
  %i.ai = add i32 %i.ah, 1                        ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !28
  %i.aj = getelementptr i8, ptr %i.n, i64 7656    ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !29
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !29
  %i.am = getelementptr i8, ptr %i.n, i64 7424
  %i.an = load i32, ptr %i.am, align 8, !tbaa !30
  %i.ao = icmp sgt i32 %i.ai, %i.an
  br i1 %i.ao, label %bb.h, label %PyCell_New.exit

bb.h:                                             ; preds = %_Py_XNewRef.exit.i
  %i.ap = getelementptr i8, ptr %i.n, i64 7400
  call void @_Py_TriggerGC(ptr noundef %i.ap) #4, !inline_history !41
  br label %PyCell_New.exit

PyCell_New.exit:                                  ; preds = %bb.h, %_Py_XNewRef.exit.i, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ %i.f, %_Py_XNewRef.exit.i ], [ %i.f, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.0
}

declare void @_Py_TriggerGC(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #3

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #2

declare void @PyObject_GC_Del(ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #2

declare ptr @PyObject_RichCompare(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @cell_get_contents(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !17  ; 4 uses
  %.not.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i, label %PyCell_GetRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %.val, align 8, !tbaa !11  ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %PyCell_GetRef.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %.val, align 8, !tbaa !11
  br label %PyCell_GetRef.exit.thread

PyCell_GetRef.exit:                               ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.6) #4
  br label %PyCell_GetRef.exit.thread

PyCell_GetRef.exit.thread:                        ; preds = %bb.c, %bb.b, %PyCell_GetRef.exit
  ret ptr %.val
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @cell_set_contents(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %Py_XINCREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.b = icmp ugt i32 %i.a, -1073741825
  br i1 %i.b, label %Py_XINCREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = add nuw i32 %i.a, 1
  store i32 %i.c, ptr %1, align 8, !tbaa !11
  br label %Py_XINCREF.exit

Py_XINCREF.exit:                                  ; preds = %bb.a, %bb.b, %bb.c
  %i.d = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 4 uses
  store ptr %1, ptr %i.d, align 8, !tbaa !17
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %PyCell_SetTakeRef.exit, label %bb.d

bb.d:                                             ; preds = %Py_XINCREF.exit
  %i.f = load i32, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i.i.i, label %bb.e, label %PyCell_SetTakeRef.exit

bb.e:                                             ; preds = %bb.d
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !11
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %PyCell_SetTakeRef.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #4
  br label %PyCell_SetTakeRef.exit

PyCell_SetTakeRef.exit:                           ; preds = %Py_XINCREF.exit, %bb.d, %bb.e, %bb.f
  ret i32 0
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_PyArg_NoKeywords(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyArg_UnpackTuple(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ...) local_unnamed_addr #2

end_hunk_0
