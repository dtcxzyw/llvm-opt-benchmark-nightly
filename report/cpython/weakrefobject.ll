inline.NumInlined: 431
inline.NumDeleted: 37
begin_hunk_0_@weakref_hash:bb.a
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.g, %bb.f, %_PyWeakref_GET_REF.exit.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !39
  br label %weakref_hash_lock_held.exit

weakref_hash_lock_held.exit:                      ; preds = %bb.a, %_PyWeakref_GET_REF.exit.thread.i, %Py_DECREF.exit.i
  %.1.i = phi i64 [ %i.b, %bb.a ], [ -1, %_PyWeakref_GET_REF.exit.thread.i ], [ %i.l, %Py_DECREF.exit.i ]
  ret i64 %.1.i
}

declare ptr @PyVectorcall_Call(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @gc_traverse(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #6 ; 2 uses
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %i.c, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @gc_clear(ptr noundef captures(address) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 5 uses
  %.not.i = icmp eq ptr %i.b, @_Py_NoneStruct
  br i1 %.not.i, label %clear_weakref_lock_held.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val9.i.i = load ptr, ptr %i.c, align 8, !tbaa !11 ; 2 uses
  %i.d = getelementptr i8, ptr %.val9.i.i, i64 168
  %.val9.val.i.i = load i64, ptr %i.d, align 8, !tbaa !25
  %i.e = and i64 %.val9.val.i.i, 2147483648
  %.not10.i.i = icmp eq i64 %i.e, 0
  br i1 %.not10.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.b, i64 168
  %i.g = load i64, ptr %i.f, align 8, !tbaa !25
  %i.h = and i64 %i.g, 2
  %.not8.i.i = icmp eq i64 %i.h, 0
  br i1 %.not8.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = tail call ptr @_PyStaticType_GetState(ptr noundef %i.j, ptr noundef nonnull %i.b) #6
  %i.l = getelementptr i8, ptr %i.k, i64 40
  br label %_PyObject_GET_WEAKREFS_LISTPTR.exit.i

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr i8, ptr %.val9.i.i, i64 208
  %i.n = load i64, ptr %i.m, align 8, !tbaa !15
  %i.o = getelementptr i8, ptr %i.b, i64 %i.n
  br label %_PyObject_GET_WEAKREFS_LISTPTR.exit.i

_PyObject_GET_WEAKREFS_LISTPTR.exit.i:            ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ %i.l, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.p = load ptr, ptr %.0.i.i, align 8, !tbaa !28
  %i.q = icmp eq ptr %i.p, %0
  %i.r = getelementptr i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34   ; 4 uses
  br i1 %i.q, label %bb.f, label %_PyObject_GET_WEAKREFS_LISTPTR.exit.i._crit_edge

bb.f:                                             ; preds = %_PyObject_GET_WEAKREFS_LISTPTR.exit.i
  store ptr %i.s, ptr %.0.i.i, align 8, !tbaa !28
  br label %_PyObject_GET_WEAKREFS_LISTPTR.exit.i._crit_edge

_PyObject_GET_WEAKREFS_LISTPTR.exit.i._crit_edge: ; preds = %_PyObject_GET_WEAKREFS_LISTPTR.exit.i, %bb.f
  store ptr @_Py_NoneStruct, ptr %i.a, align 8, !tbaa !32
  %i.t = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35   ; 3 uses
  %.not23.i = icmp eq ptr %i.u, null
  br i1 %.not23.i, label %._crit_edge.i, label %bb.g

bb.g:                                             ; preds = %_PyObject_GET_WEAKREFS_LISTPTR.exit.i._crit_edge
  %i.v = getelementptr i8, ptr %i.u, i64 48
  store ptr %i.s, ptr %i.v, align 8, !tbaa !34
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g, %_PyObject_GET_WEAKREFS_LISTPTR.exit.i._crit_edge
  %.not24.i = icmp eq ptr %i.s, null
  br i1 %.not24.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.w = getelementptr i8, ptr %i.s, i64 40
  store ptr %i.u, ptr %i.w, align 8, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  br label %clear_weakref_lock_held.exit

clear_weakref_lock_held.exit:                     ; preds = %bb.a, %bb.i
  %i.x = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !36   ; 4 uses
  store ptr null, ptr %i.x, align 8, !tbaa !36
  %.not.i2 = icmp eq ptr %i.y, null
  br i1 %.not.i2, label %Py_XDECREF.exit, label %bb.j

bb.j:                                             ; preds = %clear_weakref_lock_held.exit
  %i.z = load i32, ptr %i.y, align 8, !tbaa !37   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.z, -1
  br i1 %.not.i.i, label %bb.k, label %Py_XDECREF.exit

bb.k:                                             ; preds = %bb.j
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !37
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.l, label %Py_XDECREF.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.y) #6
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %clear_weakref_lock_held.exit, %bb.j, %bb.k, %bb.l
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @weakref_richcompare(ptr noundef readonly captures(address) %0, ptr noundef readonly captures(address) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = add i32 %2, -4
  %or.cond = icmp ult i32 %i.a, -2
  br i1 %or.cond, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val45 = load ptr, ptr %i.b, align 8, !tbaa !11 ; 2 uses
  %.not.i46 = icmp eq ptr %.val45, @_PyWeakref_RefType
  br i1 %.not.i46, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.b
  %i.c = tail call i32 @PyType_IsSubtype(ptr noundef %.val45, ptr noundef nonnull @_PyWeakref_RefType) #6, !inline_history !41
  %.not67 = icmp eq i32 %i.c, 0
  br i1 %.not67, label %bb.c, label %PyObject_TypeCheck.exit.thread

bb.c:                                             ; preds = %PyObject_TypeCheck.exit
  %.val41 = load ptr, ptr %i.b, align 8, !tbaa !11 ; 2 uses
  %.not = icmp eq ptr %.val41, @_PyWeakref_ProxyType
  %.not68 = icmp eq ptr %.val41, @_PyWeakref_CallableProxyType
  %or.cond72 = or i1 %.not, %.not68
  br i1 %or.cond72, label %PyObject_TypeCheck.exit.thread, label %Py_DECREF.exit

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.b, %bb.c, %PyObject_TypeCheck.exit
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val44 = load ptr, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %.not.i47 = icmp eq ptr %.val44, @_PyWeakref_RefType
  br i1 %.not.i47, label %PyObject_TypeCheck.exit48.thread, label %PyObject_TypeCheck.exit48

PyObject_TypeCheck.exit48:                        ; preds = %PyObject_TypeCheck.exit.thread
  %i.e = tail call i32 @PyType_IsSubtype(ptr noundef %.val44, ptr noundef nonnull @_PyWeakref_RefType) #6, !inline_history !41
  %.not69 = icmp eq i32 %i.e, 0
  br i1 %.not69, label %bb.d, label %PyObject_TypeCheck.exit48.thread

bb.d:                                             ; preds = %PyObject_TypeCheck.exit48
  %.val39 = load ptr, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %.not70 = icmp eq ptr %.val39, @_PyWeakref_ProxyType
  %.not71 = icmp eq ptr %.val39, @_PyWeakref_CallableProxyType
  %or.cond73 = or i1 %.not70, %.not71
  br i1 %or.cond73, label %PyObject_TypeCheck.exit48.thread, label %Py_DECREF.exit

PyObject_TypeCheck.exit48.thread:                 ; preds = %PyObject_TypeCheck.exit.thread, %bb.d, %PyObject_TypeCheck.exit48
  %i.f = getelementptr i8, ptr %0, i64 16
  %.val43 = load ptr, ptr %i.f, align 8, !tbaa !32 ; 5 uses
  %i.g = icmp eq ptr %.val43, @_Py_NoneStruct
  br i1 %i.g, label %_PyWeakref_GET_REF.exit, label %bb.e

bb.e:                                             ; preds = %PyObject_TypeCheck.exit48.thread
  %.val.i.i = load i32, ptr %.val43, align 8, !tbaa !37 ; 3 uses
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %_PyWeakref_GET_REF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp ugt i32 %.val.i.i, -1073741825
  br i1 %i.h, label %_PyWeakref_GET_REF.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = add nuw i32 %.val.i.i, 1
  store i32 %i.i, ptr %.val43, align 8, !tbaa !37
  br label %_PyWeakref_GET_REF.exit

_PyWeakref_GET_REF.exit:                          ; preds = %PyObject_TypeCheck.exit48.thread, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ null, %PyObject_TypeCheck.exit48.thread ], [ null, %bb.e ], [ %.val43, %bb.f ], [ %.val43, %bb.g ] ; 9 uses
  %i.j = getelementptr i8, ptr %1, i64 16
  %.val42 = load ptr, ptr %i.j, align 8, !tbaa !32 ; 10 uses
  %i.k = icmp eq ptr %.val42, @_Py_NoneStruct
  br i1 %i.k, label %_PyWeakref_GET_REF.exit52.thread, label %bb.h

bb.h:                                             ; preds = %_PyWeakref_GET_REF.exit
  %.val.i.i49 = load i32, ptr %.val42, align 8, !tbaa !37 ; 3 uses
  %.not.i.i50 = icmp eq i32 %.val.i.i49, 0
  br i1 %.not.i.i50, label %_PyWeakref_GET_REF.exit52.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = icmp ugt i32 %.val.i.i49, -1073741825
  br i1 %i.l, label %_PyWeakref_GET_REF.exit52, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = add nuw i32 %.val.i.i49, 1
  store i32 %i.m, ptr %.val42, align 8, !tbaa !37
  br label %_PyWeakref_GET_REF.exit52

_PyWeakref_GET_REF.exit52.thread:                 ; preds = %_PyWeakref_GET_REF.exit, %bb.h
  %i.n = icmp eq ptr %.0.i, null
  br i1 %i.n, label %Py_XDECREF.exit57, label %bb.k

_PyWeakref_GET_REF.exit52:                        ; preds = %bb.i, %bb.j
  %i.o = icmp eq ptr %.0.i, null
  br i1 %i.o, label %Py_XDECREF.exit.a, label %bb.n

bb.k:                                             ; preds = %_PyWeakref_GET_REF.exit52.thread
  %i.p = load i32, ptr %.0.i, align 8, !tbaa !37  ; 2 uses
  %.not.i.i54 = icmp sgt i32 %i.p, -1
  br i1 %.not.i.i54, label %bb.l, label %Py_XDECREF.exit57

bb.l:                                             ; preds = %bb.k
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %.0.i, align 8, !tbaa !37
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %Py_XDECREF.exit57.sink.split, label %Py_XDECREF.exit57

Py_XDECREF.exit.a:                                ; preds = %_PyWeakref_GET_REF.exit52
  %3 = load i32, ptr %.val42, align 8, !tbaa !37  ; 2 uses
  %.not.i.i56 = icmp sgt i32 %3, -1
  br i1 %.not.i.i56, label %bb.m, label %Py_XDECREF.exit57

bb.m:                                             ; preds = %Py_XDECREF.exit.a
  %4 = add nsw i32 %3, -1                         ; 2 uses
  store i32 %4, ptr %.val42, align 8, !tbaa !37
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %Py_XDECREF.exit57.sink.split, label %Py_XDECREF.exit57

Py_XDECREF.exit57.sink.split:                     ; preds = %bb.m, %bb.l
  %.0.i.sink = phi ptr [ %.0.i, %bb.l ], [ %.val42, %bb.m ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i.sink) #6
  br label %Py_XDECREF.exit57

Py_XDECREF.exit57:                                ; preds = %Py_XDECREF.exit57.sink.split, %bb.k, %bb.l, %_PyWeakref_GET_REF.exit52.thread, %Py_XDECREF.exit.a, %bb.m
  %i.s = icmp eq ptr %0, %1
  %i.t = icmp eq i32 %2, 3
  %spec.select = xor i1 %i.s, %i.t
  %.0 = select i1 %spec.select, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %Py_DECREF.exit

bb.n:                                             ; preds = %_PyWeakref_GET_REF.exit52
  %i.u = tail call ptr @PyObject_RichCompare(ptr noundef nonnull %.0.i, ptr noundef nonnull %.val42, i32 noundef %2) #6 ; 3 uses
  %i.v = load i32, ptr %.0.i, align 8, !tbaa !37  ; 2 uses
  %.not.i36 = icmp sgt i32 %i.v, -1
  br i1 %.not.i36, label %bb.o, label %Py_DECREF.exit37

bb.o:                                             ; preds = %bb.n
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %.0.i, align 8, !tbaa !37
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.p, label %Py_DECREF.exit37

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i) #6
  br label %Py_DECREF.exit37

Py_DECREF.exit37:                                 ; preds = %bb.n, %bb.o, %bb.p
  %i.y = load i32, ptr %.val42, align 8, !tbaa !37 ; 2 uses
  %.not.i = icmp sgt i32 %i.y, -1
  br i1 %.not.i, label %bb.q, label %Py_DECREF.exit

bb.q:                                             ; preds = %Py_DECREF.exit37
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %.val42, align 8, !tbaa !37
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.r, label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val42) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.r, %bb.q, %Py_DECREF.exit37, %Py_XDECREF.exit57, %bb.a
  %.2 = phi ptr [ @_Py_NotImplementedStruct, %bb.c ], [ @_Py_NotImplementedStruct, %bb.a ], [ @_Py_NotImplementedStruct, %bb.d ], [ %.0, %Py_XDECREF.exit57 ], [ %i.u, %Py_DECREF.exit37 ], [ %i.u, %bb.q ], [ %i.u, %bb.r ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @weakref___init__(ptr readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyArg_NoKeywords(ptr noundef nonnull @.str.16, ptr noundef nonnull %2) #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %.split

.split:                                           ; preds = %bb.b, %bb.a
  %i.d = call i32 (ptr, ptr, i64, i64, ...) @PyArg_UnpackTuple(ptr noundef %1, ptr noundef nonnull @.str.17, i64 noundef 1, i64 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a) #6
  %.not6 = icmp eq i32 %i.d, 0
  %. = sext i1 %.not6 to i32
  br label %bb.c

bb.c:                                             ; preds = %.split, %bb.b
  %.0 = phi i32 [ %., %.split ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare ptr @PyType_GenericAlloc(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @weakref___new__(ptr noundef %0, ptr noundef %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store ptr null, ptr %i.b, align 8, !tbaa !40
  %i.c = call i32 (ptr, ptr, i64, i64, ...) @PyArg_UnpackTuple(ptr noundef %1, ptr noundef nonnull @.str.18, i64 noundef 1, i64 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.f = call fastcc ptr @get_or_create_weakref(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.0
}

declare void @PyObject_GC_Del(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @proxy_dealloc(ptr noundef %0) #0 {
bb.a:
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #6
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, @_Py_NoneStruct
  br i1 %.not.i.i, label %clear_weakref_lock_held.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val9.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !11 ; 2 uses
  %i.d = getelementptr i8, ptr %.val9.i.i.i, i64 168
  %.val9.val.i.i.i = load i64, ptr %i.d, align 8, !tbaa !25
  %i.e = and i64 %.val9.val.i.i.i, 2147483648
  %.not10.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not10.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.b, i64 168
  %i.g = load i64, ptr %i.f, align 8, !tbaa !25
  %i.h = and i64 %i.g, 2
  %.not8.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not8.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = tail call ptr @_PyStaticType_GetState(ptr noundef %i.j, ptr noundef nonnull %i.b) #6
  %i.l = getelementptr i8, ptr %i.k, i64 40
  br label %_PyObject_GET_WEAKREFS_LISTPTR.exit.i.i

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr i8, ptr %.val9.i.i.i, i64 208
  %i.n = load i64, ptr %i.m, align 8, !tbaa !15
  %i.o = getelementptr i8, ptr %i.b, i64 %i.n
  br label %_PyObject_GET_WEAKREFS_LISTPTR.exit.i.i

_PyObject_GET_WEAKREFS_LISTPTR.exit.i.i:          ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.l, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.p = load ptr, ptr %.0.i.i.i, align 8, !tbaa !28
  %i.q = icmp eq ptr %i.p, %0
  %i.r = getelementptr i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34   ; 4 uses
  br i1 %i.q, label %bb.f, label %_PyObject_GET_WEAKREFS_LISTPTR.exit.i._crit_edge.i

bb.f:                                             ; preds = %_PyObject_GET_WEAKREFS_LISTPTR.exit.i.i
  store ptr %i.s, ptr %.0.i.i.i, align 8, !tbaa !28
  br label %_PyObject_GET_WEAKREFS_LISTPTR.exit.i._crit_edge.i

_PyObject_GET_WEAKREFS_LISTPTR.exit.i._crit_edge.i: ; preds = %bb.f, %_PyObject_GET_WEAKREFS_LISTPTR.exit.i.i
  store ptr @_Py_NoneStruct, ptr %i.a, align 8, !tbaa !32
  %i.t = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35   ; 3 uses
  %.not23.i.i = icmp eq ptr %i.u, null
  br i1 %.not23.i.i, label %._crit_edge.i.i, label %bb.g

bb.g:                                             ; preds = %_PyObject_GET_WEAKREFS_LISTPTR.exit.i._crit_edge.i
  %i.v = getelementptr i8, ptr %i.u, i64 48
  store ptr %i.s, ptr %i.v, align 8, !tbaa !34
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.g, %_PyObject_GET_WEAKREFS_LISTPTR.exit.i._crit_edge.i
  %.not24.i.i = icmp eq ptr %i.s, null
  br i1 %.not24.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.w = getelementptr i8, ptr %i.s, i64 40
  store ptr %i.u, ptr %i.w, align 8, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  br label %clear_weakref_lock_held.exit.i

clear_weakref_lock_held.exit.i:                   ; preds = %bb.i, %bb.a
  %i.x = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !36   ; 4 uses
  store ptr null, ptr %i.x, align 8, !tbaa !36
  %.not.i2.i = icmp eq ptr %i.y, null
  br i1 %.not.i2.i, label %clear_weakref.exit, label %bb.j

bb.j:                                             ; preds = %clear_weakref_lock_held.exit.i
  %i.z = load i32, ptr %i.y, align 8, !tbaa !37   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.z, -1
  br i1 %.not.i.i.i, label %bb.k, label %clear_weakref.exit

bb.k:                                             ; preds = %bb.j
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !37
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.l, label %clear_weakref.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.y) #6
  br label %clear_weakref.exit

clear_weakref.exit:                               ; preds = %clear_weakref_lock_held.exit.i, %bb.j, %bb.k, %bb.l
  tail call void @PyObject_GC_Del(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @proxy_repr(ptr noundef %0) #0 {
end_hunk_0
