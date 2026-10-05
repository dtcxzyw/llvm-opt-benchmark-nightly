Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/getargs?download=true
inline.NumInlined: 56
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@getargs_S:bb.a
  %i.d = load i32, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %i.e = icmp ugt i32 %i.d, -1073741825
  br i1 %i.e, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %i.c, align 8, !tbaa !10
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.c, %bb.b ], [ %i.c, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @getargs_U(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.a) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %i.e = icmp ugt i32 %i.d, -1073741825
  br i1 %i.e, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %i.c, align 8, !tbaa !10
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.c, %bb.b ], [ %i.c, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @getargs_Y(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.a) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %i.e = icmp ugt i32 %i.d, -1073741825
  br i1 %i.e, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %i.c, align 8, !tbaa !10
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.c, %bb.b ], [ %i.c, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_b(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.56, ptr noundef nonnull %i.a) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 1, !tbaa !10
  %i.d = zext i8 %i.c to i64
  %i.e = call ptr @PyLong_FromUnsignedLong(i64 noundef %i.d) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_c(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.57, ptr noundef nonnull %i.a) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 1, !tbaa !10
  %i.d = zext i8 %i.c to i64
  %i.e = call ptr @PyLong_FromLong(i64 noundef %i.d) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_d(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.a) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load double, ptr %i.a, align 8, !tbaa !40
  %i.d = call ptr @PyFloat_FromDouble(double noundef %i.c) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_es(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.d = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.59, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.g = call i32 (ptr, ptr, ...) @PyArg_Parse(ptr noundef %i.e, ptr noundef nonnull @.str.60, ptr noundef %i.f, ptr noundef nonnull %i.c) #7
  %.not3 = icmp eq i32 %i.g, 0
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.i = call ptr @PyBytes_FromString(ptr noundef %i.h) #7
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !19
  call void @PyMem_Free(ptr noundef %i.j) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.i, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_es_hash(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store ptr null, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store ptr null, ptr %i.d, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.f = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.61, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !20   ; 5 uses
  %.not4 = icmp eq ptr %i.g, null
  br i1 %.not4, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !23 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, @PyByteArray_Type
  br i1 %.not.i.i, label %PyByteArray_AS_STRING.exit.thread, label %PyObject_TypeCheck.exit.i

PyByteArray_AS_STRING.exit.thread:                ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.g, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27
  store ptr %i.j, ptr %i.d, align 8, !tbaa !19
  br label %PyByteArray_GET_SIZE.exit

PyObject_TypeCheck.exit.i:                        ; preds = %bb.c
  %i.k = call i32 @PyType_IsSubtype(ptr noundef %.val.i, ptr noundef nonnull @PyByteArray_Type) #7
  %.not3.i = icmp eq i32 %i.k, 0
  br i1 %.not3.i, label %bb.d, label %PyByteArray_AS_STRING.exit

bb.d:                                             ; preds = %PyObject_TypeCheck.exit.i
  call void @__assert_fail(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__.PyByteArray_AS_STRING) #8
  unreachable

PyByteArray_AS_STRING.exit:                       ; preds = %PyObject_TypeCheck.exit.i
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !20  ; 4 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 8
  %.val.i6.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !23 ; 2 uses
  %i.l = getelementptr i8, ptr %i.g, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  store ptr %i.m, ptr %i.d, align 8, !tbaa !19
  %i.n = getelementptr i8, ptr %.pre, i64 8
  %.not.i.i7 = icmp eq ptr %.val.i6.pre, @PyByteArray_Type
  br i1 %.not.i.i7, label %PyByteArray_GET_SIZE.exit, label %PyObject_TypeCheck.exit.i8

PyObject_TypeCheck.exit.i8:                       ; preds = %PyByteArray_AS_STRING.exit
  %i.o = call i32 @PyType_IsSubtype(ptr noundef %.val.i6.pre, ptr noundef nonnull @PyByteArray_Type) #7
  %.not11.i = icmp eq i32 %i.o, 0
  br i1 %.not11.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %PyObject_TypeCheck.exit.i8
  call void @__assert_fail(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__.PyByteArray_GET_SIZE) #8
  unreachable

bb.f:                                             ; preds = %PyObject_TypeCheck.exit.i8
  %.val4.i.pr.i = load ptr, ptr %i.n, align 8, !tbaa !23 ; 2 uses
  %.not.i3.i = icmp eq ptr %.val4.i.pr.i, @PyLong_Type
  br i1 %.not.i3.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__assert_fail(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef 320, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #8
  unreachable

bb.h:                                             ; preds = %bb.f
  %.not3.i.i = icmp eq ptr %.val4.i.pr.i, @PyBool_Type
  br i1 %.not3.i.i, label %bb.i, label %PyByteArray_GET_SIZE.exit

bb.i:                                             ; preds = %bb.h
  call void @__assert_fail(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #8
  unreachable

PyByteArray_GET_SIZE.exit:                        ; preds = %PyByteArray_AS_STRING.exit.thread, %PyByteArray_AS_STRING.exit, %bb.h
  %2 = phi ptr [ %i.g, %PyByteArray_AS_STRING.exit.thread ], [ %.pre, %PyByteArray_AS_STRING.exit ], [ %.pre, %bb.h ]
  %i.p = getelementptr i8, ptr %2, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !28
  store i64 %i.q, ptr %i.e, align 8, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %PyByteArray_GET_SIZE.exit, %bb.b
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.t = call i32 (ptr, ptr, ...) @PyArg_Parse(ptr noundef %i.r, ptr noundef nonnull @.str.62, ptr noundef %i.s, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #7
  %.not5 = icmp eq i32 %i.t, 0
  br i1 %.not5, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.v = load i64, ptr %i.e, align 8, !tbaa !29
  %i.w = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.u, i64 noundef %i.v) #7 ; 2 uses
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !19
  call void @PyMem_Free(ptr noundef %i.z) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j, %bb.a
  %.0 = phi ptr [ null, %bb.j ], [ null, %bb.a ], [ %i.w, %bb.l ], [ %i.w, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_et(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.d = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.59, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.g = call i32 (ptr, ptr, ...) @PyArg_Parse(ptr noundef %i.e, ptr noundef nonnull @.str.68, ptr noundef %i.f, ptr noundef nonnull %i.c) #7
  %.not3 = icmp eq i32 %i.g, 0
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.i = call ptr @PyBytes_FromString(ptr noundef %i.h) #7
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !19
  call void @PyMem_Free(ptr noundef %i.j) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.i, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_et_hash(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store ptr null, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store ptr null, ptr %i.d, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.f = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.61, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !20   ; 5 uses
  %.not4 = icmp eq ptr %i.g, null
  br i1 %.not4, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !23 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, @PyByteArray_Type
  br i1 %.not.i.i, label %PyByteArray_AS_STRING.exit.thread, label %PyObject_TypeCheck.exit.i

PyByteArray_AS_STRING.exit.thread:                ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.g, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27
  store ptr %i.j, ptr %i.d, align 8, !tbaa !19
  br label %PyByteArray_GET_SIZE.exit

PyObject_TypeCheck.exit.i:                        ; preds = %bb.c
  %i.k = call i32 @PyType_IsSubtype(ptr noundef %.val.i, ptr noundef nonnull @PyByteArray_Type) #7
  %.not3.i = icmp eq i32 %i.k, 0
  br i1 %.not3.i, label %bb.d, label %PyByteArray_AS_STRING.exit

bb.d:                                             ; preds = %PyObject_TypeCheck.exit.i
  call void @__assert_fail(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__.PyByteArray_AS_STRING) #8
  unreachable

PyByteArray_AS_STRING.exit:                       ; preds = %PyObject_TypeCheck.exit.i
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !20  ; 4 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 8
  %.val.i6.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !23 ; 2 uses
  %i.l = getelementptr i8, ptr %i.g, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  store ptr %i.m, ptr %i.d, align 8, !tbaa !19
  %i.n = getelementptr i8, ptr %.pre, i64 8
  %.not.i.i7 = icmp eq ptr %.val.i6.pre, @PyByteArray_Type
  br i1 %.not.i.i7, label %PyByteArray_GET_SIZE.exit, label %PyObject_TypeCheck.exit.i8

PyObject_TypeCheck.exit.i8:                       ; preds = %PyByteArray_AS_STRING.exit
  %i.o = call i32 @PyType_IsSubtype(ptr noundef %.val.i6.pre, ptr noundef nonnull @PyByteArray_Type) #7
  %.not11.i = icmp eq i32 %i.o, 0
  br i1 %.not11.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %PyObject_TypeCheck.exit.i8
  call void @__assert_fail(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__.PyByteArray_GET_SIZE) #8
  unreachable

bb.f:                                             ; preds = %PyObject_TypeCheck.exit.i8
  %.val4.i.pr.i = load ptr, ptr %i.n, align 8, !tbaa !23 ; 2 uses
  %.not.i3.i = icmp eq ptr %.val4.i.pr.i, @PyLong_Type
  br i1 %.not.i3.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__assert_fail(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef 320, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #8
  unreachable

bb.h:                                             ; preds = %bb.f
  %.not3.i.i = icmp eq ptr %.val4.i.pr.i, @PyBool_Type
  br i1 %.not3.i.i, label %bb.i, label %PyByteArray_GET_SIZE.exit

bb.i:                                             ; preds = %bb.h
  call void @__assert_fail(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #8
  unreachable

PyByteArray_GET_SIZE.exit:                        ; preds = %PyByteArray_AS_STRING.exit.thread, %PyByteArray_AS_STRING.exit, %bb.h
  %2 = phi ptr [ %i.g, %PyByteArray_AS_STRING.exit.thread ], [ %.pre, %PyByteArray_AS_STRING.exit ], [ %.pre, %bb.h ]
  %i.p = getelementptr i8, ptr %2, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !28
  store i64 %i.q, ptr %i.e, align 8, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %PyByteArray_GET_SIZE.exit, %bb.b
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.t = call i32 (ptr, ptr, ...) @PyArg_Parse(ptr noundef %i.r, ptr noundef nonnull @.str.69, ptr noundef %i.s, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #7
  %.not5 = icmp eq i32 %i.t, 0
  br i1 %.not5, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.v = load i64, ptr %i.e, align 8, !tbaa !29
  %i.w = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.u, i64 noundef %i.v) #7 ; 2 uses
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !19
  call void @PyMem_Free(ptr noundef %i.z) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j, %bb.a
  %.0 = phi ptr [ null, %bb.j ], [ null, %bb.a ], [ %i.w, %bb.l ], [ %i.w, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_f(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.70, ptr noundef nonnull %i.a) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %i.a, align 4, !tbaa !42
  %i.d = fpext float %i.c to double
  %i.e = call ptr @PyFloat_FromDouble(double noundef %i.d) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_h(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.71, ptr noundef nonnull %i.a) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %i.a, align 2, !tbaa !12
  %i.d = sext i16 %i.c to i64
  %i.e = call ptr @PyLong_FromLong(i64 noundef %i.d) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_i(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.72, ptr noundef nonnull %i.a) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4, !tbaa !9
  %i.d = sext i32 %i.c to i64
  %i.e = call ptr @PyLong_FromLong(i64 noundef %i.d) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_k(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.73, ptr noundef nonnull %i.a) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !29
  %i.d = call ptr @PyLong_FromUnsignedLong(i64 noundef %i.c) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_keyword_only(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 -1, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 -1, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 -1, ptr %i.c, align 4, !tbaa !9
  %i.d = call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.77, ptr noundef nonnull @getargs_keyword_only.keywords, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !9
  %i.f = load i32, ptr %i.b, align 4, !tbaa !9
  %i.g = load i32, ptr %i.c, align 4, !tbaa !9
  %i.h = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.78, i32 noundef %i.e, i32 noundef %i.f, i32 noundef %i.g) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_keywords(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [10 x i32], align 16              ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, i8 -1, i64 40, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.k = call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @getargs_keywords.fmt, ptr noundef nonnull @getargs_keywords.keywords, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #7
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.a, align 16, !tbaa !9
  %i.m = load i32, ptr %i.b, align 4, !tbaa !9
  %i.n = load i32, ptr %i.c, align 8, !tbaa !9
  %i.o = load i32, ptr %i.d, align 4, !tbaa !9
  %i.p = load i32, ptr %i.e, align 16, !tbaa !9
  %i.q = load i32, ptr %i.f, align 4, !tbaa !9
  %i.r = load i32, ptr %i.g, align 8, !tbaa !9
  %i.s = load i32, ptr %i.h, align 4, !tbaa !9
  %i.t = load i32, ptr %i.i, align 16, !tbaa !9
  %i.u = load i32, ptr %i.j, align 4, !tbaa !9
  %i.v = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.84, i32 noundef %i.l, i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.s, i32 noundef %i.t, i32 noundef %i.u) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_l(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.85, ptr noundef nonnull %i.a) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !29
  %i.d = call ptr @PyLong_FromLong(i64 noundef %i.c) #7
end_hunk_0
begin_hunk_1_@getargs_s:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.d = call ptr @PyBytes_FromString(ptr noundef %i.c) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_s_hash(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.92, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.e = load i64, ptr %i.b, align 8, !tbaa !29
  %i.f = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.d, i64 noundef %i.e) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_s_star(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.93, ptr noundef nonnull %2) #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33
  %i.e = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.b, i64 noundef %i.d) #7
  call void @PyBuffer_Release(ptr noundef nonnull %2) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_tuple(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.d = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.94, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !9
  %i.f = load i32, ptr %i.b, align 4, !tbaa !9
  %i.g = load i32, ptr %i.c, align 4, !tbaa !9
  %i.h = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.78, i32 noundef %i.e, i32 noundef %i.f, i32 noundef %i.g) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_w_star(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.95, ptr noundef nonnull %2) #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.d = icmp sgt i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %2, align 8, !tbaa !32     ; 2 uses
  store i8 91, ptr %i.e, align 1, !tbaa !10
  %i.f = load i64, ptr %i.b, align 8, !tbaa !33
  %i.g = getelementptr i8, ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  store i8 93, ptr %i.h, align 1, !tbaa !10
  %.pre = load i64, ptr %i.b, align 8, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %.pre, %bb.c ], [ %i.c, %bb.b ]
  %i.j = load ptr, ptr %2, align 8, !tbaa !32
  %i.k = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.j, i64 noundef %i.i) #7
  call void @PyBuffer_Release(ptr noundef nonnull %2) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi ptr [ %i.k, %bb.d ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_w_star_opt(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 7 uses
  %3 = alloca %struct.Py_buffer, align 8          ; 3 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 1, ptr %i.a, align 4, !tbaa !9
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.96, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %i.a) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !32     ; 2 uses
  store i8 91, ptr %i.f, align 1, !tbaa !10
  %i.g = load i64, ptr %i.c, align 8, !tbaa !33
  %i.h = getelementptr i8, ptr %i.f, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  store i8 93, ptr %i.i, align 1, !tbaa !10
  %.pre = load i64, ptr %i.c, align 8, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ %.pre, %bb.c ], [ %i.d, %bb.b ]
  %i.k = load ptr, ptr %2, align 8, !tbaa !32
  %i.l = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.k, i64 noundef %i.j) #7
  call void @PyBuffer_Release(ptr noundef nonnull %2) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi ptr [ %i.l, %bb.d ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_empty(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val15 = load ptr, ptr %i.a, align 8, !tbaa !23
  %.not = icmp eq ptr %.val15, @PyTuple_Type
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 264, ptr noundef nonnull @__PRETTY_FUNCTION__.getargs_empty) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %cond = icmp eq ptr %2, null
  br i1 %cond, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !23  ; 3 uses
  %.not16 = icmp eq ptr %.val, @PyDict_Type
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.98, i32 noundef 265, ptr noundef nonnull @__PRETTY_FUNCTION__.getargs_empty) #8
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.c = getelementptr i8, ptr %.val, i64 168
  %.val5.i = load i64, ptr %i.c, align 8, !tbaa !38
  %i.d = and i64 %.val5.i, 536870912
  %.not.i.not = icmp eq i64 %i.d, 0
  br i1 %.not.i.not, label %PyObject_TypeCheck.exit.i, label %PyDict_GET_SIZE.exit

PyObject_TypeCheck.exit.i:                        ; preds = %bb.f
  %i.e = tail call i32 @PyType_IsSubtype(ptr noundef nonnull %.val, ptr noundef nonnull @PyFrozenDict_Type) #7
  %.not8.i = icmp eq i32 %i.e, 0
  br i1 %.not8.i, label %bb.g, label %PyDict_GET_SIZE.exit

bb.g:                                             ; preds = %PyObject_TypeCheck.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, i32 noundef 55, ptr noundef nonnull @__PRETTY_FUNCTION__.PyDict_GET_SIZE) #8
  unreachable

PyDict_GET_SIZE.exit:                             ; preds = %bb.f, %PyObject_TypeCheck.exit.i
  %i.f = getelementptr i8, ptr %2, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %PyDict_GET_SIZE.exit
  %i.i = tail call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.100, ptr noundef nonnull @getargs_empty.kwlist) #7
  br label %bb.j

bb.i:                                             ; preds = %bb.c, %PyDict_GET_SIZE.exit
  %i.j = tail call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.100) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i32 [ %i.i, %bb.h ], [ %i.j, %bb.i ]  ; 2 uses
  %.not14 = icmp eq i32 %.0, 0
  br i1 %.not14, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = sext i32 %.0 to i64
  %i.l = tail call ptr @PyLong_FromLong(i64 noundef %i.k) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.010 = phi ptr [ %i.l, %bb.k ], [ null, %bb.j ]
  ret ptr %.010
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_y(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.103, ptr noundef nonnull %i.a) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.d = call ptr @PyBytes_FromString(ptr noundef %i.c) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_y_hash(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.104, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.e = load i64, ptr %i.b, align 8, !tbaa !29
  %i.f = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.d, i64 noundef %i.e) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_y_star(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.105, ptr noundef nonnull %2) #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33
  %i.e = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.b, i64 noundef %i.d) #7
  call void @PyBuffer_Release(ptr noundef nonnull %2) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_z(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.106, ptr noundef nonnull %i.a) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not3 = icmp eq ptr %i.c, null
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @PyBytes_FromString(ptr noundef nonnull %i.c) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.a ], [ @_Py_NoneStruct, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_z_hash(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.107, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %i.b, align 8, !tbaa !29
  %i.f = call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %i.d, i64 noundef %i.e) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.a ], [ @_Py_NoneStruct, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_z_star(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.108, ptr noundef nonnull %2) #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !32     ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33
  %i.e = call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %i.b, i64 noundef %i.d) #7
  br label %_Py_NewRef.exit

bb.d:                                             ; preds = %bb.b
  %i.f = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !10 ; 2 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %_Py_NewRef.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = add nuw i32 %i.f, 1
  store i32 %i.h, ptr @_Py_NoneStruct, align 8, !tbaa !10
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ @_Py_NoneStruct, %bb.d ], [ @_Py_NoneStruct, %bb.e ]
  call void @PyBuffer_Release(ptr noundef nonnull %2) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_Py_NewRef.exit
  %.03 = phi ptr [ %.0, %_Py_NewRef.exit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret ptr %.03
}

; Function Attrs: nounwind uwtable
end_hunk_1
