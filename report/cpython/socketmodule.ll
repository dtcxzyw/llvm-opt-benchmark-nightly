inline.NumInlined: 287
inline.NumDeleted: 62
begin_hunk_0_@sock_capi_destroy:bb.a
bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !23
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_XDECREF.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #11
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !122  ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %.not.i4.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i4.i, label %bb.e, label %Py_DECREF.exit5.i

bb.e:                                             ; preds = %Py_XDECREF.exit.i
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !23
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %Py_DECREF.exit5.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #11
  br label %Py_DECREF.exit5.i

Py_DECREF.exit5.i:                                ; preds = %bb.f, %bb.e, %Py_XDECREF.exit.i
  %i.k = getelementptr i8, ptr %i.a, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !123  ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i.i, label %bb.g, label %sock_capi_free.exit

bb.g:                                             ; preds = %Py_DECREF.exit5.i
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !23
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %sock_capi_free.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #11
  br label %sock_capi_free.exit

sock_capi_free.exit:                              ; preds = %Py_DECREF.exit5.i, %bb.g, %bb.h
  tail call void @PyMem_Free(ptr noundef nonnull %i.a) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sock_capi_free(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !120    ; 4 uses
  %.not.i7 = icmp eq ptr %i.a, null
  br i1 %.not.i7, label %Py_XDECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.b, -1
  br i1 %.not.i.i, label %bb.c, label %Py_XDECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !23
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %Py_XDECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #11
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !122  ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %.not.i4 = icmp sgt i32 %i.g, -1
  br i1 %.not.i4, label %bb.e, label %Py_DECREF.exit5

bb.e:                                             ; preds = %Py_XDECREF.exit
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !23
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %Py_DECREF.exit5

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #11
  br label %Py_DECREF.exit5

Py_DECREF.exit5:                                  ; preds = %Py_XDECREF.exit, %bb.e, %bb.f
  %i.j = getelementptr i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !123  ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %Py_DECREF.exit5
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !23
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit5, %bb.g, %bb.h
  tail call void @PyMem_Free(ptr noundef nonnull %0) #11
  ret void
}

declare i32 @_PyCapsule_SetTraverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @sock_capi_traverse(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @PyCapsule_GetPointer(ptr noundef %0, ptr noundef nonnull @.str.122) #11
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #11 ; 2 uses
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %i.c, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sock_capi_clear(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyCapsule_GetPointer(ptr noundef %0, ptr noundef nonnull @.str.122) #11 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !22
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !23
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret i32 0
}

declare i32 @PyModule_Add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyModule_AddIntConstant(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @sock_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @PyObject_CallFinalizerFromDealloc(ptr noundef %0) #11
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !44  ; 4 uses
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #11
  %i.d = getelementptr i8, ptr %.val, i64 320
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !124
  tail call void %i.e(ptr noundef %0) #11
  %i.f = load i32, ptr %.val, align 8, !tbaa !23  ; 2 uses
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %.val, align 8, !tbaa !23
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

declare i32 @_PyObject_VisitType(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @sock_repr(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i32, ptr %i.a monotonic, align 4
  %i.e = sext i32 %i.d to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ -1, %bb.a ]
  %i.f = getelementptr i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !87
  %i.h = getelementptr i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !90
  %i.j = getelementptr i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !91
  %i.l = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.536, i64 noundef %.0, i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.k) #11
  ret ptr %i.l
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @sock_initobj(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %union.sock_addr, align 8           ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca [4 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %i.h = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.h, align 8, !tbaa !67  ; 5 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.i = getelementptr i8, ptr %2, i64 16
  %.val66 = load i64, ptr %i.i, align 8, !tbaa !125
  %i.j = add i64 %.val66, %.val
  %i.k = getelementptr i8, ptr %1, i64 32
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %.val, 5
  %i.m = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.n = icmp ne ptr %i.m, null
  %or.cond7 = and i1 %i.n, %i.l
  br i1 %or.cond7, label %.thread69, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.o = phi ptr [ %i.k, %.thread ], [ %i.m, %bb.b ]
  %i.p = phi i64 [ %i.j, %.thread ], [ %.val, %bb.b ]
  %i.q = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.o, i64 noundef %.val, ptr noundef %2, ptr noundef null, ptr noundef nonnull @sock_initobj._parser, i32 noundef 0, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.g) #11 ; 2 uses
  %.not56 = icmp eq ptr %i.q, null
  br i1 %.not56, label %sock_initobj_impl.exit, label %.thread69

.thread69:                                        ; preds = %bb.b, %bb.c
  %i.r = phi ptr [ %i.q, %bb.c ], [ %i.m, %bb.b ] ; 4 uses
  %i.s = phi i64 [ %i.p, %bb.c ], [ %.val, %bb.b ] ; 3 uses
  %.not57 = icmp eq i64 %i.s, 0
  br i1 %.not57, label %bb.q, label %bb.d

bb.d:                                             ; preds = %.thread69
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !24   ; 2 uses
  %.not58 = icmp eq ptr %i.t, null
  br i1 %.not58, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = call i32 @PyLong_AsInt(ptr noundef nonnull %i.t) #11 ; 3 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = call ptr @PyErr_Occurred() #11
  %.not59 = icmp eq ptr %i.w, null
  br i1 %.not59, label %bb.g, label %sock_initobj_impl.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = add i64 %i.s, -1                         ; 2 uses
  %.not60 = icmp eq i64 %i.x, 0
  br i1 %.not60, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.044 = phi i64 [ %i.x, %bb.g ], [ %i.s, %bb.d ] ; 2 uses
  %.042 = phi i32 [ %i.u, %bb.g ], [ -1, %bb.d ]  ; 3 uses
  %i.y = getelementptr i8, ptr %i.r, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24   ; 2 uses
  %.not61 = icmp eq ptr %i.z, null
  br i1 %.not61, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = call i32 @PyLong_AsInt(ptr noundef nonnull %i.z) #11 ; 3 uses
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = call ptr @PyErr_Occurred() #11
  %.not62 = icmp eq ptr %i.ac, null
  br i1 %.not62, label %bb.k, label %sock_initobj_impl.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = add i64 %.044, -1                       ; 2 uses
  %.not63 = icmp eq i64 %i.ad, 0
  br i1 %.not63, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.145 = phi i64 [ %i.ad, %bb.k ], [ %.044, %bb.h ]
  %.040 = phi i32 [ %i.aa, %bb.k ], [ -1, %bb.h ] ; 2 uses
  %i.ae = getelementptr i8, ptr %i.r, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 2 uses
  %.not64 = icmp eq ptr %i.af, null
  br i1 %.not64, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = call i32 @PyLong_AsInt(ptr noundef nonnull %i.af) #11 ; 3 uses
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = call ptr @PyErr_Occurred() #11
  %.not65 = icmp eq ptr %i.ai, null
  br i1 %.not65, label %bb.o, label %sock_initobj_impl.exit

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aj = icmp ugt i64 %.145, 1
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.l
  %.039 = phi i32 [ %i.ag, %bb.o ], [ -1, %bb.l ]
  %i.ak = getelementptr i8, ptr %i.r, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.k, %bb.g, %.thread69, %bb.p
  %.143 = phi i32 [ %.042, %bb.p ], [ %.042, %bb.o ], [ %.042, %bb.k ], [ %i.u, %bb.g ], [ -1, %.thread69 ] ; 6 uses
  %.141 = phi i32 [ %.040, %bb.p ], [ %.040, %bb.o ], [ %i.aa, %bb.k ], [ -1, %bb.g ], [ -1, %.thread69 ] ; 5 uses
  %.1 = phi i32 [ %.039, %bb.p ], [ %i.ag, %bb.o ], [ -1, %bb.k ], [ -1, %bb.g ], [ -1, %.thread69 ] ; 5 uses
  %.0 = phi ptr [ %i.al, %bb.p ], [ null, %bb.o ], [ null, %bb.k ], [ null, %bb.g ], [ null, %.thread69 ] ; 3 uses
  %i.am = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.an = call ptr @PyType_GetModuleByDef(ptr noundef %.val.i, ptr noundef nonnull @socketmodule) #11, !inline_history !129
  %i.ao = getelementptr i8, ptr %i.an, i64 24
  %.val.i.i = load ptr, ptr %i.ao, align 8, !tbaa !10 ; 2 uses
  %i.ap = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.670, ptr noundef nonnull @.str.671, ptr noundef %0, i32 noundef %.143, i32 noundef %.141, i32 noundef %.1) #11, !inline_history !130
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %sock_initobj_impl.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = icmp ne ptr %.0, null
  %i.as = icmp ne ptr %.0, @_Py_NoneStruct
  %or.cond.i = and i1 %i.ar, %i.as
  br i1 %or.cond.i, label %bb.s, label %bb.ai

bb.s:                                             ; preds = %bb.r
  %i.at = call i64 @PyLong_AsLong(ptr noundef nonnull %.0) #11, !inline_history !130
  %i.au = trunc i64 %i.at to i32                  ; 6 uses
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aw = call ptr @PyErr_Occurred() #11, !inline_history !130
  %.not75.i = icmp eq ptr %i.aw, null
  br i1 %.not75.i, label %.thread.i, label %sock_initobj_impl.exit

bb.u:                                             ; preds = %bb.s
  %i.ax = icmp slt i32 %i.au, 0
  br i1 %i.ax, label %.thread.i, label %bb.v

.thread.i:                                        ; preds = %bb.u, %bb.t
  %i.ay = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.ay, ptr noundef nonnull @.str.672) #11, !inline_history !130
  br label %sock_initobj_impl.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 128, ptr %i.b, align 4, !tbaa !6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false)
  %i.az = call i32 @getsockname(i32 noundef %i.au, ptr nonnull %3, ptr noundef nonnull %i.b) #11, !inline_history !130
  %i.ba = icmp eq i32 %i.az, 0
  %i.bb = icmp eq i32 %.143, -1                   ; 2 uses
  br i1 %i.ba, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  br i1 %i.bb, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.bc = load i16, ptr %3, align 8, !tbaa !23
  %i.bd = zext i16 %i.bc to i32
  br label %bb.ab

bb.y:                                             ; preds = %bb.v
  br i1 %i.bb, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
end_hunk_0
begin_hunk_1_@sock_accept:bb.a

bb.o:                                             ; preds = %bb.n
  %i.ab = call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull %i.q, ptr noundef nonnull %i.z) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi ptr [ %i.ab, %bb.o ], [ null, %bb.n ] ; 4 uses
  %i.ac = load i32, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ac, -1
  br i1 %.not.i.i, label %bb.q, label %Py_XDECREF.exit

bb.q:                                             ; preds = %bb.p
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.q, align 8, !tbaa !23
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.r, label %Py_XDECREF.exit

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %i.q) #11
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.p, %bb.q, %bb.r
  br i1 %i.aa, label %Py_XDECREF.exit25, label %bb.s

bb.s:                                             ; preds = %Py_XDECREF.exit
  %i.af = load i32, ptr %i.z, align 8, !tbaa !23  ; 2 uses
  %.not.i.i24 = icmp sgt i32 %i.af, -1
  br i1 %.not.i.i24, label %bb.t, label %Py_XDECREF.exit25

bb.t:                                             ; preds = %bb.s
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.z, align 8, !tbaa !23
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.u, label %Py_XDECREF.exit25

bb.u:                                             ; preds = %bb.t
  call void @_Py_Dealloc(ptr noundef nonnull %i.z) #11
  br label %Py_XDECREF.exit25

Py_XDECREF.exit25:                                ; preds = %bb.m, %bb.k, %bb.u, %bb.t, %bb.s, %Py_XDECREF.exit, %getsockaddrlen.exit, %bb.h
  %.018 = phi ptr [ null, %getsockaddrlen.exit ], [ null, %bb.h ], [ %.0, %bb.u ], [ %.0, %Py_XDECREF.exit ], [ %.0, %bb.s ], [ %.0, %bb.t ], [ null, %bb.k ], [ null, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %.018
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_bind(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %union.sock_addr, align 8           ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call fastcc i32 @getsockaddrarg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.a, ptr noundef nonnull @.str.538)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.567, ptr noundef nonnull @.str.568, ptr noundef %0, ptr noundef %1) #11
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call ptr @PyEval_SaveThread() #11
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load atomic i32, ptr %i.f monotonic, align 4
  %i.h = load i32, ptr %i.a, align 4, !tbaa !6
  %i.i = call i32 @bind(i32 noundef %i.g, ptr nonnull %2, i32 noundef %i.h) #11
  call void @PyEval_RestoreThread(ptr noundef %i.e) #11
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92
  %i.m = call ptr %i.l() #11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi ptr [ null, %bb.a ], [ %i.m, %bb.d ], [ null, %bb.b ], [ @_Py_NoneStruct, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_socket_socket_close(ptr noundef captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.b, -1
  br i1 %.not.i, label %_socket_socket_close_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store atomic i32 -1, ptr %i.a monotonic, align 4
  %i.c = tail call ptr @PyEval_SaveThread() #11
  %i.d = tail call i32 @close(i32 noundef %i.b) #11
  tail call void @PyEval_RestoreThread(ptr noundef %i.c) #11
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_socket_socket_close_impl.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__errno_location() #12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !6
  %.not8.i = icmp eq i32 %i.g, 104
  br i1 %.not8.i, label %_socket_socket_close_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.j = tail call ptr %i.i() #11, !inline_history !138
  br label %_socket_socket_close_impl.exit

