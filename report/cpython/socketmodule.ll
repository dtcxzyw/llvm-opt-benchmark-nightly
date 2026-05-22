inline.NumInlined: 287
inline.NumDeleted: 62
begin_hunk_0_@sock_capi_destroy:bb.a
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
define internal ptr @sock_repr(ptr noundef readonly captures(none) %0) #0 {
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
  %3 = alloca %union.sock_addr, align 8           ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
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
  br i1 %or.cond.i, label %bb.s, label %bb.ah

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
  %i.be = tail call ptr @__errno_location() #12, !inline_history !130
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !6
  switch i32 %i.bf, label %bb.ab [
    i32 9, label %bb.aa
    i32 88, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.y
  %i.bg = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  %i.bh = call ptr @PyErr_SetFromErrno(ptr noundef %i.bg) #11, !inline_history !130 ; 0 uses
  br label %.thread78.i

bb.ab:                                            ; preds = %bb.z, %bb.x, %bb.w
  %.050.i = phi i32 [ %i.bd, %bb.x ], [ %.143, %bb.w ], [ %.143, %bb.z ]
  %i.bi = icmp eq i32 %.141, -1
  br i1 %i.bi, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 4, ptr %i.d, align 4, !tbaa !6
  %i.bj = call i32 @getsockopt(i32 noundef %i.au, i32 noundef 1, i32 noundef 3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #11, !inline_history !130
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.thread76.i, label %bb.ad

.thread76.i:                                      ; preds = %bb.ac
  %i.bl = load i32, ptr %i.c, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bm = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  %i.bn = call ptr @PyErr_SetFromErrno(ptr noundef %i.bm) #11, !inline_history !130 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.thread78.i

bb.ae:                                            ; preds = %.thread76.i, %bb.ab
  %.157.i = phi i32 [ %i.bl, %.thread76.i ], [ %.141, %bb.ab ]
  %i.bo = icmp eq i32 %.1, -1
  br i1 %i.bo, label %bb.af, label %.sink.split100.i

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  store i32 4, ptr %i.f, align 4, !tbaa !6
  %i.bp = call i32 @getsockopt(i32 noundef %i.au, i32 noundef 1, i32 noundef 38, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #11, !inline_history !130
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.thread88.i, label %bb.ag

.thread88.i:                                      ; preds = %bb.af
  %i.br = load i32, ptr %i.e, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %.sink.split100.i

.thread78.i:                                      ; preds = %bb.ad, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %sock_initobj_impl.exit

bb.ag:                                            ; preds = %bb.af
  %4 = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  %5 = call ptr @PyErr_SetFromErrno(ptr noundef %4) #11, !inline_history !130 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %sock_initobj_impl.exit

bb.ah:                                            ; preds = %bb.r
  %i.bs = icmp eq i32 %.143, -1
  %spec.store.select.i = select i1 %i.bs, i32 2, i32 %.143 ; 3 uses
  %i.bt = icmp eq i32 %.141, -1
  %spec.store.select5.i = select i1 %i.bt, i32 1, i32 %.141 ; 3 uses
  %i.bu = icmp eq i32 %.1, -1
  %spec.store.select4.i = select i1 %i.bu, i32 0, i32 %.1 ; 3 uses
  %i.bv = call ptr @PyEval_SaveThread() #11, !inline_history !130 ; 2 uses
  %i.bw = load atomic i32, ptr @sock_cloexec_works monotonic, align 4
  %.not.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i, label %.sink.split.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bx = or i32 %spec.store.select5.i, 524288
  %i.by = call i32 @socket(i32 noundef %spec.store.select.i, i32 noundef %i.bx, i32 noundef %spec.store.select4.i) #11, !inline_history !130 ; 4 uses
  %i.bz = load atomic i32, ptr @sock_cloexec_works monotonic, align 4
  %i.ca = icmp eq i32 %i.bz, -1
  br i1 %i.ca, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.cb = icmp sgt i32 %i.by, -1
  br i1 %i.cb, label %.thread90.i, label %bb.ak

.thread90.i:                                      ; preds = %bb.aj
  store atomic i32 1, ptr @sock_cloexec_works monotonic, align 4
  call void @PyEval_RestoreThread(ptr noundef %i.bv) #11, !inline_history !130
  br label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.cc = tail call ptr @__errno_location() #12, !inline_history !130
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !6
  %i.ce = icmp eq i32 %i.cd, 22
  br i1 %i.ce, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store atomic i32 0, ptr @sock_cloexec_works monotonic, align 4
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.al, %bb.ah
  %i.cf = call i32 @socket(i32 noundef %spec.store.select.i, i32 noundef %spec.store.select5.i, i32 noundef %spec.store.select4.i) #11, !inline_history !130
  br label %bb.am

bb.am:                                            ; preds = %.sink.split.i, %bb.ak, %bb.ai
  %.064.i = phi i32 [ %i.by, %bb.ak ], [ %i.by, %bb.ai ], [ %i.cf, %.sink.split.i ] ; 2 uses
  call void @PyEval_RestoreThread(ptr noundef %i.bv) #11, !inline_history !130
  %i.cg = icmp eq i32 %.064.i, -1
  br i1 %i.cg, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ch = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  %i.ci = call ptr @PyErr_SetFromErrno(ptr noundef %i.ch) #11, !inline_history !130 ; 0 uses
  br label %sock_initobj_impl.exit

bb.ao:                                            ; preds = %bb.am, %.thread90.i
  %.06492.i = phi i32 [ %i.by, %.thread90.i ], [ %.064.i, %bb.am ] ; 3 uses
  %i.cj = call i32 @_Py_set_inheritable(i32 noundef %.06492.i, i32 noundef 0, ptr noundef nonnull @sock_cloexec_works) #11, !inline_history !130
  %i.ck = icmp slt i32 %i.cj, 0
  br i1 %i.ck, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.cl = call i32 @close(i32 noundef %.06492.i) #11, !inline_history !130 ; 0 uses
  br label %sock_initobj_impl.exit

.sink.split100.i:                                 ; preds = %.thread88.i, %bb.ae
  %.363.ph.i = phi i32 [ %i.br, %.thread88.i ], [ %.1, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split100.i, %bb.ao
  %.165.i = phi i32 [ %.06492.i, %bb.ao ], [ %i.au, %.sink.split100.i ] ; 2 uses
  %.363.i = phi i32 [ %spec.store.select4.i, %bb.ao ], [ %.363.ph.i, %.sink.split100.i ]
  %.359.i = phi i32 [ %spec.store.select5.i, %bb.ao ], [ %.157.i, %.sink.split100.i ] ; 2 uses
  %.252.i = phi i32 [ %spec.store.select.i, %bb.ao ], [ %.050.i, %.sink.split100.i ]
  %i.cm = getelementptr i8, ptr %0, i64 16        ; 2 uses
  store atomic i32 %.165.i, ptr %i.cm monotonic, align 4
  %i.cn = getelementptr i8, ptr %0, i64 20
  store i32 %.252.i, ptr %i.cn, align 4, !tbaa !87
  %i.co = getelementptr i8, ptr %0, i64 24
  %i.cp = and i32 %.359.i, -526337
  store i32 %i.cp, ptr %i.co, align 8, !tbaa !90
  %i.cq = getelementptr i8, ptr %0, i64 28
  store i32 %.363.i, ptr %i.cq, align 4, !tbaa !91
  %i.cr = getelementptr i8, ptr %0, i64 32
  store ptr @set_error, ptr %i.cr, align 8, !tbaa !92
  %i.cs = and i32 %.359.i, 2048
  %.not.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ct = getelementptr i8, ptr %0, i64 40
  store i64 0, ptr %i.ct, align 8, !tbaa !93
  br label %init_sockobject.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.cu = getelementptr i8, ptr %.val.i.i, i64 24
  %i.cv = load atomic i64, ptr %i.cu monotonic, align 8 ; 2 uses
  %i.cw = getelementptr i8, ptr %0, i64 40
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !93
  %i.cx = icmp sgt i64 %i.cv, -1
  br i1 %i.cx, label %bb.at, label %init_sockobject.exit.i

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cy = call ptr @PyEval_SaveThread() #11, !inline_history !130
  store i32 1, ptr %i.a, align 4, !tbaa !6
  %i.cz = load atomic i32, ptr %i.cm monotonic, align 4
  %i.da = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.cz, i64 noundef 21537, ptr noundef nonnull %i.a) #11, !inline_history !130
  %.not4.i.i.i = icmp eq i32 %i.da, -1
  call void @PyEval_RestoreThread(ptr noundef %i.cy) #11, !inline_history !130
  br i1 %.not4.i.i.i, label %bb.au, label %internal_setblocking.exit.i.i

internal_setblocking.exit.i.i:                    ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %init_sockobject.exit.i

init_sockobject.exit.i:                           ; preds = %internal_setblocking.exit.i.i, %bb.as, %bb.ar
  %i.db = getelementptr i8, ptr %0, i64 48
  store ptr %.val.i.i, ptr %i.db, align 8, !tbaa !94
  br label %sock_initobj_impl.exit

bb.au:                                            ; preds = %bb.at
  %i.dc = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  %i.dd = call ptr @PyErr_SetFromErrno(ptr noundef %i.dc) #11, !inline_history !130 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.de = call i32 @close(i32 noundef %.165.i) #11, !inline_history !130 ; 0 uses
  br label %sock_initobj_impl.exit

sock_initobj_impl.exit:                           ; preds = %bb.au, %init_sockobject.exit.i, %bb.ap, %bb.an, %bb.ag, %.thread78.i, %.thread.i, %bb.t, %bb.q, %bb.n, %bb.j, %bb.f, %bb.c
  %.046 = phi i32 [ -1, %bb.f ], [ -1, %bb.j ], [ -1, %bb.n ], [ -1, %bb.c ], [ -1, %bb.ap ], [ -1, %bb.q ], [ -1, %.thread.i ], [ -1, %bb.au ], [ -1, %bb.t ], [ -1, %bb.ag ], [ -1, %bb.an ], [ 0, %init_sockobject.exit.i ], [ -1, %.thread78.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  ret i32 %.046
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_new(ptr noundef %0, ptr readnone captures(none) %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.c = tail call ptr %i.b(ptr noundef %0, i64 noundef 0) #11 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 16
  store i32 -1, ptr %i.d, align 8, !tbaa !131
  %i.e = tail call i64 @_PyTime_FromSeconds(i32 noundef -1) #11
  %i.f = getelementptr i8, ptr %i.c, i64 40
  store i64 %i.e, ptr %i.f, align 8, !tbaa !93
  %i.g = getelementptr i8, ptr %i.c, i64 32
  store ptr @set_error, ptr %i.g, align 8, !tbaa !92
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal void @sock_finalize(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyErr_GetRaisedException() #11
  %i.b = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.c = load atomic i32, ptr %i.b monotonic, align 4
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, i64, ptr, ...) @PyErr_ResourceWarning(ptr noundef nonnull %0, i64 noundef 1, ptr noundef nonnull @.str.673, ptr noundef nonnull %0) #11
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @PyExc_Warning, align 8, !tbaa !24
  %i.f = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.e) #11
  %.not10 = icmp eq i32 %i.f, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.674, ptr noundef nonnull %0) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.g = load atomic i32, ptr %i.b monotonic, align 4
  store atomic i32 -1, ptr %i.b monotonic, align 4
  %i.h = tail call ptr @PyEval_SaveThread() #11
  %i.i = tail call i32 @close(i32 noundef %i.g) #11 ; 0 uses
  tail call void @PyEval_RestoreThread(ptr noundef %i.h) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  tail call void @PyErr_SetRaisedException(ptr noundef %i.a) #11
  ret void
}

declare i32 @PyObject_CallFinalizerFromDealloc(ptr noundef) local_unnamed_addr #1

declare void @PyObject_GC_UnTrack(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @sock_accept(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %union.sock_addr, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.sock_accept, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
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
  br label %Py_XDECREF.exit25

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sink = phi i32 [ 88, %bb.g ], [ 12, %bb.b ], [ 110, %bb.a ], [ 16, %bb.c ], [ 24, %bb.f ], [ 28, %bb.d ], [ 20, %bb.e ]
  %i.d = phi i64 [ 88, %bb.g ], [ 12, %bb.b ], [ 110, %bb.a ], [ 16, %bb.c ], [ 24, %bb.f ], [ 28, %bb.d ], [ 20, %bb.e ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %2, i8 0, i64 %i.d, i1 false)
  store ptr %i.a, ptr %3, align 8, !tbaa !132
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.e, align 8, !tbaa !136
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 -1, ptr %i.f, align 8, !tbaa !137
  %i.g = getelementptr i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !93
  %i.i = call fastcc range(i32 -1, 1) i32 @sock_call_ex(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @sock_accept_impl, ptr noundef nonnull %3, i32 noundef 0, ptr noundef null, i64 noundef %i.h)
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %Py_XDECREF.exit25, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = load i32, ptr %i.f, align 8, !tbaa !137  ; 4 uses
  %i.l = load atomic i32, ptr @accept4_works monotonic, align 4
  %.not22 = icmp eq i32 %i.l, 0
  br i1 %.not22, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.m = call i32 @_Py_set_inheritable(i32 noundef %i.k, i32 noundef 0, ptr noundef null) #11
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.o = call i32 @close(i32 noundef %i.k) #11    ; 0 uses
  br label %Py_XDECREF.exit25

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.p = sext i32 %i.k to i64
  %i.q = call ptr @PyLong_FromLong(i64 noundef %i.p) #11 ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.s = call i32 @close(i32 noundef %i.k) #11    ; 0 uses
  br label %Py_XDECREF.exit25

bb.n:                                             ; preds = %bb.l
  %i.t = getelementptr i8, ptr %0, i64 16
  %i.u = load atomic i32, ptr %i.t monotonic, align 4
  %i.v = load i32, ptr %i.a, align 4, !tbaa !6
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr i8, ptr %0, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !91
  %i.z = call fastcc ptr @makesockaddr(i32 noundef %i.u, ptr noundef nonnull %2, i64 noundef %i.w, i32 noundef %i.y) ; 5 uses
  %i.aa = icmp eq ptr %i.z, null                  ; 2 uses
  br i1 %i.aa, label %bb.p, label %bb.o

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
end_hunk_0
begin_hunk_1_@sock_sendto:bb.a
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
define internal ptr @sock_setsockopt(ptr noundef readonly captures(none) %0, ptr noundef %1) #0 {
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
  br i1 %.not28.not, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  br label %bb.v

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

bb.v:                                             ; preds = %.thread, %bb.t, %bb.q, %bb.l, %bb.a, %bb.u, %bb.s, %bb.e, %bb.c
  %.119 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ %i.bl, %bb.u ], [ null, %bb.q ], [ null, %.thread ], [ null, %bb.a ], [ null, %bb.l ], [ null, %bb.s ], [ @_Py_NoneStruct, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.119
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_shutdown(ptr noundef readonly captures(none) %0, ptr noundef %1) #0 {
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
end_hunk_1