_socket_socket_close_impl.exit:                   ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.j, %bb.d ], [ @_Py_NoneStruct, %bb.b ], [ @_Py_NoneStruct, %bb.c ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_connect(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %union.sock_addr, align 8           ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call fastcc i32 @getsockaddrarg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.a, ptr noundef nonnull @.str.539)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.601, ptr noundef nonnull @.str.568, ptr noundef %0, ptr noundef %1) #11
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.a, align 4, !tbaa !6
  %i.f = call fastcc i32 @internal_connect(ptr noundef %0, ptr noundef %2, i32 noundef %i.e, i32 noundef 1)
  %i.g = icmp slt i32 %i.f, 0
  %._Py_NoneStruct = select i1 %i.g, ptr null, ptr @_Py_NoneStruct
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %._Py_NoneStruct, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_connect_ex(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %union.sock_addr, align 8           ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call fastcc i32 @getsockaddrarg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.a, ptr noundef nonnull @.str.540)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.601, ptr noundef nonnull @.str.568, ptr noundef %0, ptr noundef %1) #11
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.a, align 4, !tbaa !6
  %i.f = call fastcc i32 @internal_connect(ptr noundef %0, ptr noundef %2, i32 noundef %i.e, i32 noundef 0) ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = call ptr @PyErr_Occurred() #11
  %.not8 = icmp eq ptr %i.h, null
  br i1 %.not8, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = sext i32 %i.f to i64
  %i.j = call ptr @PyLong_FromLong(i64 noundef %i.i) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a, %bb.e
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.j, %bb.e ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_detach(ptr noundef captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  store atomic i32 -1, ptr %i.a monotonic, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = tail call ptr @PyLong_FromLong(i64 noundef %i.c) #11
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_fileno(ptr noundef captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = tail call ptr @PyLong_FromLong(i64 noundef %i.c) #11
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_getpeername(ptr noundef captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %union.sock_addr, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr i8, ptr %0, i64 20
  %.val = load i32, ptr %i.b, align 4, !tbaa !87
  switch i32 %.val, label %getsockaddrlen.exit [
    i32 1, label %bb.h
    i32 16, label %bb.b
    i32 42, label %bb.b
    i32 40, label %bb.c
    i32 21, label %bb.c
    i32 2, label %bb.c
    i32 10, label %bb.d
    i32 17, label %bb.e
    i32 30, label %bb.c
    i32 29, label %bb.f
    i32 38, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %bb.h

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  br label %bb.h

getsockaddrlen.exit:                              ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.565) #11
  br label %bb.k

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sink = phi i32 [ 88, %bb.g ], [ 12, %bb.b ], [ 110, %bb.a ], [ 16, %bb.c ], [ 24, %bb.f ], [ 28, %bb.d ], [ 20, %bb.e ]
  %i.d = phi i64 [ 88, %bb.g ], [ 12, %bb.b ], [ 110, %bb.a ], [ 16, %bb.c ], [ 24, %bb.f ], [ 28, %bb.d ], [ 20, %bb.e ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %2, i8 0, i64 %i.d, i1 false)
  %i.e = tail call ptr @PyEval_SaveThread() #11
  %i.f = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 4
  %i.h = call i32 @getpeername(i32 noundef %i.g, ptr nonnull %2, ptr noundef nonnull %i.a) #11
  call void @PyEval_RestoreThread(ptr noundef %i.e) #11
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !92
  %i.l = call ptr %i.k() #11
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.m = load atomic i32, ptr %i.f monotonic, align 4
  %i.n = load i32, ptr %i.a, align 4, !tbaa !6
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr i8, ptr %0, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !91
  %i.r = call fastcc ptr @makesockaddr(i32 noundef %i.m, ptr noundef nonnull %2, i64 noundef %i.o, i32 noundef %i.q)
  br label %bb.k

bb.k:                                             ; preds = %getsockaddrlen.exit, %bb.j, %bb.i
  %.0 = phi ptr [ %i.l, %bb.i ], [ %i.r, %bb.j ], [ null, %getsockaddrlen.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_getsockname(ptr noundef captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %union.sock_addr, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr i8, ptr %0, i64 20
  %.val = load i32, ptr %i.b, align 4, !tbaa !87
  switch i32 %.val, label %getsockaddrlen.exit [
    i32 1, label %bb.h
    i32 16, label %bb.b
    i32 42, label %bb.b
    i32 40, label %bb.c
    i32 21, label %bb.c
    i32 2, label %bb.c
    i32 10, label %bb.d
    i32 17, label %bb.e
    i32 30, label %bb.c
    i32 29, label %bb.f
    i32 38, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %bb.h

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  br label %bb.h

getsockaddrlen.exit:                              ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.565) #11
  br label %bb.k

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sink = phi i32 [ 88, %bb.g ], [ 12, %bb.b ], [ 110, %bb.a ], [ 16, %bb.c ], [ 24, %bb.f ], [ 28, %bb.d ], [ 20, %bb.e ]
  %i.d = phi i64 [ 88, %bb.g ], [ 12, %bb.b ], [ 110, %bb.a ], [ 16, %bb.c ], [ 24, %bb.f ], [ 28, %bb.d ], [ 20, %bb.e ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %2, i8 0, i64 %i.d, i1 false)
  %i.e = tail call ptr @PyEval_SaveThread() #11
  %i.f = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 4
  %i.h = call i32 @getsockname(i32 noundef %i.g, ptr nonnull %2, ptr noundef nonnull %i.a) #11
  call void @PyEval_RestoreThread(ptr noundef %i.e) #11
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !92
  %i.l = call ptr %i.k() #11
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.m = load atomic i32, ptr %i.f monotonic, align 4
  %i.n = load i32, ptr %i.a, align 4, !tbaa !6
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr i8, ptr %0, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !91
  %i.r = call fastcc ptr @makesockaddr(i32 noundef %i.m, ptr noundef nonnull %2, i64 noundef %i.o, i32 noundef %i.q)
  br label %bb.k

bb.k:                                             ; preds = %getsockaddrlen.exit, %bb.j, %bb.i
  %.0 = phi ptr [ %i.l, %bb.i ], [ %i.r, %bb.j ], [ null, %getsockaddrlen.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_getsockopt(ptr noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 0, ptr %i.c, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.g = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.602, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #11
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.c, align 4, !tbaa !6    ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = getelementptr i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !87
  %i.l = icmp eq i32 %i.k, 40                     ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  br i1 %i.l, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  store i64 0, ptr %i.f, align 8, !tbaa !51
  store i32 8, ptr %i.e, align 4, !tbaa !6
  %i.m = getelementptr i8, ptr %0, i64 16
  %i.n = load atomic i32, ptr %i.m monotonic, align 4
  %i.o = load i32, ptr %i.a, align 4, !tbaa !6
  %i.p = load i32, ptr %i.b, align 4, !tbaa !6
  %i.q = call i32 @getsockopt(i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.p, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e) #11
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !92
  %i.u = call ptr %i.t() #11
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.f, align 8, !tbaa !51
  %i.w = call ptr @PyLong_FromUnsignedLong(i64 noundef %i.v) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi ptr [ %i.u, %bb.e ], [ %i.w, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  br label %bb.s

bb.h:                                             ; preds = %bb.c
  store i32 4, ptr %i.e, align 4, !tbaa !6
  %i.x = getelementptr i8, ptr %0, i64 16
  %i.y = load atomic i32, ptr %i.x monotonic, align 4
  %i.z = load i32, ptr %i.a, align 4, !tbaa !6
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !6
  %i.ab = call i32 @getsockopt(i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.aa, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #11
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !92
  %i.af = call ptr %i.ae() #11
  br label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %i.d, align 4, !tbaa !6
  %i.ah = sext i32 %i.ag to i64
  %i.ai = call ptr @PyLong_FromLong(i64 noundef %i.ah) #11
  br label %bb.s

bb.k:                                             ; preds = %bb.b
  br i1 %i.l, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.aj, ptr noundef nonnull @.str.603) #11
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  %i.ak = icmp ugt i32 %i.h, 1024
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.al, ptr noundef nonnull @.str.604) #11
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.am = zext nneg i32 %i.h to i64
  %i.an = call ptr @PyBytesWriter_Create(i64 noundef %i.am) #11 ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr i8, ptr %0, i64 16
  %i.aq = load atomic i32, ptr %i.ap monotonic, align 4
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !6
  %i.as = load i32, ptr %i.b, align 4, !tbaa !6
  %i.at = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.an) #11
  %i.au = call i32 @getsockopt(i32 noundef %i.aq, i32 noundef %i.ar, i32 noundef %i.as, ptr noundef %i.at, ptr noundef nonnull %i.c) #11
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @PyBytesWriter_Discard(ptr noundef nonnull %i.an) #11
  %i.aw = getelementptr i8, ptr %0, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !92
  %i.ay = call ptr %i.ax() #11
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.az = load i32, ptr %i.c, align 4, !tbaa !6
  %i.ba = zext i32 %i.az to i64
  %i.bb = call ptr @PyBytesWriter_FinishWithSize(ptr noundef nonnull %i.an, i64 noundef %i.ba) #11
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o, %bb.a, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  %.2 = phi ptr [ %.0, %bb.g ], [ %i.af, %bb.i ], [ %i.ai, %bb.j ], [ null, %bb.l ], [ null, %bb.n ], [ null, %bb.a ], [ %i.bb, %bb.r ], [ %i.ay, %bb.q ], [ null, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_listen(ptr noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 128, ptr %i.a, align 4, !tbaa !6
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.605, ptr noundef nonnull %i.a) #11
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call ptr @PyEval_SaveThread() #11
  %i.d = load i32, ptr %i.a, align 4, !tbaa !6    ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 4, !tbaa !6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load atomic i32, ptr %i.g monotonic, align 4
  %i.i = call i32 @listen(i32 noundef %i.h, i32 noundef %i.f) #11
  call void @PyEval_RestoreThread(ptr noundef %i.c) #11
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92
  %i.m = call ptr %i.l() #11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e
  %.0 = phi ptr [ %i.m, %bb.e ], [ null, %bb.a ], [ @_Py_NoneStruct, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_recv(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.sock_recv, align 8          ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 0, ptr %i.b, align 4, !tbaa !6
  %i.c = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.606, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.607) #11
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.g = call ptr @PyBytesWriter_Create(i64 noundef %i.d) #11 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.g) #11
  %i.j = load i64, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.k = load i32, ptr %i.b, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %sock_recv_guts.exit.thread13, label %bb.f

sock_recv_guts.exit.thread13:                     ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  store ptr %i.i, ptr %2, align 8, !tbaa !139
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.m, align 8, !tbaa !141
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.k, ptr %i.n, align 8, !tbaa !142
  %i.o = getelementptr i8, ptr %0, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !93
  %i.q = call fastcc range(i32 -1, 1) i32 @sock_call_ex(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @sock_recv_impl, ptr noundef nonnull %2, i32 noundef 0, ptr noundef null, i64 noundef %i.p)
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %sock_recv_guts.exit.thread, label %sock_recv_guts.exit

sock_recv_guts.exit.thread:                       ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.g

sock_recv_guts.exit:                              ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !143  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %sock_recv_guts.exit.thread, %sock_recv_guts.exit
  call void @PyBytesWriter_Discard(ptr noundef nonnull %i.g) #11
  br label %bb.i

bb.h:                                             ; preds = %sock_recv_guts.exit.thread13, %sock_recv_guts.exit
  %.0.i15 = phi i64 [ 0, %sock_recv_guts.exit.thread13 ], [ %i.t, %sock_recv_guts.exit ]
  %i.v = call ptr @PyBytesWriter_FinishWithSize(ptr noundef nonnull %i.g, i64 noundef %.0.i15) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d, %bb.a, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ null, %bb.a ], [ %i.v, %bb.h ], [ null, %bb.g ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_recv_into(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.sock_recv, align 8          ; 10 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 0, ptr %i.b, align 8, !tbaa !51
  %i.c = call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.610, ptr noundef nonnull @sock_recv_into.kwlist, ptr noundef nonnull %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #11
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35   ; 4 uses
  %i.g = load i64, ptr %i.b, align 8, !tbaa !51   ; 4 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @PyBuffer_Release(ptr noundef nonnull %4) #11
  %i.i = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.611) #11
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq i64 %i.g, 0
  br i1 %i.j, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp slt i64 %i.f, %i.g
  br i1 %i.k, label %bb.f, label %.thread16

.thread16:                                        ; preds = %bb.e
  %i.l = load i32, ptr %i.a, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @PyBuffer_Release(ptr noundef nonnull %4) #11
  %i.m = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.612) #11
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  store i64 %i.f, ptr %i.b, align 8, !tbaa !51
  %i.n = load i32, ptr %i.a, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.o = icmp eq i64 %i.f, 0
  br i1 %i.o, label %sock_recv_guts.exit.thread13, label %bb.h

sock_recv_guts.exit.thread13:                     ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.j

bb.h:                                             ; preds = %.thread16, %bb.g
  %i.p = phi i32 [ %i.l, %.thread16 ], [ %i.n, %bb.g ]
  %i.q = phi i64 [ %i.g, %.thread16 ], [ %i.f, %bb.g ]
  store ptr %i.d, ptr %3, align 8, !tbaa !139
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !141
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.p, ptr %i.s, align 8, !tbaa !142
  %i.t = getelementptr i8, ptr %0, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !93
  %i.v = call fastcc range(i32 -1, 1) i32 @sock_call_ex(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @sock_recv_impl, ptr noundef nonnull %3, i32 noundef 0, ptr noundef null, i64 noundef %i.u)
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %sock_recv_guts.exit.thread, label %sock_recv_guts.exit

sock_recv_guts.exit.thread:                       ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.i

sock_recv_guts.exit:                              ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !143  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
end_hunk_1
begin_hunk_2_@sock_sendto:bb.a
  %i.e = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.619, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #11
  %.not9 = icmp eq i32 %i.e, 0
  br i1 %.not9, label %bb.j, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.620, ptr noundef nonnull %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #11
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.j, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.621, i64 noundef %i.d) #11 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.j = call fastcc i32 @getsockaddrarg(ptr noundef %0, ptr noundef %i.i, ptr noundef %3, ptr noundef %i.b, ptr noundef nonnull @.str.553)
  %.not10 = icmp eq i32 %i.j, 0
  br i1 %.not10, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @PyBuffer_Release(ptr noundef nonnull %2) #11
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.l = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.622, ptr noundef nonnull @.str.568, ptr noundef %0, ptr noundef %i.k) #11
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %2, align 8, !tbaa !32
  store ptr %i.n, ptr %4, align 8, !tbaa !152
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !154
  %i.r = load i32, ptr %i.c, align 4, !tbaa !6
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.r, ptr %i.s, align 8, !tbaa !155
  %i.t = load i32, ptr %i.b, align 4, !tbaa !6
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.t, ptr %i.u, align 4, !tbaa !156
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %3, ptr %i.v, align 8, !tbaa !157
  %i.w = getelementptr i8, ptr %0, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !93
  %i.y = call fastcc range(i32 -1, 1) i32 @sock_call_ex(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @sock_sendto_impl, ptr noundef nonnull %4, i32 noundef 0, ptr noundef null, i64 noundef %i.x)
  %i.z = icmp slt i32 %i.y, 0
  call void @PyBuffer_Release(ptr noundef nonnull %2) #11
  br i1 %i.z, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !158
  %i.ac = call ptr @PyLong_FromSsize_t(i64 noundef %i.ab) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.c, %bb.b, %bb.i, %bb.f, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.g ], [ %i.ac, %bb.i ], [ null, %bb.f ], [ null, %bb.b ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @sock_setblocking(ptr noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call i32 @PyObject_IsTrue(ptr noundef %1) #11 ; 3 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp ne i32 %i.b, 0
  %i.d = sext i1 %.not to i32
  %i.e = tail call i64 @_PyTime_FromSeconds(i32 noundef %i.d) #11
  %i.f = getelementptr i8, ptr %0, i64 40
  store i64 %i.e, ptr %i.f, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = tail call ptr @PyEval_SaveThread() #11
  %.not.i = icmp eq i32 %i.b, 0
  %i.h = zext i1 %.not.i to i32
  store i32 %i.h, ptr %i.a, align 4, !tbaa !6
  %i.i = getelementptr i8, ptr %0, i64 16
  %i.j = load atomic i32, ptr %i.i monotonic, align 8
  %i.k = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.j, i64 noundef 21537, ptr noundef nonnull %i.a) #11
  %.not4.i = icmp eq i32 %i.k, -1
  call void @PyEval_RestoreThread(ptr noundef %i.g) #11
  br i1 %.not4.i, label %bb.c, label %internal_setblocking.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  %i.m = call ptr @PyErr_SetFromErrno(ptr noundef %i.l) #11 ; 0 uses
  br label %internal_setblocking.exit

internal_setblocking.exit:                        ; preds = %bb.b, %bb.c
  %._Py_NoneStruct = phi ptr [ @_Py_NoneStruct, %bb.b ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %internal_setblocking.exit
  %.1 = phi ptr [ %._Py_NoneStruct, %internal_setblocking.exit ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal nonnull ptr @sock_getblocking(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !93
  %.not = icmp eq i64 %i.b, 0
  %_Py_FalseStruct._Py_TrueStruct = select i1 %.not, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  ret ptr %_Py_FalseStruct._Py_TrueStruct
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @sock_settimeout(ptr noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = icmp eq ptr %1, @_Py_NoneStruct
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @_PyTime_FromSeconds(i32 noundef -1) #11 ; 2 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !51
  br label %socket_parse_timeout.exit

bb.c:                                             ; preds = %bb.a
  %i.e = call i32 @_PyTime_FromSecondsObject(ptr noundef nonnull %i.b, ptr noundef %1, i32 noundef 3) #11
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %socket_parse_timeout.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %socket_parse_timeout.exit

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.106) #11
  br label %socket_parse_timeout.exit.thread

socket_parse_timeout.exit:                        ; preds = %bb.d, %bb.b
  %i.j = phi i64 [ %i.g, %bb.d ], [ %i.d, %bb.b ] ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 40
  store i64 %i.j, ptr %i.k, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = call ptr @PyEval_SaveThread() #11
  %.not.i = icmp sgt i64 %i.j, -1
  %i.m = zext i1 %.not.i to i32
  store i32 %i.m, ptr %i.a, align 4, !tbaa !6
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load atomic i32, ptr %i.n monotonic, align 8
  %i.p = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.o, i64 noundef 21537, ptr noundef nonnull %i.a) #11
  %.not4.i = icmp eq i32 %i.p, -1
  call void @PyEval_RestoreThread(ptr noundef %i.l) #11
  br i1 %.not4.i, label %bb.f, label %internal_setblocking.exit

bb.f:                                             ; preds = %socket_parse_timeout.exit
  %i.q = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  %i.r = call ptr @PyErr_SetFromErrno(ptr noundef %i.q) #11 ; 0 uses
  br label %internal_setblocking.exit

internal_setblocking.exit:                        ; preds = %socket_parse_timeout.exit, %bb.f
  %._Py_NoneStruct = phi ptr [ @_Py_NoneStruct, %socket_parse_timeout.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %socket_parse_timeout.exit.thread

socket_parse_timeout.exit.thread:                 ; preds = %bb.e, %bb.c, %internal_setblocking.exit
  %.1 = phi ptr [ %._Py_NoneStruct, %internal_setblocking.exit ], [ null, %bb.c ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret ptr %.1
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @sock_gettimeout_method(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val = load i64, ptr %i.a, align 8, !tbaa !93  ; 2 uses
  %i.b = icmp slt i64 %.val, 0
  br i1 %i.b, label %sock_gettimeout_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call double @PyTime_AsSecondsDouble(i64 noundef %.val) #11
  %i.d = tail call ptr @PyFloat_FromDouble(double noundef %i.c) #11
  br label %sock_gettimeout_impl.exit

sock_gettimeout_impl.exit:                        ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_setsockopt(ptr noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %2 = alloca %struct.Py_buffer, align 8          ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 9 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.g = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.623, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d) #11
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call i64 @PyTuple_Size(ptr noundef %1) #11 ; 2 uses
  %i.i = icmp eq i64 %i.h, 3
  %i.j = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.k = icmp eq ptr %i.j, @_Py_NoneStruct
  %or.cond = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  %i.m = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.l, ptr noundef nonnull @.str.624, i64 noundef 3) #11 ; 0 uses
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.h, 4
  %i.o = icmp ne ptr %i.j, @_Py_NoneStruct
  %or.cond3 = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  %i.q = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.p, ptr noundef nonnull @.str.625, ptr noundef %i.j) #11 ; 0 uses
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %0, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !87
  %i.t = icmp eq i32 %i.s, 40
  %i.u = call i32 @PyIndex_Check(ptr noundef %i.j) #11
  %.not27 = icmp eq i32 %i.u, 0                   ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  br i1 %.not27, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.x = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.v, ptr noundef nonnull @.str.626, ptr noundef %i.w) #11 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.z = call i32 (ptr, ptr, ...) @PyArg_Parse(ptr noundef %i.y, ptr noundef nonnull @.str.627, ptr noundef nonnull %i.f) #11
  %.not28.not = icmp eq i32 %i.z, 0
  br i1 %.not28.not, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %0, i64 16
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !6
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !6
  %i.ae = call i32 @setsockopt(i32 noundef %i.ab, i32 noundef %i.ac, i32 noundef %i.ad, ptr noundef nonnull %i.f, i32 noundef 8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  br label %bb.t

bb.k:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !24  ; 3 uses
  br i1 %.not27, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = call i32 (ptr, ptr, ...) @PyArg_Parse(ptr noundef %i.af, ptr noundef nonnull @.str.628, ptr noundef nonnull %i.c) #11
  %.not26 = icmp eq i32 %i.ag, 0
  br i1 %.not26, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr i8, ptr %0, i64 16
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !6
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !6
  %i.al = call i32 @setsockopt(i32 noundef %i.ai, i32 noundef %i.aj, i32 noundef %i.ak, ptr noundef nonnull %i.c, i32 noundef 4) #11
  br label %bb.t

bb.n:                                             ; preds = %bb.k
  %i.am = icmp eq ptr %i.af, @_Py_NoneStruct
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr i8, ptr %0, i64 16
  %i.ao = load atomic i32, ptr %i.an monotonic, align 4
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !6
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !6
  %i.ar = load i32, ptr %i.d, align 4, !tbaa !6
  %i.as = call i32 @setsockopt(i32 noundef %i.ao, i32 noundef %i.ap, i32 noundef %i.aq, ptr noundef null, i32 noundef %i.ar) #11
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.at = call i32 @PyObject_CheckBuffer(ptr noundef %i.af) #11
  %.not24 = icmp eq i32 %i.at, 0
  br i1 %.not24, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.av = call i32 (ptr, ptr, ...) @PyArg_Parse(ptr noundef %i.au, ptr noundef nonnull @.str.569, ptr noundef nonnull %2) #11
  %.not25 = icmp eq i32 %i.av, 0
  br i1 %.not25, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr i8, ptr %0, i64 16
  %i.ax = load atomic i32, ptr %i.aw monotonic, align 4
  %i.ay = load i32, ptr %i.a, align 4, !tbaa !6
  %i.az = load i32, ptr %i.b, align 4, !tbaa !6
  %i.ba = load ptr, ptr %2, align 8, !tbaa !32
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !35
  %i.bd = trunc i64 %i.bc to i32
  %i.be = call i32 @setsockopt(i32 noundef %i.ax, i32 noundef %i.ay, i32 noundef %i.az, ptr noundef %i.ba, i32 noundef %i.bd) #11
  call void @PyBuffer_Release(ptr noundef nonnull %2) #11
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.bf = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.bh = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bf, ptr noundef nonnull @.str.629, ptr noundef %i.bg) #11 ; 0 uses
  br label %bb.v

bb.t:                                             ; preds = %bb.j, %bb.r, %bb.o, %bb.m
  %.1 = phi i32 [ %i.ae, %bb.j ], [ %i.al, %bb.m ], [ %i.as, %bb.o ], [ %i.be, %bb.r ]
  %i.bi = icmp slt i32 %.1, 0
  br i1 %i.bi, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr i8, ptr %0, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !92
  %i.bl = call ptr %i.bk() #11
  br label %bb.v

.critedge:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.q, %bb.l, %.critedge, %bb.a, %bb.u, %bb.s, %bb.e, %bb.c
  %.119 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ %i.bl, %bb.u ], [ null, %bb.q ], [ @_Py_NoneStruct, %bb.t ], [ null, %.critedge ], [ null, %bb.l ], [ null, %bb.s ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.119
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_shutdown(ptr noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyLong_AsInt(ptr noundef %1) #11 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #11
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call ptr @PyEval_SaveThread() #11
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load atomic i32, ptr %i.e monotonic, align 4
  %i.g = tail call i32 @shutdown(i32 noundef %i.f, i32 noundef %i.a) #11
  tail call void @PyEval_RestoreThread(ptr noundef %i.d) #11
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !92
  %i.k = tail call ptr %i.j() #11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi ptr [ null, %bb.b ], [ %i.k, %bb.d ], [ @_Py_NoneStruct, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_recvmsg(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.iovec, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 0, ptr %i.b, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 0, ptr %i.c, align 4, !tbaa !6
  %i.e = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.630, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #11
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.631) #11
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.i = call ptr @PyBytesWriter_Create(i64 noundef %i.f) #11 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !159
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.k = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.i) #11
  store ptr %i.k, ptr %2, align 8, !tbaa !161
  %i.l = load i64, ptr %i.a, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !163
  %i.n = load i32, ptr %i.c, align 4, !tbaa !6
  %i.o = load i64, ptr %i.b, align 8, !tbaa !51
  %i.p = call fastcc ptr @sock_recvmsg_guts(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @makeval_recvmsg, ptr noundef nonnull %i.d)
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !159
  call void @PyBytesWriter_Discard(ptr noundef %i.q) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi ptr [ %i.p, %bb.e ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ %.0, %bb.f ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_recvmsg_into(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 0, ptr %i.b, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.637, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.f = call ptr @PySequence_Fast(ptr noundef %i.e, ptr noundef nonnull @.str.638) #11 ; 8 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.in61 = getelementptr i8, ptr %i.f, i64 16
  %i.i = load i64, ptr %.in61, align 8, !tbaa !67 ; 7 uses
  %i.j = icmp sgt i64 %i.i, 2147483647
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.639) #11
  br label %._crit_edge67

bb.e:                                             ; preds = %bb.c
  %i.l = icmp sgt i64 %i.i, 0
  br i1 %i.l, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.m = shl nuw nsw i64 %i.i, 4
  %i.n = call ptr @PyMem_Malloc(i64 noundef %i.m) #11 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = mul nuw nsw i64 %i.i, 80
  %i.q = call ptr @PyMem_Malloc(i64 noundef %i.p) #11 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %.lr.ph

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = call ptr @PyErr_NoMemory() #11           ; 0 uses
  br label %._crit_edge67

.lr.ph:                                           ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.f, i64 24
  %i.u = getelementptr i8, ptr %i.f, i64 32
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %.04363 = phi i64 [ 0, %.lr.ph ], [ %i.ag, %bb.l ] ; 5 uses
  %.val56 = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.v = getelementptr i8, ptr %.val56, i64 168
  %.val58 = load i64, ptr %i.v, align 8, !tbaa !45
  %i.w = and i64 %.val58, 33554432
  %.not54 = icmp eq i64 %i.w, 0
  br i1 %.not54, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !164
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.pn = phi ptr [ %i.x, %bb.j ], [ %i.u, %bb.i ]
  %.in = getelementptr [8 x i8], ptr %.pn, i64 %.04363
  %i.y = load ptr, ptr %.in, align 8, !tbaa !24
  %i.z = getelementptr [80 x i8], ptr %i.q, i64 %.04363 ; 3 uses
  %i.aa = call i32 (ptr, ptr, ...) @PyArg_Parse(ptr noundef %i.y, ptr noundef nonnull @.str.640, ptr noundef %i.z) #11
  %.not55 = icmp eq i32 %i.aa, 0
  br i1 %.not55, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !32
  %i.ac = getelementptr [16 x i8], ptr %i.n, i64 %.04363 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !161
  %i.ad = getelementptr i8, ptr %i.z, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !35
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !163
  %i.ag = add nuw nsw i64 %.04363, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !167

._crit_edge:                                      ; preds = %bb.l, %bb.e
  %.182 = phi ptr [ null, %bb.e ], [ %i.q, %bb.l ]
  %.04580 = phi ptr [ null, %bb.e ], [ %i.n, %bb.l ] ; 2 uses
  %.043.lcssa = phi i64 [ 0, %bb.e ], [ %i.i, %bb.l ]
  %i.ah = trunc i64 %i.i to i32
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !6
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !51
  %i.ak = call fastcc ptr @sock_recvmsg_guts(ptr noundef %0, ptr noundef %.04580, i32 noundef %i.ah, i32 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @makeval_recvmsg_into, ptr noundef null)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %._crit_edge
  %.146 = phi ptr [ %.04580, %._crit_edge ], [ %i.n, %bb.k ] ; 2 uses
  %.144 = phi i64 [ %.043.lcssa, %._crit_edge ], [ %.04363, %bb.k ] ; 2 uses
  %.2 = phi ptr [ %.182, %._crit_edge ], [ %i.q, %bb.k ] ; 3 uses
  %.0 = phi ptr [ %i.ak, %._crit_edge ], [ null, %bb.k ] ; 2 uses
  %.not68 = icmp eq i64 %.144, 0
end_hunk_2
begin_hunk_3_@sock_sendmsg_afalg:bb.a
  %i.z = add i64 %i.y, 40
  %.047 = select i1 %.not67, i64 24, i64 %i.z     ; 2 uses
  %i.aa = icmp sgt i32 %.049, -1                  ; 3 uses
  %i.ab = add i64 %.047, 24
  %.1 = select i1 %i.aa, i64 %i.ab, i64 %.047     ; 4 uses
  %i.ac = call ptr @PyMem_Malloc(i64 noundef %.1) #11 ; 10 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = call ptr @PyErr_NoMemory() #11          ; 0 uses
  br label %bb.w

bb.l:                                             ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ac, i8 0, i64 %.1, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i64 %.1, ptr %i.af, align 8, !tbaa !177
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.ac, ptr %i.ag, align 8, !tbaa !176
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !24  ; 2 uses
  %.not68 = icmp eq ptr %i.ah, null
  br i1 %.not68, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = call fastcc i32 @sock_sendmsg_iovec(ptr noundef nonnull %i.ah, ptr noundef %4, ptr noundef %i.b, ptr noundef %i.a)
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %bb.w, label %._crit_edge79

._crit_edge79:                                    ; preds = %bb.m
  %.pre = load i64, ptr %i.af, align 8, !tbaa !177
  %.pre80 = load ptr, ptr %i.ag, align 8
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge79, %bb.l
  %i.ak = phi ptr [ %.pre80, %._crit_edge79 ], [ %i.ac, %bb.l ] ; 12 uses
  %i.al = phi i64 [ %.pre, %._crit_edge79 ], [ %.1, %bb.l ] ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  %i.an = icmp eq ptr %i.ak, null
  %i.ao = select i1 %i.am, i1 true, i1 %i.an
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.ap, ptr noundef nonnull @.str.661) #11
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.aq = getelementptr i8, ptr %i.ak, i64 8
  store i32 279, ptr %i.aq, align 8, !tbaa !6
  %i.ar = getelementptr i8, ptr %i.ak, i64 12
  store i32 3, ptr %i.ar, align 4, !tbaa !6
  store i64 20, ptr %i.ak, align 8, !tbaa !51
  %i.as = getelementptr i8, ptr %i.ak, i64 16
  store i32 %i.l, ptr %i.as, align 8, !tbaa !6
  %i.at = load ptr, ptr %3, align 8, !tbaa !32    ; 2 uses
  %.not69 = icmp eq ptr %i.at, null
  br i1 %.not69, label %.thread95, label %bb.q

bb.q:                                             ; preds = %bb.p
  %or.cond.i = icmp ult i64 %i.al, 40
  br i1 %or.cond.i, label %__cmsg_nxthdr.exit.thread, label %__cmsg_nxthdr.exit

__cmsg_nxthdr.exit:                               ; preds = %bb.q
  %i.au = getelementptr i8, ptr %i.ak, i64 24     ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %__cmsg_nxthdr.exit.thread, label %bb.r

__cmsg_nxthdr.exit.thread:                        ; preds = %bb.q, %__cmsg_nxthdr.exit
  %i.aw = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.aw, ptr noundef nonnull @.str.662) #11
  br label %bb.w

bb.r:                                             ; preds = %__cmsg_nxthdr.exit
  %i.ax = getelementptr i8, ptr %i.ak, i64 32
  store i32 279, ptr %i.ax, align 8, !tbaa !6
  %i.ay = getelementptr i8, ptr %i.ak, i64 36
  store i32 2, ptr %i.ay, align 4, !tbaa !6
  %i.az = load i64, ptr %i.v, align 8, !tbaa !35
  %i.ba = add i64 %i.az, 11                       ; 2 uses
  %i.bb = and i64 %i.ba, -8
  %i.bc = add i64 %i.bb, 16                       ; 2 uses
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !51
  %i.bd = getelementptr i8, ptr %i.ak, i64 40
  %i.be = load i64, ptr %i.v, align 8, !tbaa !35  ; 2 uses
  %i.bf = trunc i64 %i.be to i32
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !6
  %i.bg = getelementptr i8, ptr %i.ak, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bg, ptr nonnull align 1 %i.at, i64 %i.be, i1 false)
  br i1 %i.aa, label %bb.s, label %bb.u

.thread95:                                        ; preds = %bb.p
  br i1 %i.aa, label %.thread98, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bh = icmp ugt i64 %i.ba, -17
  br i1 %i.bh, label %__cmsg_nxthdr.exit73.thread, label %.thread98

.thread98:                                        ; preds = %.thread95, %bb.s
  %i.bi = phi i64 [ %i.bc, %bb.s ], [ 20, %.thread95 ] ; 3 uses
  %.04897100 = phi ptr [ %i.au, %bb.s ], [ %i.ak, %.thread95 ] ; 2 uses
  %i.bj = sub i64 0, %i.bi
  %i.bk = and i64 %i.bj, 7
  %i.bl = or disjoint i64 %i.bk, 16               ; 2 uses
  %i.bm = getelementptr i8, ptr %i.ak, i64 %i.al
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %.04897100 to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bl
  %i.br = sub nuw i64 %i.bp, %i.bl
  %i.bs = icmp ult i64 %i.br, %i.bi
  %or.cond.i71 = select i1 %i.bq, i1 true, i1 %i.bs
  br i1 %or.cond.i71, label %__cmsg_nxthdr.exit73.thread, label %__cmsg_nxthdr.exit73

__cmsg_nxthdr.exit73:                             ; preds = %.thread98
  %i.bt = add nuw i64 %i.bi, 7
  %i.bu = and i64 %i.bt, -8
  %i.bv = getelementptr i8, ptr %.04897100, i64 %i.bu ; 5 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %__cmsg_nxthdr.exit73.thread, label %bb.t

__cmsg_nxthdr.exit73.thread:                      ; preds = %.thread98, %bb.s, %__cmsg_nxthdr.exit73
  %i.bx = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.bx, ptr noundef nonnull @.str.663) #11
  br label %bb.w

bb.t:                                             ; preds = %__cmsg_nxthdr.exit73
  %i.by = getelementptr i8, ptr %i.bv, i64 8
  store i32 279, ptr %i.by, align 8, !tbaa !6
  %i.bz = getelementptr i8, ptr %i.bv, i64 12
  store i32 4, ptr %i.bz, align 4, !tbaa !6
  store i64 20, ptr %i.bv, align 8, !tbaa !51
  %i.ca = getelementptr i8, ptr %i.bv, i64 16
  store i32 %.049, ptr %i.ca, align 8, !tbaa !6
  br label %bb.u

bb.u:                                             ; preds = %.thread95, %bb.t, %bb.r
  store ptr %4, ptr %5, align 8, !tbaa !182
  %i.cb = load i32, ptr %i.f, align 4, !tbaa !6
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.cb, ptr %i.cc, align 8, !tbaa !185
  %i.cd = getelementptr i8, ptr %0, i64 40
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !93
  %i.cf = call fastcc range(i32 -1, 1) i32 @sock_call_ex(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @sock_sendmsg_impl, ptr noundef nonnull %5, i32 noundef 0, ptr noundef null, i64 noundef %i.ce)
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !186
  %i.cj = call ptr @PyLong_FromSsize_t(i64 noundef %i.ci) #11
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.m, %bb.h, %bb.v, %__cmsg_nxthdr.exit73.thread, %__cmsg_nxthdr.exit.thread, %bb.o, %bb.k, %.thread75, %.thread
  %.052 = phi ptr [ null, %.thread ], [ null, %bb.h ], [ null, %.thread75 ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.o ], [ null, %__cmsg_nxthdr.exit.thread ], [ null, %__cmsg_nxthdr.exit73.thread ], [ null, %bb.u ], [ %i.cj, %bb.v ]
  %.0 = phi ptr [ null, %.thread ], [ null, %bb.h ], [ null, %.thread75 ], [ null, %bb.k ], [ %i.ac, %bb.m ], [ %i.ac, %bb.o ], [ %i.ac, %__cmsg_nxthdr.exit.thread ], [ %i.ac, %__cmsg_nxthdr.exit73.thread ], [ %i.ac, %bb.u ], [ %i.ac, %bb.v ]
  call void @PyMem_Free(ptr noundef %.0) #11
  %i.ck = load ptr, ptr %3, align 8, !tbaa !32
  %.not70 = icmp eq ptr %i.ck, null
  br i1 %.not70, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @PyBuffer_Release(ptr noundef nonnull %3) #11
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !188
  call void @PyMem_Free(ptr noundef %i.cm) #11
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %i.co = icmp sgt i64 %i.cn, 0
  %.pre81 = load ptr, ptr %i.b, align 8, !tbaa !169 ; 2 uses
  br i1 %i.co, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.y, %.lr.ph
  %.05178 = phi i64 [ %i.cq, %.lr.ph ], [ 0, %bb.y ] ; 2 uses
  %i.cp = getelementptr [80 x i8], ptr %.pre81, i64 %.05178
  call void @PyBuffer_Release(ptr noundef %i.cp) #11
  %i.cq = add nuw nsw i64 %.05178, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cq, %i.cn
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !190

._crit_edge:                                      ; preds = %.lr.ph, %bb.y
  call void @PyMem_Free(ptr noundef %.pre81) #11
  br label %bb.z

bb.z:                                             ; preds = %bb.c, %._crit_edge, %bb.b
  %.053 = phi ptr [ null, %bb.b ], [ %.052, %._crit_edge ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.053
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @sock_accept_impl(ptr noundef captures(none) %0, ptr noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.c = load ptr, ptr %1, align 8, !tbaa !132    ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !87
  %i.f = icmp eq i32 %i.e, 38
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 4, !tbaa !6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.016 = phi ptr [ null, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %.0 = phi ptr [ null, %bb.b ], [ %i.b, %bb.a ]  ; 2 uses
  %i.g = load atomic i32, ptr @accept4_works monotonic, align 4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load atomic i32, ptr %i.h monotonic, align 4
  %i.j = tail call i32 @accept4(i32 noundef %i.i, ptr %.0, ptr noundef %.016, i32 noundef 524288) #11 ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 16
  store i32 %i.j, ptr %i.k, align 8, !tbaa !137
  %i.l = icmp eq i32 %i.j, -1
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = load atomic i32, ptr @accept4_works monotonic, align 4
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__errno_location() #12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !6
  %i.q = icmp ne i32 %i.p, 38
  %i.r = zext i1 %i.q to i32
  store atomic i32 %i.r, ptr @accept4_works monotonic, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c
  %i.s = load atomic i32, ptr @accept4_works monotonic, align 4
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !137
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %0, i64 16
  %i.v = load atomic i32, ptr %i.u monotonic, align 4
  %i.w = tail call i32 @accept(i32 noundef %i.v, ptr %.0, ptr noundef %.016) #11 ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 16
  store i32 %i.w, ptr %i.x, align 8, !tbaa !137
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %i.y = phi i32 [ %.pre, %._crit_edge ], [ %i.w, %bb.h ]
  %i.z = icmp sgt i32 %i.y, -1
  %i.aa = zext i1 %i.z to i32
  ret i32 %i.aa
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @sock_call_ex(ptr noundef %0, i32 noundef range(i32 0, 2) %1, ptr noundef readonly captures(none) %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4, ptr noundef writeonly captures(address_is_null) %5, i64 noundef %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.pollfd, align 4             ; 5 uses
  %8 = alloca %struct.pollfd, align 4             ; 5 uses
  %i.a = icmp sgt i64 %6, 0                       ; 2 uses
  %i.b = icmp ne i32 %4, 0
  %or.cond = or i1 %i.b, %i.a
  %i.c = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %.not.i64 = icmp eq i32 %1, 0
  %i.d = select i1 %.not.i64, i16 1, i16 4        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.not13.i65 = icmp eq i32 %4, 0
  %i.f = or disjoint i16 %i.d, 8
  %spec.select.i66 = select i1 %.not13.i65, i16 %i.d, i16 %i.f ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.not61 = icmp eq ptr %5, null                  ; 7 uses
  %i.h = getelementptr i8, ptr %0, i64 40         ; 3 uses
  br i1 %or.cond, label %.split90.us, label %.split90

.split90.us:                                      ; preds = %bb.a, %.split90.us.backedge
  %.045.us = phi i64 [ %.247.us, %.split90.us.backedge ], [ 0, %bb.a ] ; 3 uses
  %.043.us = phi i32 [ %.2.us, %.split90.us.backedge ], [ 0, %bb.a ] ; 2 uses
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split90.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.i = load atomic i32, ptr %i.c monotonic, align 4
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %internal_select.exit70.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load atomic i32, ptr %i.c monotonic, align 4
  store i32 %i.k, ptr %7, align 4, !tbaa !191
  store i16 %spec.select.i66, ptr %i.e, align 4, !tbaa !193
  %i.l = call i64 @_PyTime_AsMilliseconds(i64 noundef %6, i32 noundef 1) #11
  %i.m = call i64 @llvm.smax.i64(i64 %i.l, i64 -1)
  %spec.store.select1.i67.us = call i64 @llvm.smin.i64(i64 %i.m, i64 2147483647)
  %i.n = call ptr @PyEval_SaveThread() #11
  %i.o = trunc nsw i64 %spec.store.select1.i67.us to i32
  %i.p = call i32 @poll(ptr noundef nonnull %7, i64 noundef 1, i32 noundef %i.o) #11 ; 2 uses
  call void @PyEval_RestoreThread(ptr noundef %i.n) #11
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %internal_select.exit70.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp eq i32 %i.p, 0
  %..i68.us = zext i1 %i.r to i32
  br label %internal_select.exit70.us

internal_select.exit70.us:                        ; preds = %bb.d, %bb.c, %bb.b
  %.0.i69.us = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ %..i68.us, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.j

bb.e:                                             ; preds = %.split90.us
  %.not.us = icmp eq i32 %.043.us, 0
  br i1 %.not.us, label %.thread.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = call i64 @_PyDeadline_Get(i64 noundef %.045.us) #11 ; 2 uses
  %i.t = icmp sgt i64 %i.s, -1
  br i1 %i.t, label %bb.g, label %.thread75

.thread.us:                                       ; preds = %bb.e
  %i.u = call i64 @_PyDeadline_Init(i64 noundef %6) #11
  br label %bb.g

bb.g:                                             ; preds = %.thread.us, %bb.f
  %.04174.us = phi i64 [ %6, %.thread.us ], [ %i.s, %bb.f ]
  %.14673.us = phi i64 [ %i.u, %.thread.us ], [ %.045.us, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.v = load atomic i32, ptr %i.c monotonic, align 4
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %internal_select.exit.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load atomic i32, ptr %i.c monotonic, align 4
  store i32 %i.x, ptr %8, align 4, !tbaa !191
  store i16 %spec.select.i66, ptr %i.g, align 4, !tbaa !193
  %i.y = call i64 @_PyTime_AsMilliseconds(i64 noundef %.04174.us, i32 noundef 1) #11
  %i.z = call i64 @llvm.smax.i64(i64 %i.y, i64 -1)
  %spec.store.select1.i.us = call i64 @llvm.smin.i64(i64 %i.z, i64 2147483647)
  %i.aa = call ptr @PyEval_SaveThread() #11
  %i.ab = trunc nsw i64 %spec.store.select1.i.us to i32
  %i.ac = call i32 @poll(ptr noundef nonnull %8, i64 noundef 1, i32 noundef %i.ab) #11 ; 2 uses
  call void @PyEval_RestoreThread(ptr noundef %i.aa) #11
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %internal_select.exit.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp eq i32 %i.ac, 0
  %..i.us = zext i1 %i.ae to i32
  br label %internal_select.exit.us

internal_select.exit.us:                          ; preds = %bb.i, %bb.h, %bb.g
  %.0.i.us = phi i32 [ -1, %bb.h ], [ 0, %bb.g ], [ %..i.us, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.j

bb.j:                                             ; preds = %internal_select.exit.us, %internal_select.exit70.us
  %.247.us = phi i64 [ %.045.us, %internal_select.exit70.us ], [ %.14673.us, %internal_select.exit.us ]
  %.2.us = phi i32 [ %.043.us, %internal_select.exit70.us ], [ 1, %internal_select.exit.us ]
  %.1.us = phi i32 [ %.0.i69.us, %internal_select.exit70.us ], [ %.0.i.us, %internal_select.exit.us ]
  switch i32 %.1.us, label %bb.n [
    i32 -1, label %bb.k
    i32 1, label %.thread75
  ]

bb.k:                                             ; preds = %bb.j
  %.pre = tail call ptr @__errno_location() #12   ; 2 uses
  br i1 %.not61, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load i32, ptr %.pre, align 4, !tbaa !6
  store i32 %i.af, ptr %5, align 4, !tbaa !6
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %bb.l
  %i.ag = load i32, ptr %.pre, align 4, !tbaa !6
  %i.ah = icmp eq i32 %i.ag, 4
  br i1 %i.ah, label %bb.m, label %.split97.us

bb.m:                                             ; preds = %._crit_edge
  %i.ai = call i32 @PyErr_CheckSignals() #11
  %.not62.us = icmp eq i32 %i.ai, 0
  br i1 %.not62.us, label %.split90.us.backedge, label %.split99.us

bb.n:                                             ; preds = %bb.j
  br i1 %.not61, label %.split.us.us, label %.split.us95

.split.us95:                                      ; preds = %bb.n, %bb.p
  %i.aj = call ptr @PyEval_SaveThread() #11
  %i.ak = call i32 %2(ptr noundef %0, ptr noundef %3) #11
  call void @PyEval_RestoreThread(ptr noundef %i.aj) #11
  %.not56.us91 = icmp eq i32 %i.ak, 0
  br i1 %.not56.us91, label %bb.o, label %.split83.us.thread

bb.o:                                             ; preds = %.split.us95
  %i.al = tail call ptr @__errno_location() #12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !6  ; 3 uses
  store i32 %i.am, ptr %5, align 4, !tbaa !6
  %i.an = icmp eq i32 %i.am, 4
  br i1 %i.an, label %bb.p, label %.split85.us92

bb.p:                                             ; preds = %bb.o
  %i.ao = call i32 @PyErr_CheckSignals() #11
  %.not58.us94 = icmp eq i32 %i.ao, 0
  br i1 %.not58.us94, label %.split.us95, label %.split88.us

.split85.us92:                                    ; preds = %bb.o, %bb.q
  %.us-phi.us = phi i32 [ %i.av, %bb.q ], [ %i.am, %bb.o ]
  %i.ap = load i64, ptr %i.h, align 8, !tbaa !93
  %i.aq = icmp sgt i64 %i.ap, 0
  %i.ar = icmp eq i32 %.us-phi.us, 11
  %or.cond63.us = and i1 %i.ar, %i.aq
  br i1 %or.cond63.us, label %.split90.us.backedge, label %.split104.us

.split90.us.backedge:                             ; preds = %.split85.us92, %bb.m
  br label %.split90.us

.split.us.us:                                     ; preds = %bb.n, %bb.r
  %i.as = call ptr @PyEval_SaveThread() #11
  %i.at = call i32 %2(ptr noundef %0, ptr noundef %3) #11
  call void @PyEval_RestoreThread(ptr noundef %i.as) #11
  %.not56.us.us = icmp eq i32 %i.at, 0
  br i1 %.not56.us.us, label %bb.q, label %.split83.us

bb.q:                                             ; preds = %.split.us.us
  %i.au = tail call ptr @__errno_location() #12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !6  ; 2 uses
  %i.aw = icmp eq i32 %i.av, 4
  br i1 %i.aw, label %bb.r, label %.split85.us92

bb.r:                                             ; preds = %bb.q
  %i.ax = call i32 @PyErr_CheckSignals() #11
  %.not58.us.us = icmp eq i32 %i.ax, 0
  br i1 %.not58.us.us, label %.split.us.us, label %.critedge

.split90:                                         ; preds = %bb.a
  br i1 %.not61, label %.split.us.us111, label %.split

.split.us.us111:                                  ; preds = %.split90, %.split.us.us111.backedge
  %i.ay = tail call ptr @PyEval_SaveThread() #11
  %i.az = tail call i32 %2(ptr noundef %0, ptr noundef %3) #11
  tail call void @PyEval_RestoreThread(ptr noundef %i.ay) #11
  %.not56.us.us112 = icmp eq i32 %i.az, 0
  br i1 %.not56.us.us112, label %bb.s, label %.split83.us

bb.s:                                             ; preds = %.split.us.us111
  %i.ba = tail call ptr @__errno_location() #12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !6  ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 4
  br i1 %i.bc, label %bb.t, label %.split85.us.us114

bb.t:                                             ; preds = %bb.s
  %i.bd = tail call i32 @PyErr_CheckSignals() #11
  %.not58.us.us113 = icmp eq i32 %i.bd, 0
  br i1 %.not58.us.us113, label %.split.us.us111.backedge, label %.critedge

.split.us.us111.backedge:                         ; preds = %bb.t, %.split85.us.us114
  br label %.split.us.us111

.split85.us.us114:                                ; preds = %bb.s
  %i.be = load i64, ptr %i.h, align 8, !tbaa !93
  %i.bf = icmp sgt i64 %i.be, 0
  %i.bg = icmp eq i32 %i.bb, 11
  %or.cond63.us110 = and i1 %i.bg, %i.bf
  br i1 %or.cond63.us110, label %.split.us.us111.backedge, label %.critedge120

.split99.us:                                      ; preds = %bb.m
  br i1 %.not61, label %.critedge, label %bb.u

bb.u:                                             ; preds = %.split99.us
  store i32 -1, ptr %5, align 4, !tbaa !6
  br label %.critedge

.split97.us:                                      ; preds = %._crit_edge
  %i.bh = getelementptr i8, ptr %0, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !92
  %i.bj = call ptr %i.bi() #11                    ; 0 uses
  br label %.critedge

.thread75:                                        ; preds = %bb.f, %bb.j
  br i1 %.not61, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread75
  store i32 11, ptr %5, align 4, !tbaa !6
  br label %.critedge

bb.w:                                             ; preds = %.thread75
  %i.bk = load ptr, ptr @PyExc_TimeoutError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.bk, ptr noundef nonnull @.str.566) #11
  br label %.critedge

.split:                                           ; preds = %.split90, %.split.backedge
  %i.bl = tail call ptr @PyEval_SaveThread() #11
  %i.bm = tail call i32 %2(ptr noundef %0, ptr noundef %3) #11
  tail call void @PyEval_RestoreThread(ptr noundef %i.bl) #11
  %.not56 = icmp eq i32 %i.bm, 0
  br i1 %.not56, label %bb.x, label %.split83.us.thread

.split83.us:                                      ; preds = %.split.us.us111, %.split.us.us
  br i1 %.not61, label %.critedge, label %.split83.us.thread

.split83.us.thread:                               ; preds = %.split, %.split.us95, %.split83.us
  store i32 0, ptr %5, align 4, !tbaa !6
  br label %.critedge

bb.x:                                             ; preds = %.split
  %i.bn = tail call ptr @__errno_location() #12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !6  ; 3 uses
  store i32 %i.bo, ptr %5, align 4, !tbaa !6
  %i.bp = icmp eq i32 %i.bo, 4
  br i1 %i.bp, label %bb.y, label %.split85

bb.y:                                             ; preds = %bb.x
  %i.bq = tail call i32 @PyErr_CheckSignals() #11
  %.not58 = icmp eq i32 %i.bq, 0
  br i1 %.not58, label %.split.backedge, label %.split88.us

.split.backedge:                                  ; preds = %bb.y, %.split85
  br label %.split

.split88.us:                                      ; preds = %bb.y, %bb.p
  store i32 -1, ptr %5, align 4, !tbaa !6
  br label %.critedge

.split85:                                         ; preds = %bb.x
  %i.br = load i64, ptr %i.h, align 8, !tbaa !93
  %i.bs = icmp sgt i64 %i.br, 0
  %i.bt = icmp eq i32 %i.bo, 11
  %or.cond63 = and i1 %i.bt, %i.bs
  br i1 %or.cond63, label %.split.backedge, label %.critedge

.split104.us:                                     ; preds = %.split85.us92
  br i1 %.not61, label %.critedge120, label %.critedge

.critedge120:                                     ; preds = %.split85.us.us114, %.split104.us
  %i.bu = getelementptr i8, ptr %0, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !92
  %i.bw = call ptr %i.bv() #11                    ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %.split85, %bb.t, %bb.r, %.split104.us, %.critedge120, %.split88.us, %.split83.us, %.split83.us.thread, %bb.v, %bb.w, %.split99.us, %bb.u, %.split97.us
  %.0 = phi i32 [ -1, %bb.t ], [ -1, %.split97.us ], [ -1, %.split99.us ], [ -1, %bb.v ], [ 0, %.split83.us ], [ -1, %bb.u ], [ -1, %bb.w ], [ 0, %.split83.us.thread ], [ -1, %.split88.us ], [ -1, %.critedge120 ], [ -1, %.split104.us ], [ -1, %bb.r ], [ -1, %.split85 ]
  ret i32 %.0
}

declare i64 @_PyDeadline_Get(i64 noundef) local_unnamed_addr #1

declare i64 @_PyDeadline_Init(i64 noundef) local_unnamed_addr #1

declare i32 @PyErr_CheckSignals() local_unnamed_addr #1

declare i64 @_PyTime_AsMilliseconds(i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @accept4(i32 noundef, ptr, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @accept(i32 noundef, ptr, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @getsockaddrarg(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull writeonly captures(none) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.Py_buffer, align 8          ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %6 = alloca %struct.maybe_idna, align 8         ; 7 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %7 = alloca %struct.maybe_idna, align 8         ; 7 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %8 = alloca %struct.ifreq, align 8              ; 6 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %9 = alloca %struct.Py_buffer, align 8          ; 10 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 6 uses
  %i.q = alloca i32, align 4                      ; 6 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %i.t = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %struct.ifreq, align 8             ; 7 uses
  %i.u = alloca ptr, align 8                      ; 7 uses
  %11 = alloca %struct.ifreq, align 8             ; 7 uses
  %i.v = alloca i64, align 8                      ; 4 uses
  %i.w = alloca i64, align 8                      ; 4 uses
  %i.x = alloca ptr, align 8                      ; 7 uses
  %12 = alloca %struct.ifreq, align 8             ; 7 uses
  %i.y = alloca i64, align 8                      ; 4 uses
  %i.z = alloca i32, align 4                      ; 4 uses
  %i.aa = alloca i8, align 1                      ; 4 uses
  %i.ab = alloca ptr, align 8                     ; 4 uses
  %i.ac = alloca ptr, align 8                     ; 4 uses
  %i.ad = getelementptr i8, ptr %0, i64 20        ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !87
  switch i32 %i.ae, label %bb.ed [
    i32 1, label %bb.b
    i32 16, label %bb.q
    i32 42, label %bb.v
    i32 40, label %bb.aa
    i32 21, label %bb.af
    i32 2, label %bb.af
    i32 10, label %bb.as
    i32 17, label %bb.bh
    i32 30, label %bb.bw
    i32 29, label %bb.cg
    i32 38, label %bb.du
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.af = getelementptr i8, ptr %1, i64 8
  %.val257 = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.ag = getelementptr i8, ptr %.val257, i64 168
  %.val267 = load i64, ptr %i.ag, align 8, !tbaa !45
  %i.ah = and i64 %.val267, 268435456
  %.not208 = icmp eq i64 %i.ah, 0
  br i1 %.not208, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = tail call ptr @PyUnicode_EncodeFSDefault(ptr noundef nonnull %1) #11 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %Py_DECREF.exit229, label %Py_INCREF.exit

bb.d:                                             ; preds = %bb.b
  %i.ak = load i32, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.al = icmp ugt i32 %i.ak, -1073741825
  br i1 %i.al, label %Py_INCREF.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = add nuw i32 %i.ak, 1
  store i32 %i.am, ptr %1, align 8, !tbaa !23
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.e, %bb.d, %bb.c
  %.0175 = phi ptr [ %i.ai, %bb.c ], [ %1, %bb.d ], [ %1, %bb.e ] ; 6 uses
  %i.an = call i32 (ptr, ptr, ...) @PyArg_Parse(ptr noundef nonnull %.0175, ptr noundef nonnull @.str.569, ptr noundef nonnull %5) #11
  %.not209 = icmp eq i32 %i.an, 0
  br i1 %.not209, label %bb.f, label %bb.h

bb.f:                                             ; preds = %Py_INCREF.exit
  %i.ao = load i32, ptr %.0175, align 8, !tbaa !23 ; 2 uses
  %.not.i228 = icmp sgt i32 %i.ao, -1
  br i1 %.not.i228, label %bb.g, label %Py_DECREF.exit229

bb.g:                                             ; preds = %bb.f
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %.0175, align 8, !tbaa !23
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %Py_DECREF.exit229.sink.split, label %Py_DECREF.exit229

bb.h:                                             ; preds = %Py_INCREF.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(110) %2, i8 0, i64 110, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !35 ; 6 uses
  %i.at = icmp eq i64 %i.as, 0
  %.pre286.pre = load ptr, ptr %5, align 8, !tbaa !32 ; 2 uses
  br i1 %i.at, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load i8, ptr %.pre286.pre, align 1, !tbaa !23
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp ugt i64 %i.as, 108
  br i1 %i.aw, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.ax, ptr noundef nonnull @.str.570) #11
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.ay = icmp ugt i64 %i.as, 107
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.az, ptr noundef nonnull @.str.570) #11
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ba = getelementptr i8, ptr %2, i64 2
  %i.bb = getelementptr i8, ptr %i.ba, i64 %i.as
  store i8 0, ptr %i.bb, align 1, !tbaa !23
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.h, %bb.n
  %.sink311 = phi i32 [ 3, %bb.n ], [ 2, %bb.h ], [ 2, %bb.j ]
  %i.bc = trunc nuw nsw i64 %i.as to i32
  %i.bd = add nuw nsw i32 %.sink311, %i.bc
  store i32 %i.bd, ptr %3, align 4, !tbaa !6
  %i.be = load i32, ptr %i.ad, align 4, !tbaa !87
  %i.bf = trunc i32 %i.be to i16
  store i16 %i.bf, ptr %2, align 2, !tbaa !194
  %i.bg = getelementptr i8, ptr %2, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bg, ptr align 1 %.pre286.pre, i64 %i.as, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.m, %bb.k
  %.0176 = phi i32 [ 0, %bb.k ], [ 1, %.thread ], [ 0, %bb.m ] ; 3 uses
  call void @PyBuffer_Release(ptr noundef nonnull %5) #11
  %i.bh = load i32, ptr %.0175, align 8, !tbaa !23 ; 2 uses
  %.not.i226 = icmp sgt i32 %i.bh, -1
  br i1 %.not.i226, label %bb.p, label %Py_DECREF.exit229

bb.p:                                             ; preds = %bb.o
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  store i32 %i.bi, ptr %.0175, align 8, !tbaa !23
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %Py_DECREF.exit229.sink.split, label %Py_DECREF.exit229

Py_DECREF.exit229.sink.split:                     ; preds = %bb.p, %bb.g
  %.0.ph = phi i32 [ 0, %bb.g ], [ %.0176, %bb.p ]
  call void @_Py_Dealloc(ptr noundef nonnull %.0175) #11
  br label %Py_DECREF.exit229

Py_DECREF.exit229:                                ; preds = %Py_DECREF.exit229.sink.split, %bb.p, %bb.o, %bb.g, %bb.f, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %.0176, %bb.p ], [ 0, %bb.f ], [ 0, %bb.g ], [ %.0176, %bb.o ], [ %.0.ph, %Py_DECREF.exit229.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.ee

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  %i.bk = getelementptr i8, ptr %1, i64 8
  %.val256 = load ptr, ptr %i.bk, align 8, !tbaa !44 ; 2 uses
  %i.bl = getelementptr i8, ptr %.val256, i64 168
  %.val266 = load i64, ptr %i.bl, align 8, !tbaa !45
  %i.bm = and i64 %.val266, 67108864
  %.not206 = icmp eq i64 %i.bm, 0
  br i1 %.not206, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bn = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  %i.bo = getelementptr i8, ptr %.val256, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !196
  %i.bq = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bn, ptr noundef nonnull @.str.571, ptr noundef %4, ptr noundef %i.bp) #11 ; 0 uses
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.br = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.572, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11
  %.not207 = icmp eq i32 %i.br, 0
  br i1 %.not207, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i16 16, ptr %2, align 4, !tbaa !197
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !6
  %i.bt = getelementptr i8, ptr %2, i64 4
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !96
  %i.bu = load i32, ptr %i.b, align 4, !tbaa !6
  %i.bv = getelementptr i8, ptr %2, i64 8
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !98
end_hunk_3
begin_hunk_4_@idna_converter:bb.a
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %.not.i51 = icmp eq ptr %.val43, @PyByteArray_Type
  br i1 %.not.i51, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.h
  %i.l = tail call i32 @PyType_IsSubtype(ptr noundef %.val43, ptr noundef nonnull @PyByteArray_Type) #11
  %.not56 = icmp eq i32 %i.l, 0
  br i1 %.not56, label %bb.i, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.h, %PyObject_TypeCheck.exit
  %i.m = tail call ptr @PyByteArray_AsString(ptr noundef nonnull %0) #11
  %i.n = getelementptr i8, ptr %1, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !200
  %i.o = tail call i64 @PyByteArray_Size(ptr noundef nonnull %0) #11
  br label %bb.o

bb.i:                                             ; preds = %PyObject_TypeCheck.exit
  %.val42 = load ptr, ptr %i.f, align 8, !tbaa !44 ; 2 uses
  %i.p = getelementptr i8, ptr %.val42, i64 168
  %.val44 = load i64, ptr %i.p, align 8, !tbaa !45
  %i.q = and i64 %.val44, 268435456
  %.not37 = icmp eq i64 %i.q, 0
  br i1 %.not37, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr i8, ptr %0, i64 32
  %.val48 = load i32, ptr %i.r, align 8
  %i.s = and i32 %.val48, 96
  %.not38.not = icmp eq i32 %i.s, 96
  br i1 %.not38.not, label %_PyUnicode_DATA.exit, label %bb.k

_PyUnicode_DATA.exit:                             ; preds = %bb.j
  %.0.i.i = getelementptr i8, ptr %0, i64 40
  %i.t = getelementptr i8, ptr %1, i64 8
  store ptr %.0.i.i, ptr %i.t, align 8, !tbaa !200
  %i.u = getelementptr i8, ptr %0, i64 16
  %.val49 = load i64, ptr %i.u, align 8, !tbaa !209
  br label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.v = tail call ptr @PyUnicode_AsEncodedString(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, ptr noundef null) #11 ; 4 uses
  %.not39 = icmp eq ptr %i.v, null
  br i1 %.not39, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.w, ptr noundef nonnull @.str.598) #11
  br label %idna_cleanup.exit

bb.m:                                             ; preds = %bb.k
  store ptr %i.v, ptr %1, align 8, !tbaa !208
  %i.x = getelementptr i8, ptr %i.v, i64 32
  %i.y = getelementptr i8, ptr %1, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !200
  %i.z = getelementptr i8, ptr %i.v, i64 16
  %.val46 = load i64, ptr %i.z, align 8, !tbaa !67
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  %i.ab = getelementptr i8, ptr %.val42, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !196
  %i.ad = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aa, ptr noundef nonnull @.str.599, ptr noundef %i.ac) #11 ; 0 uses
  br label %idna_cleanup.exit

bb.o:                                             ; preds = %PyObject_TypeCheck.exit.thread, %_PyUnicode_DATA.exit, %bb.m, %bb.g
  %.032 = phi i64 [ %i.k, %bb.g ], [ %i.o, %PyObject_TypeCheck.exit.thread ], [ %.val49, %_PyUnicode_DATA.exit ], [ %.val46, %bb.m ]
  %i.ae = getelementptr i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !200
  %i.ag = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.af) #13
  %.not40 = icmp eq i64 %i.ag, %.032
  br i1 %.not40, label %idna_cleanup.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = load ptr, ptr %1, align 8, !tbaa !24    ; 4 uses
  %.not41 = icmp eq ptr %i.ah, null
  br i1 %.not41, label %Py_DECREF.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %1, align 8, !tbaa !24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp sgt i32 %i.ai, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.q
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !23
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.s, label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ah) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.al = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.al, ptr noundef nonnull @.str.600) #11
  br label %idna_cleanup.exit

idna_cleanup.exit:                                ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.o, %Py_DECREF.exit, %bb.n, %bb.l
  %.0 = phi i32 [ 131072, %bb.o ], [ 0, %Py_DECREF.exit ], [ 0, %bb.n ], [ 0, %bb.l ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ]
  ret i32 %.0
}

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #9

declare i64 @PyBytes_Size(ptr noundef) local_unnamed_addr #1

declare ptr @PyByteArray_AsString(ptr noundef) local_unnamed_addr #1

declare i64 @PyByteArray_Size(ptr noundef) local_unnamed_addr #1

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @internal_connect(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = tail call ptr @PyEval_SaveThread() #11
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load atomic i32, ptr %i.c monotonic, align 4
  %i.e = tail call i32 @connect(i32 noundef %i.d, ptr nonnull %1, i32 noundef %2) #11
  tail call void @PyEval_RestoreThread(ptr noundef %i.b) #11
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__errno_location() #12    ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !6    ; 5 uses
  store i32 %i.g, ptr %i.a, align 4, !tbaa !6
  %i.h = icmp eq i32 %i.g, 4
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @PyErr_CheckSignals() #11
  %.not18 = icmp eq i32 %i.i, 0
  br i1 %.not18, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !93   ; 2 uses
  %.not21 = icmp eq i64 %i.k, 0
  br i1 %.not21, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !93   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  %i.o = icmp eq i32 %i.g, 115
  %or.cond = and i1 %i.o, %i.n
  br i1 %or.cond, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.not19 = icmp eq i32 %3, 0
  br i1 %.not19, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.g, ptr %i.f, align 4, !tbaa !6
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !92
  %i.r = tail call ptr %i.q() #11                 ; 0 uses
  br label %bb.m

bb.h:                                             ; preds = %bb.d, %bb.e
  %i.s = phi i64 [ %i.k, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %.not20 = icmp eq i32 %3, 0
  br i1 %.not20, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call fastcc i32 @sock_call_ex(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @sock_connect_impl, ptr noundef null, i32 noundef 1, ptr noundef null, i64 noundef %i.s)
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.v = call fastcc i32 @sock_call_ex(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @sock_connect_impl, ptr noundef null, i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %i.s)
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i32, ptr %i.a, align 4, !tbaa !6
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.i, %bb.c, %bb.a, %bb.l, %bb.k, %bb.g
  %.0 = phi i32 [ 0, %bb.a ], [ -1, %bb.c ], [ 0, %bb.l ], [ %i.x, %bb.k ], [ -1, %bb.g ], [ -1, %bb.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

declare i32 @connect(i32 noundef, ptr, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @sock_connect_impl(ptr noundef captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 4, ptr %i.b, align 4, !tbaa !6
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load atomic i32, ptr %i.c monotonic, align 4
  %i.e = call i32 @getsockopt(i32 noundef %i.d, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4, !tbaa !6    ; 2 uses
  switch i32 %i.f, label %bb.c [
    i32 106, label %bb.d
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__errno_location() #12
  store i32 %i.f, ptr %i.g, align 4, !tbaa !6
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getpeername(i32 noundef, ptr, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getsockname(i32 noundef, ptr, ptr noundef) local_unnamed_addr #4

declare ptr @PyBytesWriter_Create(i64 noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_GetData(ptr noundef) local_unnamed_addr #1

declare void @PyBytesWriter_Discard(ptr noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_FinishWithSize(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @sock_recv_impl(ptr noundef captures(none) %0, ptr noundef captures(none) initializes((24, 32)) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = load ptr, ptr %1, align 8, !tbaa !139
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !141
  %i.f = getelementptr i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !142
  %i.h = tail call i64 @recv(i32 noundef %i.b, ptr noundef %i.c, i64 noundef %i.e, i32 noundef %i.g) #11 ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 24
  store i64 %i.h, ptr %i.i, align 8, !tbaa !143
  %i.j = icmp sgt i64 %i.h, -1
  %i.k = zext i1 %i.j to i32
  ret i32 %i.k
}

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @sock_recvfrom_guts(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull writeonly captures(none) initializes((0, 8)) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %union.sock_addr, align 8           ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %6 = alloca %struct.sock_recvfrom, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store ptr null, ptr %4, align 8, !tbaa !24
  %i.b = getelementptr i8, ptr %0, i64 20
  %.val = load i32, ptr %i.b, align 4, !tbaa !87
  switch i32 %.val, label %getsockaddrlen.exit [
    i32 1, label %bb.h
    i32 16, label %bb.b
    i32 42, label %bb.b
    i32 40, label %bb.c
    i32 21, label %bb.c
    i32 2, label %bb.c
    i32 10, label %bb.d
    i32 17, label %bb.e
    i32 30, label %bb.c
    i32 29, label %bb.f
    i32 38, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %bb.h

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  br label %bb.h

getsockaddrlen.exit:                              ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.565) #11
  br label %bb.k

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sink = phi i32 [ 88, %bb.g ], [ 12, %bb.b ], [ 110, %bb.a ], [ 16, %bb.c ], [ 24, %bb.f ], [ 28, %bb.d ], [ 20, %bb.e ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !6
  store ptr %1, ptr %6, align 8, !tbaa !212
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.d, align 8, !tbaa !214
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %3, ptr %i.e, align 8, !tbaa !215
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %5, ptr %i.f, align 8, !tbaa !216
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.a, ptr %i.g, align 8, !tbaa !217
  %i.h = getelementptr i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !93
  %i.j = call fastcc range(i32 -1, 1) i32 @sock_call_ex(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @sock_recvfrom_impl, ptr noundef nonnull %6, i32 noundef 0, ptr noundef null, i64 noundef %i.i)
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load atomic i32, ptr %i.l monotonic, align 8
  %i.n = load i32, ptr %i.a, align 4, !tbaa !6
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr i8, ptr %0, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !91
  %i.r = call fastcc ptr @makesockaddr(i32 noundef %i.m, ptr noundef nonnull %5, i64 noundef %i.o, i32 noundef %i.q) ; 2 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !24
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !218
  br label %bb.k

bb.k:                                             ; preds = %getsockaddrlen.exit, %bb.i, %bb.h, %bb.j
  %.0 = phi i64 [ -1, %getsockaddrlen.exit ], [ -1, %bb.h ], [ %i.u, %bb.j ], [ -1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @sock_recvfrom_impl(ptr noundef captures(none) %0, ptr noundef captures(none) initializes((40, 48)) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !216
  %i.c = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !217
  %i.e = load i32, ptr %i.d, align 4, !tbaa !6
  %i.f = zext i32 %i.e to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.f, i1 false)
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load atomic i32, ptr %i.g monotonic, align 4
  %i.i = load ptr, ptr %1, align 8, !tbaa !212
  %i.j = getelementptr i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !214
  %i.l = getelementptr i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !215
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !216
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !217
  %i.p = tail call i64 @recvfrom(i32 noundef %i.h, ptr noundef %i.i, i64 noundef %i.k, i32 noundef %i.m, ptr %i.n, ptr noundef %i.o) #11 ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 40
  store i64 %i.p, ptr %i.q, align 8, !tbaa !218
  %i.r = icmp sgt i64 %i.p, -1
  %i.s = zext i1 %i.r to i32
  ret i32 %i.s
}

declare i64 @recvfrom(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr, ptr noundef) local_unnamed_addr #1

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @sock_send_impl(ptr noundef captures(none) %0, ptr noundef captures(none) initializes((24, 32)) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = load ptr, ptr %1, align 8, !tbaa !144
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !146
  %i.f = getelementptr i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !147
  %i.h = tail call i64 @send(i32 noundef %i.b, ptr noundef %i.c, i64 noundef %i.e, i32 noundef %i.g) #11 ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 24
  store i64 %i.h, ptr %i.i, align 8, !tbaa !148
  %i.j = icmp sgt i64 %i.h, -1
  %i.k = zext i1 %i.j to i32
  ret i32 %i.k
}

declare i64 @send(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @PyTuple_Size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @sock_sendto_impl(ptr noundef captures(none) %0, ptr noundef captures(none) initializes((32, 40)) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = load ptr, ptr %1, align 8, !tbaa !152
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !154
  %i.f = getelementptr i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !155
  %i.h = getelementptr i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !157
  %i.j = getelementptr i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !156
  %i.l = tail call i64 @sendto(i32 noundef %i.b, ptr noundef %i.c, i64 noundef %i.e, i32 noundef %i.g, ptr %i.i, i32 noundef %i.k) #11 ; 2 uses
  %i.m = getelementptr i8, ptr %1, i64 32
  store i64 %i.l, ptr %i.m, align 8, !tbaa !158
  %i.n = icmp sgt i64 %i.l, -1
  %i.o = zext i1 %i.n to i32
  ret i32 %i.o
}

declare i64 @sendto(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr, i32 noundef) local_unnamed_addr #1

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @PyObject_CheckBuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @shutdown(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sock_recvmsg_guts(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef readonly captures(none) %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %union.sock_addr, align 8           ; 6 uses
  %8 = alloca %struct.msghdr, align 8             ; 11 uses
  %9 = alloca %struct.sock_recvmsg, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.b = getelementptr i8, ptr %0, i64 20
  %.val = load i32, ptr %i.b, align 4, !tbaa !87
  switch i32 %.val, label %getsockaddrlen.exit [
    i32 1, label %bb.h
    i32 16, label %bb.b
    i32 42, label %bb.b
    i32 40, label %bb.c
    i32 21, label %bb.c
    i32 2, label %bb.c
    i32 10, label %bb.d
    i32 17, label %bb.e
    i32 30, label %bb.c
    i32 29, label %bb.f
    i32 38, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %bb.h

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  br label %bb.h

getsockaddrlen.exit:                              ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.565) #11
  br label %bb.ai

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.a
  %.097.ph = phi i32 [ 110, %bb.a ], [ 24, %bb.f ], [ 88, %bb.g ], [ 20, %bb.e ], [ 28, %bb.d ], [ 12, %bb.b ], [ 16, %bb.c ] ; 3 uses
  %i.d = zext nneg i32 %.097.ph to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, i8 0, i64 %i.d, i1 false)
  store i16 0, ptr %7, align 8, !tbaa !23
  %or.cond = icmp ugt i64 %4, 2147483647
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.632) #11
  br label %bb.ai

bb.j:                                             ; preds = %bb.h
  %.not63 = icmp eq i64 %4, 0
  br i1 %.not63, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.f = tail call ptr @PyMem_Malloc(i64 noundef %4) #11 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.h = tail call ptr @PyErr_NoMemory() #11
  br label %bb.ai

bb.m:                                             ; preds = %bb.k, %bb.j
  %.054 = phi ptr [ %i.f, %bb.k ], [ null, %bb.j ] ; 2 uses
  store ptr %7, ptr %8, align 8, !tbaa !170
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 %.097.ph, ptr %i.i, align 8, !tbaa !173
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %1, ptr %i.j, align 8, !tbaa !188
  %i.k = sext i32 %2 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %i.k, ptr %i.l, align 8, !tbaa !219
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 7 uses
  store ptr %.054, ptr %i.m, align 8, !tbaa !176
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 9 uses
  store i64 %4, ptr %i.n, align 8, !tbaa !177
  store ptr %8, ptr %9, align 8, !tbaa !220
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %3, ptr %i.o, align 8, !tbaa !222
  %i.p = getelementptr i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !93
  %i.r = call fastcc range(i32 -1, 1) i32 @sock_call_ex(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @sock_recvmsg_impl, ptr noundef nonnull %9, i32 noundef 0, ptr noundef null, i64 noundef %i.q)
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %Py_XDECREF.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = call ptr @PyList_New(i64 noundef 0) #11  ; 6 uses
  %i.u = icmp eq ptr %i.t, null                   ; 2 uses
  br i1 %i.u, label %.thread118, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = load i64, ptr %i.n, align 8, !tbaa !177
  %i.w = icmp ult i64 %i.v, 16
  %i.x = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not65139171 = icmp eq ptr %i.x, null
  %.not65139 = select i1 %i.w, i1 true, i1 %.not65139171
  br i1 %.not65139, label %.thread121, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %.val75181 = load i64, ptr %i.n, align 8
  br label %cmsg_min_space.exit.i

.lr.phthread-pre-split:                           ; preds = %__cmsg_nxthdr.exit
  %.val74.pr = load ptr, ptr %i.m, align 8, !tbaa !176 ; 2 uses
  %.val75 = load i64, ptr %i.n, align 8
  %i.y = icmp eq ptr %.val74.pr, null
  br i1 %i.y, label %get_cmsg_data_len.exit.thread, label %cmsg_min_space.exit.i

cmsg_min_space.exit.i:                            ; preds = %.lr.ph.preheader, %.lr.phthread-pre-split
  %.val75184 = phi i64 [ %.val75181, %.lr.ph.preheader ], [ %.val75, %.lr.phthread-pre-split ] ; 3 uses
  %.052141183 = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.bx, %.lr.phthread-pre-split ] ; 9 uses
  %.val74182 = phi ptr [ %i.x, %.lr.ph.preheader ], [ %.val74.pr, %.lr.phthread-pre-split ]
  %i.z = ptrtoint ptr %.052141183 to i64
  %i.aa = ptrtoint ptr %.val74182 to i64          ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %.not.i.i = icmp ugt i64 %i.ab, -17
  %i.ac = add i64 %i.ab, 16
  %i.ad = icmp ugt i64 %i.ac, %.val75184
  %narrow.i.not.i = select i1 %.not.i.i, i1 true, i1 %i.ad
  br i1 %narrow.i.not.i, label %get_cmsg_data_len.exit.thread, label %bb.p

bb.p:                                             ; preds = %cmsg_min_space.exit.i
  %i.ae = load i64, ptr %.052141183, align 8, !tbaa !51 ; 2 uses
  %i.af = icmp ult i64 %i.ae, 16
  br i1 %i.af, label %get_cmsg_data_len.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = add i64 %i.ae, -16                      ; 2 uses
  %i.ah = getelementptr i8, ptr %.052141183, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %get_cmsg_data_len.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.aj, %i.aa                    ; 2 uses
  %i.al = icmp ugt i64 %i.ak, %.val75184
  br i1 %i.al, label %get_cmsg_data_len.exit.thread, label %get_cmsg_data_len.exit

get_cmsg_data_len.exit:                           ; preds = %bb.r
  %i.am = sub nuw i64 %.val75184, %i.ak           ; 2 uses
  %.not14.i.not.not = icmp ult i64 %i.am, %i.ag   ; 2 uses
  %..i = call i64 @llvm.umin.i64(i64 %i.am, i64 %i.ag) ; 2 uses
  br i1 %.not14.i.not.not, label %get_cmsg_data_len.exit.thread.thread, label %.thread

get_cmsg_data_len.exit.thread:                    ; preds = %.lr.phthread-pre-split, %bb.p, %bb.r, %bb.q, %cmsg_min_space.exit.i
  %i.an = load ptr, ptr @PyExc_RuntimeWarning, align 8, !tbaa !24
  %i.ao = call i32 @PyErr_WarnEx(ptr noundef %i.an, ptr noundef nonnull @.str.633, i64 noundef 1) #11
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %.thread118, label %.thread121

get_cmsg_data_len.exit.thread.thread:             ; preds = %get_cmsg_data_len.exit
  %i.aq = load ptr, ptr @PyExc_RuntimeWarning, align 8, !tbaa !24
  %i.ar = call i32 @PyErr_WarnEx(ptr noundef %i.aq, ptr noundef nonnull @.str.633, i64 noundef 1) #11
  %i.as = icmp eq i32 %i.ar, -1
end_hunk_4
begin_hunk_5_@sock_recvmsg_guts:bb.a
  br i1 %.not14.i.not.not, label %.thread121, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = load i64, ptr %.052141183, align 8, !tbaa !51 ; 4 uses
  %i.bi = icmp ult i64 %i.bh, 16
  br i1 %i.bi, label %.thread121, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bj = sub i64 0, %i.bh
  %i.bk = and i64 %i.bj, 7
  %i.bl = or disjoint i64 %i.bk, 16               ; 2 uses
  %i.bm = load ptr, ptr %i.m, align 8, !tbaa !176
  %i.bn = load i64, ptr %i.n, align 8, !tbaa !177
  %i.bo = getelementptr i8, ptr %i.bm, i64 %i.bn
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %.052141183 to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bl
  %i.bt = sub nuw i64 %i.br, %i.bl
  %i.bu = icmp ult i64 %i.bt, %i.bh
  %or.cond.i = select i1 %i.bs, i1 true, i1 %i.bu
  br i1 %or.cond.i, label %.thread121, label %__cmsg_nxthdr.exit

__cmsg_nxthdr.exit:                               ; preds = %bb.z
  %i.bv = add nuw i64 %i.bh, 7
  %i.bw = and i64 %i.bv, -8
  %i.bx = getelementptr i8, ptr %.052141183, i64 %i.bw ; 2 uses
  %.not65 = icmp eq ptr %i.bx, null
  br i1 %.not65, label %.thread121, label %.lr.phthread-pre-split, !llvm.loop !223

.thread121:                                       ; preds = %bb.z, %bb.y, %__cmsg_nxthdr.exit, %bb.x, %get_cmsg_data_len.exit.thread, %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !224
  %i.ca = call ptr %5(i64 noundef %i.bz, ptr noundef %6) #11, !callees !225
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !226
  %i.cd = getelementptr i8, ptr %0, i64 16
  %i.ce = load atomic i32, ptr %i.cd monotonic, align 8
  %i.cf = load i32, ptr %i.i, align 8, !tbaa !173
  %i.cg = call i32 @llvm.umin.i32(i32 %i.cf, i32 %.097.ph)
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr i8, ptr %0, i64 28
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !91
  %i.ck = call fastcc ptr @makesockaddr(i32 noundef %i.ce, ptr noundef nonnull %7, i64 noundef %i.ch, i32 noundef %i.cj)
  %i.cl = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.636, ptr noundef %i.ca, ptr noundef nonnull %i.t, i32 noundef %i.cc, ptr noundef %i.ck) #11 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %.thread118, label %.thread129

get_cmsg_data_len.exit88.thread:                  ; preds = %bb.ah, %bb.ag, %.loopexit, %__cmsg_nxthdr.exit91, %cmsg_min_space.exit.i80, %bb.ad, %bb.ae, %bb.ac, %.lr.ph149thread-pre-split, %.thread118
  br i1 %i.u, label %Py_XDECREF.exit, label %.thread129

.thread129:                                       ; preds = %.thread121, %get_cmsg_data_len.exit88.thread
  %.050133 = phi ptr [ null, %get_cmsg_data_len.exit88.thread ], [ %i.cl, %.thread121 ] ; 3 uses
  %i.cn = load i32, ptr %i.t, align 8, !tbaa !23  ; 2 uses
  %.not.i.i79 = icmp sgt i32 %i.cn, -1
  br i1 %.not.i.i79, label %bb.aa, label %Py_XDECREF.exit

bb.aa:                                            ; preds = %.thread129
  %i.co = add nsw i32 %i.cn, -1                   ; 2 uses
  store i32 %i.co, ptr %i.t, align 8, !tbaa !23
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.ab, label %Py_XDECREF.exit

bb.ab:                                            ; preds = %bb.aa
  call void @_Py_Dealloc(ptr noundef nonnull %i.t) #11
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.m, %get_cmsg_data_len.exit88.thread, %.thread129, %bb.aa, %bb.ab
  %.050128 = phi ptr [ %.050133, %bb.ab ], [ null, %get_cmsg_data_len.exit88.thread ], [ %.050133, %.thread129 ], [ %.050133, %bb.aa ], [ null, %bb.m ]
  call void @PyMem_Free(ptr noundef %.054) #11
  br label %bb.ai

.thread118:                                       ; preds = %bb.t, %Py_DECREF.exit, %get_cmsg_data_len.exit.thread.thread, %get_cmsg_data_len.exit.thread, %bb.s, %.thread121, %bb.n
  %i.cq = load i64, ptr %i.n, align 8, !tbaa !177
  %i.cr = icmp ult i64 %i.cq, 16
  %i.cs = load ptr, ptr %i.m, align 8             ; 3 uses
  %.not69147172 = icmp eq ptr %i.cs, null
  %.not69147 = select i1 %i.cr, i1 true, i1 %.not69147172
  br i1 %.not69147, label %get_cmsg_data_len.exit88.thread, label %.lr.ph149.preheader

.lr.ph149.preheader:                              ; preds = %.thread118
  %.val73185 = load i64, ptr %i.n, align 8
  br label %cmsg_min_space.exit.i80

.lr.ph149thread-pre-split:                        ; preds = %__cmsg_nxthdr.exit91
  %.val72.pr = load ptr, ptr %i.m, align 8, !tbaa !176 ; 2 uses
  %.val73 = load i64, ptr %i.n, align 8
  %i.ct = icmp eq ptr %.val72.pr, null
  br i1 %i.ct, label %get_cmsg_data_len.exit88.thread, label %cmsg_min_space.exit.i80

cmsg_min_space.exit.i80:                          ; preds = %.lr.ph149.preheader, %.lr.ph149thread-pre-split
  %.val73188 = phi i64 [ %.val73185, %.lr.ph149.preheader ], [ %.val73, %.lr.ph149thread-pre-split ] ; 3 uses
  %.153148187 = phi ptr [ %i.cs, %.lr.ph149.preheader ], [ %i.ei, %.lr.ph149thread-pre-split ] ; 7 uses
  %.val72186 = phi ptr [ %i.cs, %.lr.ph149.preheader ], [ %.val72.pr, %.lr.ph149thread-pre-split ]
  %i.cu = ptrtoint ptr %.153148187 to i64         ; 2 uses
  %i.cv = ptrtoint ptr %.val72186 to i64          ; 2 uses
  %i.cw = sub i64 %i.cu, %i.cv                    ; 2 uses
  %.not.i.i81 = icmp ugt i64 %i.cw, -17
  %i.cx = add i64 %i.cw, 16
  %i.cy = icmp ugt i64 %i.cx, %.val73188
  %narrow.i.not.i82 = select i1 %.not.i.i81, i1 true, i1 %i.cy
  br i1 %narrow.i.not.i82, label %get_cmsg_data_len.exit88.thread, label %bb.ac

bb.ac:                                            ; preds = %cmsg_min_space.exit.i80
  %i.cz = load i64, ptr %.153148187, align 8, !tbaa !51 ; 2 uses
  %i.da = icmp ult i64 %i.cz, 16
  br i1 %i.da, label %get_cmsg_data_len.exit88.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.db = add i64 %i.cz, -16                      ; 2 uses
  %i.dc = getelementptr i8, ptr %.153148187, i64 16 ; 3 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %get_cmsg_data_len.exit88.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.de, %i.cv                    ; 2 uses
  %i.dg = icmp ugt i64 %i.df, %.val73188
  br i1 %i.dg, label %get_cmsg_data_len.exit88.thread, label %get_cmsg_data_len.exit88

get_cmsg_data_len.exit88:                         ; preds = %bb.ae
  %i.dh = sub nuw i64 %.val73188, %i.df           ; 2 uses
  %.not14.i84.not = icmp ult i64 %i.dh, %i.db
  %i.di = getelementptr i8, ptr %.153148187, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !6
  %i.dk = icmp eq i32 %i.dj, 1
  br i1 %i.dk, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %get_cmsg_data_len.exit88
  %..i85 = call i64 @llvm.umin.i64(i64 %i.dh, i64 %i.db)
  %i.dl = getelementptr i8, ptr %.153148187, i64 12
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !6
  %i.dn = icmp ne i32 %i.dm, 1
  %i.do = lshr i64 %..i85, 2                      ; 2 uses
  %.not70143 = icmp eq i64 %i.do, 0
  %or.cond155 = select i1 %i.dn, i1 true, i1 %.not70143
  br i1 %or.cond155, label %.loopexit, label %.lr.ph146

.lr.ph146:                                        ; preds = %bb.af, %.lr.ph146
  %.0145 = phi ptr [ %i.dq, %.lr.ph146 ], [ %i.dc, %bb.af ] ; 2 uses
  %.047144 = phi i64 [ %i.dp, %.lr.ph146 ], [ %i.do, %bb.af ]
  %i.dp = add nsw i64 %.047144, -1                ; 2 uses
  %i.dq = getelementptr i8, ptr %.0145, i64 4
  %i.dr = load i32, ptr %.0145, align 4, !tbaa !6
  %i.ds = call i32 @close(i32 noundef %i.dr) #11  ; 0 uses
  %.not70 = icmp eq i64 %i.dp, 0
  br i1 %.not70, label %.loopexit, label %.lr.ph146, !llvm.loop !227

.loopexit:                                        ; preds = %.lr.ph146, %bb.af, %get_cmsg_data_len.exit88
  br i1 %.not14.i84.not, label %get_cmsg_data_len.exit88.thread, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  %i.dt = load i64, ptr %.153148187, align 8, !tbaa !51 ; 4 uses
  %i.du = icmp ult i64 %i.dt, 16
  br i1 %i.du, label %get_cmsg_data_len.exit88.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dv = sub i64 0, %i.dt
  %i.dw = and i64 %i.dv, 7
  %i.dx = or disjoint i64 %i.dw, 16               ; 2 uses
  %i.dy = load ptr, ptr %i.m, align 8, !tbaa !176
  %i.dz = load i64, ptr %i.n, align 8, !tbaa !177
  %i.ea = getelementptr i8, ptr %i.dy, i64 %i.dz
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = sub i64 %i.eb, %i.cu                    ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %i.dx
  %i.ee = sub nuw i64 %i.ec, %i.dx
  %i.ef = icmp ult i64 %i.ee, %i.dt
  %or.cond.i89 = select i1 %i.ed, i1 true, i1 %i.ef
  br i1 %or.cond.i89, label %get_cmsg_data_len.exit88.thread, label %__cmsg_nxthdr.exit91

__cmsg_nxthdr.exit91:                             ; preds = %bb.ah
  %i.eg = add nuw i64 %i.dt, 7
  %i.eh = and i64 %i.eg, -8
  %i.ei = getelementptr i8, ptr %.153148187, i64 %i.eh ; 2 uses
  %.not69 = icmp eq ptr %i.ei, null
  br i1 %.not69, label %get_cmsg_data_len.exit88.thread, label %.lr.ph149thread-pre-split, !llvm.loop !228

bb.ai:                                            ; preds = %getsockaddrlen.exit, %Py_XDECREF.exit, %bb.l, %bb.i
  %.048 = phi ptr [ null, %bb.i ], [ %i.h, %bb.l ], [ %.050128, %Py_XDECREF.exit ], [ null, %getsockaddrlen.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret ptr %.048
}

; Function Attrs: nounwind uwtable
define internal ptr @makeval_recvmsg(i64 noundef %0, ptr noundef captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !159
  %i.b = tail call ptr @PyBytesWriter_FinishWithSize(ptr noundef %i.a, i64 noundef %0) #11
  store ptr null, ptr %1, align 8, !tbaa !159
  ret ptr %i.b
}

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @sock_recvmsg_impl(ptr noundef captures(none) %0, ptr noundef captures(none) initializes((16, 24)) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = load ptr, ptr %1, align 8, !tbaa !220
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !222
  %i.f = tail call i64 @recvmsg(i32 noundef %i.b, ptr noundef %i.c, i32 noundef %i.e) #11 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 16
  store i64 %i.f, ptr %i.g, align 8, !tbaa !224
  %i.h = icmp sgt i64 %i.f, -1
  %i.i = zext i1 %i.h to i32
  ret i32 %i.i
}

declare i32 @PyErr_WarnEx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @recvmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PySequence_Fast(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @makeval_recvmsg_into(i64 noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyLong_FromSsize_t(i64 noundef %0) #11
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @sock_sendmsg_iovec(ptr noundef %0, ptr noundef nonnull writeonly captures(none) %1, ptr noundef nonnull writeonly captures(none) %2, ptr noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PySequence_Fast(ptr noundef %0, ptr noundef nonnull @.str.651) #11 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %.in6 = getelementptr i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %.in6, align 8, !tbaa !67  ; 7 uses
  %i.e = icmp sgt i64 %i.d, 2147483647
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.652) #11
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 24
  store i64 %i.d, ptr %i.g, align 8, !tbaa !219
  %i.h = icmp sgt i64 %i.d, 0
  br i1 %i.h, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.i = shl nuw nsw i64 %i.d, 4
  %i.j = tail call ptr @PyMem_Malloc(i64 noundef %i.i) #11 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @PyErr_NoMemory() #11      ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %1, i64 16
  store ptr %i.j, ptr %i.m, align 8, !tbaa !188
  %i.n = mul nuw nsw i64 %i.d, 80
  %i.o = tail call ptr @PyMem_Malloc(i64 noundef %i.n) #11 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.h, label %.lr.ph

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr @PyErr_NoMemory() #11      ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.g
  %i.r = getelementptr i8, ptr %i.a, i64 24
  %i.s = getelementptr i8, ptr %i.a, i64 32
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %.0427 = phi i64 [ 0, %.lr.ph ], [ %i.af, %bb.l ] ; 5 uses
  %.val50 = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.t = getelementptr i8, ptr %.val50, i64 168
  %.val52 = load i64, ptr %i.t, align 8, !tbaa !45
  %i.u = and i64 %.val52, 33554432
  %.not49 = icmp eq i64 %i.u, 0
  br i1 %.not49, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !164
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.pn = phi ptr [ %i.v, %bb.j ], [ %i.s, %bb.i ]
  %.in = getelementptr [8 x i8], ptr %.pn, i64 %.0427
  %i.w = load ptr, ptr %.in, align 8, !tbaa !24
  %i.x = getelementptr [80 x i8], ptr %i.o, i64 %.0427 ; 3 uses
  %i.y = tail call i32 @PyObject_GetBuffer(ptr noundef %i.w, ptr noundef %i.x, i32 noundef 0) #11
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !32
  %i.ab = getelementptr [16 x i8], ptr %i.j, i64 %.0427 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !161
  %i.ac = getelementptr i8, ptr %i.x, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !35
  %i.ae = getelementptr i8, ptr %i.ab, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !163
  %i.af = add nuw nsw i64 %.0427, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.d
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !229

bb.m:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !169
  store i64 0, ptr %3, align 8, !tbaa !51
  br label %Py_XDECREF.exit

.loopexit:                                        ; preds = %bb.k, %bb.l, %bb.d, %bb.h, %bb.f, %bb.c
  %.143.ph = phi i64 [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.h ], [ 0, %bb.d ], [ %.0427, %bb.k ], [ %i.d, %bb.l ]
  %.041.ph = phi i32 [ -1, %bb.f ], [ -1, %bb.c ], [ -1, %bb.h ], [ 0, %bb.d ], [ -1, %bb.k ], [ 0, %bb.l ] ; 3 uses
  %.1.ph = phi ptr [ null, %bb.f ], [ null, %bb.c ], [ null, %bb.h ], [ null, %bb.d ], [ %i.o, %bb.l ], [ %i.o, %bb.k ]
  store ptr %.1.ph, ptr %2, align 8, !tbaa !169
  store i64 %.143.ph, ptr %3, align 8, !tbaa !51
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ag, -1
  br i1 %.not.i.i, label %bb.n, label %Py_XDECREF.exit

bb.n:                                             ; preds = %.loopexit
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !23
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.o, label %Py_XDECREF.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #11
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.m, %.loopexit, %bb.n, %bb.o
  %.0415 = phi i32 [ -1, %bb.m ], [ %.041.ph, %.loopexit ], [ %.041.ph, %bb.n ], [ %.041.ph, %bb.o ]
  ret i32 %.0415
}

declare ptr @PySequence_Tuple(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @sock_sendmsg_impl(ptr noundef captures(none) %0, ptr noundef captures(none) initializes((16, 24)) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = load ptr, ptr %1, align 8, !tbaa !182
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !185
  %i.f = tail call i64 @sendmsg(i32 noundef %i.b, ptr noundef %i.c, i32 noundef %i.e) #11 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 16
  store i64 %i.f, ptr %i.g, align 8, !tbaa !186
  %i.h = icmp sgt i64 %i.f, -1
  %i.i = zext i1 %i.h to i32
  ret i32 %i.i
}

declare i64 @sendmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @sock_gettimeout_getter(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val = load i64, ptr %i.a, align 8, !tbaa !93  ; 2 uses
  %i.b = icmp slt i64 %.val, 0
  br i1 %i.b, label %sock_gettimeout_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call double @PyTime_AsSecondsDouble(i64 noundef %.val) #11
  %i.d = tail call ptr @PyFloat_FromDouble(double noundef %i.c) #11
  br label %sock_gettimeout_impl.exit

sock_gettimeout_impl.exit:                        ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.0.i
}

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @PyType_GetModuleByDef(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_GetRaisedException() local_unnamed_addr #1

declare i32 @PyErr_ResourceWarning(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @PyErr_FormatUnraisable(ptr noundef, ...) local_unnamed_addr #1

declare void @PyErr_SetRaisedException(ptr noundef) local_unnamed_addr #1

declare ptr @PyCapsule_GetPointer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { nounwind willreturn memory(read) }

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
!10 = !{!11, !14, i64 24}
!11 = !{!"", !12, i64 0, !15, i64 16, !14, i64 24, !15, i64 32, !15, i64 40, !16, i64 48, !17, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96}
!12 = !{!"_object", !8, i64 0, !13, i64 8}
!13 = !{!"p1 _ZTS11_typeobject", !14, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 _ZTS7_object", !14, i64 0}
!16 = !{!"_Bool", !8, i64 0}
!17 = !{!"long", !8, i64 0}
!18 = !{!19, !13, i64 0}
!19 = !{!"_socket_state", !13, i64 0, !15, i64 8, !15, i64 16, !17, i64 24}
!20 = !{!19, !15, i64 8}
!21 = !{!19, !15, i64 16}
!22 = !{!13, !13, i64 0}
!23 = !{!8, !8, i64 0}
!24 = !{!15, !15, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 omnipotent char", !14, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTS7hostent", !14, i64 0}
!29 = !{!30, !31, i64 0}
!30 = !{!"sockaddr", !31, i64 0, !8, i64 2}
!31 = !{!"short", !8, i64 0}
!32 = !{!33, !14, i64 0}
!33 = !{!"", !14, i64 0, !15, i64 8, !17, i64 16, !17, i64 24, !7, i64 32, !7, i64 36, !26, i64 40, !34, i64 48, !34, i64 56, !34, i64 64, !14, i64 72}
!34 = !{!"p1 long", !14, i64 0}
!35 = !{!33, !17, i64 16}
!36 = !{!37, !7, i64 16}
!37 = !{!"servent", !26, i64 0, !38, i64 8, !7, i64 16, !26, i64 24}
!38 = !{!"p2 omnipotent char", !39, i64 0}
!39 = !{!"any p2 pointer", !14, i64 0}
!40 = !{!37, !26, i64 0}
!41 = !{!42, !7, i64 16}
!42 = !{!"protoent", !26, i64 0, !38, i64 8, !7, i64 16}
!43 = !{!31, !31, i64 0}
!44 = !{!12, !13, i64 8}
!45 = !{!46, !17, i64 168}
!46 = !{!"_typeobject", !47, i64 0, !26, i64 24, !17, i64 32, !17, i64 40, !14, i64 48, !17, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !17, i64 168, !26, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !17, i64 208, !14, i64 216, !14, i64 224, !48, i64 232, !49, i64 240, !50, i64 248, !13, i64 256, !15, i64 264, !14, i64 272, !14, i64 280, !17, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !14, i64 360, !15, i64 368, !14, i64 376, !7, i64 384, !14, i64 392, !14, i64 400, !8, i64 408, !31, i64 410}
!47 = !{!"PyVarObject", !12, i64 0, !17, i64 16}
!48 = !{!"p1 _ZTS11PyMethodDef", !14, i64 0}
!49 = !{!"p1 _ZTS11PyMemberDef", !14, i64 0}
!50 = !{!"p1 _ZTS11PyGetSetDef", !14, i64 0}
!51 = !{!17, !17, i64 0}
!52 = !{!33, !15, i64 8}
!53 = !{!54, !54, i64 0}
!54 = !{!"p1 _ZTS8addrinfo", !14, i64 0}
!55 = !{!56, !7, i64 4}
!56 = !{!"addrinfo", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !57, i64 24, !26, i64 32, !54, i64 40}
!57 = !{!"p1 _ZTS8sockaddr", !14, i64 0}
!58 = !{!56, !7, i64 8}
!59 = !{!56, !7, i64 12}
!60 = !{!56, !7, i64 0}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!56, !57, i64 24}
!64 = !{!56, !7, i64 16}
!65 = !{!56, !26, i64 32}
!66 = !{!56, !54, i64 40}
!67 = !{!47, !17, i64 16}
!68 = !{!69, !7, i64 4}
!69 = !{!"sockaddr_in6", !31, i64 0, !31, i64 2, !7, i64 4, !70, i64 8, !7, i64 24}
!70 = !{!"in6_addr", !8, i64 0}
!71 = !{!69, !7, i64 24}
!72 = !{!73, !7, i64 0}
!73 = !{!"if_nameindex", !7, i64 0, !26, i64 8}
!74 = !{!73, !26, i64 8}
!75 = distinct !{!75, !62}
!76 = !{!77, !31, i64 0}
!77 = !{!"sockaddr_in", !31, i64 0, !31, i64 2, !78, i64 4, !8, i64 8}
!78 = !{!"in_addr", !7, i64 0}
!79 = !{!77, !7, i64 4}
!80 = !{!69, !31, i64 0}
!81 = !{!82, !7, i64 16}
!82 = !{!"hostent", !26, i64 0, !38, i64 8, !7, i64 16, !7, i64 20, !38, i64 24}
!83 = !{!82, !38, i64 8}
!84 = !{!82, !38, i64 24}
!85 = !{!82, !26, i64 0}
!86 = !{!46, !14, i64 304}
!87 = !{!88, !7, i64 20}
!88 = !{!"", !12, i64 0, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !14, i64 32, !17, i64 40, !89, i64 48}
!89 = !{!"p1 _ZTS13_socket_state", !14, i64 0}
!90 = !{!88, !7, i64 24}
!91 = !{!88, !7, i64 28}
!92 = !{!88, !14, i64 32}
!93 = !{!88, !17, i64 40}
!94 = !{!88, !89, i64 48}
!95 = !{!77, !31, i64 2}
!96 = !{!97, !7, i64 4}
!97 = !{!"sockaddr_nl", !31, i64 0, !31, i64 2, !7, i64 4, !7, i64 8}
!98 = !{!97, !7, i64 8}
!99 = !{!100, !7, i64 4}
!100 = !{!"sockaddr_qrtr", !31, i64 0, !7, i64 4, !7, i64 8}
!101 = !{!100, !7, i64 8}
!102 = !{!103, !7, i64 8}
!103 = !{!"sockaddr_vm", !31, i64 0, !31, i64 2, !7, i64 4, !7, i64 8, !8, i64 12, !8, i64 13}
!104 = !{!103, !7, i64 4}
!105 = !{!69, !31, i64 2}
!106 = !{!107, !7, i64 4}
!107 = !{!"sockaddr_ll", !31, i64 0, !31, i64 2, !7, i64 4, !31, i64 8, !8, i64 10, !8, i64 11, !8, i64 12}
!108 = !{!107, !31, i64 2}
!109 = !{!107, !8, i64 10}
!110 = !{!107, !31, i64 8}
!111 = !{!107, !8, i64 11}
end_hunk_5
